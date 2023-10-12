li a0 15
li a1 0
# Constant
li a0 0

##
li t0 1
li t3 1
_storevalue: 
    mv t2, t0

_startloop:
    rem t1, t0, a0
    beq t1, x0, _storevalue
    #Skjekk om ferdig
    blt a0, t0, _startloop
    addi t0, t3, 0x01
    mv t3, t0
_endloop: