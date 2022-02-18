.data 
	a: .word 5	# a entre 0 e 100		
	b: .word 0
	zero: .word 0
	
.text
	lw $t0, a
	lw $t1, b
	lw $t2, zero  			#variavel incremento do for

	
	
	For:
		beq $t2, 10, If2    #condiçao pra sair do for
		mult $t2, $t2
		mflo $t3   			
		addi $t2, $t2, 1    		#incrementando o for
		#sll $t3, $t2, 2      #guarda a multiplicação de i*i no hi
		beq $t3, $t0, If
		
		j For
		 
	If:
		li $t1, 1
		sw $s0, a
		j End
		
	If2: 				#if b = 0
		bnez $t1, End
		addi $s1, $t1, 0 
		sw $s0, b		
		j End
		
	End:
	
	