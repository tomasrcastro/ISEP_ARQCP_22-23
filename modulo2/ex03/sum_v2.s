.section .data
    .global op1
    .global op2
    .equ CONST, 20

.section .text
    .global sum_v2

sum_v2: 
    movl op1(%rip), %ecx         # op1 = ecx
    movl op2(%rip), %eax         # op2 = eax
    movl $CONST, %edx            # CONST = edx
    
    addl %ecx,%ecx               # faz op1 + op1 e guarda no ECX
    subl %ecx,%edx               # faz CONST-(op1+op1) e guarda o resultado do EDX
    addl %edx,%eax               # faz (CONST-op1-op1)+op2 e guarda no destino que é o EAX 
    
    ret                          # return do EAX
