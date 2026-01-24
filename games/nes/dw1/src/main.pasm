; 🌺 Peony Disassembly
; ROM: test-dw1-prg1.nes
; Platform: NES
; Size: 81936 bytes

.system:NES
; Mapper: MMC1
; Labels: 66

; === Block $8000-$8000 (Code) ===
Bank0_Func00:
	brk                      ; $8000: 00

; === Block $8000-$8010 (Code) ===
Bank1_Func85:
	bit $af                  ; $8000: 24 af
	cpy $ab                  ; $8002: c4 ab
	sei                      ; $8004: 78
	sta ($5e,x)              ; $8005: 81 5e
	sta ($a0,x)              ; $8007: 81 a0
	sta ($62,x)              ; $8009: 81 62
	*sha ($00),y             ; $800b: 93 00
	brk                      ; $800d: 00 Bank call: bank 0, Bank0_Func00
	.byte $00                ; $800e: 00 Function index
	.byte $00                ; $800f: 00 Target bank

; === Block $8000-$8061 (Code) ===
Bank2_Funcf0:
	bcs $7fbe                ; $8000: b0 bc
loc_8002:
	plp                      ; $8002: 28
	*nop #$86                ; $8003: 80 86
	*nop #$19                ; $8005: 82 19
	sta $13                  ; $8007: 85 13
	*sax $4c                 ; $8009: 87 4c
	*nop #$12                ; $800b: 89 12
	sta $906e                ; $800d: 8d 6e 90
	*jam                     ; $8010: 42
	sty $1e,x                ; $8011: 94 1e
	tya                      ; $8013: 98
	dey                      ; $8014: 88
	*shy $9f3f,x             ; $8015: 9c 3f 9f
	txa                      ; $8018: 8a
	ldx #$dc                 ; $8019: a2 dc
	ldx $2e                  ; $801b: a6 2e
	tax                      ; $801d: aa
	adc ($ac,x)              ; $801e: 61 ac
	plp                      ; $8020: 28
	ldx $afee                ; $8021: ae ee af
	*xaa #$b6                ; $8024: 8b b6
	adc $ba                  ; $8026: 65 ba
	*nop $5f,x               ; $8028: f4 5f
	ora ($0a),y              ; $802a: 11 0a
	ora $5f11,x              ; $802c: 1d 11 5f
	jsr $1418                ; $802f: 20 18 14
loc_8032:
	asl $5f17                ; $8032: 0e 17 5f
	asl $4719,x              ; $8035: 1e 19 47
	*nop $fd60,x             ; $8038: fc 60 fd
	*rla $11,x               ; $803b: 37 11
	clc                      ; $803d: 18
	asl $0a5f,x              ; $803e: 1e 5f 0a
	*slo $5f1d,y             ; $8041: 1b 1d 5f
	ora $0a0e                ; $8044: 0d 0e 0a
	ora $fc47                ; $8047: 0d 47 fc
	bvc $8083                ; $804a: 50 37
loc_804c:
	ora ($18),y              ; $804c: 11 18
	asl $0a5f,x              ; $804e: 1e 5f 0a
	*slo $5f1d,y             ; $8051: 1b 1d 5f
	*nop $1b1d,x             ; $8054: 1c 1d 1b
	clc                      ; $8057: 18
	*slo $10,x               ; $8058: 17 10
	*sre $170e,x             ; $805a: 5f 0e 17
	clc                      ; $805d: 18
	asl $1110,x              ; $805e: 1e 10 11
	jmp $3afd                ; $8061: 4c fd 3a PPUSCROLL

; === Block $8018-$801d (Code) ===
entry_8018:
	bvs $7fab                ; $8018: 70 91
loc_801a:
	brk                      ; $801a: 00 Bank call: bank 0, Bank0_Func00
	.byte $00                ; $801b: 00 Function index
	.byte $00                ; $801c: 00 Target bank
	brk                      ; $801d: 00

; === Block $8028-$8031 (Code) ===
loc_8028:
	asl                      ; $8028: 0a
	ora $08                  ; $8029: 05 08
	sta ($0a),y              ; $802b: 91 0a
	sta $08                  ; $802d: 85 08
	pla                      ; $802f: 68
	tay                      ; $8030: a8
	rts                      ; $8031: 60

; === Block $8083-$808a (Code) ===
loc_8083:
	clc                      ; $8083: 18
	*slo $15,x               ; $8084: 17 15
	clc                      ; $8086: 18
	*slo $4b0d,y             ; $8087: 1b 0d 4b
	rti                      ; $808a: 40

; === Block $80bb-$8192 (Code) ===
entry_80bb:
	lsr $44                  ; $80bb: 46 44
	sty $aa,x                ; $80bd: 94 aa
	*nop                     ; $80bf: 7a
	ldy $66                  ; $80c0: a4 66
	*nop $49                 ; $80c2: 64 49
	*nop $66                 ; $80c4: 44 66
	*nop $44                 ; $80c6: 64 44
	*lax $a4ff               ; $80c8: af ff a4
	*nop $66                 ; $80cb: 64 66
	*nop $46                 ; $80cd: 44 46
	*nop $66                 ; $80cf: 64 66
	*nop $af                 ; $80d1: 64 af
	*rra $66a4               ; $80d3: 6f a4 66
	ror $64                  ; $80d6: 66 64
	lsr $44                  ; $80d8: 46 44
	*nop $64                 ; $80da: 44 64
	tax                      ; $80dc: aa
	tax                      ; $80dd: aa
	ldy $46                  ; $80de: a4 46
	*nop $64                 ; $80e0: 44 64
	lsr $46                  ; $80e2: 46 46
	ror $64                  ; $80e4: 66 64
	tax                      ; $80e6: aa
	tax                      ; $80e7: aa
	ldy $66                  ; $80e8: a4 66
	*nop $64                 ; $80ea: 64 64
	lsr $44                  ; $80ec: 46 44
	*nop $64                 ; $80ee: 64 64
	lsr $66                  ; $80f0: 46 66
	*nop $64                 ; $80f2: 44 64
	ror $64                  ; $80f4: 66 64
	lsr $46                  ; $80f6: 46 46
	ror $66                  ; $80f8: 66 66
	*nop $a4                 ; $80fa: 44 a4
	lsr $66                  ; $80fc: 46 66
	*nop $64                 ; $80fe: 64 64
	lsr $44                  ; $8100: 46 44
	ldy $46,x                ; $8102: b4 46
	lsr $66                  ; $8104: 46 66
	*nop $4b                 ; $8106: 44 4b
	*nop $64                 ; $8108: 44 64
	lsr $4a                  ; $810a: 46 4a
	tax                      ; $810c: aa
	lsr $44                  ; $810d: 46 44
	ldy $44                  ; $810f: a4 44
	tax                      ; $8111: aa
	ldy $64                  ; $8112: a4 64
	lsr $4a                  ; $8114: 46 4a
	lsr                      ; $8116: 4a
	lsr $46                  ; $8117: 46 46
	ror $44                  ; $8119: 66 44
	ldy $a4                  ; $811b: a4 a4
	*nop $46                 ; $811d: 64 46
	lsr                      ; $811f: 4a
	tax                      ; $8120: aa
	lsr $44                  ; $8121: 46 44
	ldy $44                  ; $8123: a4 44
	tax                      ; $8125: aa
	ldy $64                  ; $8126: a4 64
	lsr $4a                  ; $8128: 46 4a
	lsr                      ; $812a: 4a
	lsr $66                  ; $812b: 46 66
	ror $44                  ; $812d: 66 44
	ldy $a4                  ; $812f: a4 a4
	*nop $46                 ; $8131: 64 46
	lsr                      ; $8133: 4a
	tax                      ; $8134: aa
	*nop $44                 ; $8135: 44 44
	*nop $44                 ; $8137: 44 44
	tax                      ; $8139: aa
	ldy $64                  ; $813a: a4 64
	lsr $44                  ; $813c: 46 44
	*nop $46,x               ; $813e: 74 46
	ror $66                  ; $8140: 66 66
	*nop $47                 ; $8142: 64 47
	*nop $64                 ; $8144: 44 64
	lsr $64                  ; $8146: 46 64
	*nop $66                 ; $8148: 44 66
	lsr $64                  ; $814a: 46 64
	ror $44                  ; $814c: 66 44
	lsr $64                  ; $814e: 46 64
	*nop $66                 ; $8150: 44 66
	ror $66                  ; $8152: 66 66
	ror $66                  ; $8154: 66 66
	ror $66                  ; $8156: 66 66
	ror $44                  ; $8158: 66 44
	sty $46,x                ; $815a: 94 46
	ror $44                  ; $815c: 66 44
	lsr $64                  ; $815e: 46 64
	*nop $66                 ; $8160: 44 66
	*nop $49                 ; $8162: 64 49
	sta $4444,y              ; $8164: 99 44 44
	eor #$46                 ; $8167: 49 46
	*nop $94                 ; $8169: 64 94
	*nop $44                 ; $816b: 44 44
	sta $9999,y              ; $816d: 99 99 99
	sta $4699,y              ; $8170: 99 99 46
	*nop $99                 ; $8173: 64 99
	sta $9999,y              ; $8175: 99 99 99
	*nop $11                 ; $8178: 44 11
	*nop $41                 ; $817a: 04 41
	*nop $44                 ; $817c: 44 44
	*nop $46                 ; $817e: 44 46
	*nop $94                 ; $8180: 64 94
	eor ($10,x)              ; $8182: 41 10
	sty $16                  ; $8184: 84 16
	*rra $8064               ; $8186: 6f 64 80
	ora ($69,x)              ; $8189: 01 69
	sty $11,x                ; $818b: 94 11
	clc                      ; $818d: 18
	*nop $46                 ; $818e: 04 46
	*nop $64                 ; $8190: 64 64
	brk                      ; $8192: 00

; === Block $8145-$8167 (Code) ===
entry_8145:
	*nop $46                 ; $8145: 64 46
	*nop $44                 ; $8147: 64 44
	ror $46                  ; $8149: 66 46
	*nop $66                 ; $814b: 64 66
	*nop $46                 ; $814d: 44 46
	*nop $44                 ; $814f: 64 44
	ror $66                  ; $8151: 66 66
	ror $66                  ; $8153: 66 66
	ror $66                  ; $8155: 66 66
	ror $66                  ; $8157: 66 66
	*nop $94                 ; $8159: 44 94
	lsr $66                  ; $815b: 46 66
	*nop $46                 ; $815d: 44 46
	*nop $44                 ; $815f: 64 44
	ror $64                  ; $8161: 66 64
	eor #$99                 ; $8163: 49 99
	*nop $44                 ; $8165: 44 44

; === Block $9d5d-$9d6a (Code) ===
loc_9d5d:
	eor ($05,x)              ; $9d5d: 41 05
	*alr #$06                ; $9d5f: 4b 06
	lsr $4f07                ; $9d61: 4e 07 4f
	pha                      ; $9d64: 48
	*nop $02                 ; $9d65: 64 02
	eor $4c09                ; $9d67: 4d 09 4c
	rti                      ; $9d6a: 40

; === Block $a18b-$a198 (Code) ===
entry_a18b:
	*nop $33                 ; $a18b: 64 33
	*slo ($90,x)             ; $a18d: 03 90
	and ($62),y              ; $a18f: 31 62
	*rla ($46,x)             ; $a191: 23 46
	*jam                     ; $a193: 32
	*jam                     ; $a194: 12
	*jam                     ; $a195: 32
	*rla ($31,x)             ; $a196: 23 31
	jmp $2731                ; $a198: 4c 31 27 PPUMASK

; === Block $a1a1-$a203 (Code) ===
entry_a1a1:
	*rra $65,x               ; $a1a1: 77 65
	ora $32                  ; $a1a3: 05 32
	*rla $47                 ; $a1a5: 27 47
	and ($11),y              ; $a1a7: 31 11
	*jam                     ; $a1a9: 32
	and $31                  ; $a1aa: 25 31
	lsr                      ; $a1ac: 4a
	*jam                     ; $a1ad: 32
	*rla $6f                 ; $a1ae: 27 6f
	sec                      ; $a1b0: 38
	*jam                     ; $a1b1: 12
	*rra ($43,x)             ; $a1b2: 63 43
	*jam                     ; $a1b4: 02
	adc $75                  ; $a1b5: 65 75
	ror $04                  ; $a1b7: 66 04
	*jam                     ; $a1b9: 32
	*rla $48                 ; $a1ba: 27 48
	and ($70),y              ; $a1bc: 31 70
	and $20,x                ; $a1be: 35 20
entry_a1c0:
	*nop $4b,x               ; $a1c0: 34 4b
	and ($25),y              ; $a1c2: 31 25
	php                      ; $a1c4: 08
	*rra $37                 ; $a1c5: 67 37
	ora $61,x                ; $a1c7: 15 61
	*nop $02                 ; $a1c9: 44 02
	ror $73                  ; $a1cb: 66 73
	ror $05                  ; $a1cd: 66 05
	*rla ($25),y             ; $a1cf: 33 25
	pha                      ; $a1d1: 48
	and ($71),y              ; $a1d2: 31 71
entry_a1d4:
	*nop $02,x               ; $a1d4: 34 02
	*jam                     ; $a1d6: 32
	eor $2331                ; $a1d7: 4d 31 23 PPUMASK
	ora $176a                ; $a1da: 0d 6a 17
	adc ($43,x)              ; $a1dd: 61 43
	*jam                     ; $a1df: 02
	*rra $3e60               ; $a1e0: 6f 60 3e PPUCTRL
	*alr #$31                ; $a1e3: 4b 31
	adc ($32),y              ; $a1e5: 71 32
	*jam                     ; $a1e7: 02
	*jam                     ; $a1e8: 32
	eor $2232                ; $a1e9: 4d 32 22 PPUSTATUS
	*slo $1768               ; $a1ec: 0f 68 17
	*rra ($42,x)             ; $a1ef: 63 42
	*slo ($6d,x)             ; $a1f1: 03 6d
	*nop                     ; $a1f3: 3a
	*rra ($4e,x)             ; $a1f4: 63 4e
	and ($71),y              ; $a1f6: 31 71
	*jam                     ; $a1f8: 32
	*jam                     ; $a1f9: 02
	*jam                     ; $a1fa: 32
	eor $2232                ; $a1fb: 4d 32 22 PPUSTATUS
	asl $1569                ; $a1fe: 0e 69 15
	*nop $42                 ; $a201: 64 42
	rti                      ; $a203: 40

; === Block $a220-$a22b (Code) ===
entry_a220:
	and ($75),y              ; $a220: 31 75
	*jam                     ; $a222: 32
	*sre $3140               ; $a223: 4f 40 31 PPUCTRL
	rol $64                  ; $a226: 26 64
	*jam                     ; $a228: 02
	*rra ($37,x)             ; $a229: 63 37
	jmp ($0343)              ; $a22b: 6c 43 03

; === Block $a238-$a256 (Code) ===
entry_a238:
	bit $6a                  ; $a238: 24 6a
	*jam                     ; $a23a: 32
	*nop $35                 ; $a23b: 04 35
	adc #$45                 ; $a23d: 69 45
	*slo ($66,x)             ; $a23f: 03 66
	and $64                  ; $a241: 25 64
	*slo $4f                 ; $a243: 07 4f
	*rla ($4f),y             ; $a245: 33 4f
	eor #$6c                 ; $a247: 49 6c
	*jam                     ; $a249: 32
	php                      ; $a24a: 08
	*rla ($68),y             ; $a24b: 33 68
	lsr $04                  ; $a24d: 46 04
	adc $22                  ; $a24f: 65 22
	adc $07                  ; $a251: 65 07
	*sre $4f4f               ; $a253: 4f 4f 4f
	rti                      ; $a256: 40

; === Block $a25a-$a2bd (Code) ===
entry_a25a:
	*nop $02                 ; $a25a: 64 02
	*nop $66,x               ; $a25c: 34 66
	*sre $05                 ; $a25e: 47 05
	*arr #$06                ; $a260: 6b 06
	*nop $66                 ; $a262: 44 66
	*sre $484f               ; $a264: 4f 4f 48
	*rra $04                 ; $a267: 67 04
	ror $03                  ; $a269: 66 03
	*jam                     ; $a26b: 32
	ror $48                  ; $a26c: 66 48
	ora $69                  ; $a26e: 05 69
	*nop $45                 ; $a270: 04 45
	ror $4f                  ; $a272: 66 4f
	*sre $6848               ; $a274: 4f 48 68
	*nop $61                 ; $a277: 04 61
	*nop $61                 ; $a279: 44 61
	*slo ($32,x)             ; $a27b: 03 32
	adc $4a                  ; $a27d: 65 4a
	ora $67                  ; $a27f: 05 67
	ora $43                  ; $a281: 05 43
	ora ($64,x)              ; $a283: 01 64
	*sre $474f               ; $a285: 4f 4f 47
	adc #$04                 ; $a288: 69 04
	adc ($46,x)              ; $a28a: 61 46
	adc ($02,x)              ; $a28c: 61 02
	and ($66),y              ; $a28e: 31 66
	*alr #$06                ; $a290: 4b 06
	*rra $0a                 ; $a292: 67 0a
	*jam                     ; $a294: 62
	*sre $494f               ; $a295: 4f 4f 49
	adc #$02                 ; $a298: 69 02
	adc ($42,x)              ; $a29a: 61 42
	*jam                     ; $a29c: 02
	*jam                     ; $a29d: 42
	adc ($01,x)              ; $a29e: 61 01
	*jam                     ; $a2a0: 32
	adc $4d                  ; $a2a1: 65 4d
	ora $68                  ; $a2a3: 05 68
	ora #$4f                 ; $a2a5: 09 4f
entry_a2a7:
	*sre $674e               ; $a2a7: 4f 4e 67
	ora ($61,x)              ; $a2aa: 01 61
	*jam                     ; $a2ac: 42
	brk                      ; $a2ad: 00 Bank call: bank 0, Bank0_Func80
	.byte $80                ; $a2ae: 80 Function index
	.byte $00                ; $a2af: 00 Target bank
	*jam                     ; $a2b0: 12
	adc ($01,x)              ; $a2b1: 61 01
	and ($66),y              ; $a2b3: 31 66
	eor $35                  ; $a2b5: 45 35
	pha                      ; $a2b7: 48
	*arr #$03                ; $a2b8: 6b 03
	*sre $4f4f               ; $a2ba: 4f 4f 4f
	jmp ($0242)              ; $a2bd: 6c 42 02

; === Block $a2fa-$a303 (Code) ===
entry_a2fa:
	*sre $17                 ; $a2fa: 47 17
	*rla ($11),y             ; $a2fc: 33 11
	lsr $6a                  ; $a2fe: 46 6a
	*nop $6c,x               ; $a300: 34 6c
	*jam                     ; $a302: 42
	rti                      ; $a303: 40

; === Block $a536-$a596 (Code) ===
entry_a536:
	and $44                  ; $a536: 25 44
	adc ($02,x)              ; $a538: 61 02
	*rla ($02,x)             ; $a53a: 23 02
	pha                      ; $a53c: 48
	rol $31                  ; $a53d: 26 31
	*nop $36                 ; $a53f: 64 36
	*nop $25,x               ; $a541: 14 25
	*jam                     ; $a543: 62
	*nop $64,x               ; $a544: 34 64
	*jam                     ; $a546: 02
	eor ($03,x)              ; $a547: 41 03
	adc #$33                 ; $a549: 69 33
	*rra $2532               ; $a54b: 6f 32 25 PPUSTATUS
	*sre $01                 ; $a54e: 47 01
	rol $05                  ; $a550: 26 05
	*sre ($40,x)             ; $a552: 43 40
	bit $31                  ; $a554: 24 31
	*rra $36                 ; $a556: 67 36
	ora ($27),y              ; $a558: 11 27
	and $66,x                ; $a55a: 35 66
	*jam                     ; $a55c: 42
	*jam                     ; $a55d: 62
	*nop $67                 ; $a55e: 04 67
	and $69,x                ; $a560: 35 69
	and $24,x                ; $a562: 35 24
	eor #$22                 ; $a564: 49 22
	*nop $22,x               ; $a566: 34 22
	*nop $42                 ; $a568: 04 42
	*jam                     ; $a56a: 22
	and ($64),y              ; $a56b: 31 64
	*nop $33                 ; $a56d: 04 33
	*anc #$35                ; $a56f: 2b 35
	*nop $42                 ; $a571: 64 42
	*nop $05                 ; $a573: 64 05
	*rra $37                 ; $a575: 67 37
	*rra ($36,x)             ; $a577: 63 36
	rol $47                  ; $a579: 26 47
entry_a57b:
	*jam                     ; $a57b: 22
	*jam                     ; $a57c: 32
	adc ($32,x)              ; $a57d: 61 32
	and ($03,x)              ; $a57f: 21 03
	*nop $21                 ; $a581: 44 21
	and ($62),y              ; $a583: 31 62
	asl $2c                  ; $a585: 06 2c
	rol $64,x                ; $a587: 36 64
	*jam                     ; $a589: 42
	ror $05                  ; $a58a: 66 05
	*rra $3f                 ; $a58c: 67 3f
	bmi $a5b8                ; $a58e: 30 28
loc_a590:
	eor $22                  ; $a590: 45 22
	*jam                     ; $a592: 32
	*rra ($31,x)             ; $a593: 63 31
	*jam                     ; $a595: 22
	brk                      ; $a596: 00

; === Block $a563-$a566 (Code) ===
entry_a563:
	bit $49                  ; $a563: 24 49
	*jam                     ; $a565: 22

; === Block $a5b8-$a5be (Code) ===
loc_a5b8:
	ora #$62                 ; $a5b8: 09 62
	*rra $36,x               ; $a5ba: 77 36
	ror $25,x                ; $a5bc: 76 25

; === Block $a5be-$a5eb (Code) ===
entry_a5be:
	lsr $22                  ; $a5be: 46 22
	and ($64),y              ; $a5c0: 31 64
	*rla ($03),y             ; $a5c2: 33 03
	*sre ($23,x)             ; $a5c4: 43 23
	and ($09),y              ; $a5c6: 31 09
	*rla $35                 ; $a5c8: 27 35
	pla                      ; $a5ca: 68
	*sre ($64,x)             ; $a5cb: 43 64
	ora #$62                 ; $a5cd: 09 62
	sei                      ; $a5cf: 78
	*nop $78,x               ; $a5d0: 34 78
	*rla ($48,x)             ; $a5d2: 23 48
	*jam                     ; $a5d4: 22
	and ($63),y              ; $a5d5: 31 63
	and ($22),y              ; $a5d7: 31 22
	*jam                     ; $a5d9: 02
	*nop $24                 ; $a5da: 44 24
	ora #$28                 ; $a5dc: 09 28
	*rla ($68),y             ; $a5de: 33 68
	eor $64                  ; $a5e0: 45 64
	*slo $62                 ; $a5e2: 07 62
	*nop                     ; $a5e4: 7a
	*jam                     ; $a5e5: 32
	*nop                     ; $a5e6: 7a
	and ($49,x)              ; $a5e7: 21 49
entry_a5e9:
	*jam                     ; $a5e9: 22
	*jam                     ; $a5ea: 32
	rts                      ; $a5eb: 60

; === Block $a5f0-$a610 (Code) ===
entry_a5f0:
	*rla ($07,x)             ; $a5f0: 23 07
	*rla $34                 ; $a5f2: 27 34
	pla                      ; $a5f4: 68
	lsr $66                  ; $a5f5: 46 66
	ora $63                  ; $a5f7: 05 63
	*rra $4b78,x             ; $a5f9: 7f 78 4b
	*jam                     ; $a5fc: 22
	and ($60),y              ; $a5fd: 31 60
	and ($22),y              ; $a5ff: 31 22
	*jam                     ; $a601: 02
	eor $25                  ; $a602: 45 25
	ora $23                  ; $a604: 05 23
	*jam                     ; $a606: 42
	*rla $66,x               ; $a607: 37 66
	pha                      ; $a609: 48
	*rra $02                 ; $a60a: 67 02
	*nop $7a                 ; $a60c: 64 7a
	eor ($7a,x)              ; $a60e: 41 7a
	jmp $0328                ; $a610: 4c 28 03

; === Block $a62d-$a652 (Code) ===
entry_a62d:
	*rla ($71,x)             ; $a62d: 23 71
	lsr                      ; $a62f: 4a
	pha                      ; $a630: 48
	bit $25b0                ; $a631: 2c b0 25 PPUCTRL
	*nop $4f                 ; $a634: 64 4f
entry_a636:
	*nop $64                 ; $a636: 44 64
	*nop $4e4f,x             ; $a638: 7c 4f 4e
	and ($71,x)              ; $a63b: 21 71
	*alr #$4a                ; $a63d: 4b 4a
	and #$42                 ; $a63f: 29 42
	rol $4f                  ; $a641: 26 4f
	*alr #$7c                ; $a643: 4b 7c
	*sre $734f               ; $a645: 4f 4f 73
	*alr #$26                ; $a648: 4b 26
	*sre $484f               ; $a64a: 4f 4f 48
	adc $4f4f,y              ; $a64d: 79 4f 4f
	eor ($72,x)              ; $a650: 41 72
	jmp $9d5d                ; $a652: 4c 5d 9d

; === Block $a785-$a787 (Code) ===
loc_a785:
	sta $df                  ; $a785: 85 df
	jmp $eb3e                ; $a787: 4c 3e eb

; === Block $a788-$a79f (Code) ===
loc_a788:
	rol $adeb,x              ; $a788: 3e eb ad
	*nop $01                 ; $a78b: 04 01
	and #$0f                 ; $a78d: 29 0f
	jsr $e946                ; $a78f: 20 46 e9
loc_a792:
	jsr $dbe4                ; $a792: 20 e4 db
loc_a795:
	jsr $c7cb                ; $a795: 20 cb c7
loc_a798:
	sbc $dfa5                ; $a798: ed a5 df
	ora #$20                 ; $a79b: 09 20
	sta $df                  ; $a79d: 85 df
	jmp $eb1b                ; $a79f: 4c 1b eb

; === Block $a7a2-$a7a6 (Code) ===
loc_a7a2:
	cmp #$03                 ; $a7a2: c9 03
	beq $a7a9                ; $a7a4: f0 03
loc_a7a6:
	jmp $e87f                ; $a7a6: 4c 7f e8

; === Block $a7a9-$a7c9 (Code) ===
loc_a7a9:
	jsr $df77                ; $a7a9: 20 77 df
loc_a7ac:
	cpx #$01                 ; $a7ac: e0 01
	bne $a7bc                ; $a7ae: d0 0c
loc_a7b0:
	lda #$04                 ; $a7b0: a9 04
	jsr $a7a2                ; $a7b2: 20 a2 a7
loc_a7b5:
	jsr $c7cb                ; $a7b5: 20 cb c7
loc_a7b8:
	and $ce4c,x              ; $a7b8: 3d 4c ce
	sbc $20                  ; $a7bb: e5 20
	beq $a785                ; $a7bd: f0 c6
loc_a7bf:
	*slo $c9                 ; $a7bf: 07 c9
	*isc $08d0,x             ; $a7c1: ff d0 08
	lda #$04                 ; $a7c4: a9 04
	jsr $a7a2                ; $a7c6: 20 a2 a7
loc_a7c9:
	jmp $e5ce                ; $a7c9: 4c ce e5

; === Block $a7bc-$a7bf (Code) ===
loc_a7bc:
	jsr sub_c6f0             ; $a7bc: 20 f0 c6

; === Block $a7f8-$a818 (Code) ===
loc_a7f8:
	lda $0a                  ; $a7f8: a5 0a
	sta $99                  ; $a7fa: 85 99
	lda $0b                  ; $a7fc: a5 0b
	sta $9a                  ; $a7fe: 85 9a
	lda $23                  ; $a800: a5 23
	beq $a818                ; $a802: f0 14
loc_a804:
	cmp #$02                 ; $a804: c9 02
	beq $a818                ; $a806: f0 10
loc_a808:
	cmp #$03                 ; $a808: c9 03
	beq $a818                ; $a80a: f0 0c
loc_a80c:
	cmp #$04                 ; $a80c: c9 04
	beq $a818                ; $a80e: f0 08
loc_a810:
	cmp #$0b                 ; $a810: c9 0b
	beq $a818                ; $a812: f0 04
loc_a814:
	lda #$00                 ; $a814: a9 00
	beq $a81a                ; $a816: f0 02

; === Block $a813-$a846 (Code) ===
entry_a813:
	*nop $a9                 ; $a813: 04 a9
	brk                      ; $a815: 00 Bank call: bank 2, Bank2_Funcf0
	.byte $f0                ; $a816: f0 Function index
	.byte $02                ; $a817: 02 Target bank
	lda #$ff                 ; $a818: a9 ff
	sta $4d                  ; $a81a: 85 4d
	lda #$00                 ; $a81c: a9 00
	sta $23                  ; $a81e: 85 23
	sta $22                  ; $a820: 85 22
	lda $9d                  ; $a822: a5 9d
	sta $0f                  ; $a824: 85 0f
	lda $9e                  ; $a826: a5 9e
	sta $97                  ; $a828: 85 97
	jsr $a880                ; $a82a: 20 80 a8
loc_a82d:
	lda $99                  ; $a82d: a5 99
	clc                      ; $a82f: 18
	adc #$02                 ; $a830: 69 02
	sta $99                  ; $a832: 85 99
	bcc $a838                ; $a834: 90 02
loc_a836:
	inc $9a                  ; $a836: e6 9a
loc_a838:
	inc $22                  ; $a838: e6 22
	inc $22                  ; $a83a: e6 22
	inc $23                  ; $a83c: e6 23
	inc $0f                  ; $a83e: e6 0f
	inc $0f                  ; $a840: e6 0f
	dec $97                  ; $a842: c6 97
	bne $a82a                ; $a844: d0 e4
loc_a846:
	brk                      ; $a846: 00

; === Block $a869-$a87f (Code) ===
entry_a869:
	bpl $a7f8                ; $a869: 10 8d
loc_a86b:
	*lax $64                 ; $a86b: a7 64
	dec $10                  ; $a86d: c6 10
	dec $10                  ; $a86f: c6 10
	dec $98                  ; $a871: c6 98
	bne $a81c                ; $a873: d0 a7
loc_a875:
	lda $96                  ; $a875: a5 96
	beq $a87f                ; $a877: f0 06
loc_a879:
	jsr sub_ff74             ; $a879: 20 74 ff
loc_a87c:
	jsr $b6da                ; $a87c: 20 da b6
loc_a87f:
	rts                      ; $a87f: 60

; === Block $a880-$a890 (Code) ===
loc_a880:
	lda $4d                  ; $a880: a5 4d
	bne $a893                ; $a882: d0 0f
loc_a884:
	ldy #$00                 ; $a884: a0 00
	lda ($99),y              ; $a886: b1 99
	cmp #$ff                 ; $a888: c9 ff
	beq $a893                ; $a88a: f0 07
loc_a88c:
	cmp #$fe                 ; $a88c: c9 fe
	beq $a893                ; $a88e: f0 03
loc_a890:
	jmp $a8ad                ; $a890: 4c ad a8

; === Block $a893-$a8ac (Code) ===
loc_a893:
	lda #$00                 ; $a893: a9 00
	sta $4c                  ; $a895: 85 4c
	sta $d1                  ; $a897: 85 d1
	jsr $a921                ; $a899: 20 21 a9
loc_a89c:
	ldy #$00                 ; $a89c: a0 00
	lda #$ff                 ; $a89e: a9 ff
	sta ($99),y              ; $a8a0: 91 99
	iny                      ; $a8a2: c8
	sta ($99),y              ; $a8a3: 91 99
	ldy #$20                 ; $a8a5: a0 20
	sta ($99),y              ; $a8a7: 91 99
	iny                      ; $a8a9: c8
	sta ($99),y              ; $a8aa: 91 99
	rts                      ; $a8ac: 60

; === Block $a89d-$a89d (Code) ===
entry_a89d:
	brk                      ; $a89d: 00

; === Block $a8ad-$a8c4 (Code) ===
loc_a8ad:
	lda $4b                  ; $a8ad: a5 4b
	asl                      ; $a8af: 0a
	adc $10                  ; $a8b0: 65 10
	clc                      ; $a8b2: 18
	adc #$1e                 ; $a8b3: 69 1e
	sta $3c                  ; $a8b5: 85 3c
	lda #$1e                 ; $a8b7: a9 1e
	sta $3e                  ; $a8b9: 85 3e
	jsr $c1f0                ; $a8bb: 20 f0 c1
loc_a8be:
	lda $40                  ; $a8be: a5 40
	sta $3e                  ; $a8c0: 85 3e
	sta $49                  ; $a8c2: 85 49

; === Block $a8c1-$a920 (Code) ===
entry_a8c1:
	rol $4985,x              ; $a8c1: 3e 85 49
	lda $4a                  ; $a8c4: a5 4a
	asl                      ; $a8c6: 0a
	clc                      ; $a8c7: 18
	adc $0f                  ; $a8c8: 65 0f
	and #$3f                 ; $a8ca: 29 3f
	sta $3c                  ; $a8cc: 85 3c
	sta $48                  ; $a8ce: 85 48
	jsr $c5aa                ; $a8d0: 20 aa c5
loc_a8d3:
	ldx $22                  ; $a8d3: a6 22
	ldy #$00                 ; $a8d5: a0 00
	lda ($99),y              ; $a8d7: b1 99
	sta $6436,x              ; $a8d9: 9d 36 64
	iny                      ; $a8dc: c8
entry_a8dd:
	lda ($99),y              ; $a8dd: b1 99
	sta $6437,x              ; $a8df: 9d 37 64
	txa                      ; $a8e2: 8a
	clc                      ; $a8e3: 18
	adc $6008                ; $a8e4: 6d 08 60
	tax                      ; $a8e7: aa
	ldy #$20                 ; $a8e8: a0 20
	lda ($99),y              ; $a8ea: b1 99
	sta $6436,x              ; $a8ec: 9d 36 64
	iny                      ; $a8ef: c8
	lda ($99),y              ; $a8f0: b1 99
	sta $6437,x              ; $a8f2: 9d 37 64
	lda $48                  ; $a8f5: a5 48
	sta $3c                  ; $a8f7: 85 3c
	lda $49                  ; $a8f9: a5 49
	sta $3e                  ; $a8fb: 85 3e
	ldy #$00                 ; $a8fd: a0 00
	lda ($99),y              ; $a8ff: b1 99
	cmp #$c1                 ; $a901: c9 c1
	bcs $a909                ; $a903: b0 04
loc_a905:
	lda #$00                 ; $a905: a9 00
	beq $a91b                ; $a907: f0 12
loc_a909:
	cmp #$ca                 ; $a909: c9 ca
	bcs $a911                ; $a90b: b0 04
loc_a90d:
	lda #$01                 ; $a90d: a9 01
	bne $a91b                ; $a90f: d0 0a
loc_a911:
	cmp #$de                 ; $a911: c9 de
	bcs $a919                ; $a913: b0 04
loc_a915:
	lda #$02                 ; $a915: a9 02
	bne $a91b                ; $a917: d0 02
loc_a919:
	lda #$03                 ; $a919: a9 03
loc_a91b:
	ldx $23                  ; $a91b: a6 23
	sta $6496,x              ; $a91d: 9d 96 64
	rts                      ; $a920: 60

; === Block $a8d4-$a8d5 (Code) ===
entry_a8d4:
	*jam                     ; $a8d4: 22

; === Block $a908-$a909 (Code) ===
entry_a908:
	*jam                     ; $a908: 12

; === Block $a921-$a95c (Code) ===
loc_a921:
	lda $4b                  ; $a921: a5 4b
	asl                      ; $a923: 0a
	clc                      ; $a924: 18
	adc $10                  ; $a925: 65 10
	clc                      ; $a927: 18
	adc #$1e                 ; $a928: 69 1e
	sta $3c                  ; $a92a: 85 3c
	lda #$1e                 ; $a92c: a9 1e
	sta $3e                  ; $a92e: 85 3e
	jsr $c1f0                ; $a930: 20 f0 c1
loc_a933:
	lda $40                  ; $a933: a5 40
	sta $3e                  ; $a935: 85 3e
	sta $49                  ; $a937: 85 49
	lda $4a                  ; $a939: a5 4a
	asl                      ; $a93b: 0a
	clc                      ; $a93c: 18
	adc $0f                  ; $a93d: 65 0f
	and #$3f                 ; $a93f: 29 3f
	sta $3c                  ; $a941: 85 3c
	sta $48                  ; $a943: 85 48
	jsr $c5aa                ; $a945: 20 aa c5
loc_a948:
	lda $0f                  ; $a948: a5 0f
	asl                      ; $a94a: 0a
	lda $0f                  ; $a94b: a5 0f
	ror                      ; $a94d: 6a
	clc                      ; $a94e: 18
	adc $3a                  ; $a94f: 65 3a
	sta $3c                  ; $a951: 85 3c
	lda $10                  ; $a953: a5 10
	asl                      ; $a955: 0a
	lda $10                  ; $a956: a5 10
	ror                      ; $a958: 6a
	clc                      ; $a959: 18
	adc $3b                  ; $a95a: 65 3b

; === Block $a95c-$a972 (Code) ===
entry_a95c:
	sta $3e                  ; $a95c: 85 3e
	jsr $ac17                ; $a95e: 20 17 ac
loc_a961:
	lda $16                  ; $a961: a5 16
	cmp #$20                 ; $a963: c9 20
	bne $a9cd                ; $a965: d0 66
loc_a967:
	lda $0f                  ; $a967: a5 0f
	bpl $a975                ; $a969: 10 0a
loc_a96b:
	eor #$ff                 ; $a96b: 49 ff
	clc                      ; $a96d: 18
	adc #$01                 ; $a96e: 69 01
	sta $3e                  ; $a970: 85 3e
	jmp $a979                ; $a972: 4c 79 a9

; === Block $a975-$a9a4 (Code) ===
loc_a975:
	lda $0f                  ; $a975: a5 0f
	sta $3e                  ; $a977: 85 3e
loc_a979:
	lda $d0                  ; $a979: a5 d0
	cmp $3e                  ; $a97b: c5 3e
	bcs $a989                ; $a97d: b0 0a
loc_a97f:
	lda #$16                 ; $a97f: a9 16
	sta $3c                  ; $a981: 85 3c
	lda #$00                 ; $a983: a9 00
	sta $4c                  ; $a985: 85 4c
	beq $a9e6                ; $a987: f0 5d
loc_a989:
	bne $a999                ; $a989: d0 0e
loc_a98b:
	lda $0f                  ; $a98b: a5 0f
	bpl $a995                ; $a98d: 10 06
loc_a98f:
	lda #$05                 ; $a98f: a9 05
	sta $4c                  ; $a991: 85 4c
	bne $a999                ; $a993: d0 04
loc_a995:
	lda #$0a                 ; $a995: a9 0a
	sta $4c                  ; $a997: 85 4c
loc_a999:
	lda $10                  ; $a999: a5 10
	bpl $a9a7                ; $a99b: 10 0a
loc_a99d:
	eor #$ff                 ; $a99d: 49 ff
	clc                      ; $a99f: 18
	adc #$01                 ; $a9a0: 69 01
	sta $3e                  ; $a9a2: 85 3e
	jmp $a9ab                ; $a9a4: 4c ab a9

; === Block $a9a7-$a9cd (Code) ===
loc_a9a7:
	lda $10                  ; $a9a7: a5 10
	sta $3e                  ; $a9a9: 85 3e
loc_a9ab:
	lda $d0                  ; $a9ab: a5 d0
	cmp $3e                  ; $a9ad: c5 3e
	bcs $a9bb                ; $a9af: b0 0a
loc_a9b1:
	lda #$16                 ; $a9b1: a9 16
	sta $3c                  ; $a9b3: 85 3c
	lda #$00                 ; $a9b5: a9 00
	sta $4c                  ; $a9b7: 85 4c
	beq $a9e6                ; $a9b9: f0 2b
loc_a9bb:
	bne $a9e6                ; $a9bb: d0 29
loc_a9bd:
	lda $10                  ; $a9bd: a5 10
	bpl $a9c7                ; $a9bf: 10 06
loc_a9c1:
	lda #$03                 ; $a9c1: a9 03
	sta $4c                  ; $a9c3: 85 4c
	bne $a9e6                ; $a9c5: d0 1f
loc_a9c7:
	lda #$0c                 ; $a9c7: a9 0c
	sta $4c                  ; $a9c9: 85 4c
	bne $a9e6                ; $a9cb: d0 19

; === Block $a9cd-$aa3c (Code) ===
loc_a9cd:
	jsr $aae1                ; $a9cd: 20 e1 aa
loc_a9d0:
	lda $19                  ; $a9d0: a5 19
	eor $3d                  ; $a9d2: 45 3d
	and #$08                 ; $a9d4: 29 08
	beq $a9e6                ; $a9d6: f0 0e
loc_a9d8:
	lda $19                  ; $a9d8: a5 19
	bne $a9e2                ; $a9da: d0 06
loc_a9dc:
	lda #$15                 ; $a9dc: a9 15
	sta $3c                  ; $a9de: 85 3c
	bne $a9e6                ; $a9e0: d0 04
loc_a9e2:
	lda #$16                 ; $a9e2: a9 16
	sta $3c                  ; $a9e4: 85 3c
loc_a9e6:
	lda $3c                  ; $a9e6: a5 3c
	asl                      ; $a9e8: 0a
	asl                      ; $a9e9: 0a
	adc $3c                  ; $a9ea: 65 3c
	adc $f5b3                ; $a9ec: 6d b3 f5
	sta $40                  ; $a9ef: 85 40
	lda $f5b4                ; $a9f1: ad b4 f5
	adc #$00                 ; $a9f4: 69 00
	sta $41                  ; $a9f6: 85 41
	ldx $22                  ; $a9f8: a6 22
	ldy #$00                 ; $a9fa: a0 00
	lda ($40),y              ; $a9fc: b1 40
	sta $6436,x              ; $a9fe: 9d 36 64
	iny                      ; $aa01: c8
	lda ($40),y              ; $aa02: b1 40
	sta $6437,x              ; $aa04: 9d 37 64
	txa                      ; $aa07: 8a
	clc                      ; $aa08: 18
	adc $6008                ; $aa09: 6d 08 60
	tax                      ; $aa0c: aa
	lda $0a                  ; $aa0d: a5 0a
	clc                      ; $aa0f: 18
	adc #$1e                 ; $aa10: 69 1e
	sta $0a                  ; $aa12: 85 0a
	bcc $aa18                ; $aa14: 90 02
loc_aa16:
	inc $0b                  ; $aa16: e6 0b
loc_aa18:
	iny                      ; $aa18: c8
	lda ($40),y              ; $aa19: b1 40
	sta $6436,x              ; $aa1b: 9d 36 64
	iny                      ; $aa1e: c8
	lda ($40),y              ; $aa1f: b1 40
	sta $6437,x              ; $aa21: 9d 37 64
	iny                      ; $aa24: c8
	lda $48                  ; $aa25: a5 48
	sta $3c                  ; $aa27: 85 3c
	lda $49                  ; $aa29: a5 49
	sta $3e                  ; $aa2b: 85 3e
	lda ($40),y              ; $aa2d: b1 40
	sta $08                  ; $aa2f: 85 08
	lda $d1                  ; $aa31: a5 d1
	bne $aa3c                ; $aa33: d0 07
loc_aa35:
	ldx $23                  ; $aa35: a6 23
	lda $08                  ; $aa37: a5 08
	sta $6496,x              ; $aa39: 9d 96 64
loc_aa3c:
	rts                      ; $aa3c: 60

; === Block $aabe-$aae1 (Code) ===
loc_aabe:
	lda $13                  ; $aabe: a5 13
	clc                      ; $aac0: 18
	adc #$01                 ; $aac1: 69 01
	lsr                      ; $aac3: 4a
	sta $3c                  ; $aac4: 85 3c
	lda #$00                 ; $aac6: a9 00
	sta $3d                  ; $aac8: 85 3d
	sta $3f                  ; $aaca: 85 3f
	lda $43                  ; $aacc: a5 43
	sta $3e                  ; $aace: 85 3e
	jsr $c1c9                ; $aad0: 20 c9 c1
loc_aad3:
	lda $42                  ; $aad3: a5 42
	lsr                      ; $aad5: 4a
	clc                      ; $aad6: 18
	adc $40                  ; $aad7: 65 40
	sta $3e                  ; $aad9: 85 3e
	lda $41                  ; $aadb: a5 41
	adc #$00                 ; $aadd: 69 00
	sta $3f                  ; $aadf: 85 3f

; === Block $aae1-$aaeb (Code) ===
loc_aae1:
	lda $17                  ; $aae1: a5 17
	ora $18                  ; $aae3: 05 18
	bne $aaec                ; $aae5: d0 05
loc_aae7:
	lda #$00                 ; $aae7: a9 00
	sta $3d                  ; $aae9: 85 3d
	rts                      ; $aaeb: 60

; === Block $aaec-$ab23 (Code) ===
loc_aaec:
	lda $13                  ; $aaec: a5 13
	cmp $42                  ; $aaee: c5 42
	bcc $aae7                ; $aaf0: 90 f5
loc_aaf2:
	lda $14                  ; $aaf2: a5 14
	cmp $43                  ; $aaf4: c5 43
	bcc $aae7                ; $aaf6: 90 ef
loc_aaf8:
	lda $3e                  ; $aaf8: a5 3e
	clc                      ; $aafa: 18
	adc $17                  ; $aafb: 65 17
	sta $3e                  ; $aafd: 85 3e
	lda $3f                  ; $aaff: a5 3f
	adc $18                  ; $ab01: 65 18
	sta $3f                  ; $ab03: 85 3f
	tya                      ; $ab05: 98
	pha                      ; $ab06: 48
	ldy #$00                 ; $ab07: a0 00
	lda ($3e),y              ; $ab09: b1 3e
	sta $3d                  ; $ab0b: 85 3d
	pla                      ; $ab0d: 68
	tay                      ; $ab0e: a8
	lda $42                  ; $ab0f: a5 42
	and #$01                 ; $ab11: 29 01
	bne $ab1d                ; $ab13: d0 08
loc_ab15:
	lsr $3d                  ; $ab15: 46 3d
	lsr $3d                  ; $ab17: 46 3d
	lsr $3d                  ; $ab19: 46 3d
	lsr $3d                  ; $ab1b: 46 3d
loc_ab1d:
	lda $3d                  ; $ab1d: a5 3d
	and #$08                 ; $ab1f: 29 08
	sta $3d                  ; $ab21: 85 3d
	rts                      ; $ab23: 60

; === Block $ab24-$ab6d (Code) ===
loc_ab24:
	tax                      ; $ab24: aa
	pha                      ; $ab25: 48
	ldx #$00                 ; $ab26: a2 00
	ldy $3c                  ; $ab28: a4 3c
	sty $2c                  ; $ab2a: 84 2c
	cpy #$77                 ; $ab2c: c0 77
	beq $ab36                ; $ab2e: f0 06
loc_ab30:
	iny                      ; $ab30: c8
	sty $3c                  ; $ab31: 84 3c
	jsr $abf4                ; $ab33: 20 f4 ab
loc_ab36:
	beq $ab3d                ; $ab36: f0 05
loc_ab38:
	txa                      ; $ab38: 8a
	clc                      ; $ab39: 18
	adc #$04                 ; $ab3a: 69 04
	tax                      ; $ab3c: aa
loc_ab3d:
	ldy $2c                  ; $ab3d: a4 2c
	beq $ab47                ; $ab3f: f0 06
loc_ab41:
	dey                      ; $ab41: 88
	sty $3c                  ; $ab42: 84 3c
	jsr $abf4                ; $ab44: 20 f4 ab
loc_ab47:
	beq $ab4b                ; $ab47: f0 02
loc_ab49:
	inx                      ; $ab49: e8
	inx                      ; $ab4a: e8
loc_ab4b:
	lda $2c                  ; $ab4b: a5 2c
	sta $3c                  ; $ab4d: 85 3c
	ldy $3e                  ; $ab4f: a4 3e
	beq $ab58                ; $ab51: f0 05
loc_ab53:
	dey                      ; $ab53: 88
	tya                      ; $ab54: 98
	jsr $abe8                ; $ab55: 20 e8 ab
loc_ab58:
	beq $ab5b                ; $ab58: f0 01
loc_ab5a:
	inx                      ; $ab5a: e8
loc_ab5b:
	ldy $3e                  ; $ab5b: a4 3e
	cpy #$77                 ; $ab5d: c0 77
	beq $ab66                ; $ab5f: f0 05
loc_ab61:
	iny                      ; $ab61: c8
	tya                      ; $ab62: 98
	jsr $abe8                ; $ab63: 20 e8 ab
loc_ab66:
	beq $ab6d                ; $ab66: f0 05
loc_ab68:
	txa                      ; $ab68: 8a
	clc                      ; $ab69: 18
	adc #$08                 ; $ab6a: 69 08
	tax                      ; $ab6c: aa

; === Block $ab6d-$ab76 (Code) ===
loc_ab6d:
	lda $99f0,x              ; $ab6d: bd f0 99
	sta $3c                  ; $ab70: 85 3c
	pla                      ; $ab72: 68
	tax                      ; $ab73: aa
	pla                      ; $ab74: 68
	tay                      ; $ab75: a8
	rts                      ; $ab76: 60

; === Block $ab77-$aba0 (Code) ===
loc_ab77:
	tya                      ; $ab77: 98
	pha                      ; $ab78: 48
	txa                      ; $ab79: 8a
	pha                      ; $ab7a: 48
	ldx #$00                 ; $ab7b: a2 00
	lda $45                  ; $ab7d: a5 45
	cmp #$01                 ; $ab7f: c9 01
	bne $abdf                ; $ab81: d0 5c
loc_ab83:
	lda $3e                  ; $ab83: a5 3e
	bmi $abb1                ; $ab85: 30 2a
loc_ab87:
	cmp #$78                 ; $ab87: c9 78
	bcs $abb1                ; $ab89: b0 26
loc_ab8b:
	lda $3c                  ; $ab8b: a5 3c
	cmp #$ff                 ; $ab8d: c9 ff
	beq $aba3                ; $ab8f: f0 12
loc_ab91:
	cmp #$78                 ; $ab91: c9 78
	bne $abb1                ; $ab93: d0 1c
loc_ab95:
	dec $3c                  ; $ab95: c6 3c
	lda $3e                  ; $ab97: a5 3e
	jsr $abe8                ; $ab99: 20 e8 ab
loc_ab9c:
	beq $aba0                ; $ab9c: f0 02
loc_ab9e:
	ldx #$02                 ; $ab9e: a2 02
loc_aba0:
	jmp $ab6d                ; $aba0: 4c 6d ab

; === Block $aba3-$abae (Code) ===
loc_aba3:
	inc $3c                  ; $aba3: e6 3c
	lda $3e                  ; $aba5: a5 3e
	jsr $abe8                ; $aba7: 20 e8 ab
loc_abaa:
	beq $abae                ; $abaa: f0 02
loc_abac:
	ldx #$04                 ; $abac: a2 04
loc_abae:
	jmp $ab6d                ; $abae: 4c 6d ab

; === Block $abb1-$abb5 (Code) ===
loc_abb1:
	lda $3c                  ; $abb1: a5 3c
	bmi $abdf                ; $abb3: 30 2a

; === Block $abb4-$abce (Code) ===
entry_abb4:
	rol                      ; $abb4: 2a
	cmp #$78                 ; $abb5: c9 78
	bcs $abdf                ; $abb7: b0 26
loc_abb9:
	lda $3e                  ; $abb9: a5 3e
	cmp #$ff                 ; $abbb: c9 ff
	beq $abd1                ; $abbd: f0 12
loc_abbf:
	cmp #$78                 ; $abbf: c9 78
	bne $abdf                ; $abc1: d0 1c
loc_abc3:
	dec $3e                  ; $abc3: c6 3e
	lda $3e                  ; $abc5: a5 3e
	jsr $abe8                ; $abc7: 20 e8 ab
loc_abca:
	beq $abce                ; $abca: f0 02
loc_abcc:
	ldx #$01                 ; $abcc: a2 01
loc_abce:
	jmp $ab6d                ; $abce: 4c 6d ab

; === Block $abbc-$abbf (Code) ===
entry_abbc:
	*isc $12f0,x             ; $abbc: ff f0 12

; === Block $abd1-$abdc (Code) ===
loc_abd1:
	inc $3e                  ; $abd1: e6 3e
	lda $3e                  ; $abd3: a5 3e
	jsr $abe8                ; $abd5: 20 e8 ab
loc_abd8:
	beq $abdc                ; $abd8: f0 02
loc_abda:
	ldx #$08                 ; $abda: a2 08
loc_abdc:
	jmp $ab6d                ; $abdc: 4c 6d ab

; === Block $abdf-$abe7 (Code) ===
loc_abdf:
	lda $15                  ; $abdf: a5 15
	sta $3c                  ; $abe1: 85 3c
	pla                      ; $abe3: 68
	tax                      ; $abe4: aa
	pla                      ; $abe5: 68
	tay                      ; $abe6: a8
	rts                      ; $abe7: 60

; === Block $abe8-$ac08 (Code) ===
loc_abe8:
	asl                      ; $abe8: 0a
	tay                      ; $abe9: a8
	lda $a653,y              ; $abea: b9 53 a6
	sta $40                  ; $abed: 85 40
	lda $a654,y              ; $abef: b9 54 a6
	sta $41                  ; $abf2: 85 41
	ldy #$00                 ; $abf4: a0 00
	sty $3d                  ; $abf6: 84 3d
	lda ($40),y              ; $abf8: b1 40
	and #$0f                 ; $abfa: 29 0f
	sec                      ; $abfc: 38
	adc $3d                  ; $abfd: 65 3d
	sta $3d                  ; $abff: 85 3d
	lda $3c                  ; $ac01: a5 3c
	cmp $3d                  ; $ac03: c5 3d
	bcc $ac0b                ; $ac05: 90 04
loc_ac07:
	iny                      ; $ac07: c8
	jmp $abf8                ; $ac08: 4c f8 ab

; === Block $ac0b-$ac13 (Code) ===
loc_ac0b:
	lda ($40),y              ; $ac0b: b1 40
	and #$f0                 ; $ac0d: 29 f0
	cmp #$40                 ; $ac0f: c9 40
	bne $ac14                ; $ac11: d0 01
loc_ac13:
	rts                      ; $ac13: 60

; === Block $ac14-$ac16 (Code) ===
loc_ac14:
	cmp #$b0                 ; $ac14: c9 b0
	rts                      ; $ac16: 60

; === Block $ac17-$ac25 (Code) ===
loc_ac17:
	lda $3c                  ; $ac17: a5 3c
	sta $42                  ; $ac19: 85 42
	lda $3e                  ; $ac1b: a5 3e
	sta $43                  ; $ac1d: 85 43
	lda $13                  ; $ac1f: a5 13
	cmp $3c                  ; $ac21: c5 3c
	bcs $ac28                ; $ac23: b0 03
loc_ac25:
	jmp $ab77                ; $ac25: 4c 77 ab

; === Block $ac17-$ac19 (Code) ===
loc_ac17:
	bne $ac1a                ; $ac17: d0 01
loc_ac19:
	rts                      ; $ac19: 60

; === Block $ac1a-$ac20 (Code) ===
loc_ac1a:
	jsr $c7cb                ; $ac1a: 20 cb c7
loc_ac1d:
	nop                      ; $ac1d: ea
	pla                      ; $ac1e: 68
	pla                      ; $ac1f: 68
	jmp $e5ce                ; $ac20: 4c ce e5

; === Block $ac28-$ac32 (Code) ===
loc_ac28:
	lda $e0                  ; $ac28: a5 e0
	cmp #$27                 ; $ac2a: c9 27
	bne $ac33                ; $ac2c: d0 05
loc_ac2e:
	lda #$16                 ; $ac2e: a9 16
	sta $3c                  ; $ac30: 85 3c
	rts                      ; $ac32: 60

; === Block $ac33-$ac59 (Code) ===
loc_ac33:
	lda $14                  ; $ac33: a5 14
	cmp $3e                  ; $ac35: c5 3e
	bcc $ac25                ; $ac37: 90 ec
loc_ac39:
	tya                      ; $ac39: 98
	pha                      ; $ac3a: 48
	lda $45                  ; $ac3b: a5 45
	cmp #$01                 ; $ac3d: c9 01
	bne $ac98                ; $ac3f: d0 57
loc_ac41:
	lda $3c                  ; $ac41: a5 3c
	cmp #$40                 ; $ac43: c9 40
	bne $ac5a                ; $ac45: d0 13
loc_ac47:
	lda $3e                  ; $ac47: a5 3e
	cmp #$31                 ; $ac49: c9 31
	bne $ac5a                ; $ac4b: d0 0d
loc_ac4d:
	lda $cf                  ; $ac4d: a5 cf
	and #$08                 ; $ac4f: 29 08
	beq $ac5a                ; $ac51: f0 07
loc_ac53:
	lda #$0a                 ; $ac53: a9 0a
	sta $3c                  ; $ac55: 85 3c
	pla                      ; $ac57: 68
	tay                      ; $ac58: a8
	rts                      ; $ac59: 60

; === Block $ac5a-$ac6c (Code) ===
loc_ac5a:
	lda $3e                  ; $ac5a: a5 3e
	asl                      ; $ac5c: 0a
	tay                      ; $ac5d: a8
	lda $a653,y              ; $ac5e: b9 53 a6
	sta $40                  ; $ac61: 85 40
	lda $a654,y              ; $ac63: b9 54 a6
	sta $41                  ; $ac66: 85 41
	ldy #$00                 ; $ac68: a0 00
	sty $3d                  ; $ac6a: 84 3d

; === Block $ac6c-$ac73 (Code) ===
loc_ac6c:
	lda ($40),y              ; $ac6c: b1 40
	and #$0f                 ; $ac6e: 29 0f
	sec                      ; $ac70: 38
	adc $3d                  ; $ac71: 65 3d

; === Block $ac73-$ac7c (Code) ===
entry_ac73:
	sta $3d                  ; $ac73: 85 3d
	lda $3c                  ; $ac75: a5 3c
	cmp $3d                  ; $ac77: c5 3d
	bcc $ac7f                ; $ac79: 90 04
loc_ac7b:
	iny                      ; $ac7b: c8
	jmp $ac6c                ; $ac7c: 4c 6c ac

; === Block $ac7f-$ac8c (Code) ===
loc_ac7f:
	lda ($40),y              ; $ac7f: b1 40
	lsr                      ; $ac81: 4a
	lsr                      ; $ac82: 4a
	lsr                      ; $ac83: 4a
	lsr                      ; $ac84: 4a
	clc                      ; $ac85: 18
	adc $16                  ; $ac86: 65 16
	cmp #$04                 ; $ac88: c9 04
	bne $ac8f                ; $ac8a: d0 03
loc_ac8c:
	jmp $ab24                ; $ac8c: 4c 24 ab

; === Block $ac8f-$ac97 (Code) ===
loc_ac8f:
	tay                      ; $ac8f: a8
	lda $99e3,y              ; $ac90: b9 e3 99
	sta $3c                  ; $ac93: 85 3c
	pla                      ; $ac95: 68
	tay                      ; $ac96: a8
	rts                      ; $ac97: 60

; === Block $ac98-$ad03 (Code) ===
loc_ac98:
	lda #$00                 ; $ac98: a9 00
	sta $3d                  ; $ac9a: 85 3d
	sta $3f                  ; $ac9c: 85 3f
	lda $13                  ; $ac9e: a5 13
	lsr                      ; $aca0: 4a
	adc #$00                 ; $aca1: 69 00
	sta $3c                  ; $aca3: 85 3c
	jsr $c1c9                ; $aca5: 20 c9 c1
loc_aca8:
	lda $42                  ; $aca8: a5 42
	lsr                      ; $acaa: 4a
	clc                      ; $acab: 18
	adc $40                  ; $acac: 65 40
	sta $40                  ; $acae: 85 40
	sta $3e                  ; $acb0: 85 3e
	lda $41                  ; $acb2: a5 41
	adc #$00                 ; $acb4: 69 00
	sta $41                  ; $acb6: 85 41
	sta $3f                  ; $acb8: 85 3f
	lda $40                  ; $acba: a5 40
	clc                      ; $acbc: 18
	adc $11                  ; $acbd: 65 11
	sta $40                  ; $acbf: 85 40
	lda $41                  ; $acc1: a5 41
	adc $12                  ; $acc3: 65 12
	sta $41                  ; $acc5: 85 41
	ldy #$00                 ; $acc7: a0 00
	lda ($40),y              ; $acc9: b1 40
	sta $3c                  ; $accb: 85 3c
	lda $42                  ; $accd: a5 42
	lsr                      ; $accf: 4a
	bcs $acda                ; $acd0: b0 08
loc_acd2:
	lsr $3c                  ; $acd2: 46 3c
	lsr $3c                  ; $acd4: 46 3c
	lsr $3c                  ; $acd6: 46 3c
	lsr $3c                  ; $acd8: 46 3c
loc_acda:
	lda $45                  ; $acda: a5 45
	cmp #$0c                 ; $acdc: c9 0c
	bcc $ace4                ; $acde: 90 04
loc_ace0:
	lda #$07                 ; $ace0: a9 07
	bne $ace6                ; $ace2: d0 02
loc_ace4:
	lda #$0f                 ; $ace4: a9 0f
loc_ace6:
	and $3c                  ; $ace6: 25 3c
	clc                      ; $ace8: 18
	adc $16                  ; $ace9: 65 16
	tay                      ; $aceb: a8
	lda $99f0,y              ; $acec: b9 f0 99
	sta $3c                  ; $acef: 85 3c
	cmp #$17                 ; $acf1: c9 17
	bne $ad01                ; $acf3: d0 0c
loc_acf5:
	lda $df                  ; $acf5: a5 df
	and #$03                 ; $acf7: 29 03
	beq $ad3c                ; $acf9: f0 41
loc_acfb:
	lda #$04                 ; $acfb: a9 04
	sta $3c                  ; $acfd: 85 3c
	bne $ad3c                ; $acff: d0 3b
loc_ad01:
	cmp #$05                 ; $ad01: c9 05

; === Block $ad00-$ad3e (Code) ===
entry_ad00:
	*rla $05c9,y             ; $ad00: 3b c9 05
	bne $ad23                ; $ad03: d0 1e
loc_ad05:
	lda $45                  ; $ad05: a5 45
	cmp #$02                 ; $ad07: c9 02
	bne $ad3c                ; $ad09: d0 31
loc_ad0b:
	lda $42                  ; $ad0b: a5 42
	cmp #$0a                 ; $ad0d: c9 0a
entry_ad0f:
	bne $ad3c                ; $ad0f: d0 2b
loc_ad11:
	lda $43                  ; $ad11: a5 43
	cmp #$01                 ; $ad13: c9 01
	bne $ad3c                ; $ad15: d0 25
loc_ad17:
	lda $cf                  ; $ad17: a5 cf
	and #$04                 ; $ad19: 29 04
	bne $ad3c                ; $ad1b: d0 1f
loc_ad1d:
	lda #$0d                 ; $ad1d: a9 0d
	sta $3c                  ; $ad1f: 85 3c
	bne $ad3c                ; $ad21: d0 19
loc_ad23:
	cmp #$0c                 ; $ad23: c9 0c
	bne $ad45                ; $ad25: d0 1e
loc_ad27:
	ldy #$00                 ; $ad27: a0 00
	lda $42                  ; $ad29: a5 42
	cmp $601c,y              ; $ad2b: d9 1c 60
	bne $ad3f                ; $ad2e: d0 0f
loc_ad30:
	iny                      ; $ad30: c8
	lda $43                  ; $ad31: a5 43
	cmp $601c,y              ; $ad33: d9 1c 60
	bne $ad40                ; $ad36: d0 08
loc_ad38:
	lda #$04                 ; $ad38: a9 04
	sta $3c                  ; $ad3a: 85 3c
loc_ad3c:
	pla                      ; $ad3c: 68
	tay                      ; $ad3d: a8
	rts                      ; $ad3e: 60

; === Block $ad26-$ad29 (Code) ===
entry_ad26:
	asl $00a0,x              ; $ad26: 1e a0 00

; === Block $ad3f-$ad45 (Code) ===
loc_ad3f:
	iny                      ; $ad3f: c8
loc_ad40:
	iny                      ; $ad40: c8
	cpy #$10                 ; $ad41: c0 10
	bne $ad29                ; $ad43: d0 e4

; === Block $ad40-$ad4a (Code) ===
loc_ad40:
	jsr sub_ff74             ; $ad40: 20 74 ff
loc_ad43:
	lda $c5                  ; $ad43: a5 c5
	beq $ad4d                ; $ad45: f0 06
loc_ad47:
	jsr sub_ff74             ; $ad47: 20 74 ff
loc_ad4a:
	jmp $ed56                ; $ad4a: 4c 56 ed

; === Block $ad45-$adb0 (Code) ===
loc_ad45:
	lda $3c                  ; $ad45: a5 3c
	cmp #$11                 ; $ad47: c9 11
	bne $ad3c                ; $ad49: d0 f1
loc_ad4b:
	ldy #$00                 ; $ad4b: a0 00
	lda $42                  ; $ad4d: a5 42
	cmp $600c,y              ; $ad4f: d9 0c 60
	bne $ad5e                ; $ad52: d0 0a
loc_ad54:
	iny                      ; $ad54: c8
	lda $43                  ; $ad55: a5 43
	cmp $600c,y              ; $ad57: d9 0c 60
	bne $ad5f                ; $ad5a: d0 03
loc_ad5c:
	beq $ad38                ; $ad5c: f0 da
loc_ad5e:
	iny                      ; $ad5e: c8
loc_ad5f:
	iny                      ; $ad5f: c8
	cpy #$10                 ; $ad60: c0 10
	bne $ad4d                ; $ad62: d0 e9
loc_ad64:
	beq $ad3c                ; $ad64: f0 d6
loc_ad66:
	lda $4b                  ; $ad66: a5 4b
	asl                      ; $ad68: 0a
	clc                      ; $ad69: 18
	adc $10                  ; $ad6a: 65 10
	clc                      ; $ad6c: 18
	adc #$1e                 ; $ad6d: 69 1e
	sta $3c                  ; $ad6f: 85 3c
	lda #$1e                 ; $ad71: a9 1e
	sta $3e                  ; $ad73: 85 3e
	jsr $c1f0                ; $ad75: 20 f0 c1
loc_ad78:
	lda $40                  ; $ad78: a5 40
	sta $3e                  ; $ad7a: 85 3e
	sta $49                  ; $ad7c: 85 49
	lda $4a                  ; $ad7e: a5 4a
	asl                      ; $ad80: 0a
	clc                      ; $ad81: 18
	adc $0f                  ; $ad82: 65 0f
	and #$3f                 ; $ad84: 29 3f
	sta $3c                  ; $ad86: 85 3c
	sta $48                  ; $ad88: 85 48
	jsr $c5aa                ; $ad8a: 20 aa c5
loc_ad8d:
	lda $0f                  ; $ad8d: a5 0f
	asl                      ; $ad8f: 0a
	lda $0f                  ; $ad90: a5 0f
	ror                      ; $ad92: 6a
	clc                      ; $ad93: 18
	adc $3a                  ; $ad94: 65 3a
	sta $3c                  ; $ad96: 85 3c
	lda $10                  ; $ad98: a5 10
	asl                      ; $ad9a: 0a
	lda $10                  ; $ad9b: a5 10
	ror                      ; $ad9d: 6a
	clc                      ; $ad9e: 18
	adc $3b                  ; $ad9f: 65 3b
	sta $3e                  ; $ada1: 85 3e
	jsr $ac17                ; $ada3: 20 17 ac
loc_ada6:
	lda $16                  ; $ada6: a5 16
	cmp #$20                 ; $ada8: c9 20
	bne $ae12                ; $adaa: d0 66
loc_adac:
	lda $0f                  ; $adac: a5 0f
	bpl $adba                ; $adae: 10 0a

; === Block $ad4d-$ad63 (Code) ===
loc_ad4d:
	lda $e0                  ; $ad4d: a5 e0
	cmp #$27                 ; $ad4f: c9 27
	beq $ad56                ; $ad51: f0 03
loc_ad53:
	jsr $ee14                ; $ad53: 20 14 ee
loc_ad56:
	lda $42                  ; $ad56: a5 42
	and #$01                 ; $ad58: 29 01
	bne $ad66                ; $ad5a: d0 0a
loc_ad5c:
	lda $0f                  ; $ad5c: a5 0f
	clc                      ; $ad5e: 18
	adc #$02                 ; $ad5f: 69 02
	sta $05                  ; $ad61: 85 05
	jmp $ed6d                ; $ad63: 4c 6d ed

; === Block $ad66-$ad94 (Code) ===
loc_ad66:
	lda $10                  ; $ad66: a5 10
	clc                      ; $ad68: 18
	adc #$02                 ; $ad69: 69 02
	sta $07                  ; $ad6b: 85 07
	lda $e0                  ; $ad6d: a5 e0
	cmp #$27                 ; $ad6f: c9 27
	bne $ad7b                ; $ad71: d0 08
loc_ad73:
	lda $0f                  ; $ad73: a5 0f
	sta $05                  ; $ad75: 85 05
	lda $10                  ; $ad77: a5 10
	sta $07                  ; $ad79: 85 07
loc_ad7b:
	jsr sub_ff74             ; $ad7b: 20 74 ff
loc_ad7e:
	jsr $ee28                ; $ad7e: 20 28 ee
loc_ad81:
	lda $0f                  ; $ad81: a5 0f
	sta $05                  ; $ad83: 85 05
	lda $10                  ; $ad85: a5 10
	sta $07                  ; $ad87: 85 07
	dec $42                  ; $ad89: c6 42
	bne $ad40                ; $ad8b: d0 b3
loc_ad8d:
	jsr $c7cb                ; $ad8d: 20 cb c7
loc_ad90:
	*nop                     ; $ad90: fa
	jsr sub_c6f0             ; $ad91: 20 f0 c6
loc_ad94:
	brk                      ; $ad94: 00

; === Block $adb0-$adb7 (Code) ===
entry_adb0:
	eor #$ff                 ; $adb0: 49 ff
	clc                      ; $adb2: 18
	adc #$01                 ; $adb3: 69 01
	sta $3e                  ; $adb5: 85 3e
	jmp $adbe                ; $adb7: 4c be ad

; === Block $adba-$adbe (Code) ===
loc_adba:
	lda $0f                  ; $adba: a5 0f
	sta $3e                  ; $adbc: 85 3e

; === Block $adbe-$ade9 (Code) ===
loc_adbe:
	lda $d0                  ; $adbe: a5 d0
	cmp $3e                  ; $adc0: c5 3e
	bcs $adce                ; $adc2: b0 0a
loc_adc4:
	lda #$16                 ; $adc4: a9 16
	sta $3c                  ; $adc6: 85 3c
	lda #$00                 ; $adc8: a9 00
	sta $4c                  ; $adca: 85 4c
	beq $ae2b                ; $adcc: f0 5d
loc_adce:
	bne $adde                ; $adce: d0 0e
loc_add0:
	lda $0f                  ; $add0: a5 0f
	bpl $adda                ; $add2: 10 06
loc_add4:
	lda #$05                 ; $add4: a9 05
	sta $4c                  ; $add6: 85 4c
	bne $adde                ; $add8: d0 04
loc_adda:
	lda #$0a                 ; $adda: a9 0a
	sta $4c                  ; $addc: 85 4c
loc_adde:
	lda $10                  ; $adde: a5 10
	bpl $adec                ; $ade0: 10 0a
loc_ade2:
	eor #$ff                 ; $ade2: 49 ff
	clc                      ; $ade4: 18
	adc #$01                 ; $ade5: 69 01
	sta $3e                  ; $ade7: 85 3e
	jmp $adf0                ; $ade9: 4c f0 ad

; === Block $adec-$ae12 (Code) ===
loc_adec:
	lda $10                  ; $adec: a5 10
	sta $3e                  ; $adee: 85 3e
loc_adf0:
	lda $d0                  ; $adf0: a5 d0
	cmp $3e                  ; $adf2: c5 3e
	bcs $ae00                ; $adf4: b0 0a
loc_adf6:
	lda #$16                 ; $adf6: a9 16
	sta $3c                  ; $adf8: 85 3c
	lda #$00                 ; $adfa: a9 00
	sta $4c                  ; $adfc: 85 4c
	beq $ae2b                ; $adfe: f0 2b
loc_ae00:
	bne $ae2b                ; $ae00: d0 29
loc_ae02:
	lda $10                  ; $ae02: a5 10
	bpl $ae0c                ; $ae04: 10 06
loc_ae06:
	lda #$03                 ; $ae06: a9 03
	sta $4c                  ; $ae08: 85 4c
	bne $ae2b                ; $ae0a: d0 1f
loc_ae0c:
	lda #$0c                 ; $ae0c: a9 0c
	sta $4c                  ; $ae0e: 85 4c
	bne $ae2b                ; $ae10: d0 19

; === Block $ae12-$aed1 (Code) ===
loc_ae12:
	jsr $aae1                ; $ae12: 20 e1 aa
loc_ae15:
	lda $19                  ; $ae15: a5 19
	eor $3d                  ; $ae17: 45 3d
	and #$08                 ; $ae19: 29 08
	beq $ae2b                ; $ae1b: f0 0e
loc_ae1d:
	lda $19                  ; $ae1d: a5 19
	bne $ae27                ; $ae1f: d0 06
loc_ae21:
	lda #$15                 ; $ae21: a9 15
	sta $3c                  ; $ae23: 85 3c
	bne $ae2b                ; $ae25: d0 04
loc_ae27:
	lda #$16                 ; $ae27: a9 16
	sta $3c                  ; $ae29: 85 3c
loc_ae2b:
	lda $3c                  ; $ae2b: a5 3c
	asl                      ; $ae2d: 0a
	asl                      ; $ae2e: 0a
	adc $3c                  ; $ae2f: 65 3c
	adc $f5b3                ; $ae31: 6d b3 f5
	sta $40                  ; $ae34: 85 40
	lda $f5b4                ; $ae36: ad b4 f5
	adc #$00                 ; $ae39: 69 00
	sta $41                  ; $ae3b: 85 41
	ldy #$00                 ; $ae3d: a0 00
	lda ($40),y              ; $ae3f: b1 40
	sta $08                  ; $ae41: 85 08
	jsr sub_c690             ; $ae43: 20 90 c6
loc_ae46:
	lda $4c                  ; $ae46: a5 4c
	lsr                      ; $ae48: 4a
	bcc $ae63                ; $ae49: 90 18
loc_ae4b:
	lda $16                  ; $ae4b: a5 16
	cmp #$20                 ; $ae4d: c9 20
	bne $ae5b                ; $ae4f: d0 0a
loc_ae51:
	ldx $04                  ; $ae51: a6 04
	dex                      ; $ae53: ca
	lda #$5f                 ; $ae54: a9 5f
	sta $0300,x              ; $ae56: 9d 00 03
	bne $ae63                ; $ae59: d0 08
loc_ae5b:
	dec $04                  ; $ae5b: c6 04
	dec $04                  ; $ae5d: c6 04
	dec $04                  ; $ae5f: c6 04
	dec $03                  ; $ae61: c6 03
loc_ae63:
	iny                      ; $ae63: c8
	lda ($40),y              ; $ae64: b1 40
	sta $08                  ; $ae66: 85 08
	jsr sub_c690             ; $ae68: 20 90 c6
loc_ae6b:
	lda $4c                  ; $ae6b: a5 4c
	and #$02                 ; $ae6d: 29 02
	beq $ae89                ; $ae6f: f0 18
loc_ae71:
	lda $16                  ; $ae71: a5 16
	cmp #$20                 ; $ae73: c9 20
	bne $ae81                ; $ae75: d0 0a
loc_ae77:
	ldx $04                  ; $ae77: a6 04
	dex                      ; $ae79: ca
	lda #$5f                 ; $ae7a: a9 5f
	sta $0300,x              ; $ae7c: 9d 00 03
	bne $ae89                ; $ae7f: d0 08
loc_ae81:
	dec $04                  ; $ae81: c6 04
	dec $04                  ; $ae83: c6 04
	dec $04                  ; $ae85: c6 04
	dec $03                  ; $ae87: c6 03
loc_ae89:
	iny                      ; $ae89: c8
	lda $0a                  ; $ae8a: a5 0a
	clc                      ; $ae8c: 18
	adc #$1e                 ; $ae8d: 69 1e
	sta $0a                  ; $ae8f: 85 0a
	bcc $ae95                ; $ae91: 90 02
loc_ae93:
	inc $0b                  ; $ae93: e6 0b
loc_ae95:
	lda ($40),y              ; $ae95: b1 40
	sta $08                  ; $ae97: 85 08
	jsr sub_c690             ; $ae99: 20 90 c6
loc_ae9c:
	lda $4c                  ; $ae9c: a5 4c
	and #$04                 ; $ae9e: 29 04
	beq $aeba                ; $aea0: f0 18
loc_aea2:
	lda $16                  ; $aea2: a5 16
	cmp #$20                 ; $aea4: c9 20
	bne $aeb2                ; $aea6: d0 0a
loc_aea8:
	ldx $04                  ; $aea8: a6 04
	dex                      ; $aeaa: ca
	lda #$5f                 ; $aeab: a9 5f
	sta $0300,x              ; $aead: 9d 00 03
	bne $aeba                ; $aeb0: d0 08
loc_aeb2:
	dec $04                  ; $aeb2: c6 04
	dec $04                  ; $aeb4: c6 04
	dec $04                  ; $aeb6: c6 04
	dec $03                  ; $aeb8: c6 03
loc_aeba:
	iny                      ; $aeba: c8
	lda ($40),y              ; $aebb: b1 40
	sta $08                  ; $aebd: 85 08
	jsr sub_c690             ; $aebf: 20 90 c6
loc_aec2:
	lda $4c                  ; $aec2: a5 4c
	and #$08                 ; $aec4: 29 08
	beq $aee0                ; $aec6: f0 18
loc_aec8:
	lda $16                  ; $aec8: a5 16
	cmp #$20                 ; $aeca: c9 20
	bne $aed8                ; $aecc: d0 0a
loc_aece:
	ldx $04                  ; $aece: a6 04
	dex                      ; $aed0: ca

; === Block $aed1-$aefe (Code) ===
entry_aed1:
	lda #$5f                 ; $aed1: a9 5f
	sta $0300,x              ; $aed3: 9d 00 03
	bne $aee0                ; $aed6: d0 08
loc_aed8:
	dec $04                  ; $aed8: c6 04
	dec $04                  ; $aeda: c6 04
	dec $04                  ; $aedc: c6 04
	dec $03                  ; $aede: c6 03
loc_aee0:
	iny                      ; $aee0: c8
	lda $48                  ; $aee1: a5 48
	sta $3c                  ; $aee3: 85 3c
	lda $49                  ; $aee5: a5 49
	sta $3e                  ; $aee7: 85 3e
	lda ($40),y              ; $aee9: b1 40
	sta $08                  ; $aeeb: 85 08
	jsr $c006                ; $aeed: 20 06 c0
loc_aef0:
	lda $d1                  ; $aef0: a5 d1
	bne $aefe                ; $aef2: d0 0a
loc_aef4:
	lda $0b                  ; $aef4: a5 0b
	clc                      ; $aef6: 18
	adc #$20                 ; $aef7: 69 20
	sta $0b                  ; $aef9: 85 0b
	jsr sub_c690             ; $aefb: 20 90 c6
loc_aefe:
	rts                      ; $aefe: 60

; === Block $b091-$b0aa (Code) ===
loc_b091:
	*jam                     ; $b091: 42
	and #$03                 ; $b092: 29 03
	sta $43                  ; $b094: 85 43
	lda $42                  ; $b096: a5 42
	lsr                      ; $b098: 4a
	lsr                      ; $b099: 4a
	and #$03                 ; $b09a: 29 03
	sta $42                  ; $b09c: 85 42
	lda $43                  ; $b09e: a5 43
	lsr                      ; $b0a0: 4a
	bcs $b0ad                ; $b0a1: b0 0a
loc_b0a3:
	lda $c8                  ; $b0a3: a5 c8
	jsr $f10c                ; $b0a5: 20 0c f1
loc_b0a8:
	sta $c8                  ; $b0a8: 85 c8
	jmp $f0b6                ; $b0aa: 4c b6 f0

; === Block $b097-$b098 (Code) ===
loc_b097:
	*jam                     ; $b097: 42

; === Block $b0ad-$b0c3 (Code) ===
loc_b0ad:
	lda $cb                  ; $b0ad: a5 cb
	beq $b0b6                ; $b0af: f0 05
loc_b0b1:
	jsr $f10c                ; $b0b1: 20 0c f1
loc_b0b4:
	sta $cb                  ; $b0b4: 85 cb
loc_b0b6:
	lda $43                  ; $b0b6: a5 43
	and #$02                 ; $b0b8: 29 02
	bne $b0c6                ; $b0ba: d0 0a
loc_b0bc:
	lda $c9                  ; $b0bc: a5 c9
	jsr $f10c                ; $b0be: 20 0c f1
loc_b0c1:
	sta $c9                  ; $b0c1: 85 c9
	jmp $f0cd                ; $b0c3: 4c cd f0

; === Block $b0c6-$b10b (Code) ===
loc_b0c6:
	lda $ca                  ; $b0c6: a5 ca
	jsr $f10c                ; $b0c8: 20 0c f1
loc_b0cb:
	sta $ca                  ; $b0cb: 85 ca
	lda $be                  ; $b0cd: a5 be
	lsr                      ; $b0cf: 4a
	lsr                      ; $b0d0: 4a
	lsr                      ; $b0d1: 4a
	lsr                      ; $b0d2: 4a
	lsr                      ; $b0d3: 4a
	tax                      ; $b0d4: aa
	lda $99cf,x              ; $b0d5: bd cf 99
	clc                      ; $b0d8: 18
	adc $c8                  ; $b0d9: 65 c8
	sta $cc                  ; $b0db: 85 cc
	lda $c9                  ; $b0dd: a5 c9
	lsr                      ; $b0df: 4a
	sta $cd                  ; $b0e0: 85 cd
	lda $be                  ; $b0e2: a5 be
	lsr                      ; $b0e4: 4a
	lsr                      ; $b0e5: 4a
	and #$07                 ; $b0e6: 29 07
	tax                      ; $b0e8: aa
	lda $99d7,x              ; $b0e9: bd d7 99
	clc                      ; $b0ec: 18
	adc $cd                  ; $b0ed: 65 cd
	sta $cd                  ; $b0ef: 85 cd
	lda $be                  ; $b0f1: a5 be
	and #$03                 ; $b0f3: 29 03
	tax                      ; $b0f5: aa
	lda $99df,x              ; $b0f6: bd df 99
	clc                      ; $b0f9: 18
	adc $cd                  ; $b0fa: 65 cd
	sta $cd                  ; $b0fc: 85 cd
	lda $cf                  ; $b0fe: a5 cf
	and #$10                 ; $b100: 29 10
	beq $b10b                ; $b102: f0 07
loc_b104:
	lda $cd                  ; $b104: a5 cd
	clc                      ; $b106: 18
	adc #$02                 ; $b107: 69 02
	sta $cd                  ; $b109: 85 cd
loc_b10b:
	rts                      ; $b10b: 60

; === Block $b686-$b6a3 (Code) ===
loc_b686:
	jsr sub_ff74             ; $b686: 20 74 ff
loc_b689:
	lda #$f2                 ; $b689: a9 f2
	sta $10                  ; $b68b: 85 10
	lda #$00                 ; $b68d: a9 00
	sta $4c                  ; $b68f: 85 4c
	sta $d1                  ; $b691: 85 d1
	jsr $ad66                ; $b693: 20 66 ad
loc_b696:
	inc $10                  ; $b696: e6 10
	inc $10                  ; $b698: e6 10
	lda $10                  ; $b69a: a5 10
	cmp #$02                 ; $b69c: c9 02
	bne $b68d                ; $b69e: d0 ed
loc_b6a0:
	jsr sub_ff74             ; $b6a0: 20 74 ff

; === Block $b6a3-$b6b2 (Code) ===
loc_b6a3:
	lda #$00                 ; $b6a3: a9 00
	sta $4c                  ; $b6a5: 85 4c
	sta $d1                  ; $b6a7: 85 d1
	jsr $ad66                ; $b6a9: 20 66 ad
loc_b6ac:
	inc $10                  ; $b6ac: e6 10
	inc $10                  ; $b6ae: e6 10
	lda $10                  ; $b6b0: a5 10

; === Block $b6b2-$b6c1 (Code) ===
entry_b6b2:
	cmp #$10                 ; $b6b2: c9 10
	bne $b6a3                ; $b6b4: d0 ed
loc_b6b6:
	lda $0f                  ; $b6b6: a5 0f
	clc                      ; $b6b8: 18
	adc #$22                 ; $b6b9: 69 22
	sta $0f                  ; $b6bb: 85 0f
	cmp #$32                 ; $b6bd: c9 32
	bne $b686                ; $b6bf: d0 c5
loc_b6c1:
	rts                      ; $b6c1: 60

; === Block $b6b2-$b6b9 (Code) ===
sub_36c2:
	and $a960,y              ; $b6b2: 39 60 a9
	sei                      ; $b6b5: 78
	sta $6045,x              ; $b6b6: 9d 45 60
	rts                      ; $b6b9: 60

; === Block $b6c2-$b6d6 (Code) ===
loc_b6c2:
	sta $24                  ; $b6c2: 85 24
	lda $9332                ; $b6c4: ad 32 93
	sta $22                  ; $b6c7: 85 22
	lda $9333                ; $b6c9: ad 33 93
	sta $23                  ; $b6cc: 85 23
	lda $24                  ; $b6ce: a5 24
	beq $b6d9                ; $b6d0: f0 07
loc_b6d2:
	inc $23                  ; $b6d2: e6 23
	dec $24                  ; $b6d4: c6 24
	jmp $b6ce                ; $b6d6: 4c ce b6

; === Block $b6c2-$b6da (Code) ===
loc_b6c2:
	sta $3e                  ; $b6c2: 85 3e
	lda $23                  ; $b6c4: a5 23
	sta $3f                  ; $b6c6: 85 3f
	lda $6039                ; $b6c8: ad 39 60
	jsr $fc00                ; $b6cb: 20 00 fc
loc_b6ce:
	ldy #$00                 ; $b6ce: a0 00
	lda ($22),y              ; $b6d0: b1 22
	sta ($3e),y              ; $b6d2: 91 3e
	dey                      ; $b6d4: 88
	bne $b6d0                ; $b6d5: d0 f9
loc_b6d7:
	ldx $23                  ; $b6d7: a6 23
	inx                      ; $b6d9: e8

; === Block $b6d9-$b6d9 (Code) ===
loc_b6d9:
	rts                      ; $b6d9: 60

; === Block $b6da-$b6e0 (Code) ===
loc_b6da:
	lda $e0                  ; $b6da: a5 e0
	cmp #$27                 ; $b6dc: c9 27
	bne $b6e1                ; $b6de: d0 01
loc_b6e0:
	rts                      ; $b6e0: 60

; === Block $b6da-$b6f3 (Code) ===
loc_b6da:
	stx $23                  ; $b6da: 86 23
	ldx $3f                  ; $b6dc: a6 3f
	inx                      ; $b6de: e8
	stx $3f                  ; $b6df: 86 3f
	lda ($22),y              ; $b6e1: b1 22
	sta ($3e),y              ; $b6e3: 91 3e
	iny                      ; $b6e5: c8
	cpy #$40                 ; $b6e6: c0 40
	bne $b6e1                ; $b6e8: d0 f7
loc_b6ea:
	lda $6031                ; $b6ea: ad 31 60
	sta $6039                ; $b6ed: 8d 39 60
	jsr $f7da                ; $b6f0: 20 da f7
loc_b6f3:
	rts                      ; $b6f3: 60

; === Block $b6e1-$b76c (Code) ===
loc_b6e1:
	lda $4f                  ; $b6e1: a5 4f
	and #$0f                 ; $b6e3: 29 0f
	bne $b6ee                ; $b6e5: d0 07
loc_b6e7:
	lda $50                  ; $b6e7: a5 50
	clc                      ; $b6e9: 18
	adc #$08                 ; $b6ea: 69 08
	sta $50                  ; $b6ec: 85 50
loc_b6ee:
	lda $df                  ; $b6ee: a5 df
	and #$01                 ; $b6f0: 29 01
	beq $b6fa                ; $b6f2: f0 06
loc_b6f4:
	lda #$c0                 ; $b6f4: a9 c0
	sta $3c                  ; $b6f6: 85 3c
	bne $b714                ; $b6f8: d0 1a
loc_b6fa:
	lda #$80                 ; $b6fa: a9 80
	sta $3c                  ; $b6fc: 85 3c
	lda $be                  ; $b6fe: a5 be
	and #$e0                 ; $b700: 29 e0
	beq $b708                ; $b702: f0 04
loc_b704:
	lda #$90                 ; $b704: a9 90
	sta $3c                  ; $b706: 85 3c
loc_b708:
	lda $be                  ; $b708: a5 be
	and #$03                 ; $b70a: 29 03
	beq $b714                ; $b70c: f0 06
loc_b70e:
	lda #$20                 ; $b70e: a9 20
	ora $3c                  ; $b710: 05 3c
	sta $3c                  ; $b712: 85 3c
loc_b714:
	lda $50                  ; $b714: a5 50
	and #$08                 ; $b716: 29 08
	ora $3c                  ; $b718: 05 3c
	tay                      ; $b71a: a8
	ldx #$00                 ; $b71b: a2 00
	lda #$6f                 ; $b71d: a9 6f
	sta $3c                  ; $b71f: 85 3c
	lda $602f                ; $b721: ad 2f 60
	jsr $b6c2                ; $b724: 20 c2 b6
loc_b727:
	lda #$80                 ; $b727: a9 80
	sta $3d                  ; $b729: 85 3d
	lda $05d0                ; $b72b: ad d0 05
	cmp #$ff                 ; $b72e: c9 ff
	beq $b736                ; $b730: f0 04
loc_b732:
	lda #$f0                 ; $b732: a9 f0
	bne $b738                ; $b734: d0 02
loc_b736:
	lda $3c                  ; $b736: a5 3c
loc_b738:
	sta $0200,x              ; $b738: 9d 00 02
	inx                      ; $b73b: e8
	lda ($22),y              ; $b73c: b1 22
	sta $0200,x              ; $b73e: 9d 00 02
	inx                      ; $b741: e8
	iny                      ; $b742: c8
	lda ($22),y              ; $b743: b1 22
	sta $0200,x              ; $b745: 9d 00 02
	inx                      ; $b748: e8
	iny                      ; $b749: c8
	lda $3d                  ; $b74a: a5 3d
	sta $0200,x              ; $b74c: 9d 00 02
	inx                      ; $b74f: e8
	lda $3d                  ; $b750: a5 3d
	clc                      ; $b752: 18
	adc #$08                 ; $b753: 69 08
	sta $3d                  ; $b755: 85 3d
	cmp #$90                 ; $b757: c9 90
	bne $b72b                ; $b759: d0 d0
loc_b75b:
	lda $3c                  ; $b75b: a5 3c
	clc                      ; $b75d: 18
	adc #$08                 ; $b75e: 69 08
	sta $3c                  ; $b760: 85 3c
	cmp #$7f                 ; $b762: c9 7f
	bne $b727                ; $b764: d0 c1
loc_b766:
	lda $8d                  ; $b766: a5 8d
	and #$f0                 ; $b768: 29 f0
	beq $b76f                ; $b76a: f0 03
loc_b76c:
	jmp $b9fb                ; $b76c: 4c fb b9

; === Block $b76f-$b788 (Code) ===
loc_b76f:
	lda $8d                  ; $b76f: a5 8d
	asl                      ; $b771: 0a
	sta $3c                  ; $b772: 85 3c
	asl                      ; $b774: 0a
	adc $3c                  ; $b775: 65 3c
	tax                      ; $b777: aa
	lda #$02                 ; $b778: a9 02
	sta $4e                  ; $b77a: 85 4e
	lda $51,x                ; $b77c: b5 51
	and #$1f                 ; $b77e: 29 1f
	bne $b78b                ; $b780: d0 09
loc_b782:
	lda $52,x                ; $b782: b5 52
	and #$1f                 ; $b784: 29 1f
	bne $b78b                ; $b786: d0 03
loc_b788:
	jmp $b8ea                ; $b788: 4c ea b8

; === Block $b78b-$b793 (Code) ===
loc_b78b:
	lda $4f                  ; $b78b: a5 4f
	and #$0f                 ; $b78d: 29 0f
	cmp #$01                 ; $b78f: c9 01
	beq $b796                ; $b791: f0 03
loc_b793:
	jmp $b861                ; $b793: 4c 61 b8

; === Block $b796-$b79e (Code) ===
loc_b796:
	lda $96                  ; $b796: a5 96
	beq $b7a1                ; $b798: f0 07
loc_b79a:
	asl $52,x                ; $b79a: 16 52
	lsr $52,x                ; $b79c: 56 52
	jmp $b8ea                ; $b79e: 4c ea b8

; === Block $b7a1-$b7cd (Code) ===
loc_b7a1:
	jsr sub_c55b             ; $b7a1: 20 5b c5
loc_b7a4:
	lda $52,x                ; $b7a4: b5 52
	and #$9f                 ; $b7a6: 29 9f
	sta $52,x                ; $b7a8: 95 52
	lda $95                  ; $b7aa: a5 95
	and #$60                 ; $b7ac: 29 60
	ora $52,x                ; $b7ae: 15 52
	sta $52,x                ; $b7b0: 95 52
	jsr $ba15                ; $b7b2: 20 15 ba
loc_b7b5:
	jsr $ba22                ; $b7b5: 20 22 ba
loc_b7b8:
	lda $41                  ; $b7b8: a5 41
	beq $b7c2                ; $b7ba: f0 06
loc_b7bc:
	lda $40                  ; $b7bc: a5 40
	cmp #$ff                 ; $b7be: c9 ff
	bne $b79a                ; $b7c0: d0 d8
loc_b7c2:
	jsr $aabe                ; $b7c2: 20 be aa
loc_b7c5:
	lda $52,x                ; $b7c5: b5 52
	and #$60                 ; $b7c7: 29 60
	bne $b7d0                ; $b7c9: d0 05
loc_b7cb:
	dec $43                  ; $b7cb: c6 43
	jmp $b7e4                ; $b7cd: 4c e4 b7

; === Block $b7d0-$b7d6 (Code) ===
loc_b7d0:
	cmp #$20                 ; $b7d0: c9 20
	bne $b7d9                ; $b7d2: d0 05
loc_b7d4:
	inc $42                  ; $b7d4: e6 42
	jmp $b7e4                ; $b7d6: 4c e4 b7

; === Block $b7d9-$b7df (Code) ===
loc_b7d9:
	cmp #$40                 ; $b7d9: c9 40
	bne $b7e2                ; $b7db: d0 05
loc_b7dd:
	inc $43                  ; $b7dd: e6 43
	jmp $b7e4                ; $b7df: 4c e4 b7

; === Block $b7e2-$b7e4 (Code) ===
loc_b7e2:
	dec $42                  ; $b7e2: c6 42

; === Block $b7e4-$b7ea (Code) ===
loc_b7e4:
	lda $14                  ; $b7e4: a5 14
	cmp $43                  ; $b7e6: c5 43
	bcs $b7ed                ; $b7e8: b0 03
loc_b7ea:
	jmp $b79a                ; $b7ea: 4c 9a b7

; === Block $b7ed-$b818 (Code) ===
loc_b7ed:
	lda $13                  ; $b7ed: a5 13
	cmp $42                  ; $b7ef: c5 42
	bcc $b79a                ; $b7f1: 90 a7
loc_b7f3:
	jsr $ba22                ; $b7f3: 20 22 ba
loc_b7f6:
	lda $41                  ; $b7f6: a5 41
	beq $b800                ; $b7f8: f0 06
loc_b7fa:
	lda $40                  ; $b7fa: a5 40
	cmp #$ff                 ; $b7fc: c9 ff
	bne $b79a                ; $b7fe: d0 9a
loc_b800:
	lda $42                  ; $b800: a5 42
	cmp $3a                  ; $b802: c5 3a
	bne $b80c                ; $b804: d0 06
loc_b806:
	lda $43                  ; $b806: a5 43
	cmp $3b                  ; $b808: c5 3b
	beq $b79a                ; $b80a: f0 8e
loc_b80c:
	lda $42                  ; $b80c: a5 42
	cmp $8e                  ; $b80e: c5 8e
	bne $b81b                ; $b810: d0 09
loc_b812:
	lda $43                  ; $b812: a5 43
	cmp $8f                  ; $b814: c5 8f
	bne $b81b                ; $b816: d0 03
loc_b818:
	jmp $b79a                ; $b818: 4c 9a b7

; === Block $b81b-$b82f (Code) ===
loc_b81b:
	ldy #$00                 ; $b81b: a0 00
	lda $0051,y              ; $b81d: b9 51 00
	and #$1f                 ; $b820: 29 1f
	cmp $42                  ; $b822: c5 42
	bne $b832                ; $b824: d0 0c
loc_b826:
	lda $0052,y              ; $b826: b9 52 00
	and #$1f                 ; $b829: 29 1f
	cmp $43                  ; $b82b: c5 43
	bne $b832                ; $b82d: d0 03
loc_b82f:
	jmp $b79a                ; $b82f: 4c 9a b7

; === Block $b832-$b84f (Code) ===
loc_b832:
	iny                      ; $b832: c8
	iny                      ; $b833: c8
	iny                      ; $b834: c8
	cpy #$3c                 ; $b835: c0 3c
	bne $b81d                ; $b837: d0 e4
loc_b839:
	lda $3d                  ; $b839: a5 3d
	pha                      ; $b83b: 48
	lda $42                  ; $b83c: a5 42
	sta $3c                  ; $b83e: 85 3c
	lda $43                  ; $b840: a5 43
	sta $3e                  ; $b842: 85 3e
	jsr $ac17                ; $b844: 20 17 ac
loc_b847:
	jsr $aae1                ; $b847: 20 e1 aa
loc_b84a:
	pla                      ; $b84a: 68
	cmp $3d                  ; $b84b: c5 3d
	beq $b852                ; $b84d: f0 03
loc_b84f:
	jmp $b79a                ; $b84f: 4c 9a b7

; === Block $b852-$b858 (Code) ===
loc_b852:
	lda $3c                  ; $b852: a5 3c
	cmp #$0d                 ; $b854: c9 0d
	bcc $b85b                ; $b856: 90 03
loc_b858:
	jmp $b79a                ; $b858: 4c 9a b7

; === Block $b85b-$b861 (Code) ===
loc_b85b:
	lda $52,x                ; $b85b: b5 52
	ora #$80                 ; $b85d: 09 80
	sta $52,x                ; $b85f: 95 52

; === Block $b861-$b865 (Code) ===
loc_b861:
	lda $52,x                ; $b861: b5 52
	bmi $b868                ; $b863: 30 03
loc_b865:
	jmp $b8ea                ; $b865: 4c ea b8

; === Block $b868-$b86c (Code) ===
loc_b868:
	lda $96                  ; $b868: a5 96
	beq $b86f                ; $b86a: f0 03
loc_b86c:
	jmp $b8ea                ; $b86c: 4c ea b8

; === Block $b86f-$b890 (Code) ===
loc_b86f:
	lda $52,x                ; $b86f: b5 52
	and #$60                 ; $b871: 29 60
	bne $b893                ; $b873: d0 1e
loc_b875:
	lda $53,x                ; $b875: b5 53
	and #$0f                 ; $b877: 29 0f
	sec                      ; $b879: 38
	sbc #$01                 ; $b87a: e9 01
	and #$0f                 ; $b87c: 29 0f
	sta $3c                  ; $b87e: 85 3c
	lda $53,x                ; $b880: b5 53
	and #$f0                 ; $b882: 29 f0
	ora $3c                  ; $b884: 05 3c
	sta $53,x                ; $b886: 95 53
	lda $3c                  ; $b888: a5 3c
	cmp #$0f                 ; $b88a: c9 0f
	bne $b8ea                ; $b88c: d0 5c
loc_b88e:
	dec $52,x                ; $b88e: d6 52
	jmp $b8ea                ; $b890: 4c ea b8

; === Block $b893-$b8ae (Code) ===
loc_b893:
	cmp #$20                 ; $b893: c9 20
	bne $b8b1                ; $b895: d0 1a
loc_b897:
	lda $53,x                ; $b897: b5 53
	and #$f0                 ; $b899: 29 f0
	clc                      ; $b89b: 18
	adc #$10                 ; $b89c: 69 10
	sta $3c                  ; $b89e: 85 3c
	lda $53,x                ; $b8a0: b5 53
	and #$0f                 ; $b8a2: 29 0f
	ora $3c                  ; $b8a4: 05 3c
	sta $53,x                ; $b8a6: 95 53
	lda $3c                  ; $b8a8: a5 3c
	bne $b8ea                ; $b8aa: d0 3e
loc_b8ac:
	inc $51,x                ; $b8ac: f6 51
	jmp $b8ea                ; $b8ae: 4c ea b8

; === Block $b8b1-$b8ce (Code) ===
loc_b8b1:
	cmp #$40                 ; $b8b1: c9 40
	bne $b8d1                ; $b8b3: d0 1c
loc_b8b5:
	lda $53,x                ; $b8b5: b5 53
	and #$0f                 ; $b8b7: 29 0f
	clc                      ; $b8b9: 18
	adc #$01                 ; $b8ba: 69 01
	and #$0f                 ; $b8bc: 29 0f
	sta $3c                  ; $b8be: 85 3c
	lda $53,x                ; $b8c0: b5 53
	and #$f0                 ; $b8c2: 29 f0
	ora $3c                  ; $b8c4: 05 3c
	sta $53,x                ; $b8c6: 95 53
	lda $3c                  ; $b8c8: a5 3c
	bne $b8ea                ; $b8ca: d0 1e
loc_b8cc:
	inc $52,x                ; $b8cc: f6 52
	jmp $b8ea                ; $b8ce: 4c ea b8

; === Block $b8d1-$b8ea (Code) ===
loc_b8d1:
	lda $53,x                ; $b8d1: b5 53
	and #$f0                 ; $b8d3: 29 f0
	sec                      ; $b8d5: 38
	sbc #$10                 ; $b8d6: e9 10
	sta $3c                  ; $b8d8: 85 3c
	lda $53,x                ; $b8da: b5 53
	and #$0f                 ; $b8dc: 29 0f
	ora $3c                  ; $b8de: 05 3c
	sta $53,x                ; $b8e0: 95 53
	lda $3c                  ; $b8e2: a5 3c
	cmp #$f0                 ; $b8e4: c9 f0
	bne $b8ea                ; $b8e6: d0 02
loc_b8e8:
	dec $51,x                ; $b8e8: d6 51

; === Block $b8ea-$b8f1 (Code) ===
loc_b8ea:
	inx                      ; $b8ea: e8
	inx                      ; $b8eb: e8
	inx                      ; $b8ec: e8
	dec $4e                  ; $b8ed: c6 4e
	beq $b8f4                ; $b8ef: f0 03
loc_b8f1:
	jmp $b77c                ; $b8f1: 4c 7c b7

; === Block $b8f4-$b906 (Code) ===
loc_b8f4:
	ldx #$00                 ; $b8f4: a2 00
	lda #$10                 ; $b8f6: a9 10
	sta $4e                  ; $b8f8: 85 4e
	lda $51,x                ; $b8fa: b5 51
	and #$1f                 ; $b8fc: 29 1f
	bne $b909                ; $b8fe: d0 09
loc_b900:
	lda $52,x                ; $b900: b5 52
	and #$1f                 ; $b902: 29 1f
	bne $b909                ; $b904: d0 03
loc_b906:
	jmp $b9df                ; $b906: 4c df b9

; === Block $b909-$b91d (Code) ===
loc_b909:
	jsr $ba52                ; $b909: 20 52 ba
loc_b90c:
	lda $3e                  ; $b90c: a5 3e
	clc                      ; $b90e: 18
	adc #$07                 ; $b90f: 69 07
	sta $3e                  ; $b911: 85 3e
	lda $3f                  ; $b913: a5 3f
	adc #$00                 ; $b915: 69 00
	beq $b929                ; $b917: f0 10
loc_b919:
	cmp #$01                 ; $b919: c9 01
	beq $b920                ; $b91b: f0 03
loc_b91d:
	jmp $b9df                ; $b91d: 4c df b9

; === Block $b920-$b926 (Code) ===
loc_b920:
	lda $3e                  ; $b920: a5 3e
	cmp #$07                 ; $b922: c9 07
	bcc $b929                ; $b924: 90 03
loc_b926:
	jmp $b9df                ; $b926: 4c df b9

; === Block $b929-$b939 (Code) ===
loc_b929:
	jsr $ba84                ; $b929: 20 84 ba
loc_b92c:
	lda $40                  ; $b92c: a5 40
	clc                      ; $b92e: 18
	adc #$11                 ; $b92f: 69 11
	sta $40                  ; $b931: 85 40
	lda $41                  ; $b933: a5 41
	adc #$00                 ; $b935: 69 00
	beq $b93c                ; $b937: f0 03
loc_b939:
	jmp $b9df                ; $b939: 4c df b9

; === Block $b93c-$b94c (Code) ===
loc_b93c:
	jsr $ba15                ; $b93c: 20 15 ba
loc_b93f:
	jsr $ba22                ; $b93f: 20 22 ba
loc_b942:
	lda $41                  ; $b942: a5 41
	beq $b94f                ; $b944: f0 09
loc_b946:
	lda $40                  ; $b946: a5 40
	cmp #$ff                 ; $b948: c9 ff
	beq $b94f                ; $b94a: f0 03
loc_b94c:
	jmp $b9df                ; $b94c: 4c df b9

; === Block $b94f-$b960 (Code) ===
loc_b94f:
	lda $42                  ; $b94f: a5 42
	sta $3c                  ; $b951: 85 3c
	lda $43                  ; $b953: a5 43
	sta $3e                  ; $b955: 85 3e
	jsr $aabe                ; $b957: 20 be aa
loc_b95a:
	lda $3d                  ; $b95a: a5 3d
	cmp $19                  ; $b95c: c5 19
	beq $b963                ; $b95e: f0 03
loc_b960:
	jmp $b9df                ; $b960: 4c df b9

; === Block $b963-$b9df (Code) ===
loc_b963:
	jsr $c0f4                ; $b963: 20 f4 c0
loc_b966:
	sta $3c                  ; $b966: 85 3c
	jsr $ba52                ; $b968: 20 52 ba
loc_b96b:
	jsr $ba84                ; $b96b: 20 84 ba
loc_b96e:
	ldy $4e                  ; $b96e: a4 4e
	stx $4e                  ; $b970: 86 4e
	ldx $3c                  ; $b972: a6 3c
	lda #$00                 ; $b974: a9 00
	sta $3c                  ; $b976: 85 3c
	lda #$00                 ; $b978: a9 00
	sta $3d                  ; $b97a: 85 3d
	lda $3e                  ; $b97c: a5 3e
	clc                      ; $b97e: 18
	adc $3d                  ; $b97f: 65 3d
	sta $42                  ; $b981: 85 42
	lda $3f                  ; $b983: a5 3f
	adc #$00                 ; $b985: 69 00
	bne $b9c0                ; $b987: d0 37
loc_b989:
	tya                      ; $b989: 98
	stx $25                  ; $b98a: 86 25
	tax                      ; $b98c: aa
	ldy $4e                  ; $b98d: a4 4e
	lda $0052,y              ; $b98f: b9 52 00
	and #$60                 ; $b992: 29 60
	asl                      ; $b994: 0a
	rol                      ; $b995: 2a
	rol                      ; $b996: 2a
	rol                      ; $b997: 2a
	jsr $b6c2                ; $b998: 20 c2 b6
loc_b99b:
	ldy $25                  ; $b99b: a4 25
	lda $42                  ; $b99d: a5 42
	sta $0203,x              ; $b99f: 9d 03 02
	lda $40                  ; $b9a2: a5 40
	clc                      ; $b9a4: 18
	adc $3c                  ; $b9a5: 65 3c
	sta $0200,x              ; $b9a7: 9d 00 02
	lda ($22),y              ; $b9aa: b1 22
	sta $0201,x              ; $b9ac: 9d 01 02
	iny                      ; $b9af: c8
	lda ($22),y              ; $b9b0: b1 22
	dey                      ; $b9b2: 88
	sta $0202,x              ; $b9b3: 9d 02 02
	tya                      ; $b9b6: 98
	stx $22                  ; $b9b7: 86 22
	tax                      ; $b9b9: aa
	ldy $22                  ; $b9ba: a4 22
	iny                      ; $b9bc: c8
	iny                      ; $b9bd: c8
	iny                      ; $b9be: c8
	iny                      ; $b9bf: c8
loc_b9c0:
	inx                      ; $b9c0: e8
	inx                      ; $b9c1: e8
	tya                      ; $b9c2: 98
	beq $b9e9                ; $b9c3: f0 24
loc_b9c5:
	lda $3d                  ; $b9c5: a5 3d
	clc                      ; $b9c7: 18
	adc #$08                 ; $b9c8: 69 08
	sta $3d                  ; $b9ca: 85 3d
	cmp #$10                 ; $b9cc: c9 10
	bne $b97c                ; $b9ce: d0 ac
loc_b9d0:
	lda $3c                  ; $b9d0: a5 3c
	clc                      ; $b9d2: 18
	adc #$08                 ; $b9d3: 69 08
	sta $3c                  ; $b9d5: 85 3c
	cmp #$10                 ; $b9d7: c9 10
	bne $b978                ; $b9d9: d0 9d
loc_b9db:
	ldx $4e                  ; $b9db: a6 4e
	sty $4e                  ; $b9dd: 84 4e

; === Block $b9df-$b9e6 (Code) ===
loc_b9df:
	inx                      ; $b9df: e8
	inx                      ; $b9e0: e8
	inx                      ; $b9e1: e8
	cpx #$3c                 ; $b9e2: e0 3c
	beq $b9e9                ; $b9e4: f0 03
loc_b9e6:
	jmp $b8fa                ; $b9e6: 4c fa b8

; === Block $b9e9-$b9f8 (Code) ===
loc_b9e9:
	ldy $4e                  ; $b9e9: a4 4e
	lda #$f0                 ; $b9eb: a9 f0
	cpy #$00                 ; $b9ed: c0 00
	beq $b9fb                ; $b9ef: f0 0a
loc_b9f1:
	sta $0200,y              ; $b9f1: 99 00 02
	iny                      ; $b9f4: c8
	iny                      ; $b9f5: c8
	iny                      ; $b9f6: c8
	iny                      ; $b9f7: c8
	jmp $b9ed                ; $b9f8: 4c ed b9

; === Block $b9fb-$ba01 (Code) ===
loc_b9fb:
	lda $4f                  ; $b9fb: a5 4f
	and #$0f                 ; $b9fd: 29 0f
	beq $ba02                ; $b9ff: f0 01
loc_ba01:
	rts                      ; $ba01: 60

; === Block $ba02-$ba14 (Code) ===
loc_ba02:
	lda $8d                  ; $ba02: a5 8d
	cmp #$ff                 ; $ba04: c9 ff
	beq $ba14                ; $ba06: f0 0c
loc_ba08:
	inc $8d                  ; $ba08: e6 8d
	lda $8d                  ; $ba0a: a5 8d
	cmp #$05                 ; $ba0c: c9 05
	bne $ba14                ; $ba0e: d0 04
loc_ba10:
	lda #$00                 ; $ba10: a9 00
	sta $8d                  ; $ba12: 85 8d
loc_ba14:
	rts                      ; $ba14: 60

; === Block $ba15-$ba21 (Code) ===
loc_ba15:
	lda $51,x                ; $ba15: b5 51
	and #$1f                 ; $ba17: 29 1f
	sta $42                  ; $ba19: 85 42
	lda $52,x                ; $ba1b: b5 52
	and #$1f                 ; $ba1d: 29 1f
	sta $43                  ; $ba1f: 85 43
	rts                      ; $ba21: 60

; === Block $ba22-$ba34 (Code) ===
loc_ba22:
	lda #$00                 ; $ba22: a9 00
	sta $41                  ; $ba24: 85 41
	lda $42                  ; $ba26: a5 42
	sec                      ; $ba28: 38
	sbc $3a                  ; $ba29: e5 3a
	clc                      ; $ba2b: 18
	adc #$08                 ; $ba2c: 69 08
	sta $3c                  ; $ba2e: 85 3c
	cmp #$10                 ; $ba30: c9 10
	bcc $ba35                ; $ba32: 90 01
loc_ba34:
	rts                      ; $ba34: 60

; === Block $ba35-$ba43 (Code) ===
loc_ba35:
	lda $43                  ; $ba35: a5 43
	sec                      ; $ba37: 38
	sbc $3b                  ; $ba38: e5 3b
	clc                      ; $ba3a: 18
	adc #$07                 ; $ba3b: 69 07
	sta $3e                  ; $ba3d: 85 3e
	cmp #$0f                 ; $ba3f: c9 0f
	bcc $ba44                ; $ba41: 90 01
loc_ba43:
	rts                      ; $ba43: 60

; === Block $ba44-$ba51 (Code) ===
loc_ba44:
	jsr $c596                ; $ba44: 20 96 c5
loc_ba47:
	ldy #$00                 ; $ba47: a0 00
	lda ($0a),y              ; $ba49: b1 0a
	sta $40                  ; $ba4b: 85 40
	lda #$ff                 ; $ba4d: a9 ff
	sta $41                  ; $ba4f: 85 41
	rts                      ; $ba51: 60

; === Block $ba52-$ba83 (Code) ===
loc_ba52:
	lda $51,x                ; $ba52: b5 51
	and #$1f                 ; $ba54: 29 1f
	sta $3f                  ; $ba56: 85 3f
	lda $53,x                ; $ba58: b5 53
	sta $3e                  ; $ba5a: 85 3e
	lsr $3f                  ; $ba5c: 46 3f
	ror $3e                  ; $ba5e: 66 3e
	lsr $3f                  ; $ba60: 46 3f
	ror $3e                  ; $ba62: 66 3e
	lsr $3f                  ; $ba64: 46 3f
	ror $3e                  ; $ba66: 66 3e
	lsr $3f                  ; $ba68: 46 3f
	ror $3e                  ; $ba6a: 66 3e
	lda $3e                  ; $ba6c: a5 3e
	sec                      ; $ba6e: 38
	sbc $90                  ; $ba6f: e5 90
	sta $3e                  ; $ba71: 85 3e
	lda $3f                  ; $ba73: a5 3f
	sbc $91                  ; $ba75: e5 91
	sta $3f                  ; $ba77: 85 3f
	lda $3e                  ; $ba79: a5 3e
	eor #$80                 ; $ba7b: 49 80
	sta $3e                  ; $ba7d: 85 3e
	bmi $ba83                ; $ba7f: 30 02
loc_ba81:
	inc $3f                  ; $ba81: e6 3f
loc_ba83:
	rts                      ; $ba83: 60

; === Block $ba84-$babc (Code) ===
loc_ba84:
	lda $52,x                ; $ba84: b5 52
	and #$1f                 ; $ba86: 29 1f
	sta $41                  ; $ba88: 85 41
	lda #$00                 ; $ba8a: a9 00
	sta $40                  ; $ba8c: 85 40
	lsr $41                  ; $ba8e: 46 41
	ror $40                  ; $ba90: 66 40
	lsr $41                  ; $ba92: 46 41
	ror $40                  ; $ba94: 66 40
	lsr $41                  ; $ba96: 46 41
	ror $40                  ; $ba98: 66 40
	lsr $41                  ; $ba9a: 46 41
	ror $40                  ; $ba9c: 66 40
	lda $53,x                ; $ba9e: b5 53
	and #$0f                 ; $baa0: 29 0f
	ora $40                  ; $baa2: 05 40
	sta $40                  ; $baa4: 85 40
	sec                      ; $baa6: 38
	sbc $92                  ; $baa7: e5 92
	sta $40                  ; $baa9: 85 40
	lda $41                  ; $baab: a5 41
	sbc $93                  ; $baad: e5 93
	sta $41                  ; $baaf: 85 41
	lda $40                  ; $bab1: a5 40
	clc                      ; $bab3: 18
	adc #$6f                 ; $bab4: 69 6f
	sta $40                  ; $bab6: 85 40
	bcc $babc                ; $bab8: 90 02
loc_baba:
	inc $41                  ; $baba: e6 41
loc_babc:
	rts                      ; $babc: 60

; === Block $c006-$c01e (Code) ===
loc_c006:
	jsr $c5e4                ; $c006: 20 e4 c5
loc_c009:
	tya                      ; $c009: 98
	pha                      ; $c00a: 48
	lda $3e                  ; $c00b: a5 3e
	and #$02                 ; $c00d: 29 02
	asl                      ; $c00f: 0a
	sta $3d                  ; $c010: 85 3d
	lda $3c                  ; $c012: a5 3c
	and #$02                 ; $c014: 29 02
	clc                      ; $c016: 18
	adc $3d                  ; $c017: 65 3d
	tay                      ; $c019: a8
	lda #$fc                 ; $c01a: a9 fc
	cpy #$00                 ; $c01c: c0 00

; === Block $c018-$c031 (Code) ===
sub_4028:
	and $a9a8,x              ; $c018: 3d a8 a9
	*nop $00c0,x             ; $c01b: fc c0 00
	beq $c027                ; $c01e: f0 07
loc_c020:
	sec                      ; $c020: 38
	rol                      ; $c021: 2a
	asl $08                  ; $c022: 06 08
	dey                      ; $c024: 88
	bne $c020                ; $c025: d0 f9
loc_c027:
	and ($0a),y              ; $c027: 31 0a
	ora $08                  ; $c029: 05 08
	sta ($0a),y              ; $c02b: 91 0a
	sta $08                  ; $c02d: 85 08
	pla                      ; $c02f: 68
	tay                      ; $c030: a8
	rts                      ; $c031: 60

; === Block $c072-$c07c (Code) ===
loc_c072:
	lda $602f                ; $c072: ad 2f 60
	bne $c07f                ; $c075: d0 08
loc_c077:
	tya                      ; $c077: 98
	sec                      ; $c078: 38
	sbc #$10                 ; $c079: e9 10
	tay                      ; $c07b: a8
	jmp $c09c                ; $c07c: 4c 9c c0

; === Block $c07f-$c088 (Code) ===
loc_c07f:
	cmp #$01                 ; $c07f: c9 01
	bne $c08b                ; $c081: d0 08
loc_c083:
	txa                      ; $c083: 8a
	clc                      ; $c084: 18
	adc #$10                 ; $c085: 69 10
	tax                      ; $c087: aa
	jmp $c09c                ; $c088: 4c 9c c0

; === Block $c08b-$c094 (Code) ===
loc_c08b:
	cmp #$02                 ; $c08b: c9 02
	bne $c097                ; $c08d: d0 08
loc_c08f:
	tya                      ; $c08f: 98
	clc                      ; $c090: 18
	adc #$10                 ; $c091: 69 10
	tay                      ; $c093: a8
	jmp $c09c                ; $c094: 4c 9c c0

; === Block $c097-$c09c (Code) ===
loc_c097:
	txa                      ; $c097: 8a
	sec                      ; $c098: 38
	sbc #$10                 ; $c099: e9 10
	tax                      ; $c09b: aa

; === Block $c09c-$c0bb (Code) ===
loc_c09c:
	stx $22                  ; $c09c: 86 22
	sty $23                  ; $c09e: 84 23
	ldy #$10                 ; $c0a0: a0 10
	lda $0200,y              ; $c0a2: b9 00 02
	cmp $23                  ; $c0a5: c5 23
	bne $c0b0                ; $c0a7: d0 07
loc_c0a9:
	lda $0203,y              ; $c0a9: b9 03 02
	cmp $22                  ; $c0ac: c5 22
	beq $c0c6                ; $c0ae: f0 16
loc_c0b0:
	tya                      ; $c0b0: 98
	clc                      ; $c0b1: 18
	adc #$10                 ; $c0b2: 69 10
	tay                      ; $c0b4: a8
	bne $c0a2                ; $c0b5: d0 eb
loc_c0b7:
	ldx $22                  ; $c0b7: a6 22
	ldy $23                  ; $c0b9: a4 23

; === Block $c0bb-$c0c3 (Code) ===
sub_40cb:
	lda $27                  ; $c0bb: a5 27
	bne $c0ef                ; $c0bd: d0 30
loc_c0bf:
	lda #$01                 ; $c0bf: a9 01
	sta $27                  ; $c0c1: 85 27
	jmp $c072                ; $c0c3: 4c 72 c0

; === Block $c0c6-$c0ef (Code) ===
loc_c0c6:
	sty $28                  ; $c0c6: 84 28
	lda #$04                 ; $c0c8: a9 04
	sta $27                  ; $c0ca: 85 27
	ldx $26                  ; $c0cc: a6 26
	jsr $c0f4                ; $c0ce: 20 f4 c0
loc_c0d1:
	tay                      ; $c0d1: a8
	lda $25                  ; $c0d2: a5 25
	jsr $b6c2                ; $c0d4: 20 c2 b6
loc_c0d7:
	ldx $28                  ; $c0d7: a6 28
	lda ($22),y              ; $c0d9: b1 22
	sta $0201,x              ; $c0db: 9d 01 02
	iny                      ; $c0de: c8
	lda ($22),y              ; $c0df: b1 22
	dey                      ; $c0e1: 88
	sta $0202,x              ; $c0e2: 9d 02 02
	inx                      ; $c0e5: e8
	inx                      ; $c0e6: e8
	inx                      ; $c0e7: e8
	inx                      ; $c0e8: e8
	iny                      ; $c0e9: c8
	iny                      ; $c0ea: c8
	dec $27                  ; $c0eb: c6 27
	bne $c0d9                ; $c0ed: d0 ea

; === Block $c0ef-$c0f3 (Code) ===
loc_c0ef:
	pla                      ; $c0ef: 68
	tax                      ; $c0f0: aa
	pla                      ; $c0f1: 68
	tay                      ; $c0f2: a8
	rts                      ; $c0f3: 60

; === Block $c0f4-$c12d (Code) ===
loc_c0f4:
	lda $51,x                ; $c0f4: b5 51
	and #$e0                 ; $c0f6: 29 e0
	lsr                      ; $c0f8: 4a
	sta $24                  ; $c0f9: 85 24
	cmp #$60                 ; $c0fb: c9 60
	bne $c117                ; $c0fd: d0 18
loc_c0ff:
	lda $45                  ; $c0ff: a5 45
	cmp #$04                 ; $c101: c9 04
	bne $c10b                ; $c103: d0 06
loc_c105:
	lda $e4                  ; $c105: a5 e4
	and #$04                 ; $c107: 29 04
	bne $c111                ; $c109: d0 06
loc_c10b:
	lda $45                  ; $c10b: a5 45
	cmp #$05                 ; $c10d: c9 05
	bne $c14b                ; $c10f: d0 3a
loc_c111:
	lda #$d0                 ; $c111: a9 d0
	sta $24                  ; $c113: 85 24
	bne $c14b                ; $c115: d0 34
loc_c117:
	lda $24                  ; $c117: a5 24
	cmp #$50                 ; $c119: c9 50
	bne $c147                ; $c11b: d0 2a
loc_c11d:
	lda $45                  ; $c11d: a5 45
	cmp #$04                 ; $c11f: c9 04
	bne $c13b                ; $c121: d0 18
loc_c123:
	lda $e4                  ; $c123: a5 e4
	and #$04                 ; $c125: 29 04
	beq $c13b                ; $c127: f0 12
loc_c129:
	lda #$f0                 ; $c129: a9 f0
	sta $24                  ; $c12b: 85 24

; === Block $c12d-$c145 (Code) ===
loc_c12d:
	lda $c7                  ; $c12d: a5 c7
	cmp #$ff                 ; $c12f: c9 ff
	bne $c153                ; $c131: d0 20
loc_c133:
	lda $24                  ; $c133: a5 24
	ora #$08                 ; $c135: 09 08
	sta $24                  ; $c137: 85 24
	bne $c153                ; $c139: d0 18
loc_c13b:
	lda $45                  ; $c13b: a5 45
	cmp #$06                 ; $c13d: c9 06
	bne $c14b                ; $c13f: d0 0a
loc_c141:
	lda #$e0                 ; $c141: a9 e0
	sta $24                  ; $c143: 85 24

; === Block $c145-$c155 (Code) ===
sub_4155:
	bne $c14b                ; $c145: d0 04
loc_c147:
	cmp #$70                 ; $c147: c9 70
	beq $c12d                ; $c149: f0 e2
loc_c14b:
	lda $50                  ; $c14b: a5 50
	and #$08                 ; $c14d: 29 08
	ora $24                  ; $c14f: 05 24
	sta $24                  ; $c151: 85 24
	lda $24                  ; $c153: a5 24
	rts                      ; $c155: 60

; === Block $c15c-$c16c (Code) ===
loc_c15c:
	lda $ba                  ; $c15c: a5 ba
	sec                      ; $c15e: 38
	sbc $f35b,x              ; $c15f: fd 5b f3
	lda $bb                  ; $c162: a5 bb
	sbc $f35c,x              ; $c164: fd 5c f3
	bcs $c16f                ; $c167: b0 06
loc_c169:
	dec $c7                  ; $c169: c6 c7
	dex                      ; $c16b: ca

; === Block $c16a-$c16f (Code) ===
entry_c16a:
	*dcp $ca                 ; $c16a: c7 ca
	dex                      ; $c16c: ca
	bne $c15c                ; $c16d: d0 ed
loc_c16f:
	rts                      ; $c16f: 60

; === Block $c1a9-$c1b8 (Code) ===
entry_c1a9:
	lda $a9c1,y              ; $c1a9: b9 c1 a9
	dey                      ; $c1ac: 88
	sta $2000                ; $c1ad: 8d 00 20 PPUCTRL
	jsr sub_ff74             ; $c1b0: 20 74 ff
loc_c1b3:
	pla                      ; $c1b3: 68
	tay                      ; $c1b4: a8
	pla                      ; $c1b5: 68
	tax                      ; $c1b6: aa
	pla                      ; $c1b7: 68
	rts                      ; $c1b8: 60

; === Block $c1c9-$c1ec (Code) ===
loc_c1c9:
	lda #$00                 ; $c1c9: a9 00
	sta $40                  ; $c1cb: 85 40
	sta $41                  ; $c1cd: 85 41
	lda $3c                  ; $c1cf: a5 3c
	ora $3d                  ; $c1d1: 05 3d
	beq $c1ef                ; $c1d3: f0 1a
loc_c1d5:
	lsr $3d                  ; $c1d5: 46 3d
	ror $3c                  ; $c1d7: 66 3c
	bcc $c1e8                ; $c1d9: 90 0d
loc_c1db:
	lda $3e                  ; $c1db: a5 3e
	clc                      ; $c1dd: 18
	adc $40                  ; $c1de: 65 40
	sta $40                  ; $c1e0: 85 40
	lda $3f                  ; $c1e2: a5 3f
	adc $41                  ; $c1e4: 65 41
	sta $41                  ; $c1e6: 85 41
loc_c1e8:
	asl $3e                  ; $c1e8: 06 3e
	rol $3f                  ; $c1ea: 26 3f
	jmp $c1cf                ; $c1ec: 4c cf c1

; === Block $c1ef-$c1ef (Code) ===
loc_c1ef:
	rts                      ; $c1ef: 60

; === Block $c1f0-$c211 (Code) ===
loc_c1f0:
	lda #$00                 ; $c1f0: a9 00
	sta $3d                  ; $c1f2: 85 3d
	ldy #$10                 ; $c1f4: a0 10
	lda #$00                 ; $c1f6: a9 00
	asl $3c                  ; $c1f8: 06 3c
	rol $3d                  ; $c1fa: 26 3d
	sta $40                  ; $c1fc: 85 40
	adc $40                  ; $c1fe: 65 40
	inc $3c                  ; $c200: e6 3c
	sec                      ; $c202: 38
	sbc $3e                  ; $c203: e5 3e
	bcs $c20c                ; $c205: b0 05
loc_c207:
	clc                      ; $c207: 18
	adc $3e                  ; $c208: 65 3e
	dec $3c                  ; $c20a: c6 3c
loc_c20c:
	dey                      ; $c20c: 88
	bne $c1f8                ; $c20d: d0 e9
loc_c20f:
	sta $40                  ; $c20f: 85 40
	rts                      ; $c211: 60

; === Block $c273-$c287 (Code) ===
loc_c273:
	tya                      ; $c273: 98
	pha                      ; $c274: 48
	ldy #$00                 ; $c275: a0 00
	lda ($0a),y              ; $c277: b1 0a
	sta $08                  ; $c279: 85 08
	pla                      ; $c27b: 68
	tay                      ; $c27c: a8
	lda $0b                  ; $c27d: a5 0b
	clc                      ; $c27f: 18
	adc #$20                 ; $c280: 69 20
	sta $0b                  ; $c282: 85 0b
	jsr sub_c690             ; $c284: 20 90 c6
loc_c287:
	rts                      ; $c287: 60

; === Block $c4a4-$c4de (Code) ===
loc_c4a4:
	bne $c4a8                ; $c4a4: d0 02
loc_c4a6:
	inc $9a                  ; $c4a6: e6 9a
loc_c4a8:
	lda $42                  ; $c4a8: a5 42
	clc                      ; $c4aa: 18
	adc #$e0                 ; $c4ab: 69 e0
	sta $42                  ; $c4ad: 85 42
	bcs $c4b3                ; $c4af: b0 02
loc_c4b1:
	dec $43                  ; $c4b1: c6 43
loc_c4b3:
	lda $09                  ; $c4b3: a5 09
	beq $c4c1                ; $c4b5: f0 0a
loc_c4b7:
	cmp #$01                 ; $c4b7: c9 01
	beq $c4c1                ; $c4b9: f0 06
loc_c4bb:
	lda $08                  ; $c4bb: a5 08
	ldy #$00                 ; $c4bd: a0 00
	sta ($42),y              ; $c4bf: 91 42
loc_c4c1:
	lda $42                  ; $c4c1: a5 42
	clc                      ; $c4c3: 18
	adc #$20                 ; $c4c4: 69 20
	sta $42                  ; $c4c6: 85 42
	bcc $c4cc                ; $c4c8: 90 02
loc_c4ca:
	inc $43                  ; $c4ca: e6 43
loc_c4cc:
	dec $98                  ; $c4cc: c6 98
	lda $98                  ; $c4ce: a5 98
	cmp #$ff                 ; $c4d0: c9 ff
	bne $c4d8                ; $c4d2: d0 04
loc_c4d4:
	lda #$1d                 ; $c4d4: a9 1d
	sta $98                  ; $c4d6: 85 98
loc_c4d8:
	jsr $c4f5                ; $c4d8: 20 f5 c4
loc_c4db:
	jsr sub_c690             ; $c4db: 20 90 c6

; === Block $c4da-$c4f4 (Code) ===
loc_c4da:
	cpy $20                  ; $c4da: c4 20
	bcc $c4a4                ; $c4dc: 90 c6
loc_c4de:
	inc $98                  ; $c4de: e6 98
	lda $98                  ; $c4e0: a5 98
	cmp #$1e                 ; $c4e2: c9 1e
	bne $c4ea                ; $c4e4: d0 04
loc_c4e6:
	lda #$00                 ; $c4e6: a9 00
	sta $98                  ; $c4e8: 85 98
loc_c4ea:
	inc $42                  ; $c4ea: e6 42
	inc $97                  ; $c4ec: e6 97
	lda $97                  ; $c4ee: a5 97
	and #$3f                 ; $c4f0: 29 3f
	sta $97                  ; $c4f2: 85 97
	rts                      ; $c4f4: 60

; === Block $c4f5-$c528 (Code) ===
loc_c4f5:
	lda $08                  ; $c4f5: a5 08
	pha                      ; $c4f7: 48
	lda $09                  ; $c4f8: a5 09
	cmp #$01                 ; $c4fa: c9 01
	beq $c51a                ; $c4fc: f0 1c
loc_c4fe:
	lda $98                  ; $c4fe: a5 98
	lsr                      ; $c500: 4a
	bcs $c51a                ; $c501: b0 17
loc_c503:
	lda $97                  ; $c503: a5 97
	lsr                      ; $c505: 4a
	bcs $c51a                ; $c506: b0 12
loc_c508:
	lda $97                  ; $c508: a5 97
	sta $3c                  ; $c50a: 85 3c
	lda $98                  ; $c50c: a5 98
	sta $3e                  ; $c50e: 85 3e
	lda #$00                 ; $c510: a9 00
	sta $08                  ; $c512: 85 08
	jsr $c006                ; $c514: 20 06 c0
loc_c517:
	jsr $c273                ; $c517: 20 73 c2
loc_c51a:
	pla                      ; $c51a: 68
	sta $08                  ; $c51b: 85 08
	lda $97                  ; $c51d: a5 97
	sta $3c                  ; $c51f: 85 3c
	lda $98                  ; $c521: a5 98
	sta $3e                  ; $c523: 85 3e
	jsr $c5aa                ; $c525: 20 aa c5
loc_c528:
	rts                      ; $c528: 60

; === Block $c52d-$c558 (Code) ===
loc_c52d:
	ldx #$04                 ; $c52d: a2 04
	jsr sub_ff74             ; $c52f: 20 74 ff
loc_c532:
	dex                      ; $c532: ca
	bne $c52f                ; $c533: d0 fa
loc_c535:
	lda $3e                  ; $c535: a5 3e
	sta $0c                  ; $c537: 85 0c
	lda $3f                  ; $c539: a5 3f
	sta $0d                  ; $c53b: 85 0d
	jsr sub_c632             ; $c53d: 20 32 c6
loc_c540:
	lda $3d                  ; $c540: a5 3d
	beq $c54f                ; $c542: f0 0b
loc_c544:
	lda $40                  ; $c544: a5 40
	sta $0c                  ; $c546: 85 0c
	lda $41                  ; $c548: a5 41
	sta $0d                  ; $c54a: 85 0d
	jsr sub_c63d             ; $c54c: 20 3d c6
loc_c54f:
	lda $3c                  ; $c54f: a5 3c
	sec                      ; $c551: 38
	sbc #$10                 ; $c552: e9 10
	sta $3c                  ; $c554: 85 3c
	cmp #$f0                 ; $c556: c9 f0

; === Block $c54b-$c55a (Code) ===
entry_c54b:
	ora $3d20                ; $c54b: 0d 20 3d PPUCTRL
	dec $a5                  ; $c54e: c6 a5
	*nop $e938,x             ; $c550: 3c 38 e9
	bpl $c4da                ; $c553: 10 85
loc_c555:
	*nop $f0c9,x             ; $c555: 3c c9 f0
	bne $c52d                ; $c558: d0 d3
loc_c55a:
	rts                      ; $c55a: 60

; === Block $c55b-$c577 (Code) ===
loc_c55b:
	lda $95                  ; $c55b: a5 95
	sta $3d                  ; $c55d: 85 3d
	lda $94                  ; $c55f: a5 94
	sta $3c                  ; $c561: 85 3c
	asl $94                  ; $c563: 06 94
	rol $95                  ; $c565: 26 95
	clc                      ; $c567: 18
	adc $94                  ; $c568: 65 94
	sta $94                  ; $c56a: 85 94
	lda $95                  ; $c56c: a5 95
	adc $3d                  ; $c56e: 65 3d
	sta $95                  ; $c570: 85 95
	lda $94                  ; $c572: a5 94
	clc                      ; $c574: 18
	adc $95                  ; $c575: 65 95

; === Block $c577-$c586 (Code) ===
entry_c577:
	sta $95                  ; $c577: 85 95
	lda $94                  ; $c579: a5 94
	clc                      ; $c57b: 18
	adc #$81                 ; $c57c: 69 81
	sta $94                  ; $c57e: 85 94
	lda $95                  ; $c580: a5 95
	adc #$00                 ; $c582: 69 00
	sta $95                  ; $c584: 85 95
	rts                      ; $c586: 60

; === Block $c587-$c592 (Code) ===
loc_c587:
	sta $24                  ; $c587: 85 24
	lda $04                  ; $c589: a5 04
	cmp $24                  ; $c58b: c5 24
	bcc $c595                ; $c58d: 90 06
loc_c58f:
	jsr sub_ff74             ; $c58f: 20 74 ff
loc_c592:
	jmp $c589                ; $c592: 4c 89 c5

; === Block $c595-$c595 (Code) ===
loc_c595:
	rts                      ; $c595: 60

; === Block $c596-$c59e (Code) ===
loc_c596:
	lda #$40                 ; $c596: a9 40
	ora $3c                  ; $c598: 05 3c
	sta $3c                  ; $c59a: 85 3c
	bne $c5a6                ; $c59c: d0 08

; === Block $c59e-$c5aa (Code) ===
loc_c59e:
	lda #$80                 ; $c59e: a9 80
	ora $3c                  ; $c5a0: 05 3c
	sta $3c                  ; $c5a2: 85 3c
	bne $c5aa                ; $c5a4: d0 04
loc_c5a6:
	asl $3c                  ; $c5a6: 06 3c
	asl $3e                  ; $c5a8: 06 3e

; === Block $c5aa-$c5df (Code) ===
loc_c5aa:
	lda $3e                  ; $c5aa: a5 3e
	sta $0b                  ; $c5ac: 85 0b
	lda #$00                 ; $c5ae: a9 00
	sta $0a                  ; $c5b0: 85 0a
	lsr $0b                  ; $c5b2: 46 0b
	ror $0a                  ; $c5b4: 66 0a
	lsr $0b                  ; $c5b6: 46 0b
	ror $0a                  ; $c5b8: 66 0a
	lsr $0b                  ; $c5ba: 46 0b
	ror $0a                  ; $c5bc: 66 0a
	lda $3c                  ; $c5be: a5 3c
	and #$1f                 ; $c5c0: 29 1f
	clc                      ; $c5c2: 18
	adc $0a                  ; $c5c3: 65 0a
	sta $0a                  ; $c5c5: 85 0a
	php                      ; $c5c7: 08
	lda $3c                  ; $c5c8: a5 3c
	bpl $c5d0                ; $c5ca: 10 04
loc_c5cc:
	lda #$04                 ; $c5cc: a9 04
	bne $c5da                ; $c5ce: d0 0a
loc_c5d0:
	and #$20                 ; $c5d0: 29 20
	bne $c5d8                ; $c5d2: d0 04
loc_c5d4:
	lda #$20                 ; $c5d4: a9 20
	bne $c5da                ; $c5d6: d0 02
loc_c5d8:
	lda #$24                 ; $c5d8: a9 24
loc_c5da:
	plp                      ; $c5da: 28
	adc $0b                  ; $c5db: 65 0b
	sta $0b                  ; $c5dd: 85 0b
	rts                      ; $c5df: 60

; === Block $c5e4-$c5f9 (Code) ===
loc_c5e4:
	lda $3e                  ; $c5e4: a5 3e
	and #$fc                 ; $c5e6: 29 fc
	asl                      ; $c5e8: 0a
	sta $0a                  ; $c5e9: 85 0a
	lda $3c                  ; $c5eb: a5 3c
	and #$1f                 ; $c5ed: 29 1f
	lsr                      ; $c5ef: 4a
	lsr                      ; $c5f0: 4a
	clc                      ; $c5f1: 18
	adc $0a                  ; $c5f2: 65 0a
	clc                      ; $c5f4: 18
	adc #$c0                 ; $c5f5: 69 c0
	sta $0a                  ; $c5f7: 85 0a

; === Block $c5f8-$c607 (Code) ===
entry_c5f8:
	asl                      ; $c5f8: 0a
	lda $3c                  ; $c5f9: a5 3c
	and #$20                 ; $c5fb: 29 20
	bne $c603                ; $c5fd: d0 04
loc_c5ff:
	lda #$03                 ; $c5ff: a9 03
	bne $c605                ; $c601: d0 02
loc_c603:
	lda #$07                 ; $c603: a9 07
loc_c605:
	sta $0b                  ; $c605: 85 0b
	rts                      ; $c607: 60

; === Block $c608-$c619 (Code) ===
loc_c608:
	lda $3c                  ; $c608: a5 3c
	pha                      ; $c60a: 48
	lda $3d                  ; $c60b: a5 3d
	pha                      ; $c60d: 48
	jsr sub_c55b             ; $c60e: 20 5b c5
loc_c611:
	pla                      ; $c611: 68
	sta $3d                  ; $c612: 85 3d
	pla                      ; $c614: 68
	sta $3c                  ; $c615: 85 3c
	lda #$01                 ; $c617: a9 01

; === Block $c619-$c623 (Code) ===
loc_c619:
	sta $4016                ; $c619: 8d 16 40 JOY1
	lda #$00                 ; $c61c: a9 00
	sta $4016                ; $c61e: 8d 16 40 JOY1
	ldy #$08                 ; $c621: a0 08

; === Block $c622-$c631 (Code) ===
entry_c622:
	php                      ; $c622: 08
	lda $4016                ; $c623: ad 16 40 JOY1
	sta $46                  ; $c626: 85 46
	lsr                      ; $c628: 4a
	ora $46                  ; $c629: 05 46
	lsr                      ; $c62b: 4a
	ror $47                  ; $c62c: 66 47
	dey                      ; $c62e: 88
	bne $c623                ; $c62f: d0 f2
loc_c631:
	rts                      ; $c631: 60

; === Block $c62d-$c62f (Code) ===
entry_c62d:
	*sre $88                 ; $c62d: 47 88

; === Block $c632-$c64c (Code) ===
loc_c632:
	lda #$31                 ; $c632: a9 31
	jsr sub_c587             ; $c634: 20 87 c5
loc_c637:
	lda #$10                 ; $c637: a9 10
	sta $0a                  ; $c639: 85 0a
	bne $c646                ; $c63b: d0 09
loc_c63d:
	lda #$61                 ; $c63d: a9 61
	jsr sub_c587             ; $c63f: 20 87 c5
loc_c642:
	lda #$00                 ; $c642: a9 00
	sta $0a                  ; $c644: 85 0a
loc_c646:
	lda #$3f                 ; $c646: a9 3f
	sta $0b                  ; $c648: 85 0b
	ldy #$00                 ; $c64a: a0 00

; === Block $c64c-$c653 (Code) ===
loc_c64c:
	lda #$0f                 ; $c64c: a9 0f
	sta $08                  ; $c64e: 85 08
	jsr sub_c690             ; $c650: 20 90 c6

; === Block $c651-$c660 (Code) ===
entry_c651:
	bcc $c619                ; $c651: 90 c6
loc_c653:
	jsr sub_c661             ; $c653: 20 61 c6
loc_c656:
	jsr sub_c661             ; $c656: 20 61 c6
loc_c659:
	jsr sub_c661             ; $c659: 20 61 c6
loc_c65c:
	cpy #$0c                 ; $c65c: c0 0c
	bne $c64c                ; $c65e: d0 ec
loc_c660:
	rts                      ; $c660: 60

; === Block $c661-$c680 (Code) ===
loc_c661:
	lda $0a                  ; $c661: a5 0a
	cmp #$01                 ; $c663: c9 01
	beq $c671                ; $c665: f0 0a
loc_c667:
	cmp #$03                 ; $c667: c9 03
	bne $c680                ; $c669: d0 15
loc_c66b:
	lda $e0                  ; $c66b: a5 e0
	cmp #$27                 ; $c66d: c9 27
	bne $c680                ; $c66f: d0 0f
loc_c671:
	lda $ca                  ; $c671: a5 ca
	lsr                      ; $c673: 4a
	lsr                      ; $c674: 4a
	clc                      ; $c675: 18
	adc #$01                 ; $c676: 69 01
	cmp $c5                  ; $c678: c5 c5
	bcc $c680                ; $c67a: 90 04
loc_c67c:
	lda #$26                 ; $c67c: a9 26
	bne $c682                ; $c67e: d0 02

; === Block $c680-$c68f (Code) ===
entry_c680:
	lda ($0c),y              ; $c680: b1 0c
	sec                      ; $c682: 38
	sbc $3c                  ; $c683: e5 3c
	bcs $c689                ; $c685: b0 02
loc_c687:
	lda #$0f                 ; $c687: a9 0f
loc_c689:
	sta $08                  ; $c689: 85 08
	jsr sub_c690             ; $c68b: 20 90 c6
loc_c68e:
	iny                      ; $c68e: c8
	rts                      ; $c68f: 60

; === Block $c690-$c699 (Code) ===
loc_c690:
	ldx $04                  ; $c690: a6 04
	cpx #$b0                 ; $c692: e0 b0
	bcc $c69c                ; $c694: 90 06
loc_c696:
	jsr sub_ff74             ; $c696: 20 74 ff
loc_c699:
	jmp sub_c690             ; $c699: 4c 90 c6

; === Block $c69c-$c6ac (Code) ===
loc_c69c:
	ldx $04                  ; $c69c: a6 04
	lda $0b                  ; $c69e: a5 0b
	sta $0300,x              ; $c6a0: 9d 00 03
	inx                      ; $c6a3: e8
	lda $0a                  ; $c6a4: a5 0a
	sta $0300,x              ; $c6a6: 9d 00 03
	inx                      ; $c6a9: e8
	lda $08                  ; $c6aa: a5 08

; === Block $c6ab-$c6ba (Code) ===
entry_c6ab:
	php                      ; $c6ab: 08
	sta $0300,x              ; $c6ac: 9d 00 03
	inx                      ; $c6af: e8
	inc $03                  ; $c6b0: e6 03
	stx $04                  ; $c6b2: 86 04
	inc $0a                  ; $c6b4: e6 0a
	bne $c6ba                ; $c6b6: d0 02
loc_c6b8:
	inc $0b                  ; $c6b8: e6 0b
loc_c6ba:
	rts                      ; $c6ba: 60

; === Block $c6bb-$c6c8 (Code) ===
loc_c6bb:
	jsr sub_ff74             ; $c6bb: 20 74 ff
loc_c6be:
	ldx #$00                 ; $c6be: a2 00
	lda #$f0                 ; $c6c0: a9 f0
	sta $0200,x              ; $c6c2: 9d 00 02
	inx                      ; $c6c5: e8
	bne $c6c2                ; $c6c6: d0 fa
loc_c6c8:
	rts                      ; $c6c8: 60

; === Block $c6e0-$c6e5 (Code) ===
entry_c6e0:
	*rla $f420,x             ; $c6e0: 3f 20 f4
	cmp ($a5,x)              ; $c6e3: c1 a5
	rti                      ; $c6e5: 40

; === Block $c6f0-$c6f4 (Code) ===
loc_c6f0:
	pla                      ; $c6f0: 68
	clc                      ; $c6f1: 18
	adc #$01                 ; $c6f2: 69 01

; === Block $c703-$c703 (Code) ===
loc_c703:
	brk                      ; $c703: 00

; === Block $c707-$c717 (Code) ===
loc_c707:
	lda $4d                  ; $c707: a5 4d
	bne $c71a                ; $c709: d0 0f
loc_c70b:
	ldy #$00                 ; $c70b: a0 00
	lda ($99),y              ; $c70d: b1 99
	cmp #$ff                 ; $c70f: c9 ff
	beq $c71a                ; $c711: f0 07
loc_c713:
	cmp #$fe                 ; $c713: c9 fe
	beq $c71a                ; $c715: f0 03
loc_c717:
	jmp $c734                ; $c717: 4c 34 c7

; === Block $c71a-$c733 (Code) ===
loc_c71a:
	lda #$00                 ; $c71a: a9 00
	sta $4c                  ; $c71c: 85 4c
	sta $d1                  ; $c71e: 85 d1
	jsr $ad66                ; $c720: 20 66 ad
loc_c723:
	ldy #$00                 ; $c723: a0 00
	lda #$ff                 ; $c725: a9 ff
	sta ($99),y              ; $c727: 91 99
	iny                      ; $c729: c8
	sta ($99),y              ; $c72a: 91 99
	ldy #$20                 ; $c72c: a0 20
	sta ($99),y              ; $c72e: 91 99
	iny                      ; $c730: c8
	sta ($99),y              ; $c731: 91 99
	rts                      ; $c733: 60

; === Block $c734-$c7bc (Code) ===
loc_c734:
	lda $4b                  ; $c734: a5 4b
	asl                      ; $c736: 0a
	adc $10                  ; $c737: 65 10
	clc                      ; $c739: 18
	adc #$1e                 ; $c73a: 69 1e
	sta $3c                  ; $c73c: 85 3c
	lda #$1e                 ; $c73e: a9 1e
	sta $3e                  ; $c740: 85 3e
	jsr $c1f0                ; $c742: 20 f0 c1
loc_c745:
	lda $40                  ; $c745: a5 40
	sta $3e                  ; $c747: 85 3e
	sta $49                  ; $c749: 85 49
	lda $4a                  ; $c74b: a5 4a
	asl                      ; $c74d: 0a
	clc                      ; $c74e: 18
	adc $0f                  ; $c74f: 65 0f
	and #$3f                 ; $c751: 29 3f
	sta $3c                  ; $c753: 85 3c
	sta $48                  ; $c755: 85 48
	jsr $c5aa                ; $c757: 20 aa c5
loc_c75a:
	ldy #$00                 ; $c75a: a0 00
	lda ($99),y              ; $c75c: b1 99
	sta $08                  ; $c75e: 85 08
	jsr sub_c690             ; $c760: 20 90 c6
loc_c763:
	iny                      ; $c763: c8
	lda ($99),y              ; $c764: b1 99
	sta $08                  ; $c766: 85 08
	jsr sub_c690             ; $c768: 20 90 c6
loc_c76b:
	lda $0a                  ; $c76b: a5 0a
	clc                      ; $c76d: 18
	adc #$1e                 ; $c76e: 69 1e
	sta $0a                  ; $c770: 85 0a
	bcc $c776                ; $c772: 90 02
loc_c774:
	inc $0b                  ; $c774: e6 0b
loc_c776:
	ldy #$20                 ; $c776: a0 20
	lda ($99),y              ; $c778: b1 99
	sta $08                  ; $c77a: 85 08
	jsr sub_c690             ; $c77c: 20 90 c6
loc_c77f:
	iny                      ; $c77f: c8
	lda ($99),y              ; $c780: b1 99
	sta $08                  ; $c782: 85 08
	jsr sub_c690             ; $c784: 20 90 c6
loc_c787:
	lda $48                  ; $c787: a5 48
	sta $3c                  ; $c789: 85 3c
	lda $49                  ; $c78b: a5 49
	sta $3e                  ; $c78d: 85 3e
	ldy #$00                 ; $c78f: a0 00
	lda ($99),y              ; $c791: b1 99
	cmp #$c1                 ; $c793: c9 c1
	bcs $c79b                ; $c795: b0 04
loc_c797:
	lda #$00                 ; $c797: a9 00
	beq $c7ad                ; $c799: f0 12
loc_c79b:
	cmp #$ca                 ; $c79b: c9 ca
	bcs $c7a3                ; $c79d: b0 04
loc_c79f:
	lda #$01                 ; $c79f: a9 01
	bne $c7ad                ; $c7a1: d0 0a
loc_c7a3:
	cmp #$de                 ; $c7a3: c9 de
	bcs $c7ab                ; $c7a5: b0 04
loc_c7a7:
	lda #$02                 ; $c7a7: a9 02
	bne $c7ad                ; $c7a9: d0 02
loc_c7ab:
	lda #$03                 ; $c7ab: a9 03
loc_c7ad:
	sta $08                  ; $c7ad: 85 08
	jsr $c006                ; $c7af: 20 06 c0
loc_c7b2:
	lda $0b                  ; $c7b2: a5 0b
	clc                      ; $c7b4: 18
	adc #$20                 ; $c7b5: 69 20
	sta $0b                  ; $c7b7: 85 0b
	jsr sub_c690             ; $c7b9: 20 90 c6
loc_c7bc:
	rts                      ; $c7bc: 60

; === Block $c7bd-$c7c5 (Code) ===
loc_c7bd:
	sta $3c                  ; $c7bd: 85 3c
	lda #$00                 ; $c7bf: a9 00
	sta $3d                  ; $c7c1: 85 3d
	beq $c7e4                ; $c7c3: f0 1f

; === Block $c7c5-$c7cb (Code) ===
loc_c7c5:
	lda #$01                 ; $c7c5: a9 01
	sta $3d                  ; $c7c7: 85 3d
	bne $c7cf                ; $c7c9: d0 04

; === Block $c7cb-$c7e8 (Code) ===
loc_c7cb:
	lda #$00                 ; $c7cb: a9 00
	sta $3d                  ; $c7cd: 85 3d
	pla                      ; $c7cf: 68
	clc                      ; $c7d0: 18
	adc #$01                 ; $c7d1: 69 01
	sta $3e                  ; $c7d3: 85 3e
	pla                      ; $c7d5: 68
	adc #$00                 ; $c7d6: 69 00
	sta $3f                  ; $c7d8: 85 3f
	pha                      ; $c7da: 48
	lda $3e                  ; $c7db: a5 3e
	pha                      ; $c7dd: 48
	ldy #$00                 ; $c7de: a0 00
	lda ($3e),y              ; $c7e0: b1 3e
	sta $3c                  ; $c7e2: 85 3c
	lda $3c                  ; $c7e4: a5 3c
	ldx $3d                  ; $c7e6: a6 3d
	brk                      ; $c7e8: 00

; === Block $c9b5-$c9cb (Code) ===
loc_c9b5:
	lda #$00                 ; $c9b5: a9 00
	jsr sub_ff91             ; $c9b7: 20 91 ff
loc_c9ba:
	lda #$00                 ; $c9ba: a9 00
	tax                      ; $c9bc: aa
	sta $600a                ; $c9bd: 8d 0a 60
	sta $602f                ; $c9c0: 8d 2f 60
	sta $601c,x              ; $c9c3: 9d 1c 60
	inx                      ; $c9c6: e8
	cpx #$10                 ; $c9c7: e0 10
	bcc $c9c3                ; $c9c9: 90 f8
loc_c9cb:
	brk                      ; $c9cb: 00

; === Block $cb47-$cb75 (Code) ===
loc_cb47:
	jsr sub_ff74             ; $cb47: 20 74 ff
loc_cb4a:
	lda $9a18                ; $cb4a: ad 18 9a
	sta $0c                  ; $cb4d: 85 0c
	lda $9a19                ; $cb4f: ad 19 9a
	sta $0d                  ; $cb52: 85 0d
	lda #$00                 ; $cb54: a9 00
	sta $3c                  ; $cb56: 85 3c
	jsr sub_c632             ; $cb58: 20 32 c6
loc_cb5b:
	lda #$30                 ; $cb5b: a9 30
	sta $3c                  ; $cb5d: 85 3c
	jsr sub_c63d             ; $cb5f: 20 3d c6
loc_cb62:
	jsr sub_ff74             ; $cb62: 20 74 ff
loc_cb65:
	jsr $f050                ; $cb65: 20 50 f0
loc_cb68:
	jsr sub_fc98             ; $cb68: 20 98 fc
loc_cb6b:
	lda $cf                  ; $cb6b: a5 cf
	and #$c0                 ; $cb6d: 29 c0
	beq $cb78                ; $cb6f: f0 07
loc_cb71:
	lda #$01                 ; $cb71: a9 01
	sta $c5                  ; $cb73: 85 c5
	jmp $cb96                ; $cb75: 4c 96 cb

; === Block $cb78-$cbda (Code) ===
loc_cb78:
	lda $603a                ; $cb78: ad 3a 60
	cmp #$78                 ; $cb7b: c9 78
	bne $cb96                ; $cb7d: d0 17
loc_cb7f:
	txa                      ; $cb7f: 8a
	pha                      ; $cb80: 48
	lda $ca                  ; $cb81: a5 ca
	sta $c5                  ; $cb83: 85 c5
	lda $cb                  ; $cb85: a5 cb
	sta $c6                  ; $cb87: 85 c6
	ldx $6039                ; $cb89: ae 39 60
	lda #$ab                 ; $cb8c: a9 ab
	sta $6045,x              ; $cb8e: 9d 45 60
	sta $603a                ; $cb91: 8d 3a 60
	pla                      ; $cb94: 68
	tax                      ; $cb95: aa
loc_cb96:
	lda #$03                 ; $cb96: a9 03
	sta $3a                  ; $cb98: 85 3a
	sta $8e                  ; $cb9a: 85 8e
	lda #$04                 ; $cb9c: a9 04
	sta $3b                  ; $cb9e: 85 3b
	sta $8f                  ; $cba0: 85 8f
	lda #$30                 ; $cba2: a9 30
	sta $90                  ; $cba4: 85 90
	lda #$40                 ; $cba6: a9 40
	sta $92                  ; $cba8: 85 92
	lda #$00                 ; $cbaa: a9 00
	sta $d6                  ; $cbac: 85 d6
	sta $db                  ; $cbae: 85 db
	sta $91                  ; $cbb0: 85 91
	sta $93                  ; $cbb2: 85 93
	lda #$08                 ; $cbb4: a9 08
	sta $4a                  ; $cbb6: 85 4a
	lda #$07                 ; $cbb8: a9 07
	sta $4b                  ; $cbba: 85 4b
	lda #$05                 ; $cbbc: a9 05
	sta $45                  ; $cbbe: 85 45
	jsr $a788                ; $cbc0: 20 88 a7
loc_cbc3:
	jsr $b091                ; $cbc3: 20 91 b0
loc_cbc6:
	jsr sub_ff74             ; $cbc6: 20 74 ff
loc_cbc9:
	lda #$00                 ; $cbc9: a9 00
	sta $4f                  ; $cbcb: 85 4f
	jsr sub_c608             ; $cbcd: 20 08 c6
loc_cbd0:
	lda $47                  ; $cbd0: a5 47
	bne $cbdd                ; $cbd2: d0 09
loc_cbd4:
	jsr sub_ff74             ; $cbd4: 20 74 ff
loc_cbd7:
	jsr $b6da                ; $cbd7: 20 da b6
loc_cbda:
	jmp $cbcd                ; $cbda: 4c cd cb

; === Block $cbdd-$cbeb (Code) ===
loc_cbdd:
	jsr sub_ff74             ; $cbdd: 20 74 ff
loc_cbe0:
	lda $4f                  ; $cbe0: a5 4f
	and #$0f                 ; $cbe2: 29 0f
	cmp #$01                 ; $cbe4: c9 01
	beq $cbee                ; $cbe6: f0 06
loc_cbe8:
	jsr $b6da                ; $cbe8: 20 da b6
loc_cbeb:
	jmp $cbdd                ; $cbeb: 4c dd cb

; === Block $cbee-$cbf6 (Code) ===
loc_cbee:
	lda #$ff                 ; $cbee: a9 ff
	sta $96                  ; $cbf0: 85 96
	jsr sub_c6f0             ; $cbf2: 20 f0 c6
loc_cbf5:
	*jam                     ; $cbf5: 02
	rts                      ; $cbf6: 60

; === Block $cf6a-$cf73 (Code) ===
loc_cf6a:
	lda #$03                 ; $cf6a: a9 03
	jsr $a7a2                ; $cf6c: 20 a2 a7
loc_cf6f:
	lda #$00                 ; $cf6f: a9 00
	sta $96                  ; $cf71: 85 96
	rts                      ; $cf73: 60

; === Block $cfd9-$cfe1 (Code) ===
loc_cfd9:
	jsr $cfe4                ; $cfd9: 20 e4 cf
loc_cfdc:
	lda #$02                 ; $cfdc: a9 02
	jsr $a7a2                ; $cfde: 20 a2 a7
loc_cfe1:
	jmp $cf6a                ; $cfe1: 4c 6a cf

; === Block $cfe4-$cff8 (Code) ===
loc_cfe4:
	jsr sub_ff74             ; $cfe4: 20 74 ff
loc_cfe7:
	jsr sub_c608             ; $cfe7: 20 08 c6
loc_cfea:
	lda $47                  ; $cfea: a5 47
	bne $cfe4                ; $cfec: d0 f6
loc_cfee:
	jsr sub_ff74             ; $cfee: 20 74 ff
loc_cff1:
	jsr sub_c608             ; $cff1: 20 08 c6
loc_cff4:
	lda $47                  ; $cff4: a5 47
	beq $cfee                ; $cff6: f0 f6
loc_cff8:
	rts                      ; $cff8: 60

; === Block $d242-$d245 (Code) ===
loc_d242:
	jsr $c7bd                ; $d242: 20 bd c7
loc_d245:
	jmp $cfd9                ; $d245: 4c d9 cf

; === Block $d981-$d999 (Code) ===
loc_d981:
	and #$03                 ; $d981: 29 03
	sta $602f                ; $d983: 8d 2f 60
	lda #$00                 ; $d986: a9 00
	sta $91                  ; $d988: 85 91
	sta $93                  ; $d98a: 85 93
	ldx #$04                 ; $d98c: a2 04
	asl $90                  ; $d98e: 06 90
	rol $91                  ; $d990: 26 91
	asl $92                  ; $d992: 06 92
	rol $93                  ; $d994: 26 93
	dex                      ; $d996: ca
	bne $d98e                ; $d997: d0 f5
loc_d999:
	jmp $b097                ; $d999: 4c 97 b0

; === Block $d9e2-$d9fb (Code) ===
loc_d9e2:
	pha                      ; $d9e2: 48
	lda $f3c8,x              ; $d9e3: bd c8 f3
	sta $45                  ; $d9e6: 85 45
	lda $f3c9,x              ; $d9e8: bd c9 f3
	sta $3a                  ; $d9eb: 85 3a
	sta $8e                  ; $d9ed: 85 8e
	sta $90                  ; $d9ef: 85 90
	lda $f3ca,x              ; $d9f1: bd ca f3
	sta $3b                  ; $d9f4: 85 3b
	sta $8f                  ; $d9f6: 85 8f
	sta $92                  ; $d9f8: 85 92
	pla                      ; $d9fa: 68
	jmp $d981                ; $d9fb: 4c 81 d9

; === Block $dbe4-$dbf0 (Code) ===
loc_dbe4:
	lda #$08                 ; $dbe4: a9 08
	sta $3c                  ; $dbe6: 85 3c
	lda #$01                 ; $dbe8: a9 01
	sta $3d                  ; $dbea: 85 3d
	ldy #$00                 ; $dbec: a0 00
	beq $dc10                ; $dbee: f0 20

; === Block $dbf0-$dc1a (Code) ===
loc_dbf0:
	clc                      ; $dbf0: 18
	adc #$03                 ; $dbf1: 69 03
	tax                      ; $dbf3: aa
	inx                      ; $dbf4: e8
	lda $f152                ; $dbf5: ad 52 f1
	sta $3c                  ; $dbf8: 85 3c
	lda $f153                ; $dbfa: ad 53 f1
	sta $3d                  ; $dbfd: 85 3d
	ldy #$00                 ; $dbff: a0 00
	lda ($3c),y              ; $dc01: b1 3c
	inc $3c                  ; $dc03: e6 3c
	bne $dc09                ; $dc05: d0 02
loc_dc07:
	inc $3d                  ; $dc07: e6 3d
loc_dc09:
	cmp #$fa                 ; $dc09: c9 fa
	bne $dc01                ; $dc0b: d0 f4
loc_dc0d:
	dex                      ; $dc0d: ca
	bne $dc01                ; $dc0e: d0 f1
loc_dc10:
	lda ($3c),y              ; $dc10: b1 3c
	sta $00a3,y              ; $dc12: 99 a3 00
	iny                      ; $dc15: c8
	cmp #$fa                 ; $dc16: c9 fa
	bne $dc10                ; $dc18: d0 f6
loc_dc1a:
	rts                      ; $dc1a: 60

; === Block $df77-$dfb8 (Code) ===
loc_df77:
	ldx #$00                 ; $df77: a2 00
	lda #$01                 ; $df79: a9 01
	sta $a3,x                ; $df7b: 95 a3
	inx                      ; $df7d: e8
	lda $c0                  ; $df7e: a5 c0
	beq $df87                ; $df80: f0 05
loc_df82:
	lda #$02                 ; $df82: a9 02
	sta $a3,x                ; $df84: 95 a3
	inx                      ; $df86: e8
loc_df87:
	lda $bf                  ; $df87: a5 bf
	beq $df90                ; $df89: f0 05
loc_df8b:
	lda #$03                 ; $df8b: a9 03
	sta $a3,x                ; $df8d: 95 a3
	inx                      ; $df8f: e8
loc_df90:
	ldy #$00                 ; $df90: a0 00
	lda $00c1,y              ; $df92: b9 c1 00
	and #$0f                 ; $df95: 29 0f
	beq $df9f                ; $df97: f0 06
loc_df99:
	clc                      ; $df99: 18
	adc #$03                 ; $df9a: 69 03
	sta $a3,x                ; $df9c: 95 a3
	inx                      ; $df9e: e8
loc_df9f:
	lda $00c1,y              ; $df9f: b9 c1 00
	and #$f0                 ; $dfa2: 29 f0
	beq $dfaf                ; $dfa4: f0 09
loc_dfa6:
	lsr                      ; $dfa6: 4a
	lsr                      ; $dfa7: 4a
	lsr                      ; $dfa8: 4a
	lsr                      ; $dfa9: 4a
	adc #$03                 ; $dfaa: 69 03
	sta $a3,x                ; $dfac: 95 a3
	inx                      ; $dfae: e8
loc_dfaf:
	iny                      ; $dfaf: c8
	cpy #$04                 ; $dfb0: c0 04
	bne $df92                ; $dfb2: d0 de
loc_dfb4:
	lda #$ff                 ; $dfb4: a9 ff
	sta $a3,x                ; $dfb6: 95 a3
	rts                      ; $dfb8: 60

; === Block $dff6-$dffc (Code) ===
loc_dff6:
	jsr $c7cb                ; $dff6: 20 cb c7
loc_dff9:
	*jam                     ; $dff9: 42
	lda #$17                 ; $dffa: a9 17
	brk                      ; $dffc: 00

; === Block $e003-$e00c (Code) ===
loc_e003:
	jsr $c7cb                ; $e003: 20 cb c7
loc_e006:
	*sre ($4c,x)             ; $e006: 43 4c
	*nop                     ; $e008: fa
	*dcp $3ca9,x             ; $e009: df a9 3c PPUMASK

; === Block $e00a-$e01b (Code) ===
loc_e00a:
	lda #$3c                 ; $e00a: a9 3c
	jsr $dbf0                ; $e00c: 20 f0 db
loc_e00f:
	lda $cf                  ; $e00f: a5 cf
	bmi $e003                ; $e011: 30 f0
loc_e013:
	lda $cf                  ; $e013: a5 cf
	ora #$80                 ; $e015: 09 80
	sta $cf                  ; $e017: 85 cf
	bne $dff6                ; $e019: d0 db

; === Block $e01b-$e02d (Code) ===
loc_e01b:
	sta $3e                  ; $e01b: 85 3e
	ldx #$00                 ; $e01d: a2 00
	lda $c1,x                ; $e01f: b5 c1
	and #$0f                 ; $e021: 29 0f
	bne $e02e                ; $e023: d0 09
loc_e025:
	lda $c1,x                ; $e025: b5 c1
	and #$f0                 ; $e027: 29 f0
	ora $3e                  ; $e029: 05 3e
	sta $c1,x                ; $e02b: 95 c1
	rts                      ; $e02d: 60

; === Block $e02e-$e044 (Code) ===
loc_e02e:
	lda $c1,x                ; $e02e: b5 c1
	and #$f0                 ; $e030: 29 f0
	bne $e045                ; $e032: d0 11
loc_e034:
	asl $3e                  ; $e034: 06 3e
	asl $3e                  ; $e036: 06 3e
	asl $3e                  ; $e038: 06 3e
	asl $3e                  ; $e03a: 06 3e
	lda $c1,x                ; $e03c: b5 c1
	and #$0f                 ; $e03e: 29 0f
	ora $3e                  ; $e040: 05 3e
	sta $c1,x                ; $e042: 95 c1
	rts                      ; $e044: 60

; === Block $e045-$e04a (Code) ===
loc_e045:
	inx                      ; $e045: e8
	cpx #$04                 ; $e046: e0 04
	bne $e01f                ; $e048: d0 d5
loc_e04a:
	rts                      ; $e04a: 60

; === Block $e04b-$e054 (Code) ===
loc_e04b:
	jsr $e055                ; $e04b: 20 55 e0
loc_e04e:
	and $00c1,y              ; $e04e: 39 c1 00
	sta $00c1,y              ; $e051: 99 c1 00
	rts                      ; $e054: 60

; === Block $e055-$e064 (Code) ===
loc_e055:
	ldy #$00                 ; $e055: a0 00
	sta $3c                  ; $e057: 85 3c
	lda $00c1,y              ; $e059: b9 c1 00
	and #$0f                 ; $e05c: 29 0f
	cmp $3c                  ; $e05e: c5 3c
	bne $e065                ; $e060: d0 03
loc_e062:
	lda #$f0                 ; $e062: a9 f0
	rts                      ; $e064: 60

; === Block $e065-$e072 (Code) ===
loc_e065:
	lda $00c1,y              ; $e065: b9 c1 00
	lsr                      ; $e068: 4a
	lsr                      ; $e069: 4a
	lsr                      ; $e06a: 4a
	lsr                      ; $e06b: 4a
	cmp $3c                  ; $e06c: c5 3c
	bne $e073                ; $e06e: d0 03
loc_e070:
	lda #$0f                 ; $e070: a9 0f
	rts                      ; $e072: 60

; === Block $e073-$e07a (Code) ===
loc_e073:
	iny                      ; $e073: c8
	cpy #$04                 ; $e074: c0 04
	bne $e059                ; $e076: d0 e1
loc_e078:
	lda #$ff                 ; $e078: a9 ff
	rts                      ; $e07a: 60

; === Block $e07b-$e091 (Code) ===
loc_e07b:
	sta $de                  ; $e07b: 85 de
	jsr $c7cb                ; $e07d: 20 cb c7
loc_e080:
	cpy $f020                ; $e080: cc 20 f0
	dec $09                  ; $e083: c6 09
	beq $e094                ; $e085: f0 0d
loc_e087:
	lda $de                  ; $e087: a5 de
	clc                      ; $e089: 18
	adc #$31                 ; $e08a: 69 31
	jsr $dbf0                ; $e08c: 20 f0 db
loc_e08f:
	lda #$cd                 ; $e08f: a9 cd
	jmp $d242                ; $e091: 4c 42 d2

; === Block $e094-$e0c5 (Code) ===
loc_e094:
	jsr $c7cb                ; $e094: 20 cb c7
loc_e097:
	dec $7720                ; $e097: ce 20 77
	*dcp $f020,x             ; $e09a: df 20 f0
	dec $07                  ; $e09d: c6 07
	cmp #$ff                 ; $e09f: c9 ff
	beq $e087                ; $e0a1: f0 e4
loc_e0a3:
	tax                      ; $e0a3: aa
	lda $a4,x                ; $e0a4: b5 a4
	ldy #$00                 ; $e0a6: a0 00
	cmp $e0fa,y              ; $e0a8: d9 fa e0
	bne $e0b4                ; $e0ab: d0 07
loc_e0ad:
	jsr $c7cb                ; $e0ad: 20 cb c7
loc_e0b0:
	cmp ($4c),y              ; $e0b0: d1 4c
	sty $e0,x                ; $e0b2: 94 e0
loc_e0b4:
	iny                      ; $e0b4: c8
	cpy #$09                 ; $e0b5: c0 09
	bne $e0a8                ; $e0b7: d0 ef
loc_e0b9:
	cmp #$0c                 ; $e0b9: c9 0c
	bne $e0c8                ; $e0bb: d0 0b
loc_e0bd:
	bit $cf                  ; $e0bd: 24 cf
	bvc $e0c8                ; $e0bf: 50 07
loc_e0c1:
	jsr $c7cb                ; $e0c1: 20 cb c7
loc_e0c4:
	clc                      ; $e0c4: 18
	jmp $e094                ; $e0c5: 4c 94 e0

; === Block $e0c8-$e0f7 (Code) ===
loc_e0c8:
	lda $a4,x                ; $e0c8: b5 a4
	cmp #$0e                 ; $e0ca: c9 0e
	bne $e0d2                ; $e0cc: d0 04
loc_e0ce:
	lda $cf                  ; $e0ce: a5 cf
	bmi $e0c1                ; $e0d0: 30 ef
loc_e0d2:
	lda $a4,x                ; $e0d2: b5 a4
	pha                      ; $e0d4: 48
	clc                      ; $e0d5: 18
	adc #$2e                 ; $e0d6: 69 2e
	jsr $dbf0                ; $e0d8: 20 f0 db
loc_e0db:
	jsr $c7cb                ; $e0db: 20 cb c7
loc_e0de:
	*dcp $dea5               ; $e0de: cf a5 de
	clc                      ; $e0e1: 18
	adc #$31                 ; $e0e2: 69 31
	jsr $dbf0                ; $e0e4: 20 f0 db
loc_e0e7:
	jsr $c7cb                ; $e0e7: 20 cb c7
loc_e0ea:
	bne $e154                ; $e0ea: d0 68
loc_e0ec:
	sec                      ; $e0ec: 38
	sbc #$03                 ; $e0ed: e9 03
	jsr $e04b                ; $e0ef: 20 4b e0
loc_e0f2:
	lda $de                  ; $e0f2: a5 de
	jsr $e01b                ; $e0f4: 20 1b e0
loc_e0f7:
	jmp $cfd9                ; $e0f7: 4c d9 cf

; === Block $e0f6-$e11f (Code) ===
loc_e0f6:
	cpx #$4c                 ; $e0f6: e0 4c
	cmp $02cf,y              ; $e0f8: d9 cf 02
	*slo ($08,x)             ; $e0fb: 03 08
	asl                      ; $e0fd: 0a
	*anc #$0d                ; $e0fe: 0b 0d
	*slo $1110               ; $e100: 0f 10 11
	jsr sub_c6f0             ; $e103: 20 f0 c6
loc_e106:
	*jam                     ; $e106: 02
	jsr $c7cb                ; $e107: 20 cb c7
loc_e10a:
	*jam                     ; $e10a: d2
	lda $45                  ; $e10b: a5 45
	cmp #$01                 ; $e10d: c9 01
	bne $e14a                ; $e10f: d0 39
loc_e111:
	lda $3a                  ; $e111: a5 3a
	cmp #$53                 ; $e113: c9 53
	bne $e14a                ; $e115: d0 33
loc_e117:
	lda $3b                  ; $e117: a5 3b
	cmp #$71                 ; $e119: c9 71
	bne $e14a                ; $e11b: d0 2d
loc_e11d:
	lda #$07                 ; $e11d: a9 07

; === Block $e11f-$e12a (Code) ===
loc_e11f:
	sta $de                  ; $e11f: 85 de
	jsr $e055                ; $e121: 20 55 e0
loc_e124:
	cmp #$ff                 ; $e124: c9 ff
	beq $e12d                ; $e126: f0 05
loc_e128:
	lda #$d3                 ; $e128: a9 d3
	jmp $d242                ; $e12a: 4c 42 d2

; === Block $e12d-$e154 (Code) ===
loc_e12d:
	lda $de                  ; $e12d: a5 de
	clc                      ; $e12f: 18
	adc #$31                 ; $e130: 69 31
	jsr $dbf0                ; $e132: 20 f0 db
loc_e135:
	jsr $c7cb                ; $e135: 20 cb c7
loc_e138:
	cmp $a5,x                ; $e138: d5 a5
	dec $1b20,x              ; $e13a: de 20 1b
	cpx #$e0                 ; $e13d: e0 e0
	*nop $f0                 ; $e13f: 04 f0
	*slo ($4c,x)             ; $e141: 03 4c
	cmp $a5cf,y              ; $e143: d9 cf a5
	dec $7b4c,x              ; $e146: de 4c 7b
	cpx #$a5                 ; $e149: e0 a5
	eor $c9                  ; $e14b: 45 c9
	*slo $d0                 ; $e14d: 07 d0
	bpl $e0f6                ; $e14f: 10 a5
loc_e151:
	*nop                     ; $e151: 3a
	cmp #$09                 ; $e152: c9 09

; === Block $e14a-$e152 (Code) ===
loc_e14a:
	lda $45                  ; $e14a: a5 45
	cmp #$07                 ; $e14c: c9 07
	bne $e160                ; $e14e: d0 10
loc_e150:
	lda $3a                  ; $e150: a5 3a

; === Block $e154-$e187 (Code) ===
loc_e154:
	bne $e160                ; $e154: d0 0a
loc_e156:
	lda $3b                  ; $e156: a5 3b
	cmp #$06                 ; $e158: c9 06
	bne $e160                ; $e15a: d0 04
loc_e15c:
	lda #$05                 ; $e15c: a9 05
	bne $e11f                ; $e15e: d0 bf
loc_e160:
	lda $45                  ; $e160: a5 45
	cmp #$03                 ; $e162: c9 03
	bne $e18a                ; $e164: d0 24
loc_e166:
	lda $3a                  ; $e166: a5 3a
	cmp #$12                 ; $e168: c9 12
	bne $e18a                ; $e16a: d0 1e
loc_e16c:
	lda $3b                  ; $e16c: a5 3b
	cmp #$0c                 ; $e16e: c9 0c
	bne $e18a                ; $e170: d0 18
loc_e172:
	lda $be                  ; $e172: a5 be
	and #$1c                 ; $e174: 29 1c
	cmp #$1c                 ; $e176: c9 1c
	beq $e128                ; $e178: f0 ae
loc_e17a:
	lda $be                  ; $e17a: a5 be
	ora #$1c                 ; $e17c: 09 1c
	sta $be                  ; $e17e: 85 be
	lda #$28                 ; $e180: a9 28
	jsr $dbf0                ; $e182: 20 f0 db
loc_e185:
	lda #$d5                 ; $e185: a9 d5
	jmp $d242                ; $e187: 4c 42 d2

; === Block $e18a-$e18e (Code) ===
loc_e18a:
	lda $45                  ; $e18a: a5 45
	cmp #$02                 ; $e18c: c9 02

; === Block $e18b-$e19e (Code) ===
sub_619b:
	eor $c9                  ; $e18b: 45 c9
	*jam                     ; $e18d: 02
	bne $e1c8                ; $e18e: d0 38
loc_e190:
	lda $3a                  ; $e190: a5 3a
	cmp #$0a                 ; $e192: c9 0a
	bne $e1c8                ; $e194: d0 32
loc_e196:
	lda $3b                  ; $e196: a5 3b
	cmp #$03                 ; $e198: c9 03
	bne $e1a1                ; $e19a: d0 05
loc_e19c:
	lda #$d6                 ; $e19c: a9 d6
	jmp $d242                ; $e19e: 4c 42 d2

; === Block $e1a1-$e1bb (Code) ===
sub_61b1:
	cmp #$01                 ; $e1a1: c9 01
	bne $e1c8                ; $e1a3: d0 23
loc_e1a5:
	lda $cf                  ; $e1a5: a5 cf
	and #$04                 ; $e1a7: 29 04
	bne $e1c8                ; $e1a9: d0 1d
loc_e1ab:
	lda $cf                  ; $e1ab: a5 cf
	ora #$04                 ; $e1ad: 09 04
	sta $cf                  ; $e1af: 85 cf
	lda #$0f                 ; $e1b1: a9 0f
	jsr $dbf0                ; $e1b3: 20 f0 db
loc_e1b6:
	jsr $c7cb                ; $e1b6: 20 cb c7
loc_e1b9:
	cmp $a9,x                ; $e1b9: d5 a9
	brk                      ; $e1bb: 00

; === Block $e1c0-$e1c5 (Code) ===
sub_61d0:
	sta $4c                  ; $e1c0: 85 4c
	jsr $ad66                ; $e1c2: 20 66 ad
loc_e1c5:
	jmp $cfd9                ; $e1c5: 4c d9 cf

; === Block $e1c8-$e1d7 (Code) ===
loc_e1c8:
	lda $3a                  ; $e1c8: a5 3a
	sta $3c                  ; $e1ca: 85 3c
	lda $3b                  ; $e1cc: a5 3b
	sta $3e                  ; $e1ce: 85 3e
	jsr $ac17                ; $e1d0: 20 17 ac
loc_e1d3:
	lda $3c                  ; $e1d3: a5 3c
	cmp #$0c                 ; $e1d5: c9 0c

; === Block $e1d4-$e1db (Code) ===
sub_61e4:
	*nop $0cc9,x             ; $e1d4: 3c c9 0c
	bne $e1de                ; $e1d7: d0 05
loc_e1d9:
	lda #$d4                 ; $e1d9: a9 d4
	jmp $d242                ; $e1db: 4c 42 d2

; === Block $e1de-$e1e0 (Code) ===
loc_e1de:
	lda #$d3                 ; $e1de: a9 d3
	jmp $d242                ; $e1e0: 4c 42 d2

; === Block $e220-$e235 (Code) ===
sub_6230:
	*dcp $b9,x               ; $e220: d7 b9
	*rla ($03,x)             ; $e222: 23 03
	sta $de                  ; $e224: 85 de
	cmp #$03                 ; $e226: c9 03
	bne $e242                ; $e228: d0 18
loc_e22a:
	lda $bf                  ; $e22a: a5 bf
	cmp #$06                 ; $e22c: c9 06
	bne $e238                ; $e22e: d0 08
loc_e230:
	jsr $e39a                ; $e230: 20 9a e3
loc_e233:
	lda #$da                 ; $e233: a9 da
	jmp $d242                ; $e235: 4c 42 d2

; === Block $e238-$e23f (Code) ===
sub_6248:
	inc $bf                  ; $e238: e6 bf
	jsr $e39a                ; $e23a: 20 9a e3
loc_e23d:
	lda #$d9                 ; $e23d: a9 d9
	jmp $d242                ; $e23f: 4c 42 d2

; === Block $e242-$e25a (Code) ===
loc_e242:
	cmp #$02                 ; $e242: c9 02
	bne $e250                ; $e244: d0 0a
loc_e246:
	lda $c0                  ; $e246: a5 c0
	cmp #$06                 ; $e248: c9 06
	beq $e230                ; $e24a: f0 e4
loc_e24c:
	inc $c0                  ; $e24c: e6 c0
	bne $e23a                ; $e24e: d0 ea
loc_e250:
	cmp #$0e                 ; $e250: c9 0e
	bne $e297                ; $e252: d0 43
loc_e254:
	lda $df                  ; $e254: a5 df
	and #$04                 ; $e256: 29 04
	bne $e288                ; $e258: d0 2e

; === Block $e25a-$e280 (Code) ===
sub_626a:
	jsr sub_c55b             ; $e25a: 20 5b c5
loc_e25d:
	lda $95                  ; $e25d: a5 95
	and #$1f                 ; $e25f: 29 1f
	bne $e288                ; $e261: d0 25
loc_e263:
	lda $df                  ; $e263: a5 df
	ora #$04                 ; $e265: 09 04
	sta $df                  ; $e267: 85 df
	jsr $e39a                ; $e269: 20 9a e3
loc_e26c:
	lda $de                  ; $e26c: a5 de
	sec                      ; $e26e: 38
	sbc #$03                 ; $e26f: e9 03
	sta $de                  ; $e271: 85 de
	jsr $c7cb                ; $e273: 20 cb c7
loc_e276:
	cmp $dea5,y              ; $e276: d9 a5 de
	jsr $e01b                ; $e279: 20 1b e0
loc_e27c:
	cpx #$04                 ; $e27c: e0 04
	beq $e283                ; $e27e: f0 03
loc_e280:
	jmp $cfd9                ; $e280: 4c d9 cf

; === Block $e283-$e285 (Code) ===
loc_e283:
	lda $de                  ; $e283: a5 de
	jmp $e07b                ; $e285: 4c 7b e0

; === Block $e288-$e294 (Code) ===
loc_e288:
	lda #$1f                 ; $e288: a9 1f
	sta $3e                  ; $e28a: 85 3e
	lda #$64                 ; $e28c: a9 64
	sta $00                  ; $e28e: 85 00
	lda #$00                 ; $e290: a9 00
	sta $01                  ; $e292: 85 01
	jmp $e365                ; $e294: 4c 65 e3

; === Block $e297-$e2a3 (Code) ===
loc_e297:
	cmp #$11                 ; $e297: c9 11
	bne $e2b9                ; $e299: d0 1e
loc_e29b:
	lda $be                  ; $e29b: a5 be
	and #$e0                 ; $e29d: 29 e0
	cmp #$e0                 ; $e29f: c9 e0
	bne $e2a6                ; $e2a1: d0 03
loc_e2a3:
	jmp $e230                ; $e2a3: 4c 30 e2

; === Block $e2a6-$e2aa (Code) ===
loc_e2a6:
	lda $be                  ; $e2a6: a5 be
	ora #$e0                 ; $e2a8: 09 e0

; === Block $e2a7-$e2b6 (Code) ===
sub_62b7:
	ldx $e009,y              ; $e2a7: be 09 e0
	sta $be                  ; $e2aa: 85 be
	jsr $e39a                ; $e2ac: 20 9a e3
loc_e2af:
	lda #$21                 ; $e2af: a9 21
	jsr $dbf0                ; $e2b1: 20 f0 db
loc_e2b4:
	lda #$d9                 ; $e2b4: a9 d9
	jmp $d242                ; $e2b6: 4c 42 d2

; === Block $e2b9-$e2d8 (Code) ===
loc_e2b9:
	cmp #$0d                 ; $e2b9: c9 0d
	bne $e2db                ; $e2bb: d0 1e
loc_e2bd:
	lda #$0a                 ; $e2bd: a9 0a
	jsr $e055                ; $e2bf: 20 55 e0
loc_e2c2:
	cmp #$ff                 ; $e2c2: c9 ff
	bne $e2a3                ; $e2c4: d0 dd
loc_e2c6:
	lda #$0d                 ; $e2c6: a9 0d
	jsr $e055                ; $e2c8: 20 55 e0
loc_e2cb:
	cmp #$ff                 ; $e2cb: c9 ff
	bne $e2a3                ; $e2cd: d0 d4
loc_e2cf:
	lda #$0e                 ; $e2cf: a9 0e
	jsr $e055                ; $e2d1: 20 55 e0
loc_e2d4:
	cmp #$ff                 ; $e2d4: c9 ff
	bne $e2a3                ; $e2d6: d0 cb
loc_e2d8:
	jmp $e269                ; $e2d8: 4c 69 e2

; === Block $e2db-$e2ee (Code) ===
loc_e2db:
	cmp #$0f                 ; $e2db: c9 0f
	bne $e2ea                ; $e2dd: d0 0b
loc_e2df:
	lda #$0c                 ; $e2df: a9 0c
	jsr $e055                ; $e2e1: 20 55 e0
loc_e2e4:
	cmp #$ff                 ; $e2e4: c9 ff
	bne $e2a3                ; $e2e6: d0 bb
loc_e2e8:
	beq $e2cf                ; $e2e8: f0 e5
loc_e2ea:
	cmp #$11                 ; $e2ea: c9 11
	bcs $e2f1                ; $e2ec: b0 03
loc_e2ee:
	jmp $e269                ; $e2ee: 4c 69 e2

; === Block $e2f1-$e2ff (Code) ===
loc_e2f1:
	cmp #$12                 ; $e2f1: c9 12
	bne $e303                ; $e2f3: d0 0e
loc_e2f5:
	lda #$0f                 ; $e2f5: a9 0f
	sta $3e                  ; $e2f7: 85 3e
	lda #$05                 ; $e2f9: a9 05
	sta $00                  ; $e2fb: 85 00
	lda #$00                 ; $e2fd: a9 00

; === Block $e2fa-$e360 (Code) ===
sub_630a:
	ora $85                  ; $e2fa: 05 85
	brk                      ; $e2fc: 00 Bank call: bank 0, Bank0_Funca9
	.byte $a9                ; $e2fd: a9 Function index
	.byte $00                ; $e2fe: 00 Target bank
	sta $01                  ; $e2ff: 85 01
	beq $e365                ; $e301: f0 62
loc_e303:
	cmp #$13                 ; $e303: c9 13
	bne $e315                ; $e305: d0 0e
loc_e307:
	lda #$07                 ; $e307: a9 07
	sta $3e                  ; $e309: 85 3e
	lda #$06                 ; $e30b: a9 06
	sta $00                  ; $e30d: 85 00
	lda #$00                 ; $e30f: a9 00
	sta $01                  ; $e311: 85 01
	beq $e365                ; $e313: f0 50
loc_e315:
	cmp #$14                 ; $e315: c9 14
	bne $e327                ; $e317: d0 0e
loc_e319:
	lda #$07                 ; $e319: a9 07
	sta $3e                  ; $e31b: 85 3e
	lda #$0a                 ; $e31d: a9 0a
	sta $00                  ; $e31f: 85 00
	lda #$00                 ; $e321: a9 00
	sta $01                  ; $e323: 85 01
	beq $e365                ; $e325: f0 3e
loc_e327:
	cmp #$15                 ; $e327: c9 15
	bne $e339                ; $e329: d0 0e
loc_e32b:
	lda #$ff                 ; $e32b: a9 ff
	sta $3e                  ; $e32d: 85 3e
	lda #$f4                 ; $e32f: a9 f4
	sta $00                  ; $e331: 85 00
	lda #$01                 ; $e333: a9 01
	sta $01                  ; $e335: 85 01
	bne $e365                ; $e337: d0 2c
loc_e339:
	cmp #$16                 ; $e339: c9 16
	bne $e349                ; $e33b: d0 0c
loc_e33d:
	lda #$00                 ; $e33d: a9 00
	sta $3e                  ; $e33f: 85 3e
	sta $01                  ; $e341: 85 01
	lda #$78                 ; $e343: a9 78
	sta $00                  ; $e345: 85 00
	bne $e365                ; $e347: d0 1c
loc_e349:
	jsr $e39a                ; $e349: 20 9a e3
loc_e34c:
	ldx #$00                 ; $e34c: a2 00
	lda $e363,x              ; $e34e: bd 63 e3
	sta $a3,x                ; $e351: 95 a3
	inx                      ; $e353: e8
	cpx #$02                 ; $e354: e0 02
	bne $e34e                ; $e356: d0 f6
loc_e358:
	jsr $c7cb                ; $e358: 20 cb c7
loc_e35b:
	cmp $c520,y              ; $e35b: d9 20 c5
	*dcp $03                 ; $e35e: c7 03
	jmp $cfd9                ; $e360: 4c d9 cf

; === Block $e365-$e396 (Code) ===
loc_e365:
	jsr sub_c55b             ; $e365: 20 5b c5
loc_e368:
	lda $95                  ; $e368: a5 95
	and $3e                  ; $e36a: 25 3e
	clc                      ; $e36c: 18
	adc $00                  ; $e36d: 65 00
	sta $00                  ; $e36f: 85 00
	lda $01                  ; $e371: a5 01
	adc #$00                 ; $e373: 69 00
	sta $01                  ; $e375: 85 01
	jsr $e39a                ; $e377: 20 9a e3
loc_e37a:
	lda $bc                  ; $e37a: a5 bc
	clc                      ; $e37c: 18
	adc $00                  ; $e37d: 65 00
	sta $bc                  ; $e37f: 85 bc
	lda $bd                  ; $e381: a5 bd
	adc $01                  ; $e383: 65 01
	sta $bd                  ; $e385: 85 bd
	bcc $e38f                ; $e387: 90 06
loc_e389:
	lda #$ff                 ; $e389: a9 ff
	sta $bc                  ; $e38b: 85 bc
	sta $bd                  ; $e38d: 85 bd
loc_e38f:
	jsr $c7cb                ; $e38f: 20 cb c7
loc_e392:
	cld                      ; $e392: d8
	jsr sub_c6f0             ; $e393: 20 f0 c6
loc_e396:
	brk                      ; $e396: 00

; === Block $e39a-$e3aa (Code) ===
loc_e39a:
	ldx #$00                 ; $e39a: a2 00
	lda $601c,x              ; $e39c: bd 1c 60
	ora $601d,x              ; $e39f: 1d 1d 60
	beq $e3ab                ; $e3a2: f0 07
loc_e3a4:
	inx                      ; $e3a4: e8
	inx                      ; $e3a5: e8
	cpx #$10                 ; $e3a6: e0 10
	bne $e39c                ; $e3a8: d0 f2
loc_e3aa:
	rts                      ; $e3aa: 60

; === Block $e3ab-$e3bf (Code) ===
loc_e3ab:
	lda $3a                  ; $e3ab: a5 3a
	sta $601c,x              ; $e3ad: 9d 1c 60
	lda $3b                  ; $e3b0: a5 3b
	sta $601d,x              ; $e3b2: 9d 1d 60
	lda #$00                 ; $e3b5: a9 00
	sta $0f                  ; $e3b7: 85 0f
	sta $10                  ; $e3b9: 85 10
	sta $4c                  ; $e3bb: 85 4c
	lda #$93                 ; $e3bd: a9 93
	brk                      ; $e3bf: 00

; === Block $e3cd-$e3d3 (Code) ===
loc_e3cd:
	lda $e0                  ; $e3cd: a5 e0
	cmp #$27                 ; $e3cf: c9 27
	bne $e3d4                ; $e3d1: d0 01
loc_e3d3:
	rts                      ; $e3d3: 60

; === Block $e3d4-$e44e (Code) ===
loc_e3d4:
	ldx #$00                 ; $e3d4: a2 00
	stx $4d                  ; $e3d6: 86 4d
	stx $98                  ; $e3d8: 86 98
	lda #$0a                 ; $e3da: a9 0a
	sta $3c                  ; $e3dc: 85 3c
	lda #$05                 ; $e3de: a9 05
	sta $3d                  ; $e3e0: 85 3d
	ldy #$00                 ; $e3e2: a0 00
	lda $45                  ; $e3e4: a5 45
	cmp #$01                 ; $e3e6: c9 01
	beq $e3ee                ; $e3e8: f0 04
loc_e3ea:
	lda #$5f                 ; $e3ea: a9 5f
	bne $e3f1                ; $e3ec: d0 03
loc_e3ee:
	lda $9c8f,x              ; $e3ee: bd 8f 9c
loc_e3f1:
	sta ($3c),y              ; $e3f1: 91 3c
	inx                      ; $e3f3: e8
	iny                      ; $e3f4: c8
	cpy #$0e                 ; $e3f5: c0 0e
	bne $e3e4                ; $e3f7: d0 eb
loc_e3f9:
	lda $3c                  ; $e3f9: a5 3c
	clc                      ; $e3fb: 18
	adc #$20                 ; $e3fc: 69 20
	sta $3c                  ; $e3fe: 85 3c
	lda $3d                  ; $e400: a5 3d
	adc #$00                 ; $e402: 69 00
	sta $3d                  ; $e404: 85 3d
	cpx #$c4                 ; $e406: e0 c4
	bne $e3e2                ; $e408: d0 d8
loc_e40a:
	jsr sub_ff74             ; $e40a: 20 74 ff
loc_e40d:
	jsr $b6da                ; $e40d: 20 da b6
loc_e410:
	ldx $98                  ; $e410: a6 98
	lda $f397,x              ; $e412: bd 97 f3
	lsr                      ; $e415: 4a
	lsr                      ; $e416: 4a
	lsr                      ; $e417: 4a
	lsr                      ; $e418: 4a
	clc                      ; $e419: 18
	adc #$fa                 ; $e41a: 69 fa
	sta $0f                  ; $e41c: 85 0f
	clc                      ; $e41e: 18
	adc #$10                 ; $e41f: 69 10
	sta $3c                  ; $e421: 85 3c
	lda $f397,x              ; $e423: bd 97 f3
	and #$0f                 ; $e426: 29 0f
	clc                      ; $e428: 18
	adc #$fa                 ; $e429: 69 fa
	sta $10                  ; $e42b: 85 10
	clc                      ; $e42d: 18
	adc #$0e                 ; $e42e: 69 0e
	sta $3e                  ; $e430: 85 3e
	jsr $c59e                ; $e432: 20 9e c5
loc_e435:
	lda $0a                  ; $e435: a5 0a
	sta $99                  ; $e437: 85 99
	lda $0b                  ; $e439: a5 0b
	sta $9a                  ; $e43b: 85 9a
	jsr sub_ff74             ; $e43d: 20 74 ff
loc_e440:
	jsr $c707                ; $e440: 20 07 c7
loc_e443:
	inc $98                  ; $e443: e6 98
	lda $98                  ; $e445: a5 98
	cmp #$31                 ; $e447: c9 31
	bne $e410                ; $e449: d0 c5
loc_e44b:
	jsr sub_ff74             ; $e44b: 20 74 ff
loc_e44e:
	rts                      ; $e44e: 60

; === Block $e44f-$e459 (Code) ===
loc_e44f:
	lda $e0                  ; $e44f: a5 e0
	cmp #$27                 ; $e451: c9 27
	bne $e45d                ; $e453: d0 08
loc_e455:
	lda #$00                 ; $e455: a9 00
	sta $e0                  ; $e457: 85 e0
	brk                      ; $e459: 00

; === Block $e45d-$e46b (Code) ===
loc_e45d:
	lda #$00                 ; $e45d: a9 00
	sta $3e                  ; $e45f: 85 3e
	sta $41                  ; $e461: 85 41
	lda #$03                 ; $e463: a9 03
	sta $3f                  ; $e465: 85 3f
	lda #$a0                 ; $e467: a9 a0
	sta $40                  ; $e469: 85 40
	brk                      ; $e46b: 00

; === Block $e4df-$e4ed (Code) ===
loc_e4df:
	sta $e0                  ; $e4df: 85 e0
	sta $40                  ; $e4e1: 85 40
	cmp #$27                 ; $e4e3: c9 27
	bne $e4eb                ; $e4e5: d0 04
loc_e4e7:
	lda #$0f                 ; $e4e7: a9 0f
	bne $e4ed                ; $e4e9: d0 02
loc_e4eb:
	lda #$0e                 ; $e4eb: a9 0e
loc_e4ed:
	brk                      ; $e4ed: 00

; === Block $e536-$e540 (Code) ===
sub_6546:
	jsr $f050                ; $e536: 20 50 f0
loc_e539:
	pla                      ; $e539: 68
	sta $e0                  ; $e53a: 85 e0
	asl                      ; $e53c: 0a
	tay                      ; $e53d: a8
	ldx #$22                 ; $e53e: a2 22
	brk                      ; $e540: 00

; === Block $e548-$e563 (Code) ===
loc_e548:
	clc                      ; $e548: 18
	adc #$00                 ; $e549: 69 00
	sta $3c                  ; $e54b: 85 3c
	php                      ; $e54d: 08
	iny                      ; $e54e: c8
	lda #$01                 ; $e54f: a9 01
	jsr $fd1c                ; $e551: 20 1c fd
loc_e554:
	tay                      ; $e554: a8
	and #$7f                 ; $e555: 29 7f
	plp                      ; $e557: 28
	adc #$80                 ; $e558: 69 80
	sta $3d                  ; $e55a: 85 3d
	tya                      ; $e55c: 98
	pha                      ; $e55d: 48
	lda $3c                  ; $e55e: a5 3c
	sta $26                  ; $e560: 85 26
	pha                      ; $e562: 48

; === Block $e563-$e5d1 (Code) ===
sub_6573:
	lda $3d                  ; $e563: a5 3d
	sta $27                  ; $e565: 85 27
	pha                      ; $e567: 48
	jsr $e3cd                ; $e568: 20 cd e3
loc_e56b:
	pla                      ; $e56b: 68
	sta $3d                  ; $e56c: 85 3d
	pla                      ; $e56e: 68
	sta $3c                  ; $e56f: 85 3c
	pla                      ; $e571: 68
	and #$80                 ; $e572: 29 80
	sta $09                  ; $e574: 85 09
	lda $8d                  ; $e576: a5 8d
	ora #$80                 ; $e578: 09 80
	sta $8d                  ; $e57a: 85 8d
	jsr $e44f                ; $e57c: 20 4f e4
loc_e57f:
	jsr sub_c6f0             ; $e57f: 20 f0 c6
loc_e582:
	*jam                     ; $e582: 02
	lda $e0                  ; $e583: a5 e0
	cmp #$27                 ; $e585: c9 27
	bne $e592                ; $e587: d0 09
loc_e589:
	jsr $c7c5                ; $e589: 20 c5 c7
loc_e58c:
	ora $02ad,y              ; $e58c: 19 ad 02
	ora ($d0,x)              ; $e58f: 01 d0
	plp                      ; $e591: 28
loc_e592:
	jsr $dbe4                ; $e592: 20 e4 db
loc_e595:
	jsr $c7cb                ; $e595: 20 cb c7
loc_e598:
	*nop #$ad                ; $e598: e2 ad
	*jam                     ; $e59a: 02
	ora ($85,x)              ; $e59b: 01 85
	rol $5b20,x              ; $e59d: 3e 20 5b
	cmp $a5                  ; $e5a0: c5 a5
	sta $85,x                ; $e5a2: 95 85
	*nop $00a9,x             ; $e5a4: 3c a9 00
	sta $3d                  ; $e5a7: 85 3d
	sta $3f                  ; $e5a9: 85 3f
	jsr $c1c9                ; $e5ab: 20 c9 c1
loc_e5ae:
	lda $41                  ; $e5ae: a5 41
	lsr                      ; $e5b0: 4a
	lsr                      ; $e5b1: 4a
	sta $40                  ; $e5b2: 85 40
	lda $0102                ; $e5b4: ad 02 01
	sec                      ; $e5b7: 38
	sbc $40                  ; $e5b8: e5 40
	sta $e2                  ; $e5ba: 85 e2
	jsr $efb7                ; $e5bc: 20 b7 ef
loc_e5bf:
	jsr $eec0                ; $e5bf: 20 c0 ee
loc_e5c2:
	bcs $e5ce                ; $e5c2: b0 0a
loc_e5c4:
	jsr $dbe4                ; $e5c4: 20 e4 db
loc_e5c7:
	jsr $c7cb                ; $e5c7: 20 cb c7
loc_e5ca:
	cpx $4c                  ; $e5ca: e4 4c
	*slo $20eb,y             ; $e5cc: 1b eb 20 OAMADDR
	beq $e597                ; $e5cf: f0 c6
loc_e5d1:
	brk                      ; $e5d1: 00

; === Block $e57b-$e582 (Code) ===
sub_658b:
	sta $4f20                ; $e57b: 8d 20 4f
	cpx $20                  ; $e57e: e4 20
	beq $e548                ; $e580: f0 c6

; === Block $e597-$e5a7 (Code) ===
loc_e597:
	*dcp $e2                 ; $e597: c7 e2
	lda $0102                ; $e599: ad 02 01
	sta $3e                  ; $e59c: 85 3e
	jsr sub_c55b             ; $e59e: 20 5b c5
loc_e5a1:
	lda $95                  ; $e5a1: a5 95
	sta $3c                  ; $e5a3: 85 3c
	lda #$00                 ; $e5a5: a9 00

; === Block $e5be-$e5c4 (Code) ===
sub_65ce:
	*isc $c020               ; $e5be: ef 20 c0
	inc $0ab0                ; $e5c1: ee b0 0a

; === Block $e5ce-$e5d1 (Code) ===
loc_e5ce:
	jsr sub_c6f0             ; $e5ce: 20 f0 c6

; === Block $e5e9-$e605 (Code) ===
sub_65f9:
	sta $df                  ; $e5e9: 85 df
	jsr $c7c5                ; $e5eb: 20 c5 c7
loc_e5ee:
	php                      ; $e5ee: 08
	jsr $c7cb                ; $e5ef: 20 cb c7
loc_e5f2:
	inx                      ; $e5f2: e8
	jsr sub_c6f0             ; $e5f3: 20 f0 c6
loc_e5f6:
	*nop $a5                 ; $e5f6: 04 a5
	*dcp $f0,x               ; $e5f8: d7 f0
	*slo ($4c,x)             ; $e5fa: 03 4c
	ldx $e6,y                ; $e5fc: b6 e6
	lda #$04                 ; $e5fe: a9 04
	jsr $a7a2                ; $e600: 20 a2 a7
loc_e603:
	lda #$89                 ; $e603: a9 89
	brk                      ; $e605: 00

; === Block $e5f0-$e5f2 (Code) ===
sub_6600:
	*axs #$c7                ; $e5f0: cb c7

; === Block $e62d-$e64e (Code) ===
sub_663d:
	jsr $dbe4                ; $e62d: 20 e4 db
loc_e630:
	jsr $c7c5                ; $e630: 20 c5 c7
loc_e633:
	*nop $20                 ; $e633: 04 20
	*sre $a5c5,y             ; $e635: 5b c5 a5
	sta $85,x                ; $e638: 95 85
	*nop $cca5,x             ; $e63a: 3c a5 cc
	lsr                      ; $e63d: 4a
	sta $3e                  ; $e63e: 85 3e
	lda #$00                 ; $e640: a9 00
	sta $3d                  ; $e642: 85 3d
	sta $3f                  ; $e644: 85 3f
	jsr $c1c9                ; $e646: 20 c9 c1
loc_e649:
	lda $cc                  ; $e649: a5 cc
	sec                      ; $e64b: 38
	sbc $41                  ; $e64c: e5 41
	jmp $e664                ; $e64e: 4c 64 e6

; === Block $e636-$e638 (Code) ===
sub_6646:
	cmp $a5                  ; $e636: c5 a5

; === Block $e664-$e68a (Code) ===
loc_e664:
	sta $00                  ; $e664: 85 00
	lda #$00                 ; $e666: a9 00
	sta $01                  ; $e668: 85 01
	bit $df                  ; $e66a: 24 df
	bvs $e69a                ; $e66c: 70 2c
loc_e66e:
	jsr sub_c55b             ; $e66e: 20 5b c5
loc_e671:
	lda $95                  ; $e671: a5 95
	and #$3f                 ; $e673: 29 3f
	sta $95                  ; $e675: 85 95
	lda $0105                ; $e677: ad 05 01
	and #$0f                 ; $e67a: 29 0f
	beq $e69a                ; $e67c: f0 1c
loc_e67e:
	sec                      ; $e67e: 38
	sbc #$01                 ; $e67f: e9 01
	cmp $95                  ; $e681: c5 95
	bcc $e69a                ; $e683: 90 15
loc_e685:
	jsr $dbe4                ; $e685: 20 e4 db
loc_e688:
	lda #$8d                 ; $e688: a9 8d
	brk                      ; $e68a: 00

; === Block $e69a-$e69c (Code) ===
loc_e69a:
	lda #$87                 ; $e69a: a9 87
	brk                      ; $e69c: 00

; === Block $e813-$e813 (Code) ===
sub_6823:
	rti                      ; $e813: 40

; === Block $e869-$e876 (Code) ===
sub_6879:
	*slo $4c,x               ; $e869: 17 4c
	*slo $c9eb,y             ; $e86b: 1b eb c9
	asl $0bd0                ; $e86e: 0e d0 0b
	jsr $e00a                ; $e871: 20 0a e0
loc_e874:
	lda #$18                 ; $e874: a9 18
	brk                      ; $e876: 00

; === Block $e87f-$e883 (Code) ===
loc_e87f:
	cmp #$01                 ; $e87f: c9 01
	beq $e886                ; $e881: f0 03
loc_e883:
	jmp $e5ef                ; $e883: 4c ef e5

; === Block $e886-$e88d (Code) ===
loc_e886:
	lda #$04                 ; $e886: a9 04
	jsr $a7a2                ; $e888: 20 a2 a7
loc_e88b:
	lda #$83                 ; $e88b: a9 83
	brk                      ; $e88d: 00

; === Block $e89d-$e8d1 (Code) ===
sub_68ad:
	jsr $c7cb                ; $e89d: 20 cb c7
loc_e8a0:
	inc $4c,x                ; $e8a0: f6 4c
	*slo $a6eb,y             ; $e8a2: 1b eb a6
	eor $bd                  ; $e8a5: 45 bd
	ldx $00b1                ; $e8a7: ae b1 00
	*nop $17                 ; $e8aa: 04 17
	lda $e0                  ; $e8ac: a5 e0
	cmp #$27                 ; $e8ae: c9 27
	bne $e8d4                ; $e8b0: d0 22
loc_e8b2:
	jsr sub_ff74             ; $e8b2: 20 74 ff
loc_e8b5:
	lda $9a18                ; $e8b5: ad 18 9a
	sta $0c                  ; $e8b8: 85 0c
	lda $9a19                ; $e8ba: ad 19 9a
	sta $0d                  ; $e8bd: 85 0d
	lda #$00                 ; $e8bf: a9 00
sub_68d1:
	sta $3c                  ; $e8c1: 85 3c
	sta $e0                  ; $e8c3: 85 e0
	jsr sub_c632             ; $e8c5: 20 32 c6
loc_e8c8:
	jsr sub_c63d             ; $e8c8: 20 3d c6
loc_e8cb:
	jsr sub_ff74             ; $e8cb: 20 74 ff
loc_e8ce:
	jsr $a788                ; $e8ce: 20 88 a7
loc_e8d1:
	jmp $b091                ; $e8d1: 4c 91 b0

; === Block $e8d4-$e8f8 (Code) ===
sub_68e4:
	lda $45                  ; $e8d4: a5 45
	cmp #$03                 ; $e8d6: c9 03
	bne $e8fb                ; $e8d8: d0 21
loc_e8da:
	lda $3a                  ; $e8da: a5 3a
	cmp #$12                 ; $e8dc: c9 12
	bne $e8fb                ; $e8de: d0 1b
loc_e8e0:
	lda $3b                  ; $e8e0: a5 3b
	cmp #$0c                 ; $e8e2: c9 0c
	bne $e8fb                ; $e8e4: d0 15
loc_e8e6:
	jsr sub_c6bb             ; $e8e6: 20 bb c6
loc_e8e9:
	dec $3a                  ; $e8e9: c6 3a
	dec $8e                  ; $e8eb: c6 8e
	lda $90                  ; $e8ed: a5 90
	sec                      ; $e8ef: 38
	sbc #$10                 ; $e8f0: e9 10
	sta $90                  ; $e8f2: 85 90
	bcs $e8f8                ; $e8f4: b0 02
loc_e8f6:
	dec $91                  ; $e8f6: c6 91
loc_e8f8:
	jmp $b097                ; $e8f8: 4c 97 b0

; === Block $e8dd-$e8de (Code) ===
sub_68ed:
	*jam                     ; $e8dd: 12

; === Block $e8fb-$e90b (Code) ===
loc_e8fb:
	lda $45                  ; $e8fb: a5 45
	cmp #$15                 ; $e8fd: c9 15
	bne $e928                ; $e8ff: d0 27
loc_e901:
	lda $3a                  ; $e901: a5 3a
	cmp #$04                 ; $e903: c9 04
	bne $e928                ; $e905: d0 21
loc_e907:
	lda $3b                  ; $e907: a5 3b
	cmp #$0e                 ; $e909: c9 0e

; === Block $e908-$e925 (Code) ===
sub_6918:
	*rla $0ec9,y             ; $e908: 3b c9 0e
	bne $e928                ; $e90b: d0 1b
loc_e90d:
	lda $e4                  ; $e90d: a5 e4
	and #$40                 ; $e90f: 29 40
	bne $e928                ; $e911: d0 15
loc_e913:
	jsr sub_c6bb             ; $e913: 20 bb c6
loc_e916:
	dec $3b                  ; $e916: c6 3b
	dec $8f                  ; $e918: c6 8f
	lda $92                  ; $e91a: a5 92
	sec                      ; $e91c: 38
	sbc #$10                 ; $e91d: e9 10
	sta $92                  ; $e91f: 85 92
	bcs $e925                ; $e921: b0 02
loc_e923:
	dec $93                  ; $e923: c6 93
loc_e925:
	jmp $b097                ; $e925: 4c 97 b0

; === Block $e928-$e943 (Code) ===
loc_e928:
	lda $45                  ; $e928: a5 45
	cmp #$01                 ; $e92a: c9 01
	bne $e940                ; $e92c: d0 12
loc_e92e:
	lda $3a                  ; $e92e: a5 3a
	cmp #$49                 ; $e930: c9 49
	bne $e940                ; $e932: d0 0c
loc_e934:
	lda $3b                  ; $e934: a5 3b
	cmp #$64                 ; $e936: c9 64
	bne $e940                ; $e938: d0 06
loc_e93a:
	lda $e4                  ; $e93a: a5 e4
	and #$02                 ; $e93c: 29 02
	beq $e913                ; $e93e: f0 d3
loc_e940:
	jsr sub_c6bb             ; $e940: 20 bb c6
loc_e943:
	jmp $ee5a                ; $e943: 4c 5a ee

; === Block $e946-$e953 (Code) ===
loc_e946:
	sta $3e                  ; $e946: 85 3e
	jsr sub_c55b             ; $e948: 20 5b c5
loc_e94b:
	lda $95                  ; $e94b: a5 95
	and #$0f                 ; $e94d: 29 0f
	cmp $3e                  ; $e94f: c5 3e
	bcc $e954                ; $e951: 90 01
loc_e953:
	rts                      ; $e953: 60

; === Block $e954-$e95e (Code) ===
loc_e954:
	pla                      ; $e954: 68
	pla                      ; $e955: 68
	jsr $c7cb                ; $e956: 20 cb c7
loc_e959:
	*sbc #$4c                ; $e959: eb 4c
	*slo $a5eb,y             ; $e95b: 1b eb a5

; === Block $e95c-$e968 (Code) ===
sub_696c:
	*sbc #$a5                ; $e95c: eb a5
	*nop #$38                ; $e95e: e2 38
	sbc $00                  ; $e960: e5 00
	sta $e2                  ; $e962: 85 e2
	bcc $e96b                ; $e964: 90 05
loc_e966:
	beq $e96b                ; $e966: f0 03
loc_e968:
	jmp $eb1b                ; $e968: 4c 1b eb

; === Block $e96b-$e9ae (Code) ===
loc_e96b:
	lda $e0                  ; $e96b: a5 e0
	cmp #$1e                 ; $e96d: c9 1e
	bne $e97f                ; $e96f: d0 0e
loc_e971:
	lda $45                  ; $e971: a5 45
	cmp #$15                 ; $e973: c9 15
	bne $e97f                ; $e975: d0 08
loc_e977:
	lda $e4                  ; $e977: a5 e4
	ora #$40                 ; $e979: 09 40
	sta $e4                  ; $e97b: 85 e4
	bne $e98f                ; $e97d: d0 10
loc_e97f:
	cmp #$18                 ; $e97f: c9 18
	bne $e98f                ; $e981: d0 0c
loc_e983:
	lda $45                  ; $e983: a5 45
	cmp #$01                 ; $e985: c9 01
	bne $e98f                ; $e987: d0 06
loc_e989:
	lda $e4                  ; $e989: a5 e4
	ora #$02                 ; $e98b: 09 02
	sta $e4                  ; $e98d: 85 e4
loc_e98f:
	jsr $dbe4                ; $e98f: 20 e4 db
loc_e992:
	jsr $c7cb                ; $e992: 20 cb c7
loc_e995:
	inc $bb20                ; $e995: ee 20 bb
	dec $a9                  ; $e998: c6 a9
	ora $0400,y              ; $e99a: 19 00 04
	*slo $a5,x               ; $e99d: 17 a5
	cpx #$c9                 ; $e99f: e0 c9
	rol $d0                  ; $e9a1: 26 d0
	ora $50a2                ; $e9a3: 0d a2 50
	jsr sub_ff74             ; $e9a6: 20 74 ff
loc_e9a9:
	dex                      ; $e9a9: ca
	bne $e9a6                ; $e9aa: d0 fa
loc_e9ac:
	lda #$27                 ; $e9ac: a9 27
	jmp $e4df                ; $e9ae: 4c df e4

; === Block $eb1b-$eb3a (Code) ===
loc_eb1b:
	lda $df                  ; $eb1b: a5 df
	and #$40                 ; $eb1d: 29 40
	beq $eb48                ; $eb1f: f0 27
loc_eb21:
	jsr sub_c55b             ; $eb21: 20 5b c5
loc_eb24:
	lda $95                  ; $eb24: a5 95
	and #$03                 ; $eb26: 29 03
	beq $eb21                ; $eb28: f0 f7
loc_eb2a:
	cmp #$01                 ; $eb2a: c9 01
	bne $eb3e                ; $eb2c: d0 10
loc_eb2e:
	lda $df                  ; $eb2e: a5 df
	and #$bf                 ; $eb30: 29 bf
	sta $df                  ; $eb32: 85 df
	jsr $dbe4                ; $eb34: 20 e4 db
loc_eb37:
	jsr $c7cb                ; $eb37: 20 cb c7
loc_eb3a:
	brk                      ; $eb3a: 00

; === Block $eb3e-$eb45 (Code) ===
loc_eb3e:
	jsr $dbe4                ; $eb3e: 20 e4 db
loc_eb41:
	jsr $c7cb                ; $eb41: 20 cb c7
loc_eb44:
	sed                      ; $eb44: f8
	jmp $e5ce                ; $eb45: 4c ce e5

; === Block $eb48-$eb68 (Code) ===
loc_eb48:
	jsr $efb7                ; $eb48: 20 b7 ef
loc_eb4b:
	jsr sub_c55b             ; $eb4b: 20 5b c5
loc_eb4e:
	lda $0103                ; $eb4e: ad 03 01
	and #$30                 ; $eb51: 29 30
	sta $3c                  ; $eb53: 85 3c
	lda $95                  ; $eb55: a5 95
	and #$30                 ; $eb57: 29 30
	cmp $3c                  ; $eb59: c5 3c
	bcs $eb94                ; $eb5b: b0 37
loc_eb5d:
	lda $0103                ; $eb5d: ad 03 01
	and #$c0                 ; $eb60: 29 c0
	bne $eb6b                ; $eb62: d0 07
loc_eb64:
	lda $df                  ; $eb64: a5 df
	bmi $eb94                ; $eb66: 30 2c
loc_eb68:
	jmp $ec92                ; $eb68: 4c 92 ec

; === Block $eb6b-$eb75 (Code) ===
loc_eb6b:
	cmp #$40                 ; $eb6b: c9 40
	bne $eb78                ; $eb6d: d0 09
loc_eb6f:
	lda $df                  ; $eb6f: a5 df
	and #$10                 ; $eb71: 29 10
	bne $eb94                ; $eb73: d0 1f
loc_eb75:
	jmp $ec69                ; $eb75: 4c 69 ec

; === Block $eb78-$eb85 (Code) ===
loc_eb78:
	cmp #$80                 ; $eb78: c9 80
	bne $eb88                ; $eb7a: d0 0c
loc_eb7c:
	lda $0102                ; $eb7c: ad 02 01
	lsr                      ; $eb7f: 4a
	lsr                      ; $eb80: 4a
	cmp $e2                  ; $eb81: c5 e2
	bcc $eb94                ; $eb83: 90 0f
loc_eb85:
	jmp $eca6                ; $eb85: 4c a6 ec

; === Block $eb88-$eb91 (Code) ===
loc_eb88:
	lda $0102                ; $eb88: ad 02 01
	lsr                      ; $eb8b: 4a
	lsr                      ; $eb8c: 4a
	cmp $e2                  ; $eb8d: c5 e2
	bcc $eb94                ; $eb8f: 90 03
loc_eb91:
	jmp $ecce                ; $eb91: 4c ce ec

; === Block $eb94-$ebad (Code) ===
loc_eb94:
	jsr sub_c55b             ; $eb94: 20 5b c5
loc_eb97:
	lda $0103                ; $eb97: ad 03 01
	and #$03                 ; $eb9a: 29 03
	sta $3c                  ; $eb9c: 85 3c
	lda $95                  ; $eb9e: a5 95
	and #$03                 ; $eba0: 29 03
	cmp $3c                  ; $eba2: c5 3c
	bcs $ebc1                ; $eba4: b0 1b
loc_eba6:
	lda $0103                ; $eba6: ad 03 01
	and #$0c                 ; $eba9: 29 0c
	bne $ebb0                ; $ebab: d0 03
loc_ebad:
	jmp $ec23                ; $ebad: 4c 23 ec

; === Block $ebb0-$ebb4 (Code) ===
loc_ebb0:
	cmp #$04                 ; $ebb0: c9 04
	bne $ebb7                ; $ebb2: d0 03

; === Block $ebb4-$ebb4 (Code) ===
sub_6bc4:
	jmp $ec55                ; $ebb4: 4c 55 ec

; === Block $ebb7-$ebbb (Code) ===
loc_ebb7:
	cmp #$08                 ; $ebb7: c9 08
	bne $ebbe                ; $ebb9: d0 03
loc_ebbb:
	jmp $eced                ; $ebbb: 4c ed ec

; === Block $ebbc-$ebc3 (Code) ===
sub_6bcc:
	sbc $4cec                ; $ebbc: ed ec 4c
	sbc ($ec,x)              ; $ebbf: e1 ec
	lda #$8c                 ; $ebc1: a9 8c
	brk                      ; $ebc3: 00

; === Block $ebbe-$ebbe (Code) ===
loc_ebbe:
	jmp $ece1                ; $ebbe: 4c e1 ec

; === Block $ebee-$ec00 (Code) ===
loc_ebee:
	jsr $dbe4                ; $ebee: 20 e4 db
loc_ebf1:
	jsr $c7cb                ; $ebf1: 20 cb c7
loc_ebf4:
	*nop $d7a5,x             ; $ebf4: fc a5 d7
	jsr $dbf0                ; $ebf7: 20 f0 db
loc_ebfa:
	jsr $c7cb                ; $ebfa: 20 cb c7
loc_ebfd:
	sbc $91a9,x              ; $ebfd: fd a9 91
	brk                      ; $ec00: 00

; === Block $ec23-$ec32 (Code) ===
loc_ec23:
	lda #$11                 ; $ec23: a9 11
	sta $d7                  ; $ec25: 85 d7
	jsr $ebee                ; $ec27: 20 ee eb
loc_ec2a:
	jsr sub_c55b             ; $ec2a: 20 5b c5
loc_ec2d:
	lda $95                  ; $ec2d: a5 95
	and #$07                 ; $ec2f: 29 07
	clc                      ; $ec31: 18

; === Block $ec2e-$ec34 (Code) ===
loc_ec2e:
	sta $29,x                ; $ec2e: 95 29
	*slo $18                 ; $ec30: 07 18
	adc #$03                 ; $ec32: 69 03

; === Block $ec34-$ec52 (Code) ===
loc_ec34:
	sta $00                  ; $ec34: 85 00
	lda $be                  ; $ec36: a5 be
	and #$1c                 ; $ec38: 29 1c
	cmp #$1c                 ; $ec3a: c9 1c
	beq $ec42                ; $ec3c: f0 04
loc_ec3e:
	cmp #$18                 ; $ec3e: c9 18
	bne $ec52                ; $ec40: d0 10
loc_ec42:
	lda $00                  ; $ec42: a5 00
	sta $3c                  ; $ec44: 85 3c
	lda #$03                 ; $ec46: a9 03
	sta $3e                  ; $ec48: 85 3e
	jsr $c1f0                ; $ec4a: 20 f0 c1
loc_ec4d:
	lda $3c                  ; $ec4d: a5 3c
	asl                      ; $ec4f: 0a
	sta $00                  ; $ec50: 85 00
loc_ec52:
	jmp $ed20                ; $ec52: 4c 20 ed

; === Block $ec55-$ec66 (Code) ===
loc_ec55:
	lda #$19                 ; $ec55: a9 19
	sta $d7                  ; $ec57: 85 d7
	jsr $ebee                ; $ec59: 20 ee eb
loc_ec5c:
	jsr sub_c55b             ; $ec5c: 20 5b c5
loc_ec5f:
	lda $95                  ; $ec5f: a5 95
	and #$0f                 ; $ec61: 29 0f
	clc                      ; $ec63: 18
	adc #$1e                 ; $ec64: 69 1e
	jmp $ec34                ; $ec66: 4c 34 ec

; === Block $ec69-$ec76 (Code) ===
loc_ec69:
	lda #$14                 ; $ec69: a9 14
	sta $d7                  ; $ec6b: 85 d7
	jsr $ebee                ; $ec6d: 20 ee eb
loc_ec70:
	lda $be                  ; $ec70: a5 be
	and #$1c                 ; $ec72: 29 1c
	cmp #$1c                 ; $ec74: c9 1c

; === Block $ec73-$ec8b (Code) ===
sub_6c83:
	*nop $1cc9,x             ; $ec73: 1c c9 1c
	beq $ec8e                ; $ec76: f0 16
loc_ec78:
	jsr sub_c55b             ; $ec78: 20 5b c5
loc_ec7b:
	lda $95                  ; $ec7b: a5 95
	lsr                      ; $ec7d: 4a
	bcc $ec8e                ; $ec7e: 90 0e
loc_ec80:
	lda $df                  ; $ec80: a5 df
	ora #$10                 ; $ec82: 09 10
	sta $df                  ; $ec84: 85 df
	lda #$fe                 ; $ec86: a9 fe
	jsr $c7bd                ; $ec88: 20 bd c7
loc_ec8b:
	jmp $e5ce                ; $ec8b: 4c ce e5

; === Block $ec8e-$ed00 (Code) ===
loc_ec8e:
	lda #$eb                 ; $ec8e: a9 eb
	bne $ec88                ; $ec90: d0 f6
loc_ec92:
	lda #$12                 ; $ec92: a9 12
	sta $d7                  ; $ec94: 85 d7
	jsr $ebee                ; $ec96: 20 ee eb
loc_ec99:
	lda $df                  ; $ec99: a5 df
	ora #$80                 ; $ec9b: 09 80
	sta $df                  ; $ec9d: 85 df
	jsr $c7c5                ; $ec9f: 20 c5 c7
loc_eca2:
	asl $4c                  ; $eca2: 06 4c
	dec $a9e5,x              ; $eca4: de e5 a9
	bpl $ec2e                ; $eca7: 10 85
loc_eca9:
	*dcp $20,x               ; $eca9: d7 20
	inc $20eb                ; $ecab: ee eb 20 OAMADDR
	*sre $a5c5,y             ; $ecae: 5b c5 a5
	sta $29,x                ; $ecb1: 95 29
	*slo $18                 ; $ecb3: 07 18
	adc #$14                 ; $ecb5: 69 14
	clc                      ; $ecb7: 18
	adc $e2                  ; $ecb8: 65 e2
	cmp $0102                ; $ecba: cd 02 01
	bcc $ecc2                ; $ecbd: 90 03
loc_ecbf:
	lda $0102                ; $ecbf: ad 02 01
loc_ecc2:
	sta $e2                  ; $ecc2: 85 e2
	jsr $dbe4                ; $ecc4: 20 e4 db
loc_ecc7:
	jsr $c7c5                ; $ecc7: 20 c5 c7
loc_ecca:
	ora #$4c                 ; $ecca: 09 4c
	dec $a9e5                ; $eccc: ce e5 a9
	clc                      ; $eccf: 18
	sta $d7                  ; $ecd0: 85 d7
	jsr $ebee                ; $ecd2: 20 ee eb
loc_ecd5:
	jsr sub_c55b             ; $ecd5: 20 5b c5
loc_ecd8:
	lda $95                  ; $ecd8: a5 95
	and #$0f                 ; $ecda: 29 0f
	clc                      ; $ecdc: 18
	adc #$55                 ; $ecdd: 69 55
	bne $ecb7                ; $ecdf: d0 d6
loc_ece1:
	jsr sub_c55b             ; $ece1: 20 5b c5
loc_ece4:
	lda $95                  ; $ece4: a5 95
	and #$07                 ; $ece6: 29 07
	clc                      ; $ece8: 18
	adc #$41                 ; $ece9: 69 41
	bne $ecf6                ; $eceb: d0 09
loc_eced:
	jsr sub_c55b             ; $eced: 20 5b c5
loc_ecf0:
	lda $95                  ; $ecf0: a5 95
	and #$07                 ; $ecf2: 29 07
	ora #$10                 ; $ecf4: 09 10
loc_ecf6:
	sta $00                  ; $ecf6: 85 00
	lda #$00                 ; $ecf8: a9 00
	sta $01                  ; $ecfa: 85 01
	lda $be                  ; $ecfc: a5 be
	and #$1c                 ; $ecfe: 29 1c

; === Block $eca6-$ecb5 (Code) ===
loc_eca6:
	lda #$10                 ; $eca6: a9 10
	sta $d7                  ; $eca8: 85 d7
	jsr $ebee                ; $ecaa: 20 ee eb
loc_ecad:
	jsr sub_c55b             ; $ecad: 20 5b c5
loc_ecb0:
	lda $95                  ; $ecb0: a5 95
	and #$07                 ; $ecb2: 29 07
	clc                      ; $ecb4: 18

; === Block $ecce-$ecd0 (Code) ===
loc_ecce:
	lda #$18                 ; $ecce: a9 18

; === Block $ed00-$ed16 (Code) ===
sub_6d10:
	cmp #$1c                 ; $ed00: c9 1c
	bne $ed14                ; $ed02: d0 10
loc_ed04:
	lda $00                  ; $ed04: a5 00
	sta $3c                  ; $ed06: 85 3c
	lda #$03                 ; $ed08: a9 03
	sta $3e                  ; $ed0a: 85 3e
	jsr $c1f0                ; $ed0c: 20 f0 c1
sub_6d1f:
	lda $3c                  ; $ed0f: a5 3c
	asl                      ; $ed11: 0a
	sta $00                  ; $ed12: 85 00
loc_ed14:
	lda #$95                 ; $ed14: a9 95
	brk                      ; $ed16: 00

; === Block $ed20-$ed22 (Code) ===
loc_ed20:
	lda #$8a                 ; $ed20: a9 8a
	brk                      ; $ed22: 00

; === Block $ed26-$ed4a (Code) ===
sub_6d36:
	brk                      ; $ed26: 00 Bank call: bank 1, Bank1_Func85
	.byte $85                ; $ed27: 85 Function index
	.byte $01                ; $ed28: 01 Target bank
	lda $c5                  ; $ed29: a5 c5
	sec                      ; $ed2b: 38
	sbc $00                  ; $ed2c: e5 00
	bcs $ed32                ; $ed2e: b0 02
loc_ed30:
	lda #$00                 ; $ed30: a9 00
loc_ed32:
	sta $c5                  ; $ed32: 85 c5
	lda #$08                 ; $ed34: a9 08
	sta $42                  ; $ed36: 85 42
	lda $05                  ; $ed38: a5 05
	sta $0f                  ; $ed3a: 85 0f
	lda $07                  ; $ed3c: a5 07
	sta $10                  ; $ed3e: 85 10
	jsr sub_ff74             ; $ed40: 20 74 ff
loc_ed43:
	lda $c5                  ; $ed43: a5 c5
	beq $ed4d                ; $ed45: f0 06
loc_ed47:
	jsr sub_ff74             ; $ed47: 20 74 ff
loc_ed4a:
	jmp $ed56                ; $ed4a: 4c 56 ed

; === Block $ed4d-$ed63 (Code) ===
loc_ed4d:
	lda $e0                  ; $ed4d: a5 e0
	cmp #$27                 ; $ed4f: c9 27
	beq $ed56                ; $ed51: f0 03
loc_ed53:
	jsr $ee14                ; $ed53: 20 14 ee
loc_ed56:
	lda $42                  ; $ed56: a5 42
	and #$01                 ; $ed58: 29 01
	bne $ed66                ; $ed5a: d0 0a
loc_ed5c:
	lda $0f                  ; $ed5c: a5 0f
	clc                      ; $ed5e: 18
	adc #$02                 ; $ed5f: 69 02
	sta $05                  ; $ed61: 85 05
	jmp $ed6d                ; $ed63: 4c 6d ed

; === Block $ed66-$ed94 (Code) ===
loc_ed66:
	lda $10                  ; $ed66: a5 10
	clc                      ; $ed68: 18
	adc #$02                 ; $ed69: 69 02
	sta $07                  ; $ed6b: 85 07
loc_ed6d:
	lda $e0                  ; $ed6d: a5 e0
	cmp #$27                 ; $ed6f: c9 27
	bne $ed7b                ; $ed71: d0 08
loc_ed73:
	lda $0f                  ; $ed73: a5 0f
	sta $05                  ; $ed75: 85 05
	lda $10                  ; $ed77: a5 10
	sta $07                  ; $ed79: 85 07
loc_ed7b:
	jsr sub_ff74             ; $ed7b: 20 74 ff
loc_ed7e:
	jsr $ee28                ; $ed7e: 20 28 ee
loc_ed81:
	lda $0f                  ; $ed81: a5 0f
	sta $05                  ; $ed83: 85 05
	lda $10                  ; $ed85: a5 10
	sta $07                  ; $ed87: 85 07
	dec $42                  ; $ed89: c6 42
	bne $ed40                ; $ed8b: d0 b3
loc_ed8d:
	jsr $c7cb                ; $ed8d: 20 cb c7
loc_ed90:
	*nop                     ; $ed90: fa
	jsr sub_c6f0             ; $ed91: 20 f0 c6
loc_ed94:
	brk                      ; $ed94: 00

; === Block $edb0-$edef (Code) ===
sub_6dc0:
	*jam                     ; $edb0: 02
	jsr $c703                ; $edb1: 20 03 c7
loc_edb4:
	jsr $c7cb                ; $edb4: 20 cb c7
loc_edb7:
	ora ($a9,x)              ; $edb7: 01 a9
	sei                      ; $edb9: 78
	sta $603a                ; $edba: 8d 3a 60
	lda #$00                 ; $edbd: a9 00
	sta $602f                ; $edbf: 8d 2f 60
	jsr sub_c608             ; $edc2: 20 08 c6
loc_edc5:
	lda $47                  ; $edc5: a5 47
	and #$09                 ; $edc7: 29 09
	beq $edc2                ; $edc9: f0 f7
loc_edcb:
	lsr $bd                  ; $edcb: 46 bd
	ror $bc                  ; $edcd: 66 bc
	lda $df                  ; $edcf: a5 df
	and #$fe                 ; $edd1: 29 fe
	sta $df                  ; $edd3: 85 df
	lda $e0                  ; $edd5: a5 e0
	sta $600a                ; $edd7: 8d 0a 60
	lda #$00                 ; $edda: a9 00
	sta $e0                  ; $eddc: 85 e0
	jsr $cb47                ; $edde: 20 47 cb
loc_ede1:
	lda $cf                  ; $ede1: a5 cf
	and #$c0                 ; $ede3: 29 c0
	beq $edf2                ; $ede5: f0 0b
loc_ede7:
	jsr $c7c5                ; $ede7: 20 c5 c7
loc_edea:
	*nop $a2,x               ; $edea: 14 a2
	*nop $02a9               ; $edec: 0c a9 02
	jmp $d9e2                ; $edef: 4c e2 d9

; === Block $edf2-$ee13 (Code) ===
loc_edf2:
	jsr $c7c5                ; $edf2: 20 c5 c7
loc_edf5:
	ora $c7a5                ; $edf5: 0d a5 c7
	cmp #$1e                 ; $edf8: c9 1e
	beq $ee03                ; $edfa: f0 07
loc_edfc:
	jsr $f134                ; $edfc: 20 34 f1
loc_edff:
	jsr $c7c5                ; $edff: 20 c5 c7
loc_ee02:
	*jam                     ; $ee02: 12
loc_ee03:
	jsr $c7c5                ; $ee03: 20 c5 c7
loc_ee06:
	*slo ($20),y             ; $ee06: 13 20
	cpx $cf                  ; $ee08: e4 cf
	lda #$02                 ; $ee0a: a9 02
	jsr $a7a2                ; $ee0c: 20 a2 a7
loc_ee0f:
	lda #$00                 ; $ee0f: a9 00
	sta $96                  ; $ee11: 85 96
	rts                      ; $ee13: 60

; === Block $ee14-$ee25 (Code) ===
loc_ee14:
	jsr sub_ff74             ; $ee14: 20 74 ff
loc_ee17:
	lda $9a22                ; $ee17: ad 22 9a
	sta $0c                  ; $ee1a: 85 0c
	lda $9a23                ; $ee1c: ad 23 9a
	sta $0d                  ; $ee1f: 85 0d
	lda #$00                 ; $ee21: a9 00
	sta $3c                  ; $ee23: 85 3c
	jmp sub_c63d             ; $ee25: 4c 3d c6

; === Block $ee28-$ee3b (Code) ===
loc_ee28:
	jsr sub_ff74             ; $ee28: 20 74 ff
loc_ee2b:
	lda $e0                  ; $ee2b: a5 e0
	cmp #$27                 ; $ee2d: c9 27
	bne $ee3e                ; $ee2f: d0 0d
loc_ee31:
	lda $ef9d                ; $ee31: ad 9d ef
	sta $0c                  ; $ee34: 85 0c
	lda $ef9e                ; $ee36: ad 9e ef
	sta $0d                  ; $ee39: 85 0d
	jmp $ee4d                ; $ee3b: 4c 4d ee

; === Block $ee3e-$ee51 (Code) ===
loc_ee3e:
	lda $9a1a                ; $ee3e: ad 1a 9a
	clc                      ; $ee41: 18
	adc $16                  ; $ee42: 65 16
	sta $0c                  ; $ee44: 85 0c
	lda $9a1b                ; $ee46: ad 1b 9a
	adc #$00                 ; $ee49: 69 00
	sta $0d                  ; $ee4b: 85 0d
loc_ee4d:
	lda #$00                 ; $ee4d: a9 00
	sta $3c                  ; $ee4f: 85 3c
	jmp sub_c63d             ; $ee51: 4c 3d c6

; === Block $ee5a-$ee90 (Code) ===
loc_ee5a:
	jsr sub_ff74             ; $ee5a: 20 74 ff
loc_ee5d:
	lda $9a24                ; $ee5d: ad 24 9a
	sta $0c                  ; $ee60: 85 0c
	lda $9a25                ; $ee62: ad 25 9a
	sta $0d                  ; $ee65: 85 0d
	lda #$00                 ; $ee67: a9 00
	sta $3c                  ; $ee69: 85 3c
	jsr sub_c632             ; $ee6b: 20 32 c6
loc_ee6e:
	lda $8d                  ; $ee6e: a5 8d
	and #$70                 ; $ee70: 29 70
	beq $ee76                ; $ee72: f0 02
loc_ee74:
	lda #$ff                 ; $ee74: a9 ff
loc_ee76:
	sta $8d                  ; $ee76: 85 8d
	lda #$02                 ; $ee78: a9 02
	jsr $a7a2                ; $ee7a: 20 a2 a7
loc_ee7d:
	lda #$0b                 ; $ee7d: a9 0b
	jsr $a7a2                ; $ee7f: 20 a2 a7
loc_ee82:
	lda #$02                 ; $ee82: a9 02
	sta $602f                ; $ee84: 8d 2f 60
	jsr sub_ff74             ; $ee87: 20 74 ff
loc_ee8a:
	jsr sub_fcad             ; $ee8a: 20 ad fc
loc_ee8d:
	jsr $b6da                ; $ee8d: 20 da b6
loc_ee90:
	rts                      ; $ee90: 60

; === Block $eec0-$eed4 (Code) ===
loc_eec0:
	jsr sub_c55b             ; $eec0: 20 5b c5
loc_eec3:
	lda $95                  ; $eec3: a5 95
	and #$3f                 ; $eec5: 29 3f
	sta $3c                  ; $eec7: 85 3c
	lda $0101                ; $eec9: ad 01 01
	sta $3e                  ; $eecc: 85 3e
	lda #$00                 ; $eece: a9 00
	sta $3d                  ; $eed0: 85 3d
	sta $3f                  ; $eed2: 85 3f

; === Block $eed1-$eefc (Code) ===
sub_6ee1:
	and $3f85,x              ; $eed1: 3d 85 3f PPUSCROLL
	jsr $c1c9                ; $eed4: 20 c9 c1
loc_eed7:
	lda $40                  ; $eed7: a5 40
	sta $42                  ; $eed9: 85 42
	lda $41                  ; $eedb: a5 41
	sta $43                  ; $eedd: 85 43
	jsr sub_c55b             ; $eedf: 20 5b c5
loc_eee2:
	lda $95                  ; $eee2: a5 95
	sta $3c                  ; $eee4: 85 3c
	lda $c9                  ; $eee6: a5 c9
	sta $3e                  ; $eee8: 85 3e
	lda #$00                 ; $eeea: a9 00
	sta $3d                  ; $eeec: 85 3d
	sta $3f                  ; $eeee: 85 3f
	jsr $c1c9                ; $eef0: 20 c9 c1
loc_eef3:
	lda $40                  ; $eef3: a5 40
	sec                      ; $eef5: 38
	sbc $42                  ; $eef6: e5 42
	lda $41                  ; $eef8: a5 41
	sbc $43                  ; $eefa: e5 43
	rts                      ; $eefc: 60

; === Block $efb7-$efcd (Code) ===
loc_efb7:
	lda $c8                  ; $efb7: a5 c8
	lsr                      ; $efb9: 4a
	cmp $0100                ; $efba: cd 00 01
	bcc $efe4                ; $efbd: 90 25
loc_efbf:
	jsr sub_c55b             ; $efbf: 20 5b c5
loc_efc2:
	lda $95                  ; $efc2: a5 95
	and #$03                 ; $efc4: 29 03
	bne $efe4                ; $efc6: d0 1c
loc_efc8:
	jsr sub_c6bb             ; $efc8: 20 bb c6
loc_efcb:
	lda #$83                 ; $efcb: a9 83
	brk                      ; $efcd: 00

; === Block $efe4-$efe4 (Code) ===
loc_efe4:
	rts                      ; $efe4: 60

; === Block $f050-$f082 (Code) ===
loc_f050:
	ldx #$3a                 ; $f050: a2 3a
	lda #$1e                 ; $f052: a9 1e
	sta $c7                  ; $f054: 85 c7
	lda $ba                  ; $f056: a5 ba
	sec                      ; $f058: 38
	sbc $f35b,x              ; $f059: fd 5b f3
	lda $bb                  ; $f05c: a5 bb
	sbc $f35c,x              ; $f05e: fd 5c f3
	bcs $f069                ; $f061: b0 06
loc_f063:
	dec $c7                  ; $f063: c6 c7
	dex                      ; $f065: ca
	dex                      ; $f066: ca
	bne $f056                ; $f067: d0 ed
loc_f069:
	lda $c7                  ; $f069: a5 c7
	sec                      ; $f06b: 38
	sbc #$01                 ; $f06c: e9 01
	asl                      ; $f06e: 0a
	sta $3c                  ; $f06f: 85 3c
	asl                      ; $f071: 0a
	clc                      ; $f072: 18
	adc $3c                  ; $f073: 65 3c
	sta $3c                  ; $f075: 85 3c
	lda #$ff                 ; $f077: a9 ff
	sta $02                  ; $f079: 85 02
	jsr sub_ff74             ; $f07b: 20 74 ff
loc_f07e:
	lda $02                  ; $f07e: a5 02
	bne $f07b                ; $f080: d0 f9
loc_f082:
	brk                      ; $f082: 00

; === Block $f0b6-$f0c3 (Code) ===
loc_f0b6:
	lda $43                  ; $f0b6: a5 43
	and #$02                 ; $f0b8: 29 02
	bne $f0c6                ; $f0ba: d0 0a
loc_f0bc:
	lda $c9                  ; $f0bc: a5 c9
	jsr $f10c                ; $f0be: 20 0c f1
loc_f0c1:
	sta $c9                  ; $f0c1: 85 c9
	jmp $f0cd                ; $f0c3: 4c cd f0

; === Block $f0c6-$f0cd (Code) ===
loc_f0c6:
	lda $ca                  ; $f0c6: a5 ca
	jsr $f10c                ; $f0c8: 20 0c f1
loc_f0cb:
	sta $ca                  ; $f0cb: 85 ca

; === Block $f0cd-$f10b (Code) ===
loc_f0cd:
	lda $be                  ; $f0cd: a5 be
	lsr                      ; $f0cf: 4a
	lsr                      ; $f0d0: 4a
	lsr                      ; $f0d1: 4a
	lsr                      ; $f0d2: 4a
	lsr                      ; $f0d3: 4a
	tax                      ; $f0d4: aa
	lda $99cf,x              ; $f0d5: bd cf 99
	clc                      ; $f0d8: 18
	adc $c8                  ; $f0d9: 65 c8
	sta $cc                  ; $f0db: 85 cc
	lda $c9                  ; $f0dd: a5 c9
	lsr                      ; $f0df: 4a
	sta $cd                  ; $f0e0: 85 cd
	lda $be                  ; $f0e2: a5 be
	lsr                      ; $f0e4: 4a
	lsr                      ; $f0e5: 4a
	and #$07                 ; $f0e6: 29 07
	tax                      ; $f0e8: aa
	lda $99d7,x              ; $f0e9: bd d7 99
	clc                      ; $f0ec: 18
	adc $cd                  ; $f0ed: 65 cd
	sta $cd                  ; $f0ef: 85 cd
	lda $be                  ; $f0f1: a5 be
	and #$03                 ; $f0f3: 29 03
	tax                      ; $f0f5: aa
	lda $99df,x              ; $f0f6: bd df 99
	clc                      ; $f0f9: 18
	adc $cd                  ; $f0fa: 65 cd
	sta $cd                  ; $f0fc: 85 cd
	lda $cf                  ; $f0fe: a5 cf
	and #$10                 ; $f100: 29 10
	beq $f10b                ; $f102: f0 07
loc_f104:
	lda $cd                  ; $f104: a5 cd
	clc                      ; $f106: 18
	adc #$02                 ; $f107: 69 02
	sta $cd                  ; $f109: 85 cd
loc_f10b:
	rts                      ; $f10b: 60

; === Block $f10c-$f133 (Code) ===
loc_f10c:
	sta $3c                  ; $f10c: 85 3c
	lda #$09                 ; $f10e: a9 09
	sta $3e                  ; $f110: 85 3e
	lda #$00                 ; $f112: a9 00
	sta $3d                  ; $f114: 85 3d
	sta $3f                  ; $f116: 85 3f
	jsr $c1c9                ; $f118: 20 c9 c1
loc_f11b:
	lda $40                  ; $f11b: a5 40
	sta $3c                  ; $f11d: 85 3c
	lda $41                  ; $f11f: a5 41
	sta $3d                  ; $f121: 85 3d
	lda #$0a                 ; $f123: a9 0a
	sta $3e                  ; $f125: 85 3e
	lda #$00                 ; $f127: a9 00
	sta $3f                  ; $f129: 85 3f
	jsr $c1f4                ; $f12b: 20 f4 c1
loc_f12e:
	lda $3c                  ; $f12e: a5 3c
	clc                      ; $f130: 18
	adc $42                  ; $f131: 65 42
	rts                      ; $f133: 60

; === Block $f134-$f147 (Code) ===
loc_f134:
	lda $c7                  ; $f134: a5 c7
	asl                      ; $f136: 0a
	tax                      ; $f137: aa
	lda $f35b,x              ; $f138: bd 5b f3
	sec                      ; $f13b: 38
	sbc $ba                  ; $f13c: e5 ba
	sta $00                  ; $f13e: 85 00
	lda $f35c,x              ; $f140: bd 5c f3
	sbc $bb                  ; $f143: e5 bb
	sta $01                  ; $f145: 85 01
	rts                      ; $f147: 60

; === Block $f668-$f668 (Code) ===
entry_f668:
	brk                      ; $f668: 00

; === Block $f6e4-$f6e7 (Code) ===
entry_f6e4:
	rol $c0c8,x              ; $f6e4: 3e c8 c0
	rti                      ; $f6e7: 40

; === Block $f768-$f76b (Code) ===
loc_f768:
	*isc $ad,x               ; $f768: f7 ad
	sec                      ; $f76a: 38
	rts                      ; $f76b: 60

; === Block $f7a5-$f7a9 (Code) ===
entry_f7a5:
	bvs $f768                ; $f7a5: 70 c1
loc_f7a7:
	lda #$02                 ; $f7a7: a9 02
	brk                      ; $f7a9: 00

; === Block $f7da-$f7f2 (Code) ===
loc_f7da:
	pha                      ; $f7da: 48
	txa                      ; $f7db: 8a
	pha                      ; $f7dc: 48
	lda $6038                ; $f7dd: ad 38 60
	ldx $6039                ; $f7e0: ae 39 60
	beq $f7ff                ; $f7e3: f0 1a
loc_f7e5:
	cpx #$01                 ; $f7e5: e0 01
	beq $f7f5                ; $f7e7: f0 0c
loc_f7e9:
	cpx #$02                 ; $f7e9: e0 02
	ora #$04                 ; $f7eb: 09 04
	ldx #$c8                 ; $f7ed: a2 c8
	stx $6037                ; $f7ef: 8e 37 60
	jmp $f806                ; $f7f2: 4c 06 f8

; === Block $f7f5-$f7fc (Code) ===
loc_f7f5:
	ora #$02                 ; $f7f5: 09 02
	ldx #$c8                 ; $f7f7: a2 c8
	stx $6036                ; $f7f9: 8e 36 60
	jmp $f806                ; $f7fc: 4c 06 f8

; === Block $f7ff-$f80e (Code) ===
loc_f7ff:
	ora #$01                 ; $f7ff: 09 01
	ldx #$c8                 ; $f801: a2 c8
	stx $6035                ; $f803: 8e 35 60
loc_f806:
	and #$07                 ; $f806: 29 07
	sta $6038                ; $f808: 8d 38 60
	pla                      ; $f80b: 68
	tax                      ; $f80c: aa
	pla                      ; $f80d: 68
	rts                      ; $f80e: 60

; === Block $f832-$f837 (Code) ===
entry_f832:
	*rla $29f8,y             ; $f832: 3b f8 29 PPUCTRL
	asl $a2                  ; $f835: 06 a2
	brk                      ; $f837: 00

; === Block $fc00-$fc1b (Code) ===
loc_fc00:
	sta $22                  ; $fc00: 85 22
	txa                      ; $fc02: 8a
	pha                      ; $fc03: 48
	lda $22                  ; $fc04: a5 22
	ldx $fc74                ; $fc06: ae 74 fc
	stx $22                  ; $fc09: 86 22
	ldx $fc75                ; $fc0b: ae 75 fc
	stx $23                  ; $fc0e: 86 23
	tax                      ; $fc10: aa
	beq $fc19                ; $fc11: f0 06
loc_fc13:
	jsr $fc1c                ; $fc13: 20 1c fc
loc_fc16:
	dex                      ; $fc16: ca
	bne $fc13                ; $fc17: d0 fa
loc_fc19:
	pla                      ; $fc19: 68
	tax                      ; $fc1a: aa
	rts                      ; $fc1b: 60

; === Block $fc1c-$fc29 (Code) ===
loc_fc1c:
	lda $22                  ; $fc1c: a5 22
	clc                      ; $fc1e: 18
	adc #$40                 ; $fc1f: 69 40
	sta $22                  ; $fc21: 85 22
	lda $23                  ; $fc23: a5 23
	adc #$01                 ; $fc25: 69 01
	sta $23                  ; $fc27: 85 23
	rts                      ; $fc29: 60

; === Block $fc2e-$fc3d (Code) ===
loc_fc2e:
	lda $95                  ; $fc2e: a5 95
	eor $3c                  ; $fc30: 45 3c
	asl $94                  ; $fc32: 06 94
	rol $95                  ; $fc34: 26 95
	asl $3c                  ; $fc36: 06 3c
	asl                      ; $fc38: 0a
	bcc $fc47                ; $fc39: 90 0c
loc_fc3b:
	lda $94                  ; $fc3b: a5 94

; === Block $fc3d-$fc4c (Code) ===
entry_fc3d:
	eor #$21                 ; $fc3d: 49 21
	sta $94                  ; $fc3f: 85 94
	lda $95                  ; $fc41: a5 95
	eor #$10                 ; $fc43: 49 10
	sta $95                  ; $fc45: 85 95
	dey                      ; $fc47: 88
	bne $fc2e                ; $fc48: d0 e4
loc_fc4a:
	pla                      ; $fc4a: 68
	tay                      ; $fc4b: a8
	rts                      ; $fc4c: 60

; === Block $fc80-$fc87 (Code) ===
loc_fc80:
	pha                      ; $fc80: 48
	lda #$03                 ; $fc81: a9 03
	jsr sub_ff96             ; $fc83: 20 96 ff
loc_fc86:
	pla                      ; $fc86: 68
	rts                      ; $fc87: 60

; === Block $fc88-$fc97 (Code) ===
entry_fc88:
	pha                      ; $fc88: 48
	lda #$13                 ; $fc89: a9 13
	sta $6004                ; $fc8b: 8d 04 60
	jsr sub_ff96             ; $fc8e: 20 96 ff
loc_fc91:
	lda #$08                 ; $fc91: a9 08
	sta $2000                ; $fc93: 8d 00 20 PPUCTRL
	pla                      ; $fc96: 68
	rts                      ; $fc97: 60

; === Block $fc98-$fca2 (Code) ===
loc_fc98:
	pha                      ; $fc98: 48
	lda #$01                 ; $fc99: a9 01
	sta $6002                ; $fc9b: 8d 02 60
	jsr sub_ffac             ; $fc9e: 20 ac ff
loc_fca1:
	pla                      ; $fca1: 68
	rts                      ; $fca2: 60

; === Block $fc9d-$fc9d (Code) ===
entry_fc9d:
	rts                      ; $fc9d: 60

; === Block $fcad-$fcb7 (Code) ===
loc_fcad:
	pha                      ; $fcad: 48
	lda #$02                 ; $fcae: a9 02
	sta $6003                ; $fcb0: 8d 03 60
	jsr sub_ffc2             ; $fcb3: 20 c2 ff
loc_fcb6:
	pla                      ; $fcb6: 68

; === Block $fcb7-$fcb7 (Code) ===
loc_fcb7:
	rts                      ; $fcb7: 60

; === Block $fcbd-$fcdc (Code) ===
loc_fcbd:
	sta $37                  ; $fcbd: 85 37
	stx $38                  ; $fcbf: 86 38
	lda $6004                ; $fcc1: ad 04 60
	pha                      ; $fcc4: 48
	php                      ; $fcc5: 08
	lda $6004                ; $fcc6: ad 04 60
	sta $6006                ; $fcc9: 8d 06 60
	jsr sub_fcec             ; $fccc: 20 ec fc
loc_fccf:
	lda #$4c                 ; $fccf: a9 4c
	sta $30                  ; $fcd1: 85 30
	ldx $38                  ; $fcd3: a6 38
	lda $37                  ; $fcd5: a5 37
	plp                      ; $fcd7: 28
	jsr $0030                ; $fcd8: 20 30 00
loc_fcdb:
	php                      ; $fcdb: 08

; === Block $fcdc-$fceb (Code) ===
entry_fcdc:
	sta $37                  ; $fcdc: 85 37
	pla                      ; $fcde: 68
	sta $30                  ; $fcdf: 85 30
	pla                      ; $fce1: 68
	jsr sub_ff91             ; $fce2: 20 91 ff
loc_fce5:
	lda $30                  ; $fce5: a5 30
	pha                      ; $fce7: 48
	lda $37                  ; $fce8: a5 37
	plp                      ; $fcea: 28
	rts                      ; $fceb: 60

; === Block $fcec-$fcff (Code) ===
loc_fcec:
	lda $30                  ; $fcec: a5 30
	jsr sub_ff91             ; $fcee: 20 91 ff
loc_fcf1:
	lda $31                  ; $fcf1: a5 31
	asl                      ; $fcf3: 0a
	tax                      ; $fcf4: aa
	lda $8000,x              ; $fcf5: bd 00 80
	sta $31                  ; $fcf8: 85 31
	lda $8001,x              ; $fcfa: bd 01 80
	sta $32                  ; $fcfd: 85 32
	rts                      ; $fcff: 60

; === Block $fd00-$fd1b (Code) ===
loc_fd00:
	sta $37                  ; $fd00: 85 37
	stx $38                  ; $fd02: 86 38
	lda $6004                ; $fd04: ad 04 60
	pha                      ; $fd07: 48
	jsr sub_fcec             ; $fd08: 20 ec fc
loc_fd0b:
	pla                      ; $fd0b: 68
	jsr sub_ff91             ; $fd0c: 20 91 ff
loc_fd0f:
	ldx $38                  ; $fd0f: a6 38
	lda $31                  ; $fd11: a5 31
	sta $00,x                ; $fd13: 95 00
	lda $32                  ; $fd15: a5 32
	sta $01,x                ; $fd17: 95 01
	lda $37                  ; $fd19: a5 37
	rts                      ; $fd1b: 60

; === Block $fd1c-$fd34 (Code) ===
loc_fd1c:
	sta $37                  ; $fd1c: 85 37
	lda $6004                ; $fd1e: ad 04 60
	pha                      ; $fd21: 48
	lda $37                  ; $fd22: a5 37
	jsr sub_ff91             ; $fd24: 20 91 ff
loc_fd27:
	lda $00,x                ; $fd27: b5 00
	sta $30                  ; $fd29: 85 30
	lda $01,x                ; $fd2b: b5 01
	sta $31                  ; $fd2d: 85 31
	lda ($30),y              ; $fd2f: b1 30
	sta $37                  ; $fd31: 85 37
	pla                      ; $fd33: 68

; === Block $fd2a-$fd39 (Code) ===
entry_fd2a:
	bmi $fce1                ; $fd2a: 30 b5
loc_fd2c:
	ora ($85,x)              ; $fd2c: 01 85
	and ($b1),y              ; $fd2e: 31 b1
	bmi $fcb7                ; $fd30: 30 85
loc_fd32:
	*rla $68,x               ; $fd32: 37 68
	jsr sub_ff91             ; $fd34: 20 91 ff
loc_fd37:
	lda $37                  ; $fd37: a5 37
	rts                      ; $fd39: 60

; === Block $fd3a-$fd74 (Code) ===
entry_fd3a:
	sei                      ; $fd3a: 78
	php                      ; $fd3b: 08
	bit $4015                ; $fd3c: 2c 15 40 SND_CHN
	sta $37                  ; $fd3f: 85 37
	stx $38                  ; $fd41: 86 38
	sty $39                  ; $fd43: 84 39
	tsx                      ; $fd45: ba
	lda $0103,x              ; $fd46: bd 03 01
	sec                      ; $fd49: 38
	sbc #$01                 ; $fd4a: e9 01
	sta $33                  ; $fd4c: 85 33
	lda $0104,x              ; $fd4e: bd 04 01
	sbc #$00                 ; $fd51: e9 00
	sta $34                  ; $fd53: 85 34
	ldy #$01                 ; $fd55: a0 01
	lda ($33),y              ; $fd57: b1 33
	pha                      ; $fd59: 48
	and #$08                 ; $fd5a: 29 08
	cmp #$08                 ; $fd5c: c9 08
	pla                      ; $fd5e: 68
	ror                      ; $fd5f: 6a
	lsr                      ; $fd60: 4a
	lsr                      ; $fd61: 4a
	lsr                      ; $fd62: 4a
	sta $30                  ; $fd63: 85 30
	dey                      ; $fd65: 88
	lda ($33),y              ; $fd66: b1 33
	bmi $fd77                ; $fd68: 30 0d
loc_fd6a:
	sta $31                  ; $fd6a: 85 31
	ldy $39                  ; $fd6c: a4 39
	ldx $38                  ; $fd6e: a6 38
	plp                      ; $fd70: 28
	pla                      ; $fd71: 68
	lda $37                  ; $fd72: a5 37
	jmp $fcbd                ; $fd74: 4c bd fc

; === Block $fd77-$fd83 (Code) ===
loc_fd77:
	and #$3f                 ; $fd77: 29 3f
	sta $31                  ; $fd79: 85 31
	ldy $39                  ; $fd7b: a4 39
	ldx $38                  ; $fd7d: a6 38
	plp                      ; $fd7f: 28
	pla                      ; $fd80: 68
	lda $37                  ; $fd81: a5 37
	jmp $fd00                ; $fd83: 4c 00 fd

; === Block $fd86-$fde4 (Code) ===
loc_fd86:
	cld                      ; $fd86: d8
	lda #$10                 ; $fd87: a9 10
	sta $2000                ; $fd89: 8d 00 20 PPUCTRL
	lda $2002                ; $fd8c: ad 02 20 PPUSTATUS
	bmi $fd8c                ; $fd8f: 30 fb
loc_fd91:
	lda $2002                ; $fd91: ad 02 20 PPUSTATUS
	bpl $fd91                ; $fd94: 10 fb
loc_fd96:
	lda $2002                ; $fd96: ad 02 20 PPUSTATUS
	bmi $fd96                ; $fd99: 30 fb
loc_fd9b:
	lda #$00                 ; $fd9b: a9 00
	sta $2001                ; $fd9d: 8d 01 20 PPUMASK
	ldx #$ff                 ; $fda0: a2 ff
	txs                      ; $fda2: 9a
	tax                      ; $fda3: aa
	sta $602c                ; $fda4: 8d 2c 60
	sta $00,x                ; $fda7: 95 00
	sta $0300,x              ; $fda9: 9d 00 03
	sta $0400,x              ; $fdac: 9d 00 04
	sta $0500,x              ; $fdaf: 9d 00 05
	sta $0600,x              ; $fdb2: 9d 00 06
	sta $0700,x              ; $fdb5: 9d 00 07
	inx                      ; $fdb8: e8
	bne $fda7                ; $fdb9: d0 ec
loc_fdbb:
	jsr $fc80                ; $fdbb: 20 80 fc
loc_fdbe:
	sta $6004                ; $fdbe: 8d 04 60
	lda #$1e                 ; $fdc1: a9 1e
	sta $6001                ; $fdc3: 8d 01 60
	lda #$00                 ; $fdc6: a9 00
	sta $6002                ; $fdc8: 8d 02 60
	sta $6003                ; $fdcb: 8d 03 60
	jsr sub_fdf4             ; $fdce: 20 f4 fd
loc_fdd1:
	lda $2002                ; $fdd1: ad 02 20 PPUSTATUS
	lda #$10                 ; $fdd4: a9 10
	sta $2006                ; $fdd6: 8d 06 20 PPUADDR
	lda #$00                 ; $fdd9: a9 00
	sta $2006                ; $fddb: 8d 06 20 PPUADDR
	ldx #$10                 ; $fdde: a2 10
loc_fde0:
	sta $2007                ; $fde0: 8d 07 20 PPUDATA
	dex                      ; $fde3: ca

; === Block $fde4-$fdf1 (Code) ===
entry_fde4:
	bne $fde0                ; $fde4: d0 fa
loc_fde6:
	lda #$88                 ; $fde6: a9 88
	sta $2000                ; $fde8: 8d 00 20 PPUCTRL
	jsr sub_c6bb             ; $fdeb: 20 bb c6
loc_fdee:
	jsr sub_ff74             ; $fdee: 20 74 ff
loc_fdf1:
	jmp $c9b5                ; $fdf1: 4c b5 c9

; === Block $fdf4-$fe06 (Code) ===
loc_fdf4:
	inc $ffdf                ; $fdf4: ee df ff
	lda $6001                ; $fdf7: ad 01 60
	jsr sub_fe09             ; $fdfa: 20 09 fe
loc_fdfd:
	lda $6002                ; $fdfd: ad 02 60
	jsr sub_ffac             ; $fe00: 20 ac ff
loc_fe03:
	lda $6003                ; $fe03: ad 03 60
	jmp sub_ffc2             ; $fe06: 4c c2 ff

; === Block $fdf9-$fdf9 (Code) ===
entry_fdf9:
	rts                      ; $fdf9: 60

; === Block $fe09-$fe1f (Code) ===
loc_fe09:
	sta $6001                ; $fe09: 8d 01 60
	sta $9fff                ; $fe0c: 8d ff 9f
	lsr                      ; $fe0f: 4a
	sta $9fff                ; $fe10: 8d ff 9f
	lsr                      ; $fe13: 4a
	sta $9fff                ; $fe14: 8d ff 9f
	lsr                      ; $fe17: 4a
	sta $9fff                ; $fe18: 8d ff 9f
	lsr                      ; $fe1b: 4a
	sta $9fff                ; $fe1c: 8d ff 9f
	rts                      ; $fe1f: 60

; === Block $fe20-$fe55 (Code) ===
loc_fe20:
	ldy #$01                 ; $fe20: a0 01
	lda $0300,x              ; $fe22: bd 00 03
	bpl $fe38                ; $fe25: 10 11
loc_fe27:
	tay                      ; $fe27: a8
	lsr                      ; $fe28: 4a
	lsr                      ; $fe29: 4a
	lsr                      ; $fe2a: 4a
	lsr                      ; $fe2b: 4a
	and #$04                 ; $fe2c: 29 04
	ora #$88                 ; $fe2e: 09 88
	sta $2000                ; $fe30: 8d 00 20 PPUCTRL
	tya                      ; $fe33: 98
	inx                      ; $fe34: e8
	ldy $0300,x              ; $fe35: bc 00 03
loc_fe38:
	inx                      ; $fe38: e8
	and #$3f                 ; $fe39: 29 3f
	sta $2006                ; $fe3b: 8d 06 20 PPUADDR
	lda $0300,x              ; $fe3e: bd 00 03
	inx                      ; $fe41: e8
	sta $2006                ; $fe42: 8d 06 20 PPUADDR
	lda $0300,x              ; $fe45: bd 00 03
	inx                      ; $fe48: e8
	sta $2007                ; $fe49: 8d 07 20 PPUDATA
	dey                      ; $fe4c: 88
	bne $fe45                ; $fe4d: d0 f6
loc_fe4f:
	dec $03                  ; $fe4f: c6 03
	bne $fe20                ; $fe51: d0 cd
loc_fe53:
	beq $feb1                ; $fe53: f0 5c

; === Block $fe55-$fe5a (Code) ===
loc_fe55:
	jsr sub_ff2d             ; $fe55: 20 2d ff
loc_fe58:
	lda #$02                 ; $fe58: a9 02

; === Block $fe57-$fe5d (Code) ===
entry_fe57:
	*isc $02a9,x             ; $fe57: ff a9 02
	sta $4014                ; $fe5a: 8d 14 40 OAMDMA
	jmp $fee0                ; $fe5d: 4c e0 fe

; === Block $fe60-$fe67 (Code) ===
loc_fe60:
	lda #$02                 ; $fe60: a9 02
	sta $4014                ; $fe62: 8d 14 40 OAMDMA
	bne $feb1                ; $fe65: d0 4a

; === Block $fe67-$ff24 (Code) ===
entry_fe67:
	pha                      ; $fe67: 48
	txa                      ; $fe68: 8a
	pha                      ; $fe69: 48
	tya                      ; $fe6a: 98
	pha                      ; $fe6b: 48
	tsx                      ; $fe6c: ba
	lda $0106,x              ; $fe6d: bd 06 01
	cmp #$ff                 ; $fe70: c9 ff
	bne $fe55                ; $fe72: d0 e1
loc_fe74:
	lda $0105,x              ; $fe74: bd 05 01
	cmp #$77                 ; $fe77: c9 77
	bcc $fe55                ; $fe79: 90 da
loc_fe7b:
	cmp #$7d                 ; $fe7b: c9 7d
	bcs $fe55                ; $fe7d: b0 d6
loc_fe7f:
	lda $2002                ; $fe7f: ad 02 20 PPUSTATUS
	inc $4f                  ; $fe82: e6 4f
	lda $03                  ; $fe84: a5 03
	beq $fe60                ; $fe86: f0 d8
loc_fe88:
	cmp #$08                 ; $fe88: c9 08
	bcs $fe91                ; $fe8a: b0 05
loc_fe8c:
	lda #$02                 ; $fe8c: a9 02
	sta $4014                ; $fe8e: 8d 14 40 OAMDMA
loc_fe91:
	ldx #$00                 ; $fe91: a2 00
	lda $602c                ; $fe93: ad 2c 60
	bmi $fe20                ; $fe96: 30 88
loc_fe98:
	lda $0300,x              ; $fe98: bd 00 03
	sta $2006                ; $fe9b: 8d 06 20 PPUADDR
	lda $0301,x              ; $fe9e: bd 01 03
	sta $2006                ; $fea1: 8d 06 20 PPUADDR
	lda $0302,x              ; $fea4: bd 02 03
	sta $2007                ; $fea7: 8d 07 20 PPUDATA
	inx                      ; $feaa: e8
	inx                      ; $feab: e8
	inx                      ; $feac: e8
	cpx $04                  ; $fead: e4 04
	bne $fe98                ; $feaf: d0 e7
loc_feb1:
	lda #$3f                 ; $feb1: a9 3f
	sta $2006                ; $feb3: 8d 06 20 PPUADDR
	lda #$00                 ; $feb6: a9 00
	sta $02                  ; $feb8: 85 02
	sta $03                  ; $feba: 85 03
	sta $04                  ; $febc: 85 04
	sta $602c                ; $febe: 8d 2c 60
	sta $2006                ; $fec1: 8d 06 20 PPUADDR
	lda #$0f                 ; $fec4: a9 0f
	sta $2007                ; $fec6: 8d 07 20 PPUDATA
	lda $06                  ; $fec9: a5 06
	bne $fed1                ; $fecb: d0 04
loc_fecd:
	lda #$88                 ; $fecd: a9 88
	bne $fed3                ; $fecf: d0 02
loc_fed1:
	lda #$89                 ; $fed1: a9 89
loc_fed3:
	sta $2000                ; $fed3: 8d 00 20 PPUCTRL
	lda $05                  ; $fed6: a5 05
	sta $2005                ; $fed8: 8d 05 20 PPUSCROLL
	lda $07                  ; $fedb: a5 07
	sta $2005                ; $fedd: 8d 05 20 PPUSCROLL
	jsr sub_fdf4             ; $fee0: 20 f4 fd
loc_fee3:
	lda $6005                ; $fee3: ad 05 60
	bne $fef0                ; $fee6: d0 08
loc_fee8:
	lda #$01                 ; $fee8: a9 01
	jsr sub_ff96             ; $feea: 20 96 ff
loc_feed:
	jsr $8028                ; $feed: 20 28 80
loc_fef0:
	lda $6004                ; $fef0: ad 04 60
	jsr sub_ff91             ; $fef3: 20 91 ff
loc_fef6:
	tsx                      ; $fef6: ba
	lda $0106,x              ; $fef7: bd 06 01
	sta $36                  ; $fefa: 85 36
	cmp #$ff                 ; $fefc: c9 ff
	bne $ff10                ; $fefe: d0 10
loc_ff00:
	lda $0105,x              ; $ff00: bd 05 01
	cmp #$96                 ; $ff03: c9 96
	bcc $ff10                ; $ff05: 90 09
loc_ff07:
	cmp #$d6                 ; $ff07: c9 d6
	bcs $ff10                ; $ff09: b0 05
loc_ff0b:
	lda #$d6                 ; $ff0b: a9 d6
	sta $0105,x              ; $ff0d: 9d 05 01
loc_ff10:
	lda $0105,x              ; $ff10: bd 05 01
	sta $35                  ; $ff13: 85 35
	ldy #$00                 ; $ff15: a0 00
	lda ($35),y              ; $ff17: b1 35
	and #$0f                 ; $ff19: 29 0f
	cmp #$07                 ; $ff1b: c9 07
entry_ff1d:
	beq $ff25                ; $ff1d: f0 06
loc_ff1f:
	pla                      ; $ff1f: 68
	tay                      ; $ff20: a8
	pla                      ; $ff21: 68
	tax                      ; $ff22: aa
	pla                      ; $ff23: 68
	rti                      ; $ff24: 40

; === Block $ff25-$ff2a (Code) ===
loc_ff25:
	pla                      ; $ff25: 68
	tay                      ; $ff26: a8
	pla                      ; $ff27: 68
	tax                      ; $ff28: aa
	pla                      ; $ff29: 68
	jmp sub_fd3a             ; $ff2a: 4c 3a fd

; === Block $ff2d-$ff53 (Code) ===
loc_ff2d:
	lda #$3f                 ; $ff2d: a9 3f
	sta $2006                ; $ff2f: 8d 06 20 PPUADDR
	lda #$00                 ; $ff32: a9 00
	sta $2006                ; $ff34: 8d 06 20 PPUADDR
	lda #$0f                 ; $ff37: a9 0f
	sta $2007                ; $ff39: 8d 07 20 PPUDATA
	lda $06                  ; $ff3c: a5 06
	bne $ff44                ; $ff3e: d0 04
loc_ff40:
	lda #$88                 ; $ff40: a9 88
	bne $ff46                ; $ff42: d0 02
loc_ff44:
	lda #$89                 ; $ff44: a9 89
loc_ff46:
	sta $2000                ; $ff46: 8d 00 20 PPUCTRL
	lda $05                  ; $ff49: a5 05
	sta $2005                ; $ff4b: 8d 05 20 PPUSCROLL
	lda $07                  ; $ff4e: a5 07
	sta $2005                ; $ff50: 8d 05 20 PPUSCROLL
	rts                      ; $ff53: 60

; === Block $ff64-$ff6a (Code) ===
entry_ff64:
	*isc $ffff,x             ; $ff64: ff ff ff
	*isc $ffff,x             ; $ff67: ff ff ff

; === Block $ff74-$ff7c (Code) ===
loc_ff74:
	lda #$01                 ; $ff74: a9 01
	sta $02                  ; $ff76: 85 02
	lda $02                  ; $ff78: a5 02
	bne $ff78                ; $ff7a: d0 fc
loc_ff7c:
	rts                      ; $ff7c: 60

; === Block $ff81-$ff93 (Code) ===
entry_ff81:
	*isc $ffff,x             ; $ff81: ff ff ff
	*isc $ffff,x             ; $ff84: ff ff ff
	*isc $ffff,x             ; $ff87: ff ff ff
	*isc $ffff,x             ; $ff8a: ff ff ff
	*isc $864c,x             ; $ff8d: ff 4c 86
	sbc $048d,x              ; $ff90: fd 8d 04
	rts                      ; $ff93: 60

; === Block $ff86-$ffab (Code) ===
entry_ff86:
	*isc $ffff,x             ; $ff86: ff ff ff
	*isc $ffff,x             ; $ff89: ff ff ff
	*isc $4cff,x             ; $ff8c: ff ff 4c
	stx $fd                  ; $ff8f: 86 fd
loc_ff91:
	sta $6004                ; $ff91: 8d 04 60
	nop                      ; $ff94: ea
	nop                      ; $ff95: ea
loc_ff96:
	sta $ffff                ; $ff96: 8d ff ff
	lsr                      ; $ff99: 4a
	sta $ffff                ; $ff9a: 8d ff ff
	lsr                      ; $ff9d: 4a
	sta $ffff                ; $ff9e: 8d ff ff
	lsr                      ; $ffa1: 4a
	sta $ffff                ; $ffa2: 8d ff ff
	lsr                      ; $ffa5: 4a
	sta $ffff                ; $ffa6: 8d ff ff
	nop                      ; $ffa9: ea
	nop                      ; $ffaa: ea
	rts                      ; $ffab: 60

; === Block $ff9c-$ffa2 (Code) ===
entry_ff9c:
	*isc $8d4a,x             ; $ff9c: ff 4a 8d
	*isc $4aff,x             ; $ff9f: ff ff 4a

; === Block $ffac-$ffb8 (Code) ===
loc_ffac:
	sta $bfff                ; $ffac: 8d ff bf
	lsr                      ; $ffaf: 4a
	sta $bfff                ; $ffb0: 8d ff bf
	lsr                      ; $ffb3: 4a
	sta $bfff                ; $ffb4: 8d ff bf
	lsr                      ; $ffb7: 4a

; === Block $ffb2-$ffc1 (Code) ===
entry_ffb2:
	*lax $8d4a,y             ; $ffb2: bf 4a 8d
	*isc $4abf,x             ; $ffb5: ff bf 4a
	sta $bfff                ; $ffb8: 8d ff bf
	lsr                      ; $ffbb: 4a
	sta $bfff                ; $ffbc: 8d ff bf
	nop                      ; $ffbf: ea
	nop                      ; $ffc0: ea
	rts                      ; $ffc1: 60

; === Block $ffc2-$ffd7 (Code) ===
loc_ffc2:
	sta $dfff                ; $ffc2: 8d ff df
	lsr                      ; $ffc5: 4a
	sta $dfff                ; $ffc6: 8d ff df
	lsr                      ; $ffc9: 4a
	sta $dfff                ; $ffca: 8d ff df
	lsr                      ; $ffcd: 4a
	sta $dfff                ; $ffce: 8d ff df
	lsr                      ; $ffd1: 4a
	sta $dfff                ; $ffd2: 8d ff df
	nop                      ; $ffd5: ea
	nop                      ; $ffd6: ea
	rts                      ; $ffd7: 60

; === Block $ffd8-$ffdc (Code) ===
reset:
	sei                      ; $ffd8: 78
	inc $ffdf                ; $ffd9: ee df ff
	jmp $fd86                ; $ffdc: 4c 86 fd

