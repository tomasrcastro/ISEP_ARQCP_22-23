#include <stdio.h>

void swap(int* vec1, int* vec2, int size){
	int i, temporario[size];
	
	for(i=0; i < size; i++){
		*(temporario+i) = *(vec1+i);        // temporário = vec1
		*(vec1+i) = *(vec2+i);              // vec1 = vec2 
		*(vec2+i) = *(temporario+i);        // vec2 = temporário(aka vec1)
	}                                       // conclusão: o conteúdo de ambos os arrays ficam trocados.
}
