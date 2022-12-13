.section .data 

	.global ptr1
	.global ptr2
	.global num
	
.section .text
		
	.global swap

swap:

	movq ptr1(%rip), %rdi
	movq ptr2(%rip), %rsi
	movl num(%rip), %eax
	
func:

	cmpl $0, %eax
	je end
	
	movb (%rdi), %cl
	movb (%rsi), %dl
	
	
	movb %cl, (%rsi)
	movb %dl, (%rdi)
	decl %eax
	incq %rdi
	incq %rsi
	jmp func
	
end:

	ret
	
