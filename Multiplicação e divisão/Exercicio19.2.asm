.text
	li $v0,1
	addi $t0,$zero,52712
	addi $t1,$zero,34521
	
	mul $t2,$t0,$t1
	add $a0,$zero,$t2

syscall