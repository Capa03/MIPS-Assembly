.data
	Caract_Num: .byte '8'
.text
	li $v0,4
	la $a0,Caract_Num

syscall