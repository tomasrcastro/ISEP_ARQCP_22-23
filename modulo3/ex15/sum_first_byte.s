.section .data
	.global ptrvec
	.global num
	
.section .text
	.global sum_first_byte
	
sum_first_byte:
	pushq %rbx                  # usar o RBX pq não havia mais registos para depois guardar 16 bits
	movq ptrvec(%rip), %rsi     
	movl $0, %eax               # vai armazenar a soma
	movslq num(%rip),%rcx
	
	cmpq $0, %rcx
	jle end
	
arr_loop:
	movq (%rsi), %rbx           # move o long para RBX
	movsbl %bl, %edx            # bit menos significativo para EDX com extensão de SINAL
	addl %edx, %eax             # soma o EDX (bit menos sig.) com o EAX
	addq $8, %rsi               # avança para o próximo long do array
	
	loop arr_loop
					
end:
	popq %rbx
	ret
