# number is even or odd

.data
msg1 : .asciiz "Enter a number:"
msg2 : .asciiz "Number is even"
msg3 : .asciiz "Number is not even"

.text
.globl main
main:

addi $v0, $zero, 4
la $a0, msg1
syscall

addi $v0, $zero, 5
syscall

add $s0 , $v0, $zero

addi $t0, $zero, 2
div $s0, $t0
mfhi $t1
beq $t1, $zero, prime
addi $v0, $zero, 4
la $a0, msg3
syscall
j endme
prime:
addi $v0, $zero, 4
la $a0, msg2
syscall
endme:
addi $v0, $zero, 10
syscall

.end main