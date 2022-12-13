.section .text
	.global proc

proc:
	# PRÓLOGO
	pushq %rbp
	movq %rsp, %rbp
	
	pushq %rbx
	# x1 está em %edi, *p1 está em %rsi
	# x2 está em %edx, *p2 está em %rcx
	# x3 está em %r8w, *p3 está em %r9
	# x4 está em 16(%rbp), *p4 está em 24(%rbp)
	
	addl %edx,(%rsi)		# *p1 = x1 + x2
	
	subl %edi,(%rcx)		# *p2 = x2 - x1
	
	addw %dx,(%r9)          # *p3 = x3 + x2
			
	movsbw 16(%rbp),%bx		# Obtêm se o x4 da stack
	movq 24(%rbp),%rax      # Obtêm se o p4 da stack	
	movw $3, %r11w          # Número 3 no %r11w
	imulw %r11w,%bx         # 3 * x4 em %bx
	movb %bl, (%rax)        # *p4 = x4 * 3		

end:
	popq %rbx
	
	# EPÍLOGO
	movq %rbp, %rsp
	popq %rbp
	
	ret
