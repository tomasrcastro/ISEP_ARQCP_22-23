.section .text

	.global test_equal
	
	
test_equal:

    #A ESTÁ EM RDI, B ESTÁ EM RSI
	
	movl $0, %eax       # 0 como valor inicial
	
	jmp loop

loop:

	movb (%rdi), %al
	movb (%rsi), %cl

	cmpb $0, %al        #compara A com 0 para ver se a string ja acabou
	je endOfString

	cmpb $0, %cl        #compara B com 0 para ver se a string ja acabou
	je endOfString

	cmpb %al, %cl       #compara A com B
	je inc
	jne dif

inc:
	incq %rdi
	incq %rsi
	jmp loop

endOfString:

	cmpb %al, %cl
	je equal
	jne dif

equal:

	movl $1, %eax
	jmp end

dif:

	movl $0, %eax
	jmp end
	
end:

	ret
