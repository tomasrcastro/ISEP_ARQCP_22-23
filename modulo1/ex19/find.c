#include <stdio.h>

char *find_word(char *word, char *initial_addr){
	char* address = initial_addr;

	int tamanhoPalavra = 0;
	for (int i = 0; *(word + i)!='\0'; i++){
		tamanhoPalavra++;
	}
	
	int tamanhoFrase = 0;
	for (int i = 0; *(address + i)!='\0'; i++){
		tamanhoFrase++;
	}
	
	if(tamanhoPalavra == 0 && tamanhoFrase == 0){
		return NULL;
	} else {
	
	// transformar a palavra toda em MINUSCULAS
	for (int i = 0; *(word + i)!='\0'; i++){
		if (*(word + i) >= 'A' && *(word + i) <= 'Z') 
			*(word + i)  = *(word + i)  + 32;	
	}
	
	// transformar a frase toda em MINUSCULAS
	for (int i = 0; *(address + i)!='\0'; i++){
		if (*(address + i) >= 'A' && *(address + i) <= 'Z') 
			*(address + i)  = *(address + i)  + 32;
	}
	
	int end = tamanhoFrase - tamanhoPalavra +1;   // limite máximo até onde a palavra "cabe" na frase
	
	for(int i = 0; i < end; i++){
			int simOuNao = 1;
			
			for(int j=0; j<tamanhoPalavra; j++){
				if(word[j] != address[i+j]){
					simOuNao = 0;
					break;
				}
			}
			if (simOuNao == 1) return address;
	}
}
	return NULL;
}
