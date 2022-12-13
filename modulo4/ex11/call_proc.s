.section .text
	.global call_proc
	
call_proc:
	# a está em EDI, b está em ESI, c está em DX, d está em CL
	# PRÓLOGO
	pushq %rbp
	movq %rsp, %rbp
	
	# para chamar a função proc temos que colocar os parâmetros por ordem, ou seja:
	# a está em %edi, *p1 está em %rsi
	# b está em %edx, *p2 está em %rcx
	# c está em %r8w, *p3 está em %r9
	# d está em 16(%rbp), *p4 está em 24(%rbp)
	
	subq $32, %rsp	              # alocar espaço para os parâmetros

	movl %edi, -8(%rbp)	
	movl %esi, -16(%rbp)	
	movw %dx, -24(%rbp)	    
	movb %cl, -32(%rbp)	    

	movl -8(%rbp), %edi          # x1 em %edi
	movl -16(%rbp), %edx         # x2 em %edx
	movw -24(%rbp), %r8w         # x3 em %r8w
	movb -32(%rbp), %r10b        # x4 em %r10b
	
	leaq -8(%rbp), %rsi          # *p1 em %rsi
	leaq -16(%rbp), %rcx         # *p2 em %rcx
	leaq -24(%rbp), %r9          # *p3 em %r9
	leaq -32(%rbp), %r11         # *p4 em %r11

	pushq %r11                   # argumento 8 --> *p4
	pushq %r10                   # argumento 7 --> x4
	call proc
	addq $16, %rsp               # limpar os argumentos 7 e 8
	
	movswl -24(%rbp), %eax       # x3 em %eax
	movsbl -32(%rbp), %ecx       # x4 em %ecx
	subl %ecx, %eax              # x3 - x4 em %eax
	
	movl -8(%rbp), %ecx          # x1 em %ecx
	addl -16(%rbp), %ecx         # x2 + x1 em ECX
	
	imul %ecx, %eax              # (x2 + x1) * (x3 - x4)

end:
	# EPÍLOGO
	movq %rbp, %rsp
	popq %rbp
	
	ret
