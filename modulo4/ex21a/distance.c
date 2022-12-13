int distance (char *a, char *b){
	int contador = 0, lenghtA = 0, lenghtB = 0;
	
	for (int i = 0; *(a+i)!='\0';i++){
		lenghtA++;
	}
	
	for (int i = 0; *(b+i)!='\0';i++){
		lenghtB++;
	}
	
	int j = 0;
	if (lenghtA == lenghtB){
		while (a[j] != '\0') {
			if (a[j] != b[j])
				contador++;
			j++;
		}
		return contador;
	} else return -1;
}
