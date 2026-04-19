; Disassembled by Peony
; Platform: SNES
; Mapper: FINAL FANTASY 2
; MapMode: LoRom
; RomSize: 1024K
; Banks: 32
; CopierHeader: False

.snes

; --- Block at $8000-$8005 ---
bank6_start:
	rep #$54                     ; 8000: c2 54
	xce                          ; 8002: fb
	rep #$30                     ; 8003: c2 30
	brk #$74                     ; 8005: 00 74

