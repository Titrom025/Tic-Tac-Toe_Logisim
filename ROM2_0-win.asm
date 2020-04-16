asect 0x00
ldi r0, 0b11110001
ld r0, r1
ldi r2, 2
ldi r3, 0x30 # End of main program
if 
cmp r2, r1
is z
	ldi r0, 0b11110010
	ld r0, r1
	if 
	cmp r2, r1
	is z
		ldi r0, 0b11110011
		ld r0, r1
		if 
		cmp r2, r1
		is z				
			ldi r0, 0b11111100
			st r0, r2				# 1-2-3 cels
			ldi r0, 0b11111111
			st r0, r3
		fi
	fi
		
	ldi r0, 0b11110100
	ld r0, r1
	if 
	cmp r2, r1
	is z
		ldi r0, 0b11110111
		ld r0, r1
		if 
		cmp r2, r1
		is z				
			ldi r0, 0b11111100
			st r0, r2				# 1-4-7 cels
			ldi r0, 0b11111111
			st r0, r3
		fi
	fi
	
	ldi r0, 0b11110101
	ld r0, r1
	if 
	cmp r2, r1
	is z
		ldi r0, 0b11111001
		ld r0, r1
		if 
		cmp r2, r1
		is z				
			ldi r0, 0b11111100
			st r0, r2				# 1-5-9 cels
			ldi r0, 0b11111111
			st r0, r3
		fi
	fi
fi
	 
ldi r0, 0b11110101
ld r0, r1
if
cmp r2, r1
is z
	ldi r0, 0b11110011
	ld r0, r1
	if 
	cmp r2, r1
	is z
		ldi r0, 0b11110111
		ld r0, r1
		if 
		cmp r2, r1
		is z				
			ldi r0, 0b11111100
			st r0, r2				# 3-5-7 cels
			ldi r0, 0b11111111
			st r0, r3
		fi
	fi
	
	ldi r0, 0b11110010
	ld r0, r1
	if 
	cmp r2, r1
	is z
		ldi r0, 0b11111000
		ld r0, r1
		if 
		cmp r2, r1
		is z				
			ldi r0, 0b11111100
			st r0, r2				# 2-5-8 cels
			ldi r0, 0b11111111
			st r0, r3
		fi
	fi
			
	ldi r0, 0b11110100
	ld r0, r1
	if 
	cmp r2, r1
	is z
		ldi r0, 0b11110110
		ld r0, r1
		if 
		cmp r2, r1
		is z				
			ldi r0, 0b11111100
			st r0, r2				# 4-5-6 cels
			ldi r0, 0b11111111
			st r0, r3
		fi
	fi
fi
		
ldi r0, 0b11111001
ld r0, r1
if
cmp r2, r1
is z
	ldi r0, 0b11110011
	ld r0, r1
	if 
		cmp r2, r1
	is z
		ldi r0, 0b11110110
		ld r0, r1
		if 
		cmp r2, r1
		is z				
			ldi r0, 0b11111100
			st r0, r2				# 3-6-9 cels
			ldi r0, 0b11111111
			st r0, r3
		fi
	fi
	
	ldi r0, 0b11110111
	ld r0, r1
	if 
		cmp r2, r1
	is z
		ldi r0, 0b11111000
		ld r0, r1
		if 
		cmp r2, r1
		is z				
			ldi r0, 0b11111100
			st r0, r2				# 7-8-9 cels
			ldi r0, 0b11111111
			st r0, r3
		fi
	fi
fi

rti
end
