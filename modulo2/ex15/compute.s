.section .data
	.global A
	.global B
	.global C
	.global D
	
.section .text
	.global compute
	
compute:
	movl A(%rip), %eax
	imull B(%rip), %eax                # faz A*B e guarda no EAX, com sinal
	
	movl C(%rip), %ecx 
	subl %ecx, %eax                    # faz (A*B)-C e guarda no EAX
	
	cdq                                # preparar a divisão
	movl D(%rip), %ecx                 
	cmpl $0, %ecx                      # verifica se D=0, pois não é possivel dividir por 0
	je div0                            # se for, salta para o div0           
	
	idivl %ecx                         # caso D não seja 0, faz a divisão. Guarda no EAX
	jmp end                            # salta para o end onde dará return de EAX (=resultadoDaConta)

div0:
    movl $0, %eax                      # se entrar aqui, é pq D=0 e o resultado final da conta será 0
    jmp end                            # salta para o end onde dará o return de EAX (=0)

end:
    ret                                # retorna EAX
