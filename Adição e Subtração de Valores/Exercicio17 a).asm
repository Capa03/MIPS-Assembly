.data
	valor1: .word 100
	valor2:	.word 25
	valor3:	.word 25
.text
	li $v0,1
	lw $s0,valor1
	lw $s1,valor2
	lw $s2,valor3
	
	sub $s3,$s1,$s2
	sub $s4,$s0,$s3
	move $a0,$s4
syscall	
