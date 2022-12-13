#include <stdio.h>
#include "count_odd.h"

int main(){
	char vec[] = {1,2,3,4,5,6,7,8,9,10};
	char *ptrvec = vec;
	int num = sizeof(vec)/sizeof(vec[0]);
	
	int resultado = count_odd(ptrvec,num);
	
	printf("Existem %d números ímpares no vetor.\n", resultado);
	
	return 0;
}
