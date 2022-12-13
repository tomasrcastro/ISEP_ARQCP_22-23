#include <stdio.h>
#include "function.h"

int main(){
	char string1[] = "compilacao";
	char string2[] = "lac";
	
	char* str1;
	char* str2;
	
	str1 = string1;
	str2 = string2;
	
	char* final;
	
	final = where_exists(str1, str2);
	
	printf("%p\n", final);
	
	return 0;
	
}	
