#include <stdio.h>
#include "asm.h"

int main(){
	
	int num1 = 1;
	int num2 = 2;
	
	int res;
	int* smaller = &res;
	
	int sum;
	
	sum = sum_smaller(num1, num2, &res);
	
	printf("%d\n", sum);
	
	return 0;
	
}
