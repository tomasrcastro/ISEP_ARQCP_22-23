#include <stdio.h>
#include "asm.h"

char str1[] = "Diogo Lindo";
char *ptr1 = str1;
char str2[] = "";
char *ptr2 = str2;

int main(void){
	str_copy_porto();
	
	printf("%s\n", str2);
	
	return 0;
}