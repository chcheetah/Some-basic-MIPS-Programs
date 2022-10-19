.data

msg1 : .asciiz "Hello world"

.text
.globl main
main:
addi $v0, $zero, 4
la $a0, msg1
syscall

addi $v0, $zero, 10
syscall

.end main