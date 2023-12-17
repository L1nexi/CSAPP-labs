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

int is_transpose(int M, int N, int A[N][M], int B[M][N]);

/*
 * transpose_submit - This is the solution transpose function that you
 *     will be graded on for Part B of the assignment. Do not change
 *     the description string "Transpose submission", as the driver
 *     searches for that string to identify the transpose function to
 *     be graded.
 */

char transpose_submit_desc[] = "Transpose submission";
void transpose_submit(int M, int N, int A[N][M], int B[M][N])
{
    if (N == 48 && M == 48)
    {
        const int bsize = 12;
        int i, j;
        for (i = 0; i < N; i += bsize)
        {
            for (j = 0; j < M; j += bsize)
            {
                // 将 A 中的全部读取到 B 中，再进行转置，减少读取 A 中数据的时候对 B 中数据的替换。
                for (int k = 0; k < bsize; ++k)
                {
                    for (int s = 0; s < bsize; ++s)
                    {
                        B[j + k][i + s] = A[i + k][j + s];
                    }
                }

                for (int k = 0; k < bsize; ++k)
                {
                    for (int s = k + 1; s < bsize; ++s)
                    {
                        int tmp = B[j + k][i + s];
                        B[j + k][i + s] = B[j + s][i + k];
                        B[j + s][i + k] = tmp;
                    }
                }
            }
        }
    }
    else if (N == 96 && M == 96)
    {
        const int bsize = 12;
        const int subbsize = 6;
        int i, j, k;

        for (i = 0; i < N; i += bsize)
        {
            for (j = 0; j < M; j += bsize)
            {
                for (k = 0; k < subbsize; ++k)
                {
                    int tmp[12];
                    // 一次读取一行，减少对角线冲突
                    for (int s = 0; s < bsize; ++s)
                    {
                        tmp[s] = A[i + k][j + s];
                    }
                    for (int s = 0; s < subbsize; ++s)
                    {
                        B[j + s][i + k] = tmp[s];
                        B[j + s][i + k + subbsize] = tmp[s + subbsize];
                    }
                }
                for (k = 0; k < subbsize; ++k)
                {
                    int tmp[12];
                    // 读取两个子块的内容
                    // 同样为防止对角线冲突，利用所有的 12 个局部变量

                    for (int s = 0; s < subbsize; ++s)
                    {
                        tmp[s] = A[i + subbsize + s][j + k];
                    }

                    for (int s = 0; s < subbsize; ++s)
                    {
                        tmp[s + subbsize] = B[j + k][i + subbsize + s];
                    }

                    for (int s = 0; s < subbsize; ++s)
                    {
                        B[j + k][i + subbsize + s] = tmp[s];
                    }

                    for (int s = 0; s < subbsize; ++s)
                    {
                        B[j + k + subbsize][i + s] = tmp[s + subbsize];
                    }
                }
                i += subbsize;
                j += subbsize;
                // 可以按 48x48 进行
                for (int k = 0; k < subbsize; ++k)
                {
                    for (int s = 0; s < subbsize; ++s)
                    {
                        B[j + k][i + s] = A[i + k][j + s];
                    }
                }

                for (int k = 0; k < subbsize; ++k)
                {
                    for (int s = k + 1; s < subbsize; ++s)
                    {
                        int tmp = B[j + k][i + s];
                        B[j + k][i + s] = B[j + s][i + k];
                        B[j + s][i + k] = tmp;
                    }
                }
                i -= subbsize;
                j -= subbsize;
            }
        }
    }
    else
    {
        int i, j;
        const int bsize = 24;
        for (i = 0; i < N; i += bsize)
        {
            for (j = 0; j < M; j += bsize)
            { 
                for (int k = i; k < N && k < i + bsize; ++k)
                    for (int s = j; s < M && s < j + bsize; ++s)
                        B[s][k] = A[k][s];
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

    for (i = 0; i < N; i++)
    {
        for (j = 0; j < M; j++)
        {
            tmp = A[i][j];
            B[j][i] = tmp;
        }
    }
}

char matrix48[] = "Blocking transpose";
void trans48(int M, int N, int A[N][M], int B[M][N])
{
    const int bsize = 12;
    int i, j, k;
    for (i = 0; i < N; i += bsize)
    {
        for (j = 0; j < M; j += bsize)
        {
            for (k = 0; k < bsize; ++k, ++i)
            {
                // B = 48，可缓存 12 个 int
                // 实际上可以缓存 12 * 48， 也就是 4 分之 1 的矩阵.
                int tmp0 = A[i][j];
                int tmp1 = A[i][j + 1];
                int tmp2 = A[i][j + 2];
                int tmp3 = A[i][j + 3];
                int tmp4 = A[i][j + 4];
                int tmp5 = A[i][j + 5];
                int tmp6 = A[i][j + 6];
                int tmp7 = A[i][j + 7];
                int tmp8 = A[i][j + 8];
                int tmp9 = A[i][j + 9];
                int tmp10 = A[i][j + 10];
                int tmp11 = A[i][j + 11];

                B[j][i] = tmp0;
                B[j + 1][i] = tmp1;
                B[j + 2][i] = tmp2;
                B[j + 3][i] = tmp3;
                B[j + 4][i] = tmp4;
                B[j + 5][i] = tmp5;
                B[j + 6][i] = tmp6;
                B[j + 7][i] = tmp7;
                B[j + 8][i] = tmp8;
                B[j + 9][i] = tmp9;
                B[j + 10][i] = tmp10;
                B[j + 11][i] = tmp11;
            }
            i -= bsize;
        }
    }
}
char matrix96[] = "96 Blocking transpose";
void trans96(int M, int N, int A[N][M], int B[M][N])
{
    // 单纯的利用 6x6 分块不能通过，需进一步优化以利用局部变量
    const int bsize = 12;
    const int subbsize = 6;
    int i, j, k;
    for (i = 0; i < N; i += bsize)
    {
        for (j = 0; j < M; j += bsize)
        {
            for (k = 0; k < subbsize; ++k, ++i)
            {
                // B = 48, 可缓存 12 个 int
                // E = 48, 可以缓存 6 行 int[96]，超过 6 行则会导致驱逐
                int tmp0 = A[i][j];
                int tmp1 = A[i][j + 1];
                int tmp2 = A[i][j + 2];
                int tmp3 = A[i][j + 3];
                int tmp4 = A[i][j + 4];
                int tmp5 = A[i][j + 5];
                int tmp6 = A[i][j + 6];
                int tmp7 = A[i][j + 7];
                int tmp8 = A[i][j + 8];
                int tmp9 = A[i][j + 9];
                int tmp10 = A[i][j + 10];
                int tmp11 = A[i][j + 11];

                //
                B[j][i] = tmp0;
                B[j + 1][i] = tmp1;
                B[j + 2][i] = tmp2;
                B[j + 3][i] = tmp3;
                B[j + 4][i] = tmp4;
                B[j + 5][i] = tmp5;

                B[j][i + subbsize] = tmp6;
                B[j + 1][i + subbsize] = tmp7;
                B[j + 2][i + subbsize] = tmp8;
                B[j + 3][i + subbsize] = tmp9;
                B[j + 4][i + subbsize] = tmp10;
                B[j + 5][i + subbsize] = tmp11;
            }
            i -= subbsize;
            for (k = 0; k < subbsize; ++k, ++j)
            {
                // 一个 12x12 block 会 miss 6次
                int tmp0 = A[i + subbsize][j];
                int tmp1 = A[i + subbsize + 1][j];
                int tmp2 = A[i + subbsize + 2][j];
                int tmp3 = A[i + subbsize + 3][j];
                int tmp4 = A[i + subbsize + 4][j];
                int tmp5 = A[i + subbsize + 5][j];

                int tmp6 = B[j][i + subbsize];
                int tmp7 = B[j][i + subbsize + 1];
                int tmp8 = B[j][i + subbsize + 2];
                int tmp9 = B[j][i + subbsize + 3];
                int tmp10 = B[j][i + subbsize + 4];
                int tmp11 = B[j][i + subbsize + 5];

                // 这里全部命中
                B[j][i + subbsize] = tmp0;
                B[j][i + subbsize + 1] = tmp1;
                B[j][i + subbsize + 2] = tmp2;
                B[j][i + subbsize + 3] = tmp3;
                B[j][i + subbsize + 4] = tmp4;
                B[j][i + subbsize + 5] = tmp5;

                // 会有一次 miss
                B[j + subbsize][i] = tmp6;
                B[j + subbsize][i + 1] = tmp7;
                B[j + subbsize][i + 2] = tmp8;
                B[j + subbsize][i + 3] = tmp9;
                B[j + subbsize][i + 4] = tmp10;
                B[j + subbsize][i + 5] = tmp11;
            }
            i += subbsize;
            for (k = 0; k < subbsize; ++k, ++i)
            {
                int tmp0 = A[i][j];
                int tmp1 = A[i][j + 1];
                int tmp2 = A[i][j + 2];
                int tmp3 = A[i][j + 3];
                int tmp4 = A[i][j + 4];
                int tmp5 = A[i][j + 5];

                B[j][i] = tmp0;
                B[j + 1][i] = tmp1;
                B[j + 2][i] = tmp2;
                B[j + 3][i] = tmp3;
                B[j + 4][i] = tmp4;
                B[j + 5][i] = tmp5;
            }
            i -= bsize;
            j -= subbsize;
        }
    }
}
char matrix93[] = "93 Blocking transpose";
void trans93(int M, int N, int A[N][M], int B[M][N])
{
    // 写的时候忘了不好确定 cacheline 的驱逐关系，直接按 96 * 96 的方法处理了 84 * 96 的部分
    // 但是很神奇的是它过了 O.o
    const int bsize = 12;
    const int subbsize = 6;
    int i, j, k;
    for (i = 0; i < N - bsize; i += bsize)
    {
        for (j = 0; j < M - bsize; j += bsize)
        {
            for (k = 0; k < subbsize; ++k, ++i)
            {
                // B = 48, 可缓存 12 个 int
                // E = 48, 可以缓存 6 行 int[96]，超过 6 行则会导致驱逐
                int tmp0 = A[i][j];
                int tmp1 = A[i][j + 1];
                int tmp2 = A[i][j + 2];
                int tmp3 = A[i][j + 3];
                int tmp4 = A[i][j + 4];
                int tmp5 = A[i][j + 5];
                int tmp6 = A[i][j + 6];
                int tmp7 = A[i][j + 7];
                int tmp8 = A[i][j + 8];
                int tmp9 = A[i][j + 9];
                int tmp10 = A[i][j + 10];
                int tmp11 = A[i][j + 11];

                //
                B[j][i] = tmp0;
                B[j + 1][i] = tmp1;
                B[j + 2][i] = tmp2;
                B[j + 3][i] = tmp3;
                B[j + 4][i] = tmp4;
                B[j + 5][i] = tmp5;

                B[j][i + subbsize] = tmp6;
                B[j + 1][i + subbsize] = tmp7;
                B[j + 2][i + subbsize] = tmp8;
                B[j + 3][i + subbsize] = tmp9;
                B[j + 4][i + subbsize] = tmp10;
                B[j + 5][i + subbsize] = tmp11;
            }
            i -= subbsize;
            for (k = 0; k < subbsize; ++k, ++j)
            {
                // 一个 12x12 block 会 miss 6次
                int tmp0 = A[i + subbsize][j];
                int tmp1 = A[i + subbsize + 1][j];
                int tmp2 = A[i + subbsize + 2][j];
                int tmp3 = A[i + subbsize + 3][j];
                int tmp4 = A[i + subbsize + 4][j];
                int tmp5 = A[i + subbsize + 5][j];

                int tmp6 = B[j][i + subbsize];
                int tmp7 = B[j][i + subbsize + 1];
                int tmp8 = B[j][i + subbsize + 2];
                int tmp9 = B[j][i + subbsize + 3];
                int tmp10 = B[j][i + subbsize + 4];
                int tmp11 = B[j][i + subbsize + 5];

                // 这里全部命中
                B[j][i + subbsize] = tmp0;
                B[j][i + subbsize + 1] = tmp1;
                B[j][i + subbsize + 2] = tmp2;
                B[j][i + subbsize + 3] = tmp3;
                B[j][i + subbsize + 4] = tmp4;
                B[j][i + subbsize + 5] = tmp5;

                // 会有一次 miss
                B[j + subbsize][i] = tmp6;
                B[j + subbsize][i + 1] = tmp7;
                B[j + subbsize][i + 2] = tmp8;
                B[j + subbsize][i + 3] = tmp9;
                B[j + subbsize][i + 4] = tmp10;
                B[j + subbsize][i + 5] = tmp11;
            }
            i += subbsize;
            for (k = 0; k < subbsize; ++k, ++i)
            {
                int tmp0 = A[i][j];
                int tmp1 = A[i][j + 1];
                int tmp2 = A[i][j + 2];
                int tmp3 = A[i][j + 3];
                int tmp4 = A[i][j + 4];
                int tmp5 = A[i][j + 5];

                B[j][i] = tmp0;
                B[j + 1][i] = tmp1;
                B[j + 2][i] = tmp2;
                B[j + 3][i] = tmp3;
                B[j + 4][i] = tmp4;
                B[j + 5][i] = tmp5;
            }
            i -= bsize;
            j -= subbsize;
        }
    }

    // 处理未转置的部分
    int iite;
    int jite;
    for (iite = 0; iite < N; ++iite)
    {
        for (jite = j; jite < M; ++jite)
        {
            B[jite][iite] = A[iite][jite];
        }
    }
    for (jite = 0; jite < j; ++jite)
    {
        for (iite = i; iite < N; ++iite)
        {
            B[jite][iite] = A[iite][jite];
        }
    }
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
    // registerTransFunction(trans, trans_desc);
    // registerTransFunction(trans48, matrix48);
    // registerTransFunction(trans96, matrix96);
    // registerTransFunction(trans93, transpose_submit_desc);
}

/*
 * is_transpose - This helper function checks if B is the transpose of
 *     A. You can check the correctness of your transpose by calling
 *     it before returning from the transpose function.
 */
int is_transpose(int M, int N, int A[N][M], int B[M][N])
{
    int i, j;

    for (i = 0; i < N; i++)
    {
        for (j = 0; j < M; ++j)
        {
            if (A[i][j] != B[j][i])
            {
                return 0;
            }
        }
    }
    return 1;
}
