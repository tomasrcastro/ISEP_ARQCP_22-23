#include <stdio.h>
#include "seven_count.h"

char vetor[] = "  77777  77 yt7";
int resultado;
char* ptr1 = vetor;

int main(void){
	resultado = seven_count();
	if(resultado == 1){
		printf("A string tem %d sete.\n", resultado);
	} else {
		printf("A string tem %d setes.\n", resultado);
	}
	return 0;
}
