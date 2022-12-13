.section .data
	.global ptrvec
	.global lenght
	
.section .text
	.global vec_avg
	
vec_avg:
	call vec_sum                   # calcula a soma
	movzwq num(%rip), %rcx
	
	cmpq $0, %rcx
	jle zero

	cmpq $0, %rax
	jl somaNegativa                # caso a soma seja negativa, a divisão não pode ter CDQ
	
	cdq
	idivq %rcx
	jmp end
	
somaNegativa:
	idivq %rcx
	jmp end
	
zero:
	movq $0, %rax
	
end:
	ret
