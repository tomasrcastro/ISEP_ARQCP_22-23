char* where_exists(char* str1, char* str2){
	
	int i = 0;
	while (*(str2 + i) != 0){
		int valid = 1;
		int j = 0;
		while (*(str1 + j) != 0 && valid){
			if (*(str1 + j) == *(str2 + j + i)){
				j++;
				
				if (*(str1 + j) == 0){
					return str2 + i;
				}
			}else valid = 0;
		}
		
		i++;
	}
	return 0;					
}

		
				
