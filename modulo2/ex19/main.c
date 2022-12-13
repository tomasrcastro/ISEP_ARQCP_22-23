#include <stdio.h>
#include "needed_time.h"

char current=0, desired=0;
int resultado;

int main(){
	printf("Temperatura atual: ");
	scanf("%hhd", &current);
	
	printf("Temperatura desejada: ");
	scanf("%hhd", &desired);
	
	resultado = needed_time();
	printf("Demorará %d segundos a atingir a temperatura desejada.\n", resultado);
	
	return 0;
}
