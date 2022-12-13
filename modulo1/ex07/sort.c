#include <stdio.h>

void array_sort1(int *vec, int n){
	int aux;
	
	for(int i=0; i<n; i++){
		for(int j=i+1; j<n; j++){
			if(*(vec+j) < *(vec+i)){  // ordem crescente, compara o da direita com o da esquerda
				aux = *(vec+i);       // se o da direita for mais pequeno, trocam de lugar.
				*(vec+i) = *(vec+j);
				*(vec+j) = aux;
			}		
		}
	}	
}
