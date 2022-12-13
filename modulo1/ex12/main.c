#include <stdio.h> 
#include "function.h"

int main(){
	char *str;
	char sentence[1000] = "arroz e batatas com ketchupp";
	
	str = sentence;
	capitalize(str);
	
	printf("%s\n", sentence);
	
	return 0;
	
}	
