#include <stdio.h> 
#include "asm.h" 

int main(){
	
	short p = 3;
	short *p1=&p;
	
    char val= -49;

	int res= call_incr(p1,val);
	
	printf("%d\n", res);
	
	return 0;
}
