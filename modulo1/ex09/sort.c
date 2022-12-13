#include <stdio.h>

int sort_without_reps(int *src, int n, int *dest){
	
	int temp[n];                                   // array temporário foi criado para ordenar o array por ordem crescente
	
	for(int i=0; i<n; i++){                        // até à linha 19, é igual ao ex07
		temp[i] = *(src+i);                                      
	}
	
	for(int i=0; i<n; i++){
		for(int j=i+1; j<n; j++){
			if(temp[i] > temp[j]){                // compara o da direita com o da esquerda e se
				int temp2 = temp[i];              // o da direita for mais peq. do que o da esquerda
				temp[i] = temp[j];                // trocam de posição --> ordem crescente
				temp[j] = temp2;
			}
		}
	}
	
	int contador = 0;
	
	for(int i=0; i<n; i++){                      // aqui o array temporário já está ordenado por ordem crescente
		if(temp[i] != temp[i+1]){               // verifica os números repetidos, comparando cada número com o que está imediatamente à sua direita
			*(dest + contador) = temp[i];
			contador++;                         // incrementa 1
		}	
	}
	return contador;
}
