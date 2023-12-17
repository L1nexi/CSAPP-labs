#pragma once

#define MININT -2147483648
#include <unistd.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <getopt.h>
#include <assert.h>
// cache parameters
int numSet;
int associativity;
int blockSize;
char filePath[100];
int verbose = 0;

// final results
int hits = 0;
int misses = 0;
int evictions = 0;

// will be set in getopt() function
extern char *optarg;

// you can define functions here
void usage();
void parseline(int argc, char **argv);
// 无条件的更新状态
void update_state(unsigned tag, unsigned set_index, unsigned e_index);
// return -1 when requested block is not cached
// return i when requested block is cached
int cachedIndex(unsigned tag, unsigned set_index);
// 行已满时，进行驱逐
int findLRU(unsigned set_index);
void update(unsigned tag, unsigned set_index);
// 让 cache[] 表现为 cache[numSet][associativity]
int index(int i, int j);
void initCache();
void Simulate();
// 行已满时，返回 -1， 否则返回第一个空闲位置
int isfull(unsigned set_index);

char operation;
unsigned addr;
int size;
char buf[1024];
char output[1024];

typedef struct{
    // true when valid
    int isValid;
    unsigned tag;
    unsigned timeStamp;
} CacheLine;
CacheLine *cache;

