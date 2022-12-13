.section .text 

	.global sum_smaller
	
sum_smaller:

#PROLOGO

	pushq %rbp
	movq %rsp, %rbp
	
#NUM1 ESTA EM EDI, NUM2 EM ESI, SMALLER EM EDX
	
	movl %esi, %eax
	addl %edi, %eax
	
	pushq %rdx
	
	cmpl %esi, %edi
	jl less
	jge greater
	

less:

	movl %edi, (%rdx)
	jmp end

greater:

	movl %esi, (%rdx)
	jmp end	


end:

	popq %rdx
	movq %rbp, %rsp
	popq %rbp	
	ret
