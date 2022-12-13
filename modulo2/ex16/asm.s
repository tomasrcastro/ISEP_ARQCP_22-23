.section .data
	.global num
	
.section .text
	.global steps
	
steps:
	movl num(%rip), %eax
	movl $3, %ecx
	imull %ecx, %eax
	movl $6, %ecx
	addl %ecx, %eax
	movl $3, %ecx
	cdq
	idivl %ecx
	movl $12, %ecx
	addl %ecx, %eax
	subl num(%rip), %eax
	movl $1, %ecx
	subl %ecx, %eax
	
	movslq %eax, %rax
	
	ret
