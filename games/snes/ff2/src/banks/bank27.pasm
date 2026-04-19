; Disassembled by Peony
; Platform: SNES
; Mapper: FINAL FANTASY 2
; MapMode: LoRom
; RomSize: 1024K
; Banks: 32
; CopierHeader: False

.snes

; --- Block at $8000-$8023 ---
bank27_start:
	ora $02                      ; 8000: 05 02
	ora $0f1c05                  ; 8002: 0f 05 1c 0f
	asl $1f09,x                  ; 8006: 1e 09 1f
	tsb $065f                    ; 8009: 0c 5f 06
	sbc $45be09,x                ; 800c: ff 09 be 45
	cop #$07                     ; 8010: 02 07
	ora $070d09                  ; 8012: 0f 09 0d 07
	eor.b #$70                   ; 8016: 49 70
	ldy.b #$40                   ; 8018: a0 40
	.db $f0, $20                 ; 801a: f0 20
loc_801c:
	sed                          ; 801c: f8
	.db $10, $f8                 ; 801d: 10 f8
loc_801f:
	.db $10, $f8                 ; 801f: 10 f8
loc_8021:
	.db $30, $fa                 ; 8021: 30 fa
loc_8023:
	rts                          ; 8023: 60

; --- Block at $8017-$8019 ---
loc_8017:
	.db $70, $a0                 ; 8017: 70 a0
loc_8019:
	rti                          ; 8019: 40

; --- Block at $803c-$804d ---
loc_803c:
	ora $1f07                    ; 803c: 0d 07 1f
	ora ($30,x)                  ; 803f: 01 30
	tsb $03                      ; 8041: 04 03
	tsb $01                      ; 8043: 04 01
	asl $07                      ; 8045: 06 07
	ora $7e,s                    ; 8047: 03 7e
	cpy.b #$fe                   ; 8049: c0 fe
	tsb $fe                      ; 804b: 04 fe
	jmp $4cfa                    ; 804d: 4c fa 4c

