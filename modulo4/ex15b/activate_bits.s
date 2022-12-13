.section .text
	.global activate_bits
	
activate_bits:
	# a está em EDI, left está em ESI, right está em EDX
	# PRÓLOGO
	pushq %rbp
	movq %rsp, %rbp
	
	pushq %rbx
	
	movl $0, %eax
	
	movl %edx, %ebx          # EBX = right
	movl $0, %ecx            # i
	
ladoDireito:
	cmpl %ecx, %ebx          # ciclo for enquanto i<right
	je continua
	
	shll %eax                # shifts o eax uma posiçao para a esquerda
	incl %eax
	incl %ecx
	
	jmp ladoDireito
	
continua:
	orl %eax, %edi           # edi = edi OR eax
	movl $0, %eax
	
	movl $31, %ebx
	subl %esi, %ebx          # 31 - left
	movl $0, %ecx            # i
	
ladoEsquerdo:
	cmpl %ecx, %ebx         
	je end
	
	incl %eax
	rorl %eax                # bit rotation to the left
	incl %ecx
	
	jmp ladoEsquerdo
	
end:
	orl %edi, %eax
	popq %rbx
	
	# EPÍLOGO
	movq %rbp, %rsp
	popq %rbp
	
	ret
