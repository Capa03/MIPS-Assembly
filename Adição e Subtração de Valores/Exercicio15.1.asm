.data
	Valor1: .word 300
	Valor2: .word 23
	Valor3: .word -144
	
.text
	li $v0,1
	lw $t0,Valor1
	lw $t1,Valor2
	lw $t2,Valor3
	
	
	sub $t3,$t0,$t1
	sub $a0,$t3,$t2
	
	
syscall