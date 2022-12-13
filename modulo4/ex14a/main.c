#include <stdio.h>
#include "reset_bit.h"

int main(){

    int num = 1;
    int *ptr = &num;

    int res = reset_bit(ptr, 5);

    printf("%d\n", res);

    return 0;
}
