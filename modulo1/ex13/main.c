#include <stdio.h>
#include "where.h"

int main(){
	char string[] = "tomas ramos castro 1211145";
	char *str = string;
    
	char c = 'o';
    
	int vec[sizeof string];
	int *p = &vec[0];
	
	int rep = where_is(str, c, p);
	
	printf("O caracter repete %d vezes.\n", rep);
	
	if (rep != 0){
	printf("Nas posições: ");
	
	for (int i = 0; i < rep; i++){
       
		printf("%d  ", vec[i]);
        
	}
    
	printf("\n");}
	return 0;
}
