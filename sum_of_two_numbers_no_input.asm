# Sum of 2 numbers

# part one : defined in the data segment


.data

n1 : .word 23
n2 : .word 24
n3 : .space 4

.text
.globl main
main:
lw $s0, n1
lw $s1, n2
add $s2, $s1, $s0
sw $s2, n3

addi $v0, $zero, 1
add $a0, $zero, $s2
syscall
addi $v0, $zero, 10
syscall
.end main