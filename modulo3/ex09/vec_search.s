.section .data
	.global ptrvec
	.global num
	.global x
	
.section .text
	.global vec_search
	
vec_search:
	movq ptrvec(%rip), %rsi
	movq $0, %rax          
	movslq num(%rip), %rcx 
	movw x(%rip), %dx         # o endereço que quer ser encontrado no short arr[]
	
	cmpq $0, %rcx
	jz zero
	
str_loop:
	cmpw %dx, (%rsi)          # compara o primeiro short com o caracter
	je encontrado
	
	add $2, %rsi              # nao for encontrado, avança para o proximo short
	
	loop str_loop
	
	jmp end
		
zero:
	movq $0, %rax
	jmp end
	
encontrado:
	leaq (%rsi), %rax        # soma 1 ao RAX, que irá ser retornado pelo método
	
end:
	ret
