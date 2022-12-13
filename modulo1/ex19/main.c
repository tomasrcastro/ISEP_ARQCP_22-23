#include <stdio.h>
#include "find.h"

int main(){
	char string[]="rrxXXXX";
	char subString[] = "x";
	
	char *initial_addr = &string[0];
	char *word = &subString[0];
	
	printf("A palavra foi encontrada no endereço %p.\n", find_word(word, initial_addr));	
}
