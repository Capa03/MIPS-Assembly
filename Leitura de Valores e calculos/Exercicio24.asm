.data
	Comprimento: .asciiz " Itroduza o comprimento: "
	Largura: .asciiz " Introduza a Largura: "
	Resposta_area: .asciiz " A area é: "
	Resposta_Perimetro: .asciiz " O perimetro é"
	zero: .float 0.0
	dois: .float 2.0
	
.text
	
	lwc1 $f2,zero
	lwc1 $f8,dois
	
	#comprmiento
	li $v0,4
	la $a0,Comprimento
	syscall
	
	li $v0,6
	syscall
	
	add.s $f4,$f2,$f0
	
	#largura
	
	li $v0,4
	la $a0,Largura
	syscall
	
	li $v0,6
	syscall
	
	add.s $f6,$f2,$f0
	
	
	
	#area
	
	li $v0,4
	la $a0,Resposta_area
	syscall
	
	li $v0,2
	mul.s $f12,$f4,$f6
	syscall
	#perimetro
	
	li $v0,4
	la $a0,Resposta_Perimetro
	syscall
	
	li $v0,2
	mul.s $f10,$f6,$f8
	mul.s $f14,$f4,$f8
	
	add.s $f12,$f10,$f14
		
syscall