.section .data
    .equ OFFSET, 24

.section .text
    .global return_unionB_b

return_unionB_b:
    # **matrix está em %rdi, i está em %esi, j está em %edx
	# PRÓLOGO
	pushq %rbp
	movq %rsp, %rbp

    movq %rdi, -8(%rbp) 			# matrix está em -8(%rbp)
	movl %esi, -12(%rbp) 			# i está em -12(%rbp)
	movl %edx, -16(%rbp) 			# j está em -16(%rbp)

    movl -12(%rbp), %eax 			# obter o número de linhas i em %eax
	movslq %eax, %rax 				# expandar o %eax para %rax (32-bit para 64-bit)
	leaq 0(,%rax,8), %rdx 			# %rdx = 0 + (8 * %rax) --> matrix[i]
	movq -8(%rbp), %rax  			# matrix in %rax
	addq %rdx, %rax 				# %rax = %rax + %rdx = matrix + (8 * i)
	movq (%rax), %rdx 				# %rdx = *matrix + (8 * i)

	movl -16(%rbp), %eax 			# obter o número de colunas j em %eax
	movslq %eax, %rax 				# expandar o %eax para %rax (32-bit para 64-bit)
    imulq $32, %rax, %rax 			# %rax = %rax * 32 = j * 32 = tamanho da struct A
	addq %rdx, %rax 				# %rax = %rax + %rdx = matrix[i] + j * 32 = matrix[i][j]
	
    movb OFFSET(%rax), %al 			# a partir do OFFSET, obter o char b (8-bit)

end:
	# EPÍLOGO
	movq %rbp, %rsp
	popq %rbp
	
	ret
