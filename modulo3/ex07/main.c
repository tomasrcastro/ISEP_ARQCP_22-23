#include <stdio.h>
#include "decrypt.h"

char arr[] = " addda  ";
short size = sizeof(arr)/sizeof(arr[0]);
char* ptr1 = arr;
int resultado;

int main(void){
	resultado = decrypt();
	printf("O resultado é %d\n", resultado);
	
	return 0;
}
