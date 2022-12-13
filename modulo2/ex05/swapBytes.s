.section .data
	.global s                       # short

.section .text
	.global swapBytes               # short

swapBytes:
	movw s(%rip),%dx			    # Move s(variável global) para um endereço de 16bits, 'DX'
	movb %dl, %ah				    # Mover o byte menos significativo (mais à direita) para AH
	movb %dh, %al				    # Mover o byte mais significativo (mais à esquerda) para AL
	
	addb %al, %al                   # O byte menos significativo tem de ser o dobro do valor do anterior byte 
	                                # mais significativo
	                                
	ret                             # Retorna o AX (que engloba o AH e o AL)
