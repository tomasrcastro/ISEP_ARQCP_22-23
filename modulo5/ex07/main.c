#include <stdio.h>
#include "fill_s1.h"

int main(){
    s1 s;
    s1* ptr = &s;
    
    fill_s1(ptr, 1, 'z', 2, 'a');
    
    printf("c = %c.\n", ptr->c); // z
    printf("i = %d.\n", ptr->i); // 1
    printf("d = %c.\n", ptr->d); // a
    printf("j = %d.\n", ptr->j); // 2
    
    return 0;
}
