.section .data
	.global A                     # 4 bytes - long
	.global B                     # 2 bytes - word
	.global C                     # 1 byte - byte
	.global D                     # 1 byte - byte
	
.section .text
	.global sum_and_subtract
	
sum_and_subtract:
	
	movl A(%rip), %eax
	movsbl C(%rip),%ecx           # faz a extensão de 1 para 4 bytes, mantendo o sinal
	
	addl %ecx,%eax                # faz A+C e guarda no EAX
	
	movsbl D(%rip), %edx          # faz a extensão de 1 para 4 bytes, mantendo o sinal
	
	subl %edx, %eax               # faz (A+C)-D e guarda no EAX
	
	movswl B(%rip), %ecx          # faz a extensão de 2 para 4 bytes, mantendo o sinal
	
	addl %ecx, %eax               # faz ((A+C)-D)+B e guarda no EAX
	
	movslq %eax, %rax             # faz a entensão de 4 para 8 bytes, mantendo o sinal
	
	ret                           # retorna rax
