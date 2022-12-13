.section .text
	.global greater_date
	
greater_date:
	# date1 está em EDI, date2 está em ESI
	# PRÓLOGO
	pushq %rbp
	movq %rsp, %rbp
	
	movl %edi, %r10d
	movl %esi, %r11d
	
	# ANO
	shrl $8, %r10d              # equivalente a >> em C
	shrl $8, %r11d
	
	cmpw %r10w, %r11w
	jl date1Maior
	jg date2Maior
	
	movl %edi, %r10d            # repor
	movl %esi, %r11d
	
	# MÊS
	shrl $24, %r10d
	shrl $24, %r11d
	
	cmpb %r10b, %r11b
	jl date1Maior
	jg date2Maior
	
	movl %edi, %r10d           # repor
	movl %esi, %r11d
	
	# DIA
	cmpb %r10b, %r11b
	jl date1Maior
	jg date2Maior
	
date1Maior:
	movl %edi, %eax
	jmp end

date2Maior:
	movl %esi, %eax
	jmp end
	
end:
	# EPÍLOGO
	movq %rbp, %rsp
	popq %rbp
	
	ret
