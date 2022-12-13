#include <stdio.h>
#include "asm.h"

int i;
int j;

int main(){

    i = 1;
    j = 2;

    int res;

    res = f();

    printf("%d\n", res);

    res = f2();

    printf("%d\n", res);

    res = f3();

    printf("%d\n", res);

    res = f4();

    printf("%d\n", res);

    return 0;
}