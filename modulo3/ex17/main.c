#include <stdio.h>
#include "array_sort.h"

short arr[] = {3,7,1,4};     // {7,4,3,1}
short* ptrvec = arr;
int num = sizeof(arr)/sizeof(arr[0]); 

int main(void){
	printf("Array original: ");
	for(int i = 0; i < num; i++){
		printf("%d  ", arr[i]);
	}
	printf("\n");
	
	array_sort();
	
	printf("Array novo:     ");
	for(int i = 0; i < num; i++){
		printf("%d  ", arr[i]);
	}
	printf("\n");
	
	return 0;
}
