void capitalize (char *str){

//um ciclo for para capitalizar a primeira letra de uma string
	if(str[0] >= 'a' && str[0] <= 'z'){
		str[0] = *(str) - 32;
	}
	
//um ciclo for para percorrer o resto da string até encontrar '\0'
//um if para indicar que a capitalização so deve ser feita após encontrar um espaço
//garantindo assim que so o inicio de cada palavra fica em maiusculo

	for(int i = 0; str[i] != '\0'; i++){
		if (str[i] == ' ' && str[i + 1] >= 'a' && str[i + 1] <= 'z'){
			str[i + 1] = *(str + i + 1) - 32;
		}
	}
}				
