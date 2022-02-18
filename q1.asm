.data 
    a: .word 0
    b: .word 14
    x: .word 0

.text:
    lw $t0, a            #carrega o valor de 'a' no registrador $t0
    lw $t1, b
    lw $t2, x

    bnez $t0, if              #se 'a' armazenado em $t0 não for igual a zero, pula pro if
    beqz $t0, elseIf

    if:
        beqz $t1, igualUm          #se 'b' for igual a zero, pula pro igualUm
        bnez $t1, igualQuatro    #entra no igualQuatro (correspondente ao else da questao)

    elseIf:
        beqz $t1, igualDois     #se $t1 conter zero, entra no elseIf2 pra validar a segunda condiçao
        bnez $t1, igualTres     #se $t1 não conter zero, entra no igualTres


    igualUm:
        li $t2, 1        #carrega 1 em $t2
        j End

    igualDois:
        li $t2, 2
        j End

    igualTres:
        li $t2, 3
        j End

    igualQuatro:
        li $t2, 4
        j End

    End:
