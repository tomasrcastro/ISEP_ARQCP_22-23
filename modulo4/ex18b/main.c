#include <stdio.h>
#include "asm.h"

int main(){
	
	int n = 2;
	int *ptr = &n;
	
	changes(ptr);
	
	return 0;
}
