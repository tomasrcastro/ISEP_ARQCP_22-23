#include <stdio.h>
#include "rotate_left.h"
#include "rotate_right.h"

int main(){
	int num = 1;
	int nbits = 2;
	
	int esquerdo = rotate_left(num, nbits);
	int direito = rotate_right(num, nbits);
	
	printf("Rotação esquerda: %x \nRotação direita: %x\n", esquerdo, direito);
	
	return 0;
}
