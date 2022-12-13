#include <stdio.h>
#include "asm.h"

char byte1 = 0xbb;
char byte2 = 0xcc;
short c;

int main(){
	short c = concatBytes();
	printf("%hx\n", c);
	return 0;
}
