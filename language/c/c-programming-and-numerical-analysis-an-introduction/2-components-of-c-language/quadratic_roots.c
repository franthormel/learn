#include <stdio.h>
#include <math.h>

/*
This program reads three (3) coefficients of a quadratic equation and
prints the two roots. It also determines if the two roots are real or not.

Note that the root is real if its discriminant is greater than or equal to 0,
and it is not real if its discriminant is lesser than 0.
*/

int main()
{
    int a, b, c;

    float discriminant, rootNegative, rootPositive;

    // 1. Get the coefficients from the user's input
    printf("Enter the coefficients of a quadratic equation separated by spaces = ");
    scanf("%d %d %d", &a, &b, &c);

    // 2. Calculate the discriminant using the two roots
    discriminant = b * b - 4 * a * c;

    // 3. Calculate the first root (positive sign)
    rootPositive = (-1 * b + sqrt(discriminant)) / 2 * a;

    // 4. Calculate the second root (negative sign)
    rootNegative = (-1 * b - sqrt(discriminant)) / 2 * a;

    // 5. Display the computations
    if (discriminant >= 0)
        printf("The determinant [%.2f] is greater than or equal to 0 therefore it is real.\n", discriminant);
    else
        printf("The determinant [%.2f] is lesser than 0 therefore it is not real or imaginary.\n");

    printf("The first root is [%.2f] and the second root is [%.2f]\n", rootPositive, rootNegative);

    return 0;
}