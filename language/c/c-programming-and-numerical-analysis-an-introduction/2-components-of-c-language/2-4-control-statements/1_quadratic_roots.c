/**
 * @file 1_quadratic_roots.c
 * @author Francis Anthony (fcaboyo@gmail.com)
 * @brief This program reads three (3) coefficients of a quadratic equation and prints the two roots. It also determines if the two roots are real or not.
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
    int a,
        b,
        c,
        d;

    float rootPositive,
        rootNegative;

    // Get the coefficients from the user's input
    printf("Enter the coefficients of a quadratic equation separated by spaces = ");
    scanf("%d %d %d", &a, &b, &c);

    // Calculate the discriminant
    d = b * b - 4 * a * c;

    // D < 0, no roots
    // D = 0, one (1) root
    // D > 0, two (2) roots
    if (d >= 0)
    {
        printf("The determinant (%d) >= 0, roots are real.\n", d);

        rootPositive = (-1 * b + sqrt(d)) / 2 * a;
        rootNegative = (-1 * b - sqrt(d)) / 2 * a;

        printf("Roots = %.3f, %.3f", rootPositive, rootNegative);
    }
    else
        printf("The determinant (%d) < 0, roots are imaginary.\n", d);

    return 0;
}