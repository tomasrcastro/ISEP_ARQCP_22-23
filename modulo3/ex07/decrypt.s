.section .data
	.global ptr1

.section .text
	.global decrypt

decrypt:
	movq ptr1(%rip),%rsi
	movl $0,%eax				# counter = 0
	
# o exercício anterior era para encriptar e somar 3 a todos os caracteres, onde não é 'a' ou um espaço
str_loop:
	cmpb $0,(%rsi)			
	jz end						
	
	cmpb $'a',(%rsi)			# Verifica se é a
	je exception				
	
	cmpb $' ',(%rsi)			# Verifica se é espaço
	je exception				
	
	subq $3,(%rsi)              # subtrai 3 (o oposto de encriptar)
	incq %rsi
	incl %eax
	jmp str_loop
	
exception:
	incq %rsi
	jmp str_loop
	
end:
	ret
