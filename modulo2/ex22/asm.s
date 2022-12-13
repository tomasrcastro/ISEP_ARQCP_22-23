.section .data
    .global i
    .global j

.section .text
    .global f
    .global f2
    .global f3
    .global f4

f:
    movl i(%rip), %eax
    movl j(%rip), %ecx

    cmpl %ecx, %eax
    je igual

    addl %ecx, %eax
    subl $1, %eax
    jmp fim

igual:
    subl %ecx, %eax
    addl $1, %eax
    jmp fim

fim:
    ret


f2:
    movl i(%rip), %eax
    movl j(%rip), %ecx

    cmpl %ecx, %eax
    jg maior

    incl %ecx
    jmp fim2

maior:
    decl %eax
    jmp fim2

fim2:
    imull %ecx, %eax
    ret


f3:
    movl $0, %eax
    movl $0, %ecx
    movl $0, %edx
    movl i(%rip), %eax
    movl j(%rip), %ecx

    cmpl %ecx, %eax
    jge maiorOuIgual

    addl %ecx, %eax            # j+i, guarda EAX
    movl %eax, %ecx
    incl %ecx                  # i+1, guarda no ECX                 
    jmp fim3
   
maiorOuIgual:
     imull %ecx, %eax         # h está no EAX
     movl $2, %ecx
     addl %eax, %ecx          # (i+j)+2 e guarda no ECX
     jmp fim3

fim3:
    idivl %ecx
    ret

f4:
	movl $0, %eax
    movl $0, %ecx
    movl $0, %edx
    movl i(%rip), %eax
    movl j(%rip), %ecx

    addl %ecx, %eax

    movl $10, %ecx

    cmpl %ecx, %eax

    jl menor

    movl j(%rip), %eax
    imull %eax, %eax
    movl $3, %ecx
    idivl %ecx
    jmp fim4

menor:
    movl i(%rip), %eax
    imull %eax, %eax
    imull $4, %eax

fim4:
    ret
