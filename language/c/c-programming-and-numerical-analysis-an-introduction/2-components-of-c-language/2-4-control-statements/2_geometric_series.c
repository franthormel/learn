/**
 * @file 2_geometric_series.c
 * @author Francis Anthony (fcaboyo@gmail.com)
 * @brief Write a C program to numerically compute the series. As this series is known to be convergent to PI/4 approximate PI using the program. Vary iteration numbers.
 * @version 0.1
 * @date 2022-04-10
 *
 * @copyright Copyright (c) 2022
 *
 */

#include <stdio.h>
#include <math.h>

int main()
{
    int n;
    double sum = 0;

    // Get the number of iterations (n) from input.
    printf("Enter n = ");
    scanf("%d", &n);

    // Calculate the sum of the series
    for (int i = 1; i <= n; i++)
    {
        sum = sum + ((pow(-1, i + 1)) / ((2 * i) - 1));
    }

    // Display the computation
    printf("Sum  = %.30lf\n", sum);
    printf("PI_4 = %.30lf\n", M_PI_4);
    printf("Diff = %.30lf\n", M_PI_4 - sum);

    return 0;
}