.section .data
	.global code
	.global currentSalary
	
.section .text
	.global new_salary
	
new_salary:	
	movw currentSalary(%rip), %ax
	movw code(%rip), %cx
	
	movswl %ax, %eax
	movswl %cx, %ecx
	
	cmpl $20, %ecx
	je manager
	
	cmpl $21, %ecx
	je engineer
	
	cmpl $22, %ecx
	je technician
	
	jmp other
	
manager:
	addl $400, %eax
	jmp end

engineer:
	addl $300, %eax
	jmp end

technician:
	addl $200, %eax
	jmp end

other:
	addl $150, %eax
	jmp end
	
end:
	ret
