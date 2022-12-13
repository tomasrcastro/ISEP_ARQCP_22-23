#include <stdio.h>
#include "asm.h"

int op1 = 0;
int op2 = 0;
int res = 0;

int main(void)
{
    printf("Enter two numbers: ");
    scanf("%d %d", &op1, &op2);
    res = sum();
    printf("The sum is %d\n", res);
    return 0;
}
