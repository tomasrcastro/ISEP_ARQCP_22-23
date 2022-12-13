.section .data

	.global ptrvec
	.global num
	.global x
	
.section .text

	.global exists
	
exists:

	movl x(%rip), %esi 			
	movl $0, %edx				
	movq ptrvec(%rip), %rcx		
	movl $0, %eax				
	movl num(%rip), %edi		

check_if_dup:

	cmpl $2, %edx				
	je if_dup			

	cmpl $0, %edi				
	je end						

	cmpl (%rcx), %esi			
	je found					
	addq $4, %rcx				
	decl %edi					
	
	jmp check_if_dup					

found:

	addl $1, %edx				
	addq $4, %rcx				
	decl %edi					
	jmp check_if_dup

if_dup:

	movl $1, %eax				
	jmp end

end:

	ret
	
