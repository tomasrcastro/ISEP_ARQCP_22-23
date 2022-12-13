.section .data

.section .text

	.global incr              
	.global call_incr  
 
incr:                            #start of the first function

	pushq %rbp
	movq %rsp, %rbp 
	          
	subq $16, %rsp 
	

	movswl (%rdi), %r8d   
	movl %r8d,-8(%rbp)   
	movl -8(%rbp), %edx   
	movsbl %sil, %ecx   
	addl %ecx, -8(%rbp)
	movl -8(%rbp), %edx	
	movl %edx, -16(%rbp)   
	movl -16(%rbp), %eax   
	

	movq %rbp, %rsp
	popq %rbp
	ret

call_incr:                           #function to call the first one

	pushq %rbp 
	movq %rsp, %rbp 
	
	subq $16, %rsp   

				
	addw $3, %di   	
	movw %di, -8(%rbp)   
	leaq -8(%rbp), %rdi  
	movb $0xC3, %sil    
	
	
	pushq %rdx  
	pushq %rcx   
	pushq %rax  
	pushq %r8  
	
	    
	addq $16, %rbp 
	  
	call incr   
	     
	subq $16, %rbp         
	movl %eax, -16(%rbp)   
	
	 
	popq %r8                 
	popq %rax                
	popq %rcx                
	popq %rdx 
	
	               
	movswl -8(%rbp), %eax     
	movl -16(%rbp), %r8d      
	addl %r8d, %eax	       
	

	movq %rbp, %rsp 
	popq %rbp
	 
	ret   #end
