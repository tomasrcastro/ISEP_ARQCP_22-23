#include <stdio.h>
#include "swap.h"

int main(){
	int array1[10] = {21,22,23,24,25,26,27,28,29,30};
	int array2[10] = {11,12,13,14,15,16,17,18,19,20};
	int arraySize, i;
	
	arraySize = (sizeof(array1)/sizeof(array1[0]));
	
	printf("Antes da troca:\nArray1 = ");
	for(i=0; i < arraySize; i++){
			printf("%d  ", *(array1+i));
	}
	printf("\nArray2 = ");
	for(i=0; i < arraySize; i++){
			printf("%d  ", *(array2+i));
	}
	
	swap(array1,array2,arraySize);
	
	printf("\n");
	printf("\nDepois da troca:\nArray1 = ");
	for(i=0; i < arraySize; i++){
			printf("%d  ", *(array1+i));
	}
	printf("\nArray2 = ");
	for(i=0; i < arraySize; i++){
			printf("%d  ", *(array2+i));
	}
	printf("\n");
	return 0;
}
