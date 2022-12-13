#include <stdio.h>
#include "asm.h"

int main(){
	short v[] = {-1,-2,-4};
	short *ptr = &v[0];
	int num = sizeof(v)/sizeof(v[0]);
	int res = vec_count_bits_one(ptr,num);
	
	printf("%d.\n", res);
	
	return 0;
}
