#include <stdio.h>
#include "getArea.h"

int length1=0;
int length2=0; 
int height=0; 
int resultado;

int main(){
	printf("Valor do lenght1: ");
	scanf("%d", &length1);
	
	printf("Valor do lenght2: ");
	scanf("%d", &length2);
	
	printf("Valor da altura: ");
	scanf("%d", &height);
	
	resultado = getArea();
	printf("O valor da área do trapézio é %d u.a.\n", resultado);
	
	return 0;
}
