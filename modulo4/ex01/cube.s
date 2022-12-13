.section .text
	.global cube
	
cube:
	#PRÓLOGO
	pushq %rbp
	movq %rsp, %rbp
	
	movslq %edi, %rcx                      # o valor de x está no EDI (1º argumento, inteiro - 32 bits)
	movslq %edi, %rax
	
	imulq %rcx, %rax                       # a*a
	imulq %rcx, %rax                       # (a*a) * a = a^3
	
	#EPÍLOGO
	movq %rbp, %rsp
	popq %rbp
	jmp end
	
end:
	ret
