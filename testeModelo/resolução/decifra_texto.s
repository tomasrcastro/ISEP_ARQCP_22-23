.section .text  
	.global decifra_string

decifra_string:
	# *c no rdi, chave no si
	#prologo
	pushq %rbp
	movq %rsp, %rbp 
        
	push %r10
    push %r11
    push %r12
        
    movq $0, %r12                   # counter texto_original (j)
    movq $0, %r8                    # counter tamanho_cifrado (i)
    
    movq (%rdi), %r10               # short *texto_cifrado
	movslq 8(%rdi), %r9             # int tamanho_cifrado
	movq 16(%rdi), %r11             # char *texto_original

loop:
	cmpq %r8, %r9                    # check if end of array
	je end
		
	movw (%r10,%r8,2), %di           # get texto_cifrado[%r8]
	leaq (%r11, %r12, 1), %rdx       # get address of char c1
	inc %r12                                
	leaq (%r11, %r12, 1), %rcx       # get address of char c2
    inc %r12                                      
    
	# número está em %di, chave está em %si, *c1 está em %rdx, *c2 está em %rcx
    call decifra_par
    
    inc %r8
    jmp loop
        
end:
	pop %r12
    pop %r11
    pop %r10
        
    #epilogo
    movq %rbp, %rsp
    popq %rbp
    ret
