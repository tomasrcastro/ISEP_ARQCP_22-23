.section .text
	.global greatest
	
greatest:
	# A está no EDI, B está no ESI, C está no EDX, D está no ECX
	# PRÓLOGO
	pushq %rbp
	movq %rsp, %rbp
	
	movl %edi, %eax               # Na 1ª instância o A é o maior número
	
	cmpl %esi, %eax               # Compara B com o A
	jl b_ÉOMaior
	
	jmp continua_1
	
b_ÉOMaior:
	movl %esi, %eax               # Caso B>A, B fica no EAX  
	jmp continua_1
	
continua_1:
	cmpl %edx, %eax               # Compara C com o maior (que está em EAX)
	jl c_ÉOMaior
	
	jmp continua_2
	
c_ÉOMaior:
	movl %edx, %eax               # Caso C>maior, C fica no EAX 
	jmp continua_2
	
continua_2:
	cmpl %ecx, %eax               # Compara D com o maior (que está em EAX)
	jl d_ÉOMaior
	
	jmp end
	
d_ÉOMaior:
	movl %ecx, %eax               # Caso D>maior, D fica no EAX 
	jmp end
		
end:
	# EPÍLOGO
	movq %rbp, %rsp
	popq %rbp
	
	ret
