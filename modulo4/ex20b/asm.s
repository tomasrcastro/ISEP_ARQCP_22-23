.section .text
	.global sum_multiples_x

sum_multiples_x:

	movl $255, %eax
	shll $8, %eax 
	andl %eax, %esi
	sarl $8, %esi 

	movl $0, %ecx
	movb %sil, %cl

	movl $0, %r8d 

	jmp loop_begin

loop_begin:

	cmpb $0, (%rdi)
	je end

	movb (%rdi), %al
	cbw 

	idivb %cl

	cmpb $0, %ah
	je sum_
	jne next


sum_:
	addb (%rdi), %r8b
	jmp next

next:
	incq %rdi
	jmp loop_begin

end:
	movl %r8d, %eax
	ret
