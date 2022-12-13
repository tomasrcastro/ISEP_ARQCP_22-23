#include <stdio.h>
#include "sort.h"

int main(){
	int array[] = {100, 4, 10, 23};
	int lenght = sizeof(array)/sizeof(array[0]);
	
	int *vec = array;
	
	array_sort1(vec, lenght);
	
	printf("Ascending order: ");
	
	for (int i=0; i<lenght; i++){
		printf("%d  ", *(vec+i));
	}
	
	printf("\n");
	
	return 0;
}
