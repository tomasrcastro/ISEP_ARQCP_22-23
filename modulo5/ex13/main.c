#include <stdio.h>
#include <stdlib.h>
#include "count_odd_matrix.h"
#include "new_matrix.h"

int main(){
	int** matrix;
	int linhas = 4;
	int colunas = 3;
	
	matrix = new_matrix(linhas, colunas);
	
    for(int i = 0; i < linhas; i++) {
        for(int j = 0; j < colunas; j++) {
            *(*(matrix + i) + j) = random() % 100;
        }
    }
    
    printf("Matriz:\n");
    for(int i = 0; i < linhas; i++) {
        for(int j = 0; j < colunas; j++) {
            printf("%d  ", *(*(matrix + i) + j) );
        }
        printf("\n");
    }
    printf("\n");
    
    int resultado = count_odd_matrix(matrix, linhas, colunas);
        
    printf("A matriz tem %d números ímpares.\n", resultado);
    
    for (int j = 0; j < linhas; j++) {
        free(*(matrix + j));
    }
    free(matrix);

    return 0;
}
