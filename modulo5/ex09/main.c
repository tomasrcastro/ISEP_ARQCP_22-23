#include <stdio.h>
#include "function.h"

short result1;
short result2;
short* result3;
short result4;

int main() {
	structA sA = {
		.y = 40,
		.x = 24
	};
	
    structB s = {
        .a = {
            .y = 40,
            .x = 24
        },
        .b = &sA,
        .x = 1,
        .z = 2,
        .c = 3,
        .y = 4,
        .e = {5,6,7}
    };

    printf("fun1 returned: %d\n", fun1(&s));	// 24
	printf("fun2 returned: %d\n", fun2(&s));	// 2
	printf("fun3 returned: %p\n", fun3(&s));
	printf("fun4 returned: %d\n", fun4(&s));	// 24

    return 0;
}
