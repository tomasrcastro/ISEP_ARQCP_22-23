#include <stdio.h>
#include "new_salary.h"

short code=0, currentSalary=0, resultado;

int main(){
	printf("Código: ");
	scanf("%hd", &code);
	
	printf("Salário atual: ");
	scanf("%hd", &currentSalary);
	
	resultado = new_salary();
	printf("O novo salário é de %d€.\n", resultado);
	
	return 0;
}
