.section .text

    .global reset_bit
    
    .global reset_2bits

reset_bit:

    movl (%rdi), %eax 
     
    movl $1, %edx      
    movb %sil, %cl
    shrl %cl, %eax 
    andl %edx, %eax 
     
    cmpl $1, %eax    
    je next 
          
    movl $0, %eax  
       
    jmp end          

next:

    shll %cl, %edx 
    notl %edx 
    andl %edx, (%rdi) 
    
    movl $1, %eax
       
    jmp end          

end:

    ret          

reset_2bits:

	call reset_bit 
        
    movl $31, %eax 
    subl %esi, %eax 
    movl %eax, %esi 
        
    call reset_bit
