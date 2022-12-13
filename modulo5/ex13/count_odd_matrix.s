.section .text
    .global count_odd_matrix

count_odd_matrix:
	# **m está em %rdi, y está em %esi (linhas), k está em %edx (colunas)
	# PRÓLOGO
	pushq %rbp
	movq %rsp, %rbp

	movl $1,%r8d
	movl $0, %r11d
	movl $0, %eax
	movl $0, %r9d
	movl $0, %r10d

loop:
	movq (%rdi, %r10, 8), %rcx			# m[r10] está em %rcx
	movl (%rcx, %r9, 4), %r11d			# m[r10][r9] está em %r11d
	andl %r8d, %r11d 					# r8d = 1 (binário: 0001), andl %r8d,%r11d = r11d & 1
	
	cmpl $1, %r11d 						# resultado do AND de um número com 1, será 1 caso for ímpar
	je odd_number                      	# caso contrário, é par

	incl %r9d 							# %r9d++
	
	cmpl %r9d, %edx 
	je next_line 
	
	jmp loop 

odd_number:
	incl %eax 							# contador++
	incl %r9d 							# %r9d++
	
	cmpl %r9d, %edx						# fim da linha?
	je next_line
	 
	jmp loop 

next_line:
	movl $0, %r9d
	incl %r10d 							# %r10d++
	
	cmpl %r10d, %esi                   	# já percorreu todas as linhas?
	je end 
	
	jmp loop

end:
	# EPÍLOGO
	movq %rbp, %rsp
	popq %rbp
	
	ret
