.section .data

	.global ptr1
	
.section .text

	.global encrypt
	
encrypt:

		movl $0, %eax
		

		movq ptr1(%rip), %rcx
		
add_tres:

		movb (%rcx), %dl		
		
		cmpb $0, %dl
		je end					
		
		# se nao
		
		cmpb $97, %dl
		je incr					
		
		cmpb $32, %dl
		je incr				
		
		jmp Add3
		
Add3:

		incl %eax				
		addb $3, (%rcx)			
		jmp incr				
		
incr:

		incq %rcx
		jmp add_tres
		
end:
		ret
