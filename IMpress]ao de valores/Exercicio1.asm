.data
	Teste: .asciiz "MARS-linguagem MIPS"
.text
	li $v0,4
	la $a0,Teste

syscall