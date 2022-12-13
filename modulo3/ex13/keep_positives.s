.section .data
	.global ptrvec
	.global num
	
.section .text
	.global keep_positives
	
keep_positives:
	movq ptrvec(%rip), %rsi
	movzwq num(%rip), %rcx
	movw $0, %ax
	
	cmpq $0, %rcx
	jle end
	
arr_loop:
	cmpw $0,(%rsi)               # vê se o short é menor que 0, para ser mudado
	jl negativo
	
	jmp continua
	
negativo:
	movw %ax, (%rsi)             # endereço do número negativo é mudado para (%rsi)
	jmp continua
	
continua:
	addq $2, %rsi                # avança para o proximo short
	incw %ax                     # avança o index
	
	loop arr_loop
	
end:
	ret
