.section .data
	.global current
	.global desired
	
.section .text
	.global needed_time
	
needed_time:	
	movb current(%rip), %al
	movb desired(%rip), %cl
	
	movsbl %al, %eax
	movsbl %cl, %ecx
	
	cmpl %ecx, %eax
	jg lowTemperature            #current maior que desired
	jl riseTemperature           #current menor que desired 
	je equal
	
lowTemperature:
	subl %ecx,%eax
	movl $240, %ecx              # 4 minutos = 240 segundos
	imull %ecx             
	jmp end

riseTemperature:
	subl %eax,%ecx
	movl $180, %eax              # 3 minutos = 180 segundos
	imull %ecx              
	jmp end

equal:
	movl $0, %eax
	jmp end

end:
	ret                          # retorna EAX
