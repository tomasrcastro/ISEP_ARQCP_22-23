#include "return_unionB_b.h"
#include <stdio.h>
#include <stdlib.h>

int main() {
	// alocar memória para a matriz - 3 colunas
	structA **matrix = malloc(3 * sizeof(structA *));
	for (int i = 0; i < 3; i++) {
		matrix[i] = malloc(3 * sizeof(structA));
	}

	// inicializar a matriz
	for (int i = 0; i < 3; i++) {
		for (int j = 0; j < 3; j++) {
			// inicializar a union de cada elemento
			matrix[i][j].ub.a = i;
			matrix[i][j].ub.b = 'a' + j;
			matrix[i][j].ub.c = i + j;
			matrix[i][j].ub.d = i * j;
		}
	}

	printf("Resultado = %d.\n", return_unionB_b(matrix, 1, 2));

	// libertar a memória
	for (int i = 0; i < 3; i++) {
		free(matrix[i]);
	}
	free(matrix);

	return 0;
}
