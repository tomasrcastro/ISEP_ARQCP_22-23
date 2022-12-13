#include <stdio.h>
#include "keep_positives.h"

short arr[] = {-1,0,1};
short* ptrvec = arr;
unsigned short num = sizeof(arr)/sizeof(arr[0]);

int main(void){
	printf("Array antigo: ");
	for(unsigned short i=0; i<num; i++){
		printf("%d  ", arr[i]);
	}
	printf("\n");
	
	keep_positives();
	
	printf("Array novo:   ");
	for(unsigned short i=0; i<num; i++){
		printf("%d  ", arr[i]);
	}
	printf("\n");
	
	return 0;
}
