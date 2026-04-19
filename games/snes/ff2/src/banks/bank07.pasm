; Disassembled by Peony
; Platform: SNES
; Mapper: FINAL FANTASY 2
; MapMode: LoRom
; RomSize: 1024K
; Banks: 32
; CopierHeader: False

.snes

; --- Block at $8000-$8038 ---
bank7_start:
	eor $8f,s                    ; 8000: 43 8f
	stp                          ; 8002: db
	mvp $8f,$8f                  ; 8003: 44 8f 8f
	ldy $43db,x                  ; 8006: bc db 43
	sta $8f44db                  ; 8009: 8f db 44 8f
	ldy $db8f,x                  ; 800d: bc 8f db
	eor $8f,s                    ; 8010: 43 8f
	stp                          ; 8012: db
	mvp $8f,$f0                  ; 8013: 44 8f f0
	sta $dbbc8f                  ; 8016: 8f 8f bc db
	eor $8f,s                    ; 801a: 43 8f
	stp                          ; 801c: db
	mvp $8f,$8f                  ; 801d: 44 8f 8f
	stp                          ; 8020: db
	eor $8f,s                    ; 8021: 43 8f
	stp                          ; 8023: db
	mvp $8f,$bc                  ; 8024: 44 8f bc
	sta $8f8fbc                  ; 8027: 8f bc 8f 8f
	ldy $43db,x                  ; 802b: bc db 43
	sta $bdf4bc                  ; 802e: 8f bc f4 bd
	jsl.l $0000f2                ; 8032: 22 f2 00 00
loc_8036:
	stz $f3                      ; 8036: 64 f3
	brk #$00                     ; 8038: 00 00

; --- Block at $7f01b-$7f03a ---
loc_7f01b:
	cop #$32                     ; 7f01b: 02 32
	ora [$08],y                  ; 7f01d: 17 08
	ora [$08],y                  ; 7f01f: 17 08
	ora [$08],y                  ; 7f021: 17 08
	ora [$08],y                  ; 7f023: 17 08
	ora [$08],y                  ; 7f025: 17 08
	ora [$08],y                  ; 7f027: 17 08
	ora [$08],y                  ; 7f029: 17 08
	ora [$08],y                  ; 7f02b: 17 08
	ora [$08],y                  ; 7f02d: 17 08
	ora [$08],y                  ; 7f02f: 17 08
	ora [$08],y                  ; 7f031: 17 08
	ora [$08],y                  ; 7f033: 17 08
	pea $2374                    ; 7f035: f4 74 23
	sbc ($00)                    ; 7f038: f2 00
	brk #$32                     ; 7f03a: 00 32

