#include <stdio.h>
#include "test_flags.h"

int op1=0, op2=0;
char resultado;

int main(void){
	
	printf("Valor de op1:");
	scanf("%d", &op1);
	
	printf("Valor de op2:");
	scanf("%d", &op2);
	
	resultado = test_flags();
	if(resultado == 1){
		printf("A flag é ativada (%d).\n", resultado);
	} else {
		printf("Nenhuma das flags é ativada (%d).\n", resultado);
	}
	return 0;
}
