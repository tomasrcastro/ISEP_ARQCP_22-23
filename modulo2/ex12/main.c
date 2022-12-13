#include <stdio.h>
#include "asm.h"

int A = 1;
int B = 1;
char res;

int main(){
	printf("Please insert two numbers\n");
	scanf("%d %d", &A, &B);
	res = isMultiple();
	
	printf("%d\n", res);
	
	return 0;
}		
