#include <stdio.h>
#include "asm.h"
#include "asm2.h"

long even = 2;
long vec[] = {1, 2, 3, 4, 5};
int num = sizeof(vec)/sizeof(vec[0]);
long* ptrvec;

int main(void){

	
	ptrvec = vec;
	
	int res = test_even();
	
	printf("%d\n", res);
	
	res = vec_sum_even();
	
	printf("%d\n", res);
	
	return 0;
	
}	
