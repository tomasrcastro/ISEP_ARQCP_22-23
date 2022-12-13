#include <stdio.h>
#include <stdlib.h>
#include "new_matrix.h"

int main(){
	int linhas = 3;
	int colunas = 4;

	printf("Endereço: %p.\n", new_matrix(linhas,colunas));
	
	return 0;
}
