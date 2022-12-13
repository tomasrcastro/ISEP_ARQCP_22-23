# include <stdio.h>
# include "sum.h"

int main(){
	
	int array[] = {4, 7, 9, 10, 34, 67}; // should print 48
	int*p = array;
	
	int lenght = sizeof(array) / sizeof(array[0]);
	
	printf("The even sum of the array is %d.\n", sum_even(p, lenght)); 
	
	return 0;
}
