.data
	
	valor1:.word 560
	valor2:.word 560
	valor3:.word 280
	valor4:.word 280
.text
	li $v0,1
	lw $s1,valor1#g
	lw $s2,valor2#h
	lw $s3,valor3#i
	lw $s4,valor4#j
	
	
	add $t0,$s1,$s2
	
	add $t1,$s3,$s4
	
	sub $s0,$t0,$t1
	
	move $a0,$s0
syscall
	
	
