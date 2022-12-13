.section .text
    .global count_bits_one
    

count_bits_one:

    movl $0, %ecx
    movl $0, %r8d
    

start_loop:

    cmpl $32, %r8d
    je end

    movl %edi, %eax

    and $1, %eax
    sar $1, %edi

    incl %r8d

    cmpl $1, %eax
    je isOne

    jmp start_loop
    

isOne:

    incl %ecx
    jmp start_loop
    
    
end:

    movl %ecx, %eax
    ret
