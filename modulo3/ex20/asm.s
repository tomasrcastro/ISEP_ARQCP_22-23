.section .data

	.global ptrvec
	.global num

.section .text
    .global count_max

count_max:

	movq ptrvec(%rip), %rsi 
    movslq num(%rip), %rdi 
    movq %rdi, %rdx 
    subq $2, %rdx 
    movq $0, %rcx 
    movl $0, %eax 

    cmpq $2, %rdi 
    jle end 

    loop:
    
        cmpq %rdx, %rcx
        jg end


        movl (%rsi, %rcx, 4), %r8d
        movl 4(%rsi, %rcx, 4), %r9d
        movl 8(%rsi, %rcx, 4), %r10d 

        cmpq %r8, %r9
        jl primeira_comp

        incq %rcx 

    jmp loop

    primeira_comp:
        cmpq %r9, %r10
        jg segunda_comp
        incq %rcx
    jmp loop

    segunda_comp:
        addl $1, %eax
        incq %rcx
    jmp loop


end:
    ret
    