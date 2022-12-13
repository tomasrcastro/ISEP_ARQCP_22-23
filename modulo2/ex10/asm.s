.section .data
	.global op1, op2, op3
	
.section .text
	.global sum3ints
	
sum3ints:

	movslq op1(%rip), %rax
	movslq op2(%rip), %rcx
	
	addq %rcx, %rax
	
	movslq op3(%rip), %rcx
	
	addq %rcx, %rax
	
	ret
	
