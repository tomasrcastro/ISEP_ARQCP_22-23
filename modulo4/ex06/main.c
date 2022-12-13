#include <stdio.h>
#include "asm.h"

int main(void){
	
	char *a;
	char *b;
	
	char str1[] = "Diogo";
	char str2[] = "Diogo";
	
	int res;

	a = str1;
	b = str2;
	
	res = test_equal(a, b);
	
	printf("%d\n", res);
	
	return 0;
	
}
