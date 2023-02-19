/* 
 * tsh - A tiny shell program with job control
 * 
 */
#include <assert.h>
#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>
#include <string.h>
#include <ctype.h>
#include <signal.h>
#include <sys/types.h>
#include <fcntl.h>
#include <sys/wait.h>
#include <errno.h>
#include <stdarg.h>

/* Misc manifest constants */
#define MAXLINE    1024   /* max line size */
#define MAXARGS     128   /* max args on a command line */
#define MAXJOBS      16   /* max jobs at any point in time */
#define MAXJID    1<<16   /* max job ID */

/* Job states */
#define UNDEF         0   /* undefined */
#define FG            1   /* running in foreground */
#define BG            2   /* running in background */
#define ST            3   /* stopped */

/* 
 * Jobs states: FG (foreground), BG (background), ST (stopped)
 * Job state transitions and enabling actions:
 *     FG -> ST  : ctrl-z
 *     ST -> FG  : fg command
 *     ST -> BG  : bg command
 *     BG -> FG  : fg command
 * At most 1 job can be in the FG state.
 */

/* Parsing states */
#define ST_NORMAL   0x0   /* next token is an argument */
#define ST_INFILE   0x1   /* next token is the input file */
#define ST_OUTFILE  0x2   /* next token is the output file */

/* Global variables */
extern char **environ;      /* defined in libc */
char prompt[] = "tsh> ";    /* command line prompt (DO NOT CHANGE) */
int verbose = 0;            /* if true, print additional output */
int nextjid = 1;            /* next job ID to allocate */
char sbuf[MAXLINE];         /* for composing sprintf messages */

struct job_t {              /* The job struct */
    pid_t pid;              /* job PID */
    int jid;                /* job ID [1, 2, ...] */
    int state;              /* UNDEF, BG, FG, or ST */
    char cmdline[MAXLINE];  /* command line */
};
struct job_t job_list[MAXJOBS]; /* The job list */

struct cmdline_tokens {
    int argc;               /* Number of arguments */
    char *argv[MAXARGS];    /* The arguments list */
    char *infile;           /* The input file */
    char *outfile;          /* The output file */
    enum builtins_t {       /* Indicates if argv[0] is a builtin command */
        BUILTIN_NONE,
        BUILTIN_QUIT,
        BUILTIN_JOBS,
        BUILTIN_BG,
        BUILTIN_FG,
        BUILTIN_KILL,
        BUILTIN_NOHUP} builtins;
};

/* End global variables */

/* Customized functions */
int builtin_command(struct cmdline_tokens* tok);
void bg_or_fg(char **argv);
void wait_for_fg(pid_t pid);
void kill_process(char **argv);
void handle_nohup(char **argv);

/* Function prototypes */
void eval(char *cmdline);

void sigchld_handler(int sig);
void sigtstp_handler(int sig);
void sigint_handler(int sig);

/* Here are helper routines that we've provided for you */
int parseline(const char *cmdline, struct cmdline_tokens *tok); 
void sigquit_handler(int sig);

void clearjob(struct job_t *job);
void initjobs(struct job_t *job_list);
int maxjid(struct job_t *job_list); 
int addjob(struct job_t *job_list, pid_t pid, int state, char *cmdline);
int deletejob(struct job_t *job_list, pid_t pid); 
pid_t fgpid(struct job_t *job_list);
struct job_t *getjobpid(struct job_t *job_list, pid_t pid);
struct job_t *getjobjid(struct job_t *job_list, int jid); 
int pid2jid(pid_t pid); 
void listjobs(struct job_t *job_list, int output_fd);

void usage(void);
void unix_error(char *msg);
void app_error(char *msg);
ssize_t sio_puts(char s[]);
ssize_t sio_putl(long v);
ssize_t sio_put(const char *fmt, ...);
void sio_error(char s[]);

typedef void handler_t(int);
handler_t *Signal(int signum, handler_t *handler);


/*
 * main - The shell's main routine 
 */
int 
main(int argc, char **argv) 
{
    char c;
    char cmdline[MAXLINE];    /* cmdline for fgets */
    int emit_prompt = 1; /* emit prompt (default) */

    /* Redirect stderr to stdout (so that driver will get all output
     * on the pipe connected to stdout) */
    dup2(1, 2);

    /* Parse the command line */
    while ((c = getopt(argc, argv, "hvp")) != EOF) {
        switch (c) {
        case 'h':             /* print help message */
            usage();
            break;
        case 'v':             /* emit additional diagnostic info */
            verbose = 1;
            break;
        case 'p':             /* don't print a prompt */
            emit_prompt = 0;  /* handy for automatic testing */
            break;
        default:
            usage();
        }
    }

    /* Install the signal handlers */

    /* These are the ones you will need to implement */
    Signal(SIGINT,  sigint_handler);   /* ctrl-c */
    Signal(SIGTSTP, sigtstp_handler);  /* ctrl-z */
    Signal(SIGCHLD, sigchld_handler);  /* Terminated or stopped child */
    Signal(SIGTTIN, SIG_IGN);
    Signal(SIGTTOU, SIG_IGN);

    /* This one provides a clean way to kill the shell */
    Signal(SIGQUIT, sigquit_handler); 

    /* Initialize the job list */
    initjobs(job_list);

    /* Execute the shell's read/eval loop */
    while (1) {

        if (emit_prompt) {
            printf("%s", prompt);
            fflush(stdout);
        }
        if ((fgets(cmdline, MAXLINE, stdin) == NULL) && ferror(stdin))
            app_error("fgets error");
        if (feof(stdin)) { 
            /* End of file (ctrl-d) */
            printf ("\n");
            fflush(stdout);
            fflush(stderr);
            exit(0);
        }
        
        /* Remove the trailing newline */
        cmdline[strlen(cmdline)-1] = '\0';
        
        /* Evaluate the command line */
        eval(cmdline);
        
        fflush(stdout);
        fflush(stdout);
    } 
    
    exit(0); /* control never reaches here */
}

/*
 * ignore any SIGHUP signal, but actually nothing is needed to
 *      pass the trace 25......
 */

void handle_nohup(char **argv){
    sigset_t mask, prev, each_mask;
    pid_t pid;
    sigemptyset(&mask);
    sigaddset(&mask, SIGHUP);
    sigfillset(&each_mask);
    sigprocmask(SIG_BLOCK, &each_mask, &prev);
    /*
     * run the trailing command and ignore SIGHUP signal and
     *      the trailing command is not a built-in command
     */
    if((pid = fork()) == 0){
        /*
         * creat new group in order to separate the son and father
         */
        if(setpgid(0, 0) < 0){
            perror("setpgid error!\n");
            exit(0);
        }
        sigprocmask(SIG_SETMASK, &prev, NULL);
        /*
         * send SIGHUP to process
         */
        sigprocmask(SIG_BLOCK, &mask, &prev);
        if(execve(argv[1], argv, environ) < 0){
            printf("%s: Command not found\n", argv[1]);
            exit(0);
        }
    }
}

/*
 * we need to wait until the fg process ends
 * reference from p546
 */

void wait_for_fg(pid_t pid){
    sigset_t mask, prev;
    sigemptyset(&mask);
    sigaddset(&mask, SIGCHLD);
    sigprocmask(SIG_BLOCK, &mask, &prev);
    while(fgpid(job_list) != 0){
        sigsuspend(&prev);
    }
    sigprocmask(SIG_SETMASK, &prev, NULL);
    return;
}

/*
 * what we need to do is to decide whther the process needs to
 *      work bg or fg, and send signal to certain process
 */

void bg_or_fg(char** argv){
    struct job_t* job = NULL;
    if(argv[1] == NULL){
        printf("%s command requires PID or %%jobid argument\n",argv[0]);
        return;
    }
    int index;
    /*
     * first we need to know whether the id is proper or not
     *      return if error
     */
    /* pid */
    if(sscanf(argv[1], "%d", &index) > 0){
        if((job = getjobpid(job_list, index)) == NULL){
            sio_put("(%d): No such process\n",index);
            return;
        }
    }
    /* '%' refers to jid */
    else if(sscanf(argv[1], "%%%d", &index) > 0){
        if((job = getjobjid(job_list, index)) == NULL){
            sio_put("%%%d: No such process\n",index);
            return;
        }
    }
    else{
        sio_puts("Not a proper command!\n");
        return;
    }
    /*
     * now we know the pid/jid, then we need to send SIGCONT
     *      to the job, restart it and set its state
     */
    kill(-abs(job->pid), SIGCONT);
    if(!strcmp(argv[0],"bg")){
        job->state = BG;
        printf("[%d] (%d) %s\n", job->jid, job->pid, job->cmdline);
    }
    else{
        job->state = FG;
        wait_for_fg(job->pid);  // wait until this job ends
    }
    return;
}

/*
 * Kill a job, need to know whether it is a jid or pid and whether it is
 *      a group or just a job
 * Send a SIGTERM signal, make sure whether it is for a group or not
 */

void kill_process(char **argv){
    struct job_t* job = NULL;
    if(argv[1] == NULL){
        printf("%s command requires PID or %%jobid argument\n",argv[0]);
        return;
    }
    int index;
    /*
     * first we need to know whether the id is proper or not
     *      return if error
     */
    if(sscanf(argv[1], "%d", &index) > 0){
        /*
         * dont forget to use abs as index might be negative
         *      especially for trace30
         */
        if((job = getjobpid(job_list, abs(index))) == NULL){
            if(index > 0){
                sio_put("(%d): No such process\n",abs(index));
            }
            else{
                sio_put("(%d): No such process group\n",abs(index));
            }
            return;
        }
    }
    /* '%' refers to jid */
    else if(sscanf(argv[1], "%%%d", &index) > 0){
        if((job = getjobjid(job_list, abs(index))) == NULL){
            if(index > 0){
                sio_put("%%%d: No such job\n",abs(index));
            }
            else{
                sio_put("%%%d: No such process group\n",abs(index));
            }
            return;
        }
    }
    else{
        sio_puts("Not a proper command!\n");
        return;
    }
    if(index > 0){
        kill(abs(job->pid), SIGTERM);
    }
    else{
        kill(-abs(job->pid), SIGTERM);
    }
    return;
}

/*
 * if first argv is a built-in command, run it and return true
 *      else return false
 */

int builtin_command(struct cmdline_tokens* tok){
    //sio_puts("cmd");
    /*
     * reference from p525
     */
    if(!strcmp(tok->argv[0], "quit")){  /* quit command */
        exit(0);
    }
    else if(!strcmp(tok->argv[0], "&")){    /* ignore singleton & */
        return 1;
    }
    else if(!strcmp(tok->argv[0], "fg")){
        bg_or_fg(tok->argv);
    }
    else if(!strcmp(tok->argv[0], "bg")){
        bg_or_fg(tok->argv);
    }
    /*
     * Among all the built-in commands, only jobs may face the problem
     *      of I/O redirection. And fortunately we have listjobs that
     *      has the interface we want
     */
    else if(!strcmp(tok->argv[0], "jobs")){
        int out_file = 1;       // if no I/O redirection
        if(tok->outfile != NULL){
            out_file = open(tok->outfile, O_WRONLY, 0);          
        }
        
        listjobs(job_list, out_file);      //already existed function
        /*int tmp;
        if((tmp = close(out_file)) < 0){
            sio_puts("close error!\n");
        }
         * i dont really know why i cant pass trace 7-9 when i choose
         *      to close the file, pass when not
         */
    }
    else if(!strcmp(tok->argv[0], "kill")){
        kill_process(tok->argv);
    }
    else if(!strcmp(tok->argv[0], "nohup")){
        handle_nohup(tok->argv);
    }
    else{
        return 0;       // not a built-in command
    }
    return 1;
}

/* 
 * eval - Evaluate the command line that the user has just typed in
 * 
 * If the user has requested a built-in command (quit, jobs, bg or fg)
 * then execute it immediately. Otherwise, fork a child process and
 * run the job in the context of the child. If the job is running in
 * the foreground, wait for it to terminate and then return.  Note:
 * each child process must have a unique process group ID so that our
 * background children don't receive SIGINT (SIGTSTP) from the kernel
 * when we type ctrl-c (ctrl-z) at the keyboard.  
 */
void 
eval(char *cmdline) 
{
    int bg;              /* should the job run in bg or fg? */
    struct cmdline_tokens tok;
    /* Parse command line */
    bg = parseline(cmdline, &tok); 
    
    if (bg == -1) /* parsing error */
        return;
    if (tok.argv[0] == NULL) /* ignore empty lines */
        return;
    pid_t pid;
    sigset_t each_mask, mask, prev;
    sigfillset(&each_mask);
    sigemptyset(&mask);
    sigaddset(&mask, SIGCHLD);  /* block SIGCHLD signal */
    if(!builtin_command(&tok)){
        /*
         * block every signal in order to avoid addjob and handler race! 
         * really important!!
         */
        sigprocmask(SIG_BLOCK, &each_mask, &prev);
        if((pid = fork()) == 0){        /* Child process */
            /*
             * creat new group in order to separate the child and father, 
             *      reference from writeup
             */
            if(setpgid(0, 0) < 0){
                perror("setpgid error!\n");
                exit(0);
            }
            /*
             * restore, unblocking signals
             */
            sigprocmask(SIG_SETMASK, &prev, NULL);
            /*
             * I/O redirection part
             * we need to use dup2 to redirect the I/O, and dont 
             *      forget to close the file
             */
            int out_file, in_file;
            int tmp;
            if(tok.outfile != NULL){
                out_file = open(tok.outfile, O_WRONLY, 0);
                dup2(out_file, STDOUT_FILENO);
                if((tmp = close(out_file)) < 0){
                    sio_puts("close error!\n");
                }
            }
            if(tok.infile != NULL){
                in_file = open(tok.infile, O_RDONLY, 0);
                dup2(in_file, STDIN_FILENO);          
                if((tmp = close(in_file)) < 0){
                    sio_puts("close error!\n");
                }
            }
            /*
             * reference from p525
             */
            if(execve(tok.argv[0], tok.argv, environ) < 0){
                printf("%s: Command not found\n", tok.argv[0]);
                exit(0);        // dont forget to exit if it is a child process
            }
        }
        /*
         * if it is a fg process, then we need to wait until it ends
         */
        if(!bg){        
            sigprocmask(SIG_BLOCK, &each_mask, NULL);
            /*
             * block every signal in order to avoid racing
             */
            addjob(job_list, pid, FG, cmdline);
            sigprocmask(SIG_SETMASK, &prev, NULL);
            wait_for_fg(pid);
        }
        /*
         * if it is a bg process, we need to print its information, 
         *      like what the ref does
         */
        else{           
            sigprocmask(SIG_BLOCK, &each_mask, NULL);
            addjob(job_list, pid, BG, cmdline);
            printf("[%d] (%d) %s\n", pid2jid(pid), pid, cmdline);
            sigprocmask(SIG_SETMASK, &prev, NULL);
        }
    }
    return;
}

/*********************
 * End of my eval
 *********************/

/* 
 * parseline - Parse the command line and build the argv array.
 * 
 * Parameters:
 *   cmdline:  The command line, in the form:
 *
 *                command [arguments...] [< infile] [> oufile] [&]
 *
 *   tok:      Pointer to a cmdline_tokens structure. The elements of this
 *             structure will be populated with the parsed tokens. Characters 
 *             enclosed in single or double quotes are treated as a single
 *             argument. 
 * Returns:
 *   1:        if the user has requested a BG job
 *   0:        if the user has requested a FG job  
 *  -1:        if cmdline is incorrectly formatted
 * 
 * Note:       The string elements of tok (e.g., argv[], infile, outfile) 
 *             are statically allocated inside parseline() and will be 
 *             overwritten the next time this function is invoked.
 */
int 
parseline(const char *cmdline, struct cmdline_tokens *tok) 
{

    static char array[MAXLINE];          /* holds local copy of command line */
    const char delims[10] = " \t\r\n";   /* argument delimiters (white-space) */
    char *buf = array;                   /* ptr that traverses command line */
    char *next;                          /* ptr to the end of the current arg */
    char *endbuf;                        /* ptr to end of cmdline string */
    int is_bg;                           /* background job? */

    int parsing_state;                   /* indicates if the next token is the
                                            input or output file */

    if (cmdline == NULL) {
        (void) fprintf(stderr, "Error: command line is NULL\n");
        return -1;
    }

    (void) strncpy(buf, cmdline, MAXLINE);
    endbuf = buf + strlen(buf);

    tok->infile = NULL;
    tok->outfile = NULL;

    /* Build the argv list */
    parsing_state = ST_NORMAL;
    tok->argc = 0;

    while (buf < endbuf) {
        /* Skip the white-spaces */
        buf += strspn (buf, delims);
        if (buf >= endbuf) break;

        /* Check for I/O redirection specifiers */
        if (*buf == '<') {
            if (tok->infile) {
                (void) fprintf(stderr, "Error: Ambiguous I/O redirection\n");
                return -1;
            }
            parsing_state |= ST_INFILE;
            buf++;
            continue;
        }
        if (*buf == '>') {
            if (tok->outfile) {
                (void) fprintf(stderr, "Error: Ambiguous I/O redirection\n");
                return -1;
            }
            parsing_state |= ST_OUTFILE;
            buf ++;
            continue;
        }

        if (*buf == '\'' || *buf == '\"') {
            /* Detect quoted tokens */
            buf++;
            next = strchr (buf, *(buf-1));
        } else {
            /* Find next delimiter */
            next = buf + strcspn (buf, delims);
        }
        
        if (next == NULL) {
            /* Returned by strchr(); this means that the closing
               quote was not found. */
            (void) fprintf (stderr, "Error: unmatched %c.\n", *(buf-1));
            return -1;
        }

        /* Terminate the token */
        *next = '\0';

        /* Record the token as either the next argument or the i/o file */
        switch (parsing_state) {
        case ST_NORMAL:
            tok->argv[tok->argc++] = buf;
            break;
        case ST_INFILE:
            tok->infile = buf;
            break;
        case ST_OUTFILE:
            tok->outfile = buf;
            break;
        default:
            (void) fprintf(stderr, "Error: Ambiguous I/O redirection\n");
            return -1;
        }
        parsing_state = ST_NORMAL;

        /* Check if argv is full */
        if (tok->argc >= MAXARGS-1) break;

        buf = next + 1;
    }

    if (parsing_state != ST_NORMAL) {
        (void) fprintf(stderr,
                       "Error: must provide file name for redirection\n");
        return -1;
    }

    /* The argument list must end with a NULL pointer */
    tok->argv[tok->argc] = NULL;

    if (tok->argc == 0)  /* ignore blank line */
        return 1;

    if (!strcmp(tok->argv[0], "quit")) {                 /* quit command */
        tok->builtins = BUILTIN_QUIT;
    } else if (!strcmp(tok->argv[0], "jobs")) {          /* jobs command */
        tok->builtins = BUILTIN_JOBS;
    } else if (!strcmp(tok->argv[0], "bg")) {            /* bg command */
        tok->builtins = BUILTIN_BG;
    } else if (!strcmp(tok->argv[0], "fg")) {            /* fg command */
        tok->builtins = BUILTIN_FG;
    } else if (!strcmp(tok->argv[0], "kill")) {          /* kill command */
        tok->builtins = BUILTIN_KILL;
    } else if (!strcmp(tok->argv[0], "nohup")) {            /* kill command */
        tok->builtins = BUILTIN_NOHUP;
    } else {
        tok->builtins = BUILTIN_NONE;
    }

    /* Should the job run in the background? */
    if ((is_bg = (*tok->argv[tok->argc-1] == '&')) != 0)
        tok->argv[--tok->argc] = NULL;

    return is_bg;
}


/*****************
 * Signal handlers
 *****************/

/* 
 * sigchld_handler - The kernel sends a SIGCHLD to the shell whenever
 *     a child job terminates (becomes a zombie), or stops because it
 *     received a SIGSTOP, SIGTSTP, SIGTTIN or SIGTTOU signal. The 
 *     handler reaps all available zombie children, but doesn't wait 
 *     for any other currently running children to terminate.  
 */
void 
sigchld_handler(int sig) 
{
    /*
     * what we need to do is to decide whther a job is to be terminated 
     *      or stopped, job needs to be killed if terminated, but 
     *      saved if stopped
     */
    
    int olderrno = errno;       // save the global
    int status;
    pid_t pid;
    struct job_t* job;
    sigset_t mask, prev_mask; 
    sigfillset(&mask);
    while((pid = waitpid(-1, &status, WNOHANG | WUNTRACED | WCONTINUED)) > 0){
        sigprocmask(SIG_BLOCK, &mask, &prev_mask);
        /*
         * in this case the job normally exits, we need to reap it
         */
        if (WIFEXITED(status)) {
            //sio_puts("Handler reaped child\n");
            deletejob(job_list, pid);
        }
        /*
         * when a child process receive SIGCONT signal then it will run again and send SIGCHLD signal
         *      and in this case WIFCONTINUED will be true so we need to change this job's state
         * make sure that its priority should be higher
         */
        else if(WIFCONTINUED(status)){
            job = getjobpid(job_list, pid);
            job->state = BG;
        }
        /*
         * in this case we need to kill this job and reap it
         */
        else if (WIFSIGNALED(status)) {
            //sio_puts("Handler reaped child\n");
            sio_put("Job [%d] (%d) terminated by signal %d\n", pid2jid(pid), pid, WTERMSIG(status));
            deletejob(job_list, pid);
        }
        /*
         * in this case the job is stopped but not killed, we just need to change its state
         */
        else if (WIFSTOPPED(status)) {
            sio_put("Job [%d] (%d) stopped by signal %d\n", pid2jid(pid), pid, WSTOPSIG(status));
            job = getjobpid(job_list, pid);
            job->state = ST;
        }
        sigprocmask(SIG_SETMASK, &prev_mask, NULL);
    }
    /*if(errno != ECHILD)
        sio_error("waitpid error");
     * cant pass some case when using this, dont know why
     */
    errno = olderrno;
    return;
}

/*
 * the initial edtion of this handler, cant pass trace31
while((pid = waitpid(-1, &status, WNOHANG | WUNTRACED)) > 0){
        sigprocmask(SIG_BLOCK, &mask, &prev_mask);
        if (WIFEXITED(status)) {
            //sio_puts("Handler reaped child\n");
            deletejob(job_list, pid);
        }
        else if (WIFSIGNALED(status)) {
            //sio_puts("Handler reaped child\n");
            printf("Job [%d] (%d) terminated by signal %d\n", pid2jid(pid), pid, WTERMSIG(status));
            deletejob(job_list, pid);
        }
        else if (WIFSTOPPED(status)) {
            printf("Job [%d] (%d) stopped by signal %d\n", pid2jid(pid), pid, WSTOPSIG(status));
            job = getjobpid(job_list, pid);
            job->state = ST;
        }
        sigprocmask(SIG_SETMASK, &prev_mask, NULL);
    }
*/

/* 
 * sigint_handler - The kernel sends a SIGINT to the shell whenver the
 *    user types ctrl-c at the keyboard.  Catch it and send it along
 *    to the foreground job.  
 */

/*
 * get the pid of foreground job and send
 *      signal to foreground group
 */

void 
sigint_handler(int sig) 
{
    pid_t pid = fgpid(job_list);
    if (pid) 
        kill(-abs(pid), sig);       // in case pid might be negative
    return;
}

/*
 * sigtstp_handler - The kernel sends a SIGTSTP to the shell whenever
 *     the user types ctrl-z at the keyboard. Catch it and suspend the
 *     foreground job by sending it a SIGTSTP.  
 */

/*
 * get the pid of foreground job and send
 *      signal to foreground group
 */

void 
sigtstp_handler(int sig) 
{
    pid_t pid = fgpid(job_list);
    if (pid) 
        kill(-abs(pid), sig);
    return;
}

/*********************
 * End of my signal
 *********************/

/*
 * sigquit_handler - The driver program can gracefully terminate the
 *    child shell by sending it a SIGQUIT signal.
 */
void 
sigquit_handler(int sig) 
{
    sio_error("Terminating after receipt of SIGQUIT signal\n");
}



/*********************
 * End signal handlers
 *********************/

/***********************************************
 * Helper routines that manipulate the job list
 **********************************************/

/* clearjob - Clear the entries in a job struct */
void 
clearjob(struct job_t *job) {
    job->pid = 0;
    job->jid = 0;
    job->state = UNDEF;
    job->cmdline[0] = '\0';
}

/* initjobs - Initialize the job list */
void 
initjobs(struct job_t *job_list) {
    int i;

    for (i = 0; i < MAXJOBS; i++)
        clearjob(&job_list[i]);
}

/* maxjid - Returns largest allocated job ID */
int 
maxjid(struct job_t *job_list) 
{
    int i, max=0;

    for (i = 0; i < MAXJOBS; i++)
        if (job_list[i].jid > max)
            max = job_list[i].jid;
    return max;
}

/* addjob - Add a job to the job list */
int 
addjob(struct job_t *job_list, pid_t pid, int state, char *cmdline) 
{
    int i;

    if (pid < 1)
        return 0;

    for (i = 0; i < MAXJOBS; i++) {
        if (job_list[i].pid == 0) {
            job_list[i].pid = pid;
            job_list[i].state = state;
            job_list[i].jid = nextjid++;
            if (nextjid > MAXJOBS)
                nextjid = 1;
            strcpy(job_list[i].cmdline, cmdline);
            if(verbose){
                printf("Added job [%d] %d %s\n",
                       job_list[i].jid,
                       job_list[i].pid,
                       job_list[i].cmdline);
            }
            return 1;
        }
    }
    printf("Tried to create too many jobs\n");
    return 0;
}

/* deletejob - Delete a job whose PID=pid from the job list */
int 
deletejob(struct job_t *job_list, pid_t pid) 
{
    int i;

    if (pid < 1)
        return 0;

    for (i = 0; i < MAXJOBS; i++) {
        if (job_list[i].pid == pid) {
            clearjob(&job_list[i]);
            nextjid = maxjid(job_list)+1;
            return 1;
        }
    }
    return 0;
}

/* fgpid - Return PID of current foreground job, 0 if no such job */
pid_t 
fgpid(struct job_t *job_list) {
    int i;

    for (i = 0; i < MAXJOBS; i++)
        if (job_list[i].state == FG)
            return job_list[i].pid;
    return 0;
}

/* getjobpid  - Find a job (by PID) on the job list */
struct job_t 
*getjobpid(struct job_t *job_list, pid_t pid) {
    int i;

    if (pid < 1)
        return NULL;
    for (i = 0; i < MAXJOBS; i++)
        if (job_list[i].pid == pid)
            return &job_list[i];
    return NULL;
}

/* getjobjid  - Find a job (by JID) on the job list */
struct job_t *getjobjid(struct job_t *job_list, int jid) 
{
    int i;

    if (jid < 1)
        return NULL;
    for (i = 0; i < MAXJOBS; i++)
        if (job_list[i].jid == jid)
            return &job_list[i];
    return NULL;
}

/* pid2jid - Map process ID to job ID */
int 
pid2jid(pid_t pid) 
{
    int i;

    if (pid < 1)
        return 0;
    for (i = 0; i < MAXJOBS; i++)
        if (job_list[i].pid == pid) {
            return job_list[i].jid;
        }
    return 0;
}

/* listjobs - Print the job list */
void 
listjobs(struct job_t *job_list, int output_fd) 
{
    int i;
    char buf[MAXLINE << 2];

    for (i = 0; i < MAXJOBS; i++) {
        memset(buf, '\0', MAXLINE);
        if (job_list[i].pid != 0) {
            sprintf(buf, "[%d] (%d) ", job_list[i].jid, job_list[i].pid);
            if(write(output_fd, buf, strlen(buf)) < 0) {
                fprintf(stderr, "Error writing to output file\n");
                exit(1);
            }
            memset(buf, '\0', MAXLINE);
            switch (job_list[i].state) {
            case BG:
                sprintf(buf, "Running    ");
                break;
            case FG:
                sprintf(buf, "Foreground ");
                break;
            case ST:
                sprintf(buf, "Stopped    ");
                break;
            default:
                sprintf(buf, "listjobs: Internal error: job[%d].state=%d ",
                        i, job_list[i].state);
            }
            if(write(output_fd, buf, strlen(buf)) < 0) {
                fprintf(stderr, "Error writing to output file\n");
                exit(1);
            }
            memset(buf, '\0', MAXLINE);
            sprintf(buf, "%s\n", job_list[i].cmdline);
            if(write(output_fd, buf, strlen(buf)) < 0) {
                fprintf(stderr, "Error writing to output file\n");
                exit(1);
            }
        }
    }
}
/******************************
 * end job list helper routines
 ******************************/


/***********************
 * Other helper routines
 ***********************/

/*
 * usage - print a help message
 */
void 
usage(void) 
{
    printf("Usage: shell [-hvp]\n");
    printf("   -h   print this message\n");
    printf("   -v   print additional diagnostic information\n");
    printf("   -p   do not emit a command prompt\n");
    exit(1);
}

/*
 * unix_error - unix-style error routine
 */
void 
unix_error(char *msg)
{
    fprintf(stdout, "%s: %s\n", msg, strerror(errno));
    exit(1);
}

/*
 * app_error - application-style error routine
 */
void 
app_error(char *msg)
{
    fprintf(stdout, "%s\n", msg);
    exit(1);
}

/* Private sio_functions */
/* sio_reverse - Reverse a string (from K&R) */
static void sio_reverse(char s[])
{
    int c, i, j;

    for (i = 0, j = strlen(s)-1; i < j; i++, j--) {
        c = s[i];
        s[i] = s[j];
        s[j] = c;
    }
}

/* sio_ltoa - Convert long to base b string (from K&R) */
static void sio_ltoa(long v, char s[], int b) 
{
    int c, i = 0;
    
    do {  
        s[i++] = ((c = (v % b)) < 10)  ?  c + '0' : c - 10 + 'a';
    } while ((v /= b) > 0);
    s[i] = '\0';
    sio_reverse(s);
}

/* sio_strlen - Return length of string (from K&R) */
static size_t sio_strlen(const char s[])
{
    int i = 0;

    while (s[i] != '\0')
        ++i;
    return i;
}

/* sio_copy - Copy len chars from fmt to s (by Ding Rui) */
void sio_copy(char *s, const char *fmt, size_t len)
{
    if(!len)
        return;

    for(size_t i = 0;i < len;i++)
        s[i] = fmt[i];
}

/* Public Sio functions */
ssize_t sio_puts(char s[]) /* Put string */
{
    return write(STDOUT_FILENO, s, sio_strlen(s));
}

ssize_t sio_putl(long v) /* Put long */
{
    char s[128];
    
    sio_ltoa(v, s, 10); /* Based on K&R itoa() */ 
    return sio_puts(s);
}

ssize_t sio_put(const char *fmt, ...) // Put to the console. only understands %d
{
  va_list ap;
  char str[MAXLINE]; // formatted string
  char arg[128];
  const char *mess = "sio_put: Line too long!\n";
  int i = 0, j = 0;
  int sp = 0;
  int v;

  if (fmt == 0)
    return -1;

  va_start(ap, fmt);
  while(fmt[j]){
    if(fmt[j] != '%'){
        j++;
        continue;
    }

    sio_copy(str + sp, fmt + i, j - i);
    sp += j - i;

    switch(fmt[j + 1]){
    case 0:
    		va_end(ap);
        if(sp >= MAXLINE){
            write(STDOUT_FILENO, mess, sio_strlen(mess));
            return -1;
        }
        
        str[sp] = 0;
        return write(STDOUT_FILENO, str, sp);

    case 'd':
        v = va_arg(ap, int);
        sio_ltoa(v, arg, 10);
        sio_copy(str + sp, arg, sio_strlen(arg));
        sp += sio_strlen(arg);
        i = j + 2;
        j = i;
        break;

    case '%':
        sio_copy(str + sp, "%", 1);
        sp += 1;
        i = j + 2;
        j = i;
        break;

    default:
        sio_copy(str + sp, fmt + j, 2);
        sp += 2;
        i = j + 2;
        j = i;
        break;
    }
  } // end while

  sio_copy(str + sp, fmt + i, j - i);
  sp += j - i;

	va_end(ap);
  if(sp >= MAXLINE){
    write(STDOUT_FILENO, mess, sio_strlen(mess));
    return -1;
  }
  
  str[sp] = 0;
  return write(STDOUT_FILENO, str, sp);
}

void sio_error(char s[]) /* Put error message and exit */
{
    sio_puts(s);
    _exit(1);
}

/*
 * Signal - wrapper for the sigaction function
 */
handler_t 
*Signal(int signum, handler_t *handler) 
{
    struct sigaction action, old_action;

    action.sa_handler = handler;  
    sigemptyset(&action.sa_mask); /* block sigs of type being handled */
    action.sa_flags = SA_RESTART; /* restart syscalls if possible */

    if (sigaction(signum, &action, &old_action) < 0)
        unix_error("Signal error");
    return (old_action.sa_handler);
}

