int count_bits_one(int x){
	
	int cnt = 0;
	int i;
	int j = 1;
	
	for(i = 0; i < 32; i++){
		
		if((x & j) == 1) cnt++;
		
		x = x >> 1;
		
	}
	
	return cnt;
}
