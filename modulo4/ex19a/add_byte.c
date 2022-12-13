void add_byte (char x, int *vec1, int *vec2){
	int lenght = *vec1;
	*vec2 = lenght;
	
	for(int i = 1; i <= lenght; i++){
		*(vec2 + i) = *(vec1 + i);                               // popular o array 2
		char byteMenosSignificativo = (char)*(vec2 + i);         // pega no byte menos significativo de cada número do array 2 
		byteMenosSignificativo = byteMenosSignificativo + x;     // soma a esse byte o valor de x
		
		int mask = 0xFFFFFF00;                                   // 64 bits. Como estamos a trabalhar com inteiros, cada byte é representado por 2 números/letras.                             
		
		*(vec2 + i) &= mask;                                     // limpar o byte menos significativo (o que queremos mudar)
		*(vec2 + i) |= byteMenosSignificativo;                   // adicionar o byte mudado à posição do array 2
	}
}
