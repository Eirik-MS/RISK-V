# Ikke bry deg om denne delen, move along
.data
function_error_str: .string "ERROR: Woops, programmet returnerte ikke fra et funksjonskall!"

.text
# Her starter programmet


# Test Mode
# Sett a7 til 1 for Ã¥ teste med veridene under Test - Start
# Sett a7 til 0 nÃ¥r du skal levere
li a7, 0
beq a7, zero, load_complete

# Test - Start
li a0 6
li a1 5
li a2 4
li a3 3
li a4 2
li a5 1
#Test Slutt

load_complete:

# Globale Registre:
# s0-s5 : ForelÃ¸pig liste
# s6    : Har byttet verdier denne syklusen (0/1)

# Hopp forbi funksjoner
j main


# Funksjoner:
    
swap:
    # Args: a0, a1
    # Outputs: a0, a1
    
    # TODO
    # Sammenlikn a0 og a1
    # Putt den minste av dem i a0 og den stÃ¸rste i a1
    # Hvis den byttet a0 og a1, sett den globale variablen s6 til 1 for Ã¥ markere dette til resten av koden
    bge t1,t0 swap_complete
    mv t3, t0
    mv t0, t1
    mv t1, t3
    addi s6, s6, 0x1
    j swap_complete
    
swap_complete:
    # TODO 
    # Returner til instruksjonen etter funksjonskallet (en instruksjon)
    ret

# Hvis programmet kommer hit har den ikke greid Ã¥ returnere fra funksjonen over
# Dette bÃ¸r aldri skje
la a0, function_error_str
li a7, 4
ecall
j end


# Main
main:
    # TODO
    # Last in s0-s5 med verdiene fra a0-a5
    mv s0, a0 
    mv s1, a1
    mv s2, a2
    mv s3, a3
    mv s4, a4
    mv s5, a5
    li s6, 0
    li s7, 0
    j loop

    
loop:
    # TODO
    # Reset verdibytteindikator (en instruksjon)
    li s6, 0
    
    # TODO
    # Sorter alle
    # Repeter fÃ¸lgende logikk:
    # Ta s[i] og s[i+1], og lagre dem som argumenter
    # Kall funksjonen `swap` som sorterer dem
    # NÃ¥ skal `swap` ha outputet de to verdiene i to registre
    # Putt den minste verdien i s[i], og den stÃ¸rste i s[i+1]
    # Repeter for i=0..4
    
    # TODO
    # 0 <-> 1
    mv t0, s0
    mv t1, s1
    jal ra swap 
    mv s0, t0
    mv s1, t1
    # TODO
    # 1 <-> 2
    mv t0, s1
    mv t1, s2
    jal ra swap
    mv s1, t0
    mv s2, t1

    # TODO
    # 2 <-> 3
    mv t0, s2
    mv t1, s3
    jal ra swap
    mv s2, t0
    mv s3, t1

    # TODO
    # 3 <-> 4
    mv t0, s3
    mv t1, s4
    jal ra swap
    mv s3, t0
    mv s4, t1

    # TODO
    # 4 <-> 5
    mv t0, s4
    mv t1, s5
    jal ra swap
    mv s4, t0
    mv s5, t1
    
    # TODO
    # Fortsett loop hvis noe ble endret (en instruksjon)
    bne s6, s7 loop
    # Hvis ingenting ble byttet er listen sortert
    
loop_end:
    
    # TODO
    # Flytt alt til output-registrene
    mv a0, s0
    mv a1, s1
    mv a2, s2 
    mv a3, s3 
    mv a4, s4
    mv a5, s5
    
end:
    nop