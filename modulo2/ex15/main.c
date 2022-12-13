#include <stdio.h>
#include "compute.h"

int A=0, B=0, C=0, D=0,resultado;

int main(void){
	
	printf("valor de A: ");
	scanf("%d", &A);
	
	printf("Valor de B: ");
	scanf("%d", &B);
	
	printf("Valor de C: ");
	scanf("%d", &C);
	
	printf("Valor de D: ");
	scanf("%d", &D);
	
	resultado = compute();
	printf("O resultado é %d.\n", resultado);
	
	return 0;

}
