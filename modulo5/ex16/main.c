#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include "asm.h"


int main(void){
    group gg;
    group *ptr = &gg;

    ptr->n_students = 2;
    ptr->individual_grades = malloc(ptr->n_students * sizeof(unsigned short));

    ptr->individual_grades[0] = 10;
    ptr->individual_grades[1] = 20;

    printf("%d\n", approved_semester(ptr));

    free(ptr->individual_grades);

    return 0;
}