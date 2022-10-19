.data
msg1 : .asciiz "Enter the first number:"
msg2 : .asciiz "Enter the second number"
msg3 : .asciiz "The sum of these numbers is "
.text
.globl main
main:
addi $v0, $zero, 4
la $a0, msg1
syscall

addi $v0, $zero, 5
syscall

add $s0, $v0, $zero

addi $v0, $zero, 4
la $a0, msg2
syscall

addi $v0, $zero, 5
syscall

add $s1, $v0, $zero

add $s2, $s1, $s0

addi $v0, $zero, 4
la $a0, msg3
syscall

addi $v0, $zero, 1
add $a0, $zero, $s2
syscall

addi $v0, $zero, 10
syscall
.end main