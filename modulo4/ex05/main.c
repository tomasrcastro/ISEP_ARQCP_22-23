#include <stdio.h>
#include "inc_and_square.h"

int main(){
	int x = 10;
	int v2 = 5;
	int *v1 = &x;
	
	int resultado = inc_and_square(v1, v2);
	
	printf("O valor de x passou de %d a %d. O quadrado de %d é %d.\n", x-1, x, v2, resultado);
	
	return 0;
}
