.data 
	A: .float 6.0
	B: .float 4.0
	C: .float 2.0
	AB: .asciiz "O valor de AB é: "
	AC: .asciiz "O valor de AC é: "
	CB: .asciiz "O valor de CB é: "
	Area_total: .asciiz "O valor da area total é: "
	Volume: .asciiz "o valor do Volume é: "
	Perimetro: .asciiz "o valor do perimetro é: "
	quatro: .float 4.0
	dois: .float 2.0
	seis: .float 6.0
.text
	
	li $v0,2
	
	lwc1 $f0,A
	lwc1 $f2,B
	lwc1 $f4,C
	lwc1 $f16,quatro
	lwc1 $f18,dois
	lwc1 $f20,seis
	syscall
	
	#AB
	li $v0,4
	la $a0,AB
	syscall
	
	li $v0,2
	mul.s $f12,$f0,$f2
	syscall
	
	#AC
	li $v0,4
	la $a0,AC
	syscall
	
	
	mul.s $f12,$f0,$f4
	li $v0,2
	syscall
	
	#CB
	li $v0,4
	la $a0,CB
	syscall
	
	
	mul.s $f14,$f4,$f2
	mov.s $f12,$f14
	li $v0,2
	syscall
	
	#Area Total
	li $v0,4
	la $a0,Area_total
	syscall
	
	add.s $f6,$f2,$f2 # b+b
	add.s $f8,$f4,$f4 # c+c
	
	add.s $f10,$f8,$f6 #bb+cc
	
	
	mul.s $f6,$f10,$f0 #a+a+b+b*a
	
	mul.s $f10,$f14,$f18 #CB*2
	
	add.s $f12,$f6,$f10 #resultado de CB*2 + a+a+b+b*a
	
	
	li $v0,2
	syscall
	
	#volume
	li $v0,4
	la $a0,Volume
	syscall
	
	li $v0,2
	mul.s $f6,$f0,$f2
	mul.s $f12,$f6,$f4
	syscall
	
	#Perimetro
	
	li $v0,4
	la $a0,Perimetro
	syscall
	
	mul.s $f6,$f0,$f18 #a*2 
	mul.s $f10,$f20,$f2 #b*6
	mul.s $f14,$f16,$f4#c*4
	
	add.s $f8,$f6,$f10 # resultado de a*2 + b*6
	
	li $v0,2
	add.s $f12,$f14,$f8 # resultado de a*2 + b*6 + c*4
	
syscall
