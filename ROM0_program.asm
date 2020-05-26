asect  0x00
ldi r0, 0b11110000
ldi r1, 0b11111111


do
	inc r0
	st r0, r2
	cmp r1, r0
until le

scankeyboard:
	ldi r0, 0b11111010
	do						#waiting for button pressed
		ld r0, r1
		tst r1
	until mi
	
	ld r1, r3				#test for empty screen
	tst r3
	bnz scankeyboard
	
	ldi r2, 3				#set X to screen
	st r1, r2
	
	ldi r1, 0b11111101		#test for win combination
	ld r1, r2

	if
	tst r2
	is gt
		ldi r0, 0b11111100	#set winner
		st r0, r2
		halt
	fi
			

choose0move:
	ldi r0, 0b11111011		#get a screen number for putting 0
	ld r0, r2
		
	ldi r3, 0xF9			#check for number <= 8
	cmp r3, r2
	bmi choose0move
		
		
	ldi r3, 0xF0			#check for number >= 0
	cmp r3, r2
	beq choose0move
		
		
	ld r2, r3				#check for empty screen for 0
	tst r3
	bnz	choose0move
	
	ldi r3, 2				#set 0 to screen	
	st r2, r3
	
	ldi r1, 0b11111101		#test for win combination
	ld r1, r2

	if
	tst r2
	is gt
		ldi r0, 0b11111100	#set winner
		st r0, r2
		halt
	fi

br scankeyboard

halt
end


