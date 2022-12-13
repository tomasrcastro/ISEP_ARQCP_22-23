#include <stdio.h>
#include "sort_without_reps.h"

short src[] = {5,3,-9,10,6,3,9,5};
short *ptrsrc = src;
int num = sizeof(src)/sizeof(src[0]);
short dest[8];                           // trocar sempre para o número do array src !!
short *ptrdest = dest;

int main(){
	printf("Array original: ");
	for(int i = 0; i < num; i++) printf("%d  ", src[i]);	
	printf("\n");
	
	int result = sort_without_reps();
	
	printf("Array ordenado: ");
	for(int i = 0; i < num; i++) printf("%d  ", src[i]);
	printf("\n");
	
	printf("Array ordenado sem repetidos: ");
	for(int i = 0; i < result; i++) printf("%d  ", dest[i]);
	printf("--> %d elementos\n", result);
	
	return 0;
}
