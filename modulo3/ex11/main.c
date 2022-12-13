#include <stdio.h>
#include "vec_greater10.h"

int arr[] = {10,10,10,10,10};                     // resultado = 0
int* ptrvec = arr;
int num = sizeof(arr)/sizeof(arr[0]);
int resultado;

int main(void){
	resultado = vec_greater10();
	printf("Foram encontrados %d números maiores que 10.\n", resultado);
	
	return 0;
}
