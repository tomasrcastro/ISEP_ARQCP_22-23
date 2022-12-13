#include <stdio.h>
#include "asm.h"

int main(void){
	
	s2 ss;
	s2 *s = &ss;
	
	char vc[3] = "di";
	short vw[3] = {6, 2, 7};
	int vj = 4;
	
	// void fill_s2(s2 *s, short vw[3], int vj, char vc[3])
	
	fill_s2(s, vw, vj, vc);
	
	printf("c: %s\n", s->c);
	printf("w: %d\n", s->w[0]);
	printf("w: %d\n", s->w[1]);
	printf("w: %d\n", s->w[2]);
	printf("j: %d\n", s->j);
	
	return 0;
	
}
