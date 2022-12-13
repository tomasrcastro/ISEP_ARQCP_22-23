#include <stdio.h>
#include "asm.h"


int vec[] = {10,20,10,40,30};
int *ptrvec = vec;
int num = sizeof(vec)/sizeof(vec[0]);

int main() {

    int result = count_max();

    printf("%d\n", result); 

    return 0;
    
}
