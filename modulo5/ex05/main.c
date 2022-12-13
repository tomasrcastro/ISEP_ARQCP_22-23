#include <stdio.h>
#include "update_grades.h"

int main(){
	Student s1;
	Student *ptr = &s1;
	
	int new_grades[] = {1,2,3,4,5};
	
	update_grades(ptr, new_grades);
	
	printf("Novas notas: \n");
	for(int i = 0; i < 5; i++){
		printf("%d  ", ptr->grades[i]);
	}
	printf("\n");
	
	return 0;
}
