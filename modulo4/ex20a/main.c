#include <stdio.h>
#include "sum_multiples_x.h" 

int main(){

	char a[] = {1, 2, 3, 5, 5, 7, 8};
	int x = 0xf0301;
	
    int res = sum_multiples_x(a, x);

    printf("%d\n", res);

    return 0;
}
