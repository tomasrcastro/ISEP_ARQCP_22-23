#include <stdio.h>
#include <stdlib.h>
#include "dataStructures.h"

int main() {
    Stack * stack = stack_new();
    printf("Size:%d\n", stack_size(stack));
    stack_push(stack, 12);
    stack_push(stack, 10);
    printf("Size:%d\n", stack_size(stack));
    printf("Popped:%ld\n",stack_pop(stack) );
    printf("Size:%d\n", stack_size(stack));
    
    return 0;
}
