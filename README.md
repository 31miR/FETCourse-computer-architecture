# FETCourse-computer-architecture
This is a repository with homework and other stuff related to the "Computer architecture"
course on the Faculty of Electrical Engineering, University of Tuzla. Notice that the folder and file names
are in Bosnian language. However, that should be the only thing that is in Bosnian.
# What is being learned on this course
This course focuses on assembly, specificaly on MIPS processor. The goal is to gain a basic understanding of
this specific architecture, and to be able to apply this understanding to other architectures, too.
# What is in this repository
This repository contains homework that is given on this course. It, by no means, contains all of homework. Only the homework
I actually finished will be contained in here.
# Text bellow explains each homework problem and how it was tackled
## zadaca1
This is the first homework given on this course. Below will be the problems with their names being formated as zadatak<number>
### zadatak1
PROBLEM: Make a program that takes a number (32bit) and then checks whether the number is odd or even. It should only use shift operators.
The number and the result should be saved either in data or rodata section.  

MY SOLUTION:
- Load the number from it's memory.
- Shift it left by 31 bits.
- Shift it right by 31 bits.
What does this do? The idea is that by shifting the number left by 31 bits, we remove all the digits except for the least significant one. However, now
the least significant digit is actually on the most significant position, with every other digit being a 0. Now we shift right logicaly by 31 bytes. Now
we've returned our digit where it's supposed to be, and every other digit is set to 0. Now if our result is a 0, that means the number is even, and if
the result is 1, it means it's odd.
### zadatak2
PROBLEM: Create a program that takes a number and does these operations on it:
- Checks if it's odd or even
- Multiplies the number with 22
- Multiplies the number with 7
- Finds remainder when dividing with 8
- Finds remainder when dividing with 32  
  
MY SOLUTION: Checking whether it's odd or even is the same as the last problem. Multiplying with 22 is done by combining shifting and adition. Basicaly, we
can separate 22 into 16 + 4 + 2 which means we can add up results of shifting our number by 1, 2 and 4. The solution is similar when multiplying with 7.
Remainders are done the same way the odd/even problem is solved. The difference is that you shift left and right not 31 bits but 29. This leaves you with
remainder when dividing by 8. Same logic with the last part of the problem. Only difference is we shift left and right 27 bits.

> Note to self, don't waste too much time writing this README file next time. Nobody reads it anyway.
