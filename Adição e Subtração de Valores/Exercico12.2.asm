.data
	Valor1: .word 100
	Valor2: .word 25
	Valor3: .word 55
.text
	li $v0,1
	lw $t0,Valor1
	lw $t1,Valor2
	lw $t2,Valor3
	
	add $t3,$t0,$t1
	
	add $t4,$t3,$t2
	
	move $a0,$t4
syscall