#include <stdio.h>
#include "asm.h"

unsigned long num = 0;
unsigned long res;

int main(){
	printf("Insert a number:\n");
	scanf("%ld", &num);
	res = steps();
	printf("%ld\n", res);
	
	return 0;
	
}	 
	
