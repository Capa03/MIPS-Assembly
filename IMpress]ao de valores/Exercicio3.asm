.data
	Caracter: .byte 'T'
.text
	li $v0,4
	la $a0,Caracter

syscall