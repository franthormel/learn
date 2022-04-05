#include <stdio.h>
#define N 15

/*
Write a function, int factorial(int n), which returns n! (the factorial of n, i.e.,
1 x 2 x 3 x ... x n) using the recursive algorithm.
*/
int factorial(int n)
{
    if (n == 0 || n == 1)
        return 1;

    return n * factorial(n - 1);
}

/*
Using int factorial(int n) above, write a program to compute
1 + 1/1! + 1/2! + ... + 1/11!.
*/
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