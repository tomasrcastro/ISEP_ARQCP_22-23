int odd_sum(int *p){
	int sum = 0;
	
//isto irá fazer a soma de todos os números impares
//para isso fazemos a conta do numero a dividir por dois e caso o resto n seja 0 sabemos que é impar
	for(int i = 1; i < *p + 1; i++){
		if (*(p + i) % 2 != 0){
			sum = sum + *(p + i);
		}
	}
	return sum;
}			
