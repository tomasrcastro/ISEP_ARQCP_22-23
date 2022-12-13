#include <stdio.h>
#include "asm.h"

int op1 = 0;
int op2 = 0;
int op3 = 0;
int res = 0;

int main(){
	printf("INSERT RIGHT NOW 3 NUMBERS\n");
	scanf("%d %d %d", &op1, &op2, &op3);
	res = sum3ints();
	printf("RESULT = %lld\n", res);
	
	return 0;
}	
