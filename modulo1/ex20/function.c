void find_all_words(char* str, char* word, char** addrs){
	int i = 0;
	int j = 0;
	int k = 0;
	
	int word_len = 0;
	int str_len = 0;
	
	
	while (word[word_len] != '\0'){
		word_len++;
	}
	
	while (str[str_len] != '\0'){
		str_len++;
	}
	
	while (i < str_len){
		if (str[i] == word[j]){
			j++;
			
			if (j == word_len){
				addrs[k] == &str[i - word_len + 1];
				k++;
				j = 0;
				
			}
		}else{
			j = 0;
		}
		i++;
	}
	

}								
