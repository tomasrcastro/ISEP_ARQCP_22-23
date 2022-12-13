.section .text 

	.global mixed_sum
	.global join_bits
	
mixed_sum:

	movl $0, %ecx
#--------------------------------------------		
	pushq %rdi
	pushq %rsi
	pushq %rdx
	pushq %rcx
#--------------------------------------------	
	
	call join_bits
	
#--------------------------------------------		
	popq %rcx
	popq %rdx
	popq %rsi
	popq %rdi
#--------------------------------------------	
	
	addl %eax, %ecx
	
#--------------------------------------------		
	pushq %rdi
	pushq %rsi
	pushq %rdx
	pushq %rcx
#--------------------------------------------	
	
	movl %edi, %r9d
	movl %esi, %edi
	movl %r9d, %esi
	
	call join_bits

#--------------------------------------------	
	popq %rcx
	popq %rdx
	popq %rsi
	popq %rdi
#--------------------------------------------	
	
	addl %eax, %ecx
	movl %ecx, %eax
	
	ret
	
#---------------------------------------------------------
	
join_bits:

	movl $0, %r9d
	movl $0, %r8d
	
	movl $1, %eax
	movl $0xffffffff, %ecx
	
_a:

	cmpl %r9d, %edx
	je _b
	
	shll $1, %eax
	incl %eax
	
	incl %r9d
	
	jmp _a

_b:

	xorl %eax, %ecx
	
	pushq %rdi
	pushq %rsi
	
	andl %eax, %edi
	andl %ecx, %esi
	
	orl %edi, %esi
	
	movl %esi, %eax
	
	popq %rsi
	popq %rdi
	
	ret
