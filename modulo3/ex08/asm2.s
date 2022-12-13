.section .data
	.global ptrvec			
	.global num	
	.global even			
	
.section .text
	.global vec_sum_even
	
vec_sum_even:
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
	movl %eax, even(%rip)		

	pushq %rdx	
	pushq %rdi
	pushq %rcx
	call test_even
	popq %rcx	
	popq %rdi
	popq %rdx

	cmpl $1, %eax				
	je sum_even					
	

	
	decl %ecx					
	addq $8, %rdi				
	jmp loop		

sum_even:
	addl (%rdi), %edx			
	decl %ecx					
	addq $8, %rdi				
	jmp loop				
        
end:
	movl %edx, %eax
	movq %rbp, %rsp
	popq %rbp
	ret
