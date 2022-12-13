#include <stdio.h>
#include "swapBytes.h"
short s = 0; // ocupa 2 bytes (16 bits)

int main(){
	printf("Short: ");
	scanf("%hd", &s);
	
	s = swapBytes();
	
	printf("New short: %hd\n", s);
	
	return 0;
}
