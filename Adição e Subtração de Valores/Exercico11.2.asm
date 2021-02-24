.data
	Valor1: .word 500
	Valor2: .word 250
.text
	li $v0,1
	lw $t0,Valor1
	lw $t1,Valor2
	
	add $t2,$t0,$t1
	
	move $a0,$t2
syscall