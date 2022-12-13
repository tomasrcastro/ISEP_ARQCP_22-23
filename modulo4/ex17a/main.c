#include <stdio.h>
#include "greater_date.h"

int main(){
	// datas: MESANODIA
	unsigned int date1 = 12202224;
	unsigned int date2 = 12202225;
	
	unsigned int resultado = greater_date(date1, date2);
	
	printf("A data mais recente é %u.\n", resultado);
	
	return 0;
}
