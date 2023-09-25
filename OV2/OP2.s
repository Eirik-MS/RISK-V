#A program that will take the input register a0-a5 add together two and two to get the value of a pair
#Then compare the numbers and put the largest pair in a0 regestry
li a0, 2
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
ble a2, a0, hvis1
hvis1:
    mv a0, a2

#Check if a4 register is bigger than a0
#if correct move a4 value to a0 register
#This will also be checked against a2 register if needed
ble a4, a0, hvis2
hvis2: 
    mv a0,a4
