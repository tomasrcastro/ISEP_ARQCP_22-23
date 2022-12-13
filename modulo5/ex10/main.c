#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include "new_str.h"

int main(void){
	
    char str[80] = "Arroz de pato é bom"; 
    new_str(str);
    printf("String: %s\n", str);
    printf("Original size: %d\n", (int)sizeof(str));
    char *newstr = new_str(str);
    
    long count = 0;
    while (*newstr != '\0') {
        count++;
        newstr++;
    }
    printf("New size: %ld\n", count);
return 0;
}

