.section .text
    .global fun1 
    .global fun2 
    .global fun3 
    .global fun4 

fun1:
	# *s está em %rdi
	# PRÓLOGO
	pushq %rbp
	movq %rsp, %rbp

	movzwl 4(%rdi), %eax			# s->a.x no eax 
	jmp end

fun2:
    # *s está em %rdi
	# PRÓLOGO
	pushq %rbp
	movq %rsp, %rbp
	
    movzwl 20(%rdi), %eax  			# s->z no eax 
    jmp end

fun3:
    # *s está em %rdi
	# PRÓLOGO
	pushq %rbp
	movq %rsp, %rbp
	
    leaq 20(%rdi), %rax  			# address de s->z no rax
    jmp end

fun4:
    # *s está em %rdi
	# PRÓLOGO
	pushq %rbp
	movq %rsp, %rbp
	
    movq 8(%rdi), %rax  		# s->b no rax
    movzwl 4(%rax), %eax  		# s->b->x no eax
	jmp end

end:
	# EPÍLOGO
	movq %rbp, %rsp
	popq %rbp
	
	ret
