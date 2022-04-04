#include <stdio.h>
int main()
{
    int a, b; /* to declare that a and b are integer variables */
    printf("Enter two integer numbers separated by space =");
    scanf("%d %d", &a, &b); /* This is the way to read two integer numbers and assign them to a and b. */
    printf("The product of two numbers is %d.\n", a * b); /* is for integer format */
    return 0;
}