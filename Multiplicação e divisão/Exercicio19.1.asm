.data
	valor1:.word 52712
	valor2:.word 34521
.text
	li $v0,1
	lw $t0,valor1
	lw $t1,valor2
	
	
	mul $t2,$t0,$t1
	
	move $a0,$t2
	
	
syscall