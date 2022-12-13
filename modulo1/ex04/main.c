#include <stdio.h>
#include "function.h"

int main(){
	char *str;
	char word[100] = "Ola";
	
	
	str = word;
	upper1(str);
	printf("A palavra em maiusculas fica: %s\n", word);
	
	return 0;
}	
