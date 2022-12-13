void compress_shorts(short* shorts, int n_shorts, int* integers){

//cast para ficarmos a trabalhar com os mesmos tipos

	short *t = (short *) integers;
	
//ciclo for para preencher o novo arr	
	for(int i = 0; i < n_shorts; i++){
		(*(t + i)) = (*(shorts + i));
	}
}		
