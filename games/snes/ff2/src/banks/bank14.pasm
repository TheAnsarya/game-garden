; Disassembled by Peony
; Platform: SNES
; Mapper: FINAL FANTASY 2
; MapMode: LoRom
; RomSize: 1024K
; Banks: 32
; CopierHeader: False

.snes

; --- Block at $8000-$8006 ---
bank14_start:
	cop #$00                     ; 8000: 02 00
	sbc.l $00c0ff,x              ; 8002: ff ff c0 00
	brk #$01                     ; 8006: 00 01

