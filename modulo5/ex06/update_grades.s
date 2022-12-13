.section .data

	.equ GRADES_OFFSET, 4
	.equ ADDRESS_OFFSET, 84
	
.section .text

	.global update_grades

update_grades:
	movq $0,%r8      
	movq $5,%rcx

loop:
	movl (%rsi,%r8,4),%r9d
	movl %r9d,GRADES_OFFSET(%rdi)
	addq $4,%rdi
	incq %r8
	cmpq %r8,%rcx
	je end
	jmp loop

end:
	ret
