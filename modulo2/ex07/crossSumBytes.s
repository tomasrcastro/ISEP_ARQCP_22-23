.section .data
    .global s1
    .global s2

.section .text
    .global crossSumBytes
    
crossSumBytes:
	movw s1(%rip), %ax
	movw s2(%rip), %cx
	
	addb %cl, %ah          # mais significativo de s1 + menos significativo de s2 --> guarda no AH
	addb %ch, %al          # mais significativo de s2 + menos significativo de s1 --> guarda no AL
	
	ret                    # retorna AX
