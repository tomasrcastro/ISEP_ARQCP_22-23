.section .data

z: 
	
	.int 0
	
.section .text

	.global calc
	
calc:

# A ESTÁ EM EDI, B EM ESI, C EM EDX
# Z = A X 2 - B

#------------------------------------------
	pushq %rbp
	movq %rsp, %rbp
#------------------------------------------	

	movl z(%rip), %eax    # mover o z para eax
	movl %edi, %eax       # mover a para eax
	
	imull $2, %eax        # fazer a * 2
	movl (%rsi), %ecx
	subl %ecx, %eax     # subtrair b à conta de cima

#------------------------------------------	
	pushq %rdx
#------------------------------------------	
	
	subl $4, %edx         # subtrair 4 a c
	mull %edx             # multiplicar a subtração com eax
	
#------------------------------------------		
	popq %rdx
	movq %rbp, %rsp
	popq %rbp	
#------------------------------------------		
	ret
	
	
