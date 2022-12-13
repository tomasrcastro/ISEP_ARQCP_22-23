#include <stdio.h>
#include "activate_invert_bits.h"
#include "activate_bits.h" 

int main(){
	int resultado = activate_invert_bits(1,2,3);
	
	printf("Resultado: %x.\n", resultado);
	
	return 0;
}
