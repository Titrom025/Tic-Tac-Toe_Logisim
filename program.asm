asect  0x00

#do
ldi r0, 0b11110010
	do
		ld r0, r1
		tst r1
	until pl

dec r0
shl r1
shl r1
shl r1
shl r1
ld r2, 2
add r2, r1
st r0, r1
#inc r0
#push r3
#ldi r3, 0
#tst r3
#pop r3
##until mi

halt
end


