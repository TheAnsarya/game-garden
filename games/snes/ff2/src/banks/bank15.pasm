; Disassembled by Peony
; Platform: SNES
; Mapper: FINAL FANTASY 2
; MapMode: LoRom
; RomSize: 1024K
; Banks: 32
; CopierHeader: False

.snes

; --- Block at $8000-$8021 ---
bank15_start:
	sbc $ffffff,x                ; 8000: ff ff ff ff
	sbc $ffffff,x                ; 8004: ff ff ff ff
	sbc $644729,x                ; 8008: ff 29 47 64
	adc $4460                    ; 800c: 6d 60 44
	adc [$5c]                    ; 800f: 67 5c
	adc ($29)                    ; 8011: 72 29
	lsr                          ; 8013: 4a
	lsr $4460,x                  ; 8014: 5e 60 44
	adc [$5c]                    ; 8017: 67 5c
	adc ($ff)                    ; 8019: 72 ff
	and.b #$55                   ; 801b: 29 55
	adc $70,s                    ; 801d: 63 70
	adc.b #$5f                   ; 801f: 69 5f
	rts                          ; 8021: 60

