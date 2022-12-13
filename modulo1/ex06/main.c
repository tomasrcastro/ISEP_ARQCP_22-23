#include <stdio.h>
#include "function.h"

int main(){
	int x = 2;
	int y = -2;
	
	power_ref(&x, y);
	
	printf("%d\n", x);
	
}
