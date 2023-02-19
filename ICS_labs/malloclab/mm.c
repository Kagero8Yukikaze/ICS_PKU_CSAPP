/*
 * Use segregated free lists and LIFO strategy
 * Use first-fit strategy
 * Segregate into 16 classes, score wont be higher if more than 16
 * Minimum block is 16 bytes : header + previous offset + next offset + footer
 * Use offset instead of address, result in higher utilization
 * Remove footer for allocated blocks, result in higher utilization
 * Chunksize: 1<<11 is better than 1<<12
 * 
 */
#include <assert.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <unistd.h>

#include "mm.h"
#include "memlib.h"

/* If you want debugging output, use the following macro.  When you hand
 * in, remove the #define DEBUG line. */
#define DEBUG
#ifdef DEBUG
# define dbg_printf(...) printf(__VA_ARGS__)
#else
# define dbg_printf(...)
#endif

/* do not change the following! */
#ifdef DRIVER
/* create aliases for driver tests */
#define malloc mm_malloc
#define free mm_free
#define realloc mm_realloc
#define calloc mm_calloc
#endif /* def DRIVER */

/* single word (4) or double word (8) alignment */
#define ALIGNMENT 8

/* rounds up to the nearest multiple of ALIGNMENT */
#define ALIGN(p) (((size_t)(p) + (ALIGNMENT-1)) & ~0x7)

/* Basic constants and macros */
#define WSIZE 4     /* Word and header/footer size (bytes) */
#define DSIZE 8     /* Double word size (bytes) */
#define CHUNKSIZE (1 << 11)     /* Extend heap by this amount (bytes) */
#define CSIZE 16    /* Use in Segregated free lists, seprated into CSIZE classes */

#define MAX(x,y) ((x) > (y) ? (x) : (y))
#define MIN(x,y) ((x) < (y) ? (x) : (y))

/* Pack a size and allocated bit into a word */
#define PACK(size, alloc)   ((size) | (alloc))

/* Read and wirte a word at address p */
#define GET(p)  (*(unsigned int*)(p))
#define PUT(p, val)    (*(unsigned int*)(p) = (val))

/* Read the size and allocated fields from address p */
#define GET_SIZE(p)    (GET(p) & ~0x7)
#define GET_ALLOC(p)    (GET(p) & 0x1)
#define GET_PREVALLOC(p)    (GET(p) & 0x2)

/* Given block ptr bp, compute address of its header and footer */
#define HDRP(bp)    ((char*)(bp) - WSIZE)
#define FTRP(bp)    ((char*)(bp) + GET_SIZE(HDRP(bp)) - DSIZE)

/* Given block ptr bp, compute address of next and previous blocks*/
#define NEXT_BLKP(bp)   ((char*)(bp) + GET_SIZE(((char*)(bp) - WSIZE)))
#define PREV_BLKP(bp)   ((char*)(bp) - GET_SIZE(((char*)(bp) - DSIZE)))

/* The base pointer of the heap */
static char* heap_listp = 0;

/* Warning: next 3 macros save the offset, not the address 
 *      as they are only 4 bytes, not 8 bytes
 */

/* To find the head pointer of class n */
#define GET_HEAD(n)    ((unsigned int)(GET(heap_listp + WSIZE * n)))

/* To find the previous block and the next block of bp */
#define GET_PREVP(bp)    ((unsigned int)(GET(bp)))
#define GET_NEXTP(bp)    ((unsigned int)(GET((char *)bp + WSIZE)))

static void * extend_heap(size_t words);
static void * coalesce(void * bp);
static void * find_fit(size_t size);
static void * first_fit(size_t size);
static void * best_fit(size_t size);
static void place(void* ptr, size_t size);


/*
 * Initialize: return -1 on error, 0 on success.
 * Called when a new trace starts.
 * Create the initial empty heap.
 */
int mm_init(void) {
    //printf("init..\n");
    //mm_checkheap(__func__);
    if((heap_listp = mem_sbrk((4 + CSIZE) * WSIZE)) == (void*)(-1))   /* error */
        return -1;
   
    for(int i = 0; i < CSIZE; i++){     /* allocate the space for head pointer*/
        PUT(heap_listp + i * WSIZE, 0);
    }
    PUT(heap_listp + CSIZE * WSIZE, 0);     /* Alignment padding */
    PUT(heap_listp + ((1 + CSIZE) * WSIZE), PACK(DSIZE, 0x3));      /* Prologue header */
    PUT(heap_listp + ((2 + CSIZE) * WSIZE), PACK(DSIZE, 0x3));      /* Prologue footer */
    PUT(heap_listp + ((3 + CSIZE) * WSIZE), PACK(0, 0x3));          /* Epilogue header */
    //heap_listp += (2 * WSIZE);
    if(extend_heap(CHUNKSIZE / WSIZE) == NULL)  /* create a free block of CHUNKSIZE bytes */
        return -1;
    return 0;
}

/*
 * To find which class should this size be in
 */
int head_match(size_t size){
    int index;
    for(index = 0; index < CSIZE - 1; index++){
        if(size <= (unsigned long)(1 << (index + 4))){
            return index;
        }            
    }
    return index;
}

/*
 * To insert a new blank block, use LIFO strategy
 */
void insert(char * bp){
    //printf("insert:%p\n",bp);
    //mm_checkheap(__func__);
    size_t size = GET_SIZE(HDRP(bp));
    int index = head_match(size);
    /* this block is the first in its class, then header should save its offset */
    if(GET_HEAD(index) == 0){        
        PUT(heap_listp + index * WSIZE, (unsigned int)(bp - heap_listp));
        PUT(bp, 0);        
        PUT(bp + WSIZE, 0);
    }
    /* this class already has blocks, then this one should be the first */
    else{           
        PUT(bp + WSIZE, GET_HEAD(index));
        PUT(heap_listp + GET_HEAD(index), (unsigned int)(bp - heap_listp));
        PUT(bp, 0);
        PUT(heap_listp + index * WSIZE, (unsigned int)(bp - heap_listp));
    }
    //printf("end\n");
    /*for(int i = 0;i < CSIZE; i++){
        char * tmp = heap_listp + GET_HEAD(i);
        while(tmp > heap_listp){
            printf("--%p\n",bp);
            tmp = heap_listp + GET_NEXTP(tmp);
        }
        printf("--\n");
    }
    printf("--------\n");*/
    
}

/*
 * To remove a block from the class
 */
void delete(char * bp){
    //printf("delete:%p\n",bp);
    //mm_checkheap(__func__);
    if(bp == NULL)
        return;
    size_t size = GET_SIZE(HDRP(bp));
    int index = head_match(size);
    /* Case 1: has prev and next, need to connect prev and next */
    if(GET_PREVP(bp) && GET_NEXTP(bp)){
        PUT(heap_listp + GET_PREVP(bp) + WSIZE, GET_NEXTP(bp));
        PUT(heap_listp + GET_NEXTP(bp), GET_PREVP(bp));
    }
    /* Case 2: only has prev, just remove it as it is the last one */
    else if(GET_PREVP(bp) && !GET_NEXTP(bp)){
        PUT(heap_listp + GET_PREVP(bp) + WSIZE, 0);
    }
    /* Case 3: only has next, change the header as it is the first one */
    else if(!GET_PREVP(bp) && GET_NEXTP(bp)){
        PUT(heap_listp + index * WSIZE, GET_NEXTP(bp));
        PUT(heap_listp + GET_NEXTP(bp), 0);
    }
    /* Case 4: no prev or next, just remove it as it is the only ones */
    else{
        PUT(heap_listp + index * WSIZE, 0);
    }
    //printf("end\n");
}

/*
 * Extend the empty heap with a free block of CHUNKSIZE bytes
 *      the same as the one from the textbook, no need to change
 */
static void * extend_heap(size_t words){
    //printf("extend..\n");
    //mm_checkheap(__func__);
    char *bp;
    size_t size;
    size = (words % 2) ? (words + 1) * WSIZE : words * WSIZE;
    if((long)(bp = mem_sbrk(size)) == (-1))
        return NULL;
    /* allocate new block and set it unallocated */
    size_t alloc = GET_PREVALLOC(HDRP(bp));
    //size_t alloc = GET_ALLOC(HDRP(PREV_BLKP(bp)));
    PUT(HDRP(bp), PACK(size, alloc));
    PUT(FTRP(bp), PACK(size, alloc));
    PUT(HDRP(NEXT_BLKP(bp)), PACK(0, 1));       /* Restore epilogue header */
    return coalesce(bp);
}

/*
 * Coalesce, pretty much like the one from the textbook
 */
static void * coalesce(void * bp){
    //printf("coalesce:%p\n",bp);
    //mm_checkheap(__func__);
    //size_t prev_alloc = GET_ALLOC(FTRP(PREV_BLKP(bp)));
    size_t prev_alloc = GET_PREVALLOC(HDRP(bp));
    size_t next_alloc = GET_ALLOC(HDRP(NEXT_BLKP(bp)));
    size_t size = GET_SIZE(HDRP(bp));
    //printf("%ld %ld\n",prev_alloc,temp);
    /* Case 1: has prev and next, then just insert it */
    if(prev_alloc && next_alloc){
        PUT(HDRP(NEXT_BLKP(bp)), PACK(GET_SIZE(HDRP(NEXT_BLKP(bp))), 0x1));
        //PUT(FTRP(NEXT_BLKP(bp)), PACK(GET_SIZE(HDRP(NEXT_BLKP(bp))), 0x1));  
        insert(bp);
        //printf("Case 1\n");
        return bp;
    }
    /* Case 2: only has prev, coalesce the next one */
    else if(prev_alloc && !next_alloc){
        delete(NEXT_BLKP(bp));      
        size += GET_SIZE(HDRP(NEXT_BLKP(bp)));
        PUT(HDRP(bp), PACK(size, prev_alloc));
        PUT(FTRP(bp), PACK(size, prev_alloc));  
        //printf("Case 2\n");
    }
    /* Case 3: only has next, coalesce the prev one */
    else if(!prev_alloc && next_alloc){
        delete(PREV_BLKP(bp));
        PUT(HDRP(NEXT_BLKP(bp)), PACK(GET_SIZE(HDRP(NEXT_BLKP(bp))), 0x1));
        //PUT(FTRP(NEXT_BLKP(bp)), PACK(GET_SIZE(HDRP(NEXT_BLKP(bp))), 0x1)); 
        size += GET_SIZE(HDRP(PREV_BLKP(bp)));
        size_t alloc_ = GET_PREVALLOC(FTRP(PREV_BLKP(bp)));
        PUT(FTRP(bp), PACK(size, alloc_));
        PUT(HDRP(PREV_BLKP(bp)), PACK(size, alloc_));      
        bp = PREV_BLKP(bp);
        //printf("Case 3\n");
    }
    /* Case 4: coalesce the prev and the next */
    else{ 
        delete(NEXT_BLKP(bp));
        delete(PREV_BLKP(bp));
        size += GET_SIZE(HDRP(PREV_BLKP(bp))) + 
            GET_SIZE(FTRP(NEXT_BLKP(bp)));    
        size_t alloc_ = GET_PREVALLOC(FTRP(PREV_BLKP(bp)));           
        PUT(HDRP(PREV_BLKP(bp)), PACK(size, alloc_)); 
        PUT(FTRP(NEXT_BLKP(bp)), PACK(size, alloc_));
        bp = PREV_BLKP(bp);
        //printf("Case 4\n");
    }
    /* insert the new blank block */
    insert(bp);
    return bp;
}

/*
 * malloc, same as the one from the textbook
 */
void *malloc (size_t size) {
    //printf("malloc:%lu!\n",size);
    //mm_checkheap(__func__);
    size_t asize;
    size_t extendsize;
    char *bp;
    /* Initialization */
    if(heap_listp == 0){
        mm_init();
    }
    if(size == 0)
        return NULL;
    /* Find the space for new block */
    if(size <= DSIZE)
        asize = 2 * DSIZE;
    else
        asize = DSIZE * ((size + (WSIZE) + (DSIZE - 1)) / DSIZE);
    if((bp = find_fit(asize)) != NULL){
        place(bp, asize);
        return bp;
    }
    /* Extend if dont have enough space */
    extendsize = MAX(asize, CHUNKSIZE);
    if((bp = extend_heap(extendsize / WSIZE)) == NULL)
        return NULL;
    place(bp, asize);

    return bp;
}

/*
 * first_fit work better in this file in my machine
 * best_fit may use more time and a little bit higher utilization
 */
static void * find_fit(size_t size){
    // printf("find!\n");
    //mm_checkheap(__func__);
    return first_fit(size);
}


/*
 * find the first fitted space for new block
 */
static void * first_fit(size_t size){
    //printf("first_fit\n");
    //mm_checkheap(__func__);
    int index = head_match(size);
    char * bp;
    while(index < CSIZE){
        bp = heap_listp + GET_HEAD(index);
        while(bp > heap_listp){            
            if(GET_SIZE(HDRP(bp)) >= size){             
                return (void *)bp;
            }          
            bp = heap_listp + GET_NEXTP(bp);            
        }
        index++;
    }
    return NULL;
}

static void * best_fit(size_t size){
    void * tmp = NULL;
    void * bp;
    size_t min_size = 1 << 30;
    for(bp = heap_listp; GET_SIZE(HDRP(bp)) > 0; bp = NEXT_BLKP(bp)){
        if((GET_SIZE(HDRP(bp)) >= size) && (!GET_ALLOC(HDRP(bp)))){
            if(min_size > GET_SIZE(HDRP(bp))){
                min_size = GET_SIZE(HDRP(bp));
                tmp = bp;
            }
        }
    }
    return tmp;
}

/*
 * To place the new block, split if it is smaller than blank block
 */
static void place(void * ptr, size_t size){
    //printf("place:%p\n",ptr);
    //mm_checkheap(__func__);
    size_t alloc = GET_PREVALLOC(HDRP(ptr));
    //size_t alloc = GET_ALLOC(HDRP(PREV_BLKP(ptr)));
    size_t blank_size = GET_SIZE(HDRP(ptr)); 
    delete(ptr);
    /* split a new blank block */
    if(blank_size - size >= (2 * DSIZE)){
        PUT(HDRP(ptr), PACK(size, 1 | alloc));
        //PUT(FTRP(ptr), PACK(size, 1 | alloc));
        PUT(HDRP(NEXT_BLKP(ptr)), PACK(blank_size - size, 0x2));
        PUT(FTRP(NEXT_BLKP(ptr)), PACK(blank_size - size, 0x2));
        insert(NEXT_BLKP(ptr));
    }
    /* simply put it into the block */
    else{
        PUT(HDRP(ptr), PACK(blank_size, 1 | alloc));
        //PUT(FTRP(ptr), PACK(blank_size, 1 | alloc));        
        size_t alloc_ = GET_ALLOC(HDRP(NEXT_BLKP(ptr)));
        PUT(HDRP(NEXT_BLKP(ptr)), PACK(GET_SIZE(HDRP(NEXT_BLKP(ptr))), 0x2 | alloc_));
        if(!alloc_)
            PUT(FTRP(NEXT_BLKP(ptr)), PACK(GET_SIZE(HDRP(NEXT_BLKP(ptr))), 0x2 | alloc_));
    }
}

/*
 * free, use after malloc
 */
void free (void *bp) {
    //printf("free:%p\n",bp);
    //mm_checkheap(__func__);
    if(bp == 0)
        return;
    size_t size = GET_SIZE(HDRP(bp));
    if(heap_listp == 0)
        mm_init();
            
    /* set it unallocated */
    size_t alloc = GET_PREVALLOC(HDRP(bp));
    //size_t alloc2 = GET_ALLOC(HDRP(PREV_BLKP(bp)));
    //printf("%ld %ld\n",alloc,alloc2);
    PUT(HDRP(bp), PACK(size, alloc));
    PUT(FTRP(bp), PACK(size, alloc));
    coalesce(bp);
}

/*
 * realloc
 */
void *realloc(void *oldptr, size_t size) {
    //printf("realloc!\n");
    // mm_checkheap(__func__);
    void * newptr;
    if(size == 0){
        free(oldptr);
        return 0;
    }
    if(oldptr == NULL)
        return malloc(size);
    size_t oldsize = GET_SIZE(HDRP(oldptr));
    size_t needsize = ALIGN(size) + DSIZE;
    size_t alloc = GET_PREVALLOC(HDRP(oldptr));
    //size_t alloc = GET_ALLOC(HDRP(PREV_BLKP(oldptr)));
    /* if needsize is smaller, then split and create a new blank block */    
    if(oldsize >= needsize + (2 * DSIZE)){  /* may overflow if sub */
        //mm_checkheap(__LINE__);
        PUT(HDRP(oldptr), PACK(needsize, 1 | alloc));
        //PUT(FTRP(oldptr), PACK(needsize, 1 | alloc));
        PUT(HDRP(NEXT_BLKP(oldptr)), PACK(oldsize - needsize, 0x2));
        PUT(FTRP(NEXT_BLKP(oldptr)), PACK(oldsize - needsize, 0x2));    
        coalesce(NEXT_BLKP(oldptr));
        newptr = oldptr;
    }
    /* malloc new spaces and use memcpy */
    else{
        if((newptr = malloc(size)) == NULL)
            return NULL;
        if(size < oldsize)
            oldsize = size;
        memcpy(newptr, oldptr, oldsize);        
        free(oldptr);
    }
    /*mm_checkheap(__LINE__);
    if((newptr = malloc(size)) == NULL)
        return NULL;
    if(size < oldsize)
        oldsize = size;
    memcpy(newptr, oldptr, oldsize);
    free(oldptr);*/
    return newptr;
}

/*
 * calloc - you may want to look at mm-naive.c
 * This function is not tested by mdriver, but it is
 * needed to run the traces.
 */
void *calloc (size_t nmemb, size_t size) {
    // printf("calloc!\n");
    size_t bytes = nmemb * size;
    void *newptr;
    /* just malloc some spaces and set them to zero */
    newptr = malloc(bytes);
    memset(newptr, 0, bytes);

    return newptr;
}


/*
 * Return whether the pointer is in the heap.
 * May be useful for debugging.
 */
static int in_heap(const void *p) {
    return p <= mem_heap_hi() && p >= mem_heap_lo();
}

/*
 * Return whether the pointer is aligned.
 * May be useful for debugging.
 */
static int aligned(const void *p) {
    return (size_t)ALIGN(p) == (size_t)p;
}

/*
 * mm_checkheap
 */

void print_block();

void mm_checkheap(int lineno){
    int flag = 0;
    char *bp, *ptr;

    if ((GET_SIZE(HDRP(heap_listp)) != DSIZE) || !GET_ALLOC(HDRP(heap_listp)))
        flag = 1;

    for (bp = heap_listp; GET_SIZE(HDRP(bp)) > 0; bp = NEXT_BLKP(bp)) {
        if(GET(HDRP(bp)) != GET(FTRP(bp)))
            flag = 1;
    }

    if ((GET_SIZE(HDRP(bp)) != 0) || !(GET_ALLOC(HDRP(bp))))
        flag = 1;
    
    for(int i = 0; i < CSIZE; i++){
        if(GET_HEAD(i)){
            ptr = heap_listp + GET_HEAD(i);
            while(ptr > heap_listp){            
                if(ptr != heap_listp + (unsigned long)(heap_listp + GET_PREVP(ptr))){
                    flag = 1;   
                    break;
                }                    
                ptr = heap_listp + GET_NEXTP(ptr);            
            }
        }
    }
    
    if(flag)
        print_block();
}

void print_block() {
    printf("\n==============DEBUG==============\n");
    
    printf("Heap (%p):\n", heap_listp);
    
    printf("======block======\n");

    char* ptr = heap_listp + ((1 + CSIZE) * WSIZE);
    printf("Prologue address = %p\n",ptr);
    printf("Prologue size = %d\n",GET_SIZE(HDRP(ptr)));
    printf("Prologue alloc = %d\n",GET_ALLOC(HDRP(ptr)));

    for(ptr = heap_listp + ((2 + CSIZE) * WSIZE); 
        GET_SIZE(HDRP(ptr)) > 0; ptr = NEXT_BLKP(ptr)){
        printf("address = %p\n",ptr);
        printf("header size = %d; footer size = %d\n", 
            GET_SIZE(HDRP(ptr)), GET_SIZE(FTRP(ptr)));
        printf("header alloc = %d; footer alloc = %d\n", 
            GET_ALLOC(HDRP(ptr)), GET_ALLOC(FTRP(ptr)));
        printf("\n");
    }

    printf("Epilogue address = %p\n",ptr);
    printf("Epilogue size = %d\n",GET_SIZE(HDRP(ptr)));
    printf("Epilogue alloc = %d\n",GET_ALLOC(HDRP(ptr)));

    printf("======block======\n\n");
    
    printf("======free lists======\n");
    for(int i = 0; i < CSIZE; i++){
        printf("class[%d] from %d to %d:\n", i, (1<<(i+4)), (1<<(i+5)));
        if(GET_HEAD(i)){
            ptr = heap_listp + GET_HEAD(i);
            while(ptr > heap_listp){            
                printf("address = %p\n",ptr);
                printf("header size = %d; footer size = %d\n", 
                    GET_SIZE(HDRP(ptr)), GET_SIZE(FTRP(ptr)));
                printf("header alloc = %d; footer alloc = %d\n", 
                    GET_ALLOC(HDRP(ptr)), GET_ALLOC(FTRP(ptr)));
                printf("previous address = %p\n", heap_listp + GET_PREVP(ptr));     
                printf("next address = %p\n", heap_listp + GET_NEXTP(ptr));    
                ptr = heap_listp + GET_NEXTP(ptr);            
            }
        }
        else{
            printf("NULL\n");
        }
        printf("\n");
    }
    printf("======free lists======\n");

    printf("\n==============DEBUG==============\n");
}
