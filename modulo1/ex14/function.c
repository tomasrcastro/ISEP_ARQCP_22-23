void frequencies (float *grades, int n, int *freq){
	
	//ciclo for que irá preencher 20 espaços do *freq com 0
	//20 espaços 20 valores
	for(int i = 0; i <= 20; i++){
		*(freq + i) = 0;
	}
	
	//ciclo for que irá contar quantas ocorrencias de um certo número existem
	for(int i = 0; i < n; i++){
		int j = (int) (*(grades + i));
		(*(freq + j))++;	
	}
}		
