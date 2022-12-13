#include <stdio.h>
#include "asm.h"

char s1[40] = "Eu sou";
char s2[40] = "lindo";
char s3[80];

char* ptr1;
char* ptr2;
char* ptr3;

int main (void){
	ptr1 = s1;
	ptr2 = s2;
	ptr3 = s3;
	
	str_cat();
	
	printf("%s\n", s3);
	
	return 0;
	
}
