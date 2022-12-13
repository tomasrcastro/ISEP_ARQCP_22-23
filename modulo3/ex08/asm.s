.section .data
	.global even
	
.section .text
	.global test_even
	
test_even:
	movl even(%rip), %eax	# guarda o enderco do numero em eax
		
	cdq
	movl $2, %ecx
	idivl %ecx			# divide o valor de eax por 2 e guarda o resultado em eax e o resto em edx
		
	cmpl $0, %edx		# verifica se o resto da divisao e zero
	je is_even
	
	# se nao
		
	movl $0, %eax
	jmp end
		
is_even:
	movl $1, %eax
	jmp end

end:
	ret
