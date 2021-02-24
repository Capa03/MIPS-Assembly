.data
	valor1: .word 189072
	valor2: .word 133
.text
	li $v0,1
	lw $t0,valor1
	lw $t1,valor2
	
	mult $t0,$t1
	
	mflo $a0
syscall