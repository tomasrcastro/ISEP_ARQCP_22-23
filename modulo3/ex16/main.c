#include <stdio.h>
#include "asm.h"

char vec1[] = "Diogo";
char vec2[] = "Lindo";

char* ptr1;
char* ptr2;

int num = 5;

int main(void){
	
	ptr1 = vec1;
	ptr2 = vec2;
	
	swap();
	
	printf("%s %s\n", vec1, vec2);
	
	return 0;
	
}
