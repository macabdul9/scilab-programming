
;<Program title>

jmp start

;data


;code
start: nop
lxi h, 0020h
mvi m, 31h
lda 0020h 
cma
sta 2000h
hlt