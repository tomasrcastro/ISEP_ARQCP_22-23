#include <stdio.h>
#include "asm.h"

int main(void){
	short r = crossSumBytes();
	printf("%hx\n", r);
	return 0;
}
