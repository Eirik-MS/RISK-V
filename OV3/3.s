# RISC-V assembly program to find the greatest divisor of a number and check if it is a square number

li t0, 1                  # Initialize t0 to 1 (start from 1 as a divisor)
li t2, 0                  # Initialize t2 to 0 (store the greatest divisor)

loop:
    beq t0, a0, square          # If t0 equals the number, we are done

    divu t1, a0, t0           # Divide the number by the current divisor (t0)
    rem  t1, a0, t0           # Get the remainder

    beqz t1, update_divisor   # If remainder is zero, update the divisor

    j next_divisor            # Jump to the next divisor

update_divisor:
    mv t2, t0                 # Update the greatest divisor
    j next_divisor            # Jump to the next divisor

next_divisor:
    addi t0, t0, 1            # Increment the divisor
    j loop                    # Repeat the loop

square:
    #check if the number we get is a sqare number
    li t3, 0 #the number beeing squared
    li t4, 0 #counter 
    j square_loop
    mul a2 t2, t2
    bne a2, a0, done
    li a1, 0x01
    j done

square_loop:
    beq t3, a0, done  # If square root equals the original number, it's a square number
    bgeu a3, a0, done # If square root exceeds the original number, it's not a square number

    # Square the current root
    mul a3, t4, t4

    # Check if the squared value matches the original number
    beq a3, a0, is_square

    # Increment the square root and counter
    addi t3, t3, 1
    addi t4, t4, 1

    # Continue the loop
    j square_loop

is_square:
    li a1, 1
    j done

done:
    # At this point, t2 contains the greatest divisor
    # You can use t2 or store it in another register/memory location as needed
    # For now, let's store it in the divisor variable

    mv a0, t2                  # Move the value of t2 into a0
