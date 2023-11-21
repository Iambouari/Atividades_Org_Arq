

;==============================================
; Exercicio 3
;==============================================

jmp main

HelloWorld: string "Hello, World!"

main:
    call ApagaTela

    loadn R1, #10
    load R2, HelloWorld
    call ImprimeString

    rts

ImprimeString:
    outchar R2, R1
    inc R1
    load R3, [R2]
    cmp R3, #0   
    jeq ImprimeString_End
    jmp ImprimeString

ImprimeString_End:
    rts
