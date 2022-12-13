#include <stdio.h>
#include "distance.h"

int main(){
	char str1[] = "ba";
	char str2[] = "abc";
	
	char *a = &str1[0];
	char *b = &str2[0];
	
	int resultado = distance(a,b);
	
	printf("Resultado: %d.\n", resultado);
	
	return 0;
}
