; Disassembled by Peony
; Platform: SNES
; Mapper: FINAL FANTASY 2
; MapMode: LoRom
; RomSize: 1024K
; Banks: 32
; CopierHeader: False

.snes

; --- Block at $8000-$8000 ---
reset:
	brk #$ff                     ; 8000: 00 ff

; --- Block at $ffff-$10000 ---
entry_ffff:
	.db $ff                      ; ffff: ff ; Unknown opcode

