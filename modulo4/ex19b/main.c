#include <stdio.h>
#include "add_byte.h"

int main(){
	int vec1[] = {6,2,3,4,5,6,7};
	int lenght = sizeof(vec1)/sizeof(vec1[0]);
	int vec2[lenght];
	
	int *ptr1 = vec1;
	int *ptr2 = vec2;
	
	add_byte(2,ptr1,ptr2);
	
	printf("Vetor 1: ");
	for(int i = 1; i < lenght; i++){
		printf("%x  ", vec1[i]);
	}
	printf("\n");
	
	printf("Vetor 2: ");
	for(int i = 1; i < lenght; i++){
		printf("%x  ", vec2[i]);
	}
	printf("\n");
	
	return 0;
}
