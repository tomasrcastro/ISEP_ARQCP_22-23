#include <stdio.h>
#include "asm.h"

int* ptrvec;
int num = 6;

int main (){
    int vec[] = {1,2,-1,-2,3,0};
    ptrvec = vec;
    
    vec_add_two();

    for (int i = 0; i < num; i++){
        printf("%d  ", vec[i]);
    }
    
    return 0;
}

