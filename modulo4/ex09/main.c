#include <stdio.h>
#include "calculate.h"

void print_result(char op, int o1, int o2, int res){
	printf("%d %c %d = %d\n", o1, op, o2, res);
}

int main(){
	int a = 4;
	int b = 5;
	
	int resultado = calculate(a,b);
	
	printf("Resultado: %d.\n", resultado);
	
	return 0;
}
