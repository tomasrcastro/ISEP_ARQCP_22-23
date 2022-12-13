.section .data
    .global ptrsrc
    .global ptrdest
    .global num
   
.section .text
    .global remove_duplicates

remove_duplicates:
    movl $0, %eax
    movl $0, %ecx
    movl $0, %edx
    movl $0, %r8d
    movl $0, %r9d
    movl $0, %r10d

    movq ptrsrc(%rip), %rdi
    movq ptrdest(%rip), %rdx
    movslq num(%rip), %rcx

loop:
    cmpq $0, %rcx
    je end

    movw (%rdi, %r9, 2), %si       # a[i] == si

    incq %r10

    movw (%rdi, %r10, 2), %r8w     # a[j] == r8w

    cmpw %si, %r8w
    jl is_different
    jg is_different

    incq %r9
    decq %rcx

    jmp loop

is_different:
    movw %si, (%rdx)
    incq %r9
    addq $2, %rdx
    decq %rcx
    incl %eax

    jmp loop

end:
    ret
