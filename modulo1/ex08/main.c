#include <stdio.h>
#include "function.h"

int main(){
	
	int n;
	int vec [5] = {5,4,3,2,7};
	n = sizeof(vec)/sizeof vec[0];
	
	array_sort2(vec, n);
	
	for(int i = 0; i < n; i++){
		printf("%d", *(vec + i));
	}
	
	return 0;
}
		
