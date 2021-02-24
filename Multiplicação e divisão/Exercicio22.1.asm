.text
	li $v0,1
	addi $t0,$zero,50003
	addi $t1,$zero,1000
	
	div $t0,$t1
	
	mfhi $a0
syscall