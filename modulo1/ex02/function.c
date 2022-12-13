void copy_vec(int *vec1, int *vec2, int n){
	
	//um ciclo for que irá percorrer até ao n inserido e irá copiar
	//o valor de cada posição até n de um arr para outro
	for(int i = 0; i < n; i++){
		*(vec2 + i) = *(vec1 + i);
	}
}		
