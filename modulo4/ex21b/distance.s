.section .text
    .global distance

distance:
    # *a está em RDI, *b está em RSI
    # PRÓLOGO
    pushq %rbp
    movq %rsp, %rbp

    movq $0, %r9                        # i
    movq $0, %r10                       # lenght do A no r10
    movq $0, %r11                       # lenght do B no r11
    movq $0, %rax                       # resultado final
    movq $0, %rcx
    movq $0, %rdx
    movq $0, %r8

lenghtA:
    movb (%rdi), %cl                    # carrega o byte do endereço de a
    
    cmpb $0, %cl                        # já chegou ao fim?
    je lenghtB

    incq %r10
    incq %rdi
    jmp lenghtA

lenghtB:
    movb (%rsi), %dl                    # carrega o byte do endereço de b
    
    cmpb $0, %dl                        # já chegou ao fim?
    je continua

    incq %r11
    incq %rsi
    jmp lenghtB
    
continua:
	cmpq %r10, %r11                     # compara o tamanho de A e B
    jne tamanhoNaoIgual

	cmpq %r10, %r9                      # compara o tamanho de A com i
	je continua_2
	                                    # como dei incq nos métodos de cima, agora tenho de voltar a colocar
	decq %rdi                           # o apontador a apontar para a 1ª posição
	decq %rsi
	incq %r9
	jmp continua

continua_2:
	movq $0, %r9                        # i=0
	jmp compare

compare:
    cmpq %r10, %r9                      # compara o tamanho de A e i
    je end
    
    movb (%rdi,%r9,1), %cl              # carrega o byte do endereço de a           
    movb (%rsi,%r9,1), %dl              # carrega o byte do endereço de b
    
    cmpb %cl, %dl                       # compara os bytes
    je igual
    
    incl %eax                           # distância - return value
    incq %r9                            # i++
    jmp compare

igual:
    incq %r9                            # i++
    jmp compare

tamanhoNaoIgual:
    movl $-1, %eax
    jmp end

end:
    # EPÍLOGO
    movq %rbp, %rsp
    popq %rbp
    
    ret
