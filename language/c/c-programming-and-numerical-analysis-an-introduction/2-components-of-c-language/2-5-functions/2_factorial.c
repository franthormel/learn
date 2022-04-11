/**
 * @file 2_factorial.c
 * @author Francis Anthony (fcaboyo@gmail.com)
 * @brief Write a function which returns the factorial of n using recursion and a function that computes 1 + 1/1! + 1/2! + ... + 1/n! using the previously written recursive factorial function.
 * @version 0.1
 * @date 2022-04-10
 *
 * @copyright Copyright (c) 2022
 *
 */

#include <stdio.h>
#define N 15

int factorial(int n)
{
    if (n == 0 || n == 1)
        return 1;

    return n * factorial(n - 1);
}

double factorialSum(int n)
{
    if (n == 0)
        return 1;

    return factorialSum(n - 1) + 1.0 / factorial(n);
}

int main()
{
    for (int i = 0; i < N; i++)
    {
        printf("Factorial of %d =\t%d\n", i, factorial(i));
    }

    for (int i = 0; i < N; i++)
    {
        printf("Factorial division sum of %d =\t%.15lf\n", i, factorialSum(i));
    }
}