.section .text
	.global count_odd
	
count_odd:
	# PRÓLOGO
	pushq %rbp
	movq %rsp, %rbp
	
	movq $0, %rdx
	movl $0, %eax
	movl $2, %r10d
	movl $0, %r11d
	
divisao_loop:
	cmpl $0, %esi                  # o vetor está vazio?
	je end
	
	movsbl (%rdi), %eax            
	cdq
	idivl %r10d                    # divide o número apontado por 2
	
	cmpl $0, %edx                  # se o resto der zero, é PAR
	je continua
	
	addl $1, %r11d                 # contador++ (valor que irá ser retornado)
	subl $1, %esi                  # lenght--
	addq $1, %rdi                  # avança para o próximo número
	
	jmp divisao_loop
	
continua:
	subl $1, %esi                  # lenght--
	addq $1, %rdi                  # avança para o próximo número
	
	jmp divisao_loop


end:
	movl %r11d, %eax               # contador para o EAX
	# EPÍLOGO
	movq %rbp, %rsp
	popq %rbp
	
	ret
