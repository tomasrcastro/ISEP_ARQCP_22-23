#include <stdio.h>
#include "pali.h"

int main(){
	
	char string[] = "Never odd or even";
	//char string[] = "A man a plan a canal Panama.";
	//char string[] = "Gateman sees name, garageman sees name tag";
	//char string[] = "Carro";
	
	char *str = string;

	if(palindrome(str) == 1) printf("A string É um palíndromo.\n");
	else printf("A string NÃO É um palíndromo.\n");
	
	return 0;
}
