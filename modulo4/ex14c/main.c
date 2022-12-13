#include <stdio.h>
#include "asm.h"

int main(){

    int num = 67;
    int pos = 5;
    int *ptr = &num;
    
    reset_2bits(ptr, pos);
    
    printf("%d\n", num);
    
    return 0;
}
