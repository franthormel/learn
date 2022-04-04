#include <stdio.h>

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
// TODO: FIX
float factorialSum(int n)
{
    
    return 1.0 / (float)factorial(n - 1);
}

int main()
{
    // for (int i = 0; i < 12; i++)
    // {
    //     printf("Factorial of %d =\t%d\n", i, factorial(i));
    // }

    for (int i = 0; i < 3; i++)
    {
        printf("Factorial division sum of %d =\t%f\n", i, factorialSum(i));
    }
}