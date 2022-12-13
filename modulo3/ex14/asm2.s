.section .data

	.global ptrvec
	.global num
	.global x
	
.section .text

	.global vec_diff
	
vec_diff:

    pushq %rbp
	movq %rsp, %rbp
	
	movl $0, %eax
	movl $0, %ecx
	movl $0, %edx

	movq ptrvec(%rip), %rdi		
	movl num(%rip), %ecx		

loop:

	cmpl $0, %ecx				
	je end						

	movl (%rdi), %eax
	movl %eax, x(%rip)			
	
	pushq %rcx					
	pushq %rdx
	pushq %rdi
	pushq %rsi
	
	
	call exists
	
	
	popq %rsi		
	popq %rdi
	popq %rdx
	popq %rcx

	cmpl $0, %eax				
	je sum						

	addq $4, %rdi				
	decl %ecx					

	jmp loop

sum:

	addl $1, %edx				
	addq $4, %rdi				
	decl %ecx					
	jmp loop

end:

	movl %edx, %eax
	movq %rbp, %rsp
	popq %rbp
    ret
