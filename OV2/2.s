

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
    