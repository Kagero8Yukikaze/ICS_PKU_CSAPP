/*
 * trans.c - Matrix transpose B = A^T
 *
 * Each transpose function must have a prototype of the form:
 * void trans(int M, int N, int A[N][M], int B[M][N]);
 *
 * A transpose function is evaluated by counting the number of misses
 * on a 1KB direct mapped cache with a block size of 32 bytes.
 */
#include <stdio.h>
#include "cachelab.h"
#include "contracts.h"

int is_transpose(int M, int N, int A[N][M], int B[M][N]);

/*
 * transpose_submit - This is the solution transpose function that you
 *     will be graded on for Part B of the assignment. Do not change
 *     the description string "Transpose submission", as the driver
 *     searches for that string to identify the transpose function to
 *     be graded. The REQUIRES and ENSURES from 15-122 are included
 *     for your convenience. They can be removed if you like.
 */
char transpose_submit_desc[] = "Transpose submission";
void transpose_submit(int M, int N, int A[N][M], int B[M][N])
{
    REQUIRES(M > 0);
    REQUIRES(N > 0);
    if(M == 32){
        int x,y,i;
        int temp[8];
        for(x = 0; x < 32; x += 8){
            for(y = 0; y < 32; y += 8){
                for(i = x; i < x + 8; i++){
                    temp[0] = A[i][y];
                    temp[1] = A[i][y+1];
                    temp[2] = A[i][y+2];
                    temp[3] = A[i][y+3];
                    temp[4] = A[i][y+4];
                    temp[5] = A[i][y+5];
                    temp[6] = A[i][y+6];
                    temp[7] = A[i][y+7];
                    B[y][i] = temp[0];
                    B[y+1][i] = temp[1];
                    B[y+2][i] = temp[2];
                    B[y+3][i] = temp[3];
                    B[y+4][i] = temp[4];
                    B[y+5][i] = temp[5];
                    B[y+6][i] = temp[6];
                    B[y+7][i] = temp[7];               
                }
            }
        }
    }
    else if(M == 64){
        int x,y,i;
        int temp[8];
        for(x = 0; x < 64; x += 8){
            for(y = 0; y < 64; y += 8){
                /*
                        aaaaaaaa                           aaaaaaaa                         aaaaaaaa
                        bbbbbbbb                           bbbbbbbb                         bbbbbbbb
                        cccccccc                           cccccccc                         cccccccc
                        dddddddd                           dddddddd                         dddddddd
                        eeeeeeee                           eeeeeeee                         eeeeeeee
                        ffffffff                           ffffffff                         ffffffff
                        gggggggg                           gggggggg                         gggggggg
                        hhhhhhhh        ->                 hhhhhhhh         ->              hhhhhhhh
                ........                           a...a...                         abcdabcd
                ........                           a...a...                         abcdabcd
                ........                           a...a...                         abcdabcd
                ........                           a...a...                         abcdabcd
                ........                           ........                         ........
                ........                           ........                         ........
                ........                           ........                         ........
                ........                           ........                         ........
                */
                for(i = x; i < x + 4; i++){
                    temp[0] = A[i][y];
                    temp[1] = A[i][y+1];
                    temp[2] = A[i][y+2];
                    temp[3] = A[i][y+3];
                    temp[4] = A[i][y+4];
                    temp[5] = A[i][y+5];
                    temp[6] = A[i][y+6];
                    temp[7] = A[i][y+7];
                    B[y][i] = temp[0];
                    B[y+1][i] = temp[1];
                    B[y+2][i] = temp[2];
                    B[y+3][i] = temp[3];
                    B[y][i+4] = temp[4];
                    B[y+1][i+4] = temp[5];
                    B[y+2][i+4] = temp[6];
                    B[y+3][i+4] = temp[7];       
                }
                /*
                        aaaaaaaa                           aaaaaaaa                         aaaaaaaa                                aaaaaaaa
                        bbbbbbbb                           bbbbbbbb                         bbbbbbbb                                bbbbbbbb
                        cccccccc                           cccccccc                         cccccccc                                cccccccc
                        dddddddd                           dddddddd                         dddddddd                                dddddddd
                        eeeeeeee                           eeeeeeee                         eeeeeeee                                eeeeeeee
                        ffffffff                           ffffffff                         ffffffff                                ffffffff
                        gggggggg                           gggggggg                         gggggggg                                gggggggg
                        hhhhhhhh        ->                 hhhhhhhh         ->              hhhhhhhh            ->                  hhhhhhhh
                abcdabcd                           abcdabcd                         abcdefgh                                abcdefgh
                abcdabcd                           abcdabcd                         abcdabcd                                abcdefgh
                abcdabcd                           abcdabcd                         abcdabcd                                abcdefgh
                abcdabcd                           abcdabcd                         abcdabcd                                abcdefgh
                ........                           abcd....                         abcd....                                abcd....
                ........                           ........                         ........                                abcd....
                ........                           ........                         ........                                abcd....
                ........                           ........                         ........                                abcd....
                */
                for(i = y; i < y + 4; i++){
                    temp[0] = A[x+4][i];
                    temp[1] = A[x+5][i];
                    temp[2] = A[x+6][i];
                    temp[3] = A[x+7][i];
                    temp[4] = B[i][x+4];
                    temp[5] = B[i][x+5];
                    temp[6] = B[i][x+6];
                    temp[7] = B[i][x+7];
                    B[i][x+4] = temp[0];
                    B[i][x+5] = temp[1];
                    B[i][x+6] = temp[2];
                    B[i][x+7] = temp[3];
                    B[i+4][x] = temp[4];
                    B[i+4][x+1] = temp[5];
                    B[i+4][x+2] = temp[6];
                    B[i+4][x+3] = temp[7];     
                }
                /*
                        aaaaaaaa                           aaaaaaaa
                        bbbbbbbb                           bbbbbbbb
                        cccccccc                           cccccccc
                        dddddddd                           dddddddd
                        eeeeeeee                           eeeeeeee
                        ffffffff                           ffffffff
                        gggggggg                           gggggggg
                        hhhhhhhh        ->                 hhhhhhhh
                abcdefgh                           abcdefgh
                abcdefgh                           abcdefgh
                abcdefgh                           abcdefgh
                abcdefgh                           abcdefgh
                abcdef..                           abcdefgh
                abcdef..                           abcdefgh
                abcdef..                           abcdefgh
                abcdef..                           abcdefgh
                */
                for(i = x + 4; i < x + 8; i += 2){
                    temp[0] = A[i][y+4];
                    temp[1] = A[i][y+5];
                    temp[2] = A[i][y+6];
                    temp[3] = A[i][y+7];
                    temp[4] = A[i+1][y+4];
                    temp[5] = A[i+1][y+5];
                    temp[6] = A[i+1][y+6];
                    temp[7] = A[i+1][y+7];
                    B[y+4][i] = temp[0];
                    B[y+5][i] = temp[1];
                    B[y+6][i] = temp[2];
                    B[y+7][i] = temp[3];
                    B[y+4][i+1] = temp[4];
                    B[y+5][i+1] = temp[5];
                    B[y+6][i+1] = temp[6];
                    B[y+7][i+1] = temp[7];       
                }
            }
        }
    }
    else if(M == 60){
        int x,y,i,j;
        for(x = 0; x < 68; x += 16){
            for(y = 0; y < 60; y += 4){
                for(i = x; i < x + 16 && i < 68; i++){
                    for(j = y; j < y + 4 && j < 60; j++){
                        B[j][i] = A[i][j];
                    }
                }
            }
        }
    }
    else{
        int x,y,i,j;
        for(x = 0; x < M; x += 8){
            for(y = 0;y < N; y += 8){
                for(i = x;i < M && i < x + 8; i++){
                    for(j = y; j < N && j < y + 8; j++){
                        B[j][i] = A[i][j];
                    }
                }
            }
        }
    }
    
    

    ENSURES(is_transpose(M, N, A, B));
}

char trans_simple_desc[] = "A simple transpose";
void trans_simple(int M, int N, int A[N][M], int B[M][N])
{
/* your transpose code here */
    int x,y,a,b,i,j;
    for(x=0;x<M;x+=8){
        for(y=0;y<N;y+=8){
            a=M<(x+8)?N:(x+8);
            b=N<(y+8)?M:(y+8);
            for(i=x;i<a;i++){
                for(j=y;j<b;j++){
                    B[j][i]=A[i][j];
                }
            }
        }
    }
}

/*
 * You can define additional transpose functions below. We've defined
 * a simple one below to help you get started.
 */

 /*
  * trans - A simple baseline transpose function, not optimized for the cache.
  */
char trans_desc[] = "Simple row-wise scan transpose";
void trans(int M, int N, int A[N][M], int B[M][N])
{
    int i, j, tmp;

    REQUIRES(M > 0);
    REQUIRES(N > 0);

    for (i = 0; i < N; i++) {
        for (j = 0; j < M; j++) {
            tmp = A[i][j];
            B[j][i] = tmp;
        }
    }

    ENSURES(is_transpose(M, N, A, B));
}

/*
 * registerFunctions - This function registers your transpose
 *     functions with the driver.  At runtime, the driver will
 *     evaluate each of the registered functions and summarize their
 *     performance. This is a handy way to experiment with different
 *     transpose strategies.
 */
void registerFunctions()
{
    /* Register your solution function */
    registerTransFunction(transpose_submit, transpose_submit_desc);

    /* Register any additional transpose functions */
    registerTransFunction(trans, trans_desc);

}

/*
 * is_transpose - This helper function checks if B is the transpose of
 *     A. You can check the correctness of your transpose by calling
 *     it before returning from the transpose function.
 */
int is_transpose(int M, int N, int A[N][M], int B[M][N])
{
    int i, j;

    for (i = 0; i < N; i++) {
        for (j = 0; j < M; ++j) {
            if (A[i][j] != B[j][i]) {
                return 0;
            }
        }
    }
    return 1;
}

