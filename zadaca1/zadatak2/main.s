.section .data
.globl number
.globl result
number:
  .word 41
result:
  .word

.section .text
.globl main
main:
 #t5-t8 used for adresses
 la $t5, number
 la $t6, result
 lw $t0, 0($t5)
 #calculate odd or even
 addi $t1, $t0, 0
 sll $t1, $t1, 31
 srl $t1, $t1, 31
 sw $t1, 0($t6)
 #calculate number*22
 addi $t1, $t0, 0
 #22 can be written as 16+4+2 which is binary 10110
 sll $t1, $t1, 1
 addi $t2, $t1, 0
 sll $t1, $t1, 1
 add $t2, $t2, $t1
 sll $t1, $t1, 2
 add $t2, $t2, $t1
 sw $t2, 0($t6)
 #calculate number*7
 addi $t1, $t0, 0
 #7 can be written as 4+2+1 which is binary 111
 addi $t2, $t1, 0
 sll $t1, $t1, 1
 add $t2, $t2, $t1
 sll $t1, $t1, 1
 add $t2, $t2, $t1
 sw $t2, 0($t6)
 #calculate number%8
 addi $t1, $t0, 0
 sll $t1, $t1, 29
 srl $t1, $t1, 29
 sw $t1, 0($t6)
 #calculate number%32
 addi $t1, $t0, 0
 sll $t1, $t1, 27
 srl $t1, $t1, 27
 sw $t1, 0($t6)
 #return 0
 addi $v0, $0, 0
 jr $ra
