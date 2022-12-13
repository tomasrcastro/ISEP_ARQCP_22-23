.section .data
	
 s1: 
	.short 0xAABB

 s2:
	.short 0x5DDD
		
	.global s1
	.global s2	
	
.section .text
	.global crossSumBytes
	
crossSumBytes:

	movw s1(%rip), %ax
	movw s2(%rip), %cx	
	
	addb %ch, %al
	addb %cl, %ah
	
	
	ret
