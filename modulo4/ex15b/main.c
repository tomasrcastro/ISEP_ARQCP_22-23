#include <stdio.h>
#include "activate_bits.h"

int main(){
	int resultado = activate_bits(5,9,0);
	
	printf("Resultado = %x.\n", resultado);
	
	return 0;
}
