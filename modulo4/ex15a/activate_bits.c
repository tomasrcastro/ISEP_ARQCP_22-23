int activate_bits(int a, int left, int right){
	
	for(int i=0; i<right; i++){
		a |= 1 << i;                   // bitwise OR --> faz uma operação OR nos dois operandos em binário. 
	}                                  // O resultado fica guardado na variável a.
	
	for(int i=left+1; i<32; i++){
		a |= 1 << i;
		
	}
	
	return a;
}
