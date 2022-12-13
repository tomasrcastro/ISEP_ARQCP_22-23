#include <stdio.h>
#include "asm.h"

int resultado;

int main(void){
	
	printf("Length1 %d\n", length1);
	printf("Length2 %d\n", length2);
	printf("Height %d\n", height);
	
	resultado = getArea();
	
	printf("O valor da área do trapézio é %d u.a.\n", resultado);
	
	return 0;
}
