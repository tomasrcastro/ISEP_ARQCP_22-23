.section .data
	.global length1
	.global length2
	.global height
	
.section .text
	.global getArea
	
getArea:
	movl length1(%rip), %eax
	movl length2(%rip), %ecx
	movl height(%rip), %edx
	
	addl %ecx, %eax                # lenght1+lenght2 e guarda no EAX
	
	imull %edx                     # faz (l1+l2)*altura
	
	movl $2, %ecx
	
	idivl %ecx                     # calcula a área
	
	ret                            # retorna eax
