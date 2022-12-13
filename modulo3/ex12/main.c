#include <stdio.h>
#include "asm.h"

int vec[] = {1, 2, 109, 897, 2};
int num = sizeof(vec)/sizeof(vec[0]);
int* ptrvec;

int main(void){
	
	ptrvec = vec;
	
	int res = vec_zero();
	
	printf("%d\n", res);
	
	return 0;
	
}
