.section .data
	.global ptrvec
	.global num
	
.section .text
	.global vec_greater10
	
vec_greater10:
	movq ptrvec(%rip), %rsi
	movl $0, %eax                  # contador
	movslq num(%rip), %rcx
	
	cmpq $0, %rcx
	jz end
	
arr_loop:
	cmpl $10,(%rsi)                # compara o inteiro com 10
	jg maiorQue10                  
	
	jmp continua

maiorQue10:
	incl %eax                      # soma 1 a EAX
	jmp continua		

continua:
	addq $4, %rsi                  # avança para o proximo inteiro
	loop arr_loop

end:
	ret
