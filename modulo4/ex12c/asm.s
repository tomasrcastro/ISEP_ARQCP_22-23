.section .text

    .global vec_count_bits_one   

vec_count_bits_one:

    pushq %rbp
    movq %rsp, %rbp
    movq %rdi, %rcx
	movl $0, %edx

start_of_vec:

	cmpl $0, %esi
	je end_of_vec

	movzwl (%rcx), %edi

	pushq %rdi
	pushq %rsi
	pushq %rcx
	pushq %rdx
	
	call count_bits_one
	
	popq %rdx 
	popq %rcx
	popq %rsi 
	popq %rdi

	addl %eax, %edx 

	addq $2, %rcx
	decl %esi
    jmp start_of_vec


end_of_vec:
    
    movl %edx, %eax 
    
    movq %rbp, %rsp
    popq %rbp
    
    ret
