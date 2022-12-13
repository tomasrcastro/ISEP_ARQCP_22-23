.section .data

	.equ ADDRESS_OFFSET, 84
	
.section .text

	.global update_address

update_address:

	cmpb $0, (%rsi)
	je end

	movb (%rsi), %al
	movb %al, ADDRESS_OFFSET (%rdi) # permite mudar o desejado

	incq %rdi
	incq %rsi
	jmp update_address

end:

	movb $0, ADDRESS_OFFSET(%rdi)
	ret
