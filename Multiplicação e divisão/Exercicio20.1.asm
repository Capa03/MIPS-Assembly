.text
	li $v0,1
	addi $t0,$zero,34562
	addi $t1,$zero,123
	
	div $a0,$t0,$t1
	
syscall
	
	