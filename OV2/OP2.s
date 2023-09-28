#A program that will take the input register a0-a5 add together two and two to get the value of a pair
#Then compare the numbers and put the largest pair in a0 regestry
li a0, 29
li a1, 2
li a2, 4
li a3, 5
li a4, 8
li a5, 9

#Adding the register and storing the sum in registers 
add a0, a1, a0 
add a2, a3, a2
add a4, a5, a4

#Check if a2 register is bigger than a0
#if correct move a2 value to a0 register
foo:
    bge a0, a2, _else
    mv a0, a2
_else:
    ble a4, a0, _end
    mv a0,a4
_end: 
    nop
    