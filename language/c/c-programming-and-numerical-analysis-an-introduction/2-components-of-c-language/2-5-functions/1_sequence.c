/**
 * @file 1_sequence.c
 * @author Francis Anthony (fcaboyo@gmail.com)
 * @brief Recursive sequence function.
 * @version 0.1
 * @date 2022-04-10
 *
 * @copyright Copyright (c) 2022
 *
 */

#include <stdio.h>
#define N 20

int sequence(int n)
{
    if (n == 0)
        return 2;

    if (n == 1)
        return -1;

    return -2 * sequence(n - 1) + 3 * sequence(n - 2);
}

int main()
{
    for (int i = 0; i < N; i++)
    {
        printf("a(%d) = %d\n", i, sequence(i));
    }

    return 0;
}