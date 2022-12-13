.section .data
    .global op1
    .global op2

.section .text
    .global sum 

sum: 
    movl op1(%rip), %ecx 
    movl op2(%rip), %eax 
    addl %ecx, %eax 
    
    ret

