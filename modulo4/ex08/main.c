#include <stdio.h>
#include "asm.h"

int main(){
	
	int a = 1;
	int b1 = 2;
	
	int *b = &b1;
	
	int c = 3;
	
	int res = calc(a, b, c);
	
	printf("%d\n", res);
	
	return 0;
	
}
