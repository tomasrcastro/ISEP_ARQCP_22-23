.section .data
	.global ptr1
	.global ptr2
	.global ptr3
	
.section .text

	.global str_cat
	
str_cat:

	movl $0, %eax
	movl $0, %ecx
	movl $0, %edx
	
	
	movq ptr1(%rip), %rdi
	movq ptr2(%rip), %rsi
	movq ptr3(%rip), %rax
	
loop1:

	movb (%rdi), %cl
	movb %cl, (%rax)
	cmpb $0, %cl
	
	je loop2
	
	incq %rdi
	incq %rax
	
	jmp loop1

loop2:

	movb (%rsi), %dl
	movb %dl, (%rax)
	cmpb $0, %dl
	
	je end
	
	incq %rsi
	incq %rax
	jmp loop2
	
end:
	ret
