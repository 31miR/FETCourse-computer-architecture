.section .text
.globl main
main:
  #make a number with 0 bits on 0th, 14th, 27th, and 31st bit place
  ori $t1, $0, 0x77FF
  sll $t1, $t1, 16
  ori $t1, $t1, 0xBFFD
  #andi our number with $t0 to reset the bits
  addi $v0, $0, 0
  jr $ra
