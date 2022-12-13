.section .data
    .equ GRADES_OFFSET, 8

.section .text
    .global approved_semester 

approved_semester:
    movw (%rdi), %dx
    movq GRADES_OFFSET(%rdi), %rcx 
    movl $0, %eax 

    loop:
        cmpw $0, %dx 
        je end 

        movw (%rcx), %r8w 
        movw $16, %si 
        movl $0, %r9d
        
    approved:
        cmpw $0, %si
        je next
 

        shrw $1, %r8w 
        adcl $0, %r9d 

        decw %si 

    jmp approved 

    next:
        addq $2, %rcx 
        
        cmpl $10, %r9d 
        jge add

        decw %dx
    
    jmp loop


    

    add:
        incl %eax 
        decw %dx 

    jmp loop 

end:
    ret
