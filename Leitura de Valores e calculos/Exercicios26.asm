.data	
	Largura: .asciiz "Introduza a largura do retangulo: "
	Altura: .asciiz "Introduza a Altura do retangulo: "
	Comprimento: .asciiz "Introduza o Comprimento do retangulo: "
	zero: .float 0.0
	Resposta1: .asciiz "A piscina tem:"
	Resposta2: .asciiz " metros cubicos"
.text
	lwc1 $f2,zero
	#largura
	li $v0,4
	la $a0,Largura
	syscall
	
	li $v0,6
	syscall
	
	add.s $f4,$f2,$f0
	
	#Altura
	li $v0,4
	la $a0,Altura
	syscall
	
	li $v0,6
	syscall
	
	add.s $f6,$f2,$f0
	
	#Comprimanto
	li $v0,4
	la $a0,Comprimento
	syscall
	
	li $v0,6
	syscall
	
	add.s $f8,$f2,$f0
	
	#Resposta Volume
	
	li $v0,4
	la $a0,Resposta1
	syscall
	
	#Calculos
	li $v0,2
	mul.s $f10,$f4,$f6
	
	mul.s $f12,$f10,$f8
	
	syscall
	
	#resposta2
	li $v0,4
	la $a0,Resposta2
syscall