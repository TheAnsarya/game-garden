; Disassembled by Peony
; Platform: SNES
; Mapper: FINAL FANTASY 2
; MapMode: LoRom
; RomSize: 1024K
; Banks: 32
; CopierHeader: False

.snes

; --- Block at $8000-$801a ---
bank11_start:
	ora $00,s                    ; 8000: 03 00
	ora [$00]                    ; 8002: 07 00
	ora $061f03                  ; 8004: 0f 03 1f 06
	and $0c3e0c,x                ; 8008: 3f 0c 3e 0c
	rol $3f0c,x                  ; 800c: 3e 0c 3f
	asl $0300                    ; 800f: 0e 00 03
	tsb $08                      ; 8012: 04 08
	.db $10, $10                 ; 8014: 10 10
loc_8016:
	.db $10, $10                 ; 8016: 10 10
loc_8018:
	.db $80, $00                 ; 8018: 80 00
loc_801a:
	rts                          ; 801a: 60

; --- Block at $8026-$8028 ---
loc_8026:
	cpx.b #$00                   ; 8026: e0 00
loc_8028:
	brk #$80                     ; 8028: 00 80

