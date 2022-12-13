int reset_bit(int *ptr, int pos){

	int n = *(ptr);
	*(ptr) &= ~(1 << pos);       // clearing a bit
	
	if(*(ptr) == n)
		return 0;
	
	else
		return 1;
	
}
