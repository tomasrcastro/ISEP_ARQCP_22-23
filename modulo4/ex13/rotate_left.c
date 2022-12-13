int rotate_left (int num, int nbits){
	int shifted = num << nbits;            // move nbits do num para a esquerda
	
	int rot_bits = num >> (32-nbits);
	
	int combined = shifted | rot_bits;     // operação OR - usada para unir bits de 2 números 
	
	return combined;
}
