#include <stdio.h>
#include "calculator.h"

int n1=0, n2=0, operation=0, resultado;

int main(){
	printf("Escolhe uma operação:\n 1 - Soma\n 2 - Subtração\n 3 - Multiplicação\n 4 - Divisão\n 5 - Módulo\n 6 - Potência de 2\n 7 - Potência de 3\nNúmero correspondente: ");
	scanf("%d", &operation);
	
	if(1 <= operation && operation <= 5){
		printf("Introduz dois números (separados por um espaço): ");
		scanf("%d %d", &n1, &n2);
	
		resultado = calculator();
		printf("O resultado é %d.\n", resultado);
	} else if(6 <= operation && operation <= 7){
				printf("Introduz um número: ");
				scanf("%d", &n1);
	
				resultado = calculator();
				printf("O resultado é %d.\n", resultado);
			} else {
				printf("Introduz um número de 1 a 7.\n");
			}
	return 0;
}
