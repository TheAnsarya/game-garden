; Disassembled by Peony
; Platform: SNES
; Mapper: FINAL FANTASY 2
; MapMode: LoRom
; RomSize: 1024K
; Banks: 32
; CopierHeader: False

.snes

; --- Block at $8000-$8000 ---
bank21_start:
	brk #$00                     ; 8000: 00 00

; --- Block at $b0a7-$b0be ---
loc_b0a7:
	lda $1e8001,x                ; b0a7: bf 01 80 1e
	sta $4303                    ; b0ab: 8d 03 43 ; A1TH0
	lda $0fdd                    ; b0ae: ad dd 0f
	tax                          ; b0b1: aa
	lda $15b104,x                ; b0b2: bf 04 b1 15
	sta $4304                    ; b0b6: 8d 04 43 ; A1B0
	jsl $15b143                  ; b0b9: 22 43 b1 15
loc_b0bd:
	rtl                          ; b0bd: 6b

; --- Block at $b0be-$b2fa ---
loc_b0be:
	ldx.w #$0000                 ; b0be: a2 00 00
	stx $47                      ; b0c1: 86 47
	ldx.w #$2400                 ; b0c3: a2 00 24
	stx $45                      ; b0c6: 86 45
	lda.b #$15                   ; b0c8: a9 15
	sta $3c                      ; b0ca: 85 3c
	lda $1e8000                  ; b0cc: af 00 80 1e
	sta $3d                      ; b0d0: 85 3d
	lda $1e8001                  ; b0d2: af 01 80 1e
	sta $3e                      ; b0d6: 85 3e
	lda.b #$80                   ; b0d8: a9 80
	sta $2115                    ; b0da: 8d 15 21 ; VMAIN
	stz $420b                    ; b0dd: 9c 0b 42 ; MDMAEN
	lda.b #$01                   ; b0e0: a9 01
	sta $4300                    ; b0e2: 8d 00 43 ; DMAP0
	lda.b #$18                   ; b0e5: a9 18
	sta $4301                    ; b0e7: 8d 01 43 ; BBAD0
	lda $3c                      ; b0ea: a5 3c
	sta $4304                    ; b0ec: 8d 04 43 ; A1B0
	ldx $47                      ; b0ef: a6 47
	stx $2116                    ; b0f1: 8e 16 21 ; VMADDL
	ldx $3d                      ; b0f4: a6 3d
	stx $4302                    ; b0f6: 8e 02 43 ; A1TL0
	ldx $45                      ; b0f9: a6 45
	stx $4305                    ; b0fb: 8e 05 43 ; DAS0L
	lda.b #$01                   ; b0fe: a9 01
	sta $420b                    ; b100: 8d 0b 42 ; MDMAEN
	rtl                          ; b103: 6b
	ora $1e,x                    ; b104: 15 1e
	asl $1e1d,x                  ; b106: 1e 1d 1e
	asl $1e1e,x                  ; b109: 1e 1e 1e
	ora $1f1f1f,x                ; b10c: 1f 1f 1f 1f
	asl $1f1f,x                  ; b110: 1e 1f 1f
	ora $9c,x                    ; b113: 15 9c
	phd                          ; b115: 0b
	wdm #$a9                     ; b116: 42 a9
	.db $80, $8d                 ; b118: 80 8d
	ora $21,x                    ; b11a: 15 21
	lda.b #$08                   ; b11c: a9 08
	sta $4300                    ; b11e: 8d 00 43 ; DMAP0
	lda.b #$19                   ; b121: a9 19
	sta $4301                    ; b123: 8d 01 43 ; BBAD0
	ldx.w #$0000                 ; b126: a2 00 00
	stx $2116                    ; b129: 8e 16 21 ; VMADDL
	stz $06                      ; b12c: 64 06
	ldx.w #$0606                 ; b12e: a2 06 06
	stx $4302                    ; b131: 8e 02 43 ; A1TL0
	stz $4304                    ; b134: 9c 04 43 ; A1B0
	ldx.w #$1800                 ; b137: a2 00 18
	stx $4305                    ; b13a: 8e 05 43 ; DAS0L
	lda.b #$01                   ; b13d: a9 01
	sta $420b                    ; b13f: 8d 0b 42 ; MDMAEN
	rtl                          ; b142: 6b
	lda.b #$18                   ; b143: a9 18
	sta $4301                    ; b145: 8d 01 43 ; BBAD0
	ldx.w #$0000                 ; b148: a2 00 00
	stx $2116                    ; b14b: 8e 16 21 ; VMADDL
	ldy.w #$0000                 ; b14e: a0 00 00
	lda.b #$80                   ; b151: a9 80
	sta $2115                    ; b153: 8d 15 21 ; VMAIN
	lda.b #$01                   ; b156: a9 01
	sta $4300                    ; b158: 8d 00 43 ; DMAP0
	ldx.w #$0010                 ; b15b: a2 10 00
	stx $4305                    ; b15e: 8e 05 43 ; DAS0L
	lda.b #$01                   ; b161: a9 01
	sta $420b                    ; b163: 8d 0b 42 ; MDMAEN
	stz $420b                    ; b166: 9c 0b 42 ; MDMAEN
	stz $2115                    ; b169: 9c 15 21 ; VMAIN
	stz $4300                    ; b16c: 9c 00 43 ; DMAP0
	ldx.w #$0008                 ; b16f: a2 08 00
	stx $4305                    ; b172: 8e 05 43 ; DAS0L
	lda.b #$01                   ; b175: a9 01
	sta $420b                    ; b177: 8d 0b 42 ; MDMAEN
	iny                          ; b17a: c8
	cpy.w #$0180                 ; b17b: c0 80 01
	.db $d0, $d1                 ; b17e: d0 d1
loc_b180:
	rtl                          ; b180: 6b
	lda.b #$80                   ; b181: a9 80
	sta $2115                    ; b183: 8d 15 21 ; VMAIN
	ldx.w #$0000                 ; b186: a2 00 00
	stx $2116                    ; b189: 8e 16 21 ; VMADDL
	lda $1700                    ; b18c: ad 00 17
	sta $3e                      ; b18f: 85 3e
	stz $3d                      ; b191: 64 3d
	ldx $3d                      ; b193: a6 3d
	ldy.w #$0000                 ; b195: a0 00 00
	lda $148600,x                ; b198: bf 00 86 14
	sta $0bdb,y                  ; b19c: 99 db 0b
	inx                          ; b19f: e8
	iny                          ; b1a0: c8
	cpy.w #$0100                 ; b1a1: c0 00 01
	.db $d0, $f2                 ; b1a4: d0 f2
loc_b1a6:
	lda $1700                    ; b1a6: ad 00 17
	asl                          ; b1a9: 0a
	asl                          ; b1aa: 0a
	asl                          ; b1ab: 0a
	asl                          ; b1ac: 0a
	asl                          ; b1ad: 0a
	sta $3e                      ; b1ae: 85 3e
	stz $3d                      ; b1b0: 64 3d
	ldx $3d                      ; b1b2: a6 3d
	ldy.w #$0000                 ; b1b4: a0 00 00
	lda $1d8000,x                ; b1b7: bf 00 80 1d
	sta $08                      ; b1bb: 85 08
	inx                          ; b1bd: e8
	and.b #$0f                   ; b1be: 29 0f
	clc                          ; b1c0: 18
	adc $0bdb,y                  ; b1c1: 79 db 0b
	sta $2119                    ; b1c4: 8d 19 21 ; VMDATAH
	lda $08                      ; b1c7: a5 08
	lsr                          ; b1c9: 4a
	lsr                          ; b1ca: 4a
	lsr                          ; b1cb: 4a
	lsr                          ; b1cc: 4a
	clc                          ; b1cd: 18
	adc $0bdb,y                  ; b1ce: 79 db 0b
	sta $2119                    ; b1d1: 8d 19 21 ; VMDATAH
	txa                          ; b1d4: 8a
	and.b #$1f                   ; b1d5: 29 1f
	.db $d0, $de                 ; b1d7: d0 de
loc_b1d9:
	iny                          ; b1d9: c8
	cpy.w #$0100                 ; b1da: c0 00 01
	.db $d0, $d8                 ; b1dd: d0 d8
loc_b1df:
	rtl                          ; b1df: 6b
	lda $d3                      ; b1e0: a5 d3
	.db $f0, $01                 ; b1e2: f0 01
loc_b1e4:
	rtl                          ; b1e4: 6b
loc_b1e5:
	phb                          ; b1e5: 8b
	lda.b #$15                   ; b1e6: a9 15
	pha                          ; b1e8: 48
	plb                          ; b1e9: ab
	lda $1703                    ; b1ea: ad 03 17
	stz $4a                      ; b1ed: 64 4a
	lsr                          ; b1ef: 4a
	ror $4a                      ; b1f0: 66 4a
	lsr                          ; b1f2: 4a
	ror $4a                      ; b1f3: 66 4a
	sta $4b                      ; b1f5: 85 4b
	ldx $4a                      ; b1f7: a6 4a
	lda $1001,x                  ; b1f9: bd 01 10
	and.b #$1f                   ; b1fc: 29 1f
	tax                          ; b1fe: aa
	lda $b2fa,x                  ; b1ff: bd fa b2
	asl                          ; b202: 0a
	sta $0710                    ; b203: 8d 10 07
	lda $d8                      ; b206: a5 d8
	.db $f0, $05                 ; b208: f0 05
loc_b20a:
	lda.b #$08                   ; b20a: a9 08
	sta $1705                    ; b20c: 8d 05 17
loc_b20f:
	lda $1705                    ; b20f: ad 05 17
	cmp.b #$08                   ; b212: c9 08
	.db $d0, $0a                 ; b214: d0 0a
loc_b216:
	lda $7b                      ; b216: a5 7b
	clc                          ; b218: 18
	adc.b #$10                   ; b219: 69 10
	lsr                          ; b21b: 4a
	lsr                          ; b21c: 4a
	lsr                          ; b21d: 4a
	and.b #$03                   ; b21e: 29 03
loc_b220:
	asl                          ; b220: 0a
	asl                          ; b221: 0a
	asl                          ; b222: 0a
	asl                          ; b223: 0a
	sta $07                      ; b224: 85 07
	stz $06                      ; b226: 64 06
	lda $1705                    ; b228: ad 05 17
	cmp.b #$08                   ; b22b: c9 08
	.db $f0, $20                 ; b22d: f0 20
loc_b22f:
	cmp.b #$04                   ; b22f: c9 04
	.db $b0, $04                 ; b231: b0 04
loc_b233:
	lda $ab                      ; b233: a5 ab
	.db $f0, $18                 ; b235: f0 18
loc_b237:
	lda $7b                      ; b237: a5 7b
	and.b #$08                   ; b239: 29 08
	clc                          ; b23b: 18
	adc $07                      ; b23c: 65 07
	sta $07                      ; b23e: 85 07
	lda $ab                      ; b240: a5 ab
	and.b #$01                   ; b242: 29 01
	.db $d0, $09                 ; b244: d0 09
loc_b246:
	lda $7b                      ; b246: a5 7b
	and.b #$08                   ; b248: 29 08
	lsr                          ; b24a: 4a
	lsr                          ; b24b: 4a
	lsr                          ; b24c: 4a
	sta $06                      ; b24d: 85 06
loc_b24f:
	lda $07                      ; b24f: a5 07
	tax                          ; b251: aa
	ldy.w #$0000                 ; b252: a0 00 00
	lda $c0b4,y                  ; b255: b9 b4 c0
	sta $0470,y                  ; b258: 99 70 04
	iny                          ; b25b: c8
	lda $c0b4,y                  ; b25c: b9 b4 c0
	sec                          ; b25f: 38
	sbc $06                      ; b260: e5 06
	sta $0470,y                  ; b262: 99 70 04
	iny                          ; b265: c8
	lda $c0c4,x                  ; b266: bd c4 c0
	sta $0470,y                  ; b269: 99 70 04
	inx                          ; b26c: e8
	iny                          ; b26d: c8
	lda $c0c4,x                  ; b26e: bd c4 c0
	and.b #$f1                   ; b271: 29 f1
	clc                          ; b273: 18
	adc $0710                    ; b274: 6d 10 07
	sta $0470,y                  ; b277: 99 70 04
	inx                          ; b27a: e8
	iny                          ; b27b: c8
	cpy.w #$0008                 ; b27c: c0 08 00
	.db $d0, $d4                 ; b27f: d0 d4
loc_b281:
	ldy.w #$0000                 ; b281: a0 00 00
	lda $c0bc,y                  ; b284: b9 bc c0
	sta $04f0,y                  ; b287: 99 f0 04
	iny                          ; b28a: c8
	lda $c0bc,y                  ; b28b: b9 bc c0
	sec                          ; b28e: 38
	sbc $06                      ; b28f: e5 06
	sta $04f0,y                  ; b291: 99 f0 04
	iny                          ; b294: c8
	lda $c0c4,x                  ; b295: bd c4 c0
	sta $04f0,y                  ; b298: 99 f0 04
	inx                          ; b29b: e8
	iny                          ; b29c: c8
	lda $c0c4,x                  ; b29d: bd c4 c0
	and.b #$f1                   ; b2a0: 29 f1
	clc                          ; b2a2: 18
	adc $0710                    ; b2a3: 6d 10 07
	sta $04f0,y                  ; b2a6: 99 f0 04
	inx                          ; b2a9: e8
	iny                          ; b2aa: c8
	cpy.w #$0008                 ; b2ab: c0 08 00
	.db $d0, $d4                 ; b2ae: d0 d4
loc_b2b0:
	lda $a2                      ; b2b0: a5 a2
	and.b #$08                   ; b2b2: 29 08
	.db $f0, $20                 ; b2b4: f0 20
loc_b2b6:
	lda $0473                    ; b2b6: ad 73 04
	ora.b #$20                   ; b2b9: 09 20
	sta $0473                    ; b2bb: 8d 73 04
	lda $0477                    ; b2be: ad 77 04
	ora.b #$20                   ; b2c1: 09 20
	sta $0477                    ; b2c3: 8d 77 04
	lda $04f3                    ; b2c6: ad f3 04
	and.b #$cf                   ; b2c9: 29 cf
	sta $04f3                    ; b2cb: 8d f3 04
	lda $04f7                    ; b2ce: ad f7 04
	and.b #$cf                   ; b2d1: 29 cf
	sta $04f7                    ; b2d3: 8d f7 04
loc_b2d6:
	lda $a2                      ; b2d6: a5 a2
	and.b #$04                   ; b2d8: 29 04
	.db $f0, $1c                 ; b2da: f0 1c
loc_b2dc:
	lda $a1                      ; b2dc: a5 a1
	and.b #$04                   ; b2de: 29 04
	.db $f0, $08                 ; b2e0: f0 08
loc_b2e2:
	lda $a1                      ; b2e2: a5 a1
	and.b #$03                   ; b2e4: 29 03
	and $d2                      ; b2e6: 25 d2
	.db $d0, $0e                 ; b2e8: d0 0e
loc_b2ea:
	lda.b #$f8                   ; b2ea: a9 f8
	sta $0471                    ; b2ec: 8d 71 04
	sta $0475                    ; b2ef: 8d 75 04
	sta $04f1                    ; b2f2: 8d f1 04
	sta $04f5                    ; b2f5: 8d f5 04
loc_b2f8:
	plb                          ; b2f8: ab
	rtl                          ; b2f9: 6b
	brk #$00                     ; b2fa: 00 00

; --- Block at $b42e-$b44d ---
loc_b42e:
	stz $0d                      ; b42e: 64 0d
	stz $0f                      ; b430: 64 0f
	lda $1705                    ; b432: ad 05 17
	asl                          ; b435: 0a
	asl                          ; b436: 0a
	asl                          ; b437: 0a
	asl                          ; b438: 0a
	asl                          ; b439: 0a
	sta $07                      ; b43a: 85 07
	lda $1704                    ; b43c: ad 04 17
	cmp.b #$01                   ; b43f: c9 01
	.db $d0, $0d                 ; b441: d0 0d
loc_b443:
	lda $ab                      ; b443: a5 ab
	.db $f0, $0b                 ; b445: f0 0b
loc_b447:
	lda $7a                      ; b447: a5 7a
	and.b #$04                   ; b449: 29 04
	asl                          ; b44b: 0a
	asl                          ; b44c: 0a
	jmp $b452                    ; b44d: 4c 52 b4

; --- Block at $b450-$b4b5 ---
loc_b450:
	lda.b #$00                   ; b450: a9 00
loc_b452:
	clc                          ; b452: 18
	adc $07                      ; b453: 65 07
	tax                          ; b455: aa
	ldy.w #$0000                 ; b456: a0 00 00
	lda $c034,x                  ; b459: bd 34 c0
	clc                          ; b45c: 18
	adc $0c                      ; b45d: 65 0c
	sta $0490,y                  ; b45f: 99 90 04
	lda $0d                      ; b462: a5 0d
	adc.b #$00                   ; b464: 69 00
	and.b #$01                   ; b466: 29 01
	.db $f0, $06                 ; b468: f0 06
loc_b46a:
	lda.b #$64                   ; b46a: a9 64
	jsl $15b3af                  ; b46c: 22 af b3 15
loc_b470:
	lda $c035,x                  ; b470: bd 35 c0
	clc                          ; b473: 18
	adc $0e                      ; b474: 65 0e
	sta $0491,y                  ; b476: 99 91 04
	lda $c036,x                  ; b479: bd 36 c0
	sta $0492,y                  ; b47c: 99 92 04
	lda $c037,x                  ; b47f: bd 37 c0
	sta $0493,y                  ; b482: 99 93 04
	inx                          ; b485: e8
	inx                          ; b486: e8
	inx                          ; b487: e8
	inx                          ; b488: e8
	iny                          ; b489: c8
	iny                          ; b48a: c8
	iny                          ; b48b: c8
	iny                          ; b48c: c8
	cpy.w #$0010                 ; b48d: c0 10 00
	.db $d0, $c7                 ; b490: d0 c7
loc_b492:
	lda $1704                    ; b492: ad 04 17
	cmp.b #$01                   ; b495: c9 01
	.db $d0, $07                 ; b497: d0 07
loc_b499:
	lda $a2                      ; b499: a5 a2
	and.b #$08                   ; b49b: 29 08
	sta $170e                    ; b49d: 8d 0e 17
loc_b4a0:
	lda $170e                    ; b4a0: ad 0e 17
	.db $f0, $10                 ; b4a3: f0 10
loc_b4a5:
	lda $049b                    ; b4a5: ad 9b 04
	and.b #$cf                   ; b4a8: 29 cf
	sta $049b                    ; b4aa: 8d 9b 04
	lda $049f                    ; b4ad: ad 9f 04
	and.b #$cf                   ; b4b0: 29 cf
	sta $049f                    ; b4b2: 8d 9f 04

; --- Block at $b4b5-$b4ca ---
loc_b4b5:
	plb                          ; b4b5: ab
	rtl                          ; b4b6: 6b
	sec                          ; b4b7: 38
	sbc.b #$02                   ; b4b8: e9 02
	tax                          ; b4ba: aa
	asl                          ; b4bb: 0a
	asl                          ; b4bc: 0a
	tay                          ; b4bd: a8
	lda $0c                      ; b4be: a5 0c
	sec                          ; b4c0: 38
	sbc.b #$04                   ; b4c1: e9 04
	.db $b0, $08                 ; b4c3: b0 08
loc_b4c5:
	lda.b #$f8                   ; b4c5: a9 f8
	sta $04f1,y                  ; b4c7: 99 f1 04
	jmp $b4d8                    ; b4ca: 4c d8 b4

; --- Block at $b4cd-$b527 ---
loc_b4cd:
	sta $04f0,y                  ; b4cd: 99 f0 04
	lda $0e                      ; b4d0: a5 0e
	sec                          ; b4d2: 38
	sbc.b #$05                   ; b4d3: e9 05
	sta $04f1,y                  ; b4d5: 99 f1 04
loc_b4d8:
	lda $ad                      ; b4d8: a5 ad
	lsr                          ; b4da: 4a
	lsr                          ; b4db: 4a
	lsr                          ; b4dc: 4a
	lsr                          ; b4dd: 4a
	dec                          ; b4de: 3a
	dec                          ; b4df: 3a
	sta $06                      ; b4e0: 85 06
	txa                          ; b4e2: 8a
	asl                          ; b4e3: 0a
	clc                          ; b4e4: 18
	adc $06                      ; b4e5: 65 06
	adc.b #$30                   ; b4e7: 69 30
	sta $04f2,y                  ; b4e9: 99 f2 04
	lda $15b4f5,x                ; b4ec: bf f5 b4 15
	sta $04f3,y                  ; b4f0: 99 f3 04
	plb                          ; b4f3: ab
	rtl                          ; b4f4: 6b
	inc                          ; b4f5: 1a
	clc                          ; b4f6: 18
	clc                          ; b4f7: 18
	trb $a98b                    ; b4f8: 1c 8b a9
	ora $48,x                    ; b4fb: 15 48
	plb                          ; b4fd: ab
	lda $1712                    ; b4fe: ad 12 17
	.db $f0, $24                 ; b501: f0 24
loc_b503:
	lda $1701                    ; b503: ad 01 17
	.db $d0, $1f                 ; b506: d0 1f
loc_b508:
	lda $1704                    ; b508: ad 04 17
	cmp.b #$02                   ; b50b: c9 02
	.db $f0, $2b                 ; b50d: f0 2b
loc_b50f:
	lda $ad                      ; b50f: a5 ad
	and.b #$0f                   ; b511: 29 0f
	.db $d0, $12                 ; b513: d0 12
loc_b515:
	lda $1713                    ; b515: ad 13 17
	sta $0c                      ; b518: 85 0c
	lda $1714                    ; b51a: ad 14 17
	sta $0e                      ; b51d: 85 0e
	jsl $15be47                  ; b51f: 22 47 be 15
loc_b523:
	lda $d7                      ; b523: a5 d7
	.db $d0, $03                 ; b525: d0 03
loc_b527:
	jmp $b5ed                    ; b527: 4c ed b5

; --- Block at $b52a-$b532 ---
loc_b52a:
	lda $ad                      ; b52a: a5 ad
	cmp.b #$10                   ; b52c: c9 10
	.db $f0, $05                 ; b52e: f0 05
loc_b530:
	lda.b #$02                   ; b530: a9 02
	jmp $b4b7                    ; b532: 4c b7 b4

; --- Block at $b535-$b537 ---
loc_b535:
	lda.b #$03                   ; b535: a9 03
	jmp $b552                    ; b537: 4c 52 b5

; --- Block at $b53a-$b566 ---
loc_b53a:
	lda.b #$00                   ; b53a: a9 00
	jsl $15b866                  ; b53c: 22 66 b8 15
loc_b540:
	stz $0d                      ; b540: 64 0d
	stz $0f                      ; b542: 64 0f
	lda.b #$70                   ; b544: a9 70
	sta $0c                      ; b546: 85 0c
	lda.b #$70                   ; b548: a9 70
	sec                          ; b54a: 38
	sbc $b5                      ; b54b: e5 b5
	sta $0e                      ; b54d: 85 0e
	lda $1705                    ; b54f: ad 05 17
loc_b552:
	asl                          ; b552: 0a
	asl                          ; b553: 0a
	asl                          ; b554: 0a
	asl                          ; b555: 0a
	asl                          ; b556: 0a
	sta $07                      ; b557: 85 07
	lda $1704                    ; b559: ad 04 17
	cmp.b #$02                   ; b55c: c9 02
	.db $d0, $09                 ; b55e: d0 09
loc_b560:
	lda $7a                      ; b560: a5 7a
	and.b #$04                   ; b562: 29 04
	asl                          ; b564: 0a
	asl                          ; b565: 0a
	jmp $b56b                    ; b566: 4c 6b b5

; --- Block at $b569-$b56b ---
loc_b569:
	lda.b #$00                   ; b569: a9 00

; --- Block at $b56b-$b5c0 ---
loc_b56b:
	clc                          ; b56b: 18
	adc $07                      ; b56c: 65 07
	tax                          ; b56e: aa
	ldy.w #$0000                 ; b56f: a0 00 00
	lda $bfb4,x                  ; b572: bd b4 bf
	clc                          ; b575: 18
	adc $0c                      ; b576: 65 0c
	sta $0414,y                  ; b578: 99 14 04
	lda $0d                      ; b57b: a5 0d
	adc.b #$00                   ; b57d: 69 00
	and.b #$01                   ; b57f: 29 01
	.db $f0, $06                 ; b581: f0 06
loc_b583:
	lda.b #$45                   ; b583: a9 45
	jsl $15b3af                  ; b585: 22 af b3 15
loc_b589:
	lda $bfb5,x                  ; b589: bd b5 bf
	clc                          ; b58c: 18
	adc $0e                      ; b58d: 65 0e
	sta $0415,y                  ; b58f: 99 15 04
	lda $bfb6,x                  ; b592: bd b6 bf
	clc                          ; b595: 18
	adc.b #$90                   ; b596: 69 90
	sta $0416,y                  ; b598: 99 16 04
	lda $bfb7,x                  ; b59b: bd b7 bf
	clc                          ; b59e: 18
	adc.b #$1a                   ; b59f: 69 1a
	sta $0417,y                  ; b5a1: 99 17 04
	inx                          ; b5a4: e8
	inx                          ; b5a5: e8
	inx                          ; b5a6: e8
	inx                          ; b5a7: e8
	iny                          ; b5a8: c8
	iny                          ; b5a9: c8
	iny                          ; b5aa: c8
	iny                          ; b5ab: c8
	cpy.w #$0010                 ; b5ac: c0 10 00
	.db $d0, $c1                 ; b5af: d0 c1
loc_b5b1:
	lda $1704                    ; b5b1: ad 04 17
	cmp.b #$02                   ; b5b4: c9 02
	.db $f0, $0b                 ; b5b6: f0 0b
loc_b5b8:
	lda.b #$f8                   ; b5b8: a9 f8
	sta $041d                    ; b5ba: 8d 1d 04
	sta $0421                    ; b5bd: 8d 21 04
	jmp $b5ed                    ; b5c0: 4c ed b5

; --- Block at $b5c3-$b5ed ---
loc_b5c3:
	lda $a1                      ; b5c3: a5 a1
	and.b #$08                   ; b5c5: 29 08
	.db $f0, $24                 ; b5c7: f0 24
loc_b5c9:
	lda.b #$70                   ; b5c9: a9 70
	sta $040c                    ; b5cb: 8d 0c 04
	lda.b #$78                   ; b5ce: a9 78
	sta $040d                    ; b5d0: 8d 0d 04
	lda.b #$43                   ; b5d3: a9 43
	sta $040e                    ; b5d5: 8d 0e 04
	stz $040f                    ; b5d8: 9c 0f 04
	lda.b #$78                   ; b5db: a9 78
	sta $0410                    ; b5dd: 8d 10 04
	lda.b #$78                   ; b5e0: a9 78
	sta $0411                    ; b5e2: 8d 11 04
	lda.b #$43                   ; b5e5: a9 43
	sta $0412                    ; b5e7: 8d 12 04
	stz $0413                    ; b5ea: 9c 13 04

; --- Block at $b5ed-$b697 ---
loc_b5ed:
	plb                          ; b5ed: ab
	rtl                          ; b5ee: 6b
	phb                          ; b5ef: 8b
	lda.b #$15                   ; b5f0: a9 15
	pha                          ; b5f2: 48
	plb                          ; b5f3: ab
	lda $1701                    ; b5f4: ad 01 17
	cmp.b #$01                   ; b5f7: c9 01
	.db $d0, $68                 ; b5f9: d0 68
loc_b5fb:
	stz $0b                      ; b5fb: 64 0b
	lda $0b                      ; b5fd: a5 0b
	tax                          ; b5ff: aa
	lda $b665,x                  ; b600: bd 65 b6
	sta $0c                      ; b603: 85 0c
	lda $b66a,x                  ; b605: bd 6a b6
	sta $0e                      ; b608: 85 0e
	jsl $15be47                  ; b60a: 22 47 be 15
loc_b60e:
	lda $d7                      ; b60e: a5 d7
	.db $f0, $49                 ; b610: f0 49
loc_b612:
	ldx.w #$0000                 ; b612: a2 00 00
	lda $0b                      ; b615: a5 0b
	asl                          ; b617: 0a
	asl                          ; b618: 0a
	asl                          ; b619: 0a
	asl                          ; b61a: 0a
	tay                          ; b61b: a8
	lda $bfb4,x                  ; b61c: bd b4 bf
	clc                          ; b61f: 18
	adc $0c                      ; b620: 65 0c
	sta $0480,y                  ; b622: 99 80 04
	lda $0d                      ; b625: a5 0d
	adc.b #$00                   ; b627: 69 00
	and.b #$01                   ; b629: 29 01
	.db $f0, $06                 ; b62b: f0 06
loc_b62d:
	lda.b #$60                   ; b62d: a9 60
	jsl $15b3af                  ; b62f: 22 af b3 15
loc_b633:
	lda $bfb5,x                  ; b633: bd b5 bf
	clc                          ; b636: 18
	adc $0e                      ; b637: 65 0e
	sta $0481,y                  ; b639: 99 81 04
	lda $bfb6,x                  ; b63c: bd b6 bf
	clc                          ; b63f: 18
	adc.b #$a8                   ; b640: 69 a8
	sta $0482,y                  ; b642: 99 82 04
	lda $bfb7,x                  ; b645: bd b7 bf
	clc                          ; b648: 18
	adc.b #$18                   ; b649: 69 18
	sta $0483,y                  ; b64b: 99 83 04
	inx                          ; b64e: e8
	inx                          ; b64f: e8
	inx                          ; b650: e8
	inx                          ; b651: e8
	iny                          ; b652: c8
	iny                          ; b653: c8
	iny                          ; b654: c8
	iny                          ; b655: c8
	cpx.w #$0010                 ; b656: e0 10 00
	.db $d0, $c1                 ; b659: d0 c1
loc_b65b:
	inc $0b                      ; b65b: e6 0b
	lda $0b                      ; b65d: a5 0b
	cmp.b #$05                   ; b65f: c9 05
	.db $d0, $9a                 ; b661: d0 9a
loc_b663:
	plb                          ; b663: ab
	rtl                          ; b664: 6b
	rol $302f                    ; b665: 2e 2f 30
	and ($32),y                  ; b668: 31 32
	ora ($14,s),y                ; b66a: 13 14
	ora ($14,s),y                ; b66c: 13 14
	ora ($8b,s),y                ; b66e: 13 8b
	lda.b #$15                   ; b670: a9 15
	pha                          ; b672: 48
	plb                          ; b673: ab
	lda $1728                    ; b674: ad 28 17
	.db $f0, $1e                 ; b677: f0 1e
loc_b679:
	lda $1701                    ; b679: ad 01 17
	.db $d0, $19                 ; b67c: d0 19
loc_b67e:
	lda $1704                    ; b67e: ad 04 17
	cmp.b #$07                   ; b681: c9 07
	.db $f0, $1a                 ; b683: f0 1a
loc_b685:
	lda $1729                    ; b685: ad 29 17
	sta $0c                      ; b688: 85 0c
	lda $172a                    ; b68a: ad 2a 17
	sta $0e                      ; b68d: 85 0e
	jsl $15be47                  ; b68f: 22 47 be 15
loc_b693:
	lda $d7                      ; b693: a5 d7
	.db $d0, $03                 ; b695: d0 03
loc_b697:
	jmp $b70d                    ; b697: 4c 0d b7

; --- Block at $b69a-$b69c ---
loc_b69a:
	lda.b #$00                   ; b69a: a9 00
	jmp $b6ae                    ; b69c: 4c ae b6

; --- Block at $b69f-$b6c2 ---
loc_b69f:
	stz $0d                      ; b69f: 64 0d
	stz $0f                      ; b6a1: 64 0f
	lda.b #$70                   ; b6a3: a9 70
	sta $0c                      ; b6a5: 85 0c
	lda.b #$70                   ; b6a7: a9 70
	sta $0e                      ; b6a9: 85 0e
	lda $1705                    ; b6ab: ad 05 17
loc_b6ae:
	asl                          ; b6ae: 0a
	asl                          ; b6af: 0a
	asl                          ; b6b0: 0a
	asl                          ; b6b1: 0a
	asl                          ; b6b2: 0a
	sta $07                      ; b6b3: 85 07
	lda $1704                    ; b6b5: ad 04 17
	cmp.b #$07                   ; b6b8: c9 07
	.db $d0, $09                 ; b6ba: d0 09
loc_b6bc:
	lda $7a                      ; b6bc: a5 7a
	and.b #$04                   ; b6be: 29 04
	asl                          ; b6c0: 0a
	asl                          ; b6c1: 0a
	jmp $b6c7                    ; b6c2: 4c c7 b6

; --- Block at $b6c5-$b6c7 ---
loc_b6c5:
	lda.b #$00                   ; b6c5: a9 00

; --- Block at $b6c7-$b70d ---
loc_b6c7:
	clc                          ; b6c7: 18
	adc $07                      ; b6c8: 65 07
	tax                          ; b6ca: aa
	ldy.w #$0000                 ; b6cb: a0 00 00
	lda $bfb4,x                  ; b6ce: bd b4 bf
	clc                          ; b6d1: 18
	adc $0c                      ; b6d2: 65 0c
	sta $0480,y                  ; b6d4: 99 80 04
	lda $0d                      ; b6d7: a5 0d
	adc.b #$00                   ; b6d9: 69 00
	and.b #$01                   ; b6db: 29 01
	.db $f0, $06                 ; b6dd: f0 06
loc_b6df:
	lda.b #$60                   ; b6df: a9 60
	jsl $15b3af                  ; b6e1: 22 af b3 15
loc_b6e5:
	lda $bfb5,x                  ; b6e5: bd b5 bf
	clc                          ; b6e8: 18
	adc $0e                      ; b6e9: 65 0e
	sta $0481,y                  ; b6eb: 99 81 04
	lda $bfb6,x                  ; b6ee: bd b6 bf
	clc                          ; b6f1: 18
	adc.b #$60                   ; b6f2: 69 60
	sta $0482,y                  ; b6f4: 99 82 04
	lda $bfb7,x                  ; b6f7: bd b7 bf
	clc                          ; b6fa: 18
	adc.b #$18                   ; b6fb: 69 18
	sta $0483,y                  ; b6fd: 99 83 04
	inx                          ; b700: e8
	inx                          ; b701: e8
	inx                          ; b702: e8
	inx                          ; b703: e8
	iny                          ; b704: c8
	iny                          ; b705: c8
	iny                          ; b706: c8
	iny                          ; b707: c8
	cpy.w #$0010                 ; b708: c0 10 00
	.db $d0, $c1                 ; b70b: d0 c1

; --- Block at $b70d-$b72d ---
loc_b70d:
	plb                          ; b70d: ab
	rtl                          ; b70e: 6b
	phb                          ; b70f: 8b
	lda.b #$15                   ; b710: a9 15
	pha                          ; b712: 48
	plb                          ; b713: ab
	lda $1718                    ; b714: ad 18 17
	.db $f0, $2f                 ; b717: f0 2f
loc_b719:
	lda $1701                    ; b719: ad 01 17
	cmp $171b                    ; b71c: cd 1b 17
	.db $d0, $27                 ; b71f: d0 27
loc_b721:
	lda $1704                    ; b721: ad 04 17
	cmp.b #$03                   ; b724: c9 03
	.db $f0, $33                 ; b726: f0 33
loc_b728:
	lda $06d0                    ; b728: ad d0 06
	.db $f0, $03                 ; b72b: f0 03
loc_b72d:
	jmp $b7d6                    ; b72d: 4c d6 b7

; --- Block at $b730-$b748 ---
loc_b730:
	lda $ad                      ; b730: a5 ad
	and.b #$0f                   ; b732: 29 0f
	.db $d0, $12                 ; b734: d0 12
loc_b736:
	lda $1719                    ; b736: ad 19 17
	sta $0c                      ; b739: 85 0c
	lda $171a                    ; b73b: ad 1a 17
	sta $0e                      ; b73e: 85 0e
	jsl $15be47                  ; b740: 22 47 be 15
loc_b744:
	lda $d7                      ; b744: a5 d7
	.db $d0, $03                 ; b746: d0 03

; --- Block at $b748-$b748 ---
loc_b748:
	jmp $b814                    ; b748: 4c 14 b8

; --- Block at $b74b-$b753 ---
loc_b74b:
	lda $ad                      ; b74b: a5 ad
	cmp.b #$10                   ; b74d: c9 10
	.db $f0, $05                 ; b74f: f0 05
loc_b751:
	lda.b #$03                   ; b751: a9 03
	jmp $b4b7                    ; b753: 4c b7 b4

; --- Block at $b756-$b758 ---
loc_b756:
	lda.b #$03                   ; b756: a9 03
	jmp $b773                    ; b758: 4c 73 b7

; --- Block at $b75b-$b788 ---
loc_b75b:
	lda.b #$00                   ; b75b: a9 00
	jsl $15b866                  ; b75d: 22 66 b8 15
loc_b761:
	stz $0d                      ; b761: 64 0d
	stz $0f                      ; b763: 64 0f
	lda.b #$70                   ; b765: a9 70
	sta $0c                      ; b767: 85 0c
	lda.b #$70                   ; b769: a9 70
	sec                          ; b76b: 38
	sbc $b6                      ; b76c: e5 b6
	sta $0e                      ; b76e: 85 0e
	lda $1705                    ; b770: ad 05 17
	asl                          ; b773: 0a
	asl                          ; b774: 0a
	asl                          ; b775: 0a
	asl                          ; b776: 0a
	asl                          ; b777: 0a
	sta $07                      ; b778: 85 07
	lda $1704                    ; b77a: ad 04 17
	cmp.b #$03                   ; b77d: c9 03
	.db $d0, $0a                 ; b77f: d0 0a
loc_b781:
	lda $7a                      ; b781: a5 7a
	and.b #$02                   ; b783: 29 02
	asl                          ; b785: 0a
	asl                          ; b786: 0a
	asl                          ; b787: 0a
	jmp $b78d                    ; b788: 4c 8d b7

; --- Block at $b78b-$b78d ---
loc_b78b:
	lda.b #$00                   ; b78b: a9 00

; --- Block at $b78d-$b7d3 ---
loc_b78d:
	clc                          ; b78d: 18
	adc $07                      ; b78e: 65 07
	tax                          ; b790: aa
	ldy.w #$0000                 ; b791: a0 00 00
	lda $bfb4,x                  ; b794: bd b4 bf
	clc                          ; b797: 18
	adc $0c                      ; b798: 65 0c
	sta $0480,y                  ; b79a: 99 80 04
	lda $0d                      ; b79d: a5 0d
	adc.b #$00                   ; b79f: 69 00
	and.b #$01                   ; b7a1: 29 01
	.db $f0, $06                 ; b7a3: f0 06
loc_b7a5:
	lda.b #$60                   ; b7a5: a9 60
	jsl $15b3af                  ; b7a7: 22 af b3 15
loc_b7ab:
	lda $bfb5,x                  ; b7ab: bd b5 bf
	clc                          ; b7ae: 18
	adc $0e                      ; b7af: 65 0e
	sta $0481,y                  ; b7b1: 99 81 04
	lda $bfb6,x                  ; b7b4: bd b6 bf
	clc                          ; b7b7: 18
	adc.b #$48                   ; b7b8: 69 48
	sta $0482,y                  ; b7ba: 99 82 04
	lda $bfb7,x                  ; b7bd: bd b7 bf
	clc                          ; b7c0: 18
	adc.b #$18                   ; b7c1: 69 18
	sta $0483,y                  ; b7c3: 99 83 04
	inx                          ; b7c6: e8
	inx                          ; b7c7: e8
	inx                          ; b7c8: e8
	inx                          ; b7c9: e8
	iny                          ; b7ca: c8
	iny                          ; b7cb: c8
	iny                          ; b7cc: c8
	iny                          ; b7cd: c8
	cpy.w #$0010                 ; b7ce: c0 10 00
	.db $d0, $c1                 ; b7d1: d0 c1
loc_b7d3:
	jmp $b814                    ; b7d3: 4c 14 b8

; --- Block at $b7d6-$b7e2 ---
loc_b7d6:
	lda $06f8                    ; b7d6: ad f8 06
	.db $d0, $0a                 ; b7d9: d0 0a
loc_b7db:
	lda $1705                    ; b7db: ad 05 17
	asl                          ; b7de: 0a
	asl                          ; b7df: 0a
	asl                          ; b7e0: 0a
	asl                          ; b7e1: 0a
	jmp $b7e7                    ; b7e2: 4c e7 b7

; --- Block at $b7e5-$b814 ---
loc_b7e5:
	lda.b #$40                   ; b7e5: a9 40
loc_b7e7:
	tax                          ; b7e7: aa
	ldy.w #$0000                 ; b7e8: a0 00 00
	lda $b816,x                  ; b7eb: bd 16 b8
	sta $0480,y                  ; b7ee: 99 80 04
	lda $b817,x                  ; b7f1: bd 17 b8
	clc                          ; b7f4: 18
	adc $06f8                    ; b7f5: 6d f8 06
	sta $0481,y                  ; b7f8: 99 81 04
	lda $b818,x                  ; b7fb: bd 18 b8
	sta $0482,y                  ; b7fe: 99 82 04
	lda $b819,x                  ; b801: bd 19 b8
	sta $0483,y                  ; b804: 99 83 04
	inx                          ; b807: e8
	inx                          ; b808: e8
	inx                          ; b809: e8
	inx                          ; b80a: e8
	iny                          ; b80b: c8
	iny                          ; b80c: c8
	iny                          ; b80d: c8
	iny                          ; b80e: c8
	cpy.w #$0010                 ; b80f: c0 10 00
	.db $d0, $d7                 ; b812: d0 d7

; --- Block at $b814-$b958 ---
loc_b814:
	plb                          ; b814: ab
	rtl                          ; b815: 6b
	.db $70, $6a                 ; b816: 70 6a
loc_b818:
	cpy.w #$782a                 ; b818: c0 2a 78
	ror                          ; b81b: 6a
	cmp ($2a,x)                  ; b81c: c1 2a
	.db $70, $72                 ; b81e: 70 72
loc_b820:
	rep #$2a                     ; b820: c2 2a
	sei                          ; b822: 78
	adc ($c3)                    ; b823: 72 c3
	rol                          ; b825: 2a
	.db $70, $6a                 ; b826: 70 6a
loc_b828:
	cpy $2a                      ; b828: c4 2a
	sei                          ; b82a: 78
	ror                          ; b82b: 6a
	cmp $2a                      ; b82c: c5 2a
	.db $70, $72                 ; b82e: 70 72
loc_b830:
	dec $2a                      ; b830: c6 2a
	sei                          ; b832: 78
	adc ($c7)                    ; b833: 72 c7
	rol                          ; b835: 2a
	.db $70, $6a                 ; b836: 70 6a
loc_b838:
	iny                          ; b838: c8
	rol                          ; b839: 2a
	sei                          ; b83a: 78
	ror                          ; b83b: 6a
	cmp.w #$702a                 ; b83c: c9 2a 70
	adc ($ca)                    ; b83f: 72 ca
	rol                          ; b841: 2a
	sei                          ; b842: 78
	adc ($cb)                    ; b843: 72 cb
	rol                          ; b845: 2a
	.db $70, $6a                 ; b846: 70 6a
loc_b848:
	cpy $782a                    ; b848: cc 2a 78
	ror                          ; b84b: 6a
	cmp $702a                    ; b84c: cd 2a 70
	adc ($ce)                    ; b84f: 72 ce
	rol                          ; b851: 2a
	sei                          ; b852: 78
	adc ($cf)                    ; b853: 72 cf
	rol                          ; b855: 2a
	.db $70, $6a                 ; b856: 70 6a
loc_b858:
	rol                          ; b858: 2a
	pld                          ; b859: 2b
	sei                          ; b85a: 78
	ror                          ; b85b: 6a
	pld                          ; b85c: 2b
	pld                          ; b85d: 2b
	.db $70, $72                 ; b85e: 70 72
loc_b860:
	bit $782b                    ; b860: 2c 2b 78
	adc ($2d)                    ; b863: 72 2d
	pld                          ; b865: 2b
	cmp.w #$9010                 ; b866: c9 10 90
	cop #$a9                     ; b869: 02 a9
	.db $10, $29                 ; b86b: 10 29
loc_b86d:
	jsr ($c9aa,x)                ; b86d: fc aa c9
	.db $10, $f0                 ; b870: 10 f0
loc_b872:
	asl $a5                      ; b872: 06 a5
	ply                          ; b874: 7a
	and.w #$d001                 ; b875: 29 01 d0
	eor $d0c8a5                  ; b878: 4f a5 c8 d0
	phk                          ; b87c: 4b
	lda $a1                      ; b87d: a5 a1
	and.w #$d008                 ; b87f: 29 08 d0
loc_b882:
	asl $a5                      ; b882: 06 a5
	lda ($29,x)                  ; b884: a1 29
	tsb $d0                      ; b886: 04 d0
	ora $a9                      ; b888: 05 a9
	inc $904c,x                  ; b88a: fe 4c 90
	clv                          ; b88d: b8
	lda.w #$8500                 ; b88e: a9 00 85
	asl $a9                      ; b891: 06 a9
	.db $70, $8d                 ; b893: 70 8d
loc_b895:
	cpy.w #$a904                 ; b895: c0 04 a9
	sei                          ; b898: 78
	clc                          ; b899: 18
	adc $06                      ; b89a: 65 06
	sta $04c1                    ; b89c: 8d c1 04
	lda $15b8c9,x                ; b89f: bf c9 b8 15
	sta $04c2                    ; b8a3: 8d c2 04
	lda $15b8ca,x                ; b8a6: bf ca b8 15
	sta $04c3                    ; b8aa: 8d c3 04
	lda.w #$8d78                 ; b8ad: a9 78 8d
	cpy $04                      ; b8b0: c4 04
loc_b8b2:
	lda.w #$1878                 ; b8b2: a9 78 18
	adc $06                      ; b8b5: 65 06
	sta $04c5                    ; b8b7: 8d c5 04
	lda $15b8cb,x                ; b8ba: bf cb b8 15
	sta $04c6                    ; b8be: 8d c6 04
	lda $15b8cc,x                ; b8c1: bf cc b8 15
	sta $04c7                    ; b8c5: 8d c7 04
	rtl                          ; b8c8: 6b
	tsc                          ; b8c9: 3b
	plp                          ; b8ca: 28
	tsc                          ; b8cb: 3b
	pla                          ; b8cc: 68
	dec                          ; b8cd: 3a
	plp                          ; b8ce: 28
	dec                          ; b8cf: 3a
	pla                          ; b8d0: 68
	and $3928,y                  ; b8d1: 39 28 39
	pla                          ; b8d4: 68
	sec                          ; b8d5: 38
	plp                          ; b8d6: 28
	sec                          ; b8d7: 38
	pla                          ; b8d8: 68
	sec                          ; b8d9: 38
	plp                          ; b8da: 28
	sec                          ; b8db: 38
	pla                          ; b8dc: 68
	phb                          ; b8dd: 8b
	lda.w #$4815                 ; b8de: a9 15 48
	plb                          ; b8e1: ab
	lda $1704                    ; b8e2: ad 04 17
	cmp.w #$f004                 ; b8e5: c9 04 f0
	sec                          ; b8e8: 38
	lda $171c                    ; b8e9: ad 1c 17
	.db $f0, $20                 ; b8ec: f0 20
loc_b8ee:
	lda $1701                    ; b8ee: ad 01 17
	cmp $171f                    ; b8f1: cd 1f 17
	.db $d0, $18                 ; b8f4: d0 18
loc_b8f6:
	lda $ad                      ; b8f6: a5 ad
	and.w #$d00f                 ; b8f8: 29 0f d0
	ora ($ad)                    ; b8fb: 12 ad
	ora $8517,x                  ; b8fd: 1d 17 85
	tsb $1ead                    ; b900: 0c ad 1e
	ora [$85],y                  ; b903: 17 85
	asl $4722                    ; b905: 0e 22 47
	ldx $a515,y                  ; b908: be 15 a5
	cmp [$d0],y                  ; b90b: d7 d0
	ora $4c,s                    ; b90d: 03 4c
	dex                          ; b90f: ca
	lda $ada5,y                  ; b910: b9 a5 ad
	cmp.w #$f010                 ; b913: c9 10 f0
	ora $a9                      ; b916: 05 a9
	tsb $4c                      ; b918: 04 4c
	lda [$b4],y                  ; b91a: b7 b4
	lda.w #$4c03                 ; b91c: a9 03 4c
	and $a5b9,y                  ; b91f: 39 b9 a5
	lda [$22],y                  ; b922: b7 22
	ror $b8                      ; b924: 66 b8
	ora $a9,x                    ; b926: 15 a9
	.db $70, $85                 ; b928: 70 85
loc_b92a:
	tsb $70a9                    ; b92a: 0c a9 70
	sec                          ; b92d: 38
	sbc $b7                      ; b92e: e5 b7
	sta $0e                      ; b930: 85 0e
	stz $0d                      ; b932: 64 0d
	stz $0f                      ; b934: 64 0f
	lda $1705                    ; b936: ad 05 17
	asl                          ; b939: 0a
	asl                          ; b93a: 0a
	asl                          ; b93b: 0a
	asl                          ; b93c: 0a
	asl                          ; b93d: 0a
	sta $07                      ; b93e: 85 07
	lda $1704                    ; b940: ad 04 17
	cmp.w #$d004                 ; b943: c9 04 d0
	.db $10, $ad                 ; b946: 10 ad
loc_b948:
	sbc $aa06,x                  ; b948: fd 06 aa
	lda $7a                      ; b94b: a5 7a
	and $be37,x                  ; b94d: 3d 37 be
	.db $d0, $05                 ; b950: d0 05
loc_b952:
	lda.w #$4c10                 ; b952: a9 10 4c
	eor $a9b9,y                  ; b955: 59 b9 a9
	brk #$18                     ; b958: 00 18

; --- Block at $b862-$b863 ---
loc_b862:
	sei                          ; b862: 78

; --- Block at $b890-$b899 ---
loc_b890:
	sta $06                      ; b890: 85 06
loc_b892:
	lda.b #$70                   ; b892: a9 70
	sta $04c0                    ; b894: 8d c0 04
	lda.b #$78                   ; b897: a9 78

; --- Block at $b896-$b898 ---
loc_b896:
	tsb $a9                      ; b896: 04 a9

; --- Block at $b8a2-$b8a6 ---
loc_b8a2:
	ora $8d,x                    ; b8a2: 15 8d
	rep #$04                     ; b8a4: c2 04

; --- Block at $b8af-$b8b2 ---
loc_b8af:
	sta $04c4                    ; b8af: 8d c4 04

; --- Block at $b8c2-$b8c5 ---
loc_b8c2:
	cpy $15b8                    ; b8c2: cc b8 15

; --- Block at $b8d2-$b8d6 ---
loc_b8d2:
	plp                          ; b8d2: 28
	and $3868,y                  ; b8d3: 39 68 38

; --- Block at $b8f5-$b8f6 ---
loc_b8f5:
	clc                          ; b8f5: 18

; --- Block at $b90e-$b90e ---
loc_b90e:
	jmp $b9ca                    ; b90e: 4c ca b9

; --- Block at $b957-$b95a ---
loc_b957:
	lda.w #$1800                 ; b957: a9 00 18

; --- Block at $b959-$b9ca ---
loc_b959:
	clc                          ; b959: 18
	adc $07                      ; b95a: 65 07
	tax                          ; b95c: aa
	ldy.w #$0000                 ; b95d: a0 00 00
	lda $bfb4,x                  ; b960: bd b4 bf
	clc                          ; b963: 18
	adc $0c                      ; b964: 65 0c
	sta $046c,y                  ; b966: 99 6c 04
	lda $0d                      ; b969: a5 0d
	adc.b #$00                   ; b96b: 69 00
	and.b #$01                   ; b96d: 29 01
	.db $f0, $06                 ; b96f: f0 06
loc_b971:
	lda.b #$5b                   ; b971: a9 5b
	jsl $15b3af                  ; b973: 22 af b3 15
loc_b977:
	lda $bfb5,x                  ; b977: bd b5 bf
	clc                          ; b97a: 18
	adc $0e                      ; b97b: 65 0e
	sta $046d,y                  ; b97d: 99 6d 04
	lda $bfb6,x                  ; b980: bd b6 bf
	clc                          ; b983: 18
	adc.b #$78                   ; b984: 69 78
	sta $046e,y                  ; b986: 99 6e 04
	lda $bfb7,x                  ; b989: bd b7 bf
	clc                          ; b98c: 18
	adc.b #$18                   ; b98d: 69 18
	sta $046f,y                  ; b98f: 99 6f 04
	inx                          ; b992: e8
	inx                          ; b993: e8
	inx                          ; b994: e8
	inx                          ; b995: e8
	iny                          ; b996: c8
	iny                          ; b997: c8
	iny                          ; b998: c8
	iny                          ; b999: c8
	cpy.w #$0010                 ; b99a: c0 10 00
	.db $d0, $c1                 ; b99d: d0 c1
loc_b99f:
	lda $1704                    ; b99f: ad 04 17
	cmp.b #$04                   ; b9a2: c9 04
	.db $d0, $24                 ; b9a4: d0 24
loc_b9a6:
	lda $ad                      ; b9a6: a5 ad
	cmp.b #$20                   ; b9a8: c9 20
	.db $d0, $1e                 ; b9aa: d0 1e
loc_b9ac:
	lda $b7                      ; b9ac: a5 b7
	cmp.b #$10                   ; b9ae: c9 10
	.db $d0, $18                 ; b9b0: d0 18
loc_b9b2:
	lda.b #$74                   ; b9b2: a9 74
	sta $047c                    ; b9b4: 8d 7c 04
	lda $06f8                    ; b9b7: ad f8 06
	clc                          ; b9ba: 18
	adc.b #$68                   ; b9bb: 69 68
	sta $047d                    ; b9bd: 8d 7d 04
	lda.b #$2e                   ; b9c0: a9 2e
	sta $047e                    ; b9c2: 8d 7e 04
	lda.b #$21                   ; b9c5: a9 21
	sta $047f                    ; b9c7: 8d 7f 04

; --- Block at $b9ca-$b9fd ---
loc_b9ca:
	plb                          ; b9ca: ab
	rtl                          ; b9cb: 6b
	phb                          ; b9cc: 8b
	lda.b #$15                   ; b9cd: a9 15
	pha                          ; b9cf: 48
	plb                          ; b9d0: ab
	lda $1704                    ; b9d1: ad 04 17
	cmp.b #$05                   ; b9d4: c9 05
	.db $f0, $38                 ; b9d6: f0 38
loc_b9d8:
	lda $1720                    ; b9d8: ad 20 17
	.db $f0, $20                 ; b9db: f0 20
loc_b9dd:
	lda $1701                    ; b9dd: ad 01 17
	cmp $1723                    ; b9e0: cd 23 17
	.db $d0, $18                 ; b9e3: d0 18
loc_b9e5:
	lda $ad                      ; b9e5: a5 ad
	and.b #$0f                   ; b9e7: 29 0f
	.db $d0, $12                 ; b9e9: d0 12
loc_b9eb:
	lda $1721                    ; b9eb: ad 21 17
	sta $0c                      ; b9ee: 85 0c
	lda $1722                    ; b9f0: ad 22 17
	sta $0e                      ; b9f3: 85 0e
	jsl $15be47                  ; b9f5: 22 47 be 15
loc_b9f9:
	lda $d7                      ; b9f9: a5 d7
	.db $d0, $03                 ; b9fb: d0 03
loc_b9fd:
	jmp $bb12                    ; b9fd: 4c 12 bb

; --- Block at $ba00-$ba08 ---
loc_ba00:
	lda $ad                      ; ba00: a5 ad
	cmp.b #$10                   ; ba02: c9 10
	.db $f0, $05                 ; ba04: f0 05
loc_ba06:
	lda.b #$05                   ; ba06: a9 05
	jmp $b4b7                    ; ba08: 4c b7 b4

; --- Block at $ba0b-$ba0d ---
loc_ba0b:
	lda.b #$03                   ; ba0b: a9 03
	jmp $ba28                    ; ba0d: 4c 28 ba

; --- Block at $ba10-$ba43 ---
loc_ba10:
	lda $b8                      ; ba10: a5 b8
	jsl $15b866                  ; ba12: 22 66 b8 15
loc_ba16:
	lda.b #$70                   ; ba16: a9 70
	sta $0c                      ; ba18: 85 0c
	lda.b #$70                   ; ba1a: a9 70
	sec                          ; ba1c: 38
	sbc $b8                      ; ba1d: e5 b8
	sta $0e                      ; ba1f: 85 0e
	stz $0d                      ; ba21: 64 0d
	stz $0f                      ; ba23: 64 0f
	lda $1705                    ; ba25: ad 05 17
	asl                          ; ba28: 0a
	asl                          ; ba29: 0a
	asl                          ; ba2a: 0a
	asl                          ; ba2b: 0a
	asl                          ; ba2c: 0a
	sta $07                      ; ba2d: 85 07
	lda $1704                    ; ba2f: ad 04 17
	cmp.b #$05                   ; ba32: c9 05
	.db $d0, $10                 ; ba34: d0 10
loc_ba36:
	lda $06fd                    ; ba36: ad fd 06
	tax                          ; ba39: aa
	lda $7a                      ; ba3a: a5 7a
	and $be37,x                  ; ba3c: 3d 37 be
	.db $d0, $05                 ; ba3f: d0 05
loc_ba41:
	lda.b #$10                   ; ba41: a9 10
	jmp $ba48                    ; ba43: 4c 48 ba

; --- Block at $ba46-$ba48 ---
loc_ba46:
	lda.b #$00                   ; ba46: a9 00

; --- Block at $ba48-$baa2 ---
loc_ba48:
	clc                          ; ba48: 18
	adc $07                      ; ba49: 65 07
	tax                          ; ba4b: aa
	ldy.w #$0000                 ; ba4c: a0 00 00
	lda $bfb4,x                  ; ba4f: bd b4 bf
	clc                          ; ba52: 18
	adc $0c                      ; ba53: 65 0c
	sta $0458,y                  ; ba55: 99 58 04
	lda $0d                      ; ba58: a5 0d
	adc.b #$00                   ; ba5a: 69 00
	and.b #$01                   ; ba5c: 29 01
	.db $f0, $06                 ; ba5e: f0 06
loc_ba60:
	lda.b #$56                   ; ba60: a9 56
	jsl $15b3af                  ; ba62: 22 af b3 15
loc_ba66:
	lda $bfb5,x                  ; ba66: bd b5 bf
	clc                          ; ba69: 18
	adc $0e                      ; ba6a: 65 0e
	sta $0459,y                  ; ba6c: 99 59 04
	lda $bfb6,x                  ; ba6f: bd b6 bf
	clc                          ; ba72: 18
	adc.b #$d8                   ; ba73: 69 d8
	sta $045a,y                  ; ba75: 99 5a 04
	lda $bfb7,x                  ; ba78: bd b7 bf
	clc                          ; ba7b: 18
	adc.b #$1c                   ; ba7c: 69 1c
	sta $045b,y                  ; ba7e: 99 5b 04
	inx                          ; ba81: e8
	inx                          ; ba82: e8
	inx                          ; ba83: e8
	inx                          ; ba84: e8
	iny                          ; ba85: c8
	iny                          ; ba86: c8
	iny                          ; ba87: c8
	iny                          ; ba88: c8
	cpy.w #$0010                 ; ba89: c0 10 00
	.db $d0, $c1                 ; ba8c: d0 c1
loc_ba8e:
	lda $1287                    ; ba8e: ad 87 12
	and.b #$20                   ; ba91: 29 20
	.db $f0, $7d                 ; ba93: f0 7d
loc_ba95:
	lda $1704                    ; ba95: ad 04 17
	cmp.b #$05                   ; ba98: c9 05
	.db $f0, $09                 ; ba9a: f0 09
loc_ba9c:
	lda $ad                      ; ba9c: a5 ad
	cmp.b #$10                   ; ba9e: c9 10
	.db $f0, $09                 ; baa0: f0 09
loc_baa2:
	jmp $bb12                    ; baa2: 4c 12 bb

; --- Block at $baa5-$baa8 ---
loc_baa5:
	lda $1705                    ; baa5: ad 05 17
	jmp $baad                    ; baa8: 4c ad ba

; --- Block at $baab-$bad0 ---
loc_baab:
	lda.b #$03                   ; baab: a9 03
loc_baad:
	sta $07                      ; baad: 85 07
	tax                          ; baaf: aa
	lda $15bb14,x                ; bab0: bf 14 bb 15
	tay                          ; bab4: a8
	lda $07                      ; bab5: a5 07
	asl                          ; bab7: 0a
	asl                          ; bab8: 0a
	asl                          ; bab9: 0a
	sta $07                      ; baba: 85 07
	lda $1704                    ; babc: ad 04 17
	cmp.b #$05                   ; babf: c9 05
	.db $d0, $10                 ; bac1: d0 10
loc_bac3:
	lda $06fd                    ; bac3: ad fd 06
	tax                          ; bac6: aa
	lda $7a                      ; bac7: a5 7a
	and $be37,x                  ; bac9: 3d 37 be
	.db $f0, $05                 ; bacc: f0 05
loc_bace:
	lda.b #$04                   ; bace: a9 04
	jmp $bad5                    ; bad0: 4c d5 ba

; --- Block at $bad3-$bad5 ---
loc_bad3:
	lda.b #$00                   ; bad3: a9 00

; --- Block at $bad5-$bb12 ---
loc_bad5:
	clc                          ; bad5: 18
	adc $07                      ; bad6: 65 07
	tax                          ; bad8: aa
	lda $0c                      ; bad9: a5 0c
	sec                          ; badb: 38
	sbc.b #$08                   ; badc: e9 08
	sta $0c                      ; bade: 85 0c
	lda $0d                      ; bae0: a5 0d
	sbc.b #$00                   ; bae2: e9 00
	sta $0d                      ; bae4: 85 0d
	lda $0c                      ; bae6: a5 0c
	clc                          ; bae8: 18
	adc $bb18,x                  ; bae9: 7d 18 bb
	sta $0454,y                  ; baec: 99 54 04
	lda $0d                      ; baef: a5 0d
	adc.b #$00                   ; baf1: 69 00
	and.b #$01                   ; baf3: 29 01
	.db $f0, $06                 ; baf5: f0 06
loc_baf7:
	lda.b #$55                   ; baf7: a9 55
	jsl $15b3af                  ; baf9: 22 af b3 15
loc_bafd:
	lda $0e                      ; bafd: a5 0e
	clc                          ; baff: 18
	adc $bb19,x                  ; bb00: 7d 19 bb
	sta $0455,y                  ; bb03: 99 55 04
	lda $bb1a,x                  ; bb06: bd 1a bb
	sta $0456,y                  ; bb09: 99 56 04
	lda $bb1b,x                  ; bb0c: bd 1b bb
	sta $0457,y                  ; bb0f: 99 57 04

; --- Block at $bb12-$bb16 ---
loc_bb12:
	plb                          ; bb12: ab
	rtl                          ; bb13: 6b
	trb $00                      ; bb14: 14 00
	brk #$00                     ; bb16: 00 00

; --- Block at $bbea-$bc1f ---
loc_bbea:
	lda $0e                      ; bbea: a5 0e
	sec                          ; bbec: 38
	sbc.b #$08                   ; bbed: e9 08
	sta $0e                      ; bbef: 85 0e
	ldx.w #$0000                 ; bbf1: a2 00 00
	lda $bc1f,x                  ; bbf4: bd 1f bc
	clc                          ; bbf7: 18
	adc $0c                      ; bbf8: 65 0c
	.db $b0, $18                 ; bbfa: b0 18
loc_bbfc:
	sta $04e0,x                  ; bbfc: 9d e0 04
	lda $bc20,x                  ; bbff: bd 20 bc
	clc                          ; bc02: 18
	adc $0e                      ; bc03: 65 0e
	sta $04e1,x                  ; bc05: 9d e1 04
	lda $bc21,x                  ; bc08: bd 21 bc
	sta $04e2,x                  ; bc0b: 9d e2 04
	lda $bc22,x                  ; bc0e: bd 22 bc
	sta $04e3,x                  ; bc11: 9d e3 04
loc_bc14:
	inx                          ; bc14: e8
	inx                          ; bc15: e8
	inx                          ; bc16: e8
	inx                          ; bc17: e8
	cpx.w #$0010                 ; bc18: e0 10 00
	.db $d0, $d7                 ; bc1b: d0 d7
loc_bc1d:
	plb                          ; bc1d: ab
	rtl                          ; bc1e: 6b
	brk #$00                     ; bc1f: 00 00

; --- Block at $bc92-$bca4 ---
loc_bc92:
	lda $1707                    ; bc92: ad 07 17
	cmp.b #$08                   ; bc95: c9 08
	.db $b0, $0e                 ; bc97: b0 0e
loc_bc99:
	lda $0e                      ; bc99: a5 0e
	cmp.b #$30                   ; bc9b: c9 30
	.db $90, $17                 ; bc9d: 90 17
loc_bc9f:
	sec                          ; bc9f: 38
	sbc.b #$40                   ; bca0: e9 40
	sta $0e                      ; bca2: 85 0e
	jmp $bcb6                    ; bca4: 4c b6 bc

; --- Block at $bca7-$bcb6 ---
loc_bca7:
	cmp.b #$38                   ; bca7: c9 38
	.db $90, $0b                 ; bca9: 90 0b
loc_bcab:
	lda $0e                      ; bcab: a5 0e
	cmp.b #$10                   ; bcad: c9 10
	.db $b0, $05                 ; bcaf: b0 05
loc_bcb1:
	clc                          ; bcb1: 18
	adc.b #$40                   ; bcb2: 69 40
	sta $0e                      ; bcb4: 85 0e

; --- Block at $bcb6-$bcc2 ---
loc_bcb6:
	dec $0c                      ; bcb6: c6 0c
	dec $0e                      ; bcb8: c6 0e
	jsl $15be47                  ; bcba: 22 47 be 15
loc_bcbe:
	lda $d7                      ; bcbe: a5 d7
	.db $d0, $03                 ; bcc0: d0 03
loc_bcc2:
	jmp $bd95                    ; bcc2: 4c 95 bd

; --- Block at $bcc5-$bccb ---
loc_bcc5:
	lda $ad                      ; bcc5: a5 ad
	cmp.b #$10                   ; bcc7: c9 10
	.db $f0, $03                 ; bcc9: f0 03
loc_bccb:
	jmp $bbea                    ; bccb: 4c ea bb

; --- Block at $bcce-$bcd0 ---
loc_bcce:
	lda.b #$03                   ; bcce: a9 03
	jmp $bcff                    ; bcd0: 4c ff bc

; --- Block at $bcd3-$bcdd ---
loc_bcd3:
	lda $b9                      ; bcd3: a5 b9
	cmp.b #$10                   ; bcd5: c9 10
	.db $b0, $07                 ; bcd7: b0 07
loc_bcd9:
	jsl $15bb39                  ; bcd9: 22 39 bb 15
loc_bcdd:
	jmp $bced                    ; bcdd: 4c ed bc

; --- Block at $bce0-$be65 ---
loc_bce0:
	sec                          ; bce0: 38
	sbc.b #$10                   ; bce1: e9 10
	cmp.b #$10                   ; bce3: c9 10
	.db $90, $02                 ; bce5: 90 02
loc_bce7:
	lda.b #$10                   ; bce7: a9 10
loc_bce9:
	jsl $15b866                  ; bce9: 22 66 b8 15
loc_bced:
	lda.b #$60                   ; bced: a9 60
	sta $0c                      ; bcef: 85 0c
	lda.b #$60                   ; bcf1: a9 60
	sec                          ; bcf3: 38
	sbc $b9                      ; bcf4: e5 b9
	sta $0e                      ; bcf6: 85 0e
	stz $0d                      ; bcf8: 64 0d
	stz $0f                      ; bcfa: 64 0f
	lda $1705                    ; bcfc: ad 05 17
	asl                          ; bcff: 0a
	asl                          ; bd00: 0a
	asl                          ; bd01: 0a
	asl                          ; bd02: 0a
	asl                          ; bd03: 0a
	sta $07                      ; bd04: 85 07
	lda $07                      ; bd06: a5 07
	tax                          ; bd08: aa
	stx $40                      ; bd09: 86 40
	ldy.w #$0000                 ; bd0b: a0 00 00
	sty $43                      ; bd0e: 84 43
	ldx $43                      ; bd10: a6 43
	lda $bd97,x                  ; bd12: bd 97 bd
	clc                          ; bd15: 18
	adc $0c                      ; bd16: 65 0c
	sta $0424,y                  ; bd18: 99 24 04
	lda $0d                      ; bd1b: a5 0d
	adc.b #$00                   ; bd1d: 69 00
	and.b #$01                   ; bd1f: 29 01
	.db $f0, $06                 ; bd21: f0 06
loc_bd23:
	lda.b #$49                   ; bd23: a9 49
	jsl $15b3af                  ; bd25: 22 af b3 15
loc_bd29:
	lda $bd98,x                  ; bd29: bd 98 bd
	clc                          ; bd2c: 18
	adc $0e                      ; bd2d: 65 0e
	sta $0425,y                  ; bd2f: 99 25 04
	ldx $40                      ; bd32: a6 40
	lda $bdb7,x                  ; bd34: bd b7 bd
	sta $0426,y                  ; bd37: 99 26 04
	lda $bdb8,x                  ; bd3a: bd b8 bd
	sta $0427,y                  ; bd3d: 99 27 04
	inc $40                      ; bd40: e6 40
	inc $40                      ; bd42: e6 40
	inc $43                      ; bd44: e6 43
	inc $43                      ; bd46: e6 43
	iny                          ; bd48: c8
	iny                          ; bd49: c8
	iny                          ; bd4a: c8
	iny                          ; bd4b: c8
	cpy.w #$0020                 ; bd4c: c0 20 00
	.db $d0, $bf                 ; bd4f: d0 bf
loc_bd51:
	ldy.w #$0000                 ; bd51: a0 00 00
	ldx $43                      ; bd54: a6 43
	lda $bd97,x                  ; bd56: bd 97 bd
	clc                          ; bd59: 18
	adc $0c                      ; bd5a: 65 0c
	sta $04a0,y                  ; bd5c: 99 a0 04
	lda $0d                      ; bd5f: a5 0d
	adc.b #$00                   ; bd61: 69 00
	and.b #$01                   ; bd63: 29 01
	.db $f0, $06                 ; bd65: f0 06
loc_bd67:
	lda.b #$68                   ; bd67: a9 68
	jsl $15b3af                  ; bd69: 22 af b3 15
loc_bd6d:
	lda $bd98,x                  ; bd6d: bd 98 bd
	clc                          ; bd70: 18
	adc $0e                      ; bd71: 65 0e
	sta $04a1,y                  ; bd73: 99 a1 04
	ldx $40                      ; bd76: a6 40
	lda $bdb7,x                  ; bd78: bd b7 bd
	sta $04a2,y                  ; bd7b: 99 a2 04
	lda $bdb8,x                  ; bd7e: bd b8 bd
	sta $04a3,y                  ; bd81: 99 a3 04
	inc $40                      ; bd84: e6 40
	inc $40                      ; bd86: e6 40
	inc $43                      ; bd88: e6 43
	inc $43                      ; bd8a: e6 43
	iny                          ; bd8c: c8
	iny                          ; bd8d: c8
	iny                          ; bd8e: c8
	iny                          ; bd8f: c8
	cpy.w #$0020                 ; bd90: c0 20 00
	.db $d0, $bf                 ; bd93: d0 bf
loc_bd95:
	plb                          ; bd95: ab
	rtl                          ; bd96: 6b
	php                          ; bd97: 08
	sbc $fd10,x                  ; bd98: fd 10 fd
	clc                          ; bd9b: 18
	sbc $fd20,x                  ; bd9c: fd 20 fd
	php                          ; bd9f: 08
	ora $10                      ; bda0: 05 10
	ora $18                      ; bda2: 05 18
	ora $20                      ; bda4: 05 20
	ora $08                      ; bda6: 05 08
	ora $0d10                    ; bda8: 0d 10 0d
	clc                          ; bdab: 18
	ora $0d20                    ; bdac: 0d 20 0d
	php                          ; bdaf: 08
	ora $10,x                    ; bdb0: 15 10
	ora $18,x                    ; bdb2: 15 18
	ora $20,x                    ; bdb4: 15 20
	ora $0a,x                    ; bdb6: 15 0a
	and $0c2f0b                  ; bdb8: 2f 0b 2f 0c
	and $0e6f0a                  ; bdbc: 2f 0a 6f 0e
	and $102f0f                  ; bdc0: 2f 0f 2f 10
	and $126f0e                  ; bdc4: 2f 0e 6f 12
	and $142f13                  ; bdc8: 2f 13 2f 14
	and $166f12                  ; bdcc: 2f 12 6f 16
	and $182f17                  ; bdd0: 2f 17 2f 18
	and $1d2f19                  ; bdd4: 2f 19 2f 1d
	adc $1b6f0d                  ; bdd8: 6f 0d 6f 1b
	adc $216f1a                  ; bddc: 6f 1a 6f 21
	adc $1f6f20                  ; bde0: 6f 20 6f 1f
	adc $256f1e                  ; bde4: 6f 1e 6f 25
	adc $236f24                  ; bde8: 6f 24 6f 23
	adc $0d6f22                  ; bdec: 6f 22 6f 0d
	adc $276f28                  ; bdf0: 6f 28 6f 27
	adc $fa6f26                  ; bdf4: 6f 26 6f fa
	rol $2efb                    ; bdf8: 2e fb 2e
	jsr ($fa2e,x)                ; bdfb: fc 2e fa
	ror $2efe                    ; bdfe: 6e fe 2e
	sbc $2f002e,x                ; be01: ff 2e 00 2f
	ora $026f                    ; be05: 0d 6f 02
	and $042f03                  ; be08: 2f 03 2f 04
	and $066f02                  ; be0c: 2f 02 6f 06
	and $082f07                  ; be10: 2f 07 2f 08
	and $1a6f06                  ; be14: 2f 06 6f 1a
	and $0d2f1b                  ; be18: 2f 1b 2f 0d
	and $1e2f1d                  ; be1c: 2f 1d 2f 1e
	and $202f1f                  ; be20: 2f 1f 2f 20
	and $222f21                  ; be24: 2f 21 2f 22
	and $242f23                  ; be28: 2f 23 2f 24
	and $262f25                  ; be2c: 2f 25 2f 26
	and $282f27                  ; be30: 2f 27 2f 28
	and $102f0d                  ; be34: 2f 0d 2f 10
	.db $10, $10                 ; be38: 10 10
loc_be3a:
	php                          ; be3a: 08
	php                          ; be3b: 08
	php                          ; be3c: 08
	php                          ; be3d: 08
	tsb $08                      ; be3e: 04 08
	tsb $04                      ; be40: 04 04
	tsb $02                      ; be42: 04 02
	cop #$02                     ; be44: 02 02
	cop #$8b                     ; be46: 02 8b
	lda.b #$15                   ; be48: a9 15
loc_be4a:
	pha                          ; be4a: 48
	plb                          ; be4b: ab
	stz $d7                      ; be4c: 64 d7
	lda $ad                      ; be4e: a5 ad
	lsr                          ; be50: 4a
	lsr                          ; be51: 4a
	lsr                          ; be52: 4a
	lsr                          ; be53: 4a
	dec                          ; be54: 3a
	tay                          ; be55: a8
	lda $0c                      ; be56: a5 0c
	clc                          ; be58: 18
	adc $bfa8,y                  ; be59: 79 a8 bf
	sec                          ; be5c: 38
	sbc $1706                    ; be5d: ed 06 17
	cmp $bfab,y                  ; be60: d9 ab bf
	.db $90, $03                 ; be63: 90 03
loc_be65:
	jmp $bfa6                    ; be65: 4c a6 bf

; --- Block at $be68-$be9b ---
loc_be68:
	sta $0c                      ; be68: 85 0c
	cpy.w #$0000                 ; be6a: c0 00 00
	.db $d0, $1d                 ; be6d: d0 1d
loc_be6f:
	dec                          ; be6f: 3a
	dec                          ; be70: 3a
	asl                          ; be71: 0a
	asl                          ; be72: 0a
	asl                          ; be73: 0a
	asl                          ; be74: 0a
	rol $0d                      ; be75: 26 0d
	sta $0c                      ; be77: 85 0c
	lda $5a                      ; be79: a5 5a
	and.b #$0f                   ; be7b: 29 0f
	sta $06                      ; be7d: 85 06
	lda $0c                      ; be7f: a5 0c
	sec                          ; be81: 38
	sbc $06                      ; be82: e5 06
	sta $0c                      ; be84: 85 0c
	lda $0d                      ; be86: a5 0d
	sbc.b #$00                   ; be88: e9 00
	sta $0d                      ; be8a: 85 0d
loc_be8c:
	lda $0e                      ; be8c: a5 0e
	clc                          ; be8e: 18
	adc $bfae,y                  ; be8f: 79 ae bf
	sec                          ; be92: 38
	sbc $1707                    ; be93: ed 07 17
	cmp $bfb1,y                  ; be96: d9 b1 bf
	.db $90, $03                 ; be99: 90 03
loc_be9b:
	jmp $bfa6                    ; be9b: 4c a6 bf

; --- Block at $be9e-$bebe ---
loc_be9e:
	sta $0e                      ; be9e: 85 0e
	cpy.w #$0000                 ; bea0: c0 00 00
	.db $d0, $14                 ; bea3: d0 14
loc_bea5:
	dec                          ; bea5: 3a
	asl                          ; bea6: 0a
	asl                          ; bea7: 0a
	asl                          ; bea8: 0a
	asl                          ; bea9: 0a
	sta $0e                      ; beaa: 85 0e
	lda $5c                      ; beac: a5 5c
	and.b #$0f                   ; beae: 29 0f
	sta $06                      ; beb0: 85 06
	lda $0e                      ; beb2: a5 0e
	sec                          ; beb4: 38
	sbc $06                      ; beb5: e5 06
	sta $0e                      ; beb7: 85 0e
loc_beb9:
	cpy.w #$0000                 ; beb9: c0 00 00
	.db $d0, $03                 ; bebc: d0 03
loc_bebe:
	jmp $bfa4                    ; bebe: 4c a4 bf

; --- Block at $bec1-$bed5 ---
loc_bec1:
	stz $0a                      ; bec1: 64 0a
	cpy.w #$0002                 ; bec3: c0 02 00
	.db $f0, $60                 ; bec6: f0 60
loc_bec8:
	lda $5c                      ; bec8: a5 5c
	and.b #$0f                   ; beca: 29 0f
	.db $d0, $0a                 ; becc: d0 0a
loc_bece:
	lda $0e                      ; bece: a5 0e
	tax                          ; bed0: aa
	lda $14f380,x                ; bed1: bf 80 f3 14
	jmp $bef0                    ; bed5: 4c f0 be

; --- Block at $bed8-$bedc ---
loc_bed8:
	lda $0e                      ; bed8: a5 0e
	.db $d0, $03                 ; beda: d0 03
loc_bedc:
	jmp $bfa6                    ; bedc: 4c a6 bf

; --- Block at $bedf-$bef0 ---
loc_bedf:
	dec                          ; bedf: 3a
	tax                          ; bee0: aa
	lda $14f381,x                ; bee1: bf 81 f3 14
	sec                          ; bee5: 38
	sbc $14f380,x                ; bee6: ff 80 f3 14
	lsr                          ; beea: 4a
	clc                          ; beeb: 18
	adc $14f380,x                ; beec: 7f 80 f3 14

; --- Block at $bef0-$bf25 ---
loc_bef0:
	sta $0e                      ; bef0: 85 0e
	sta $18                      ; bef2: 85 18
	stz $19                      ; bef4: 64 19
	asl $18                      ; bef6: 06 18
	rol $19                      ; bef8: 26 19
	ldx $18                      ; befa: a6 18
	lda $14f000,x                ; befc: bf 00 f0 14
	sta $18                      ; bf00: 85 18
	lda $14f001,x                ; bf02: bf 01 f0 14
	sta $19                      ; bf06: 85 19
	lda $5a                      ; bf08: a5 5a
	and.b #$08                   ; bf0a: 29 08
	lsr                          ; bf0c: 4a
	lsr                          ; bf0d: 4a
	lsr                          ; bf0e: 4a
	sta $1a                      ; bf0f: 85 1a
	lda $0c                      ; bf11: a5 0c
	asl                          ; bf13: 0a
	sec                          ; bf14: 38
	sbc $1a                      ; bf15: e5 1a
	sec                          ; bf17: 38
	sbc.b #$26                   ; bf18: e9 26
	.db $10, $05                 ; bf1a: 10 05
loc_bf1c:
	inc $0a                      ; bf1c: e6 0a
	eor.b #$ff                   ; bf1e: 49 ff
	inc                          ; bf20: 1a
loc_bf21:
	sta $1a                      ; bf21: 85 1a
	stz $1b                      ; bf23: 64 1b
	jmp $bf85                    ; bf25: 4c 85 bf

; --- Block at $bf28-$bf35 ---
loc_bf28:
	lda $5c                      ; bf28: a5 5c
	and.b #$0f                   ; bf2a: 29 0f
	.db $d0, $0a                 ; bf2c: d0 0a
loc_bf2e:
	lda $0e                      ; bf2e: a5 0e
	tax                          ; bf30: aa
	lda $14f3a1,x                ; bf31: bf a1 f3 14
	jmp $bf50                    ; bf35: 4c 50 bf

; --- Block at $bf38-$bf3c ---
loc_bf38:
	lda $0e                      ; bf38: a5 0e
	.db $d0, $03                 ; bf3a: d0 03
loc_bf3c:
	jmp $bfa6                    ; bf3c: 4c a6 bf

; --- Block at $bf3f-$bf50 ---
loc_bf3f:
	dec                          ; bf3f: 3a
	tax                          ; bf40: aa
	lda $14f3a2,x                ; bf41: bf a2 f3 14
	sec                          ; bf45: 38
	sbc $14f3a1,x                ; bf46: ff a1 f3 14
	lsr                          ; bf4a: 4a
	clc                          ; bf4b: 18
	adc $14f3a1,x                ; bf4c: 7f a1 f3 14

; --- Block at $bf50-$bf98 ---
loc_bf50:
	sta $0e                      ; bf50: 85 0e
	sta $18                      ; bf52: 85 18
	stz $19                      ; bf54: 64 19
	asl $18                      ; bf56: 06 18
	rol $19                      ; bf58: 26 19
	ldx $18                      ; bf5a: a6 18
	lda $14f1c0,x                ; bf5c: bf c0 f1 14
	sta $18                      ; bf60: 85 18
	lda $14f1c1,x                ; bf62: bf c1 f1 14
	sta $19                      ; bf66: 85 19
	lda $5a                      ; bf68: a5 5a
	and.b #$08                   ; bf6a: 29 08
	lsr                          ; bf6c: 4a
	lsr                          ; bf6d: 4a
	lsr                          ; bf6e: 4a
	sta $1a                      ; bf6f: 85 1a
	lda $0c                      ; bf71: a5 0c
	asl                          ; bf73: 0a
	sec                          ; bf74: 38
	sbc $1a                      ; bf75: e5 1a
	sec                          ; bf77: 38
	sbc.b #$40                   ; bf78: e9 40
	.db $10, $05                 ; bf7a: 10 05
loc_bf7c:
	inc $0a                      ; bf7c: e6 0a
	eor.b #$ff                   ; bf7e: 49 ff
	inc                          ; bf80: 1a
loc_bf81:
	sta $1a                      ; bf81: 85 1a
	stz $1b                      ; bf83: 64 1b
loc_bf85:
	jsl $15c395                  ; bf85: 22 95 c3 15
loc_bf89:
	lsr $32                      ; bf89: 46 32
	ror $31                      ; bf8b: 66 31
	lda $0a                      ; bf8d: a5 0a
	.db $d0, $0a                 ; bf8f: d0 0a
loc_bf91:
	lda $31                      ; bf91: a5 31
	clc                          ; bf93: 18
	adc.b #$78                   ; bf94: 69 78
	.db $b0, $0e                 ; bf96: b0 0e
loc_bf98:
	jmp $bfa2                    ; bf98: 4c a2 bf

; --- Block at $bf9b-$bfa4 ---
loc_bf9b:
	lda.b #$78                   ; bf9b: a9 78
	sec                          ; bf9d: 38
	sbc $31                      ; bf9e: e5 31
	.db $90, $04                 ; bfa0: 90 04
loc_bfa2:
	sta $0c                      ; bfa2: 85 0c

; --- Block at $bfa4-$bfa6 ---
loc_bfa4:
	inc $d7                      ; bfa4: e6 d7

; --- Block at $bfa6-$bfbc ---
loc_bfa6:
	plb                          ; bfa6: ab
	rtl                          ; bfa7: 6b
	ora.b #$13                   ; bfa8: 09 13
	jsr $2c13                    ; bfaa: 20 13 2c
loc_bfad:
	wdm #$08                     ; bfad: 42 08
	ora [$1f],y                  ; bfaf: 17 1f
	.db $10, $21                 ; bfb1: 10 21
loc_bfb3:
	bit.w $0000                  ; bfb3: 2c 00 00
	php                          ; bfb6: 08
	jsr.w $0008                  ; bfb7: 20 08 00
loc_bfba:
	ora.b #$20                   ; bfba: 09 20
	brk #$08                     ; bfbc: 00 08

; --- Block at $bfd4-$bfd4 ---
loc_bfd4:
	brk #$00                     ; bfd4: 00 00

; --- Block at $c1c6-$c246 ---
loc_c1c6:
	lda.b #$80                   ; c1c6: a9 80
	sta $7f5a06                  ; c1c8: 8f 06 5a 7f
	stz $420c                    ; c1cc: 9c 0c 42 ; HDMAEN
	lda.b #$42                   ; c1cf: a9 42
	sta $4340                    ; c1d1: 8d 40 43 ; DMAP4
	sta $4350                    ; c1d4: 8d 50 43 ; DMAP5
	lda.b #$1b                   ; c1d7: a9 1b
	sta $4341                    ; c1d9: 8d 41 43 ; BBAD4
	lda.b #$1e                   ; c1dc: a9 1e
	sta $4351                    ; c1de: 8d 51 43 ; BBAD5
	ldx.w #$5a00                 ; c1e1: a2 00 5a
	stx $4342                    ; c1e4: 8e 42 43 ; A1TL4
	stx $4352                    ; c1e7: 8e 52 43 ; A1TL5
	lda.b #$7f                   ; c1ea: a9 7f
	sta $4344                    ; c1ec: 8d 44 43 ; A1B4
	sta $4354                    ; c1ef: 8d 54 43 ; A1B5
	sta $4347                    ; c1f2: 8d 47 43 ; DASB4
	sta $4357                    ; c1f5: 8d 57 43 ; DASB5
	rtl                          ; c1f8: 6b
	lda $0fe0                    ; c1f9: ad e0 0f
	sta $19                      ; c1fc: 85 19
	stz $18                      ; c1fe: 64 18
	lsr $19                      ; c200: 46 19
	ror $18                      ; c202: 66 18
	ldx $18                      ; c204: a6 18
	ldy.w #$0020                 ; c206: a0 20 00
	lda $14de10,x                ; c209: bf 10 de 14
	sta $0cdb,y                  ; c20d: 99 db 0c
	lda $14de90,x                ; c210: bf 90 de 14
	sta $0ceb,y                  ; c214: 99 eb 0c
	inx                          ; c217: e8
	iny                          ; c218: c8
	tya                          ; c219: 98
	and.b #$0f                   ; c21a: 29 0f
	.db $d0, $eb                 ; c21c: d0 eb
loc_c21e:
	tya                          ; c21e: 98
	clc                          ; c21f: 18
	adc.b #$10                   ; c220: 69 10
	tay                          ; c222: a8
	.db $d0, $e4                 ; c223: d0 e4
loc_c225:
	rtl                          ; c225: 6b
	ldx.w #$0000                 ; c226: a2 00 00
	lda $0d87d0,x                ; c229: bf d0 87 0d
	sta $0cdb,x                  ; c22d: 9d db 0c
	inx                          ; c230: e8
	cpx.w #$0020                 ; c231: e0 20 00
	.db $d0, $f3                 ; c234: d0 f3
loc_c236:
	ldx $16aa                    ; c236: ae aa 16
	stx $0cdd                    ; c239: 8e dd 0c
	rtl                          ; c23c: 6b
	rtl                          ; c23d: 6b
	ldx.w #$0000                 ; c23e: a2 00 00
	ldy.w #$0000                 ; c241: a0 00 00
	stz $07                      ; c244: 64 07

; --- Block at $c246-$c25c ---
loc_c246:
	lda $0fc8c0,x                ; c246: bf c0 c8 0f
	cmp.b #$ff                   ; c24a: c9 ff
	.db $f0, $11                 ; c24c: f0 11
loc_c24e:
	sta $1560,y                  ; c24e: 99 60 15
	iny                          ; c251: c8
	inc $07                      ; c252: e6 07
	lda $07                      ; c254: a5 07
	cmp.b #$18                   ; c256: c9 18
	.db $d0, $15                 ; c258: d0 15
loc_c25a:
	stz $07                      ; c25a: 64 07
	jmp $c26f                    ; c25c: 4c 6f c2

; --- Block at $c25f-$c26f ---
loc_c25f:
	lda.b #$00                   ; c25f: a9 00
	sta $1560,y                  ; c261: 99 60 15
	iny                          ; c264: c8
	inc $07                      ; c265: e6 07
	lda $07                      ; c267: a5 07
	cmp.b #$18                   ; c269: c9 18
	.db $d0, $f2                 ; c26b: d0 f2
loc_c26d:
	stz $07                      ; c26d: 64 07

; --- Block at $c26f-$c28f ---
loc_c26f:
	inx                          ; c26f: e8
	cpy.w #$0138                 ; c270: c0 38 01
	.db $d0, $d1                 ; c273: d0 d1
loc_c275:
	rtl                          ; c275: 6b
	lda.b #$80                   ; c276: a9 80
	sta $2115                    ; c278: 8d 15 21 ; VMAIN
	ldx.w #$2882                 ; c27b: a2 82 28
	stx $2116                    ; c27e: 8e 16 21 ; VMADDL
	lda $1706                    ; c281: ad 06 17
	lsr                          ; c284: 4a
	lsr                          ; c285: 4a
	lsr                          ; c286: 4a
	lsr                          ; c287: 4a
	cmp.b #$0a                   ; c288: c9 0a
	.db $90, $06                 ; c28a: 90 06
loc_c28c:
	clc                          ; c28c: 18
	adc.b #$38                   ; c28d: 69 38
	jmp $c294                    ; c28f: 4c 94 c2

; --- Block at $c292-$c294 ---
loc_c292:
	ora.b #$80                   ; c292: 09 80

; --- Block at $c294-$c2a8 ---
loc_c294:
	sta $2118                    ; c294: 8d 18 21 ; VMDATAL
	lda.b #$20                   ; c297: a9 20
	sta $2119                    ; c299: 8d 19 21 ; VMDATAH
	lda $1706                    ; c29c: ad 06 17
	and.b #$0f                   ; c29f: 29 0f
	cmp.b #$0a                   ; c2a1: c9 0a
	.db $90, $06                 ; c2a3: 90 06
loc_c2a5:
	clc                          ; c2a5: 18
	adc.b #$38                   ; c2a6: 69 38
	jmp $c2ad                    ; c2a8: 4c ad c2

; --- Block at $c2ab-$c2ad ---
loc_c2ab:
	ora.b #$80                   ; c2ab: 09 80

; --- Block at $c2ad-$c2c9 ---
loc_c2ad:
	sta $2118                    ; c2ad: 8d 18 21 ; VMDATAL
	lda.b #$20                   ; c2b0: a9 20
	sta $2119                    ; c2b2: 8d 19 21 ; VMDATAH
	stz $2118                    ; c2b5: 9c 18 21 ; VMDATAL
	stz $2119                    ; c2b8: 9c 19 21 ; VMDATAH
	lda $1707                    ; c2bb: ad 07 17
	lsr                          ; c2be: 4a
	lsr                          ; c2bf: 4a
	lsr                          ; c2c0: 4a
	lsr                          ; c2c1: 4a
	cmp.b #$0a                   ; c2c2: c9 0a
	.db $90, $06                 ; c2c4: 90 06
loc_c2c6:
	clc                          ; c2c6: 18
	adc.b #$38                   ; c2c7: 69 38
	jmp $c2ce                    ; c2c9: 4c ce c2

; --- Block at $c2cc-$c2ce ---
loc_c2cc:
	ora.b #$80                   ; c2cc: 09 80

; --- Block at $c2ce-$c2e2 ---
loc_c2ce:
	sta $2118                    ; c2ce: 8d 18 21 ; VMDATAL
	lda.b #$20                   ; c2d1: a9 20
	sta $2119                    ; c2d3: 8d 19 21 ; VMDATAH
	lda $1707                    ; c2d6: ad 07 17
	and.b #$0f                   ; c2d9: 29 0f
	cmp.b #$0a                   ; c2db: c9 0a
	.db $90, $06                 ; c2dd: 90 06
loc_c2df:
	clc                          ; c2df: 18
	adc.b #$38                   ; c2e0: 69 38
	jmp $c2e7                    ; c2e2: 4c e7 c2

; --- Block at $c2e5-$c2e7 ---
loc_c2e5:
	ora.b #$80                   ; c2e5: 09 80

; --- Block at $c2e7-$c303 ---
loc_c2e7:
	sta $2118                    ; c2e7: 8d 18 21 ; VMDATAL
	lda.b #$20                   ; c2ea: a9 20
	sta $2119                    ; c2ec: 8d 19 21 ; VMDATAH
	ldx.w #$28c2                 ; c2ef: a2 c2 28
	stx $2116                    ; c2f2: 8e 16 21 ; VMADDL
	lda $1702                    ; c2f5: ad 02 17
	lsr                          ; c2f8: 4a
	lsr                          ; c2f9: 4a
	lsr                          ; c2fa: 4a
	lsr                          ; c2fb: 4a
	cmp.b #$0a                   ; c2fc: c9 0a
	.db $90, $06                 ; c2fe: 90 06
loc_c300:
	clc                          ; c300: 18
	adc.b #$38                   ; c301: 69 38
	jmp $c308                    ; c303: 4c 08 c3

; --- Block at $c306-$c308 ---
loc_c306:
	ora.b #$80                   ; c306: 09 80

; --- Block at $c308-$c31c ---
loc_c308:
	sta $2118                    ; c308: 8d 18 21 ; VMDATAL
	lda.b #$20                   ; c30b: a9 20
	sta $2119                    ; c30d: 8d 19 21 ; VMDATAH
	lda $1702                    ; c310: ad 02 17
	and.b #$0f                   ; c313: 29 0f
	cmp.b #$0a                   ; c315: c9 0a
	.db $90, $06                 ; c317: 90 06
loc_c319:
	clc                          ; c319: 18
	adc.b #$38                   ; c31a: 69 38
	jmp $c321                    ; c31c: 4c 21 c3

; --- Block at $c31f-$c321 ---
loc_c31f:
	ora.b #$80                   ; c31f: 09 80

; --- Block at $c321-$c34a ---
loc_c321:
	sta $2118                    ; c321: 8d 18 21 ; VMDATAL
	lda.b #$20                   ; c324: a9 20
	sta $2119                    ; c326: 8d 19 21 ; VMDATAH
	rtl                          ; c329: 6b
	phx                          ; c32a: da
	phy                          ; c32b: 5a
	ldx.w #$0000                 ; c32c: a2 00 00
	ldy.w #$0080                 ; c32f: a0 80 00
	stz $33                      ; c332: 64 33
loc_c334:
	rep #$20                     ; c334: c2 20
	lda $30                      ; c336: a5 30
	sec                          ; c338: 38
	sbc $15c375,x                ; c339: ff 75 c3 15
	sta $30                      ; c33d: 85 30
	lda $32                      ; c33f: a5 32
	sbc $15c385,x                ; c341: ff 85 c3 15
	sta $32                      ; c345: 85 32
	.db $90, $04                 ; c347: 90 04
loc_c349:
	iny                          ; c349: c8
	jmp $c334                    ; c34a: 4c 34 c3

; --- Block at $c34d-$c377 ---
loc_c34d:
	lda $30                      ; c34d: a5 30
	clc                          ; c34f: 18
	adc $15c375,x                ; c350: 7f 75 c3 15
	sta $30                      ; c354: 85 30
	lda $32                      ; c356: a5 32
	adc $15c385,x                ; c358: 7f 85 c3 15
	sta $32                      ; c35c: 85 32
	lda.w #$0000                 ; c35e: a9 00 00
	sep #$20                     ; c361: e2 20
	phx                          ; c363: da
	txa                          ; c364: 8a
	lsr                          ; c365: 4a
	tax                          ; c366: aa
	tya                          ; c367: 98
	sta $34,x                    ; c368: 95 34
	plx                          ; c36a: fa
	inx                          ; c36b: e8
	inx                          ; c36c: e8
	cpx.w #$0010                 ; c36d: e0 10 00
	.db $d0, $bd                 ; c370: d0 bd
loc_c372:
	ply                          ; c372: 7a
	plx                          ; c373: fa
	rtl                          ; c374: 6b
	.db $80, $96                 ; c375: 80 96
	rti                          ; c377: 40

; --- Block at $c404-$c416 ---
loc_c404:
	lda $1288                    ; c404: ad 88 12
	and.b #$04                   ; c407: 29 04
	.db $f0, $0e                 ; c409: f0 0e
loc_c40b:
	lda $7a                      ; c40b: a5 7a
	asl                          ; c40d: 0a
	sta $0cdb,x                  ; c40e: 9d db 0c
	eor.b #$ff                   ; c411: 49 ff
	sta $0cdc,x                  ; c413: 9d dc 0c
	jmp $c41f                    ; c416: 4c 1f c4

; --- Block at $c419-$c41f ---
loc_c419:
	stz $0cdb,x                  ; c419: 9e db 0c
	stz $0cdc,x                  ; c41c: 9e dc 0c

; --- Block at $c41f-$c503 ---
loc_c41f:
	rtl                          ; c41f: 6b
	lda $0fdd                    ; c420: ad dd 0f
	cmp.b #$09                   ; c423: c9 09
	.db $f0, $72                 ; c425: f0 72
loc_c427:
	cmp.b #$08                   ; c427: c9 08
	.db $f0, $08                 ; c429: f0 08
loc_c42b:
	cmp.b #$0a                   ; c42b: c9 0a
	.db $90, $69                 ; c42d: 90 69
loc_c42f:
	cmp.b #$0c                   ; c42f: c9 0c
	.db $b0, $65                 ; c431: b0 65
loc_c433:
	lda $7a                      ; c433: a5 7a
	lsr                          ; c435: 4a
	lsr                          ; c436: 4a
	and.b #$0e                   ; c437: 29 0e
	tax                          ; c439: aa
	rep #$20                     ; c43a: c2 20
	lda $14f7d6,x                ; c43c: bf d6 f7 14
	sta $0cfd                    ; c440: 8d fd 0c
	lda $14f7e6,x                ; c443: bf e6 f7 14
	sta $0d1d                    ; c447: 8d 1d 0d
	lda $14f7f6,x                ; c44a: bf f6 f7 14
	sta $0d5d                    ; c44e: 8d 5d 0d
	lda.w #$0000                 ; c451: a9 00 00
	sep #$20                     ; c454: e2 20
	lda $0fdd                    ; c456: ad dd 0f
	cmp.b #$0b                   ; c459: c9 0b
	.db $f0, $20                 ; c45b: f0 20
loc_c45d:
	lda $7a                      ; c45d: a5 7a
	lsr                          ; c45f: 4a
	lsr                          ; c460: 4a
	lsr                          ; c461: 4a
	and.b #$0f                   ; c462: 29 0f
	cmp.b #$08                   ; c464: c9 08
	.db $90, $05                 ; c466: 90 05
loc_c468:
	eor.b #$ff                   ; c468: 49 ff
	clc                          ; c46a: 18
	adc.b #$09                   ; c46b: 69 09
loc_c46d:
	asl                          ; c46d: 0a
	tax                          ; c46e: aa
	ldy.w #$0000                 ; c46f: a0 00 00
	lda $14f806,x                ; c472: bf 06 f8 14
	inx                          ; c476: e8
	iny                          ; c477: c8
	cpy.w #$0010                 ; c478: c0 10 00
	.db $d0, $f5                 ; c47b: d0 f5
loc_c47d:
	lda $7a                      ; c47d: a5 7a
	lsr                          ; c47f: 4a
	and.b #$1e                   ; c480: 29 1e
	tax                          ; c482: aa
	ldy.w #$0000                 ; c483: a0 00 00
	lda $14f826,x                ; c486: bf 26 f8 14
	sta $0dbd,y                  ; c48a: 99 bd 0d
	inx                          ; c48d: e8
	txa                          ; c48e: 8a
	and.b #$1f                   ; c48f: 29 1f
	tax                          ; c491: aa
	iny                          ; c492: c8
	cpy.w #$0010                 ; c493: c0 10 00
	.db $d0, $ee                 ; c496: d0 ee
loc_c498:
	rtl                          ; c498: 6b
loc_c499:
	lda $7a                      ; c499: a5 7a
	lsr                          ; c49b: 4a
	lsr                          ; c49c: 4a
	and.b #$0e                   ; c49d: 29 0e
	tax                          ; c49f: aa
	lda $0fe0                    ; c4a0: ad e0 0f
	cmp.b #$0f                   ; c4a3: c9 0f
	.db $d0, $05                 ; c4a5: d0 05
loc_c4a7:
	txa                          ; c4a7: 8a
	clc                          ; c4a8: 18
	adc.b #$40                   ; c4a9: 69 40
	tax                          ; c4ab: aa
loc_c4ac:
	rep #$20                     ; c4ac: c2 20
	lda $14fbc6,x                ; c4ae: bf c6 fb 14
	sta $0cfd                    ; c4b2: 8d fd 0c
	lda $14fbd6,x                ; c4b5: bf d6 fb 14
	sta $0cff                    ; c4b9: 8d ff 0c
	sta $0d7f                    ; c4bc: 8d 7f 0d
	lda $14fbe6,x                ; c4bf: bf e6 fb 14
	sta $0d01                    ; c4c3: 8d 01 0d
	lda $14fbf6,x                ; c4c6: bf f6 fb 14
	sta $0d7d                    ; c4ca: 8d 7d 0d
	lda.w #$0000                 ; c4cd: a9 00 00
	sep #$20                     ; c4d0: e2 20
	rtl                          ; c4d2: 6b
	lda $1700                    ; c4d3: ad 00 17
	cmp.b #$01                   ; c4d6: c9 01
	.db $d0, $28                 ; c4d8: d0 28
loc_c4da:
	lda $7a                      ; c4da: a5 7a
	and.b #$70                   ; c4dc: 29 70
	lsr                          ; c4de: 4a
	lsr                          ; c4df: 4a
	lsr                          ; c4e0: 4a
	lsr                          ; c4e1: 4a
	tax                          ; c4e2: aa
	lda $15c503,x                ; c4e3: bf 03 c5 15
	tax                          ; c4e7: aa
	ldy.w #$0000                 ; c4e8: a0 00 00
	rep #$20                     ; c4eb: c2 20
	lda $14fa16,x                ; c4ed: bf 16 fa 14
	sta $0cff,y                  ; c4f1: 99 ff 0c
	inx                          ; c4f4: e8
	inx                          ; c4f5: e8
	iny                          ; c4f6: c8
	iny                          ; c4f7: c8
	cpy.w #$0010                 ; c4f8: c0 10 00
	.db $d0, $f0                 ; c4fb: d0 f0
loc_c4fd:
	lda.w #$0000                 ; c4fd: a9 00 00
	sep #$20                     ; c500: e2 20
loc_c502:
	rtl                          ; c502: 6b
	brk #$10                     ; c503: 00 10

; --- Block at $c8c5-$c9b3 ---
loc_c8c5:
	sta $06                      ; c8c5: 85 06
	asl                          ; c8c7: 0a
	clc                          ; c8c8: 18
	adc $06                      ; c8c9: 65 06
	clc                          ; c8cb: 18
	adc.b #$80                   ; c8cc: 69 80
	sta $4b                      ; c8ce: 85 4b
	stz $4a                      ; c8d0: 64 4a
	ldx.w #$4000                 ; c8d2: a2 00 40
	stx $4c                      ; c8d5: 86 4c
	ldx.w #$0200                 ; c8d7: a2 00 02
	stx $4e                      ; c8da: 86 4e
	lda.b #$1b                   ; c8dc: a9 1b
	sta $49                      ; c8de: 85 49
	jsl $15b000                  ; c8e0: 22 00 b0 15
loc_c8e4:
	rtl                          ; c8e4: 6b
	lda.b #$80                   ; c8e5: a9 80
	sta $2100                    ; c8e7: 8d 00 21 ; INIDISP
	lda.b #$00                   ; c8ea: a9 00
	sta $4200                    ; c8ec: 8d 00 42 ; NMITIMEN
	lda.b #$02                   ; c8ef: a9 02
	sta $2101                    ; c8f1: 8d 01 21 ; OBSEL
	stz $2102                    ; c8f4: 9c 02 21 ; OAMADDL
	stz $2103                    ; c8f7: 9c 03 21 ; OAMADDH
	stz $2106                    ; c8fa: 9c 06 21 ; MOSAIC
	lda.b #$19                   ; c8fd: a9 19
	sta $2107                    ; c8ff: 8d 07 21 ; BG1SC
	lda.b #$33                   ; c902: a9 33
	sta $2108                    ; c904: 8d 08 21 ; BG2SC
	lda.b #$29                   ; c907: a9 29
	sta $2109                    ; c909: 8d 09 21 ; BG3SC
	lda.b #$00                   ; c90c: a9 00
	sta $210b                    ; c90e: 8d 0b 21 ; BG12NBA
	lda.b #$02                   ; c911: a9 02
	sta $210c                    ; c913: 8d 0c 21 ; BG34NBA
	stz $2111                    ; c916: 9c 11 21 ; BG3HOFS
	stz $2111                    ; c919: 9c 11 21 ; BG3HOFS
	stz $2112                    ; c91c: 9c 12 21 ; BG3VOFS
	stz $2112                    ; c91f: 9c 12 21 ; BG3VOFS
	lda.b #$80                   ; c922: a9 80
	sta $2115                    ; c924: 8d 15 21 ; VMAIN
	stz $211a                    ; c927: 9c 1a 21 ; M7SEL
	stz $211b                    ; c92a: 9c 1b 21 ; M7A
	lda.b #$04                   ; c92d: a9 04
	sta $211b                    ; c92f: 8d 1b 21 ; M7A
	stz $211c                    ; c932: 9c 1c 21 ; M7B
	stz $211c                    ; c935: 9c 1c 21 ; M7B
	stz $211d                    ; c938: 9c 1d 21 ; M7C
	stz $211d                    ; c93b: 9c 1d 21 ; M7C
	stz $211e                    ; c93e: 9c 1e 21 ; M7D
	lda.b #$04                   ; c941: a9 04
	sta $211e                    ; c943: 8d 1e 21 ; M7D
	lda.b #$80                   ; c946: a9 80
	sta $211f                    ; c948: 8d 1f 21 ; M7X
	sta $211f                    ; c94b: 8d 1f 21 ; M7X
	sta $2120                    ; c94e: 8d 20 21 ; M7Y
	sta $2120                    ; c951: 8d 20 21 ; M7Y
	sta $2121                    ; c954: 8d 21 21 ; CGADD
	lda.b #$33                   ; c957: a9 33
	sta $2123                    ; c959: 8d 23 21 ; W12SEL
	lda.b #$00                   ; c95c: a9 00
	sta $2124                    ; c95e: 8d 24 21 ; W34SEL
	lda.b #$f3                   ; c961: a9 f3
	sta $2125                    ; c963: 8d 25 21 ; WOBJSEL
	lda.b #$01                   ; c966: a9 01
	sta $2126                    ; c968: 8d 26 21 ; WH0
	lda.b #$fe                   ; c96b: a9 fe
	sta $2127                    ; c96d: 8d 27 21 ; WH1
	stz $2128                    ; c970: 9c 28 21 ; WH2
	lda.b #$ff                   ; c973: a9 ff
	sta $2129                    ; c975: 8d 29 21 ; WH3
	stz $212a                    ; c978: 9c 2a 21 ; WBGLOG
	stz $212b                    ; c97b: 9c 2b 21 ; WOBJLOG
	lda.b #$17                   ; c97e: a9 17
	sta $212c                    ; c980: 8d 2c 21 ; TM
	lda.b #$11                   ; c983: a9 11
	sta $212d                    ; c985: 8d 2d 21 ; TS
	lda.b #$17                   ; c988: a9 17
	sta $212e                    ; c98a: 8d 2e 21 ; TMW
	stz $212f                    ; c98d: 9c 2f 21 ; TSW
	lda.b #$e0                   ; c990: a9 e0
	sta $2132                    ; c992: 8d 32 21 ; COLDATA
	stz $2133                    ; c995: 9c 33 21 ; SETINI
	lda.b #$ff                   ; c998: a9 ff
	sta $4201                    ; c99a: 8d 01 42 ; WRIO
	stz $4207                    ; c99d: 9c 07 42 ; HTIMEL
	stz $4208                    ; c9a0: 9c 08 42 ; HTIMEH
	stz $4209                    ; c9a3: 9c 09 42 ; VTIMEL
	stz $420a                    ; c9a6: 9c 0a 42 ; VTIMEH
	stz $420b                    ; c9a9: 9c 0b 42 ; MDMAEN
	stz $420c                    ; c9ac: 9c 0c 42 ; HDMAEN
	rtl                          ; c9af: 6b
	ldx.w #$0000                 ; c9b0: a2 00 00

; --- Block at $c9b3-$c9c2 ---
loc_c9b3:
	lda $1900,x                  ; c9b3: bd 00 19
	cmp $14ee00,x                ; c9b6: df 00 ee 14
	.db $d0, $09                 ; c9ba: d0 09
loc_c9bc:
	inx                          ; c9bc: e8
	cpx.w #$0100                 ; c9bd: e0 00 01
	.db $f0, $0f                 ; c9c0: f0 0f
loc_c9c2:
	jmp $c9b3                    ; c9c2: 4c b3 c9

; --- Block at $c9c5-$cb55 ---
loc_c9c5:
	ldx.w #$1a00                 ; c9c5: a2 00 1a
	stz.w $0000,x                ; c9c8: 9e 00 00
	inx                          ; c9cb: e8
	cpx.w #$1a65                 ; c9cc: e0 65 1a
	.db $d0, $f7                 ; c9cf: d0 f7
loc_c9d1:
	ldx.w #$0000                 ; c9d1: a2 00 00
	stz.w $0000,x                ; c9d4: 9e 00 00
	inx                          ; c9d7: e8
	cpx.w #$0200                 ; c9d8: e0 00 02
	.db $d0, $f7                 ; c9db: d0 f7
loc_c9dd:
	ldx.w #$0300                 ; c9dd: a2 00 03
	stz.w $0000,x                ; c9e0: 9e 00 00
	inx                          ; c9e3: e8
	cpx.w #$0fff                 ; c9e4: e0 ff 0f
	.db $d0, $f7                 ; c9e7: d0 f7
loc_c9e9:
	inx                          ; c9e9: e8
	stz.w $0000,x                ; c9ea: 9e 00 00
	inx                          ; c9ed: e8
	cpx.w #$1a00                 ; c9ee: e0 00 1a
	.db $d0, $f7                 ; c9f1: d0 f7
loc_c9f3:
	ldx.w #$1a65                 ; c9f3: a2 65 1a
	stz.w $0000,x                ; c9f6: 9e 00 00
	inx                          ; c9f9: e8
	cpx.w #$1e00                 ; c9fa: e0 00 1e
	.db $d0, $f7                 ; c9fd: d0 f7
loc_c9ff:
	ldx.w #$2000                 ; c9ff: a2 00 20
	lda.b #$00                   ; ca02: a9 00
	sta $7e0000,x                ; ca04: 9f 00 00 7e
	inx                          ; ca08: e8
	.db $d0, $f9                 ; ca09: d0 f9
loc_ca0b:
	sta $7f0000,x                ; ca0b: 9f 00 00 7f
	inx                          ; ca0f: e8
	.db $d0, $f9                 ; ca10: d0 f9
loc_ca12:
	ldx.w #$0000                 ; ca12: a2 00 00
	lda $14ee00,x                ; ca15: bf 00 ee 14
	sta $1900,x                  ; ca19: 9d 00 19
	inx                          ; ca1c: e8
	cpx.w #$0100                 ; ca1d: e0 00 01
	.db $d0, $f3                 ; ca20: d0 f3
loc_ca22:
	rtl                          ; ca22: 6b
	lda $02                      ; ca23: a5 02
	and.b #$80                   ; ca25: 29 80
	.db $d0, $02                 ; ca27: d0 02
loc_ca29:
	stz $54                      ; ca29: 64 54
loc_ca2b:
	lda $02                      ; ca2b: a5 02
	and.b #$40                   ; ca2d: 29 40
	.db $d0, $02                 ; ca2f: d0 02
loc_ca31:
	stz $50                      ; ca31: 64 50
loc_ca33:
	lda $02                      ; ca33: a5 02
	and.b #$20                   ; ca35: 29 20
	.db $d0, $02                 ; ca37: d0 02
loc_ca39:
	stz $52                      ; ca39: 64 52
loc_ca3b:
	lda $02                      ; ca3b: a5 02
	and.b #$10                   ; ca3d: 29 10
	.db $d0, $02                 ; ca3f: d0 02
loc_ca41:
	stz $53                      ; ca41: 64 53
loc_ca43:
	lda $03                      ; ca43: a5 03
	and.b #$80                   ; ca45: 29 80
	.db $d0, $02                 ; ca47: d0 02
loc_ca49:
	stz $55                      ; ca49: 64 55
loc_ca4b:
	lda $03                      ; ca4b: a5 03
	and.b #$40                   ; ca4d: 29 40
	.db $d0, $02                 ; ca4f: d0 02
loc_ca51:
	stz $51                      ; ca51: 64 51
loc_ca53:
	lda $03                      ; ca53: a5 03
	and.b #$20                   ; ca55: 29 20
	.db $d0, $02                 ; ca57: d0 02
loc_ca59:
	stz $56                      ; ca59: 64 56
loc_ca5b:
	lda $03                      ; ca5b: a5 03
	and.b #$10                   ; ca5d: 29 10
	.db $d0, $02                 ; ca5f: d0 02
loc_ca61:
	stz $57                      ; ca61: 64 57
loc_ca63:
	rtl                          ; ca63: 6b
	stz $420b                    ; ca64: 9c 0b 42 ; MDMAEN
	stz $2121                    ; ca67: 9c 21 21 ; CGADD
	lda.b #$02                   ; ca6a: a9 02
	sta $4300                    ; ca6c: 8d 00 43 ; DMAP0
	lda.b #$22                   ; ca6f: a9 22
	sta $4301                    ; ca71: 8d 01 43 ; BBAD0
	lda.b #$00                   ; ca74: a9 00
	sta $4304                    ; ca76: 8d 04 43 ; A1B0
	ldx.w #$0cdb                 ; ca79: a2 db 0c
	stx $4302                    ; ca7c: 8e 02 43 ; A1TL0
	ldx.w #$0200                 ; ca7f: a2 00 02
	stx $4305                    ; ca82: 8e 05 43 ; DAS0L
	lda.b #$01                   ; ca85: a9 01
	sta $420b                    ; ca87: 8d 0b 42 ; MDMAEN
	rtl                          ; ca8a: 6b
	lda.b #$80                   ; ca8b: a9 80
	sta $2115                    ; ca8d: 8d 15 21 ; VMAIN
	stz $420b                    ; ca90: 9c 0b 42 ; MDMAEN
	lda.b #$01                   ; ca93: a9 01
	sta $4300                    ; ca95: 8d 00 43 ; DMAP0
	lda.b #$18                   ; ca98: a9 18
	sta $4301                    ; ca9a: 8d 01 43 ; BBAD0
	lda $3c                      ; ca9d: a5 3c
	sta $4304                    ; ca9f: 8d 04 43 ; A1B0
	ldx $47                      ; caa2: a6 47
	stx $2116                    ; caa4: 8e 16 21 ; VMADDL
	ldx $3d                      ; caa7: a6 3d
	stx $4302                    ; caa9: 8e 02 43 ; A1TL0
	ldx $45                      ; caac: a6 45
	stx $4305                    ; caae: 8e 05 43 ; DAS0L
	lda.b #$01                   ; cab1: a9 01
	sta $420b                    ; cab3: 8d 0b 42 ; MDMAEN
	rtl                          ; cab6: 6b
	lda.b #$80                   ; cab7: a9 80
	sta $2115                    ; cab9: 8d 15 21 ; VMAIN
	stz $420b                    ; cabc: 9c 0b 42 ; MDMAEN
	lda.b #$09                   ; cabf: a9 09
	sta $4300                    ; cac1: 8d 00 43 ; DMAP0
	lda.b #$18                   ; cac4: a9 18
	sta $4301                    ; cac6: 8d 01 43 ; BBAD0
	ldx $47                      ; cac9: a6 47
	stx $2116                    ; cacb: 8e 16 21 ; VMADDL
	ldx.w #$0676                 ; cace: a2 76 06
	stx $4302                    ; cad1: 8e 02 43 ; A1TL0
	stz $4304                    ; cad4: 9c 04 43 ; A1B0
	ldx $45                      ; cad7: a6 45
	stx $4305                    ; cad9: 8e 05 43 ; DAS0L
	lda.b #$01                   ; cadc: a9 01
	sta $420b                    ; cade: 8d 0b 42 ; MDMAEN
	rtl                          ; cae1: 6b
	stz $2102                    ; cae2: 9c 02 21 ; OAMADDL
	stz $420b                    ; cae5: 9c 0b 42 ; MDMAEN
	stz $4300                    ; cae8: 9c 00 43 ; DMAP0
	lda.b #$04                   ; caeb: a9 04
	sta $4301                    ; caed: 8d 01 43 ; BBAD0
	ldx.w #$0300                 ; caf0: a2 00 03
	stx $4302                    ; caf3: 8e 02 43 ; A1TL0
	lda.b #$00                   ; caf6: a9 00
	sta $4304                    ; caf8: 8d 04 43 ; A1B0
	ldx.w #$0220                 ; cafb: a2 20 02
	stx $4305                    ; cafe: 8e 05 43 ; DAS0L
	lda.b #$01                   ; cb01: a9 01
	sta $420b                    ; cb03: 8d 0b 42 ; MDMAEN
	rtl                          ; cb06: 6b
	lda $0fdd                    ; cb07: ad dd 0f
	tax                          ; cb0a: aa
	lda $15cb55,x                ; cb0b: bf 55 cb 15
	sta $3e                      ; cb0f: 85 3e
	stz $3d                      ; cb11: 64 3d
	lsr $3e                      ; cb13: 46 3e
	ror $3d                      ; cb15: 66 3d
	lda $3e                      ; cb17: a5 3e
	clc                          ; cb19: 18
	adc $15cb55,x                ; cb1a: 7f 55 cb 15
	sta $3e                      ; cb1e: 85 3e
	ldx $3d                      ; cb20: a6 3d
	ldy.w #$0000                 ; cb22: a0 00 00
	lda.b #$7f                   ; cb25: a9 7f
	pha                          ; cb27: 48
	plb                          ; cb28: ab
	lda $1fb9c0,x                ; cb29: bf c0 b9 1f
	sta $5000,y                  ; cb2d: 99 00 50
	inx                          ; cb30: e8
	iny                          ; cb31: c8
	tya                          ; cb32: 98
	and.b #$0f                   ; cb33: 29 0f
	.db $d0, $f2                 ; cb35: d0 f2
loc_cb37:
	lda $1fb9c0,x                ; cb37: bf c0 b9 1f
	sta $5000,y                  ; cb3b: 99 00 50
	inx                          ; cb3e: e8
	iny                          ; cb3f: c8
	lda.b #$00                   ; cb40: a9 00
	sta $5000,y                  ; cb42: 99 00 50
	iny                          ; cb45: c8
	tya                          ; cb46: 98
	and.b #$0f                   ; cb47: 29 0f
	.db $d0, $ec                 ; cb49: d0 ec
loc_cb4b:
	cpy.w #$0800                 ; cb4b: c0 00 08
	.db $d0, $d9                 ; cb4e: d0 d9
loc_cb50:
	lda.b #$00                   ; cb50: a9 00
	pha                          ; cb52: 48
	plb                          ; cb53: ab
	rtl                          ; cb54: 6b
	brk #$00                     ; cb55: 00 00

; --- Block at $15b000-$15b091 ---
loc_15b000:
	stz $420b                    ; 15b000: 9c 0b 42 ; MDMAEN
	lda.b #$80                   ; 15b003: a9 80
	sta $2115                    ; 15b005: 8d 15 21 ; VMAIN
	lda.b #$08                   ; 15b008: a9 08
	sta $4300                    ; 15b00a: 8d 00 43 ; DMAP0
	lda.b #$19                   ; 15b00d: a9 19
	sta $4301                    ; 15b00f: 8d 01 43 ; BBAD0
	stz $4304                    ; 15b012: 9c 04 43 ; A1B0
	ldx $4c                      ; 15b015: a6 4c
	stx $2116                    ; 15b017: 8e 16 21 ; VMADDL
	stz $10                      ; 15b01a: 64 10
	ldx.w #$0610                 ; 15b01c: a2 10 06
	stx $4302                    ; 15b01f: 8e 02 43 ; A1TL0
	ldx $4e                      ; 15b022: a6 4e
	stx $4305                    ; 15b024: 8e 05 43 ; DAS0L
	lda.b #$01                   ; 15b027: a9 01
	sta $420b                    ; 15b029: 8d 0b 42 ; MDMAEN
	stz $420b                    ; 15b02c: 9c 0b 42 ; MDMAEN
	lsr $4f                      ; 15b02f: 46 4f
	ror $4e                      ; 15b031: 66 4e
	lsr $4f                      ; 15b033: 46 4f
	ror $4e                      ; 15b035: 66 4e
	lsr $4f                      ; 15b037: 46 4f
	ror $4e                      ; 15b039: 66 4e
	lsr $4f                      ; 15b03b: 46 4f
	ror $4e                      ; 15b03d: 66 4e
	lda.b #$18                   ; 15b03f: a9 18
	sta $4301                    ; 15b041: 8d 01 43 ; BBAD0
	ldx $4c                      ; 15b044: a6 4c
	stx $2116                    ; 15b046: 8e 16 21 ; VMADDL
	ldx $4a                      ; 15b049: a6 4a
	stx $4302                    ; 15b04b: 8e 02 43 ; A1TL0
	lda $49                      ; 15b04e: a5 49
	sta $4304                    ; 15b050: 8d 04 43 ; A1B0
	ldy.w #$0000                 ; 15b053: a0 00 00
	stz $420b                    ; 15b056: 9c 0b 42 ; MDMAEN
	lda.b #$80                   ; 15b059: a9 80
	sta $2115                    ; 15b05b: 8d 15 21 ; VMAIN
	lda.b #$01                   ; 15b05e: a9 01
	sta $4300                    ; 15b060: 8d 00 43 ; DMAP0
	ldx.w #$0010                 ; 15b063: a2 10 00
	stx $4305                    ; 15b066: 8e 05 43 ; DAS0L
	lda.b #$01                   ; 15b069: a9 01
	sta $420b                    ; 15b06b: 8d 0b 42 ; MDMAEN
	stz $420b                    ; 15b06e: 9c 0b 42 ; MDMAEN
	stz $2115                    ; 15b071: 9c 15 21 ; VMAIN
	stz $4300                    ; 15b074: 9c 00 43 ; DMAP0
	ldx.w #$0008                 ; 15b077: a2 08 00
	stx $4305                    ; 15b07a: 8e 05 43 ; DAS0L
	lda.b #$01                   ; 15b07d: a9 01
	sta $420b                    ; 15b07f: 8d 0b 42 ; MDMAEN
	iny                          ; 15b082: c8
	cpy $4e                      ; 15b083: c4 4e
	.db $d0, $cf                 ; 15b085: d0 cf
loc_15b087:
	rtl                          ; 15b087: 6b
	lda $0fdd                    ; 15b088: ad dd 0f
	.db $f0, $04                 ; 15b08b: f0 04
loc_15b08d:
	cmp.b #$0f                   ; 15b08d: c9 0f
	.db $d0, $03                 ; 15b08f: d0 03
loc_15b091:
	jmp $b0be                    ; 15b091: 4c be b0

; --- Block at $15b094-$15b181 ---
loc_15b094:
	jsl $15b114                  ; 15b094: 22 14 b1 15
loc_15b098:
	stz $420b                    ; 15b098: 9c 0b 42 ; MDMAEN
	lda $0fdd                    ; 15b09b: ad dd 0f
	asl                          ; 15b09e: 0a
	tax                          ; 15b09f: aa
	lda $1e8000,x                ; 15b0a0: bf 00 80 1e
	sta $4302                    ; 15b0a4: 8d 02 43 ; A1TL0
	lda $1e8001,x                ; 15b0a7: bf 01 80 1e
	sta $4303                    ; 15b0ab: 8d 03 43 ; A1TH0
	lda $0fdd                    ; 15b0ae: ad dd 0f
	tax                          ; 15b0b1: aa
	lda $15b104,x                ; 15b0b2: bf 04 b1 15
	sta $4304                    ; 15b0b6: 8d 04 43 ; A1B0
	jsl $15b143                  ; 15b0b9: 22 43 b1 15
loc_15b0bd:
	rtl                          ; 15b0bd: 6b
	ldx.w #$0000                 ; 15b0be: a2 00 00
	stx $47                      ; 15b0c1: 86 47
	ldx.w #$2400                 ; 15b0c3: a2 00 24
	stx $45                      ; 15b0c6: 86 45
	lda.b #$15                   ; 15b0c8: a9 15
	sta $3c                      ; 15b0ca: 85 3c
	lda $1e8000                  ; 15b0cc: af 00 80 1e
	sta $3d                      ; 15b0d0: 85 3d
	lda $1e8001                  ; 15b0d2: af 01 80 1e
	sta $3e                      ; 15b0d6: 85 3e
	lda.b #$80                   ; 15b0d8: a9 80
	sta $2115                    ; 15b0da: 8d 15 21 ; VMAIN
	stz $420b                    ; 15b0dd: 9c 0b 42 ; MDMAEN
	lda.b #$01                   ; 15b0e0: a9 01
	sta $4300                    ; 15b0e2: 8d 00 43 ; DMAP0
	lda.b #$18                   ; 15b0e5: a9 18
	sta $4301                    ; 15b0e7: 8d 01 43 ; BBAD0
	lda $3c                      ; 15b0ea: a5 3c
	sta $4304                    ; 15b0ec: 8d 04 43 ; A1B0
	ldx $47                      ; 15b0ef: a6 47
	stx $2116                    ; 15b0f1: 8e 16 21 ; VMADDL
	ldx $3d                      ; 15b0f4: a6 3d
	stx $4302                    ; 15b0f6: 8e 02 43 ; A1TL0
	ldx $45                      ; 15b0f9: a6 45
	stx $4305                    ; 15b0fb: 8e 05 43 ; DAS0L
	lda.b #$01                   ; 15b0fe: a9 01
	sta $420b                    ; 15b100: 8d 0b 42 ; MDMAEN
	rtl                          ; 15b103: 6b
	ora $1e,x                    ; 15b104: 15 1e
	asl $1e1d,x                  ; 15b106: 1e 1d 1e
	asl $1e1e,x                  ; 15b109: 1e 1e 1e
	ora $1f1f1f,x                ; 15b10c: 1f 1f 1f 1f
	asl $1f1f,x                  ; 15b110: 1e 1f 1f
	ora $9c,x                    ; 15b113: 15 9c
	phd                          ; 15b115: 0b
	wdm #$a9                     ; 15b116: 42 a9
	.db $80, $8d                 ; 15b118: 80 8d
	ora $21,x                    ; 15b11a: 15 21
	lda.b #$08                   ; 15b11c: a9 08
	sta $4300                    ; 15b11e: 8d 00 43 ; DMAP0
	lda.b #$19                   ; 15b121: a9 19
	sta $4301                    ; 15b123: 8d 01 43 ; BBAD0
	ldx.w #$0000                 ; 15b126: a2 00 00
	stx $2116                    ; 15b129: 8e 16 21 ; VMADDL
	stz $06                      ; 15b12c: 64 06
	ldx.w #$0606                 ; 15b12e: a2 06 06
	stx $4302                    ; 15b131: 8e 02 43 ; A1TL0
	stz $4304                    ; 15b134: 9c 04 43 ; A1B0
	ldx.w #$1800                 ; 15b137: a2 00 18
	stx $4305                    ; 15b13a: 8e 05 43 ; DAS0L
	lda.b #$01                   ; 15b13d: a9 01
	sta $420b                    ; 15b13f: 8d 0b 42 ; MDMAEN
	rtl                          ; 15b142: 6b
loc_15b143:
	lda.b #$18                   ; 15b143: a9 18
	sta $4301                    ; 15b145: 8d 01 43 ; BBAD0
	ldx.w #$0000                 ; 15b148: a2 00 00
	stx $2116                    ; 15b14b: 8e 16 21 ; VMADDL
	ldy.w #$0000                 ; 15b14e: a0 00 00
	lda.b #$80                   ; 15b151: a9 80
	sta $2115                    ; 15b153: 8d 15 21 ; VMAIN
	lda.b #$01                   ; 15b156: a9 01
	sta $4300                    ; 15b158: 8d 00 43 ; DMAP0
	ldx.w #$0010                 ; 15b15b: a2 10 00
	stx $4305                    ; 15b15e: 8e 05 43 ; DAS0L
	lda.b #$01                   ; 15b161: a9 01
	sta $420b                    ; 15b163: 8d 0b 42 ; MDMAEN
	stz $420b                    ; 15b166: 9c 0b 42 ; MDMAEN
	stz $2115                    ; 15b169: 9c 15 21 ; VMAIN
	stz $4300                    ; 15b16c: 9c 00 43 ; DMAP0
	ldx.w #$0008                 ; 15b16f: a2 08 00
	stx $4305                    ; 15b172: 8e 05 43 ; DAS0L
	lda.b #$01                   ; 15b175: a9 01
	sta $420b                    ; 15b177: 8d 0b 42 ; MDMAEN
	iny                          ; 15b17a: c8
	cpy.w #$0180                 ; 15b17b: c0 80 01
	.db $d0, $d1                 ; 15b17e: d0 d1
loc_15b180:
	rtl                          ; 15b180: 6b

; --- Block at $15b114-$15b11c ---
loc_15b114:
	stz $420b                    ; 15b114: 9c 0b 42 ; MDMAEN
	lda.b #$80                   ; 15b117: a9 80
	sta $2115                    ; 15b119: 8d 15 21 ; VMAIN

; --- Block at $15b181-$15b2fa ---
loc_15b181:
	lda.b #$80                   ; 15b181: a9 80
	sta $2115                    ; 15b183: 8d 15 21 ; VMAIN
	ldx.w #$0000                 ; 15b186: a2 00 00
	stx $2116                    ; 15b189: 8e 16 21 ; VMADDL
	lda $1700                    ; 15b18c: ad 00 17
	sta $3e                      ; 15b18f: 85 3e
	stz $3d                      ; 15b191: 64 3d
	ldx $3d                      ; 15b193: a6 3d
	ldy.w #$0000                 ; 15b195: a0 00 00
	lda $148600,x                ; 15b198: bf 00 86 14
	sta $0bdb,y                  ; 15b19c: 99 db 0b
	inx                          ; 15b19f: e8
	iny                          ; 15b1a0: c8
	cpy.w #$0100                 ; 15b1a1: c0 00 01
	.db $d0, $f2                 ; 15b1a4: d0 f2
loc_15b1a6:
	lda $1700                    ; 15b1a6: ad 00 17
	asl                          ; 15b1a9: 0a
	asl                          ; 15b1aa: 0a
	asl                          ; 15b1ab: 0a
	asl                          ; 15b1ac: 0a
	asl                          ; 15b1ad: 0a
	sta $3e                      ; 15b1ae: 85 3e
	stz $3d                      ; 15b1b0: 64 3d
	ldx $3d                      ; 15b1b2: a6 3d
	ldy.w #$0000                 ; 15b1b4: a0 00 00
	lda $1d8000,x                ; 15b1b7: bf 00 80 1d
	sta $08                      ; 15b1bb: 85 08
	inx                          ; 15b1bd: e8
	and.b #$0f                   ; 15b1be: 29 0f
	clc                          ; 15b1c0: 18
	adc $0bdb,y                  ; 15b1c1: 79 db 0b
	sta $2119                    ; 15b1c4: 8d 19 21 ; VMDATAH
	lda $08                      ; 15b1c7: a5 08
	lsr                          ; 15b1c9: 4a
	lsr                          ; 15b1ca: 4a
	lsr                          ; 15b1cb: 4a
	lsr                          ; 15b1cc: 4a
	clc                          ; 15b1cd: 18
	adc $0bdb,y                  ; 15b1ce: 79 db 0b
	sta $2119                    ; 15b1d1: 8d 19 21 ; VMDATAH
	txa                          ; 15b1d4: 8a
	and.b #$1f                   ; 15b1d5: 29 1f
	.db $d0, $de                 ; 15b1d7: d0 de
loc_15b1d9:
	iny                          ; 15b1d9: c8
	cpy.w #$0100                 ; 15b1da: c0 00 01
	.db $d0, $d8                 ; 15b1dd: d0 d8
loc_15b1df:
	rtl                          ; 15b1df: 6b
	lda $d3                      ; 15b1e0: a5 d3
	.db $f0, $01                 ; 15b1e2: f0 01
loc_15b1e4:
	rtl                          ; 15b1e4: 6b
loc_15b1e5:
	phb                          ; 15b1e5: 8b
	lda.b #$15                   ; 15b1e6: a9 15
	pha                          ; 15b1e8: 48
	plb                          ; 15b1e9: ab
	lda $1703                    ; 15b1ea: ad 03 17
	stz $4a                      ; 15b1ed: 64 4a
	lsr                          ; 15b1ef: 4a
	ror $4a                      ; 15b1f0: 66 4a
	lsr                          ; 15b1f2: 4a
	ror $4a                      ; 15b1f3: 66 4a
	sta $4b                      ; 15b1f5: 85 4b
	ldx $4a                      ; 15b1f7: a6 4a
	lda $1001,x                  ; 15b1f9: bd 01 10
	and.b #$1f                   ; 15b1fc: 29 1f
	tax                          ; 15b1fe: aa
	lda $b2fa,x                  ; 15b1ff: bd fa b2
	asl                          ; 15b202: 0a
	sta $0710                    ; 15b203: 8d 10 07
	lda $d8                      ; 15b206: a5 d8
	.db $f0, $05                 ; 15b208: f0 05
loc_15b20a:
	lda.b #$08                   ; 15b20a: a9 08
	sta $1705                    ; 15b20c: 8d 05 17
loc_15b20f:
	lda $1705                    ; 15b20f: ad 05 17
	cmp.b #$08                   ; 15b212: c9 08
	.db $d0, $0a                 ; 15b214: d0 0a
loc_15b216:
	lda $7b                      ; 15b216: a5 7b
	clc                          ; 15b218: 18
	adc.b #$10                   ; 15b219: 69 10
	lsr                          ; 15b21b: 4a
	lsr                          ; 15b21c: 4a
	lsr                          ; 15b21d: 4a
	and.b #$03                   ; 15b21e: 29 03
loc_15b220:
	asl                          ; 15b220: 0a
	asl                          ; 15b221: 0a
	asl                          ; 15b222: 0a
	asl                          ; 15b223: 0a
	sta $07                      ; 15b224: 85 07
	stz $06                      ; 15b226: 64 06
	lda $1705                    ; 15b228: ad 05 17
	cmp.b #$08                   ; 15b22b: c9 08
	.db $f0, $20                 ; 15b22d: f0 20
loc_15b22f:
	cmp.b #$04                   ; 15b22f: c9 04
	.db $b0, $04                 ; 15b231: b0 04
loc_15b233:
	lda $ab                      ; 15b233: a5 ab
	.db $f0, $18                 ; 15b235: f0 18
loc_15b237:
	lda $7b                      ; 15b237: a5 7b
	and.b #$08                   ; 15b239: 29 08
	clc                          ; 15b23b: 18
	adc $07                      ; 15b23c: 65 07
	sta $07                      ; 15b23e: 85 07
	lda $ab                      ; 15b240: a5 ab
	and.b #$01                   ; 15b242: 29 01
	.db $d0, $09                 ; 15b244: d0 09
loc_15b246:
	lda $7b                      ; 15b246: a5 7b
	and.b #$08                   ; 15b248: 29 08
	lsr                          ; 15b24a: 4a
	lsr                          ; 15b24b: 4a
	lsr                          ; 15b24c: 4a
	sta $06                      ; 15b24d: 85 06
loc_15b24f:
	lda $07                      ; 15b24f: a5 07
	tax                          ; 15b251: aa
	ldy.w #$0000                 ; 15b252: a0 00 00
	lda $c0b4,y                  ; 15b255: b9 b4 c0
	sta $0470,y                  ; 15b258: 99 70 04
	iny                          ; 15b25b: c8
	lda $c0b4,y                  ; 15b25c: b9 b4 c0
	sec                          ; 15b25f: 38
	sbc $06                      ; 15b260: e5 06
	sta $0470,y                  ; 15b262: 99 70 04
	iny                          ; 15b265: c8
	lda $c0c4,x                  ; 15b266: bd c4 c0
	sta $0470,y                  ; 15b269: 99 70 04
	inx                          ; 15b26c: e8
	iny                          ; 15b26d: c8
	lda $c0c4,x                  ; 15b26e: bd c4 c0
	and.b #$f1                   ; 15b271: 29 f1
	clc                          ; 15b273: 18
	adc $0710                    ; 15b274: 6d 10 07
	sta $0470,y                  ; 15b277: 99 70 04
	inx                          ; 15b27a: e8
	iny                          ; 15b27b: c8
	cpy.w #$0008                 ; 15b27c: c0 08 00
	.db $d0, $d4                 ; 15b27f: d0 d4
loc_15b281:
	ldy.w #$0000                 ; 15b281: a0 00 00
	lda $c0bc,y                  ; 15b284: b9 bc c0
	sta $04f0,y                  ; 15b287: 99 f0 04
	iny                          ; 15b28a: c8
	lda $c0bc,y                  ; 15b28b: b9 bc c0
	sec                          ; 15b28e: 38
	sbc $06                      ; 15b28f: e5 06
	sta $04f0,y                  ; 15b291: 99 f0 04
	iny                          ; 15b294: c8
	lda $c0c4,x                  ; 15b295: bd c4 c0
	sta $04f0,y                  ; 15b298: 99 f0 04
	inx                          ; 15b29b: e8
	iny                          ; 15b29c: c8
	lda $c0c4,x                  ; 15b29d: bd c4 c0
	and.b #$f1                   ; 15b2a0: 29 f1
	clc                          ; 15b2a2: 18
	adc $0710                    ; 15b2a3: 6d 10 07
	sta $04f0,y                  ; 15b2a6: 99 f0 04
	inx                          ; 15b2a9: e8
	iny                          ; 15b2aa: c8
	cpy.w #$0008                 ; 15b2ab: c0 08 00
	.db $d0, $d4                 ; 15b2ae: d0 d4
loc_15b2b0:
	lda $a2                      ; 15b2b0: a5 a2
	and.b #$08                   ; 15b2b2: 29 08
	.db $f0, $20                 ; 15b2b4: f0 20
loc_15b2b6:
	lda $0473                    ; 15b2b6: ad 73 04
	ora.b #$20                   ; 15b2b9: 09 20
	sta $0473                    ; 15b2bb: 8d 73 04
	lda $0477                    ; 15b2be: ad 77 04
	ora.b #$20                   ; 15b2c1: 09 20
	sta $0477                    ; 15b2c3: 8d 77 04
	lda $04f3                    ; 15b2c6: ad f3 04
	and.b #$cf                   ; 15b2c9: 29 cf
	sta $04f3                    ; 15b2cb: 8d f3 04
	lda $04f7                    ; 15b2ce: ad f7 04
	and.b #$cf                   ; 15b2d1: 29 cf
	sta $04f7                    ; 15b2d3: 8d f7 04
loc_15b2d6:
	lda $a2                      ; 15b2d6: a5 a2
	and.b #$04                   ; 15b2d8: 29 04
	.db $f0, $1c                 ; 15b2da: f0 1c
loc_15b2dc:
	lda $a1                      ; 15b2dc: a5 a1
	and.b #$04                   ; 15b2de: 29 04
	.db $f0, $08                 ; 15b2e0: f0 08
loc_15b2e2:
	lda $a1                      ; 15b2e2: a5 a1
	and.b #$03                   ; 15b2e4: 29 03
	and $d2                      ; 15b2e6: 25 d2
	.db $d0, $0e                 ; 15b2e8: d0 0e
loc_15b2ea:
	lda.b #$f8                   ; 15b2ea: a9 f8
	sta $0471                    ; 15b2ec: 8d 71 04
	sta $0475                    ; 15b2ef: 8d 75 04
	sta $04f1                    ; 15b2f2: 8d f1 04
	sta $04f5                    ; 15b2f5: 8d f5 04
loc_15b2f8:
	plb                          ; 15b2f8: ab
	rtl                          ; 15b2f9: 6b
	brk #$00                     ; 15b2fa: 00 00

; --- Block at $15b30c-$15b3f5 ---
loc_15b30c:
	lda $d3                      ; 15b30c: a5 d3
	.db $f0, $01                 ; 15b30e: f0 01
loc_15b310:
	rtl                          ; 15b310: 6b
loc_15b311:
	lda $ad                      ; 15b311: a5 ad
	cmp.b #$10                   ; 15b313: c9 10
	.db $d0, $05                 ; 15b315: d0 05
loc_15b317:
	lda $1704                    ; 15b317: ad 04 17
	.db $f0, $01                 ; 15b31a: f0 01
loc_15b31c:
	rtl                          ; 15b31c: 6b
loc_15b31d:
	phb                          ; 15b31d: 8b
	lda.b #$15                   ; 15b31e: a9 15
	pha                          ; 15b320: 48
	plb                          ; 15b321: ab
	lda $1703                    ; 15b322: ad 03 17
	stz $4a                      ; 15b325: 64 4a
	lsr                          ; 15b327: 4a
	ror $4a                      ; 15b328: 66 4a
	lsr                          ; 15b32a: 4a
	ror $4a                      ; 15b32b: 66 4a
	sta $4b                      ; 15b32d: 85 4b
	ldx $4a                      ; 15b32f: a6 4a
	lda $1001,x                  ; 15b331: bd 01 10
	and.b #$1f                   ; 15b334: 29 1f
	tax                          ; 15b336: aa
	lda $b2fa,x                  ; 15b337: bd fa b2
	asl                          ; 15b33a: 0a
	sta $0710                    ; 15b33b: 8d 10 07
	lda $1705                    ; 15b33e: ad 05 17
	asl                          ; 15b341: 0a
	asl                          ; 15b342: 0a
	asl                          ; 15b343: 0a
	asl                          ; 15b344: 0a
	sta $07                      ; 15b345: 85 07
	stz $06                      ; 15b347: 64 06
	lda $ab                      ; 15b349: a5 ab
	.db $f0, $18                 ; 15b34b: f0 18
loc_15b34d:
	lda $7b                      ; 15b34d: a5 7b
	and.b #$08                   ; 15b34f: 29 08
	clc                          ; 15b351: 18
	adc $07                      ; 15b352: 65 07
	sta $07                      ; 15b354: 85 07
	lda $ab                      ; 15b356: a5 ab
	and.b #$01                   ; 15b358: 29 01
	.db $d0, $09                 ; 15b35a: d0 09
loc_15b35c:
	lda $7b                      ; 15b35c: a5 7b
	and.b #$08                   ; 15b35e: 29 08
	lsr                          ; 15b360: 4a
	lsr                          ; 15b361: 4a
	lsr                          ; 15b362: 4a
	sta $06                      ; 15b363: 85 06
loc_15b365:
	lda $07                      ; 15b365: a5 07
	tax                          ; 15b367: aa
	ldy.w #$0000                 ; 15b368: a0 00 00
	lda $c0b4,y                  ; 15b36b: b9 b4 c0
	sta $0444,y                  ; 15b36e: 99 44 04
	iny                          ; 15b371: c8
	lda $c0b4,y                  ; 15b372: b9 b4 c0
	sec                          ; 15b375: 38
	sbc $06                      ; 15b376: e5 06
	sta $0444,y                  ; 15b378: 99 44 04
	iny                          ; 15b37b: c8
	lda $c0c4,x                  ; 15b37c: bd c4 c0
	sta $0444,y                  ; 15b37f: 99 44 04
	inx                          ; 15b382: e8
	iny                          ; 15b383: c8
	lda $c0c4,x                  ; 15b384: bd c4 c0
	and.b #$f1                   ; 15b387: 29 f1
	clc                          ; 15b389: 18
	adc $0710                    ; 15b38a: 6d 10 07
	sta $0444,y                  ; 15b38d: 99 44 04
	inx                          ; 15b390: e8
	iny                          ; 15b391: c8
	cpy.w #$0010                 ; 15b392: c0 10 00
	.db $d0, $d4                 ; 15b395: d0 d4
loc_15b397:
	lda $a2                      ; 15b397: a5 a2
	and.b #$08                   ; 15b399: 29 08
	.db $f0, $10                 ; 15b39b: f0 10
loc_15b39d:
	lda $044f                    ; 15b39d: ad 4f 04
	and.b #$cf                   ; 15b3a0: 29 cf
	sta $044f                    ; 15b3a2: 8d 4f 04
	lda $0453                    ; 15b3a5: ad 53 04
	and.b #$cf                   ; 15b3a8: 29 cf
	sta $0453                    ; 15b3aa: 8d 53 04
loc_15b3ad:
	plb                          ; 15b3ad: ab
	rtl                          ; 15b3ae: 6b
	phx                          ; 15b3af: da
	phy                          ; 15b3b0: 5a
	pha                          ; 15b3b1: 48
	rep #$20                     ; 15b3b2: c2 20
	tya                          ; 15b3b4: 98
	lsr                          ; 15b3b5: 4a
	lsr                          ; 15b3b6: 4a
	sep #$20                     ; 15b3b7: e2 20
	sta $07                      ; 15b3b9: 85 07
	pla                          ; 15b3bb: 68
	clc                          ; 15b3bc: 18
	adc $07                      ; 15b3bd: 65 07
	pha                          ; 15b3bf: 48
	and.b #$03                   ; 15b3c0: 29 03
	tax                          ; 15b3c2: aa
	lda $15b3d8,x                ; 15b3c3: bf d8 b3 15
	sta $07                      ; 15b3c7: 85 07
	pla                          ; 15b3c9: 68
	lsr                          ; 15b3ca: 4a
	lsr                          ; 15b3cb: 4a
	tay                          ; 15b3cc: a8
	lda $0500,y                  ; 15b3cd: b9 00 05
	ora $07                      ; 15b3d0: 05 07
	sta $0500,y                  ; 15b3d2: 99 00 05
	ply                          ; 15b3d5: 7a
	plx                          ; 15b3d6: fa
	rtl                          ; 15b3d7: 6b
	ora ($04,x)                  ; 15b3d8: 01 04
	.db $10, $40                 ; 15b3da: 10 40
loc_15b3dc:
	phb                          ; 15b3dc: 8b
	lda.b #$15                   ; 15b3dd: a9 15
	pha                          ; 15b3df: 48
	plb                          ; 15b3e0: ab
	lda $170f                    ; 15b3e1: ad 0f 17
	.db $f0, $0f                 ; 15b3e4: f0 0f
loc_15b3e6:
	cmp.b #$02                   ; 15b3e6: c9 02
	.db $f0, $2f                 ; 15b3e8: f0 2f
loc_15b3ea:
	lda $1701                    ; 15b3ea: ad 01 17
	.db $d0, $06                 ; 15b3ed: d0 06
loc_15b3ef:
	lda $ad                      ; 15b3ef: a5 ad
	cmp.b #$10                   ; 15b3f1: c9 10
	.db $f0, $03                 ; 15b3f3: f0 03
loc_15b3f5:
	jmp $b4b5                    ; 15b3f5: 4c b5 b4

; --- Block at $15b3f8-$15b411 ---
loc_15b3f8:
	lda $1704                    ; 15b3f8: ad 04 17
	cmp.b #$01                   ; 15b3fb: c9 01
	.db $f0, $27                 ; 15b3fd: f0 27
loc_15b3ff:
	lda $1710                    ; 15b3ff: ad 10 17
	sta $0c                      ; 15b402: 85 0c
	lda $1711                    ; 15b404: ad 11 17
	sta $0e                      ; 15b407: 85 0e
	jsl $15be47                  ; 15b409: 22 47 be 15
loc_15b40d:
	lda $d7                      ; 15b40d: a5 d7
	.db $d0, $03                 ; 15b40f: d0 03
loc_15b411:
	jmp $b4b5                    ; 15b411: 4c b5 b4

; --- Block at $15b414-$15b416 ---
loc_15b414:
	lda.b #$03                   ; 15b414: a9 03
	jmp $b435                    ; 15b416: 4c 35 b4

; --- Block at $15b419-$15b41c ---
loc_15b419:
	lda $1710                    ; 15b419: ad 10 17

; --- Block at $15b41c-$15b423 ---
loc_15b41c:
	sta $0c                      ; 15b41c: 85 0c
	lda $1711                    ; 15b41e: ad 11 17
	sta $0e                      ; 15b421: 85 0e
	jmp $b42e                    ; 15b423: 4c 2e b4

; --- Block at $15b426-$15b44d ---
loc_15b426:
	lda.b #$70                   ; 15b426: a9 70
	sta $0c                      ; 15b428: 85 0c
	lda.b #$70                   ; 15b42a: a9 70
	sta $0e                      ; 15b42c: 85 0e
	stz $0d                      ; 15b42e: 64 0d
	stz $0f                      ; 15b430: 64 0f
	lda $1705                    ; 15b432: ad 05 17
	asl                          ; 15b435: 0a
	asl                          ; 15b436: 0a
	asl                          ; 15b437: 0a
	asl                          ; 15b438: 0a
	asl                          ; 15b439: 0a
	sta $07                      ; 15b43a: 85 07
	lda $1704                    ; 15b43c: ad 04 17
	cmp.b #$01                   ; 15b43f: c9 01
	.db $d0, $0d                 ; 15b441: d0 0d
loc_15b443:
	lda $ab                      ; 15b443: a5 ab
	.db $f0, $0b                 ; 15b445: f0 0b
loc_15b447:
	lda $7a                      ; 15b447: a5 7a
	and.b #$04                   ; 15b449: 29 04
	asl                          ; 15b44b: 0a
	asl                          ; 15b44c: 0a
	jmp $b452                    ; 15b44d: 4c 52 b4

; --- Block at $15b450-$15b4ca ---
loc_15b450:
	lda.b #$00                   ; 15b450: a9 00
loc_15b452:
	clc                          ; 15b452: 18
	adc $07                      ; 15b453: 65 07
	tax                          ; 15b455: aa
	ldy.w #$0000                 ; 15b456: a0 00 00
	lda $c034,x                  ; 15b459: bd 34 c0
	clc                          ; 15b45c: 18
	adc $0c                      ; 15b45d: 65 0c
	sta $0490,y                  ; 15b45f: 99 90 04
	lda $0d                      ; 15b462: a5 0d
	adc.b #$00                   ; 15b464: 69 00
	and.b #$01                   ; 15b466: 29 01
	.db $f0, $06                 ; 15b468: f0 06
loc_15b46a:
	lda.b #$64                   ; 15b46a: a9 64
	jsl $15b3af                  ; 15b46c: 22 af b3 15
loc_15b470:
	lda $c035,x                  ; 15b470: bd 35 c0
	clc                          ; 15b473: 18
	adc $0e                      ; 15b474: 65 0e
	sta $0491,y                  ; 15b476: 99 91 04
	lda $c036,x                  ; 15b479: bd 36 c0
	sta $0492,y                  ; 15b47c: 99 92 04
	lda $c037,x                  ; 15b47f: bd 37 c0
	sta $0493,y                  ; 15b482: 99 93 04
	inx                          ; 15b485: e8
	inx                          ; 15b486: e8
	inx                          ; 15b487: e8
	inx                          ; 15b488: e8
	iny                          ; 15b489: c8
	iny                          ; 15b48a: c8
	iny                          ; 15b48b: c8
	iny                          ; 15b48c: c8
	cpy.w #$0010                 ; 15b48d: c0 10 00
	.db $d0, $c7                 ; 15b490: d0 c7
loc_15b492:
	lda $1704                    ; 15b492: ad 04 17
	cmp.b #$01                   ; 15b495: c9 01
	.db $d0, $07                 ; 15b497: d0 07
loc_15b499:
	lda $a2                      ; 15b499: a5 a2
	and.b #$08                   ; 15b49b: 29 08
	sta $170e                    ; 15b49d: 8d 0e 17
loc_15b4a0:
	lda $170e                    ; 15b4a0: ad 0e 17
	.db $f0, $10                 ; 15b4a3: f0 10
loc_15b4a5:
	lda $049b                    ; 15b4a5: ad 9b 04
	and.b #$cf                   ; 15b4a8: 29 cf
	sta $049b                    ; 15b4aa: 8d 9b 04
	lda $049f                    ; 15b4ad: ad 9f 04
	and.b #$cf                   ; 15b4b0: 29 cf
	sta $049f                    ; 15b4b2: 8d 9f 04
loc_15b4b5:
	plb                          ; 15b4b5: ab
	rtl                          ; 15b4b6: 6b
	sec                          ; 15b4b7: 38
	sbc.b #$02                   ; 15b4b8: e9 02
	tax                          ; 15b4ba: aa
	asl                          ; 15b4bb: 0a
	asl                          ; 15b4bc: 0a
	tay                          ; 15b4bd: a8
	lda $0c                      ; 15b4be: a5 0c
	sec                          ; 15b4c0: 38
	sbc.b #$04                   ; 15b4c1: e9 04
	.db $b0, $08                 ; 15b4c3: b0 08
loc_15b4c5:
	lda.b #$f8                   ; 15b4c5: a9 f8
	sta $04f1,y                  ; 15b4c7: 99 f1 04
	jmp $b4d8                    ; 15b4ca: 4c d8 b4

; --- Block at $15b4cd-$15b4fd ---
loc_15b4cd:
	sta $04f0,y                  ; 15b4cd: 99 f0 04
	lda $0e                      ; 15b4d0: a5 0e
	sec                          ; 15b4d2: 38
	sbc.b #$05                   ; 15b4d3: e9 05
	sta $04f1,y                  ; 15b4d5: 99 f1 04
	lda $ad                      ; 15b4d8: a5 ad
	lsr                          ; 15b4da: 4a
	lsr                          ; 15b4db: 4a
	lsr                          ; 15b4dc: 4a
	lsr                          ; 15b4dd: 4a
	dec                          ; 15b4de: 3a
	dec                          ; 15b4df: 3a
	sta $06                      ; 15b4e0: 85 06
	txa                          ; 15b4e2: 8a
	asl                          ; 15b4e3: 0a
	clc                          ; 15b4e4: 18
	adc $06                      ; 15b4e5: 65 06
	adc.b #$30                   ; 15b4e7: 69 30
	sta $04f2,y                  ; 15b4e9: 99 f2 04
	lda $15b4f5,x                ; 15b4ec: bf f5 b4 15
	sta $04f3,y                  ; 15b4f0: 99 f3 04
	plb                          ; 15b4f3: ab
	rtl                          ; 15b4f4: 6b
	inc                          ; 15b4f5: 1a
	clc                          ; 15b4f6: 18
	clc                          ; 15b4f7: 18
	trb $a98b                    ; 15b4f8: 1c 8b a9
	ora $48,x                    ; 15b4fb: 15 48

; --- Block at $15b4f9-$15b527 ---
loc_15b4f9:
	phb                          ; 15b4f9: 8b
	lda.b #$15                   ; 15b4fa: a9 15
	pha                          ; 15b4fc: 48
	plb                          ; 15b4fd: ab
	lda $1712                    ; 15b4fe: ad 12 17
	.db $f0, $24                 ; 15b501: f0 24
loc_15b503:
	lda $1701                    ; 15b503: ad 01 17
	.db $d0, $1f                 ; 15b506: d0 1f
loc_15b508:
	lda $1704                    ; 15b508: ad 04 17
	cmp.b #$02                   ; 15b50b: c9 02
	.db $f0, $2b                 ; 15b50d: f0 2b
loc_15b50f:
	lda $ad                      ; 15b50f: a5 ad
	and.b #$0f                   ; 15b511: 29 0f
	.db $d0, $12                 ; 15b513: d0 12
loc_15b515:
	lda $1713                    ; 15b515: ad 13 17
	sta $0c                      ; 15b518: 85 0c
	lda $1714                    ; 15b51a: ad 14 17
	sta $0e                      ; 15b51d: 85 0e
	jsl $15be47                  ; 15b51f: 22 47 be 15
loc_15b523:
	lda $d7                      ; 15b523: a5 d7
	.db $d0, $03                 ; 15b525: d0 03
loc_15b527:
	jmp $b5ed                    ; 15b527: 4c ed b5

; --- Block at $15b52a-$15b532 ---
loc_15b52a:
	lda $ad                      ; 15b52a: a5 ad
	cmp.b #$10                   ; 15b52c: c9 10
	.db $f0, $05                 ; 15b52e: f0 05
loc_15b530:
	lda.b #$02                   ; 15b530: a9 02
	jmp $b4b7                    ; 15b532: 4c b7 b4

; --- Block at $15b535-$15b537 ---
loc_15b535:
	lda.b #$03                   ; 15b535: a9 03
	jmp $b552                    ; 15b537: 4c 52 b5

; --- Block at $15b53a-$15b566 ---
loc_15b53a:
	lda.b #$00                   ; 15b53a: a9 00
	jsl $15b866                  ; 15b53c: 22 66 b8 15
loc_15b540:
	stz $0d                      ; 15b540: 64 0d
	stz $0f                      ; 15b542: 64 0f
	lda.b #$70                   ; 15b544: a9 70
	sta $0c                      ; 15b546: 85 0c
	lda.b #$70                   ; 15b548: a9 70
	sec                          ; 15b54a: 38
	sbc $b5                      ; 15b54b: e5 b5
	sta $0e                      ; 15b54d: 85 0e
	lda $1705                    ; 15b54f: ad 05 17
	asl                          ; 15b552: 0a
	asl                          ; 15b553: 0a
	asl                          ; 15b554: 0a
	asl                          ; 15b555: 0a
	asl                          ; 15b556: 0a
	sta $07                      ; 15b557: 85 07
	lda $1704                    ; 15b559: ad 04 17
	cmp.b #$02                   ; 15b55c: c9 02
	.db $d0, $09                 ; 15b55e: d0 09
loc_15b560:
	lda $7a                      ; 15b560: a5 7a
	and.b #$04                   ; 15b562: 29 04
	asl                          ; 15b564: 0a
	asl                          ; 15b565: 0a
	jmp $b56b                    ; 15b566: 4c 6b b5

; --- Block at $15b569-$15b5c0 ---
loc_15b569:
	lda.b #$00                   ; 15b569: a9 00
	clc                          ; 15b56b: 18
	adc $07                      ; 15b56c: 65 07
	tax                          ; 15b56e: aa
	ldy.w #$0000                 ; 15b56f: a0 00 00
	lda $bfb4,x                  ; 15b572: bd b4 bf
	clc                          ; 15b575: 18
	adc $0c                      ; 15b576: 65 0c
	sta $0414,y                  ; 15b578: 99 14 04
	lda $0d                      ; 15b57b: a5 0d
	adc.b #$00                   ; 15b57d: 69 00
	and.b #$01                   ; 15b57f: 29 01
	.db $f0, $06                 ; 15b581: f0 06
loc_15b583:
	lda.b #$45                   ; 15b583: a9 45
	jsl $15b3af                  ; 15b585: 22 af b3 15
loc_15b589:
	lda $bfb5,x                  ; 15b589: bd b5 bf
	clc                          ; 15b58c: 18
	adc $0e                      ; 15b58d: 65 0e
	sta $0415,y                  ; 15b58f: 99 15 04
	lda $bfb6,x                  ; 15b592: bd b6 bf
	clc                          ; 15b595: 18
	adc.b #$90                   ; 15b596: 69 90
	sta $0416,y                  ; 15b598: 99 16 04
	lda $bfb7,x                  ; 15b59b: bd b7 bf
	clc                          ; 15b59e: 18
	adc.b #$1a                   ; 15b59f: 69 1a
	sta $0417,y                  ; 15b5a1: 99 17 04
	inx                          ; 15b5a4: e8
	inx                          ; 15b5a5: e8
	inx                          ; 15b5a6: e8
	inx                          ; 15b5a7: e8
	iny                          ; 15b5a8: c8
	iny                          ; 15b5a9: c8
	iny                          ; 15b5aa: c8
	iny                          ; 15b5ab: c8
	cpy.w #$0010                 ; 15b5ac: c0 10 00
	.db $d0, $c1                 ; 15b5af: d0 c1
loc_15b5b1:
	lda $1704                    ; 15b5b1: ad 04 17
	cmp.b #$02                   ; 15b5b4: c9 02
	.db $f0, $0b                 ; 15b5b6: f0 0b
loc_15b5b8:
	lda.b #$f8                   ; 15b5b8: a9 f8
	sta $041d                    ; 15b5ba: 8d 1d 04
	sta $0421                    ; 15b5bd: 8d 21 04
	jmp $b5ed                    ; 15b5c0: 4c ed b5

; --- Block at $15b5c3-$15b5ef ---
loc_15b5c3:
	lda $a1                      ; 15b5c3: a5 a1
	and.b #$08                   ; 15b5c5: 29 08
	.db $f0, $24                 ; 15b5c7: f0 24
loc_15b5c9:
	lda.b #$70                   ; 15b5c9: a9 70
	sta $040c                    ; 15b5cb: 8d 0c 04
	lda.b #$78                   ; 15b5ce: a9 78
	sta $040d                    ; 15b5d0: 8d 0d 04
	lda.b #$43                   ; 15b5d3: a9 43
	sta $040e                    ; 15b5d5: 8d 0e 04
	stz $040f                    ; 15b5d8: 9c 0f 04
	lda.b #$78                   ; 15b5db: a9 78
	sta $0410                    ; 15b5dd: 8d 10 04
	lda.b #$78                   ; 15b5e0: a9 78
	sta $0411                    ; 15b5e2: 8d 11 04
	lda.b #$43                   ; 15b5e5: a9 43
	sta $0412                    ; 15b5e7: 8d 12 04
	stz $0413                    ; 15b5ea: 9c 13 04
loc_15b5ed:
	plb                          ; 15b5ed: ab
	rtl                          ; 15b5ee: 6b

; --- Block at $15b5ef-$15b670 ---
loc_15b5ef:
	phb                          ; 15b5ef: 8b
	lda.b #$15                   ; 15b5f0: a9 15
	pha                          ; 15b5f2: 48
	plb                          ; 15b5f3: ab
	lda $1701                    ; 15b5f4: ad 01 17
	cmp.b #$01                   ; 15b5f7: c9 01
	.db $d0, $68                 ; 15b5f9: d0 68
loc_15b5fb:
	stz $0b                      ; 15b5fb: 64 0b
	lda $0b                      ; 15b5fd: a5 0b
	tax                          ; 15b5ff: aa
	lda $b665,x                  ; 15b600: bd 65 b6
	sta $0c                      ; 15b603: 85 0c
	lda $b66a,x                  ; 15b605: bd 6a b6
	sta $0e                      ; 15b608: 85 0e
	jsl $15be47                  ; 15b60a: 22 47 be 15
loc_15b60e:
	lda $d7                      ; 15b60e: a5 d7
	.db $f0, $49                 ; 15b610: f0 49
loc_15b612:
	ldx.w #$0000                 ; 15b612: a2 00 00
	lda $0b                      ; 15b615: a5 0b
	asl                          ; 15b617: 0a
	asl                          ; 15b618: 0a
	asl                          ; 15b619: 0a
	asl                          ; 15b61a: 0a
	tay                          ; 15b61b: a8
	lda $bfb4,x                  ; 15b61c: bd b4 bf
	clc                          ; 15b61f: 18
	adc $0c                      ; 15b620: 65 0c
	sta $0480,y                  ; 15b622: 99 80 04
	lda $0d                      ; 15b625: a5 0d
	adc.b #$00                   ; 15b627: 69 00
	and.b #$01                   ; 15b629: 29 01
	.db $f0, $06                 ; 15b62b: f0 06
loc_15b62d:
	lda.b #$60                   ; 15b62d: a9 60
	jsl $15b3af                  ; 15b62f: 22 af b3 15
loc_15b633:
	lda $bfb5,x                  ; 15b633: bd b5 bf
	clc                          ; 15b636: 18
	adc $0e                      ; 15b637: 65 0e
	sta $0481,y                  ; 15b639: 99 81 04
	lda $bfb6,x                  ; 15b63c: bd b6 bf
	clc                          ; 15b63f: 18
	adc.b #$a8                   ; 15b640: 69 a8
	sta $0482,y                  ; 15b642: 99 82 04
	lda $bfb7,x                  ; 15b645: bd b7 bf
	clc                          ; 15b648: 18
	adc.b #$18                   ; 15b649: 69 18
	sta $0483,y                  ; 15b64b: 99 83 04
	inx                          ; 15b64e: e8
	inx                          ; 15b64f: e8
	inx                          ; 15b650: e8
	inx                          ; 15b651: e8
	iny                          ; 15b652: c8
	iny                          ; 15b653: c8
	iny                          ; 15b654: c8
	iny                          ; 15b655: c8
	cpx.w #$0010                 ; 15b656: e0 10 00
	.db $d0, $c1                 ; 15b659: d0 c1
loc_15b65b:
	inc $0b                      ; 15b65b: e6 0b
	lda $0b                      ; 15b65d: a5 0b
	cmp.b #$05                   ; 15b65f: c9 05
	.db $d0, $9a                 ; 15b661: d0 9a
loc_15b663:
	plb                          ; 15b663: ab
	rtl                          ; 15b664: 6b
	rol $302f                    ; 15b665: 2e 2f 30
	and ($32),y                  ; 15b668: 31 32
	ora ($14,s),y                ; 15b66a: 13 14
	ora ($14,s),y                ; 15b66c: 13 14
	ora ($8b,s),y                ; 15b66e: 13 8b

; --- Block at $15b66f-$15b697 ---
loc_15b66f:
	phb                          ; 15b66f: 8b
	lda.b #$15                   ; 15b670: a9 15
	pha                          ; 15b672: 48
	plb                          ; 15b673: ab
	lda $1728                    ; 15b674: ad 28 17
	.db $f0, $1e                 ; 15b677: f0 1e
loc_15b679:
	lda $1701                    ; 15b679: ad 01 17
	.db $d0, $19                 ; 15b67c: d0 19
loc_15b67e:
	lda $1704                    ; 15b67e: ad 04 17
	cmp.b #$07                   ; 15b681: c9 07
	.db $f0, $1a                 ; 15b683: f0 1a
loc_15b685:
	lda $1729                    ; 15b685: ad 29 17
	sta $0c                      ; 15b688: 85 0c
	lda $172a                    ; 15b68a: ad 2a 17
	sta $0e                      ; 15b68d: 85 0e
	jsl $15be47                  ; 15b68f: 22 47 be 15
loc_15b693:
	lda $d7                      ; 15b693: a5 d7
	.db $d0, $03                 ; 15b695: d0 03
loc_15b697:
	jmp $b70d                    ; 15b697: 4c 0d b7

; --- Block at $15b69a-$15b69c ---
loc_15b69a:
	lda.b #$00                   ; 15b69a: a9 00
	jmp $b6ae                    ; 15b69c: 4c ae b6

; --- Block at $15b69f-$15b6c2 ---
loc_15b69f:
	stz $0d                      ; 15b69f: 64 0d
	stz $0f                      ; 15b6a1: 64 0f
	lda.b #$70                   ; 15b6a3: a9 70
	sta $0c                      ; 15b6a5: 85 0c
	lda.b #$70                   ; 15b6a7: a9 70
	sta $0e                      ; 15b6a9: 85 0e
	lda $1705                    ; 15b6ab: ad 05 17
	asl                          ; 15b6ae: 0a
	asl                          ; 15b6af: 0a
	asl                          ; 15b6b0: 0a
	asl                          ; 15b6b1: 0a
	asl                          ; 15b6b2: 0a
	sta $07                      ; 15b6b3: 85 07
	lda $1704                    ; 15b6b5: ad 04 17
	cmp.b #$07                   ; 15b6b8: c9 07
	.db $d0, $09                 ; 15b6ba: d0 09
loc_15b6bc:
	lda $7a                      ; 15b6bc: a5 7a
	and.b #$04                   ; 15b6be: 29 04
	asl                          ; 15b6c0: 0a
	asl                          ; 15b6c1: 0a
	jmp $b6c7                    ; 15b6c2: 4c c7 b6

; --- Block at $15b6c5-$15b70f ---
loc_15b6c5:
	lda.b #$00                   ; 15b6c5: a9 00
	clc                          ; 15b6c7: 18
	adc $07                      ; 15b6c8: 65 07
	tax                          ; 15b6ca: aa
	ldy.w #$0000                 ; 15b6cb: a0 00 00
	lda $bfb4,x                  ; 15b6ce: bd b4 bf
	clc                          ; 15b6d1: 18
	adc $0c                      ; 15b6d2: 65 0c
	sta $0480,y                  ; 15b6d4: 99 80 04
	lda $0d                      ; 15b6d7: a5 0d
	adc.b #$00                   ; 15b6d9: 69 00
	and.b #$01                   ; 15b6db: 29 01
	.db $f0, $06                 ; 15b6dd: f0 06
loc_15b6df:
	lda.b #$60                   ; 15b6df: a9 60
	jsl $15b3af                  ; 15b6e1: 22 af b3 15
loc_15b6e5:
	lda $bfb5,x                  ; 15b6e5: bd b5 bf
	clc                          ; 15b6e8: 18
	adc $0e                      ; 15b6e9: 65 0e
	sta $0481,y                  ; 15b6eb: 99 81 04
	lda $bfb6,x                  ; 15b6ee: bd b6 bf
	clc                          ; 15b6f1: 18
	adc.b #$60                   ; 15b6f2: 69 60
	sta $0482,y                  ; 15b6f4: 99 82 04
	lda $bfb7,x                  ; 15b6f7: bd b7 bf
	clc                          ; 15b6fa: 18
	adc.b #$18                   ; 15b6fb: 69 18
	sta $0483,y                  ; 15b6fd: 99 83 04
	inx                          ; 15b700: e8
	inx                          ; 15b701: e8
	inx                          ; 15b702: e8
	inx                          ; 15b703: e8
	iny                          ; 15b704: c8
	iny                          ; 15b705: c8
	iny                          ; 15b706: c8
	iny                          ; 15b707: c8
	cpy.w #$0010                 ; 15b708: c0 10 00
	.db $d0, $c1                 ; 15b70b: d0 c1
loc_15b70d:
	plb                          ; 15b70d: ab
	rtl                          ; 15b70e: 6b

; --- Block at $15b70f-$15b72d ---
loc_15b70f:
	phb                          ; 15b70f: 8b
	lda.b #$15                   ; 15b710: a9 15
	pha                          ; 15b712: 48
	plb                          ; 15b713: ab
	lda $1718                    ; 15b714: ad 18 17
	.db $f0, $2f                 ; 15b717: f0 2f
loc_15b719:
	lda $1701                    ; 15b719: ad 01 17
	cmp $171b                    ; 15b71c: cd 1b 17
	.db $d0, $27                 ; 15b71f: d0 27
loc_15b721:
	lda $1704                    ; 15b721: ad 04 17
	cmp.b #$03                   ; 15b724: c9 03
	.db $f0, $33                 ; 15b726: f0 33
loc_15b728:
	lda $06d0                    ; 15b728: ad d0 06
	.db $f0, $03                 ; 15b72b: f0 03
loc_15b72d:
	jmp $b7d6                    ; 15b72d: 4c d6 b7

; --- Block at $15b730-$15b748 ---
loc_15b730:
	lda $ad                      ; 15b730: a5 ad
	and.b #$0f                   ; 15b732: 29 0f
	.db $d0, $12                 ; 15b734: d0 12
loc_15b736:
	lda $1719                    ; 15b736: ad 19 17
	sta $0c                      ; 15b739: 85 0c
	lda $171a                    ; 15b73b: ad 1a 17
	sta $0e                      ; 15b73e: 85 0e
	jsl $15be47                  ; 15b740: 22 47 be 15
loc_15b744:
	lda $d7                      ; 15b744: a5 d7
	.db $d0, $03                 ; 15b746: d0 03

; --- Block at $15b748-$15b748 ---
loc_15b748:
	jmp $b814                    ; 15b748: 4c 14 b8

; --- Block at $15b74b-$15b753 ---
loc_15b74b:
	lda $ad                      ; 15b74b: a5 ad
	cmp.b #$10                   ; 15b74d: c9 10
	.db $f0, $05                 ; 15b74f: f0 05
loc_15b751:
	lda.b #$03                   ; 15b751: a9 03
	jmp $b4b7                    ; 15b753: 4c b7 b4

; --- Block at $15b756-$15b758 ---
loc_15b756:
	lda.b #$03                   ; 15b756: a9 03
	jmp $b773                    ; 15b758: 4c 73 b7

; --- Block at $15b75b-$15b788 ---
loc_15b75b:
	lda.b #$00                   ; 15b75b: a9 00
	jsl $15b866                  ; 15b75d: 22 66 b8 15
loc_15b761:
	stz $0d                      ; 15b761: 64 0d
	stz $0f                      ; 15b763: 64 0f
	lda.b #$70                   ; 15b765: a9 70
	sta $0c                      ; 15b767: 85 0c
	lda.b #$70                   ; 15b769: a9 70
	sec                          ; 15b76b: 38
	sbc $b6                      ; 15b76c: e5 b6
	sta $0e                      ; 15b76e: 85 0e
	lda $1705                    ; 15b770: ad 05 17
	asl                          ; 15b773: 0a
	asl                          ; 15b774: 0a
	asl                          ; 15b775: 0a
	asl                          ; 15b776: 0a
	asl                          ; 15b777: 0a
	sta $07                      ; 15b778: 85 07
	lda $1704                    ; 15b77a: ad 04 17
	cmp.b #$03                   ; 15b77d: c9 03
	.db $d0, $0a                 ; 15b77f: d0 0a
loc_15b781:
	lda $7a                      ; 15b781: a5 7a
	and.b #$02                   ; 15b783: 29 02
	asl                          ; 15b785: 0a
	asl                          ; 15b786: 0a
	asl                          ; 15b787: 0a
	jmp $b78d                    ; 15b788: 4c 8d b7

; --- Block at $15b78b-$15b7d3 ---
loc_15b78b:
	lda.b #$00                   ; 15b78b: a9 00
	clc                          ; 15b78d: 18
	adc $07                      ; 15b78e: 65 07
	tax                          ; 15b790: aa
	ldy.w #$0000                 ; 15b791: a0 00 00
	lda $bfb4,x                  ; 15b794: bd b4 bf
	clc                          ; 15b797: 18
	adc $0c                      ; 15b798: 65 0c
	sta $0480,y                  ; 15b79a: 99 80 04
	lda $0d                      ; 15b79d: a5 0d
	adc.b #$00                   ; 15b79f: 69 00
	and.b #$01                   ; 15b7a1: 29 01
	.db $f0, $06                 ; 15b7a3: f0 06
loc_15b7a5:
	lda.b #$60                   ; 15b7a5: a9 60
	jsl $15b3af                  ; 15b7a7: 22 af b3 15
loc_15b7ab:
	lda $bfb5,x                  ; 15b7ab: bd b5 bf
	clc                          ; 15b7ae: 18
	adc $0e                      ; 15b7af: 65 0e
	sta $0481,y                  ; 15b7b1: 99 81 04
	lda $bfb6,x                  ; 15b7b4: bd b6 bf
	clc                          ; 15b7b7: 18
	adc.b #$48                   ; 15b7b8: 69 48
	sta $0482,y                  ; 15b7ba: 99 82 04
	lda $bfb7,x                  ; 15b7bd: bd b7 bf
	clc                          ; 15b7c0: 18
	adc.b #$18                   ; 15b7c1: 69 18
	sta $0483,y                  ; 15b7c3: 99 83 04
	inx                          ; 15b7c6: e8
	inx                          ; 15b7c7: e8
	inx                          ; 15b7c8: e8
	inx                          ; 15b7c9: e8
	iny                          ; 15b7ca: c8
	iny                          ; 15b7cb: c8
	iny                          ; 15b7cc: c8
	iny                          ; 15b7cd: c8
	cpy.w #$0010                 ; 15b7ce: c0 10 00
	.db $d0, $c1                 ; 15b7d1: d0 c1
loc_15b7d3:
	jmp $b814                    ; 15b7d3: 4c 14 b8

; --- Block at $15b866-$15b88b ---
loc_15b866:
	cmp.b #$10                   ; 15b866: c9 10
	.db $90, $02                 ; 15b868: 90 02
loc_15b86a:
	lda.b #$10                   ; 15b86a: a9 10
loc_15b86c:
	and.b #$fc                   ; 15b86c: 29 fc
	tax                          ; 15b86e: aa
	cmp.b #$10                   ; 15b86f: c9 10
	.db $f0, $06                 ; 15b871: f0 06
loc_15b873:
	lda $7a                      ; 15b873: a5 7a
	and.b #$01                   ; 15b875: 29 01
	.db $d0, $4f                 ; 15b877: d0 4f
loc_15b879:
	lda $c8                      ; 15b879: a5 c8
	.db $d0, $4b                 ; 15b87b: d0 4b
loc_15b87d:
	lda $a1                      ; 15b87d: a5 a1
	and.b #$08                   ; 15b87f: 29 08
	.db $d0, $06                 ; 15b881: d0 06
loc_15b883:
	lda $a1                      ; 15b883: a5 a1
	and.b #$04                   ; 15b885: 29 04
	.db $d0, $05                 ; 15b887: d0 05
loc_15b889:
	lda.b #$fe                   ; 15b889: a9 fe
	jmp $b890                    ; 15b88b: 4c 90 b8

; --- Block at $15b88e-$15b8c8 ---
loc_15b88e:
	lda.b #$00                   ; 15b88e: a9 00
	sta $06                      ; 15b890: 85 06
	lda.b #$70                   ; 15b892: a9 70
	sta $04c0                    ; 15b894: 8d c0 04
	lda.b #$78                   ; 15b897: a9 78
	clc                          ; 15b899: 18
	adc $06                      ; 15b89a: 65 06
	sta $04c1                    ; 15b89c: 8d c1 04
	lda $15b8c9,x                ; 15b89f: bf c9 b8 15
	sta $04c2                    ; 15b8a3: 8d c2 04
	lda $15b8ca,x                ; 15b8a6: bf ca b8 15
	sta $04c3                    ; 15b8aa: 8d c3 04
	lda.b #$78                   ; 15b8ad: a9 78
	sta $04c4                    ; 15b8af: 8d c4 04
	lda.b #$78                   ; 15b8b2: a9 78
	clc                          ; 15b8b4: 18
	adc $06                      ; 15b8b5: 65 06
	sta $04c5                    ; 15b8b7: 8d c5 04
	lda $15b8cb,x                ; 15b8ba: bf cb b8 15
	sta $04c6                    ; 15b8be: 8d c6 04
	lda $15b8cc,x                ; 15b8c1: bf cc b8 15
	sta $04c7                    ; 15b8c5: 8d c7 04

; --- Block at $15b8c8-$15b8dd ---
loc_15b8c8:
	rtl                          ; 15b8c8: 6b
	tsc                          ; 15b8c9: 3b
	plp                          ; 15b8ca: 28
	tsc                          ; 15b8cb: 3b
	pla                          ; 15b8cc: 68
	dec                          ; 15b8cd: 3a
	plp                          ; 15b8ce: 28
	dec                          ; 15b8cf: 3a
	pla                          ; 15b8d0: 68
	and $3928,y                  ; 15b8d1: 39 28 39
	pla                          ; 15b8d4: 68
	sec                          ; 15b8d5: 38
	plp                          ; 15b8d6: 28
	sec                          ; 15b8d7: 38
	pla                          ; 15b8d8: 68
	sec                          ; 15b8d9: 38
	plp                          ; 15b8da: 28
	sec                          ; 15b8db: 38
	pla                          ; 15b8dc: 68

; --- Block at $15b8dd-$15b90e ---
loc_15b8dd:
	phb                          ; 15b8dd: 8b
	lda.b #$15                   ; 15b8de: a9 15
	pha                          ; 15b8e0: 48
	plb                          ; 15b8e1: ab
	lda $1704                    ; 15b8e2: ad 04 17
	cmp.b #$04                   ; 15b8e5: c9 04
	.db $f0, $38                 ; 15b8e7: f0 38
loc_15b8e9:
	lda $171c                    ; 15b8e9: ad 1c 17
	.db $f0, $20                 ; 15b8ec: f0 20
loc_15b8ee:
	lda $1701                    ; 15b8ee: ad 01 17
	cmp $171f                    ; 15b8f1: cd 1f 17
	.db $d0, $18                 ; 15b8f4: d0 18
loc_15b8f6:
	lda $ad                      ; 15b8f6: a5 ad
	and.b #$0f                   ; 15b8f8: 29 0f
	.db $d0, $12                 ; 15b8fa: d0 12
loc_15b8fc:
	lda $171d                    ; 15b8fc: ad 1d 17
	sta $0c                      ; 15b8ff: 85 0c
	lda $171e                    ; 15b901: ad 1e 17
	sta $0e                      ; 15b904: 85 0e
	jsl $15be47                  ; 15b906: 22 47 be 15
loc_15b90a:
	lda $d7                      ; 15b90a: a5 d7
	.db $d0, $03                 ; 15b90c: d0 03
loc_15b90e:
	jmp $b9ca                    ; 15b90e: 4c ca b9

; --- Block at $15b911-$15b919 ---
loc_15b911:
	lda $ad                      ; 15b911: a5 ad
	cmp.b #$10                   ; 15b913: c9 10
	.db $f0, $05                 ; 15b915: f0 05
loc_15b917:
	lda.b #$04                   ; 15b917: a9 04
	jmp $b4b7                    ; 15b919: 4c b7 b4

; --- Block at $15b91c-$15b91e ---
loc_15b91c:
	lda.b #$03                   ; 15b91c: a9 03
	jmp $b939                    ; 15b91e: 4c 39 b9

; --- Block at $15b921-$15b954 ---
loc_15b921:
	lda $b7                      ; 15b921: a5 b7
	jsl $15b866                  ; 15b923: 22 66 b8 15
loc_15b927:
	lda.b #$70                   ; 15b927: a9 70
	sta $0c                      ; 15b929: 85 0c
	lda.b #$70                   ; 15b92b: a9 70
	sec                          ; 15b92d: 38
	sbc $b7                      ; 15b92e: e5 b7
	sta $0e                      ; 15b930: 85 0e
	stz $0d                      ; 15b932: 64 0d
	stz $0f                      ; 15b934: 64 0f
	lda $1705                    ; 15b936: ad 05 17
	asl                          ; 15b939: 0a
	asl                          ; 15b93a: 0a
	asl                          ; 15b93b: 0a
	asl                          ; 15b93c: 0a
	asl                          ; 15b93d: 0a
	sta $07                      ; 15b93e: 85 07
	lda $1704                    ; 15b940: ad 04 17
	cmp.b #$04                   ; 15b943: c9 04
	.db $d0, $10                 ; 15b945: d0 10
loc_15b947:
	lda $06fd                    ; 15b947: ad fd 06
	tax                          ; 15b94a: aa
	lda $7a                      ; 15b94b: a5 7a
	and $be37,x                  ; 15b94d: 3d 37 be
	.db $d0, $05                 ; 15b950: d0 05
loc_15b952:
	lda.b #$10                   ; 15b952: a9 10
	jmp $b959                    ; 15b954: 4c 59 b9

; --- Block at $15b957-$15b9cc ---
loc_15b957:
	lda.b #$00                   ; 15b957: a9 00
	clc                          ; 15b959: 18
	adc $07                      ; 15b95a: 65 07
	tax                          ; 15b95c: aa
	ldy.w #$0000                 ; 15b95d: a0 00 00
	lda $bfb4,x                  ; 15b960: bd b4 bf
	clc                          ; 15b963: 18
	adc $0c                      ; 15b964: 65 0c
	sta $046c,y                  ; 15b966: 99 6c 04
	lda $0d                      ; 15b969: a5 0d
	adc.b #$00                   ; 15b96b: 69 00
	and.b #$01                   ; 15b96d: 29 01
	.db $f0, $06                 ; 15b96f: f0 06
loc_15b971:
	lda.b #$5b                   ; 15b971: a9 5b
	jsl $15b3af                  ; 15b973: 22 af b3 15
loc_15b977:
	lda $bfb5,x                  ; 15b977: bd b5 bf
	clc                          ; 15b97a: 18
	adc $0e                      ; 15b97b: 65 0e
	sta $046d,y                  ; 15b97d: 99 6d 04
	lda $bfb6,x                  ; 15b980: bd b6 bf
	clc                          ; 15b983: 18
	adc.b #$78                   ; 15b984: 69 78
	sta $046e,y                  ; 15b986: 99 6e 04
	lda $bfb7,x                  ; 15b989: bd b7 bf
	clc                          ; 15b98c: 18
	adc.b #$18                   ; 15b98d: 69 18
	sta $046f,y                  ; 15b98f: 99 6f 04
	inx                          ; 15b992: e8
	inx                          ; 15b993: e8
	inx                          ; 15b994: e8
	inx                          ; 15b995: e8
	iny                          ; 15b996: c8
	iny                          ; 15b997: c8
	iny                          ; 15b998: c8
	iny                          ; 15b999: c8
	cpy.w #$0010                 ; 15b99a: c0 10 00
	.db $d0, $c1                 ; 15b99d: d0 c1
loc_15b99f:
	lda $1704                    ; 15b99f: ad 04 17
	cmp.b #$04                   ; 15b9a2: c9 04
	.db $d0, $24                 ; 15b9a4: d0 24
loc_15b9a6:
	lda $ad                      ; 15b9a6: a5 ad
	cmp.b #$20                   ; 15b9a8: c9 20
	.db $d0, $1e                 ; 15b9aa: d0 1e
loc_15b9ac:
	lda $b7                      ; 15b9ac: a5 b7
	cmp.b #$10                   ; 15b9ae: c9 10
	.db $d0, $18                 ; 15b9b0: d0 18
loc_15b9b2:
	lda.b #$74                   ; 15b9b2: a9 74
	sta $047c                    ; 15b9b4: 8d 7c 04
	lda $06f8                    ; 15b9b7: ad f8 06
	clc                          ; 15b9ba: 18
	adc.b #$68                   ; 15b9bb: 69 68
	sta $047d                    ; 15b9bd: 8d 7d 04
	lda.b #$2e                   ; 15b9c0: a9 2e
	sta $047e                    ; 15b9c2: 8d 7e 04
	lda.b #$21                   ; 15b9c5: a9 21
	sta $047f                    ; 15b9c7: 8d 7f 04
loc_15b9ca:
	plb                          ; 15b9ca: ab
	rtl                          ; 15b9cb: 6b

; --- Block at $15b9cc-$15b9fd ---
loc_15b9cc:
	phb                          ; 15b9cc: 8b
	lda.b #$15                   ; 15b9cd: a9 15
	pha                          ; 15b9cf: 48
	plb                          ; 15b9d0: ab
	lda $1704                    ; 15b9d1: ad 04 17
	cmp.b #$05                   ; 15b9d4: c9 05
	.db $f0, $38                 ; 15b9d6: f0 38
loc_15b9d8:
	lda $1720                    ; 15b9d8: ad 20 17
	.db $f0, $20                 ; 15b9db: f0 20
loc_15b9dd:
	lda $1701                    ; 15b9dd: ad 01 17
	cmp $1723                    ; 15b9e0: cd 23 17
	.db $d0, $18                 ; 15b9e3: d0 18
loc_15b9e5:
	lda $ad                      ; 15b9e5: a5 ad
	and.b #$0f                   ; 15b9e7: 29 0f
	.db $d0, $12                 ; 15b9e9: d0 12
loc_15b9eb:
	lda $1721                    ; 15b9eb: ad 21 17
	sta $0c                      ; 15b9ee: 85 0c
	lda $1722                    ; 15b9f0: ad 22 17
	sta $0e                      ; 15b9f3: 85 0e
	jsl $15be47                  ; 15b9f5: 22 47 be 15
loc_15b9f9:
	lda $d7                      ; 15b9f9: a5 d7
	.db $d0, $03                 ; 15b9fb: d0 03
loc_15b9fd:
	jmp $bb12                    ; 15b9fd: 4c 12 bb

; --- Block at $15ba00-$15ba08 ---
loc_15ba00:
	lda $ad                      ; 15ba00: a5 ad
	cmp.b #$10                   ; 15ba02: c9 10
	.db $f0, $05                 ; 15ba04: f0 05
loc_15ba06:
	lda.b #$05                   ; 15ba06: a9 05
	jmp $b4b7                    ; 15ba08: 4c b7 b4

; --- Block at $15ba0b-$15ba0d ---
loc_15ba0b:
	lda.b #$03                   ; 15ba0b: a9 03
	jmp $ba28                    ; 15ba0d: 4c 28 ba

; --- Block at $15ba10-$15ba43 ---
loc_15ba10:
	lda $b8                      ; 15ba10: a5 b8
	jsl $15b866                  ; 15ba12: 22 66 b8 15
loc_15ba16:
	lda.b #$70                   ; 15ba16: a9 70
	sta $0c                      ; 15ba18: 85 0c
	lda.b #$70                   ; 15ba1a: a9 70
	sec                          ; 15ba1c: 38
	sbc $b8                      ; 15ba1d: e5 b8
	sta $0e                      ; 15ba1f: 85 0e
	stz $0d                      ; 15ba21: 64 0d
	stz $0f                      ; 15ba23: 64 0f
	lda $1705                    ; 15ba25: ad 05 17
	asl                          ; 15ba28: 0a
	asl                          ; 15ba29: 0a
	asl                          ; 15ba2a: 0a
	asl                          ; 15ba2b: 0a
	asl                          ; 15ba2c: 0a
	sta $07                      ; 15ba2d: 85 07
	lda $1704                    ; 15ba2f: ad 04 17
	cmp.b #$05                   ; 15ba32: c9 05
	.db $d0, $10                 ; 15ba34: d0 10
loc_15ba36:
	lda $06fd                    ; 15ba36: ad fd 06
	tax                          ; 15ba39: aa
	lda $7a                      ; 15ba3a: a5 7a
	and $be37,x                  ; 15ba3c: 3d 37 be
	.db $d0, $05                 ; 15ba3f: d0 05
loc_15ba41:
	lda.b #$10                   ; 15ba41: a9 10
	jmp $ba48                    ; 15ba43: 4c 48 ba

; --- Block at $15ba46-$15baa2 ---
loc_15ba46:
	lda.b #$00                   ; 15ba46: a9 00
	clc                          ; 15ba48: 18
	adc $07                      ; 15ba49: 65 07
	tax                          ; 15ba4b: aa
	ldy.w #$0000                 ; 15ba4c: a0 00 00
	lda $bfb4,x                  ; 15ba4f: bd b4 bf
	clc                          ; 15ba52: 18
	adc $0c                      ; 15ba53: 65 0c
	sta $0458,y                  ; 15ba55: 99 58 04
	lda $0d                      ; 15ba58: a5 0d
	adc.b #$00                   ; 15ba5a: 69 00
	and.b #$01                   ; 15ba5c: 29 01
	.db $f0, $06                 ; 15ba5e: f0 06
loc_15ba60:
	lda.b #$56                   ; 15ba60: a9 56
	jsl $15b3af                  ; 15ba62: 22 af b3 15
loc_15ba66:
	lda $bfb5,x                  ; 15ba66: bd b5 bf
	clc                          ; 15ba69: 18
	adc $0e                      ; 15ba6a: 65 0e
	sta $0459,y                  ; 15ba6c: 99 59 04
	lda $bfb6,x                  ; 15ba6f: bd b6 bf
	clc                          ; 15ba72: 18
	adc.b #$d8                   ; 15ba73: 69 d8
	sta $045a,y                  ; 15ba75: 99 5a 04
	lda $bfb7,x                  ; 15ba78: bd b7 bf
	clc                          ; 15ba7b: 18
	adc.b #$1c                   ; 15ba7c: 69 1c
	sta $045b,y                  ; 15ba7e: 99 5b 04
	inx                          ; 15ba81: e8
	inx                          ; 15ba82: e8
	inx                          ; 15ba83: e8
	inx                          ; 15ba84: e8
	iny                          ; 15ba85: c8
	iny                          ; 15ba86: c8
	iny                          ; 15ba87: c8
	iny                          ; 15ba88: c8
	cpy.w #$0010                 ; 15ba89: c0 10 00
	.db $d0, $c1                 ; 15ba8c: d0 c1
loc_15ba8e:
	lda $1287                    ; 15ba8e: ad 87 12
	and.b #$20                   ; 15ba91: 29 20
	.db $f0, $7d                 ; 15ba93: f0 7d
loc_15ba95:
	lda $1704                    ; 15ba95: ad 04 17
	cmp.b #$05                   ; 15ba98: c9 05
	.db $f0, $09                 ; 15ba9a: f0 09
loc_15ba9c:
	lda $ad                      ; 15ba9c: a5 ad
	cmp.b #$10                   ; 15ba9e: c9 10
	.db $f0, $09                 ; 15baa0: f0 09
loc_15baa2:
	jmp $bb12                    ; 15baa2: 4c 12 bb

; --- Block at $15baa5-$15baa8 ---
loc_15baa5:
	lda $1705                    ; 15baa5: ad 05 17
	jmp $baad                    ; 15baa8: 4c ad ba

; --- Block at $15baab-$15bad0 ---
loc_15baab:
	lda.b #$03                   ; 15baab: a9 03
	sta $07                      ; 15baad: 85 07
	tax                          ; 15baaf: aa
	lda $15bb14,x                ; 15bab0: bf 14 bb 15
	tay                          ; 15bab4: a8
	lda $07                      ; 15bab5: a5 07
	asl                          ; 15bab7: 0a
	asl                          ; 15bab8: 0a
	asl                          ; 15bab9: 0a
	sta $07                      ; 15baba: 85 07
	lda $1704                    ; 15babc: ad 04 17
	cmp.b #$05                   ; 15babf: c9 05
	.db $d0, $10                 ; 15bac1: d0 10
loc_15bac3:
	lda $06fd                    ; 15bac3: ad fd 06
	tax                          ; 15bac6: aa
	lda $7a                      ; 15bac7: a5 7a
	and $be37,x                  ; 15bac9: 3d 37 be
	.db $f0, $05                 ; 15bacc: f0 05
loc_15bace:
	lda.b #$04                   ; 15bace: a9 04
	jmp $bad5                    ; 15bad0: 4c d5 ba

; --- Block at $15bad3-$15bb12 ---
loc_15bad3:
	lda.b #$00                   ; 15bad3: a9 00
	clc                          ; 15bad5: 18
	adc $07                      ; 15bad6: 65 07
	tax                          ; 15bad8: aa
	lda $0c                      ; 15bad9: a5 0c
	sec                          ; 15badb: 38
	sbc.b #$08                   ; 15badc: e9 08
	sta $0c                      ; 15bade: 85 0c
	lda $0d                      ; 15bae0: a5 0d
	sbc.b #$00                   ; 15bae2: e9 00
	sta $0d                      ; 15bae4: 85 0d
	lda $0c                      ; 15bae6: a5 0c
	clc                          ; 15bae8: 18
	adc $bb18,x                  ; 15bae9: 7d 18 bb
	sta $0454,y                  ; 15baec: 99 54 04
	lda $0d                      ; 15baef: a5 0d
	adc.b #$00                   ; 15baf1: 69 00
	and.b #$01                   ; 15baf3: 29 01
	.db $f0, $06                 ; 15baf5: f0 06
loc_15baf7:
	lda.b #$55                   ; 15baf7: a9 55
	jsl $15b3af                  ; 15baf9: 22 af b3 15
loc_15bafd:
	lda $0e                      ; 15bafd: a5 0e
	clc                          ; 15baff: 18
	adc $bb19,x                  ; 15bb00: 7d 19 bb
	sta $0455,y                  ; 15bb03: 99 55 04
	lda $bb1a,x                  ; 15bb06: bd 1a bb
	sta $0456,y                  ; 15bb09: 99 56 04
	lda $bb1b,x                  ; 15bb0c: bd 1b bb
	sta $0457,y                  ; 15bb0f: 99 57 04

; --- Block at $15bb12-$15bb16 ---
loc_15bb12:
	plb                          ; 15bb12: ab
	rtl                          ; 15bb13: 6b
	trb $00                      ; 15bb14: 14 00
	brk #$00                     ; 15bb16: 00 00

; --- Block at $15bb39-$15bb98 ---
loc_15bb39:
	phb                          ; 15bb39: 8b
	lda.b #$15                   ; 15bb3a: a9 15
	pha                          ; 15bb3c: 48
	plb                          ; 15bb3d: ab
	lda $c8                      ; 15bb3e: a5 c8
	.db $d0, $26                 ; 15bb40: d0 26
loc_15bb42:
	lda $7a                      ; 15bb42: a5 7a
	and.b #$01                   ; 15bb44: 29 01
	.db $d0, $20                 ; 15bb46: d0 20
loc_15bb48:
	lda $b9                      ; 15bb48: a5 b9
	sec                          ; 15bb4a: 38
	sbc.b #$10                   ; 15bb4b: e9 10
	cmp.b #$10                   ; 15bb4d: c9 10
	.db $d0, $01                 ; 15bb4f: d0 01
loc_15bb51:
	dec                          ; 15bb51: 3a
loc_15bb52:
	and.b #$0c                   ; 15bb52: 29 0c
	asl                          ; 15bb54: 0a
	asl                          ; 15bb55: 0a
	asl                          ; 15bb56: 0a
	tax                          ; 15bb57: aa
	ldy.w #$0000                 ; 15bb58: a0 00 00
	lda $bb6a,x                  ; 15bb5b: bd 6a bb
	sta $04c0,y                  ; 15bb5e: 99 c0 04
	inx                          ; 15bb61: e8
	iny                          ; 15bb62: c8
	cpy.w #$0020                 ; 15bb63: c0 20 00
	.db $d0, $f3                 ; 15bb66: d0 f3
loc_15bb68:
	plb                          ; 15bb68: ab
	rtl                          ; 15bb69: 6b
	pla                          ; 15bb6a: 68
	adc ($42)                    ; 15bb6b: 72 42
	plp                          ; 15bb6d: 28
	.db $70, $72                 ; 15bb6e: 70 72
loc_15bb70:
	eor $28,s                    ; 15bb70: 43 28
	sei                          ; 15bb72: 78
	adc ($43)                    ; 15bb73: 72 43
	pla                          ; 15bb75: 68
	.db $80, $72                 ; 15bb76: 80 72
	wdm #$68                     ; 15bb78: 42 68
	pla                          ; 15bb7a: 68
	ply                          ; 15bb7b: 7a
	wdm #$a8                     ; 15bb7c: 42 a8
	.db $70, $7a                 ; 15bb7e: 70 7a
loc_15bb80:
	eor $a8,s                    ; 15bb80: 43 a8
	sei                          ; 15bb82: 78
	ply                          ; 15bb83: 7a
	eor $e8,s                    ; 15bb84: 43 e8
	.db $80, $7a                 ; 15bb86: 80 7a
	wdm #$e8                     ; 15bb88: 42 e8
	pla                          ; 15bb8a: 68
	adc ($40)                    ; 15bb8b: 72 40
	plp                          ; 15bb8d: 28
	.db $70, $72                 ; 15bb8e: 70 72
loc_15bb90:
	eor ($28,x)                  ; 15bb90: 41 28
	sei                          ; 15bb92: 78
	adc ($41)                    ; 15bb93: 72 41
	pla                          ; 15bb95: 68
	.db $80, $72                 ; 15bb96: 80 72
	rti                          ; 15bb98: 40

; --- Block at $15bbe2-$15bc1f ---
loc_15bbe2:
	sei                          ; 15bbe2: 78
	ply                          ; 15bbe3: 7a
	and $80e8,x                  ; 15bbe4: 3d e8 80
	ply                          ; 15bbe7: 7a
	bit $a5e8,x                  ; 15bbe8: 3c e8 a5
	asl $e938                    ; 15bbeb: 0e 38 e9
	php                          ; 15bbee: 08
	sta $0e                      ; 15bbef: 85 0e
	ldx.w #$0000                 ; 15bbf1: a2 00 00
	lda $bc1f,x                  ; 15bbf4: bd 1f bc
	clc                          ; 15bbf7: 18
	adc $0c                      ; 15bbf8: 65 0c
loc_15bbfa:
	.db $b0, $18                 ; 15bbfa: b0 18
loc_15bbfc:
	sta $04e0,x                  ; 15bbfc: 9d e0 04
	lda $bc20,x                  ; 15bbff: bd 20 bc
loc_15bc02:
	clc                          ; 15bc02: 18
	adc $0e                      ; 15bc03: 65 0e
	sta $04e1,x                  ; 15bc05: 9d e1 04
	lda $bc21,x                  ; 15bc08: bd 21 bc
	sta $04e2,x                  ; 15bc0b: 9d e2 04
	lda $bc22,x                  ; 15bc0e: bd 22 bc
	sta $04e3,x                  ; 15bc11: 9d e3 04
loc_15bc14:
	inx                          ; 15bc14: e8
	inx                          ; 15bc15: e8
	inx                          ; 15bc16: e8
	inx                          ; 15bc17: e8
	cpx.w #$0010                 ; 15bc18: e0 10 00
	.db $d0, $d7                 ; 15bc1b: d0 d7
loc_15bc1d:
	plb                          ; 15bc1d: ab
	rtl                          ; 15bc1e: 6b
	brk #$00                     ; 15bc1f: 00 00

; --- Block at $15bbea-$15bbef ---
loc_15bbea:
	lda $0e                      ; 15bbea: a5 0e
	sec                          ; 15bbec: 38
	sbc.b #$08                   ; 15bbed: e9 08

; --- Block at $15bc0a-$15bc15 ---
loc_15bc0a:
	ldy $e29d,x                  ; 15bc0a: bc 9d e2
	tsb $bd                      ; 15bc0d: 04 bd
	jsl $e39dbc                  ; 15bc0f: 22 bc 9d e3
loc_15bc13:
	tsb $e8                      ; 15bc13: 04 e8

; --- Block at $15bc2f-$15bc3b ---
loc_15bc2f:
	phb                          ; 15bc2f: 8b
	lda.b #$15                   ; 15bc30: a9 15
	pha                          ; 15bc32: 48
	plb                          ; 15bc33: ab
	lda $1704                    ; 15bc34: ad 04 17
	cmp.b #$06                   ; 15bc37: c9 06
	.db $d0, $03                 ; 15bc39: d0 03
loc_15bc3b:
	jmp $bcd3                    ; 15bc3b: 4c d3 bc

; --- Block at $15bc3e-$15bc80 ---
loc_15bc3e:
	lda $1724                    ; 15bc3e: ad 24 17
	.db $f0, $7f                 ; 15bc41: f0 7f
loc_15bc43:
	lda $1701                    ; 15bc43: ad 01 17
	cmp $1727                    ; 15bc46: cd 27 17
	.db $d0, $77                 ; 15bc49: d0 77
loc_15bc4b:
	lda $ad                      ; 15bc4b: a5 ad
	and.b #$0f                   ; 15bc4d: 29 0f
	.db $d0, $71                 ; 15bc4f: d0 71
loc_15bc51:
	lda $1725                    ; 15bc51: ad 25 17
	dec                          ; 15bc54: 3a
	sta $0c                      ; 15bc55: 85 0c
	lda $1726                    ; 15bc57: ad 26 17
	dec                          ; 15bc5a: 3a
	sta $0e                      ; 15bc5b: 85 0e
	lda $1700                    ; 15bc5d: ad 00 17
	cmp.b #$02                   ; 15bc60: c9 02
	.db $d0, $56                 ; 15bc62: d0 56
loc_15bc64:
	lda $1725                    ; 15bc64: ad 25 17
	sta $0c                      ; 15bc67: 85 0c
	lda $1726                    ; 15bc69: ad 26 17
	sta $0e                      ; 15bc6c: 85 0e
	lda $1706                    ; 15bc6e: ad 06 17
	cmp.b #$08                   ; 15bc71: c9 08
	.db $b0, $0e                 ; 15bc73: b0 0e
loc_15bc75:
	lda $0c                      ; 15bc75: a5 0c
	cmp.b #$30                   ; 15bc77: c9 30
	.db $90, $17                 ; 15bc79: 90 17
loc_15bc7b:
	sec                          ; 15bc7b: 38
	sbc.b #$40                   ; 15bc7c: e9 40
	sta $0c                      ; 15bc7e: 85 0c
	jmp $bc92                    ; 15bc80: 4c 92 bc

; --- Block at $15bc83-$15bca4 ---
loc_15bc83:
	cmp.b #$38                   ; 15bc83: c9 38
	.db $90, $0b                 ; 15bc85: 90 0b
loc_15bc87:
	lda $0c                      ; 15bc87: a5 0c
	cmp.b #$10                   ; 15bc89: c9 10
	.db $b0, $05                 ; 15bc8b: b0 05
loc_15bc8d:
	clc                          ; 15bc8d: 18
	adc.b #$40                   ; 15bc8e: 69 40
	sta $0c                      ; 15bc90: 85 0c
loc_15bc92:
	lda $1707                    ; 15bc92: ad 07 17
	cmp.b #$08                   ; 15bc95: c9 08
	.db $b0, $0e                 ; 15bc97: b0 0e
loc_15bc99:
	lda $0e                      ; 15bc99: a5 0e
	cmp.b #$30                   ; 15bc9b: c9 30
	.db $90, $17                 ; 15bc9d: 90 17
loc_15bc9f:
	sec                          ; 15bc9f: 38
	sbc.b #$40                   ; 15bca0: e9 40
	sta $0e                      ; 15bca2: 85 0e
	jmp $bcb6                    ; 15bca4: 4c b6 bc

; --- Block at $15bca7-$15bcba ---
loc_15bca7:
	cmp.b #$38                   ; 15bca7: c9 38
	.db $90, $0b                 ; 15bca9: 90 0b
loc_15bcab:
	lda $0e                      ; 15bcab: a5 0e
	cmp.b #$10                   ; 15bcad: c9 10
	.db $b0, $05                 ; 15bcaf: b0 05
loc_15bcb1:
	clc                          ; 15bcb1: 18
	adc.b #$40                   ; 15bcb2: 69 40
	sta $0e                      ; 15bcb4: 85 0e
loc_15bcb6:
	dec $0c                      ; 15bcb6: c6 0c
	dec $0e                      ; 15bcb8: c6 0e

; --- Block at $15bcba-$15bcc2 ---
loc_15bcba:
	jsl $15be47                  ; 15bcba: 22 47 be 15
loc_15bcbe:
	lda $d7                      ; 15bcbe: a5 d7
	.db $d0, $03                 ; 15bcc0: d0 03

; --- Block at $15bcc2-$15bcc2 ---
loc_15bcc2:
	jmp $bd95                    ; 15bcc2: 4c 95 bd

; --- Block at $15bcc5-$15bccb ---
loc_15bcc5:
	lda $ad                      ; 15bcc5: a5 ad
	cmp.b #$10                   ; 15bcc7: c9 10
	.db $f0, $03                 ; 15bcc9: f0 03
loc_15bccb:
	jmp $bbea                    ; 15bccb: 4c ea bb

; --- Block at $15bcce-$15bcd0 ---
loc_15bcce:
	lda.b #$03                   ; 15bcce: a9 03
	jmp $bcff                    ; 15bcd0: 4c ff bc

; --- Block at $15be47-$15be65 ---
loc_15be47:
	phb                          ; 15be47: 8b
	lda.b #$15                   ; 15be48: a9 15
	pha                          ; 15be4a: 48
	plb                          ; 15be4b: ab
	stz $d7                      ; 15be4c: 64 d7
	lda $ad                      ; 15be4e: a5 ad
	lsr                          ; 15be50: 4a
	lsr                          ; 15be51: 4a
	lsr                          ; 15be52: 4a
	lsr                          ; 15be53: 4a
	dec                          ; 15be54: 3a
	tay                          ; 15be55: a8
	lda $0c                      ; 15be56: a5 0c
	clc                          ; 15be58: 18
	adc $bfa8,y                  ; 15be59: 79 a8 bf
	sec                          ; 15be5c: 38
	sbc $1706                    ; 15be5d: ed 06 17
	cmp $bfab,y                  ; 15be60: d9 ab bf
	.db $90, $03                 ; 15be63: 90 03
loc_15be65:
	jmp $bfa6                    ; 15be65: 4c a6 bf

; --- Block at $15be68-$15be9b ---
loc_15be68:
	sta $0c                      ; 15be68: 85 0c
	cpy.w #$0000                 ; 15be6a: c0 00 00
	.db $d0, $1d                 ; 15be6d: d0 1d
loc_15be6f:
	dec                          ; 15be6f: 3a
	dec                          ; 15be70: 3a
	asl                          ; 15be71: 0a
	asl                          ; 15be72: 0a
	asl                          ; 15be73: 0a
	asl                          ; 15be74: 0a
	rol $0d                      ; 15be75: 26 0d
	sta $0c                      ; 15be77: 85 0c
	lda $5a                      ; 15be79: a5 5a
	and.b #$0f                   ; 15be7b: 29 0f
	sta $06                      ; 15be7d: 85 06
	lda $0c                      ; 15be7f: a5 0c
	sec                          ; 15be81: 38
	sbc $06                      ; 15be82: e5 06
	sta $0c                      ; 15be84: 85 0c
	lda $0d                      ; 15be86: a5 0d
	sbc.b #$00                   ; 15be88: e9 00
	sta $0d                      ; 15be8a: 85 0d
loc_15be8c:
	lda $0e                      ; 15be8c: a5 0e
	clc                          ; 15be8e: 18
	adc $bfae,y                  ; 15be8f: 79 ae bf
	sec                          ; 15be92: 38
	sbc $1707                    ; 15be93: ed 07 17
	cmp $bfb1,y                  ; 15be96: d9 b1 bf
	.db $90, $03                 ; 15be99: 90 03
loc_15be9b:
	jmp $bfa6                    ; 15be9b: 4c a6 bf

; --- Block at $15be9e-$15bebe ---
loc_15be9e:
	sta $0e                      ; 15be9e: 85 0e
	cpy.w #$0000                 ; 15bea0: c0 00 00
	.db $d0, $14                 ; 15bea3: d0 14
loc_15bea5:
	dec                          ; 15bea5: 3a
	asl                          ; 15bea6: 0a
	asl                          ; 15bea7: 0a
	asl                          ; 15bea8: 0a
	asl                          ; 15bea9: 0a
	sta $0e                      ; 15beaa: 85 0e
	lda $5c                      ; 15beac: a5 5c
	and.b #$0f                   ; 15beae: 29 0f
	sta $06                      ; 15beb0: 85 06
	lda $0e                      ; 15beb2: a5 0e
	sec                          ; 15beb4: 38
	sbc $06                      ; 15beb5: e5 06
	sta $0e                      ; 15beb7: 85 0e
loc_15beb9:
	cpy.w #$0000                 ; 15beb9: c0 00 00
	.db $d0, $03                 ; 15bebc: d0 03
loc_15bebe:
	jmp $bfa4                    ; 15bebe: 4c a4 bf

; --- Block at $15bec1-$15bed5 ---
loc_15bec1:
	stz $0a                      ; 15bec1: 64 0a
	cpy.w #$0002                 ; 15bec3: c0 02 00
	.db $f0, $60                 ; 15bec6: f0 60
loc_15bec8:
	lda $5c                      ; 15bec8: a5 5c
	and.b #$0f                   ; 15beca: 29 0f
	.db $d0, $0a                 ; 15becc: d0 0a
loc_15bece:
	lda $0e                      ; 15bece: a5 0e
	tax                          ; 15bed0: aa
	lda $14f380,x                ; 15bed1: bf 80 f3 14
	jmp $bef0                    ; 15bed5: 4c f0 be

; --- Block at $15bed8-$15bedc ---
loc_15bed8:
	lda $0e                      ; 15bed8: a5 0e
	.db $d0, $03                 ; 15beda: d0 03
loc_15bedc:
	jmp $bfa6                    ; 15bedc: 4c a6 bf

; --- Block at $15bedf-$15bf25 ---
loc_15bedf:
	dec                          ; 15bedf: 3a
	tax                          ; 15bee0: aa
	lda $14f381,x                ; 15bee1: bf 81 f3 14
	sec                          ; 15bee5: 38
	sbc $14f380,x                ; 15bee6: ff 80 f3 14
	lsr                          ; 15beea: 4a
	clc                          ; 15beeb: 18
	adc $14f380,x                ; 15beec: 7f 80 f3 14
	sta $0e                      ; 15bef0: 85 0e
	sta $18                      ; 15bef2: 85 18
	stz $19                      ; 15bef4: 64 19
	asl $18                      ; 15bef6: 06 18
	rol $19                      ; 15bef8: 26 19
	ldx $18                      ; 15befa: a6 18
	lda $14f000,x                ; 15befc: bf 00 f0 14
	sta $18                      ; 15bf00: 85 18
	lda $14f001,x                ; 15bf02: bf 01 f0 14
	sta $19                      ; 15bf06: 85 19
	lda $5a                      ; 15bf08: a5 5a
	and.b #$08                   ; 15bf0a: 29 08
	lsr                          ; 15bf0c: 4a
	lsr                          ; 15bf0d: 4a
	lsr                          ; 15bf0e: 4a
	sta $1a                      ; 15bf0f: 85 1a
	lda $0c                      ; 15bf11: a5 0c
	asl                          ; 15bf13: 0a
	sec                          ; 15bf14: 38
	sbc $1a                      ; 15bf15: e5 1a
	sec                          ; 15bf17: 38
	sbc.b #$26                   ; 15bf18: e9 26
	.db $10, $05                 ; 15bf1a: 10 05
loc_15bf1c:
	inc $0a                      ; 15bf1c: e6 0a
	eor.b #$ff                   ; 15bf1e: 49 ff
	inc                          ; 15bf20: 1a
loc_15bf21:
	sta $1a                      ; 15bf21: 85 1a
	stz $1b                      ; 15bf23: 64 1b
	jmp $bf85                    ; 15bf25: 4c 85 bf

; --- Block at $15bf28-$15bf35 ---
loc_15bf28:
	lda $5c                      ; 15bf28: a5 5c
	and.b #$0f                   ; 15bf2a: 29 0f
	.db $d0, $0a                 ; 15bf2c: d0 0a
loc_15bf2e:
	lda $0e                      ; 15bf2e: a5 0e
	tax                          ; 15bf30: aa
	lda $14f3a1,x                ; 15bf31: bf a1 f3 14
	jmp $bf50                    ; 15bf35: 4c 50 bf

; --- Block at $15bf38-$15bf3c ---
loc_15bf38:
	lda $0e                      ; 15bf38: a5 0e
	.db $d0, $03                 ; 15bf3a: d0 03
loc_15bf3c:
	jmp $bfa6                    ; 15bf3c: 4c a6 bf

; --- Block at $15bf3f-$15bf98 ---
loc_15bf3f:
	dec                          ; 15bf3f: 3a
	tax                          ; 15bf40: aa
	lda $14f3a2,x                ; 15bf41: bf a2 f3 14
	sec                          ; 15bf45: 38
	sbc $14f3a1,x                ; 15bf46: ff a1 f3 14
	lsr                          ; 15bf4a: 4a
	clc                          ; 15bf4b: 18
	adc $14f3a1,x                ; 15bf4c: 7f a1 f3 14
	sta $0e                      ; 15bf50: 85 0e
	sta $18                      ; 15bf52: 85 18
	stz $19                      ; 15bf54: 64 19
	asl $18                      ; 15bf56: 06 18
	rol $19                      ; 15bf58: 26 19
	ldx $18                      ; 15bf5a: a6 18
	lda $14f1c0,x                ; 15bf5c: bf c0 f1 14
	sta $18                      ; 15bf60: 85 18
	lda $14f1c1,x                ; 15bf62: bf c1 f1 14
	sta $19                      ; 15bf66: 85 19
	lda $5a                      ; 15bf68: a5 5a
	and.b #$08                   ; 15bf6a: 29 08
	lsr                          ; 15bf6c: 4a
	lsr                          ; 15bf6d: 4a
	lsr                          ; 15bf6e: 4a
	sta $1a                      ; 15bf6f: 85 1a
	lda $0c                      ; 15bf71: a5 0c
	asl                          ; 15bf73: 0a
	sec                          ; 15bf74: 38
	sbc $1a                      ; 15bf75: e5 1a
	sec                          ; 15bf77: 38
	sbc.b #$40                   ; 15bf78: e9 40
	.db $10, $05                 ; 15bf7a: 10 05
loc_15bf7c:
	inc $0a                      ; 15bf7c: e6 0a
	eor.b #$ff                   ; 15bf7e: 49 ff
	inc                          ; 15bf80: 1a
loc_15bf81:
	sta $1a                      ; 15bf81: 85 1a
	stz $1b                      ; 15bf83: 64 1b
	jsl $15c395                  ; 15bf85: 22 95 c3 15
loc_15bf89:
	lsr $32                      ; 15bf89: 46 32
	ror $31                      ; 15bf8b: 66 31
	lda $0a                      ; 15bf8d: a5 0a
	.db $d0, $0a                 ; 15bf8f: d0 0a
loc_15bf91:
	lda $31                      ; 15bf91: a5 31
	clc                          ; 15bf93: 18
	adc.b #$78                   ; 15bf94: 69 78
	.db $b0, $0e                 ; 15bf96: b0 0e
loc_15bf98:
	jmp $bfa2                    ; 15bf98: 4c a2 bf

; --- Block at $15bf9b-$15bfbc ---
loc_15bf9b:
	lda.b #$78                   ; 15bf9b: a9 78
	sec                          ; 15bf9d: 38
	sbc $31                      ; 15bf9e: e5 31
	.db $90, $04                 ; 15bfa0: 90 04
loc_15bfa2:
	sta $0c                      ; 15bfa2: 85 0c
	inc $d7                      ; 15bfa4: e6 d7
loc_15bfa6:
	plb                          ; 15bfa6: ab
	rtl                          ; 15bfa7: 6b
	ora.b #$13                   ; 15bfa8: 09 13
	jsr $2c13                    ; 15bfaa: 20 13 2c
loc_15bfad:
	wdm #$08                     ; 15bfad: 42 08
	ora [$1f],y                  ; 15bfaf: 17 1f
	.db $10, $21                 ; 15bfb1: 10 21
loc_15bfb3:
	bit.w $0000                  ; 15bfb3: 2c 00 00
	php                          ; 15bfb6: 08
	jsr.w $0008                  ; 15bfb7: 20 08 00
loc_15bfba:
	ora.b #$20                   ; 15bfba: 09 20
	brk #$08                     ; 15bfbc: 00 08

; --- Block at $15bfd4-$15bfd4 ---
loc_15bfd4:
	brk #$00                     ; 15bfd4: 00 00

; --- Block at $15c144-$15c163 ---
loc_15c144:
	lda $128a                    ; 15c144: ad 8a 12
	and.b #$40                   ; 15c147: 29 40
	.db $d0, $17                 ; 15c149: d0 17
loc_15c14b:
	ldx.w #$5a00                 ; 15c14b: a2 00 5a
	stx $4c                      ; 15c14e: 86 4c
	ldx.w #$0600                 ; 15c150: a2 00 06
	stx $4e                      ; 15c153: 86 4e
	ldx.w #$9e00                 ; 15c155: a2 00 9e
	stx $4a                      ; 15c158: 86 4a
	lda.b #$1c                   ; 15c15a: a9 1c
	sta $49                      ; 15c15c: 85 49
	jsl $15b000                  ; 15c15e: 22 00 b0 15
loc_15c162:
	rtl                          ; 15c162: 6b

; --- Block at $15c163-$15c1a5 ---
loc_15c163:
	lda $1700                    ; 15c163: ad 00 17
	cmp.b #$03                   ; 15c166: c9 03
	.db $d0, $01                 ; 15c168: d0 01
loc_15c16a:
	rtl                          ; 15c16a: 6b
loc_15c16b:
	stz $211c                    ; 15c16b: 9c 1c 21 ; M7B
	stz $211c                    ; 15c16e: 9c 1c 21 ; M7B
	stz $211d                    ; 15c171: 9c 1d 21 ; M7C
	stz $211d                    ; 15c174: 9c 1d 21 ; M7C
	lda.b #$f0                   ; 15c177: a9 f0
	sta $7f5a00                  ; 15c179: 8f 00 5a 7f
	sta $7f5a03                  ; 15c17d: 8f 03 5a 7f
	lda $1704                    ; 15c181: ad 04 17
	cmp.b #$06                   ; 15c184: c9 06
	.db $f0, $20                 ; 15c186: f0 20
loc_15c188:
	lda $ad                      ; 15c188: a5 ad
	sec                          ; 15c18a: 38
	sbc.b #$10                   ; 15c18b: e9 10
	asl                          ; 15c18d: 0a
	clc                          ; 15c18e: 18
	adc.b #$00                   ; 15c18f: 69 00
	sta $7f5a02                  ; 15c191: 8f 02 5a 7f
	sta $7f5a05                  ; 15c195: 8f 05 5a 7f
	lda.b #$00                   ; 15c199: a9 00
	sta $7f5a01                  ; 15c19b: 8f 01 5a 7f
	lda.b #$e0                   ; 15c19f: a9 e0
	sta $7f5a04                  ; 15c1a1: 8f 04 5a 7f
	jmp $c1c6                    ; 15c1a5: 4c c6 c1

; --- Block at $15c1a8-$15c23d ---
loc_15c1a8:
	lda $ad                      ; 15c1a8: a5 ad
	sec                          ; 15c1aa: 38
	sbc.b #$10                   ; 15c1ab: e9 10
	and.b #$fe                   ; 15c1ad: 29 fe
	clc                          ; 15c1af: 18
	adc.b #$22                   ; 15c1b0: 69 22
	sta $7f5a02                  ; 15c1b2: 8f 02 5a 7f
	sta $7f5a05                  ; 15c1b6: 8f 05 5a 7f
	lda.b #$00                   ; 15c1ba: a9 00
	sta $7f5a01                  ; 15c1bc: 8f 01 5a 7f
	lda.b #$e0                   ; 15c1c0: a9 e0
	sta $7f5a04                  ; 15c1c2: 8f 04 5a 7f
	lda.b #$80                   ; 15c1c6: a9 80
	sta $7f5a06                  ; 15c1c8: 8f 06 5a 7f
	stz $420c                    ; 15c1cc: 9c 0c 42 ; HDMAEN
	lda.b #$42                   ; 15c1cf: a9 42
	sta $4340                    ; 15c1d1: 8d 40 43 ; DMAP4
	sta $4350                    ; 15c1d4: 8d 50 43 ; DMAP5
	lda.b #$1b                   ; 15c1d7: a9 1b
	sta $4341                    ; 15c1d9: 8d 41 43 ; BBAD4
	lda.b #$1e                   ; 15c1dc: a9 1e
	sta $4351                    ; 15c1de: 8d 51 43 ; BBAD5
	ldx.w #$5a00                 ; 15c1e1: a2 00 5a
	stx $4342                    ; 15c1e4: 8e 42 43 ; A1TL4
	stx $4352                    ; 15c1e7: 8e 52 43 ; A1TL5
	lda.b #$7f                   ; 15c1ea: a9 7f
	sta $4344                    ; 15c1ec: 8d 44 43 ; A1B4
	sta $4354                    ; 15c1ef: 8d 54 43 ; A1B5
	sta $4347                    ; 15c1f2: 8d 47 43 ; DASB4
	sta $4357                    ; 15c1f5: 8d 57 43 ; DASB5
	rtl                          ; 15c1f8: 6b
	lda $0fe0                    ; 15c1f9: ad e0 0f
	sta $19                      ; 15c1fc: 85 19
	stz $18                      ; 15c1fe: 64 18
	lsr $19                      ; 15c200: 46 19
	ror $18                      ; 15c202: 66 18
	ldx $18                      ; 15c204: a6 18
	ldy.w #$0020                 ; 15c206: a0 20 00
	lda $14de10,x                ; 15c209: bf 10 de 14
	sta $0cdb,y                  ; 15c20d: 99 db 0c
	lda $14de90,x                ; 15c210: bf 90 de 14
	sta $0ceb,y                  ; 15c214: 99 eb 0c
	inx                          ; 15c217: e8
	iny                          ; 15c218: c8
	tya                          ; 15c219: 98
	and.b #$0f                   ; 15c21a: 29 0f
	.db $d0, $eb                 ; 15c21c: d0 eb
loc_15c21e:
	tya                          ; 15c21e: 98
	clc                          ; 15c21f: 18
	adc.b #$10                   ; 15c220: 69 10
	tay                          ; 15c222: a8
	.db $d0, $e4                 ; 15c223: d0 e4
loc_15c225:
	rtl                          ; 15c225: 6b
	ldx.w #$0000                 ; 15c226: a2 00 00
	lda $0d87d0,x                ; 15c229: bf d0 87 0d
	sta $0cdb,x                  ; 15c22d: 9d db 0c
	inx                          ; 15c230: e8
	cpx.w #$0020                 ; 15c231: e0 20 00
	.db $d0, $f3                 ; 15c234: d0 f3
loc_15c236:
	ldx $16aa                    ; 15c236: ae aa 16
	stx $0cdd                    ; 15c239: 8e dd 0c
	rtl                          ; 15c23c: 6b

; --- Block at $15c23d-$15c23e ---
loc_15c23d:
	rtl                          ; 15c23d: 6b

; --- Block at $15c23e-$15c25c ---
loc_15c23e:
	ldx.w #$0000                 ; 15c23e: a2 00 00
	ldy.w #$0000                 ; 15c241: a0 00 00
	stz $07                      ; 15c244: 64 07
	lda $0fc8c0,x                ; 15c246: bf c0 c8 0f
	cmp.b #$ff                   ; 15c24a: c9 ff
	.db $f0, $11                 ; 15c24c: f0 11
loc_15c24e:
	sta $1560,y                  ; 15c24e: 99 60 15
	iny                          ; 15c251: c8
	inc $07                      ; 15c252: e6 07
	lda $07                      ; 15c254: a5 07
	cmp.b #$18                   ; 15c256: c9 18
	.db $d0, $15                 ; 15c258: d0 15
loc_15c25a:
	stz $07                      ; 15c25a: 64 07
	jmp $c26f                    ; 15c25c: 4c 6f c2

; --- Block at $15c25f-$15c28f ---
loc_15c25f:
	lda.b #$00                   ; 15c25f: a9 00
	sta $1560,y                  ; 15c261: 99 60 15
	iny                          ; 15c264: c8
	inc $07                      ; 15c265: e6 07
	lda $07                      ; 15c267: a5 07
	cmp.b #$18                   ; 15c269: c9 18
	.db $d0, $f2                 ; 15c26b: d0 f2
loc_15c26d:
	stz $07                      ; 15c26d: 64 07
loc_15c26f:
	inx                          ; 15c26f: e8
	cpy.w #$0138                 ; 15c270: c0 38 01
	.db $d0, $d1                 ; 15c273: d0 d1
loc_15c275:
	rtl                          ; 15c275: 6b
	lda.b #$80                   ; 15c276: a9 80
	sta $2115                    ; 15c278: 8d 15 21 ; VMAIN
	ldx.w #$2882                 ; 15c27b: a2 82 28
	stx $2116                    ; 15c27e: 8e 16 21 ; VMADDL
	lda $1706                    ; 15c281: ad 06 17
	lsr                          ; 15c284: 4a
	lsr                          ; 15c285: 4a
	lsr                          ; 15c286: 4a
	lsr                          ; 15c287: 4a
	cmp.b #$0a                   ; 15c288: c9 0a
	.db $90, $06                 ; 15c28a: 90 06
loc_15c28c:
	clc                          ; 15c28c: 18
	adc.b #$38                   ; 15c28d: 69 38
	jmp $c294                    ; 15c28f: 4c 94 c2

; --- Block at $15c292-$15c2a8 ---
loc_15c292:
	ora.b #$80                   ; 15c292: 09 80
	sta $2118                    ; 15c294: 8d 18 21 ; VMDATAL
	lda.b #$20                   ; 15c297: a9 20
	sta $2119                    ; 15c299: 8d 19 21 ; VMDATAH
	lda $1706                    ; 15c29c: ad 06 17
	and.b #$0f                   ; 15c29f: 29 0f
	cmp.b #$0a                   ; 15c2a1: c9 0a
	.db $90, $06                 ; 15c2a3: 90 06
loc_15c2a5:
	clc                          ; 15c2a5: 18
	adc.b #$38                   ; 15c2a6: 69 38
	jmp $c2ad                    ; 15c2a8: 4c ad c2

; --- Block at $15c2ab-$15c2c9 ---
loc_15c2ab:
	ora.b #$80                   ; 15c2ab: 09 80
	sta $2118                    ; 15c2ad: 8d 18 21 ; VMDATAL
	lda.b #$20                   ; 15c2b0: a9 20
	sta $2119                    ; 15c2b2: 8d 19 21 ; VMDATAH
	stz $2118                    ; 15c2b5: 9c 18 21 ; VMDATAL
	stz $2119                    ; 15c2b8: 9c 19 21 ; VMDATAH
	lda $1707                    ; 15c2bb: ad 07 17
	lsr                          ; 15c2be: 4a
	lsr                          ; 15c2bf: 4a
	lsr                          ; 15c2c0: 4a
	lsr                          ; 15c2c1: 4a
	cmp.b #$0a                   ; 15c2c2: c9 0a
	.db $90, $06                 ; 15c2c4: 90 06
loc_15c2c6:
	clc                          ; 15c2c6: 18
	adc.b #$38                   ; 15c2c7: 69 38
	jmp $c2ce                    ; 15c2c9: 4c ce c2

; --- Block at $15c2cc-$15c2e2 ---
loc_15c2cc:
	ora.b #$80                   ; 15c2cc: 09 80
	sta $2118                    ; 15c2ce: 8d 18 21 ; VMDATAL
	lda.b #$20                   ; 15c2d1: a9 20
	sta $2119                    ; 15c2d3: 8d 19 21 ; VMDATAH
	lda $1707                    ; 15c2d6: ad 07 17
	and.b #$0f                   ; 15c2d9: 29 0f
	cmp.b #$0a                   ; 15c2db: c9 0a
	.db $90, $06                 ; 15c2dd: 90 06
loc_15c2df:
	clc                          ; 15c2df: 18
	adc.b #$38                   ; 15c2e0: 69 38
	jmp $c2e7                    ; 15c2e2: 4c e7 c2

; --- Block at $15c2e5-$15c303 ---
loc_15c2e5:
	ora.b #$80                   ; 15c2e5: 09 80
	sta $2118                    ; 15c2e7: 8d 18 21 ; VMDATAL
	lda.b #$20                   ; 15c2ea: a9 20
	sta $2119                    ; 15c2ec: 8d 19 21 ; VMDATAH
	ldx.w #$28c2                 ; 15c2ef: a2 c2 28
	stx $2116                    ; 15c2f2: 8e 16 21 ; VMADDL
	lda $1702                    ; 15c2f5: ad 02 17
	lsr                          ; 15c2f8: 4a
	lsr                          ; 15c2f9: 4a
	lsr                          ; 15c2fa: 4a
	lsr                          ; 15c2fb: 4a
	cmp.b #$0a                   ; 15c2fc: c9 0a
	.db $90, $06                 ; 15c2fe: 90 06
loc_15c300:
	clc                          ; 15c300: 18
	adc.b #$38                   ; 15c301: 69 38
	jmp $c308                    ; 15c303: 4c 08 c3

; --- Block at $15c306-$15c31c ---
loc_15c306:
	ora.b #$80                   ; 15c306: 09 80
	sta $2118                    ; 15c308: 8d 18 21 ; VMDATAL
	lda.b #$20                   ; 15c30b: a9 20
	sta $2119                    ; 15c30d: 8d 19 21 ; VMDATAH
	lda $1702                    ; 15c310: ad 02 17
	and.b #$0f                   ; 15c313: 29 0f
	cmp.b #$0a                   ; 15c315: c9 0a
	.db $90, $06                 ; 15c317: 90 06
loc_15c319:
	clc                          ; 15c319: 18
	adc.b #$38                   ; 15c31a: 69 38
	jmp $c321                    ; 15c31c: 4c 21 c3

; --- Block at $15c31f-$15c34a ---
loc_15c31f:
	ora.b #$80                   ; 15c31f: 09 80
	sta $2118                    ; 15c321: 8d 18 21 ; VMDATAL
	lda.b #$20                   ; 15c324: a9 20
	sta $2119                    ; 15c326: 8d 19 21 ; VMDATAH
	rtl                          ; 15c329: 6b
	phx                          ; 15c32a: da
	phy                          ; 15c32b: 5a
	ldx.w #$0000                 ; 15c32c: a2 00 00
	ldy.w #$0080                 ; 15c32f: a0 80 00
	stz $33                      ; 15c332: 64 33
	rep #$20                     ; 15c334: c2 20
	lda $30                      ; 15c336: a5 30
	sec                          ; 15c338: 38
	sbc $15c375,x                ; 15c339: ff 75 c3 15
	sta $30                      ; 15c33d: 85 30
	lda $32                      ; 15c33f: a5 32
	sbc $15c385,x                ; 15c341: ff 85 c3 15
	sta $32                      ; 15c345: 85 32
	.db $90, $04                 ; 15c347: 90 04
loc_15c349:
	iny                          ; 15c349: c8
	jmp $c334                    ; 15c34a: 4c 34 c3

; --- Block at $15c34d-$15c377 ---
loc_15c34d:
	lda $30                      ; 15c34d: a5 30
	clc                          ; 15c34f: 18
	adc $15c375,x                ; 15c350: 7f 75 c3 15
	sta $30                      ; 15c354: 85 30
	lda $32                      ; 15c356: a5 32
	adc $15c385,x                ; 15c358: 7f 85 c3 15
	sta $32                      ; 15c35c: 85 32
	lda.w #$0000                 ; 15c35e: a9 00 00
	sep #$20                     ; 15c361: e2 20
	phx                          ; 15c363: da
	txa                          ; 15c364: 8a
	lsr                          ; 15c365: 4a
	tax                          ; 15c366: aa
	tya                          ; 15c367: 98
	sta $34,x                    ; 15c368: 95 34
	plx                          ; 15c36a: fa
	inx                          ; 15c36b: e8
	inx                          ; 15c36c: e8
	cpx.w #$0010                 ; 15c36d: e0 10 00
	.db $d0, $bd                 ; 15c370: d0 bd
loc_15c372:
	ply                          ; 15c372: 7a
	plx                          ; 15c373: fa
	rtl                          ; 15c374: 6b
	.db $80, $96                 ; 15c375: 80 96
	rti                          ; 15c377: 40

; --- Block at $15c395-$15c3c3 ---
loc_15c395:
	stz $1c                      ; 15c395: 64 1c
	stz $30                      ; 15c397: 64 30
	stz $31                      ; 15c399: 64 31
	stz $32                      ; 15c39b: 64 32
	ldy.w #$0010                 ; 15c39d: a0 10 00
	lsr $19                      ; 15c3a0: 46 19
	ror $18                      ; 15c3a2: 66 18
	.db $90, $13                 ; 15c3a4: 90 13
loc_15c3a6:
	lda $30                      ; 15c3a6: a5 30
	clc                          ; 15c3a8: 18
	adc $1a                      ; 15c3a9: 65 1a
	sta $30                      ; 15c3ab: 85 30
	lda $31                      ; 15c3ad: a5 31
	adc $1b                      ; 15c3af: 65 1b
	sta $31                      ; 15c3b1: 85 31
	lda $32                      ; 15c3b3: a5 32
	adc $1c                      ; 15c3b5: 65 1c
	sta $32                      ; 15c3b7: 85 32
loc_15c3b9:
	asl $1a                      ; 15c3b9: 06 1a
	rol $1b                      ; 15c3bb: 26 1b
	rol $1c                      ; 15c3bd: 26 1c
	dey                          ; 15c3bf: 88
	.db $d0, $de                 ; 15c3c0: d0 de
loc_15c3c2:
	rtl                          ; 15c3c2: 6b

; --- Block at $15c3c3-$15c3e7 ---
loc_15c3c3:
	lda $1704                    ; 15c3c3: ad 04 17
	cmp.b #$06                   ; 15c3c6: c9 06
	.db $d0, $15                 ; 15c3c8: d0 15
loc_15c3ca:
	lda $7a                      ; 15c3ca: a5 7a
	lsr                          ; 15c3cc: 4a
	lsr                          ; 15c3cd: 4a
	and.b #$0e                   ; 15c3ce: 29 0e
	tax                          ; 15c3d0: aa
	lda $15c3e0,x                ; 15c3d1: bf e0 c3 15
	sta $0ec7                    ; 15c3d5: 8d c7 0e
	lda $15c3e1,x                ; 15c3d8: bf e1 c3 15
	sta $0ec8                    ; 15c3dc: 8d c8 0e
loc_15c3df:
	rtl                          ; 15c3df: 6b
	ora $019802,x                ; 15c3e0: 1f 02 98 01
	.db $10, $01                 ; 15c3e4: 10 01
loc_15c3e6:
	dey                          ; 15c3e6: 88
loc_15c3e7:
	brk #$88                     ; 15c3e7: 00 88

; --- Block at $15c3f0-$15c3fe ---
loc_15c3f0:
	lda $1700                    ; 15c3f0: ad 00 17
	cmp.b #$02                   ; 15c3f3: c9 02
	.db $b0, $28                 ; 15c3f5: b0 28
loc_15c3f7:
	cmp.b #$00                   ; 15c3f7: c9 00
	.db $d0, $06                 ; 15c3f9: d0 06
loc_15c3fb:
	ldx.w #$001e                 ; 15c3fb: a2 1e 00
	jmp $c404                    ; 15c3fe: 4c 04 c4

; --- Block at $15c401-$15c416 ---
loc_15c401:
	ldx.w #$007e                 ; 15c401: a2 7e 00
	lda $1288                    ; 15c404: ad 88 12
	and.b #$04                   ; 15c407: 29 04
	.db $f0, $0e                 ; 15c409: f0 0e
loc_15c40b:
	lda $7a                      ; 15c40b: a5 7a
	asl                          ; 15c40d: 0a
	sta $0cdb,x                  ; 15c40e: 9d db 0c
	eor.b #$ff                   ; 15c411: 49 ff
	sta $0cdc,x                  ; 15c413: 9d dc 0c
	jmp $c41f                    ; 15c416: 4c 1f c4

; --- Block at $15c419-$15c41f ---
loc_15c419:
	stz $0cdb,x                  ; 15c419: 9e db 0c
	stz $0cdc,x                  ; 15c41c: 9e dc 0c

; --- Block at $15c41f-$15c4d3 ---
loc_15c41f:
	rtl                          ; 15c41f: 6b
	lda $0fdd                    ; 15c420: ad dd 0f
	cmp.b #$09                   ; 15c423: c9 09
	.db $f0, $72                 ; 15c425: f0 72
loc_15c427:
	cmp.b #$08                   ; 15c427: c9 08
	.db $f0, $08                 ; 15c429: f0 08
loc_15c42b:
	cmp.b #$0a                   ; 15c42b: c9 0a
	.db $90, $69                 ; 15c42d: 90 69
loc_15c42f:
	cmp.b #$0c                   ; 15c42f: c9 0c
	.db $b0, $65                 ; 15c431: b0 65
loc_15c433:
	lda $7a                      ; 15c433: a5 7a
	lsr                          ; 15c435: 4a
	lsr                          ; 15c436: 4a
	and.b #$0e                   ; 15c437: 29 0e
	tax                          ; 15c439: aa
	rep #$20                     ; 15c43a: c2 20
	lda $14f7d6,x                ; 15c43c: bf d6 f7 14
	sta $0cfd                    ; 15c440: 8d fd 0c
	lda $14f7e6,x                ; 15c443: bf e6 f7 14
	sta $0d1d                    ; 15c447: 8d 1d 0d
	lda $14f7f6,x                ; 15c44a: bf f6 f7 14
	sta $0d5d                    ; 15c44e: 8d 5d 0d
	lda.w #$0000                 ; 15c451: a9 00 00
	sep #$20                     ; 15c454: e2 20
	lda $0fdd                    ; 15c456: ad dd 0f
	cmp.b #$0b                   ; 15c459: c9 0b
	.db $f0, $20                 ; 15c45b: f0 20
loc_15c45d:
	lda $7a                      ; 15c45d: a5 7a
	lsr                          ; 15c45f: 4a
	lsr                          ; 15c460: 4a
	lsr                          ; 15c461: 4a
	and.b #$0f                   ; 15c462: 29 0f
	cmp.b #$08                   ; 15c464: c9 08
	.db $90, $05                 ; 15c466: 90 05
loc_15c468:
	eor.b #$ff                   ; 15c468: 49 ff
	clc                          ; 15c46a: 18
	adc.b #$09                   ; 15c46b: 69 09
loc_15c46d:
	asl                          ; 15c46d: 0a
	tax                          ; 15c46e: aa
	ldy.w #$0000                 ; 15c46f: a0 00 00
	lda $14f806,x                ; 15c472: bf 06 f8 14
	inx                          ; 15c476: e8
	iny                          ; 15c477: c8
	cpy.w #$0010                 ; 15c478: c0 10 00
	.db $d0, $f5                 ; 15c47b: d0 f5
loc_15c47d:
	lda $7a                      ; 15c47d: a5 7a
	lsr                          ; 15c47f: 4a
	and.b #$1e                   ; 15c480: 29 1e
	tax                          ; 15c482: aa
	ldy.w #$0000                 ; 15c483: a0 00 00
	lda $14f826,x                ; 15c486: bf 26 f8 14
	sta $0dbd,y                  ; 15c48a: 99 bd 0d
	inx                          ; 15c48d: e8
	txa                          ; 15c48e: 8a
	and.b #$1f                   ; 15c48f: 29 1f
	tax                          ; 15c491: aa
	iny                          ; 15c492: c8
	cpy.w #$0010                 ; 15c493: c0 10 00
	.db $d0, $ee                 ; 15c496: d0 ee
loc_15c498:
	rtl                          ; 15c498: 6b
loc_15c499:
	lda $7a                      ; 15c499: a5 7a
	lsr                          ; 15c49b: 4a
	lsr                          ; 15c49c: 4a
	and.b #$0e                   ; 15c49d: 29 0e
	tax                          ; 15c49f: aa
	lda $0fe0                    ; 15c4a0: ad e0 0f
	cmp.b #$0f                   ; 15c4a3: c9 0f
	.db $d0, $05                 ; 15c4a5: d0 05
loc_15c4a7:
	txa                          ; 15c4a7: 8a
	clc                          ; 15c4a8: 18
	adc.b #$40                   ; 15c4a9: 69 40
	tax                          ; 15c4ab: aa
loc_15c4ac:
	rep #$20                     ; 15c4ac: c2 20
	lda $14fbc6,x                ; 15c4ae: bf c6 fb 14
	sta $0cfd                    ; 15c4b2: 8d fd 0c
	lda $14fbd6,x                ; 15c4b5: bf d6 fb 14
	sta $0cff                    ; 15c4b9: 8d ff 0c
	sta $0d7f                    ; 15c4bc: 8d 7f 0d
	lda $14fbe6,x                ; 15c4bf: bf e6 fb 14
	sta $0d01                    ; 15c4c3: 8d 01 0d
	lda $14fbf6,x                ; 15c4c6: bf f6 fb 14
	sta $0d7d                    ; 15c4ca: 8d 7d 0d
	lda.w #$0000                 ; 15c4cd: a9 00 00
	sep #$20                     ; 15c4d0: e2 20
	rtl                          ; 15c4d2: 6b

; --- Block at $15c4d3-$15c503 ---
loc_15c4d3:
	lda $1700                    ; 15c4d3: ad 00 17
	cmp.b #$01                   ; 15c4d6: c9 01
	.db $d0, $28                 ; 15c4d8: d0 28
loc_15c4da:
	lda $7a                      ; 15c4da: a5 7a
	and.b #$70                   ; 15c4dc: 29 70
	lsr                          ; 15c4de: 4a
	lsr                          ; 15c4df: 4a
	lsr                          ; 15c4e0: 4a
	lsr                          ; 15c4e1: 4a
	tax                          ; 15c4e2: aa
	lda $15c503,x                ; 15c4e3: bf 03 c5 15
	tax                          ; 15c4e7: aa
	ldy.w #$0000                 ; 15c4e8: a0 00 00
	rep #$20                     ; 15c4eb: c2 20
	lda $14fa16,x                ; 15c4ed: bf 16 fa 14
	sta $0cff,y                  ; 15c4f1: 99 ff 0c
	inx                          ; 15c4f4: e8
	inx                          ; 15c4f5: e8
	iny                          ; 15c4f6: c8
	iny                          ; 15c4f7: c8
	cpy.w #$0010                 ; 15c4f8: c0 10 00
	.db $d0, $f0                 ; 15c4fb: d0 f0
loc_15c4fd:
	lda.w #$0000                 ; 15c4fd: a9 00 00
	sep #$20                     ; 15c500: e2 20
loc_15c502:
	rtl                          ; 15c502: 6b
	brk #$10                     ; 15c503: 00 10

; --- Block at $15c50b-$15c617 ---
loc_15c50b:
	and.b #$fe                   ; 15c50b: 29 fe
	tax                          ; 15c50d: aa
	lda $1700                    ; 15c50e: ad 00 17
	.db $d0, $16                 ; 15c511: d0 16
loc_15c513:
	rep #$20                     ; 15c513: c2 20
	lda $15c6b7,x                ; 15c515: bf b7 c6 15
	sta $0d25                    ; 15c519: 8d 25 0d
	lda $15c6c9,x                ; 15c51c: bf c9 c6 15
	sta $0d29                    ; 15c520: 8d 29 0d
	lda.w #$0000                 ; 15c523: a9 00 00
	sep #$20                     ; 15c526: e2 20
	rtl                          ; 15c528: 6b
loc_15c529:
	cmp.b #$01                   ; 15c529: c9 01
	.db $d0, $40                 ; 15c52b: d0 40
loc_15c52d:
	rep #$20                     ; 15c52d: c2 20
	lda $15c627,x                ; 15c52f: bf 27 c6 15
	sta $0cf3                    ; 15c533: 8d f3 0c
	lda $15c639,x                ; 15c536: bf 39 c6 15
	sta $0cf5                    ; 15c53a: 8d f5 0c
	lda $15c64b,x                ; 15c53d: bf 4b c6 15
	sta $0d1d                    ; 15c541: 8d 1d 0d
	lda $15c65d,x                ; 15c544: bf 5d c6 15
	sta $0d1f                    ; 15c548: 8d 1f 0d
	lda $15c66f,x                ; 15c54b: bf 6f c6 15
	sta $0d21                    ; 15c54f: 8d 21 0d
	lda $15c681,x                ; 15c552: bf 81 c6 15
	sta $0cdf                    ; 15c556: 8d df 0c
	lda $15c693,x                ; 15c559: bf 93 c6 15
	sta $0ce5                    ; 15c55d: 8d e5 0c
	lda $15c6a5,x                ; 15c560: bf a5 c6 15
	sta $0cdd                    ; 15c564: 8d dd 0c
	lda.w #$0000                 ; 15c567: a9 00 00
	sep #$20                     ; 15c56a: e2 20
	rtl                          ; 15c56c: 6b
loc_15c56d:
	rep #$20                     ; 15c56d: c2 20
	lda $15c5a9,x                ; 15c56f: bf a9 c5 15
	sta $0cdd                    ; 15c573: 8d dd 0c
	lda $15c5bb,x                ; 15c576: bf bb c5 15
	sta $0ce5                    ; 15c57a: 8d e5 0c
	lda $15c5cd,x                ; 15c57d: bf cd c5 15
	sta $0cf3                    ; 15c581: 8d f3 0c
	sta $0d13                    ; 15c584: 8d 13 0d
	lda $15c5df,x                ; 15c587: bf df c5 15
	sta $0cdf                    ; 15c58b: 8d df 0c
	lda $15c5f1,x                ; 15c58e: bf f1 c5 15
	sta $0d0b                    ; 15c592: 8d 0b 0d
	lda $15c603,x                ; 15c595: bf 03 c6 15
	sta $0d0d                    ; 15c599: 8d 0d 0d
	lda $15c615,x                ; 15c59c: bf 15 c6 15
	sta $0d11                    ; 15c5a0: 8d 11 0d
	lda.w #$0000                 ; 15c5a3: a9 00 00
	sep #$20                     ; 15c5a6: e2 20
	rtl                          ; 15c5a8: 6b
	inc $ee3d                    ; 15c5a9: ee 3d ee
	and $3ded,x                  ; 15c5ac: 3d ed 3d
	cmp $cc39                    ; 15c5af: cd 39 cc
	and $39cc,y                  ; 15c5b2: 39 cc 39
	plb                          ; 15c5b5: ab
	and $ab,x                    ; 15c5b6: 35 ab
	and $ab,x                    ; 15c5b8: 35 ab
	and $d4,x                    ; 15c5ba: 35 d4
	lsr $b2,x                    ; 15c5bc: 56 b2
	eor ($71)                    ; 15c5be: 52 71
	lsr                          ; 15c5c0: 4a
	eor $420e46                  ; 15c5c1: 4f 46 0e 42
	sbc $cc3d                    ; 15c5c5: ed 3d cc
	and $35ab,y                  ; 15c5c8: 39 ab 35
	plb                          ; 15c5cb: ab
	and $ef,x                    ; 15c5cc: 35 ef
	and $ef,x                    ; 15c5ce: 35 ef
	and $ef,x                    ; 15c5d0: 35 ef
	and ($ce),y                  ; 15c5d2: 31 ce
	and ($ce),y                  ; 15c5d4: 31 ce
	and $2dce                    ; 15c5d6: 2d ce 2d
	lda $ad29                    ; 15c5d9: ad 29 ad
	and.b #$ad                   ; 15c5dc: 29 ad
	and.b #$ab                   ; 15c5de: 29 ab
	and $ab,x                    ; 15c5e0: 35 ab
	and $8b,x                    ; 15c5e2: 35 8b
	and ($8a),y                  ; 15c5e4: 31 8a
	and ($6a),y                  ; 15c5e6: 31 6a
	and $2d6a                    ; 15c5e8: 2d 6a 2d
	eor.b #$29                   ; 15c5eb: 49 29
	eor.b #$29                   ; 15c5ed: 49 29
	eor.b #$29                   ; 15c5ef: 49 29
	bit $3c33,x                  ; 15c5f1: 3c 33 3c
	and ($1b,s),y                ; 15c5f4: 33 1b
	and ($1a,s),y                ; 15c5f6: 33 1a
	and $f92efa                  ; 15c5f8: 2f fa 2e f9
	rol $2ad9                    ; 15c5fc: 2e d9 2a
	cld                          ; 15c5ff: d8
	rol                          ; 15c600: 2a
	cld                          ; 15c601: d8
	rol                          ; 15c602: 2a
	cld                          ; 15c603: d8
	rol                          ; 15c604: 2a
	lda [$2a],y                  ; 15c605: b7 2a
	adc $26,x                    ; 15c607: 75 26
	mvn $26,$32                  ; 15c609: 54 26 32
	jsl $d02211                  ; 15c60c: 22 11 22 d0
loc_15c610:
	ora $1daf,x                  ; 15c610: 1d af 1d
	lda $4f9e1d                  ; 15c613: af 1d 9e 4f
	jmp ($3a4b,x)                ; 15c617: 7c 4b 3a

; --- Block at $15c6db-$15c864 ---
loc_15c6db:
	rep #$20                     ; 15c6db: c2 20
	ldx.w #$0000                 ; 15c6dd: a2 00 00
	lda $0cdb,x                  ; 15c6e0: bd db 0c
	eor.w #$7fff                 ; 15c6e3: 49 ff 7f
	and.w #$7bde                 ; 15c6e6: 29 de 7b
	lsr                          ; 15c6e9: 4a
	sta $0bdb,x                  ; 15c6ea: 9d db 0b
	inx                          ; 15c6ed: e8
	inx                          ; 15c6ee: e8
	cpx.w #$0100                 ; 15c6ef: e0 00 01
	.db $d0, $ec                 ; 15c6f2: d0 ec
loc_15c6f4:
	lda.w #$0000                 ; 15c6f4: a9 00 00
	sep #$20                     ; 15c6f7: e2 20
	rtl                          ; 15c6f9: 6b
	lda $93                      ; 15c6fa: a5 93
	and.b #$3f                   ; 15c6fc: 29 3f
	sta $3e                      ; 15c6fe: 85 3e
	stz $3d                      ; 15c700: 64 3d
	ldx $3d                      ; 15c702: a6 3d
	lda $1282                    ; 15c704: ad 82 12
	and.b #$10                   ; 15c707: 29 10
	.db $f0, $22                 ; 15c709: f0 22
loc_15c70b:
	lda $93                      ; 15c70b: a5 93
	cmp.b #$39                   ; 15c70d: c9 39
	.db $d0, $0c                 ; 15c70f: d0 0c
loc_15c711:
	lda.b #$2d                   ; 15c711: a9 2d
	sta $7f5ce7,x                ; 15c713: 9f e7 5c 7f
	inc                          ; 15c717: 1a
	sta $7f5ce8,x                ; 15c718: 9f e8 5c 7f
	rtl                          ; 15c71c: 6b
loc_15c71d:
	cmp.b #$3a                   ; 15c71d: c9 3a
	.db $d0, $0c                 ; 15c71f: d0 0c
loc_15c721:
	lda.b #$3d                   ; 15c721: a9 3d
	sta $7f5ce7,x                ; 15c723: 9f e7 5c 7f
	inc                          ; 15c727: 1a
	sta $7f5ce8,x                ; 15c728: 9f e8 5c 7f
	rtl                          ; 15c72c: 6b
loc_15c72d:
	lda $1281                    ; 15c72d: ad 81 12
	and.b #$40                   ; 15c730: 29 40
	.db $f0, $57                 ; 15c732: f0 57
loc_15c734:
	lda $93                      ; 15c734: a5 93
	cmp.b #$76                   ; 15c736: c9 76
	.db $d0, $17                 ; 15c738: d0 17
loc_15c73a:
	lda.b #$13                   ; 15c73a: a9 13
	sta $7f5cd2,x                ; 15c73c: 9f d2 5c 7f
	sta $7f5cd3,x                ; 15c740: 9f d3 5c 7f
	sta $7f5cd4,x                ; 15c744: 9f d4 5c 7f
	sta $7f5cd5,x                ; 15c748: 9f d5 5c 7f
	sta $7f5cd6,x                ; 15c74c: 9f d6 5c 7f
	rtl                          ; 15c750: 6b
loc_15c751:
	cmp.b #$77                   ; 15c751: c9 77
	.db $d0, $1b                 ; 15c753: d0 1b
loc_15c755:
	lda.b #$12                   ; 15c755: a9 12
	sta $7f5cd2,x                ; 15c757: 9f d2 5c 7f
	lda.b #$13                   ; 15c75b: a9 13
	sta $7f5cd3,x                ; 15c75d: 9f d3 5c 7f
	sta $7f5cd4,x                ; 15c761: 9f d4 5c 7f
	sta $7f5cd5,x                ; 15c765: 9f d5 5c 7f
	lda.b #$14                   ; 15c769: a9 14
	sta $7f5cd6,x                ; 15c76b: 9f d6 5c 7f
	rtl                          ; 15c76f: 6b
loc_15c770:
	cmp.b #$78                   ; 15c770: c9 78
	.db $d0, $17                 ; 15c772: d0 17
loc_15c774:
	lda.b #$13                   ; 15c774: a9 13
	sta $7f5cd2,x                ; 15c776: 9f d2 5c 7f
	sta $7f5cd3,x                ; 15c77a: 9f d3 5c 7f
	sta $7f5cd4,x                ; 15c77e: 9f d4 5c 7f
	sta $7f5cd5,x                ; 15c782: 9f d5 5c 7f
	sta $7f5cd6,x                ; 15c786: 9f d6 5c 7f
	rtl                          ; 15c78a: 6b
loc_15c78b:
	lda $1286                    ; 15c78b: ad 86 12
	and.b #$01                   ; 15c78e: 29 01
	.db $d0, $58                 ; 15c790: d0 58
loc_15c792:
	lda $93                      ; 15c792: a5 93
	cmp.b #$d2                   ; 15c794: c9 d2
	.db $d0, $07                 ; 15c796: d0 07
loc_15c798:
	lda.b #$13                   ; 15c798: a9 13
	sta $7f5cdb,x                ; 15c79a: 9f db 5c 7f
	rtl                          ; 15c79e: 6b
loc_15c79f:
	cmp.b #$d3                   ; 15c79f: c9 d3
	.db $d0, $0f                 ; 15c7a1: d0 0f
loc_15c7a3:
	lda.b #$13                   ; 15c7a3: a9 13
	sta $7f5cda,x                ; 15c7a5: 9f da 5c 7f
	sta $7f5cdb,x                ; 15c7a9: 9f db 5c 7f
	sta $7f5cdc,x                ; 15c7ad: 9f dc 5c 7f
	rtl                          ; 15c7b1: 6b
loc_15c7b2:
	cmp.b #$d4                   ; 15c7b2: c9 d4
	.db $d0, $17                 ; 15c7b4: d0 17
loc_15c7b6:
	lda.b #$13                   ; 15c7b6: a9 13
	sta $7f5cd9,x                ; 15c7b8: 9f d9 5c 7f
	sta $7f5cda,x                ; 15c7bc: 9f da 5c 7f
	sta $7f5cdb,x                ; 15c7c0: 9f db 5c 7f
	sta $7f5cdc,x                ; 15c7c4: 9f dc 5c 7f
	sta $7f5cdd,x                ; 15c7c8: 9f dd 5c 7f
	rtl                          ; 15c7cc: 6b
loc_15c7cd:
	cmp.b #$d5                   ; 15c7cd: c9 d5
	.db $d0, $0f                 ; 15c7cf: d0 0f
loc_15c7d1:
	lda.b #$13                   ; 15c7d1: a9 13
	sta $7f5cda,x                ; 15c7d3: 9f da 5c 7f
	sta $7f5cdb,x                ; 15c7d7: 9f db 5c 7f
	sta $7f5cdc,x                ; 15c7db: 9f dc 5c 7f
	rtl                          ; 15c7df: 6b
loc_15c7e0:
	cmp.b #$d6                   ; 15c7e0: c9 d6
	.db $d0, $06                 ; 15c7e2: d0 06
loc_15c7e4:
	lda.b #$13                   ; 15c7e4: a9 13
	sta $7f5cdb,x                ; 15c7e6: 9f db 5c 7f
loc_15c7ea:
	rtl                          ; 15c7ea: 6b
	lda $d4                      ; 15c7eb: a5 d4
	.db $d0, $01                 ; 15c7ed: d0 01
loc_15c7ef:
	rtl                          ; 15c7ef: 6b
loc_15c7f0:
	stz $d4                      ; 15c7f0: 64 d4
	lda.b #$80                   ; 15c7f2: a9 80
	sta $2115                    ; 15c7f4: 8d 15 21 ; VMAIN
	ldx $06fe                    ; 15c7f7: ae fe 06
	stx $2116                    ; 15c7fa: 8e 16 21 ; VMADDL
	ldx $0700                    ; 15c7fd: ae 00 07
	stx $2118                    ; 15c800: 8e 18 21 ; VMDATAL
	ldx $0702                    ; 15c803: ae 02 07
	stx $2118                    ; 15c806: 8e 18 21 ; VMDATAL
	lda $06fe                    ; 15c809: ad fe 06
	clc                          ; 15c80c: 18
	adc.b #$20                   ; 15c80d: 69 20
	sta $06fe                    ; 15c80f: 8d fe 06
	lda $06ff                    ; 15c812: ad ff 06
	adc.b #$00                   ; 15c815: 69 00
	sta $06ff                    ; 15c817: 8d ff 06
	ldx $06fe                    ; 15c81a: ae fe 06
	stx $2116                    ; 15c81d: 8e 16 21 ; VMADDL
	ldx $0704                    ; 15c820: ae 04 07
	stx $2118                    ; 15c823: 8e 18 21 ; VMDATAL
	ldx $0706                    ; 15c826: ae 06 07
	stx $2118                    ; 15c829: 8e 18 21 ; VMDATAL
	rtl                          ; 15c82c: 6b
loc_15c82d:
	ldy.w #$0000                 ; 15c82d: a0 00 00
	ldx.w #$0000                 ; 15c830: a2 00 00
	lda $0d8000,x                ; 15c833: bf 00 80 0d
	sta $0ddb,y                  ; 15c837: 99 db 0d
	inx                          ; 15c83a: e8
	iny                          ; 15c83b: c8
	tya                          ; 15c83c: 98
	and.b #$0f                   ; 15c83d: 29 0f
	.db $d0, $f2                 ; 15c83f: d0 f2
loc_15c841:
	lda.b #$00                   ; 15c841: a9 00
	sta $0ddb,y                  ; 15c843: 99 db 0d
	iny                          ; 15c846: c8
	tya                          ; 15c847: 98
	and.b #$0f                   ; 15c848: 29 0f
	.db $d0, $f5                 ; 15c84a: d0 f5
loc_15c84c:
	cpy.w #$0080                 ; 15c84c: c0 80 00
	.db $d0, $e2                 ; 15c84f: d0 e2
loc_15c851:
	rtl                          ; 15c851: 6b
	lda $1704                    ; 15c852: ad 04 17
	.db $d0, $0a                 ; 15c855: d0 0a
loc_15c857:
	lda $02                      ; 15c857: a5 02
	and.b #$10                   ; 15c859: 29 10
	.db $f0, $04                 ; 15c85b: f0 04
loc_15c85d:
	lda $53                      ; 15c85d: a5 53
	.db $f0, $01                 ; 15c85f: f0 01
loc_15c861:
	rtl                          ; 15c861: 6b
loc_15c862:
	inc $53                      ; 15c862: e6 53

; --- Block at $15c864-$15c8a5 ---
loc_15c864:
	inc $1703                    ; 15c864: ee 03 17
	lda $1703                    ; 15c867: ad 03 17
	cmp.b #$05                   ; 15c86a: c9 05
	.db $d0, $05                 ; 15c86c: d0 05
loc_15c86e:
	lda.b #$00                   ; 15c86e: a9 00
	sta $1703                    ; 15c870: 8d 03 17
loc_15c873:
	jsl $15c881                  ; 15c873: 22 81 c8 15
loc_15c877:
	lda $1000,x                  ; 15c877: bd 00 10
	.db $f0, $e8                 ; 15c87a: f0 e8
loc_15c87c:
	lda.b #$01                   ; 15c87c: a9 01
	sta $cc                      ; 15c87e: 85 cc
	rtl                          ; 15c880: 6b
loc_15c881:
	lda $1703                    ; 15c881: ad 03 17
	stz $4a                      ; 15c884: 64 4a
	lsr                          ; 15c886: 4a
	ror $4a                      ; 15c887: 66 4a
	lsr                          ; 15c889: 4a
	ror $4a                      ; 15c88a: 66 4a
	sta $4b                      ; 15c88c: 85 4b
	ldx $4a                      ; 15c88e: a6 4a
	rtl                          ; 15c890: 6b
	lda $cc                      ; 15c891: a5 cc
	.db $d0, $01                 ; 15c893: d0 01
loc_15c895:
	rtl                          ; 15c895: 6b
loc_15c896:
	stz $cc                      ; 15c896: 64 cc
	jsl $15c881                  ; 15c898: 22 81 c8 15
loc_15c89c:
	lda $1003,x                  ; 15c89c: bd 03 10
	and.b #$20                   ; 15c89f: 29 20
	.db $f0, $05                 ; 15c8a1: f0 05
loc_15c8a3:
	lda.b #$0f                   ; 15c8a3: a9 0f
	jmp $c8c5                    ; 15c8a5: 4c c5 c8

; --- Block at $15c8a8-$15c8b1 ---
loc_15c8a8:
	lda $1003,x                  ; 15c8a8: bd 03 10
	and.b #$10                   ; 15c8ab: 29 10
	.db $f0, $05                 ; 15c8ad: f0 05
loc_15c8af:
	lda.b #$0e                   ; 15c8af: a9 0e
	jmp $c8c5                    ; 15c8b1: 4c c5 c8

; --- Block at $15c8b4-$15c8bd ---
loc_15c8b4:
	lda $1003,x                  ; 15c8b4: bd 03 10
	and.b #$08                   ; 15c8b7: 29 08
	.db $f0, $05                 ; 15c8b9: f0 05
loc_15c8bb:
	lda.b #$10                   ; 15c8bb: a9 10
	jmp $c8c5                    ; 15c8bd: 4c c5 c8

; --- Block at $15c8c0-$15c8e5 ---
loc_15c8c0:
	lda $1001,x                  ; 15c8c0: bd 01 10
	and.b #$1f                   ; 15c8c3: 29 1f
	sta $06                      ; 15c8c5: 85 06
	asl                          ; 15c8c7: 0a
	clc                          ; 15c8c8: 18
	adc $06                      ; 15c8c9: 65 06
	clc                          ; 15c8cb: 18
	adc.b #$80                   ; 15c8cc: 69 80
	sta $4b                      ; 15c8ce: 85 4b
	stz $4a                      ; 15c8d0: 64 4a
	ldx.w #$4000                 ; 15c8d2: a2 00 40
	stx $4c                      ; 15c8d5: 86 4c
	ldx.w #$0200                 ; 15c8d7: a2 00 02
	stx $4e                      ; 15c8da: 86 4e
	lda.b #$1b                   ; 15c8dc: a9 1b
	sta $49                      ; 15c8de: 85 49
	jsl $15b000                  ; 15c8e0: 22 00 b0 15
loc_15c8e4:
	rtl                          ; 15c8e4: 6b

; --- Block at $15c8e5-$15c9c2 ---
loc_15c8e5:
	lda.b #$80                   ; 15c8e5: a9 80
	sta $2100                    ; 15c8e7: 8d 00 21 ; INIDISP
	lda.b #$00                   ; 15c8ea: a9 00
	sta $4200                    ; 15c8ec: 8d 00 42 ; NMITIMEN
	lda.b #$02                   ; 15c8ef: a9 02
	sta $2101                    ; 15c8f1: 8d 01 21 ; OBSEL
	stz $2102                    ; 15c8f4: 9c 02 21 ; OAMADDL
	stz $2103                    ; 15c8f7: 9c 03 21 ; OAMADDH
	stz $2106                    ; 15c8fa: 9c 06 21 ; MOSAIC
	lda.b #$19                   ; 15c8fd: a9 19
	sta $2107                    ; 15c8ff: 8d 07 21 ; BG1SC
	lda.b #$33                   ; 15c902: a9 33
	sta $2108                    ; 15c904: 8d 08 21 ; BG2SC
	lda.b #$29                   ; 15c907: a9 29
	sta $2109                    ; 15c909: 8d 09 21 ; BG3SC
	lda.b #$00                   ; 15c90c: a9 00
	sta $210b                    ; 15c90e: 8d 0b 21 ; BG12NBA
	lda.b #$02                   ; 15c911: a9 02
	sta $210c                    ; 15c913: 8d 0c 21 ; BG34NBA
	stz $2111                    ; 15c916: 9c 11 21 ; BG3HOFS
	stz $2111                    ; 15c919: 9c 11 21 ; BG3HOFS
	stz $2112                    ; 15c91c: 9c 12 21 ; BG3VOFS
	stz $2112                    ; 15c91f: 9c 12 21 ; BG3VOFS
	lda.b #$80                   ; 15c922: a9 80
	sta $2115                    ; 15c924: 8d 15 21 ; VMAIN
	stz $211a                    ; 15c927: 9c 1a 21 ; M7SEL
	stz $211b                    ; 15c92a: 9c 1b 21 ; M7A
	lda.b #$04                   ; 15c92d: a9 04
	sta $211b                    ; 15c92f: 8d 1b 21 ; M7A
	stz $211c                    ; 15c932: 9c 1c 21 ; M7B
	stz $211c                    ; 15c935: 9c 1c 21 ; M7B
	stz $211d                    ; 15c938: 9c 1d 21 ; M7C
	stz $211d                    ; 15c93b: 9c 1d 21 ; M7C
	stz $211e                    ; 15c93e: 9c 1e 21 ; M7D
	lda.b #$04                   ; 15c941: a9 04
	sta $211e                    ; 15c943: 8d 1e 21 ; M7D
	lda.b #$80                   ; 15c946: a9 80
	sta $211f                    ; 15c948: 8d 1f 21 ; M7X
	sta $211f                    ; 15c94b: 8d 1f 21 ; M7X
	sta $2120                    ; 15c94e: 8d 20 21 ; M7Y
	sta $2120                    ; 15c951: 8d 20 21 ; M7Y
	sta $2121                    ; 15c954: 8d 21 21 ; CGADD
	lda.b #$33                   ; 15c957: a9 33
	sta $2123                    ; 15c959: 8d 23 21 ; W12SEL
	lda.b #$00                   ; 15c95c: a9 00
	sta $2124                    ; 15c95e: 8d 24 21 ; W34SEL
	lda.b #$f3                   ; 15c961: a9 f3
	sta $2125                    ; 15c963: 8d 25 21 ; WOBJSEL
	lda.b #$01                   ; 15c966: a9 01
	sta $2126                    ; 15c968: 8d 26 21 ; WH0
	lda.b #$fe                   ; 15c96b: a9 fe
	sta $2127                    ; 15c96d: 8d 27 21 ; WH1
	stz $2128                    ; 15c970: 9c 28 21 ; WH2
	lda.b #$ff                   ; 15c973: a9 ff
	sta $2129                    ; 15c975: 8d 29 21 ; WH3
	stz $212a                    ; 15c978: 9c 2a 21 ; WBGLOG
	stz $212b                    ; 15c97b: 9c 2b 21 ; WOBJLOG
	lda.b #$17                   ; 15c97e: a9 17
	sta $212c                    ; 15c980: 8d 2c 21 ; TM
	lda.b #$11                   ; 15c983: a9 11
	sta $212d                    ; 15c985: 8d 2d 21 ; TS
	lda.b #$17                   ; 15c988: a9 17
	sta $212e                    ; 15c98a: 8d 2e 21 ; TMW
	stz $212f                    ; 15c98d: 9c 2f 21 ; TSW
	lda.b #$e0                   ; 15c990: a9 e0
	sta $2132                    ; 15c992: 8d 32 21 ; COLDATA
	stz $2133                    ; 15c995: 9c 33 21 ; SETINI
	lda.b #$ff                   ; 15c998: a9 ff
	sta $4201                    ; 15c99a: 8d 01 42 ; WRIO
	stz $4207                    ; 15c99d: 9c 07 42 ; HTIMEL
	stz $4208                    ; 15c9a0: 9c 08 42 ; HTIMEH
	stz $4209                    ; 15c9a3: 9c 09 42 ; VTIMEL
	stz $420a                    ; 15c9a6: 9c 0a 42 ; VTIMEH
	stz $420b                    ; 15c9a9: 9c 0b 42 ; MDMAEN
	stz $420c                    ; 15c9ac: 9c 0c 42 ; HDMAEN
	rtl                          ; 15c9af: 6b
loc_15c9b0:
	ldx.w #$0000                 ; 15c9b0: a2 00 00
	lda $1900,x                  ; 15c9b3: bd 00 19
	cmp $14ee00,x                ; 15c9b6: df 00 ee 14
	.db $d0, $09                 ; 15c9ba: d0 09
loc_15c9bc:
	inx                          ; 15c9bc: e8
	cpx.w #$0100                 ; 15c9bd: e0 00 01
	.db $f0, $0f                 ; 15c9c0: f0 0f
loc_15c9c2:
	jmp $c9b3                    ; 15c9c2: 4c b3 c9

; --- Block at $15c9c5-$15cb55 ---
loc_15c9c5:
	ldx.w #$1a00                 ; 15c9c5: a2 00 1a
	stz.w $0000,x                ; 15c9c8: 9e 00 00
	inx                          ; 15c9cb: e8
	cpx.w #$1a65                 ; 15c9cc: e0 65 1a
	.db $d0, $f7                 ; 15c9cf: d0 f7
loc_15c9d1:
	ldx.w #$0000                 ; 15c9d1: a2 00 00
	stz.w $0000,x                ; 15c9d4: 9e 00 00
	inx                          ; 15c9d7: e8
	cpx.w #$0200                 ; 15c9d8: e0 00 02
	.db $d0, $f7                 ; 15c9db: d0 f7
loc_15c9dd:
	ldx.w #$0300                 ; 15c9dd: a2 00 03
	stz.w $0000,x                ; 15c9e0: 9e 00 00
	inx                          ; 15c9e3: e8
	cpx.w #$0fff                 ; 15c9e4: e0 ff 0f
	.db $d0, $f7                 ; 15c9e7: d0 f7
loc_15c9e9:
	inx                          ; 15c9e9: e8
	stz.w $0000,x                ; 15c9ea: 9e 00 00
	inx                          ; 15c9ed: e8
	cpx.w #$1a00                 ; 15c9ee: e0 00 1a
	.db $d0, $f7                 ; 15c9f1: d0 f7
loc_15c9f3:
	ldx.w #$1a65                 ; 15c9f3: a2 65 1a
	stz.w $0000,x                ; 15c9f6: 9e 00 00
	inx                          ; 15c9f9: e8
	cpx.w #$1e00                 ; 15c9fa: e0 00 1e
	.db $d0, $f7                 ; 15c9fd: d0 f7
loc_15c9ff:
	ldx.w #$2000                 ; 15c9ff: a2 00 20
	lda.b #$00                   ; 15ca02: a9 00
	sta $7e0000,x                ; 15ca04: 9f 00 00 7e
	inx                          ; 15ca08: e8
	.db $d0, $f9                 ; 15ca09: d0 f9
loc_15ca0b:
	sta $7f0000,x                ; 15ca0b: 9f 00 00 7f
	inx                          ; 15ca0f: e8
	.db $d0, $f9                 ; 15ca10: d0 f9
loc_15ca12:
	ldx.w #$0000                 ; 15ca12: a2 00 00
	lda $14ee00,x                ; 15ca15: bf 00 ee 14
	sta $1900,x                  ; 15ca19: 9d 00 19
	inx                          ; 15ca1c: e8
	cpx.w #$0100                 ; 15ca1d: e0 00 01
	.db $d0, $f3                 ; 15ca20: d0 f3
loc_15ca22:
	rtl                          ; 15ca22: 6b
loc_15ca23:
	lda $02                      ; 15ca23: a5 02
	and.b #$80                   ; 15ca25: 29 80
	.db $d0, $02                 ; 15ca27: d0 02
loc_15ca29:
	stz $54                      ; 15ca29: 64 54
loc_15ca2b:
	lda $02                      ; 15ca2b: a5 02
	and.b #$40                   ; 15ca2d: 29 40
	.db $d0, $02                 ; 15ca2f: d0 02
loc_15ca31:
	stz $50                      ; 15ca31: 64 50
loc_15ca33:
	lda $02                      ; 15ca33: a5 02
	and.b #$20                   ; 15ca35: 29 20
	.db $d0, $02                 ; 15ca37: d0 02
loc_15ca39:
	stz $52                      ; 15ca39: 64 52
loc_15ca3b:
	lda $02                      ; 15ca3b: a5 02
	and.b #$10                   ; 15ca3d: 29 10
	.db $d0, $02                 ; 15ca3f: d0 02
loc_15ca41:
	stz $53                      ; 15ca41: 64 53
loc_15ca43:
	lda $03                      ; 15ca43: a5 03
	and.b #$80                   ; 15ca45: 29 80
	.db $d0, $02                 ; 15ca47: d0 02
loc_15ca49:
	stz $55                      ; 15ca49: 64 55
loc_15ca4b:
	lda $03                      ; 15ca4b: a5 03
	and.b #$40                   ; 15ca4d: 29 40
	.db $d0, $02                 ; 15ca4f: d0 02
loc_15ca51:
	stz $51                      ; 15ca51: 64 51
loc_15ca53:
	lda $03                      ; 15ca53: a5 03
	and.b #$20                   ; 15ca55: 29 20
	.db $d0, $02                 ; 15ca57: d0 02
loc_15ca59:
	stz $56                      ; 15ca59: 64 56
loc_15ca5b:
	lda $03                      ; 15ca5b: a5 03
	and.b #$10                   ; 15ca5d: 29 10
	.db $d0, $02                 ; 15ca5f: d0 02
loc_15ca61:
	stz $57                      ; 15ca61: 64 57
loc_15ca63:
	rtl                          ; 15ca63: 6b
	stz $420b                    ; 15ca64: 9c 0b 42 ; MDMAEN
	stz $2121                    ; 15ca67: 9c 21 21 ; CGADD
	lda.b #$02                   ; 15ca6a: a9 02
	sta $4300                    ; 15ca6c: 8d 00 43 ; DMAP0
	lda.b #$22                   ; 15ca6f: a9 22
	sta $4301                    ; 15ca71: 8d 01 43 ; BBAD0
	lda.b #$00                   ; 15ca74: a9 00
	sta $4304                    ; 15ca76: 8d 04 43 ; A1B0
	ldx.w #$0cdb                 ; 15ca79: a2 db 0c
	stx $4302                    ; 15ca7c: 8e 02 43 ; A1TL0
	ldx.w #$0200                 ; 15ca7f: a2 00 02
	stx $4305                    ; 15ca82: 8e 05 43 ; DAS0L
	lda.b #$01                   ; 15ca85: a9 01
	sta $420b                    ; 15ca87: 8d 0b 42 ; MDMAEN
	rtl                          ; 15ca8a: 6b
loc_15ca8b:
	lda.b #$80                   ; 15ca8b: a9 80
	sta $2115                    ; 15ca8d: 8d 15 21 ; VMAIN
	stz $420b                    ; 15ca90: 9c 0b 42 ; MDMAEN
	lda.b #$01                   ; 15ca93: a9 01
	sta $4300                    ; 15ca95: 8d 00 43 ; DMAP0
	lda.b #$18                   ; 15ca98: a9 18
	sta $4301                    ; 15ca9a: 8d 01 43 ; BBAD0
	lda $3c                      ; 15ca9d: a5 3c
	sta $4304                    ; 15ca9f: 8d 04 43 ; A1B0
	ldx $47                      ; 15caa2: a6 47
	stx $2116                    ; 15caa4: 8e 16 21 ; VMADDL
	ldx $3d                      ; 15caa7: a6 3d
	stx $4302                    ; 15caa9: 8e 02 43 ; A1TL0
	ldx $45                      ; 15caac: a6 45
	stx $4305                    ; 15caae: 8e 05 43 ; DAS0L
	lda.b #$01                   ; 15cab1: a9 01
	sta $420b                    ; 15cab3: 8d 0b 42 ; MDMAEN
	rtl                          ; 15cab6: 6b
	lda.b #$80                   ; 15cab7: a9 80
	sta $2115                    ; 15cab9: 8d 15 21 ; VMAIN
	stz $420b                    ; 15cabc: 9c 0b 42 ; MDMAEN
	lda.b #$09                   ; 15cabf: a9 09
	sta $4300                    ; 15cac1: 8d 00 43 ; DMAP0
	lda.b #$18                   ; 15cac4: a9 18
	sta $4301                    ; 15cac6: 8d 01 43 ; BBAD0
	ldx $47                      ; 15cac9: a6 47
	stx $2116                    ; 15cacb: 8e 16 21 ; VMADDL
	ldx.w #$0676                 ; 15cace: a2 76 06
	stx $4302                    ; 15cad1: 8e 02 43 ; A1TL0
	stz $4304                    ; 15cad4: 9c 04 43 ; A1B0
	ldx $45                      ; 15cad7: a6 45
	stx $4305                    ; 15cad9: 8e 05 43 ; DAS0L
	lda.b #$01                   ; 15cadc: a9 01
	sta $420b                    ; 15cade: 8d 0b 42 ; MDMAEN
	rtl                          ; 15cae1: 6b
	stz $2102                    ; 15cae2: 9c 02 21 ; OAMADDL
	stz $420b                    ; 15cae5: 9c 0b 42 ; MDMAEN
	stz $4300                    ; 15cae8: 9c 00 43 ; DMAP0
	lda.b #$04                   ; 15caeb: a9 04
	sta $4301                    ; 15caed: 8d 01 43 ; BBAD0
	ldx.w #$0300                 ; 15caf0: a2 00 03
	stx $4302                    ; 15caf3: 8e 02 43 ; A1TL0
	lda.b #$00                   ; 15caf6: a9 00
	sta $4304                    ; 15caf8: 8d 04 43 ; A1B0
	ldx.w #$0220                 ; 15cafb: a2 20 02
	stx $4305                    ; 15cafe: 8e 05 43 ; DAS0L
	lda.b #$01                   ; 15cb01: a9 01
	sta $420b                    ; 15cb03: 8d 0b 42 ; MDMAEN
	rtl                          ; 15cb06: 6b
	lda $0fdd                    ; 15cb07: ad dd 0f
	tax                          ; 15cb0a: aa
	lda $15cb55,x                ; 15cb0b: bf 55 cb 15
	sta $3e                      ; 15cb0f: 85 3e
	stz $3d                      ; 15cb11: 64 3d
	lsr $3e                      ; 15cb13: 46 3e
	ror $3d                      ; 15cb15: 66 3d
	lda $3e                      ; 15cb17: a5 3e
	clc                          ; 15cb19: 18
	adc $15cb55,x                ; 15cb1a: 7f 55 cb 15
	sta $3e                      ; 15cb1e: 85 3e
	ldx $3d                      ; 15cb20: a6 3d
	ldy.w #$0000                 ; 15cb22: a0 00 00
	lda.b #$7f                   ; 15cb25: a9 7f
	pha                          ; 15cb27: 48
	plb                          ; 15cb28: ab
	lda $1fb9c0,x                ; 15cb29: bf c0 b9 1f
	sta $5000,y                  ; 15cb2d: 99 00 50
	inx                          ; 15cb30: e8
	iny                          ; 15cb31: c8
	tya                          ; 15cb32: 98
	and.b #$0f                   ; 15cb33: 29 0f
	.db $d0, $f2                 ; 15cb35: d0 f2
loc_15cb37:
	lda $1fb9c0,x                ; 15cb37: bf c0 b9 1f
	sta $5000,y                  ; 15cb3b: 99 00 50
	inx                          ; 15cb3e: e8
	iny                          ; 15cb3f: c8
	lda.b #$00                   ; 15cb40: a9 00
	sta $5000,y                  ; 15cb42: 99 00 50
	iny                          ; 15cb45: c8
	tya                          ; 15cb46: 98
	and.b #$0f                   ; 15cb47: 29 0f
	.db $d0, $ec                 ; 15cb49: d0 ec
loc_15cb4b:
	cpy.w #$0800                 ; 15cb4b: c0 00 08
	.db $d0, $d9                 ; 15cb4e: d0 d9
loc_15cb50:
	lda.b #$00                   ; 15cb50: a9 00
	pha                          ; 15cb52: 48
	plb                          ; 15cb53: ab
	rtl                          ; 15cb54: 6b
	brk #$00                     ; 15cb55: 00 00

; --- Block at $15cb65-$15cc11 ---
loc_15cb65:
	lda $1700                    ; 15cb65: ad 00 17
	cmp.b #$03                   ; 15cb68: c9 03
	.db $d0, $06                 ; 15cb6a: d0 06
loc_15cb6c:
	lda $7a                      ; 15cb6c: a5 7a
	and.b #$06                   ; 15cb6e: 29 06
	.db $f0, $01                 ; 15cb70: f0 01
loc_15cb72:
	rtl                          ; 15cb72: 6b
loc_15cb73:
	lda $7a                      ; 15cb73: a5 7a
	and.b #$18                   ; 15cb75: 29 18
	sta $12                      ; 15cb77: 85 12
	stz $13                      ; 15cb79: 64 13
	rep #$20                     ; 15cb7b: c2 20
	asl $12                      ; 15cb7d: 06 12
	asl $12                      ; 15cb7f: 06 12
	asl $12                      ; 15cb81: 06 12
	asl $12                      ; 15cb83: 06 12
	lda $12                      ; 15cb85: a5 12
	clc                          ; 15cb87: 18
	adc.w #$5000                 ; 15cb88: 69 00 50
	sta $12                      ; 15cb8b: 85 12
	lda.w #$0000                 ; 15cb8d: a9 00 00
	sep #$20                     ; 15cb90: e2 20
	lda.b #$80                   ; 15cb92: a9 80
	sta $2115                    ; 15cb94: 8d 15 21 ; VMAIN
	stz $420b                    ; 15cb97: 9c 0b 42 ; MDMAEN
	lda.b #$01                   ; 15cb9a: a9 01
	sta $4300                    ; 15cb9c: 8d 00 43 ; DMAP0
	lda.b #$18                   ; 15cb9f: a9 18
	sta $4301                    ; 15cba1: 8d 01 43 ; BBAD0
	ldx.w #$1200                 ; 15cba4: a2 00 12
	stx $2116                    ; 15cba7: 8e 16 21 ; VMADDL
	lda.b #$7f                   ; 15cbaa: a9 7f
	sta $4304                    ; 15cbac: 8d 04 43 ; A1B0
	ldx.w #$1200                 ; 15cbaf: a2 00 12
	stx $2116                    ; 15cbb2: 8e 16 21 ; VMADDL
	ldy.w #$0004                 ; 15cbb5: a0 04 00
	ldx $12                      ; 15cbb8: a6 12
	stx $4302                    ; 15cbba: 8e 02 43 ; A1TL0
	ldx.w #$0080                 ; 15cbbd: a2 80 00
	stx $4305                    ; 15cbc0: 8e 05 43 ; DAS0L
	lda.b #$01                   ; 15cbc3: a9 01
	sta $420b                    ; 15cbc5: 8d 0b 42 ; MDMAEN
	lda $13                      ; 15cbc8: a5 13
	clc                          ; 15cbca: 18
	adc.b #$02                   ; 15cbcb: 69 02
	sta $13                      ; 15cbcd: 85 13
	dey                          ; 15cbcf: 88
	.db $d0, $e6                 ; 15cbd0: d0 e6
loc_15cbd2:
	rtl                          ; 15cbd2: 6b
	sbc $ffffff,x                ; 15cbd3: ff ff ff ff
	sbc $ffffff,x                ; 15cbd7: ff ff ff ff
	sbc $ffffff,x                ; 15cbdb: ff ff ff ff
	sbc $ffffff,x                ; 15cbdf: ff ff ff ff
	sbc $ffffff,x                ; 15cbe3: ff ff ff ff
	sbc $ffffff,x                ; 15cbe7: ff ff ff ff
	sbc $ffffff,x                ; 15cbeb: ff ff ff ff
	sbc $ffffff,x                ; 15cbef: ff ff ff ff
	sbc $ffffff,x                ; 15cbf3: ff ff ff ff
	sbc $ffffff,x                ; 15cbf7: ff ff ff ff
	sbc $ffffff,x                ; 15cbfb: ff ff ff ff
	sbc $2fffff,x                ; 15cbff: ff ff ff 2f
	cmp $9b8b35,x                ; 15cc03: df 35 8b 9b
	.db $80, $b4                 ; 15cc07: 80 b4
	ldy $76                      ; 15cc09: a4 76
	and ($b3,s),y                ; 15cc0b: 33 b3
	plb                          ; 15cc0d: ab
	clv                          ; 15cc0e: b8
	ora $ff                      ; 15cc0f: 05 ff
	brk #$ff                     ; 15cc11: 00 ff

