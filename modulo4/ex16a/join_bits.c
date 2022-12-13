int join_bits(int a, int b, int pos){ 
	    
    int mask_a = 0;
    int mask_b = 0xffffffff;

    int temp_a = a;
    int temp_b = b;

    for (int i = 0; i <= pos; i++)
        mask_a = mask_a + (1 << i);

    mask_b ^= mask_a;

    int result_b = temp_b & mask_b;
    int result_a = temp_a & mask_a;

    int res = result_a | result_b;

    return res;
}
