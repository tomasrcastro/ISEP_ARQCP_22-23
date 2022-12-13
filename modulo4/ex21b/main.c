#include <stdio.h>
#include "distance.h"

int main(){
	char str1[] = "ba";
	char str2[] = "ab";
	
	char *a = &str1[0];
	char *b = &str2[0];
	
	int resultado = distance(a,b);
	
	printf("A distância entre %s e %s é: %d.\n", str1, str2, resultado);
	
	return 0;
}
