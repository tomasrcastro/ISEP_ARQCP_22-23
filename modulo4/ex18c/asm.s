.section .text

	.global changes_vec
	
changes_vec:                # start of function changes_vec - ex18c

	movl $0, %r8d
	jmp loop
	
loop:

	cmpl %r8d, %esi
	je end
	
	pushq %rax
	pushq %rcx
	
	call changes 
	
	popq %rcx
	popq %rax
	
	addq $4, %rdi
	incl %r8d
	
	jmp loop
	
end:

	ret
	
.section .text

	.global changes               # start of function changes - ex18b

changes:
	
	movl (%rdi), %edx			
	movl %edx, %ecx		
	andl $0xff00, %ecx 		
	sarl $8, %ecx 				
	cmpl $15, %ecx
					
	jg next
	
	ret
		
next:

	rorl $16, %edx				
	xorl $0xff, %edx			
	roll $16, %edx
	movl %edx, (%rdi)
