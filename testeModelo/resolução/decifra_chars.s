.section .text
    .global decifra_par
    
decifra_par:
    # número está em %di, chave está em %si, *c1 está em %rdx, *c2 está em %rcx

    movq $0, %rax
    movw %di, %ax              # Move the value of numero to %ax
    xorw %si, %ax              # Apply XOR to numero
    movb %ah, (%rdx)           # Mais significativo
    movb %al, (%rcx)           # Menos significativo
                  
end:
    ret
