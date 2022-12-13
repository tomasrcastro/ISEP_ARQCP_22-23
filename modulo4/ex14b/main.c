#include <stdio.h>
#include "asm.h"

int main(){

    int num = 1;
    int *ptr = &num;

    int res = reset_bit(ptr, 5);

    printf("%d\n", res);

    return 0;
}
