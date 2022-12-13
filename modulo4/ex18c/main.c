#include <stdio.h>
#include "asm.h"

int main(void)
{
	int vec[] = {7, 9, 3, 4, 1};
	int *ptrvec;
	int num = 5;
	
	ptrvec = vec;
	changes_vec(ptrvec, num);

	return 0;
}

