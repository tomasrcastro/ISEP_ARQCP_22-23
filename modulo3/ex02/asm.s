.section .data
	.global ptr1
	.global ptr2
	
.section .text
	.global str_copy_porto
	
str_copy_porto:
	movq ptr1(%rip), %rsi
	movq ptr2(%rip), %rdi
	
loop:
	movb (%rsi), %cl          # move o bit da string 1, para CL
	
	cmpb $'o', %cl            # se esse bit for 'o'
	je str_u
	
	
	movb %cl, (%rdi)          # se nao for nem 'o' nem 'O', escreve esse bit na string 2 (na mesma posicao)
	incq %rdi                 # avanca de bit na string 1
	incq %rsi                 # avanca de bit na string 2
	
	cmpb $0,%cl               # vê se atring chegou ao fim (quando o bit em CL é vazio)
	je end
	
	jmp loop                  # recursivo
	
str_u:
	movb $'u', (%rdi)         # substitui 'o' por 'u'
	incq %rdi                 # avanca de bit na string 1
	incq %rsi                 # avanca de bit na string 2
	jmp loop
	
end:
	ret
