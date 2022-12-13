.section .data
	.global ptrvec
	.global num

.section .text
	.global vec_sum

vec_sum:
	movq ptrvec(%rip), %rsi      # mover o primeiro long para RSI  
	movq $0, %rax                # RAX = soma do vetor
	movswq num(%rip), %rcx   
	
	cmpq $0, %rcx
	jle end

soma_loop:
	movslq (%rsi), %rdx          # mover com extensão do SINAL para RDX
	addq %rdx, %rax              # adiciona o RDX a RAX
	addq $8, %rsi                # avança para o próximo long
	loop soma_loop               # volta à soma loop
	
end:
	ret
