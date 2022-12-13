.section .data				
	.global ptrsrc										
	.global num						
	
.section .text
	.global sort_without_reps
	
sort_without_reps:
	movl $0, %eax
	movl $0, %ecx
	movl $0, %edx
	movl $0, %r8d

	movq ptrsrc(%rip), %rcx		# array SRC no RCX
	movslq num(%rip), %r10		# tamanho do array SRC em %r10
	movq $0, %rsi				# i

primeiroFor:
	movq $0, %r11      			# j     
	
	cmpq %rsi, %r10				# compara i com o tamanho do array SRC
	jg segundoFor				# i > tamanho do array, salta para o segundo ciclo for

	jmp end						# chega ao final dos ciclos for (i <= tamanhoDoArray)

segundoFor:
	cmpq %r11, %r10				# compara j com o tamanho do array SRC
	je continua					# se j == tamanho do array, salta para next

	movw (%rcx, %rsi, 2), %ax     # arr[i] guarda no ax
	movw (%rcx, %r11, 2), %dx     # arr[j] guarda no dx

	cmpw %ax, %dx				  # compara arr[i] com arr[j]
	jg trocar_elementos			  # a[i] < a[j] ele vai trocar elementos

	incq %r11                     # j++
	jmp segundoFor				  # volta ao segundo ciclo for com um novo valor de j (mantendo o valor de i)

continua:
	incq %rsi                       # i++
	jmp primeiroFor					# volta ao primeiro ciclo for com um novo valor de i

trocar_elementos:
	movw %ax, (%rcx, %r11, 2)		  # a[j] = a[i]
	movw %dx, (%rcx, %rsi, 2)		  # a[i] = a[j]

	incq %r11						  # j++
	jmp segundoFor  				  # volta ao segundo ciclo

end:
    pushq %rcx							# push serve para guardar os valores atuais dos enderecos enquanto a outra funcao e executada
    pushq %rdx
    pushq %r8
    pushq %r9
    pushq %r10
	pushq %rsi
	pushq %rdi
	call remove_duplicates              # vai preencher um novo array DEST com os valores ordenados pelo presente método, mas retirando os valores repetidos
	popq %rdi
	popq %rsi
	popq %r10
	popq %r9
	popq %r8
	popq %rdx
	popq %rcx							# os pop retomam os valores aos registos
	ret
