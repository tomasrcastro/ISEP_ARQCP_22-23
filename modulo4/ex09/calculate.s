.section .text
	.global calculate
	
calculate:
	# PRÓLOGO
	pushq %rbp
	movq %rsp, %rbp
	
	movl %edi, %ecx         # A
	subl %esi, %ecx         # A-B, e guarda no ECX
	
	movl %esi, %edx         # B para EDX
	movl %edi, %esi         # A para ESI
	movb $'-', %dil         # sinal da operação para DIL
	
	movl %ecx, %eax         # guardar o valor da subtração para mais tarde
	
	pushq %rdx
	pushq %rsi
	pushq %rax
	call print_result
	popq %rax
	popq %rsi
	popq %rdx

	movl %esi, %ecx         # move A para ECX
	imull %edx, %ecx        # A*B e guarda no ECX
	
	movb $'*', %dil         # sinal da operação para DIL
	
	subl %ecx, %eax         # (A-B)-(A*B)
	
	pushq %rdx
	pushq %rsi
	pushq %rax
	call print_result
	popq %rax
	popq %rsi
	popq %rdx
	
end:
	# EPÍLOGO
	movq %rbp, %rsp
	popq %rbp
	
	ret
