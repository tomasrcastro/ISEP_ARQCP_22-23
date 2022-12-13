#include <stdio.h>
#include "fill_student.h"
#include "update_address.h"
#include "locate_greater.h"
#include "update_grades.h"

int main(){
	Student s1;
	Student *ptr = &s1;
	
	fill_student(ptr, 19, 21, "Tomás", "Maia");
	
	printf("Idade: %d.\n", ptr->age);
	printf("Número: %d.\n", ptr->number);
	printf("Nome: %s.\n", ptr->name);
	printf("Morada: %s.\n", ptr->address);
	
	printf("\n");
	
	update_address(ptr, "Paris");
	
	printf("Idade: %d.\n", ptr->age);
	printf("Número: %d.\n", ptr->number);
	printf("Nome: %s.\n", ptr->name);
	printf("Morada: %s.\n", ptr->address);
	
	printf("\n");
	
	int arr[5] = {9,12,17,8,3};
	int *ptr1 = arr;
	
	update_grades(ptr, ptr1);
	
	int greater_grades_arr[5];
	int *greater_grades = greater_grades_arr;
	
	int minimum = 10;
	
	printf("Idade: %d.\n", ptr->age);
	printf("Número: %d.\n", ptr->number);
	printf("Nome: %s.\n", ptr->name);
	printf("Morada: %s.\n", ptr->address);
	printf("Notas: %ls.\n", ptr->grades);
	
	for(int i = 0; i<5; i++){
		printf("%d ",ptr->grades[i]);
	}	
	printf("\n");
	printf("Número de notas superiores à nota mínima: %d.\n", locate_greater(ptr, minimum, greater_grades));
	return 0;
}
