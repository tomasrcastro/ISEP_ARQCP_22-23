.section .data
	.global op1
	.global op2
	
.section .text
	.global test_flags

test_flags:
	
	movl op1(%rip), %ecx
	movl op2(%rip), %edx
	
	addl %edx, %ecx              # op1+op2 e guarda no ECX
	
	jc carry_detected            # vai para o carry_detected se CF=1
	jo overflow_detected         # vai para o overflow_detected se OF=1
	
	movq $0, %rax                # se chegar aqui, quer dizer que não detetou nenhuma flag
	jmp end                      # vai para o end
	
carry_detected:
	movq $1, %rax                # se chegar aqui, quer dizer que detetou uma flag e coloca 1 no %rax
	jmp end                      # daqui, salta para o end
	
overflow_detected:
	movq $1, %rax                # se chegar aqui, quer dizer que detetou uma flag e coloca 1 no %rax
	jmp end						 # daqui, salta para o end
	
end:
	ret                          # retorna RAX
