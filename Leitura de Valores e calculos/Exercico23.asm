.data
	Nome: .asciiz "Introduza o nome: "
	Altura: .asciiz "Introduza a Altura: "
	Peso: .asciiz "Introduza a Peso: "
	Resposta: .asciiz "O seu IMC é: "
	zero: .float 0.0
.text
	lwc1 $f4,zero
	#Nome
	li $v0,4
	la $a0,Nome
	syscall
	#input nome
	li $v0,8
	la $a1,25
	syscall
	
	move $t0,$a0
	
	#Altura
	
	li $v0,4
	la $a0,Altura
	syscall
	
	li $v0,6
	syscall
	
	add.s $f2,$f4,$f0
	
	#Peso
	
	li $v0,4
	la $a0,Peso
	syscall
	
	li $v0,6
	syscall
	
	add.s $f6,$f4,$f0
	
	
	#respsota
	li $v0,4
	la $a0,($t0)
	
	syscall
	li $a0,4
	la $a0,Resposta
	syscall

	
	#conta
	li $v0,2
	syscall
	
	mul.s $f8,$f2,$f2
	
	div.s $f12,$f6,$f8
syscall
	
	
	