.section .data
	.global num

.section .text
	.global check_num

check_num:
	movl num(%rip), %eax
	movl $2, %ecx
	movl $0, %edx
	
	idivl %ecx

	cmpl $0, %edx
	je even
	jmp odd

even:
	movl num(%rip), %eax
	cmpl $0, %eax
	jge epositivo
	jmp enegativo

odd:
	movl num(%rip), %eax
	cmpl $0, %eax
	jge opositivo
	jl onegativo
	
epositivo:
	movl $6, %eax
	jmp end
	
enegativo:	
	movl $4, %eax
	jmp end

opositivo:
	movl $7, %eax
	jmp end

onegativo:
	movl $5, %eax
	jmp end

end:
	ret	
