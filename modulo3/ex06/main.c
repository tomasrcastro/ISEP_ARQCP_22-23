#include <stdio.h>
#include "asm.h"

char* ptr1;

int main(void) {
    char str[] = "ola chamo me diogo e sou aluno do isep";
    ptr1 = str;

    int res = encrypt();

    printf("res = %d\n", res);

    return 0;

}  