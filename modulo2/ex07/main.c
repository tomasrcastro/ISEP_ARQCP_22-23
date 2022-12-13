#include <stdio.h>
#include "crossSumBytes.h"

short s1 = 0;
short s2 = 0;
int res = 0;

int main(void)
{
    printf("Enter two numbers: ");
    scanf("%hd %hd", &s1, &s2);
    res = crossSumBytes();
    printf("The cross sum bytes is %hd\n", res);
    return 0;
}
