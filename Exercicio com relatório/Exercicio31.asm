.data
	Area: .asciiz "A area da Bola é: "
	Volume: .asciiz " O volume  da Bola é: "
	Raio: .asciiz " O raio da Bola é: "
	Diametro: .float 12.0
	Dois: .float 2.0
	PI: .float 3.14
	Tres: .float 3.0
	quatro: .float 4.0
.text
	li $v0,2
	lwc1 $f0,Diametro
	lwc1 $f2,Dois
	lwc1 $f4,PI
	lwc1 $f6,Tres
	lwc1 $f8,quatro
	
	syscall
	
	#Calculo do Raio
	
	li $v0,4
	la $a0,Raio
	syscall
	
	li $v0,2
	div.s $f10,$f0,$f2
	mov.s $f12,$f10
	syscall
	
	#calculo da Area 
	
	li $v0,2
	la $a0,Area
	syscall
	
	mul.s $f14,$f10,$f2 #Raio quadrado
	mul.s $f16,$f8,$f4 #4*PI
	li $v0,2
	mul.s $f12,$f14,$f16 
	
	
	#calulo Volume 
	li $v0,4
	la $a0,Volume
	syscall
	div.s $f18,$f8,$f6 #4/3
	
	mul.s $f16,$f14,$f10 #Raio ao cubo
	
	mul.s $f14,$f18,$f4 #4/3*PI
	
	li $v0,2
	mul.s $f12,$f14,$f16
		
syscall