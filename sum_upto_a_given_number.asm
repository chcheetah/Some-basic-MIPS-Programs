# Sum of numbers upto a given range

.data
msg1 : .asciiz "Input the number:"
msg2 : .asciiz "The sum upto said number is:"

.text
.globl main
main:

addi $v0, $zero, 4
la $a0, msg1
syscall

addi $v0, $zero, 5
syscall

add $t0, $v0, $zero # t = v0
add $t1, $zero, $zero
add $s0, $zero, $zero

while:
beq $t1, $t0, endwhile
add $s0, $s0, $t1
addi $t1, $t1, 1
j while

endwhile:
addi $v0, $zero, 4
la $a0, msg2
syscall

addi $v0, $zero, 1
add $a0, $s0, $zero
syscall

addi $v0, $zero, 10
syscall

.end main
