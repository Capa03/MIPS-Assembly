.data
	valor1: .word 121232
	valor2: .word 2343
.text
	li $v0,1
	lw $t0,valor1
	lw $t1,valor2
	
	div $t0,$t1
	
	mflo $a0
syscall
