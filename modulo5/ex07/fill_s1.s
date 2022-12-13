.section .text
	.global fill_s1
	
fill_s1:
	# *s está em %rdi, vi está em %esi, vc está em %dl, vj está em %ecx, vd está em %r8b
	# PRÓLOGO
	pushq %rbp
	movq %rsp, %rbp
	
	movq %rdi, %rax			# Move the address of the s1 struct into rax 
	movb %dl, (%rax)		# Move the character value (vc) into the first field of the s1 struct
	movl %esi, 4(%rax)		# Move the integer value (vi) into the second field of the s1 struct
	movb %r8b, 8(%rax)		# Move the character value (vd) into the third field of the s1 struct
	movl %ecx, 12(%rax)		# Move the integer value (vj) into the fourth field of the s1 struct
		
end:
	# EPÍLOGO
	movq %rbp, %rsp
	popq %rbp
	
	ret
