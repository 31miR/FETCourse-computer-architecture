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
  #t5-t8 will be used for adresses
  la $t5, number
  lw $t0, 0($t5)
  #Shifting left all except 1 bit and returning back leaves
  #1 as a result if the number is odd
  #0 as a result if the number is even
  sll $t0, $t0, 31
  srl $t0, $t0, 31
  la $t5, result
  sw $t0, 0($t5)
  addi $v0, $0, 0
  jr $ra
