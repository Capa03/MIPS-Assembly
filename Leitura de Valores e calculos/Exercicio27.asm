.data
	Valor_Real: .asciiz "Introduza um valor real: "
	Dobro: .asciiz " O dobro é: "
	Metade: .asciiz " A Metade é: "
	Quadrado: .asciiz " O Quadrado é: "
	Raiz_quadrada: .asciiz " A raiz quadrada é: "
	zero: .float 0.0
	dois: .float 2.0
.text
	lwc1 $f2,dois
	lwc1 $f4,zero
	
	#Valor Real
	li $v0,4
	la $a0,Valor_Real
	syscall
	
	li $v0,6
	syscall
	
	add.s $f6,$f4,$f0
	#Dobro 
	li $v0,4
	la $a0,Dobro
	syscall
	
	
	mul.s $f12,$f6,$f2
	li $v0,2
	syscall
	
	#metade
	li $v0,4
	la $a0,Metade
	syscall
	
	
	div.s $f12,$f6,$f2
	li $v0,2
	syscall
	#quadrado
	li $v0,4
	la $a0,Quadrado
	syscall
	
	
	mul.s $f12,$f6,$f6
	li $v0,2
	syscall
	
	#Raiz_quadrada
	li $v0,4
	la $a0,Raiz_quadrada
	syscall
	
	li $v0,2
	sqrt.s $f12,$f6
	
	
syscall