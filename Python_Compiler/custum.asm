@0x00
VAR foo

; @0x0202
;
==Start==
SEC
LDY #0x02
STA (0x18),y
LDA #0x01
LDA (0x18),y
NOP

@0x0018
DATA 0xCC

@0x0019
DATA 0x00

@0x00CE
DATA 0x10

;@0x00CC
;DATA 0xAA

;LDA #0x01


;SEC
;BCC SK
;{
;    ;Code for true
;    LDA #0x02
;}



;CMP 0x0002
;LDA #0x02
;CMP 0x02
;LDA #0x02
;CMP #0x01
;LDA #0x02
;CMP 0x0002,X
;LDA #0x02
;CMP 0x0002,Y
;LDA #0x02
;CMP 0x02,X
;LDA #0x02
;CMP (0x02,X)
;LDA #0x02
;CMP (0x02),Y
;LDA #0xFF
;ORA 0x0002
;LDA #0x02
;ORA 0x02
;LDA #0x02
;ORA #0x01
;LDA #0x02
;ORA 0x0002,X
;LDA #0x02
;ORA 0x0002,Y
;LDA #0x02
;ORA 0x02,X
;LDA #0x02
;ORA (0x02,X)
;LDA #0x02
;ORA (0x02),Y
;LDA #0xFF
;NOP
;NOP
;NOP

;@0x00FF
;DATA 0xEE

; CPX 0x0002
; CPX 0x02
; CPX #0x01
;
; CPY 0x0002
; CPY 0x02
; CPY #0x01



; EOR 0x0002
; LDA #0x02
; EOR 0x02
; LDA #0x02
; EOR #0x01
; LDA #0x02
; EOR 0x0002,X
; LDA #0x02
; EOR 0x0002,Y
; LDA #0x02
; EOR 0x02,X
; LDA #0x02
; EOR (0x02,X)
; LDA #0x02
; EOR (0x02),Y




; DEY
; DEY
; DEY
; DEY

; LDA #0x01
;
; SBC 0x0002
; SBC 0x02
; SBC #0x01
; SBC 0x0002,X
; SBC 0x0002,Y
; SBC 0x02,X
; SBC (0x02,X)
; SBC (0x02),Y
; SEC
; CLC
; SED
; CLD

; TSX
; LDX #0x01
; TXS
; SEC
; PHA
; PHP

; PLA
; PLP



; LDA #0x01
; SBC 0x0002
; SBC 0x02
;
; SBC #0x01
; SBC 0x0002,x
; SBC 0x0002,y
; SBC 0x02,x





;
; Test:
; LDA #0xFF
; RTS







; Interupt:
; LDA #0x02
; RTI
; LDA #0x05
;
;
;
;
;

; SEC
; SED
; SEI
; LDA #0x00
; ; 1-5
; ; 2-3-4-8 if flag = 0
;
; BCC SK
; {
;     LDA #0x01
; }
;
; BCS SK
; {
;     LDA #0x02
; }
; BEQ SK
; {
;     LDA #0x03
; }
; BMI SK
; {
;     LDA #0x04
; }
; BNE SK
; {
;     LDA #0x05
; }
; BPL SK
; {
;     LDA #0x06
; }
; BVC SK
; {
;     LDA #0x07
; }
; BVS SK
; {
;     LDA #0x08
; }



@0xFFFC
DATA Start ; program start where
; DATA Interupt
