my_abs PROC
        CMP      r0,#0
; входное значение равно нулю или больше нуля?
; в таком случае, пропустить инструкцию RSBS
        BGE      |L0.6|
; отнять входное значение от 0:
        RSBS     r0,r0,#0
|L0.6|
        BX       lr
        ENDP