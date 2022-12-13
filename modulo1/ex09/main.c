#include <stdio.h>
#include "sort.h"

int main(){
	int arr1[] = {3,5,3,3};
	
	int lenght = sizeof(arr1)/sizeof(arr1[0]);
	
	int arr2[lenght];
	
	int *src = &arr1[0];
	int *dest = &arr2[0];
	 
	int lenghtArr2 = sort_without_reps(src,lenght,dest);
	
	printf("Number of items placed in the second array: %d\n", lenghtArr2);
	printf("Second array: ");
	
	for(int i=0;i<lenghtArr2;i++){
		printf("%d  ", *(dest+i));
	}
	printf("\n");
	
	return 0;
}
