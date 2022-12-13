.section .data
 .global A
 .global B
 

.section .text
 .global isMultiple        # char isMultiple(void)
 
 
isMultiple:

 movl A(%rip), %eax
 cltd
 
 movl B(%rip), %ecx
 cmpl $0, %ecx
 
 je dNull
 
 idivl %ecx
 cmpl $0, %edx
 
 je  Mult
 
 movl $0, %eax
 jmp end

dNull:
 movl $0,%eax
 jmp end
	
Mult:
 movl $1, %eax
 jmp end
 
end:
 ret