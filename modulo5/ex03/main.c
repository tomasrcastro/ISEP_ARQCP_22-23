#include <stdio.h>
#include "fill_student.h"

int main(){
	Student s1;
	Student *ptr = &s1;
	
	fill_student(ptr, 19, 21, "Tomás", "Maia");
	
	printf("Idade: %d.\n", ptr->age);
	printf("Número: %d.\n", ptr->number);
	printf("Nome: %s.\n", ptr->name);
	printf("Morada: %s.\n", ptr->address);
	
	return 0;
}
