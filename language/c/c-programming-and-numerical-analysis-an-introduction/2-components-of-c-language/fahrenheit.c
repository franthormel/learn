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