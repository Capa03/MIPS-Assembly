.data
	Nome: .asciiz "David"
.text
	li $v0,4
	la $a0,Nome

syscall