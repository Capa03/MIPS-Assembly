.data
	PI: .float 3.14
	Raio: .asciiz " Introduza a raio: "
	Resposta_area: .asciiz " A area é: "
	Perimetro: .asciiz " O perimetro é: "
	dois: .float 2.0
	
.text
	
	lwc1 $f2,PI
	lwc1 $f8,dois
	
	#Raio
	li $v0,4
	la $a0,Raio
	syscall
	
	li $v0,6
	syscall
	
	mov.s $f4,$f0
	
	
	#area
	
	li $v0,4
	la $a0,Resposta_area
	syscall
	
	li $v0,2
	mul.s $f6,$f4,$f4# raioX2
	mul.s $f12,$f6,$f2
	syscall
	#perimetro
	
	li $v0,4
	la $a0,Perimetro
	syscall
	
	li $v0,2
	mul.s $f10,$f2,$f8 #pi x2
	mul.s $f12,$f10,$f4 #
	
		
syscall