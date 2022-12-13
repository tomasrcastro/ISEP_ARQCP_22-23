#include <stdio.h>
#include "asm.h"
#include "asm2.h"

int x = 3;
int vec[] = {1,2,2,4,6};
int num = sizeof(vec)/sizeof(vec[0]);
int* ptrvec;

int main(void){
	ptrvec = vec;
	
	int res = exists();
	printf ("%d\n", res);
	
	res = vec_diff();
	
	printf ("%d\n", res);
	
	return 0;
	
}
