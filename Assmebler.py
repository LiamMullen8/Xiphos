import re, sys

file = open(sys.argv[1], 'r')
W = open("machine_code.dat", 'w')

BIN = ""
for line in file:
	# remove spaces and newlines
	inst = line.rstrip('\n').replace(" ", "")	
	######## A instruction ########
	if re.match('@[0-9]+',inst):
		BIN = "0" + '{0:015b}'.format(int(inst[1:]))
		W.write(BIN)
		continue		 
	####### C Instruction ########
	jjj = ""
	ddd = ""
	comp_bits = ""
	## get c instruction format
	if "=" in inst:
		# dest = comp ; jump
		if ";" in inst:
			tok = inst.partition('=')
			dest = tok[0]
			tok2 = tok[2].partition(';')
			comp = tok2[0]
			jump = tok2[2]
		#dest = comp
		else:
			tok = inst.partition('=')
			comp = tok[2]
			dest = tok[0]
			jump = ""
	# comp ; jump
	elif ";" in inst:
		tok = inst.partition(';')
		comp = tok[0]
		jump = tok[2]
		dest = ""
	# comp
	else:
		comp = inst
		jump = ""
		dest = ""
	###########  DEST BITS  ###############
	if dest == "M":
		ddd = "001"
	elif dest == "D":
		ddd = "010"
	elif dest == "A":
		ddd = "100"
	elif dest == "DM":
		ddd = "011"
	elif dest == "AM":
		ddd = "101"
	elif dest == "AD":
		ddd = "101"	
	elif dest == "ADM":
		ddd = "101"	
	else:
		ddd = "000"
	###########  COMP BITS  ###############
	if comp == "0":
		comp_bits = "0101010"
	elif comp == "1":
		comp_bits= "0111111"
	elif comp == "-1":
		comp_bits = "0111010"
	elif comp == "D":
		comp_bits = "0001100"
	elif comp == "A":
		comp_bits = "0110000"
	elif comp == "M":
		comp_bits = "1110000"
	elif comp == "!D":
		comp_bits = "0001101"
	elif comp == "!A":
		comp_bits = "0110001"
	elif comp == "!M":
		comp_bits = "1110001"
	elif comp == "-D":
		comp_bits = "0001111"
	elif comp == "-A":
		comp_bits = "0110011"
	elif comp == "-M":
		comp_bits = "1110011"
	elif comp == "D+1":
		comp_bits = "0011111"
	elif comp == "A+1":
		comp_bits = "0110111"
	elif comp == "M+1":
		comp_bits = "1110111"
	elif comp == "D-1":
		comp_bits =  "0001110"
	elif comp == "A-1":
		comp_bits = "0110010"
	elif comp == "M-1":
		comp_bits = "1110010"
	elif comp == "D+A":
		comp_bits = "0000010"
	elif comp == "D+M":
		comp_bits = "1000010"
	elif comp == "D-A":
		comp_bits = "0010011"
	elif comp == "D-M":
		comp_bits = "1010011"
	elif comp == "A-D":
		comp_bits = "0000111"
	elif comp == "M-D":
		comp_bits = "1000111"
	elif comp == "D&A":
		comp_bits = "0000000"
	elif comp == "D&M":
		comp_bits = "1000000"
	elif comp == "D|A":
		comp_bits = "0010101"
	elif comp == "D|M":
		comp_bits = "1010101"
	else:
		comp_bits = "0000000"
	###########  JUMP BITS  ###############
	if jump == "JGT":
		jjj = "001"
	elif jump == "JEQ":
		jjj = "010"
	elif jump == "JGE":
		jjj = "011"
	elif jump == "JLT":
		jjj = "100"
	elif jump == "JNE":
		jjj = "101"
	elif jump == "JLE":
		jjj = "110"	
	elif jump == "JMP":
		jjj = "111"	
	else:
		jjj = "000"
	# combine to 16bit instruction
	BIN = "111" + comp_bits + ddd + jjj
	#write to .dat file
	W.write(BIN)
	W.write('\n')
	#######################################
W.close()
file.close()
