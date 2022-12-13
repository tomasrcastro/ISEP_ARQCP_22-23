#include <stdio.h>
#include "asm.h"

int op1 = 0;
int op2 = 0;

int res;

int main(){
	printf("INSERT FOUR NUMBERS NOW\n");
	scanf("%d %d %ld %ld", &op1, &op2, &op3, &op4);
	res = sum_v3();
	printf("RESULT = %d\n", res);
	
	return 0;
}	
