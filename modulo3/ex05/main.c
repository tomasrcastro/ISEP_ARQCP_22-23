#include <stdio.h>
#include "vec_avg.h"

long vec[] = {-1,-1,-1};
long* ptrvec = vec;
short num = sizeof(vec)/sizeof(vec[0]);
long resultado;

int main (){
	resultado = vec_avg();
	printf("O resultado é %li.\n", resultado);
	
	return 0;
}
