.section .data
	.equ A, 1
	.equ B, 1
	.global n
	.global i

.section .text
	.global somat

somat:
	movl $A, %eax         
	imull %eax, %eax      
	cdq                   
	movl $B, %ecx         
	idivl %ecx            
	movl %eax, %edi                # A2/B, no EDI
	movl $0, %ecx                  # ecx vazio 
	movl i(%rip), %esi    
	movl n(%rip), %edx    
 	
loop:
	movl %esi, %eax               # i no eax
	imull %eax, %eax              # i2 no eax
	imull %edi, %eax              # i2 * A2/B no eax
	addl %eax, %ecx                         
	cmpl %edx, %esi               # compara n com i
	je end
	                
	incl %esi             
	jmp loop              
					
end:
	movl %ecx, %eax       
	ret	
