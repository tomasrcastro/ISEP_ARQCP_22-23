#include <stdio.h>
#include "greatest.h"

int main(){
	int a = 1;
	int b = 2;
	int c = 3;
	int d = 4;
	
	int resultado = greatest(a,b,c,d);
	
	printf("O maior número é o %d.\n", resultado);
	
	return 0;
}
