#include <stdio.h>
#include "sum_first_byte.h"

long arr[] = {1,1,1,1,1,1,1,1,2002};
long* ptrvec = arr;
int num = sizeof(arr)/sizeof(arr[0]);
int resultado;

int main(void){
	resultado = sum_first_byte();
	
	printf("O resultado da soma é %d.\n", resultado);
	
	return 0;
}
