#include <stdio.h>
#include "sum_v2.h"

int op1 = 0;
int op2 = 0;
int res = 0;

int main(void)
{
    printf("Enter two numbers: ");
    scanf("%d %d", &op1, &op2);
    res = sum_v2();
    printf("The sum is %d\n", res);
    return 0;
}
