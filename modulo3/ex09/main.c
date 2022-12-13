#include <stdio.h>
#include "vec_search.h"

short arr[] = {-1,-2,5,6,-4,-4};
short* ptrvec = arr;
int num = sizeof(arr)/sizeof(arr[0]);
short* resultado;
short x = -4;

int main(void){
	resultado = vec_search();
	printf("O short %d foi encontrado no endereço %p.\n", x, resultado);
	
	return 0;
}
