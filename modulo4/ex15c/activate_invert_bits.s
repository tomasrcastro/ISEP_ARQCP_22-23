.section .text
	.global activate_invert_bits
	
activate_invert_bits:
	# a está em EDI, left está em ESI, right está em EDX
	# PRÓLOGO
	pushq %rbp
	movq %rsp, %rbp
	
	call activate_bits       # alínea b)
	  
	not %eax                 # inverte todos os bits - NOT operation
	
end:
	# EPÍLOGO
	movq %rbp, %rsp
	popq %rbp
	
	ret
