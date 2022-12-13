#include <stdio.h>
#include <string.h>

int main (void){

union union_u1{
    char vec[32];
    float a;
    int b;
} u;

union union_u1 * ptr = &u;

printf("UNION\n");
strcpy(ptr->vec, "arquitectura de computadores");
printf( "[1]=%s\n", ptr->vec);
ptr->a = 123.5;
printf( "[2]=%f\n", ptr->a);
ptr->b = 2;
printf( "[3]=%d\n", ptr->b);

printf( "[1]=%s\n", ptr->vec);
printf( "[2]=%f\n", ptr->a);
printf( "[3]=%d\n", ptr->b);

printf("\nSTRUCT\n");

struct struct_s1{
	char vec2[32];
	float c;
	int d;
} s;

struct struct_s1 * ptr2 = &s;

strcpy(ptr2->vec2, "arquitectura de computadores" );
printf( "[1]=%s\n", ptr2->vec2);
ptr2->c = 123.5;
printf( "[2]=%f\n", ptr2->c);
ptr2->d = 2;
printf( "[3]=%d\n", ptr2->d);
printf( "[1]=%s\n", ptr2->vec2);
printf( "[2]=%f\n", ptr2->c);
printf( "[3]=%d\n", ptr2->d);


return 0;
}

//The first three printf() statements will print the expected values of the vec, a, and b fields of the u union. 
//However, since the a field was assigned a value after the vec field was assigned a value, the vec field will have been overwritten and will contain no value (i.e., an empty string). This is why the last two printf() statements will print empty string for vec and 0.000000 for a.