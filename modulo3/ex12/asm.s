.section .data
	.global ptrvec
	.global num
	
.section .text
	.global vec_zero
	
vec_zero:
	movl $0, %eax
	movl $0, %ecx
	movl $0, %edx
	
	movq ptrvec(%rip), %rdi
	movl num(%rip), %ecx
	
loop:
	cmpl $0, %ecx
	je end
	
	cmpl $100, (%rdi)
	jl incr
	
	movl $0, (%rdi)
	incl %eax
	
	addq $4, %rdi
	decl %ecx
	jmp loop
	
incr:
	addq $4, %rdi
	decl %ecx
	jmp loop
	
end:
	ret
