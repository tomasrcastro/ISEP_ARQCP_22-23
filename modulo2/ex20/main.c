#include <stdio.h>
#include "asm.h"

int num = 0;
char res;

int main(){
	printf("Insert a number NOW\n");
	scanf("%d", &num);
	res = check_num();
	printf("%hhd\n", res);
	
	return 0;
	
}	
