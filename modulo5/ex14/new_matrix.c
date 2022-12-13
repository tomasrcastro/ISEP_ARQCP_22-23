#include <stdlib.h>

int **new_matrix(int lines, int columns) {
	
  int **matrix = (int**) malloc(lines * sizeof(int*));
  
  for (int i = 0; i < lines; i++) {
    matrix[i] = (int*) malloc(columns * sizeof(int));
  }
  
  return matrix;
}
