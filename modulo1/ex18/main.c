#include <stdio.h>
#include "function.h"

int main(){
	short arr1[8] ={1, 2, 3, 4, 5, 6, 7, 8};
	int size1 = (sizeof (arr1)/ sizeof (arr1[0]));
	int size2 = size1/2;
	int arr2[size2];
	
	compress_shorts(arr1, size1, arr2);
	
	for(int i = 0; i < size2; i++){
		printf("%x\n", *(arr2 + i));
	}
	return 0;
}		
