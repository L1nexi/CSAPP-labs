#include "cachelab.h"
#include <unistd.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include "csim.h"
#include <getopt.h>

// print usage info
void usage()
{
    printf("Usage: ./csim [-hv] -s <num> -E <num> -b <num> -t <file>\n");
    printf("Options:\n");
    printf("  -h         Print this help message.\n");
    printf("  -v         Optional verbose flag.\n");
    printf("  -s <num>   Number of set index bits.\n");
    printf("  -E <num>   Number of lines per set.\n");
    printf("  -b <num>   Number of block offset bits.\n");
    printf("  -t <file>  Trace file.\n");
    printf("\n");
    printf("Examples:\n");
    printf("  linux>  ./csim -s 4 -E 1 -b 4 -t traces/yi.trace\n");
    printf("  linux>  ./csim -v -s 8 -E 2 -b 4 -t traces/yi.trace\n");
    exit(1);
}

// parse command line and get the parameters
void parseline(int argc, char **argv)
{
    int opt;
    int num = 0;
    while ((opt = getopt(argc, argv, "hvs:E:b:t:")) != -1)
    {
        switch (opt)
        {
        case 'h':
            usage();
            break;
        case 'v':
            verbose = 1;
            break;
        case 's':
            num = atoi(optarg);
            if (num == 0 && optarg[0] != '0')
            {
                printf("./csim: Missing required command line argument\n");
                usage();
            }
            numSet = num;
            break;
        case 'E':
            num = atoi(optarg);
            if (num == 0 && optarg[0] != '0')
            {
                printf("./csim: Missing required command line argument\n");
                usage();
            }
            associativity = num;
            break;
        case 'b':
            num = atoi(optarg);
            if (num == 0 && optarg[0] != '0')
            {
                printf("./csim: Missing required command line argument\n");
                usage();
            }
            blockSize = num;
            break;
        case 't':
            strcpy(filePath, optarg);
            break;
        case ':':
            printf("./csim: Missing required command line argument\n");
            usage();
            break;
        case '?':
            usage();
            break;
        default:
            printf("getopt error");
            exit(1);
            break;
        }
    }
}

int main(int argc, char *argv[])
{
    parseline(argc, argv);
    Simulate();
    printSummary(hits, misses, evictions);
    return 0;
}

void update_state(unsigned tag, unsigned set_index, unsigned e_index)
{
    cache[index(set_index, e_index)].isValid = 1;
    cache[index(set_index, e_index)].tag = tag;
    for (int i = 0; i < associativity; ++i)
    {
        if (cache[index(set_index, i)].isValid == 1)
        {
            ++cache[index(set_index, i)].timeStamp;
        }
    }
    cache[index(set_index, e_index)].timeStamp = 0;
}
// return -1 when requested block is not cached
// return i when requested block is cached
int cachedIndex(unsigned tag, unsigned set_index)
{
    for (int i = 0; i < associativity; ++i)
    {
        if (cache[index(set_index, i)].isValid == 1 && cache[index(set_index, i)].tag == tag)
        {
            return i;
        }
    }
    return -1;
}
// 行已满时，返回 -1， 否则返回第一个空闲位置
int isfull(unsigned set_index)
{
    for (int i = 0; i < associativity; ++i)
    {
        if (cache[index(set_index, i)].isValid == 0)
        {
            return i;
        }
    }
    return -1;
}


// 行已满时，进行驱逐
int findLRU(unsigned set_index)
{
    int ret = 0;
    int maxTime = cache[index(set_index, 0)].timeStamp;
    for (int i = 1; i < associativity; ++i)
    {
        if (cache[index(set_index, i)].timeStamp > maxTime)
        {
            maxTime = cache[index(set_index, i)].timeStamp;
            ret = i;
        }
    }
    return ret;
}

void update(unsigned tag, unsigned set_index)
{
    int state;
    state = cachedIndex(tag, set_index);
    if (state == -1)    // miss
    {
        if (verbose)
            strcat(output, " miss");
        ++misses;

        state = isfull(set_index);
        if (state != -1)    // 有空位置
        {
            update_state(tag, set_index, state);
        }
        else    // eviction
        {
            if (verbose)
                strcat(output, " eviction");
            ++evictions;

            state = findLRU(set_index);
            update_state(tag, set_index, state);
        }
    }
    else    // hit
    {
        if (verbose)
            strcat(output, " hit");
        ++hits;

        update_state(tag, set_index, state);
    }
}

// 让 cache[] 表现为 cache[numSet][associativity]
int index(int i, int j)
{
    assert(i >= 0 && i < numSet);
    assert(j >= 0 && j < associativity);
    
    return i * associativity + j;
}
void initCache()
{
    cache = (CacheLine*) malloc(sizeof(CacheLine) * associativity * numSet);
    for (int i = 0; i < numSet ; ++i)
    {
        for (int j = 0; j < associativity; ++j)
        {
            cache[index(i, j)].isValid = 0;
            cache[index(i, j)].tag = 0;
            cache[index(i, j)].timeStamp = 0;
        }
    }
}

void Simulate()
{
    
    FILE *is;
    is = fopen(filePath, "r");
    if (is == NULL)
    {
        exit(-1);
    }
    initCache();
    extern char operation;
    extern unsigned addr;
    extern int size;
    extern char buf[1024];
    extern char output[1024];
    char tmp;

    while (fgets(buf, 1023, is) != NULL)
    {
        sscanf(buf, "%c%c %x,%d",&tmp, &operation, &addr, &size);
        // int block_offs = addr % blockSize;
        if (verbose)
        {   
            if (tmp == 'I')
            {
                operation = tmp;
            }
            sprintf(output, "%c %x,%d", operation, addr, size);
        }
        addr = addr / blockSize;
        int set_index = addr % numSet;
        int tag = addr / numSet;
        switch(operation)
        {
            case 'M':
                update(tag, set_index);
                update(tag, set_index);
                break;
            case 'L':
                update(tag, set_index);
                break;
            case 'S':
                update(tag, set_index);
                break;
            default:
                break;
        }
        if (verbose)
        {
            printf("%s\n", output);
        }
    }
    fclose(is);
    free(cache);
}
