#include <stdio.h>
#include "function.h"

int main(){
	
	int *vec1, *vec2;
	int n;
	printf ("How many elements should be copied from vec1 to vec2?\n");
	scanf("%d", &n);
	
	int n_vec1[5] = {1, 2, 3, 4, 5};
	int n_vec2[5];
	
	vec1 = n_vec1;
	vec2 = n_vec2;
	
	copy_vec(vec1, vec2, 4);
	
	for(int i =0; i < n; i++){
		printf("%d \n", *(vec2 + i));
	}
	
	return 0;
}		
