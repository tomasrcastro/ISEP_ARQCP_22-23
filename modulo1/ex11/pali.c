#include <stdio.h>

int palindrome(char *str){
	int lenght = 0;
	for (int i = 0; *(str +i) != '\0'; i++){
		lenght++;
	}
	char aux[lenght];
	
	if(lenght == 1){
		return 1;
	}
	
	for (int i = 0; i < lenght; i++){
		aux[i] = *(str + i);
		if (aux[i] >= 'A' && aux[i] <= 'Z'){
			aux[i]  = aux[i]  + 32;               // colocar a string toda em letras minúsculas
		}                                         // String aux = String str COM TUDO EM MINÚSCULO
	}
	
	int lenght2 = 0;
	char aux2[lenght2];
	int indice2 = 0;
	
	for (int i = 0; i < lenght; i++){
		 if(aux[i] != ' ' && aux[i] != ',' && aux[i] != '.'){
			 lenght2++;
			 aux2[indice2] = aux[i];              // String aux2 --> MINÚSCULO, SEM ESPAÇOS E PONTUAÇÃO
			 indice2++;                  
		}
	}
	
	for (int i = 0; i < (lenght2-1)/2; i++){
		if (aux2[i] == aux2[indice2-1]) return 1;    // compara o inicio com o fim da string
		else return 0;
		indice2--;
	}
	return 0;
}
