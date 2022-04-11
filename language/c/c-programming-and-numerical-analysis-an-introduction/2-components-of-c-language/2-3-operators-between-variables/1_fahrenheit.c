/**
 * @file 1_fahrenheit.c
 * @author Francis Anthony (fcaboyo@gmail.com)
 * @brief Write a program that interactively reads temperature in Celsius and convert it to Fahrenheit.
 * @version 0.1
 * @date 2022-04-10
 *
 * @copyright Copyright (c) 2022
 *
 */

#include <stdio.h>

int main()
{
    float celsius;

    printf("Enter temperature in C = ");
    scanf("%f", &celsius);

    float fahrenheit = ((celsius * 9) / 5) + 32;

    printf("It is %.1f degrees in Fahrenheit", fahrenheit);

    return 0;
}