.section .text

	.global changes

changes:
	
	movl (%rdi), %edx			
	movl %edx, %ecx		
	andl $0xff00, %ecx 		
	sarl $8, %ecx 				
	cmpl $15, %ecx
					
	jg next
	
	jmp end 
		
next:

  rorl $16, %edx				
  xorl $0xff, %edx			
  roll $16, %edx
  movl %edx, (%rdi)	
		
end:

  ret
