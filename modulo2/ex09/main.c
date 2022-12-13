#include <stdio.h>
#include "sum_and_subtract.h"

int A=0;  // 32 bits = 4 bytes
short B=0;  // 16 bits = 2 bytes
char C=0,D=0; // 8 bits = 1 byte
long long resultado;

int main(void){
	printf("Valor de A:");
	scanf("%d",&A);

	printf("Valor de B:");
	scanf("%d", &B);
	
	printf("Valor de C:");
	scanf("%hhd", &C);
	
	printf("Valor de D:");
	scanf("%hhd", &D);
	
	resultado = sum_and_subtract();
	printf("O resultado é %lld\n", resultado);

	return 0;
}
