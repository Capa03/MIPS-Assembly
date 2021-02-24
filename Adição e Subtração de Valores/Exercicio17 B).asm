.data
	a: .word 500
	B: .word -500
	c: .word -1000
	e: .word 500

	
.text
	li $v0,1
	lw $s0, a
	lw $s1, B
	lw $s2, c
	lw $s4, e
	
	
	
	sub $s4,$s0,$s1 
	sub $s7,$s1,$s2 
	
	add $s3,$s4,$s7	
	
	sub $s5,$s4,$s3
	
	move $a0,$s5
syscall	
