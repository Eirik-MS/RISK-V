#A program that will take the input register a0-a5 add together two and two to get the value of a pair
#Then compare the numbers and put the largest pair in a0 regestry
li a0, 2
li a1, 2
li a2, 4
li a3, 5
li a4, 8
li a5, 9
li a6, 0

nop #No operation for fun

#Legger sammen tallene
add a0, a1, a0 
add a2, a3, a2
add a4, a5, a4

#Dette er en funksjon ish
check_biggest:
    ble a0, a2, small_ok
    jal small_not
    small_ok:
        mv a0, a2
    small_not:
        ble a2, a4, next_ok
        jal return
    next_ok:
        mv a0, a4
    return:
        ret
        
