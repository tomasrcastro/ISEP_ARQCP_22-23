.section .text
	.global add_byte
	
add_byte:
	# x está em DIL, *vec1 está em RSI, *vec2 está em RDX
	# PRÓLOGO
	pushq %rbp
	movq %rsp, %rbp
	
	movq $0, %r11
	movl (%rsi),%r11d                  
	movslq %r11d, %rcx                # lenght do array está em RCX
	movl %ecx,(%rdx)                  # ocupar a 1ª posição do array 2 com o lenght
	movq $1, %r10                     # i
	movq $0, %rax
	
	pushq %rbx
	
ciclo_for:
	cmpq %rcx,%r10
	jg end
	
	movl (%rsi,%r10,4), %ebx          # guarda vec1[i] no EBX
	movb %bl, %al                     # bit menos significativo
	addb %dil, %al                    # x + bit menos significativo no AL
	
	movq $0, %r11
	movl $0xFFFFFF00, %r11d           # máscara
	andl %r11d, %ebx                  # retirar o byte menos significativo e deixar o resto igual
	movq $0, %r11
	movsbl %al, %r11d                 # mover com extensão de sinal, o byte menos significativo somado com x para r11d
	
	orl %r11d, %ebx                   # juntar os bits de r11d com ebx
	
	movl %ebx,(%rdx, %r10, 4)         # mover o novo número para vec2, mantendo o index com que estava no vec1
	
	incq %r10                         # i++
	jmp ciclo_for
	
end:
	popq %rbx
	
	# EPÍLOGO
	movq %rbp, %rsp
	popq %rbp
	
	ret
