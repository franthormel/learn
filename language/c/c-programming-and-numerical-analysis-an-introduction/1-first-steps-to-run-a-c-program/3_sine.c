/**
 * @file sine.c
 * @author Francis Anthony (fcaboyo@gmail.com)
 * @brief Write a program to read a real number, x, and outputs its sine, i.e., sin.x/. You need to use <math.h> and the -lm compile option.
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
    float x;

    printf("Enter a number = ");
    scanf("%f", &x);

    printf("x= %f sin(x)=%f\n", x, sin(x));

    return 0;
}