; Disassembled by Peony
; Platform: SNES
; Mapper: FINAL FANTASY 2
; MapMode: LoRom
; RomSize: 1024K
; Banks: 32
; CopierHeader: False

.snes

; --- Block at $8000-$8026 ---
bank8_start:
	sta $e218e1,x                ; 8000: 9f e1 18 e2
	cpx.b #$02                   ; 8004: e0 02
	sta $4518e1,x                ; 8006: 9f e1 18 45
	adc ($45)                    ; 800a: 72 45
	clc                          ; 800c: 18
	sep #$f0                     ; 800d: e2 f0
	sta $4518e1,x                ; 800f: 9f e1 18 45
	.db $f0, $34                 ; 8013: f0 34
loc_8015:
	lda $b834,x                  ; 8015: bd 34 b8
	bit $b8,x                    ; 8018: 34 b8
	sec                          ; 801a: 38
	lda $38bf38,x                ; 801b: bf 38 bf 38
	lda $f4bd34,x                ; 801f: bf 34 bd f4
	ora $f222,y                  ; 8023: 19 22 f2
	brk #$00                     ; 8026: 00 00

; --- Block at $802f-$8049 ---
loc_802f:
	jml [$dd0b]                  ; 802f: dc 0b dd
	ora $42db                    ; 8032: 0d db 42
	xba                          ; 8035: eb
	sbc ($00)                    ; 8036: f2 00
	ora $dc,s                    ; 8038: 03 dc
	phx                          ; 803a: da
	ora $e0                      ; 803b: 05 e0
	ora ($6e,x)                  ; 803d: 01 6e
	ror $7171                    ; 803f: 6e 71 71
	ror $726e                    ; 8042: 6e 6e 72
	adc ($72)                    ; 8045: 72 72
	adc ($72)                    ; 8047: 72 72

; --- Block at $8049-$8082 ---
loc_8049:
	adc ($72)                    ; 8049: 72 72
	adc ($72)                    ; 804b: 72 72
	.db $f0, $e0                 ; 804d: f0 e0
loc_804f:
	phd                          ; 804f: 0b
	ror $716e                    ; 8050: 6e 6e 71
	adc ($6e),y                  ; 8053: 71 6e
	ror $7272                    ; 8055: 6e 72 72
	adc ($72)                    ; 8058: 72 72
	adc ($72)                    ; 805a: 72 72
	adc ($72)                    ; 805c: 72 72
	adc ($f0)                    ; 805e: 72 f0
	cpx.b #$01                   ; 8060: e0 01
	sta [$41],y                  ; 8062: 97 41
	sta [$e1],y                  ; 8064: 97 e1
	.db $10, $e2                 ; 8066: 10 e2
loc_8068:
	ror $10e1                    ; 8068: 6e e1 10
	sep #$f0                     ; 806b: e2 f0
	adc $b97d,x                  ; 806d: 7d 7d b9
	adc $81b9,x                  ; 8070: 7d b9 81
	sta ($81,x)                  ; 8073: 81 81
	adc $85f4,x                  ; 8075: 7d f4 85
	jsl.l $0000f3                ; 8078: 22 f3 00 00
loc_807c:
	stz $de                      ; 807c: 64 de
	eor $dd0bdc,x                ; 807e: 5f dc 0b dd
	brk #$db                     ; 8082: 00 db

; --- Block at $804a-$8050 ---
loc_804a:
	adc ($72)                    ; 804a: 72 72
	adc ($f0)                    ; 804c: 72 f0
	cpx.b #$0b                   ; 804e: e0 0b

