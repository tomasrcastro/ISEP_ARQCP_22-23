#include <stdio.h>
#include "populate.h"
#include "check.h"
#include "inc_nsets.h"

int numberSets = 0;

int main(){
	int nroElementosArray = 10;
	int limite = 20;
	
	int check(int x, int y, int z);                     // declarar as funções que irão ser chamadas mais à frente, logo no início.
	void inc_nsets();                                   // WARNING: implicit declaration of function 'check' and 'inc_nsets'
	
	int numbers[nroElementosArray];
	int *ptr = numbers;
	
	populate(ptr, nroElementosArray, limite);
	
	printf("Array preenchido aleatoriamente:\n");
	for(int i=0; i<nroElementosArray; i++){
		printf("%d  ", *(ptr+i));
	}
	printf("\n");
	
	for(int i=0; i < nroElementosArray-2; i++){
		if(check(ptr[i], ptr[i+1], ptr[i+2]) == 1){
			inc_nsets();
		}
	}
	
	printf("Número de sets: %d\n", numberSets);
	
	return 0;
}
