.data
	Valor1: .float 12.3
	Valor2: .float 5.6
	Valor3: .float 5.1
.text
	li $v0,2
	lwc1 $f0,Valor1
	lwc1 $f2,Valor2
	lwc1 $f4,Valor3
	
	add.s $f6,$f0,$f2
	
	add.s $f8,$f6,$f4
	
	mov.s $f12,$f8
	
syscall