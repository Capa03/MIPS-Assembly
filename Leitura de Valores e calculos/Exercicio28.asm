.data
	Cateto1: .float 9.0
	Cateto2: .float 12.0

.text
	#carregar variaveis para os registos
	
	lwc1 $f0,Cateto1
	lwc1 $f2,Cateto2
	
	
	#Teorema de pitagoras
	
	#X ²=9 ²+12 ²
	
	mul.s $f4,$f0,$f0		
	mul.s $f6,$f2,$f2
	
	#X ²=81+144
	
	add.s $f8,$f6,$f4
	
	#X ²=?225
	
	sqrt.s $f12,$f8 #A função sqrt envia o resultado da soma obetida e retorna o resultado da raiz quadrada
	li $v0,2

syscall