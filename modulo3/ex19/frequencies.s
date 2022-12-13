.section .data
	.global ptrgrades
	.global num
	.global ptrfreq
	
.section .text
	.global frequencies

frequencies:
	pushq %rbx					   # push do RBX	
	
	movq ptrgrades(%rip), %rsi	   # apontador para o Array Grades no RSI
	movslq num(%rip), %rcx		   # lenght do Array Grades no RCX
	movq ptrfreq(%rip), %rdx       # apontador para o Array Freq no RDX
	movq ptrfreq(%rip), %rdi       # apontador para o Array Freq no RDI
	movq $21, %rbx		           # o array frequências tem 21 posições, são as notas de 0 a 20 (0,1,2,...,20) no RBX

zeroArrayFreq:
	cmpq $0, %rbx	               # se o array freq já está todo a zeros	         	
	je contarFreq	               # avança para a próxima função
	
	movl $0, (%rdx)		           # preenche com 0 o int atual no array freq	
	addq $4, %rdx	               # avança para o proximo int para colocar um 0		       
	decq %rbx				       # indice do array frequencias
	jmp zeroArrayFreq	           # loop nesta função, até o cmpb inicial avançar para a próxima função
	
contarFreq:	
	cmpq $0, %rcx                  # vê se o array grades está vazio
	jle end	                       # se sim, vai para o end
	
	movq %rdi, %rdx                # re-preencher o array Freq no RDX (foi alterado, pois foi usado na função em cima)                         
	movb (%rsi), %al		       # move o char de ArrGrades para AL
	
procurarFreq:	
	cmpb $0, %al                   # compara AL com 0 - isto vai acontecer quando o indice no array frequencias tiver a apontar para o sítio certo		
	je incremento                  # caso positivo, vai para o increment
				
	addq $4, %rdx			       # avança para o próximo inteiro no ArrayFreq
	decb %al                       # subtrai 1 ao char grade (para avançarmos no array freq até ao indice desejado)
					
	jmp procurarFreq			   # loop nesta função
	
incremento:
	addq $1, (%rdx)		           # avança 1 no indice do array freq	
	addq $1, %rsi		           # avança para a próxima grade (char)	
	decq %rcx				       # representa o número de elementos do array das grades
	jmp contarFreq	               # volta a contar frequências, com a próxima grade (char) que estiver no vetor
	
end:				
	popq %rbx				       # pop do RBX
	ret
