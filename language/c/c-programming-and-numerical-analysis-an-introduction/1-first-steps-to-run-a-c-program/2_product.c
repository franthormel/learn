/**
 * @file 2_product.c
 * @author Francis Anthony (fcaboyo@gmail.com)
 * @brief Write a program to read two real numbers from the keyboard and to print their product.
 * @version 0.1
 * @date 2022-04-10
 *
 * @copyright Copyright (c) 2022
 *
 */

#include <stdio.h>

int main()
{
    int a, b;

    printf("Enter two integer numbers separated by space = ");
    scanf("%d %d", &a, &b);

    printf("The product of two numbers is %d.\n", a * b);

    return 0;
}