#include <stdio.h>
#include "str_copy_porto2.h"

char str1[] = "Tomas Ramos CastrO";
char *ptr1 = str1;
char str2[] = "";
char *ptr2 = str2;

int main(void){
	str_copy_porto2();
	
	printf("%s\n", str2);
	
	return 0;
}
