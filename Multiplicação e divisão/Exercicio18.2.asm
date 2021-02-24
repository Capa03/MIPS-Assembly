.text

	li $v0,1
	
	addi $t0,$zero,189072
	addi $t1,$zero,133
	
	mult $t0,$t1
	
	mflo $a0
syscall