.section .data

	.equ GRADES_OFFSET, 4

.section .text

	.global locate_greater

locate_greater:

	movq $5,%rcx
	movq $0, %rax

arr:

	cmpq $0, GRADES_OFFSET(%rdi)
	je end

	cmpl %esi, GRADES_OFFSET(%rdi)
	jg pos

	addq $4, %rdi

	loop arr
	jmp end

pos:

	incl %eax
	movl GRADES_OFFSET(%rdi), %r8d
	movl %r8d, (%rdx)

	addq $4, %rdi
	addq $4, %rdx

	loop arr

end:
	ret
