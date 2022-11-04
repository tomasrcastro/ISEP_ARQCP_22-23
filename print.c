#include <stdio.h>

void print(int x, int* xPtr, float y, int vec[]){
	printf("The value of x is %d\n", x);
	printf("The value of y is %f\n", y);
	
	printf("The adress, in Hexadecimal, of x is %x\n", x);
	printf("The adress, in Hexadecimal, of xPtr is %p\n", &xPtr);
	
	printf("The value pointed by xPtr is %d\n", *xPtr);
	
	printf("The address of vec is %p\n", &vec);
	
	printf("The value of vec[0] is %d\n", vec[0]);
	printf("The value of vec[1] is %d\n", vec[1]);
	printf("The value of vec[2] is %d\n", vec[2]);
	printf("The value of vec[3] is %d\n", vec[3]);
	
	// distanciam-se 4 bytes porque é o espaço que um inteiro ocupa.
	printf("The address of vec[0] is %p\n", &vec[0]);
	printf("The address of vec[1] is %p\n", &vec[1]);
	printf("The address of vec[2] is %p\n", &vec[2]);
	printf("The address of vec[3] is %p\n", &vec[3]);

}
