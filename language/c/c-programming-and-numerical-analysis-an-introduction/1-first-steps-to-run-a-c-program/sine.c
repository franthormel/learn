#include <stdio.h>
#include <math.h>
int main()
{
    float x;
    printf("Enter a number =");
    scanf("%f", &x);
    printf("x= %f sin(x)=%f\n", x, sin(x));
    return 0;
}