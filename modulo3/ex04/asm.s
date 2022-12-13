.section .data
    .global ptrvec
    .global num

.section .text
    .global vec_add_two

vec_add_two:
    movl num(%rip), %eax
    movq ptrvec(%rip), %rcx

add_two:
    cmpl $0, %eax
    je end

	movl (%rcx), %edx
    addl $2, %edx
    movl %edx, (%rcx)
    decl %eax
    addq $4, %rcx
    jmp add_two

end:
    ret
