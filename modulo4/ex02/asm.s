.section .text

        .global n

.section .text

        .global sum_n2

sum_n2:
        movslq %edi, %rax
        movq $0, %rsi

loop_s:

        cmpq $0, %rax
        jle end
        movq %rax, %rcx         
        imulq %rax
        addq %rax, %rsi
        jmp dec

dec:
        decq %rcx                
        movq %rcx, %rax  
        jmp loop_s
end:
        movq %rsi, %rax
        ret
