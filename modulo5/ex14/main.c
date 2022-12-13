#include <stdio.h>
#include <stdlib.h>
#include "add_matrixes.h"
#include "new_matrix.h"

int main(void){
	
	int c = 2;
	int l = 3;
	int **a = new_matrix(l, c);
	int **b = new_matrix(l, c);

	int **result = add_matrixes(a, b, l, c);

	for (int i = 0; i < c; i++) {
		free(a[i]);
		free(b[i]);
		free(result[i]);
	}

	free(a);
	free(b);
	free(result);
	return 0;
	
}
