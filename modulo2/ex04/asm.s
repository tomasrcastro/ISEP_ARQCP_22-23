.section .data

	.global op1
	.global op2
	
op3:
	.quad 0

op4: 
	.quad 0
	
	.global op3, op4	

.section .text
	.global sum_v3

sum_v3:

	movq op4(%rip), %rax
	movq op3(%rip), %rcx
	
	addq %rcx, %rax
	
	movslq op2(%rip), %rcx
	
	subq %rcx, %rax
	
	subq %rcx, %rax
	
	movslq op1(%rip), %rcx
	
	addq %rcx, %rax
	
	addq %rcx, %rax
	
	ret
