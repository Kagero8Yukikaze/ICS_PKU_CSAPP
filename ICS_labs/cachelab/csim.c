#include "cachelab.h"
#include <stdlib.h>
#include <unistd.h>
#include <stdio.h>
#include <limits.h>
#include <getopt.h>
#include <string.h>

int s,E,b,S; 
char t[30]; 

int hit_count , miss_count , eviction_count;  

typedef struct{
    int valid;
    long tag;           //tag needs to be 64 bits
    int LRU;            //line with the greatest LRU will be evicted
}cache_line, *cache_set, **cache;  

cache myCache = NULL;  

void update_LRU(int set,int line){
	for(int j = 0; j < E; ++j)
		if(myCache[set][j].valid == 1)
			++myCache[set][j].LRU;
    myCache[set][line].LRU=0;           
}

void cache_memory(long address){
	int tmp_set = (address >> b) & ((1 << s) - 1);
	long tmp_tag = address >> (b + s);	
	for(int i = 0; i < E; ++i){
		if(myCache[tmp_set][i].tag == tmp_tag && myCache[tmp_set][i].valid == 1){
			++hit_count;
            update_LRU(tmp_set,i);
			return ;
		}                   //hit
	}	
    ++miss_count;           //miss
	for(int i = 0; i < E; ++i){
		if(myCache[tmp_set][i].valid == 0){
			myCache[tmp_set][i].valid = 1;
			myCache[tmp_set][i].tag = tmp_tag;		
            update_LRU(tmp_set,i);
			return ;        
		}                       //lines left
	}
	++eviction_count;           //no line left, have to evict
    int max_LRU=-1;
    int tmp_line=-1;
	for(int i = 0; i < E; ++i){			//find the line with the greatest LRU, then evict it
        if(myCache[tmp_set][i].LRU > max_LRU){
			max_LRU = myCache[tmp_set][i].LRU;
			tmp_line = i;
		}
	}
    myCache[tmp_set][tmp_line].tag = tmp_tag;
	myCache[tmp_set][tmp_line].valid = 1;
    update_LRU(tmp_set,tmp_line);
	return ;
}

int main(int argc, char* argv[]){
	hit_count = miss_count = eviction_count = 0;
	int opt; 
	//read the command
	while(-1 != (opt = (getopt(argc, argv, "s:E:b:t:")))){
		switch(opt){
			case 's': s = atoi(optarg); break;
			case 'E': E = atoi(optarg); break;
			case 'b': b = atoi(optarg); break;
			case 't': strcpy(t, optarg); break;
		}
	}
	//initialize
	S = 1 << s;               
	myCache = (cache)malloc(sizeof(cache_set) * S); 
	for(int i = 0; i < S; ++i){
		myCache[i] = (cache_set)malloc(sizeof(cache_line) * E);
		for(int j = 0; j < E; ++j){
			myCache[i][j].valid = 0;
			myCache[i][j].tag = -1;
            myCache[i][j].LRU = 0;
		}
	} 
	//read file
	FILE* fp = fopen(t, "r"); //trace name
    if(fp == NULL){
    	printf("error");
    	exit(-1);
    }
	char operation;         
	long address;   //address needs to be 64 bits
	int size;               
	while(fscanf(fp, " %c %lx,%d\n", &operation, &address, &size) > 0){
		switch(operation){
			case 'I': continue;	  
			case 'L': cache_memory(address); break;
			case 'M': cache_memory(address);  
			case 'S': cache_memory(address);
		}
	}
	fclose(fp);
	for(int i = 0; i < S; ++i)
		free(myCache[i]);
	free(myCache); 
    printSummary(hit_count, miss_count, eviction_count);   //command in cachelab.h
    return 0;
}