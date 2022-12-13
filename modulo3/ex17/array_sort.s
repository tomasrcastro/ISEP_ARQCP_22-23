.section .data
	.global ptrvec
	.global num
	
.section .text
	.global array_sort
	
array_sort:
	pushq %rbx                    # push para puder usar o RBX
	pushq %r12                    # push para puder usar o R12
	
	movq ptrvec(%rip), %rsi
	movslq num(%rip), %rcx
	movq $0, %r8                  # i=0
	
	cmpq $0, %rcx
	jle end
	
primeiro_for:
	movq $0, %r9                  # j=0
	
	cmpq %r8,%rcx                 # compara o i com o num
	jg segundo_for
	
	jmp end
	
segundo_for:
	cmpq %r9, %rcx                # compara o j com o num
	jle continua

	movw (%rsi,%r8,2),%ax         # move para o AX, a posição Arr[i]  
	movw (%rsi,%r9,2),%dx         # move para o DX, a posição Arr[j]
	
	cmpw %ax,%dx                  # compara Arr[i] com Arr[j]
	jl trocar_elementos           # se Arr[j] > Arr[i]
	
	incq %r9                      # j++
	jmp segundo_for
	
trocar_elementos:
	movw %dx,(%rsi,%r8,2)         # vai ao DX (Arr[j]) e mete-o na posição imediatamente anterior
	movw %ax,(%rsi,%r9,2)         # vai ao AX (Arr[i]) e mete-o na posição imediatamente a seguir
	
	incq %r9                      # j++
	jmp segundo_for

continua:
	incq %r8                      # i++
	jmp primeiro_for

end:
	popq %r12                     # pop do R12
	popq %rbx                     # pop do RBX
	ret
