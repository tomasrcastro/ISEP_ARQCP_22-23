.section .text
	.global inc_and_square
	
inc_and_square:
	# PRÓLOGO
	pushq %rbp
	movq %rsp, %rbp
	
	incl (%rdi)                 # calcula o quadrado de v2 (2º argumento da função)
	
	movl %esi, %eax
	imul %esi, %eax
	
end:
	# EPÍLOGO
	movq %rbp, %rsp
	popq %rbp
	
	ret
	
