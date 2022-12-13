#include <stdio.h>
#include "changes.h"

int main(){
	
	int n = 2;
	int *ptr = &n;
	
	changes(ptr);
	
	return 0;
}
