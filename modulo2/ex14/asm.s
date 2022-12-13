.section .data
	length1:
		.long 5
	
	length2:
		.long 5
		
	height:
		.long 5
	
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
	
	mull %edx                      # faz (l1+l2)*altura
	
	movl $2, %ecx
	
	divl %ecx                      # calcula a  rea
	
	ret                            # retorna
