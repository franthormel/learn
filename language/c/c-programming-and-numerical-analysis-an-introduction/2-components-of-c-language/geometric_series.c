#include <stdio.h>
#include <math.h>

/*
This program computes the geometric series until n and
shows the approximation and diffennce to PI/4.
Wherein n is taken from the user's input and is a
positive whole number.
*/

int main()
{
    int n;
    double sum = 0;

    // 1. Get the number of iterations (n) from input.
    printf("Enter n = ");
    scanf("%d", &n);

    // 2. Calculate the sum of the series
    for (int i = 1; i <= n; i++)
    {
        sum = sum + ((pow(-1, i + 1)) / ((2 * i) - 1));
    }

    // 3. Display the computation
    printf("Sum  = %.30lf\n", sum);
    printf("PI_4 = %.30lf\n", M_PI_4);
    printf("Diff = %.30lf\n", M_PI_4 - sum);

    return 0;
}