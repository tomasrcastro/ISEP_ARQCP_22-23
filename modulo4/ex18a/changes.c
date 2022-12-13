void changes (int *ptr){
	
	int m = 0xff00;
	int n = *ptr;
	n &= m;
	n >>= 8;
	
	
	if (n > 15){
		m = 0x00ff0000;
		*ptr = *ptr ^ m;
	}
}

