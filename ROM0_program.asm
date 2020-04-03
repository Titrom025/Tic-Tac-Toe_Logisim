asect  0x00
tst r0
scankeyboard:
	ldi r0, 0b11111010
	do
		ld r0, r1
		tst r1
	until mi
	
	ld r1, r3
	tst r3
	bnz scankeyboard
	
	ldi r2, 3
	st r1, r2
	osix 0b00010000

chooserandscreen:
	ldi r0, 0b11111011
	ld r0, r2
		
	ldi r3, 9
	cmp r3, r2
	bmi chooserandscreen
		
	tst r2
	ble chooserandscreen
		
	ldi r3, 0b11110000
	or r3, r2
		
	ld r2, r3
	
	tst r3
	
	bnz	chooserandscreen
	
	ldi r3, 2
	st r2, r3

br scankeyboard

halt
end


