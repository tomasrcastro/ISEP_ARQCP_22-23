void upper1(char *str){

//o objetivo do exercício é colocar todas as letras em maiusculas
//para isso fazemos um ciclo for para perccorer a string
//até encontrar '\0' o que significa o fim da string
//depois -32 para converter a letra para maiuscula

	for(int i = 0; str[i] != '\0'; i++){
		if(str[i] >= 'a' && str[i]<= 'z'){
			str[i] -=32;
		}
	}
}			
