#include <stdio.h>
#include "upper.h"

int main(void) {
	
	char str[] = "aLUNo tomAs raMOs castro (1211145)";
	char *p = str;
	
	int n = sizeof(str)/sizeof(str[0]);
	
	upper2(p);
	
	printf("The uppercase string is: ");
	for (int i = 0; i < n; i++) {
		printf("%c",str[i]);

	}
	
	printf("\n");
	
	return 0;
}
