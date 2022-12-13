#include <stdio.h>
#include <stdlib.h>

int **new_matrix(int lines, int columns) {
   int i =0;
   int **matrix =NULL;
   matrix = (int**) calloc(lines, sizeof(int*)); 
   for(i=0;i<lines;i++){
		*(matrix+i) = (int*) calloc(columns, sizeof(int)); 
   }
   return matrix;
}
