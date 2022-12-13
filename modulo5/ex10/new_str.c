#include <stdio.h>
#include <stdlib.h>
#include <string.h>

char *new_str(char str[80]){
	
	int len = strlen(str);
	
	char *new_str = malloc(len +1);
	
	strcpy(new_str, str);
	
	return new_str;
	
}
