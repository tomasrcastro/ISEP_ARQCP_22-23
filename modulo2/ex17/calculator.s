.section .data
	.global n1
	.global n2
	.global operation

.section .text
	.global calculator
	
calculator:
	movl n1(%rip), %eax
	movl operation(%rip), %ecx
	
	cmpl $1, %ecx
	je soma
	
	cmpl $2, %ecx
	je subtracao
	
	cmpl $3, %ecx
	je multi
	
	cmpl $4, %ecx
	je divi
	
	cmpl $5, %ecx
	je modulo
	
	cmpl $6, %ecx
	je potencia2
	
	cmpl $7, %ecx
	je potencia3
	
	jmp end
		
soma:
	addl n2(%rip), %eax
	jmp end
	
subtracao:
	subl n2(%rip), %eax
	jmp end

multi:
	imul n2(%rip), %eax
	jmp end

divi:
	cmpl $0, n2(%rip)                 # ver se n2 = 0
	je div0
	
	cdq                               # prepara a divisão
	idivl n2(%rip)
	jmp end
	
div0:
	movl $0, %eax                      # se entrar aqui, é pq D=0 e o resultado final da conta será 0
    jmp end                            # salta para o end onde dará o return de EAX (=0)

modulo:
	cdq
	idivl n2(%rip)
	movl %edx, %eax                   # resto está no EDX
	jmp end
	
potencia2:
	imul n1(%rip), %eax
	jmp end

potencia3:
	imul n1(%rip), %eax
	imul n1(%rip), %eax
	jmp end

end:
	ret
