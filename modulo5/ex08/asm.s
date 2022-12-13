.section .data

    # offset para c
    .equ C_OFFSET0, 0
    .equ C_OFFSET1, 1
    .equ C_OFFSET2, 2
    
    # offset para w
    .equ W_OFFSET0, 4
    .equ W_OFFSET1, 6
    .equ W_OFFSET2, 8
    
    # offset para j
    .equ J_OFFSET1, 12 

.section .text
    .global fill_s2

fill_s2:

	#s -> c
    movb (%rcx), %al 
    movb %al, C_OFFSET0(%rdi)
    movb 1(%rcx), %al
    movb %al, C_OFFSET1(%rdi)
    movb 2(%rcx), %al
    movb %al, C_OFFSET2(%rdi)
    
    
	#s -> w
    movw (%rsi), %ax
    movw %ax, W_OFFSET0(%rdi)
    movw 2(%rsi), %ax
    movw %ax, W_OFFSET1(%rdi)
    movw 4(%rsi), %ax
    movw %ax, W_OFFSET2(%rdi)
    

	#s -> j
    movl %edx, J_OFFSET1(%rdi)
    
    ret
