#include <stdio.h>
#include "frequencies.h"

char grades[] = {20,10,3};
char* ptrgrades = grades;
int num = sizeof(grades)/sizeof(grades[0]);
int freq[21];
int* ptrfreq = freq; 

int main(void){
	printf("Notas: ");
	for(int i = 0; i < num; i++){
		printf("%d  ", grades[i]);
	}
	printf("\n");
	
	printf("Frequências absolutas: ");
	
	frequencies();
	for(int i = 0; i <= 20; i++){
		printf("%d  ", freq[i]);
	}
	printf("\n");
	
	return 0;
}
