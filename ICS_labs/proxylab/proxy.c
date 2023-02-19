#include <stdio.h>
#include <string.h>
#include <stdlib.h>
#include "csapp.h"

/* Recommended max cache and object sizes */
#define MAX_CACHE_SIZE 1049000
#define MAX_OBJECT_SIZE 102400
#define MAX_CACHE_NUM 10

/* You won't lose style points for including this long line in your code */
static const char *user_agent_hdr = "User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:10.0.3) Gecko/20120305 Firefox/10.0.3\r\n";
static const char *Con_hdr = "Connection: close\r\n";
static const char *P_Con_hdr = "Proxy-Connection: close\r\n";

/* http://+host+(:port)+path */
typedef struct{
    char host[MAXLINE];  /* www.cmu.edu */
    char port[MAXLINE];  /* NULL or specific number */
    char path[MAXLINE]; /* /hub/index.html */
}Request_Line;

typedef struct{
    int LRU;    /* line with the greatest LRU will be evicted */
    char uri[MAXLINE];
    char obj[MAX_OBJECT_SIZE];
    sem_t mutex;    /* lock for reader */
    sem_t w;    /* lock for writer */
    int read_cnt;
    int valid;
}CACHE;

void * thread(void * vargp);
void doit(int fd);
int parse_uri(char *uri, Request_Line *linep);
void read_requesthdrs(rio_t *r, int fd, 
        Request_Line *linep, char *request_data);
void send_content(int serverfd, int clientfd, char *uri);
void lock_init();
int reader(int fd, char *uri);
void writer(char *buf, char *uri, size_t size);
int find_LRU();

CACHE cache[MAX_CACHE_NUM];

int main(int argc, char ** argv){
    signal(SIGPIPE, SIG_IGN);   /* ignore SIGPIPE */
    int  listenfd;
    int *connfdp;    /* Use pointer to avoid race */  
    pthread_t tid;
    socklen_t clientlen;
    struct sockaddr_storage clientaddr;
    char hostname[MAXLINE], port[MAXLINE];

    if(argc != 2){
        fprintf(stderr, "usage: %s <port>\n", argv[0]);
        exit(1);
    }

    lock_init();
    /* create a listenfd and prepare for connection */
    listenfd = Open_listenfd(argv[1]);
    /* from textbook p695 picture 12-14 and tiny.c */
    while(1){
        clientlen = sizeof(struct sockaddr_storage);
        connfdp = Malloc(sizeof(int));
        *connfdp = Accept(listenfd, (SA *)&clientaddr, &clientlen);
        Getnameinfo((SA *) &clientaddr, clientlen, 
                hostname, MAXLINE, port, MAXLINE, 0);
        printf("Accepted connection from (%s, %s)\n", hostname, port);
        Pthread_create(&tid, NULL, thread, connfdp);
    }

    return 0;
}

/* 
 * Use thread to handle concurrency.
 * Most important is to detach this thread.
 * From textbook p695 picture 12-14
 */
void * thread(void * vargp){
    int connfd = *((int*) vargp);
    Pthread_detach(pthread_self());
    Free(vargp);
    doit(connfd);
    Close(connfd);
    return NULL;
}

/*
 * To read the request and send them to the server.
 */
void doit(int fd){
    /* read the request lines and request headers */
    Request_Line line;
    rio_t rio;
    int serverfd;
    char buf[MAXLINE], method[MAXLINE], uri[MAXLINE], version[MAXLINE];
    char request_data[MAXLINE];

    Rio_readinitb(&rio, fd);
    Rio_readlineb(&rio, buf, MAXLINE);
    sscanf(buf, "%s %s %s", method, uri, version);
    if(strcasecmp(method, "GET")){
        fprintf(stdout, "Not implemented\n");
        fflush(stdout);
        return;
    }
    /* hit and return */
    if(reader(fd, uri)){
        fprintf(stdout, "%s from cache hit\n", uri);
        fflush(stdout);
        return;
    }
    /* miss and write */
    fprintf(stdout, "%s miss\n", uri);
    fflush(stdout);
    
    Request_Line *linep = &line;
    if(parse_uri(uri, linep)){
        fprintf(stdout, "Uri too long\n");
        fflush(stdout);
        return;
    }
    serverfd = Open_clientfd(linep->host, linep->port);
    if(serverfd <= 0){
        fprintf(stdout, "Connection failed\n");
        fflush(stdout);
        return;
    }
    
    read_requesthdrs(&rio, serverfd, linep, request_data);
    
    send_content(serverfd, fd, uri);

    Close(serverfd);

    return;
}

/*
 * First read the request line, then read the request header.
 */
int parse_uri(char *uri, Request_Line *linep){
    /* default port number is 80 */
    sprintf(linep->port, "80");

    char *end, *fst;
    char *tail = uri + strlen(uri);   
    /* ignore http:// */
    char *head = strstr(uri, "//");
    head = (head != NULL ? head + 2 : uri); 
    end = head;                        
    while(*end != '/' && *end != ':') end++;
    strncpy(linep->host, head, end - head);
    fst = end + 1;  
    /* if uri has port number */                
    if(*end == ':'){               
        end++;
        fst = strstr(head,"/");        
        strncpy(linep->port, end, fst - end);   
        end = fst;                   
    }
    if((int)(tail - end) > MAXLINE)
        return 1;
    strncpy(linep->path, end, (int)(tail - end) + 1);
    
    return 0;
}

/*
 * Parse the headers.
 */
void read_requesthdrs(rio_t *rp, int fd, 
        Request_Line *linep, char *request_data){
    char buf[MAXLINE];
    char Reqline[MAXLINE], Host_hdr[MAXLINE], Other_hdr[MAXLINE];
    char *p = Other_hdr, *p1 = Reqline, *p2 = Host_hdr;
    sprintf(p1, "GET %s HTTP/1.0\r\n", linep->path);
    while (Rio_readlineb(rp, buf, MAXLINE) != 0){
        if (strcmp(buf, "\r\n") == 0){
            strcpy(p, "\r\n");
            break;          
        }
        else if (strncmp(buf, "Host:", 5) == 0){
            strcpy(Host_hdr, buf);
        }
        else if (strncmp(buf, "Connection:", 11) 
                && strncmp(buf, "Proxy_Connection:", 17) 
                && strncmp(buf, "User-agent:", 11)){
            strcpy(p, buf);
            p = Other_hdr + strlen(Other_hdr);
        }
    }
    /* use the default host header */
    if (!strlen(Host_hdr)){
        sprintf(p2, "Host: %s\r\n", linep->host); 
    }
    sprintf(request_data, "%s%s%s%s%s%s", Reqline, 
        Host_hdr, Con_hdr, P_Con_hdr, user_agent_hdr, Other_hdr);
    Rio_writen(fd, request_data, strlen(request_data));
    return;
}

/*
 * Send the data to the client.
 * Warning: files might be binary.
 */
void send_content(int serverfd, int clientfd, char *uri){
    size_t n,size = 0;
    char buf[MAXLINE], content[MAX_OBJECT_SIZE];
    rio_t srio;

    Rio_readinitb(&srio,serverfd);
/* use Rio_readnb instead of Rio_readlineb, as the file might be binary */
    while((n = Rio_readnb(&srio,buf,MAXLINE)) > 0){
        Rio_writen(clientfd, buf, n);
        if(n + size <= MAX_OBJECT_SIZE){
            /* use memcpy instead of strcpy */
            memcpy(content + size, buf, n);
        }
        size += n;
    }
    /* write to cache if possible */
    if(size <= MAX_OBJECT_SIZE)
        writer(content, uri, size);
}

/*
 * Initialize the lock and cache.
 */
void lock_init(){
    for(int i = 0; i < MAX_CACHE_NUM; i++){
        cache[i].read_cnt = 0;
        cache[i].valid = 0;
        cache[i].LRU = 0;
        sem_init(&cache[i].mutex, 0, 1);
        sem_init(&cache[i].w, 0, 1);
    }
}

/*
 * Readers and Writers problem. Use the model from ppt SYNC2. 
 */
int reader(int fd, char *uri){
    int hit = 0;
    for(int i = 0; i < MAX_CACHE_NUM; i++){
        P(&(cache[i].mutex));
        if(++cache[i].read_cnt == 1){
            P(&(cache[i].w));
        }    
        V(&(cache[i].mutex));

        /* reading happens here */
        P(&(cache[i].mutex));
        if(!hit && cache[i].valid && !strcmp(cache[i].uri, uri)){
            Rio_writen(fd, cache[i].obj, MAX_OBJECT_SIZE);
            cache[i].LRU = 0;
            hit = 1;
        }
        else if(cache[i].valid){
            ++cache[i].LRU;
        }
        V(&(cache[i].mutex));
        /* end reading */

        P(&(cache[i].mutex));
        if(--cache[i].read_cnt == 0){
            V(&(cache[i].w));
        }
        V(&(cache[i].mutex));
    }
    return hit;
}

/*
 * Find a cache line to write.
 */
void writer(char *buf, char *uri, size_t size){
    int i = find_LRU();
    P(&(cache[i].w));
    cache[i].valid = 1;
    cache[i].LRU = 0;
    
    /* writing happens here */
    strcpy(cache[i].uri, uri);
    memcpy(cache[i].obj, buf, size);
    /* end writing */
    
    V(&(cache[i].w));
    return;
}

/*
 * To find the line to replace
 */
int find_LRU(){
    int index, lru = 0;
    for(int i = 0; i < MAX_CACHE_NUM && lru != -1; i++){
        P(&(cache[i].mutex));
        if(++cache[i].read_cnt == 1){
            P(&(cache[i].w));
        }
        V(&(cache[i].mutex));
        /* find a blank line */
        if(!cache[i].valid){
            index = i;
            lru = -1;
        }
        /* find the greatest LRU */
        else if(cache[i].LRU >= lru){
            index = i;
            lru = cache[i].LRU;
        }
        P(&(cache[i].mutex));
        if(--cache[i].read_cnt == 0){
            V(&(cache[i].w));
        }
        V(&(cache[i].mutex));
    }
    return index;
}