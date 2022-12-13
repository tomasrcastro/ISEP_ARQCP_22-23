#include <stdio.h>

int where_is (char *str, char c, int *p){
	
	if(str[0] == '\0'){
		return 0;
	}
	
	int count = 0;
    int i = 0;
    while(*(str + i) != '\0'){
        if(*(str + i) == c){
            *(p + count) = i;        // adicionar a *p o(s) index(s) onde o caracter foi encontrado na palavra
            count++;
        }
        i++;
    }
    return count;
}
