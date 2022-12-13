#include <stdio.h>
#include <time.h>
#include <stdlib.h> // para Warning: implicit declaration of function 'rand' and 'srand'

void populate(int *vec, int num, int limit){
	
	srand(time(NULL));
	
	for (int i = 0; i<num; i++){
		vec[i] = (rand() % limit)+1;
	}	
}
