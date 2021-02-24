.data
	Diametro: .float 8.0
	Raio: .float 4.0
	Altura: .float 19.0
	PI: .float 3.14
	dois: .float 2.0
	Area: .asciiz " A Area do recipiente é: "
	Volume: .asciiz " o volume do Volume é: "
.text
	li $v0,2
	
	lwc1 $f0,Diametro
	lwc1 $f2,Raio
	lwc1 $f4,Altura
	lwc1 $f6,PI
	lwc1 $f14,dois
	
	syscall
	
	#area do cilirculo
	
	mul.s $f8,$f2,$f2 #multiplica duas vezes o raio
	mul.s $f10,$f6,$f8 #multiplica PI * r2
	
	#Reatangulo
	mul.s $f8,$f0,$f4 #area do retangulo
	mul.s $f16,$f10,$f14 #2 X a base do circulo
	
	#Area_Total
	li $v0,4
	la $a0,Area
	syscall
	
	li $v0,2
	add.s $f12,$f16,$f8 
	syscall
	
	#Volume
	li $v0, 4
	la $a0,Volume
	syscall
	
	li $v0, 2
	mul.s $f12,$f10,$f4# area do circulo * altura
	
	
	
syscall