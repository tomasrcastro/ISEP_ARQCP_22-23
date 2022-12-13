.section .text

	.global reset_bit
	
reset_bit:

	movl %esi, %ecx
	incl %ecx
	movl $0, %eax
	movl (%rdi), %r8d
	rcrl %ecx, %r8d
	
	jc is_one
	jmp end

is_one:

	movl $1, %eax
	xorl $0, %r8d
	rcl %ecx, %r8d
	movl %r8d, (%rdi)
	
end:

	ret
	
	
	
