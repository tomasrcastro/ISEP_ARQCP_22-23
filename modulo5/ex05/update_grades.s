.section .data
	.equ GRADES_OFFSET, 4
	
.section .text
	.global update_grades

update_grades:
	# *s está em %rdi, *new_grades está em %rsi
	# PRÓLOGO
	pushq %rbp
	movq %rsp, %rbp
	
	movq $0, %r8                      # i
	movq $5, %rcx                     # lenght do array new_grades
	
loop:
	movl (%rsi,%r8,4),%r9d            # 4 --> array é de inteiros
	movl %r9d,GRADES_OFFSET(%rdi)
	addq $4,%rdi
	incq %r8
	
	cmpq %r8,%rcx
	je end
	
	jmp loop
	
end:
	# EPÍLOGO
	movq %rbp, %rsp
	popq %rbp
	
	ret
