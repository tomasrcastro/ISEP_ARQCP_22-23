void array_sort2 (int *vec, int n){

//o objetivo é ordenar de forma crescente o array
//para isso temos dois ciclos for que vão comecar por analisar
//o primeiro elemento do arr com os restantes
//caso seja superior irá ser trocado de forma a estar a ordem correta
//daí termos o temporário para auziliar a troca

	int temporario;
	for(int i = 0; i < n; i++){
		for (int j = i + 1; j < n; j++){
			if (*(vec + i) > *(vec +j)){
				temporario = *(vec + i);
				*(vec + i) = *(vec + j);
				*(vec + j) = temporario;
			}
		}
	}
}				
