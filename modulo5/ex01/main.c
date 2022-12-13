#include <stdio.h>

// declarar 2 data types chamados u e s, respetivamente
typedef union union_u1{
	char vec[32];
	float a;
	int b;
} u;

typedef struct struct_s1{
	char vec[32];
	float a;
	int b;
} s;

int main(){
	printf("Union: %ld.\n", sizeof(u));
	printf("Struct: %ld.\n", sizeof(s));
	printf("\nJusticação: - o tamanho de Struct é 40 porque é a soma de 32+4+4 bytes.\n");
	printf("            - o tamanho de Union é 32 porque é o tamanho do seu maior elemento (neste caso, char vec[32]).\n");
	
	return 0;
}
