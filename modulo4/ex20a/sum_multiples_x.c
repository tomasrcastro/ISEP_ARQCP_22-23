int sum_multiples_x(char *vec, int x){

    int mask_a= 0;
    int nd_byte;

    for(int i = 8; i < 16; i++){
        mask_a += (1 << i);
    }

    nd_byte = x & mask_a;
    nd_byte = nd_byte >> 8;

    int num = *vec, soma = 0, ind = 0; 
    
    while(num != 0){
		
        int multiple = num % nd_byte;

        if(multiple == 0)
            soma += num;

        ind++;
        
        num = *(vec + ind);
    }   
    return soma;
}
