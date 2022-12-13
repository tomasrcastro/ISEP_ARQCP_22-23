.section .data
	.global ptr1

.section .text
	.global seven_count
	
seven_count:
	movq ptr1(%rip), %rcx
	movl $0, %eax              # contador dos chars('7')
	
loop:
	movb (%rcx), %dl           # mover bit a bit para DL (estamos num loop, recursividade)
	cmpb $0, %dl               # vê se a string chegou ao fim --> 0 é o código para 'nul' na tabela ASCII
	je end
	
	cmpb $55, %dl              # se encontrar o '7' --> 55 é o código para o 7 na tabela ASCII
	je contador
	
	addq $1, %rcx              # avança para o bit seguinte
	jmp loop
	
contador:
	incl %eax                  # incrementa 1 ao contador
	addq $1, %rcx              # avança para o bit seguinte
	jmp loop
	
end:
	ret
