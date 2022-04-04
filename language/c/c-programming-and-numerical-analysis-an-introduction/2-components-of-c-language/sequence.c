#include <stdio.h>
#define N 20

/*
A sequence a(n) is given with the following rule:
a(n+2) = -2a(n+1) + 3a(n)
a(0) = 2
a(1) = -1
*/

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