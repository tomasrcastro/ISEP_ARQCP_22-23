#include <stdio.h>
#include "cube.h"

int main(){
	int x = 3;
	long resultado = cube(x);
	
	printf("O cubo de %d é %ld.\n", x, resultado);
	
	return 0;
}
