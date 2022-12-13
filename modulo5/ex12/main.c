#include <stdio.h>
#include <stdlib.h>
#include "find_matrix.h"
#include "new_matrix.h"

int main(){

	int **my_matrix = new_matrix(5, 10);

	for (int i = 0; i < 5; i++) {
		for (int j = 0; j < 10; j++) {
			my_matrix[i][j] = rand();
		}
	}

// search for the number 32 in the matrix
	int result = find_matrix(my_matrix, 5, 10, 32);

	if (result == 1) {
		printf("The number was found in the matrix!\n");
	} else {
		printf("The number was not found in the matrix.\n");
	}

	return 0;

}
