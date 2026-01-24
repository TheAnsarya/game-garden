; 🌺 Peony Disassembly
; ROM: test-dw4.nes
; Platform: NES
; Size: 524304 bytes

.system:NES
; Mapper: MMC1
; Labels: 570

; === Block $8000-$8141 (Code) ===
Bank1_Func36:
	sty $6b                  ; $8000: 84 6b
	bcc $7fa3                ; $8002: 90 9f
loc_8004:
	inc $3d3d                ; $8004: ee 3d 3d PPUSCROLL
	*nop $5e                 ; $8007: 44 5e
	ora $39,x                ; $8009: 15 39
	lsr $4ff6                ; $800b: 4e f6 4f
	*lax ($e6),y             ; $800e: b3 e6
	sty $df,x                ; $8010: 94 df
	adc ($fa),y              ; $8012: 71 fa
	bit $0362                ; $8014: 2c 62 03
	lda $d08e,x              ; $8017: bd 8e d0
	stx $7f                  ; $801a: 86 7f
	*dcp $a5,x               ; $801c: d7 a5
	inc $bc3f                ; $801e: ee 3f bc
	cmp ($63,x)              ; $8021: c1 63
	*nop $c2                 ; $8023: 04 c2
	jsr $a9f0                ; $8025: 20 f0 a9
loc_8028:
	dex                      ; $8028: ca
	adc $d6,x                ; $8029: 75 d6
	bcc $7ff8                ; $802b: 90 cb
loc_802d:
	*lax ($ff,x)             ; $802d: a3 ff
	*slo $ac91,x             ; $802f: 1f 91 ac
	bmi $7fe0                ; $8032: 30 ac
loc_8034:
	eor $d5,x                ; $8034: 55 d5
	and $684f,y              ; $8036: 39 4f 68
	*sre ($59,x)             ; $8039: 43 59
	ora $1375,y              ; $803b: 19 75 13
	rol $47eb,x              ; $803e: 3e eb 47
	*isc ($ba,x)             ; $8041: e3 ba
	*tas $ded5,y             ; $8043: 9b d5 de
	*rla $53,x               ; $8046: 37 53
	ror $4c                  ; $8048: 66 4c
	*jam                     ; $804a: 22
	beq $7ffd                ; $804b: f0 b0
loc_804d:
	sbc $508b,x              ; $804d: fd 8b 50
	ora $74f8,x              ; $8050: 1d f8 74
	pla                      ; $8053: 68
	*anc #$8e                ; $8054: 2b 8e
	sbc $7ec8                ; $8056: ed c8 7e
	cmp $a3                  ; $8059: c5 a3
	sty $90                  ; $805b: 84 90
	iny                      ; $805d: c8
	*sre $dcf3               ; $805e: 4f f3 dc
	*rra $be56               ; $8061: 6f 56 be
	inc $5337,x              ; $8064: fe 37 53
	ror $59                  ; $8067: 66 59
	ora #$fe                 ; $8069: 09 fe
	ror                      ; $806b: 6a
	ror $87cf,x              ; $806c: 7e cf 87
	*sre ($0e,x)             ; $806f: 43 0e
	ldy $71                  ; $8071: a4 71
	sbc ($97),y              ; $8073: f1 97
	*isc ($57,x)             ; $8075: e3 57
	and #$fe                 ; $8077: 29 fe
	adc #$68                 ; $8079: 69 68
	ora $90                  ; $807b: 05 90
	*sha $9fe7,y             ; $807d: 9f e7 9f
	lsr $b6,x                ; $8080: 56 b6
	*nop $2b7e               ; $8082: 0c 7e 2b PPUADDR
	ora #$93                 ; $8085: 09 93
	*dcp $8e11,x             ; $8087: df 11 8e
	*jam                     ; $808a: 52
	ora $99                  ; $808b: 05 99
	ror $a2                  ; $808d: 66 a2
	adc ($ee,x)              ; $808f: 61 ee
	*isc ($c1),y             ; $8091: f3 c1
	clc                      ; $8093: 18
	lsr $b5                  ; $8094: 46 b5
	*nop                     ; $8096: 7a
	tsx                      ; $8097: ba
	cpx #$6a                 ; $8098: e0 6a
	sbc $39                  ; $809a: e5 39
	inc $d9                  ; $809c: e6 d9
	*isc $a6e5,x             ; $809e: ff e5 a6
	ora ($53),y              ; $80a1: 11 53
	jsr $7e19                ; $80a3: 20 19 7e
loc_80a6:
	*sha $4387,y             ; $80a6: 9f 87 43
	*nop $1162,x             ; $80a9: dc 62 11
	*nop $f33e,x             ; $80ac: fc 3e f3
	ora $ae                  ; $80af: 05 ae
	*sax $4fca               ; $80b1: 8f ca 4f
	cmp $d5c2,x              ; $80b4: dd c2 d5
	and $3831                ; $80b7: 2d 31 38 PPUMASK
	*jam                     ; $80ba: f2
	eor $3de7,y              ; $80bb: 59 e7 3d PPUDATA
	dec $29                  ; $80be: c6 29
	*alr #$df                ; $80c0: 4b df
	and #$fb                 ; $80c2: 29 fb
	*shx $f5e0,y             ; $80c4: 9e e0 f5
	*alr #$4c                ; $80c7: 4b 4c
	lsr $963c                ; $80c9: 4e 3c 96
	adc $71cf,y              ; $80cc: 79 cf 71
	*nop #$93                ; $80cf: 82 93
	sbc #$43                 ; $80d1: e9 43
	and $a5c6,x              ; $80d3: 3d c6 a5
	iny                      ; $80d6: c8
	eor ($68,x)              ; $80d7: 41 68
	clc                      ; $80d9: 18
	lda $f941,y              ; $80da: b9 41 f9
	*jam                     ; $80dd: 92
	ror $0c,x                ; $80de: 76 0c
	*nop $c8,x               ; $80e0: 74 c8
	asl $5f                  ; $80e2: 06 5f
	*lax $e1                 ; $80e4: a7 e1
	*dcp $9b,x               ; $80e6: d7 9b
	*sre ($df,x)             ; $80e8: 43 df
	*sax $46                 ; $80ea: 87 46
	lda $6b,x                ; $80ec: b5 6b
	dec $46,x                ; $80ee: d6 46
	*rra $8e8f,y             ; $80f0: 7b 8f 8e
	sbc $39,x                ; $80f3: f5 39
	*sre $756f               ; $80f5: 4f 6f 75
	bcc $80e8                ; $80f8: 90 ee
loc_80fa:
	*rla $b8a3,x             ; $80fa: 3f a3 b8
	sta $e39e                ; $80fd: 8d 9e e3
	sbc #$4b                 ; $8100: e9 4b
	bcs $814a                ; $8102: b0 46
loc_8104:
	cmp $276c,y              ; $8104: d9 6c 27 OAMDATA
	*sbc #$d3                ; $8107: eb d3
	beq $8179                ; $8109: f0 6e
loc_810b:
	sta $fc1a                ; $810b: 8d 1a fc
	jsr $3698                ; $810e: 20 98 36 PPUCTRL
loc_8111:
	*sbc #$cc                ; $8111: eb cc
	and $fbe0,x              ; $8113: 3d e0 fb
	php                      ; $8116: 08
	ldy $453a,x              ; $8117: bc 3a 45
	ldy #$d7                 ; $811a: a0 d7
	sbc $72,x                ; $811c: f5 72
	plp                      ; $811e: 28
	sty $73                  ; $811f: 84 73
	pla                      ; $8121: 68
	dec $56,x                ; $8122: d6 56
	rol $75,x                ; $8124: 36 75
	ror                      ; $8126: 6a
	*nop                     ; $8127: 3a
	tax                      ; $8128: aa
	*jam                     ; $8129: 72
	sta $496a,x              ; $812a: 9d 6a 49
	*isc ($ab),y             ; $812d: f3 ab
	and ($9e),y              ; $812f: 31 9e
	*isc ($47,x)             ; $8131: e3 47
	ror $df43,x              ; $8133: 7e 43 df
	*sax ($cf,x)             ; $8136: 83 cf
	*nop                     ; $8138: 3a
	*nop #$22                ; $8139: c2 22
	dec $6e3e,x              ; $813b: de 3e 6e
	rol $0b42                ; $813e: 2e 42 0b
	rti                      ; $8141: 40

; === Block $8000-$822d (Code) ===
Bank2_Func90:
	*isc ($df,x)             ; $8000: e3 df
	bit $b7                  ; $8002: 24 b7
	*slo $f83d               ; $8004: 0f 3d f8
	*sre $03ac,y             ; $8007: 5b ac 03
	*isc ($df,x)             ; $800a: e3 df
	txa                      ; $800c: 8a
	adc $a4bc,y              ; $800d: 79 bc a4
	beq $801e                ; $8010: f0 0c
loc_8012:
	*nop                     ; $8012: 3a
	sta $a717,y              ; $8013: 99 17 a7
	iny                      ; $8016: c8
	sty $5b,x                ; $8017: 94 5b
	*lax #$f6                ; $8019: ab f6
	bit $e4d7                ; $801b: 2c d7 e4
loc_801e:
	inx                      ; $801e: e8
	*lax $a8                 ; $801f: a7 a8
	nop                      ; $8021: ea
	lda #$ca                 ; $8022: a9 ca
	*rra ($5c),y             ; $8024: 73 5c
	*anc #$e7                ; $8026: 2b e7
	sta $e9f0,x              ; $8028: 9d f0 e9
	sbc $9ce7,y              ; $802b: f9 e7 9c
	*isc $18,x               ; $802e: f7 18
	*rla $f9de               ; $8030: 2f de f9
	ldx $f33d                ; $8033: ae 3d f3
	*nop $4f5b,x             ; $8036: dc 5b 4f
	sta ($ed),y              ; $8039: 91 ed
	*lax $a1,y               ; $803b: b7 a1
	*sax $53                 ; $803d: 87 53
	adc ($0f),y              ; $803f: 71 0f
	*dcp $9a,x               ; $8041: d7 9a
	bpl $7fcc                ; $8043: 10 87
loc_8045:
	*rra $a11d,y             ; $8045: 7b 1d a1
	ora $3979                ; $8048: 0d 79 39 PPUMASK
	inc $53ae,x              ; $804b: fe ae 53
	*nop $0ad7,x             ; $804e: fc d7 0a
	cpx $e218                ; $8051: ec 18 e2
	sbc ($b8),y              ; $8054: f1 b8
	cmp $27,x                ; $8056: d5 27
	*nop $df,x               ; $8058: 14 df
	adc $dd,x                ; $805a: 75 dd
	eor $b321,x              ; $805c: 5d 21 b3
	*nop                     ; $805f: 7a
	adc ($24,x)              ; $8060: 61 24
	eor #$26                 ; $8062: 49 26
	dec $45,x                ; $8064: d6 45
	*nop $d632,x             ; $8066: 1c 32 d6
	cmp $1d2e                ; $8069: cd 2e 1d
	ora $62,x                ; $806c: 15 62
	bcs $8068                ; $806e: b0 f8
loc_8070:
	*nop #$b4                ; $8070: 80 b4
	*lax ($dc),y             ; $8072: b3 dc
	pla                      ; $8074: 68
	inc $db                  ; $8075: e6 db
	*nop $ee31,x             ; $8077: 3c 31 ee
	*rla $f8                 ; $807a: 27 f8
	*nop                     ; $807c: 3a
	asl $50fa,x              ; $807d: 1e fa 50
	cmp $2d,x                ; $8080: d5 2d
	*isc $9fc8,y             ; $8082: fb c8 9f
	bmi $80a2                ; $8085: 30 1b
loc_8087:
	sta $8c                  ; $8087: 85 8c
	lsr $08                  ; $8089: 46 08
	*sax $f5,y               ; $808b: 97 f5
	*isc $9d                 ; $808d: e7 9d
	*rra $e1                 ; $808f: 67 e1
	eor $b8e7,y              ; $8091: 59 e7 b8
	dec $ffcc,x              ; $8094: de cc ff
	*sre $7d90               ; $8097: 4f 90 7d
	*nop #$f1                ; $809a: e2 f1
	clv                      ; $809c: b8
	sed                      ; $809d: f8
	*nop $ba2c,x             ; $809e: dc 2c ba
	*jam                     ; $80a1: 02
loc_80a2:
	bcc $80a3                ; $80a2: 90 ff
loc_80a4:
	ror $7596,x              ; $80a4: 7e 96 75
	*jam                     ; $80a7: 72
	*shy $9bd2,x             ; $80a8: 9c d2 9b
	*isc $9d                 ; $80ab: e7 9d
	sbc $30                  ; $80ad: e5 30
	stx $e3                  ; $80af: 86 e3
	*dcp ($c5),y             ; $80b1: d3 c5
	sbc ($e3,x)              ; $80b3: e1 e3
	adc ($a4),y              ; $80b5: 71 a4
	cmp ($6a,x)              ; $80b7: c1 6a
	sbc $38                  ; $80b9: e5 38
	sta $ac,x                ; $80bb: 95 ac
	*sha $eb24,y             ; $80bd: 9f 24 eb
	*dcp $6896               ; $80c0: cf 96 68
	*nop $4f69,x             ; $80c3: 7c 69 4f
	*isc $2d,x               ; $80c6: f7 2d
	*isc ($24),y             ; $80c8: f3 24
	*isc ($e4,x)             ; $80ca: e3 e4
	*dcp ($ab,x)             ; $80cc: c3 ab
	dec $e3                  ; $80ce: c6 e3
	*isc ($b1,x)             ; $80d0: e3 b1
	*rra ($9d,x)             ; $80d2: 63 9d
	adc $34f2,y              ; $80d4: 79 f2 34 PPUSTATUS
	lda ($81,x)              ; $80d7: a1 81
	lsr $be                  ; $80d9: 46 be
	*sre $45                 ; $80db: 47 45
	*sre $52                 ; $80dd: 47 52
	*slo ($fd),y             ; $80df: 13 fd
	*sre ($eb),y             ; $80e1: 53 eb
	*nop                     ; $80e3: 7a
	dex                      ; $80e4: ca
	lda $5e44                ; $80e5: ad 44 5e
	asl $1837,x              ; $80e8: 1e 37 18
	*dcp ($2e,x)             ; $80eb: c3 2e
	sbc $510e,y              ; $80ed: f9 0e 51
	*rra $cd,x               ; $80f0: 77 cd
	*jam                     ; $80f2: 72
	bpl $80cb                ; $80f3: 10 d6
loc_80f5:
	eor $1c                  ; $80f5: 45 1c
	*nop $9f57,x             ; $80f7: 3c 57 9f
	ldy $ef2b,x              ; $80fa: bc 2b ef
	*jam                     ; $80fd: d2
	dec $53ae                ; $80fe: ce ae 53
	txs                      ; $8101: 9a
	*sre ($7c),y             ; $8102: 53 7c
	*isc ($bc),y             ; $8104: f3 bc
	cmp ($6b,x)              ; $8106: c1 6b
	*axs #$42                ; $8108: cb 42
	beq $80f5                ; $810a: f0 e9
loc_810c:
	nop                      ; $810c: ea
	*jam                     ; $810d: 22
	ror $f3a5                ; $810e: 6e a5 f3
	*nop $e466,x             ; $8111: dc 66 e4
	rol                      ; $8114: 2a
	*nop                     ; $8115: 1a
	bvc $80e0                ; $8116: 50 c8
loc_8118:
	*lax ($f8),y             ; $8118: b3 f8
	*rra $7ebc,y             ; $811a: 7b bc 7e
	asl $f6                  ; $811d: 06 f6
	eor ($1f,x)              ; $811f: 41 1f
	*rra $d1                 ; $8121: 67 d1
	cmp $4aa3                ; $8123: cd a3 4a
	php                      ; $8126: 08
	eor $8b,x                ; $8127: 55 8b
	*dcp ($af,x)             ; $8129: c3 af
	*dcp ($8c,x)             ; $812b: c3 8c
	ror                      ; $812d: 6a
	sbc $3d                  ; $812e: e5 3d
	lda #$0c                 ; $8130: a9 0c
	*nop $9e,x               ; $8132: d4 9e
	txs                      ; $8134: 9a
	*sre ($f9,x)             ; $8135: 43 f9
	*nop                     ; $8137: 1a
	adc $d667,x              ; $8138: 7d 67 d6
	adc $d667,x              ; $813b: 7d 67 d6
	*nop                     ; $813e: 7a
	and $93e1,y              ; $813f: 39 e1 93
	ror $86                  ; $8142: 66 86
	lda $24,x                ; $8144: b5 24
	sed                      ; $8146: f8
	*shx $e37c,y             ; $8147: 9e 7c e3
	stx $98,y                ; $814a: 96 98
	*nop $8e                 ; $814c: 44 8e
	*rla ($79,x)             ; $814e: 23 79
	*isc $c14f,x             ; $8150: ff 4f c1
	*nop $1342,x             ; $8153: 1c 42 13
	*sre $58,x               ; $8156: 57 58
	ror $adc5,x              ; $8158: 7e c5 ad
	ora $c491                ; $815b: 0d 91 c4
	*rra $ab3f               ; $815e: 6f 3f ab
	eor ($d4),y              ; $8161: 51 d4
	stx $7923                ; $8163: 8e 23 79
	*isc $c34f,x             ; $8166: ff 4f c3
	ldx $3e05                ; $8169: ae 05 3e PPUSCROLL
	lda ($da),y              ; $816c: b1 da
	*nop $fdd4,x             ; $816e: dc d4 fd
	*sha $8d0e,y             ; $8171: 9f 0e 8d
	adc $ff,x                ; $8174: 75 ff
	lda $6a,x                ; $8176: b5 6a
	clc                      ; $8178: 18
	*nop #$a9                ; $8179: e2 a9
	*rra $4f,x               ; $817b: 77 4f
	*dcp ($a3,x)             ; $817d: c3 a3
	*lax ($a2,x)             ; $817f: a3 a2
	ldx #$2a                 ; $8181: a2 2a
	*shy $46a7,x             ; $8183: 9c a7 46
	*lax $d9                 ; $8186: a7 d9
	*isc $95,x               ; $8188: f7 95
	*jam                     ; $818a: 22
	cmp #$f3                 ; $818b: c9 f3
	*shx $2cfc,y             ; $818d: 9e fc 2c OAMDATA
	*sax $28                 ; $8190: 87 28
	*las $8bf7,y             ; $8192: bb f7 8b
	*dcp ($a5,x)             ; $8195: c3 a5
	*sbc #$73                ; $8197: eb 73
	*anc #$ad                ; $8199: 2b ad
	sbc ($d4),y              ; $819b: f1 d4
	dec $ad93,x              ; $819d: de 93 ad
	*rra $1932               ; $81a0: 6f 32 19
	ora $a62e,x              ; $81a3: 1d 2e a6
	*jam                     ; $81a6: 32
	tax                      ; $81a7: aa
	adc $f596,y              ; $81a8: 79 96 f5
	*sax $49,y               ; $81ab: 97 49
	*nop #$8e                ; $81ad: e2 8e
	iny                      ; $81af: c8
	sbc #$3a                 ; $81b0: e9 3a
	*rla $2cb7,y             ; $81b2: 3b b7 2c PPUDATA
	txa                      ; $81b5: 8a
	*rra ($71,x)             ; $81b6: 63 71
	*jam                     ; $81b8: 32
	*nop                     ; $81b9: 3a
	clc                      ; $81ba: 18
	and ($c5),y              ; $81bb: 31 c5
	sta $8e66,y              ; $81bd: 99 66 8e
	sei                      ; $81c0: 78
	pla                      ; $81c1: 68
	cmp $b7,x                ; $81c2: d5 b7
	sbc $de45,y              ; $81c4: f9 45 de
	sta $cc1b,x              ; $81c7: 9d 1b cc
	lda #$6b                 ; $81ca: a9 6b
	*nop $af,x               ; $81cc: 34 af
	ora $dcf3,x              ; $81ce: 1d f3 dc
	*nop $39                 ; $81d1: 64 39
	eor $dd                  ; $81d3: 45 dd
	sty $4d                  ; $81d5: 84 4d
	*isc $9ef0               ; $81d7: ef f0 9e
	*nop                     ; $81da: 7a
	ror $3b16,x              ; $81db: 7e 16 3b PPUADDR
	*rra $c6a1,y             ; $81de: 7b a1 c6
	*rra ($3c,x)             ; $81e1: 63 3c
	*sbc #$40                ; $81e3: eb 40
	*nop $2cf3,x             ; $81e5: 7c f3 2c OAMADDR
	*jam                     ; $81e8: 22
	beq $825a                ; $81e9: f0 6f
loc_81eb:
	ror $bbba,x              ; $81eb: 7e ba bb
	*lax $ee71               ; $81ee: af 71 ee
	sbc #$13                 ; $81f1: e9 13
	ror $bd                  ; $81f3: 66 bd
	*nop #$17                ; $81f5: e2 17
	inc $7cfe,x              ; $81f7: fe fe 7c
	sta $5a,x                ; $81fa: 95 5a
	stx $f7a6                ; $81fc: 8e a6 f7
	*sbc #$d7                ; $81ff: eb d7
	*sre $3ffa,x             ; $8201: 5f fa 3f PPUSTATUS
	*sre $23,x               ; $8204: 57 23
	*lax $1ffd               ; $8206: af fd 1f
	*lax #$51                ; $8209: ab 51
	*slo ($28),y             ; $820b: 13 28
	*sre $f9                 ; $820d: 47 f9
	and $fc                  ; $820f: 25 fc
	*nop $fc,x               ; $8211: f4 fc
	*nop                     ; $8213: 3a
	eor #$25                 ; $8214: 49 25
	*lax #$50                ; $8216: ab 50
	dec $ca                  ; $8218: c6 ca
	ora ($fe),y              ; $821a: 11 fe
	eor #$7f                 ; $821c: 49 7f
	and $0a3f,x              ; $821e: 3d 3f 0a
	*shy $aea6,x             ; $8221: 9c a6 ae
	eor $ba                  ; $8224: 45 ba
	ldx $d2ba,y              ; $8226: be ba d2
	*nop                     ; $8229: 1a
	lda $f64e,y              ; $822a: b9 4e f6
	jmp $9d67                ; $822d: 4c 67 9d

; === Block $8000-$8070 (Code) ===
Bank3_Func00:
	*nop $d7e8,x             ; $8000: 3c e8 d7
	*isc $2ce0,x             ; $8003: ff e0 2c PPUCTRL
	*dcp $1e,x               ; $8006: d7 1e
	*isc $9e8f,y             ; $8008: fb 8f 9e
	*isc ($5a,x)             ; $800b: e3 5a
	and $f09f                ; $800d: 2d 9f f0
	asl $94,x                ; $8010: 16 94
	and $aa,x                ; $8012: 35 aa
	adc $ef,x                ; $8014: 75 ef
	sei                      ; $8016: 78
	*nop #$03                ; $8017: 82 03
	cpx #$df                 ; $8019: e0 df
	adc $e613,y              ; $801b: 79 13 e6
	ora ($87,x)              ; $801e: 01 87
	eor $8d,x                ; $8020: 55 8d
	cpx $679f                ; $8022: ec 9f 67
	cpy $5ace                ; $8025: cc ce 5a
	cmp $5f5d                ; $8028: cd 5d 5f
	*sre $29,x               ; $802b: 57 29
	sbc $6b48                ; $802d: ed 48 6b
	jsr $7b1e                ; $8030: 20 1e 7b
loc_8033:
	inc $4553,x              ; $8033: fe 53 45
	*dcp $4b59,y             ; $8036: db 59 4b
	inx                      ; $8039: e8
	inc $f207                ; $803a: ee 07 f2
	*nop $eab0,x             ; $803d: 7c b0 ea
	lda #$26                 ; $8040: a9 26
	adc $7ecf,x              ; $8042: 7d cf 7e
	ora $9a05,x              ; $8045: 1d 05 9a
	cpx $21                  ; $8048: e4 21
	*lax ($9b,x)             ; $804a: a3 9b
	lsr $e2                  ; $804c: 46 e2
	*nop                     ; $804e: 1a
	lda $874e,y              ; $804f: b9 4e 87
	and #$0e                 ; $8052: 29 0e
	stx $74f1                ; $8054: 8e f1 74
	*jam                     ; $8057: b2
	dey                      ; $8058: 88
	ora $2c1d,x              ; $8059: 1d 1d 2c PPUSCROLL
	ldx #$07                 ; $805c: a2 07
	*nop $48                 ; $805e: 44 48
	*lax #$c7                ; $8060: ab c7
	*lax #$aa                ; $8062: ab aa
	*jam                     ; $8064: 72
	sta $9f1a,x              ; $8065: 9d 1a 9f
	*rra $c0                 ; $8068: 67 c0
	*lax ($5f,x)             ; $806a: a3 5f
	*jam                     ; $806c: 22
	ldy $fc48                ; $806d: ac 48 fc
	jmp ($d9c4)              ; $8070: 6c c4 d9

; === Block $8000-$8007 (Code) ===
Bank31_Func13:
	*isc $774c,x             ; $8000: ff 4c 77
	sbc $4c                  ; $8003: e5 4c
	*alr #$e5                ; $8005: 4b e5
	jmp $e58d                ; $8007: 4c 8d e5

; === Block $8068-$806e (Code) ===
loc_8068:
	dec $cd,x                ; $8068: d6 cd
	rol $151d                ; $806a: 2e 1d 15
	*jam                     ; $806d: 62

; === Block $80a3-$80a8 (Code) ===
loc_80a3:
	*isc $967e,x             ; $80a3: ff 7e 96
	adc $72,x                ; $80a6: 75 72

; === Block $80cb-$80dd (Code) ===
loc_80cb:
	cpx $c3                  ; $80cb: e4 c3
	*lax #$c6                ; $80cd: ab c6
	*isc ($e3,x)             ; $80cf: e3 e3
	lda ($63),y              ; $80d1: b1 63
	sta $f279,x              ; $80d3: 9d 79 f2
	*nop $a1,x               ; $80d6: 34 a1
	sta ($46,x)              ; $80d8: 81 46
	ldx $4547,y              ; $80da: be 47 45

; === Block $80e0-$80e3 (Code) ===
loc_80e0:
	sbc $eb53,x              ; $80e0: fd 53 eb

; === Block $814a-$8218 (Code) ===
loc_814a:
	sbc $72,x                ; $814a: f5 72
	*sha $79e2,y             ; $814c: 9f e2 79
	sbc $0a7a,x              ; $814f: fd 7a 0a
	*isc ($fd,x)             ; $8152: e3 fd
	nop                      ; $8154: ea
	eor #$c7                 ; $8155: 49 c7
	and $e936                ; $8157: 2d 36 e9
	asl $83,x                ; $815a: 16 83
	*sre $63b0,x             ; $815c: 5f b0 63
	*xaa #$c3                ; $815f: 8b c3
	ldy $5a                  ; $8161: a4 5a
	ora $577f                ; $8163: 0d 7f 57
	*jam                     ; $8166: 22
	dey                      ; $8167: 88
	*sre $36                 ; $8168: 47 36
	sta $6365                ; $816a: 8d 65 63
	*rra $56                 ; $816d: 67 56
	*lax ($aa,x)             ; $816f: a3 aa
	*dcp $6b                 ; $8171: c7 6b
	*rra ($fd),y             ; $8173: 73 fd
	bmi $8126                ; $8175: 30 af
loc_8177:
	*jam                     ; $8177: 72
	*dcp $043f,x             ; $8178: df 3f 04
	*sre ($dc,x)             ; $817b: 43 dc
	*dcp $1e,x               ; $817d: d7 1e
	*nop                     ; $817f: fa
	lda $f24f,y              ; $8180: b9 4f f2
	*dcp $1c                 ; $8183: c7 1c
	*dcp $1ce6,y             ; $8185: db e6 1c
	*anc #$da                ; $8188: 2b da
	ora $75d8                ; $818a: 0d d8 75
	cli                      ; $818d: 58
	sbc $f36e                ; $818e: ed 6e f3
	sbc $ba4f,y              ; $8191: f9 4f ba
	bvc $816d                ; $8194: 50 d7
loc_8196:
	*nop                     ; $8196: 5a
	*nop $323a,x             ; $8197: 5c 3a 32 PPUSTATUS
	*nop #$98                ; $819a: e2 98
	*rra $fdc1,y             ; $819c: 7b c1 fd
	asl $1a33                ; $819f: 0e 33 1a
	lda $5a4d,y              ; $81a2: b9 4d 5a
	stx $19ab                ; $81a5: 8e ab 19
	ldx $1a42                ; $81a8: ae 42 1a
	stx $1a52                ; $81ab: 8e 52 1a
	lda $5d4e,y              ; $81ae: b9 4e 5d
	beq $8185                ; $81b1: f0 d2
loc_81b3:
	*isc $ecde,x             ; $81b3: ff de ec
	lda $b4                  ; $81b6: a5 b4
	adc $3a                  ; $81b8: 65 3a
	dec $3afc,x              ; $81ba: de fc 3a OAMDATA
	and $72,x                ; $81bd: 35 72
	*shy $9bd2,x             ; $81bf: 9c d2 9b
	bcs $81ae                ; $81c2: b0 ea
loc_81c4:
	eor $ba                  ; $81c4: 45 ba
	lda $a93e,x              ; $81c6: bd 3e a9
	dex                      ; $81c9: ca
	*rra ($4a),y             ; $81ca: 73 4a
	*rra $759e               ; $81cc: 6f 9e 75
	*slo ($a4),y             ; $81cf: 13 a4
	*jam                     ; $81d1: f2
	inc $fa                  ; $81d2: e6 fa
	*sre ($f3),y             ; $81d4: 53 f3
	ora $d3,x                ; $81d6: 15 d3
	*nop $31,x               ; $81d8: d4 31
	*nop $8b,x               ; $81da: f4 8b
	eor ($af,x)              ; $81dc: 41 af
	*nop                     ; $81de: fa
	ror $1d1d,x              ; $81df: 7e 1d 1d
	ora $1d15,x              ; $81e2: 1d 15 1d
	eor $39,x                ; $81e5: 55 39
	lsr $b8e1                ; $81e7: 4e e1 b8
	*rla $ce73,x             ; $81ea: 3f 73 ce
	*sre ($87,x)             ; $81ed: 43 87
	inc $f753                ; $81ef: ee 53 f7
	adc $b8fc,y              ; $81f2: 79 fc b8
	sta $dcf3                ; $81f5: 8d f3 dc
	*nop $71                 ; $81f8: 64 71
	sbc $5ecd,y              ; $81fa: f9 cd 5e
	*rra $0b,x               ; $81fd: 77 0b
	*slo ($f2),y             ; $81ff: 13 f2
	bpl $81ce                ; $8201: 10 cb
loc_8203:
	*lax ($bf,x)             ; $8203: a3 bf
	and ($ef,x)              ; $8205: 21 ef
	*sre ($0e,x)             ; $8207: 43 0e
	*lax #$18                ; $8209: ab 18
	*nop #$e8                ; $820b: 80 e8
	*isc $9453               ; $820d: ef 53 94
	inc $84,x                ; $8210: f6 84
	and $d6,x                ; $8212: 35 d6
	bcc $81ec                ; $8214: 90 d6
loc_8216:
	*dcp $90,x               ; $8216: d7 90
	jmp $8921                ; $8218: 4c 21 89

; === Block $815d-$816a (Code) ===
entry_815d:
	*sre ($f6),y             ; $815d: 53 f6
loc_815f:
	*nop                     ; $815f: 7a
	*sre $5531               ; $8160: 4f 31 55
	*nop #$8b                ; $8163: 89 8b
	*rra $8f20,y             ; $8165: 7b 20 8f
	*lax ($ef),y             ; $8168: b3 ef

; === Block $8167-$8188 (Code) ===
entry_8167:
	*sax $efb3               ; $8167: 8f b3 ef
	rol                      ; $816a: 2a
	eor $95                  ; $816b: 45 95
	lda $ae                  ; $816d: a5 ae
	ldy $d44d                ; $816f: ac 4d d4
	ldx $7b39,y              ; $8172: be 39 7b
	beq $815f                ; $8175: f0 e8
loc_8177:
	*dcp $5f,x               ; $8177: d7 5f
	rol $9541,x              ; $8179: 3e 41 95
	cli                      ; $817c: 58
	tya                      ; $817d: 98
	*lax $95,y               ; $817e: b7 95
	*jam                     ; $8180: 22
	ora $95                  ; $8181: 05 95
	lda $ae                  ; $8183: a5 ae
	ldy $584c                ; $8185: ac 4c 58

; === Block $8179-$817f (Code) ===
loc_8179:
	*rla $4304,x             ; $8179: 3f 04 43
	*nop $1ed7,x             ; $817c: dc d7 1e

; === Block $8186-$8186 (Code) ===
entry_8186:
	jmp $3258                ; $8186: 4c 58 32 PPUCTRL

; === Block $8188-$81b5 (Code) ===
entry_8188:
	*jam                     ; $8188: 32
entry_8189:
	inc $3e61,x              ; $8189: fe 61 3e PPUMASK
	*nop #$dc                ; $818c: 82 dc
	*rla $9d,x               ; $818e: 37 9d
	*rra $8e                 ; $8190: 67 8e
	eor $62,x                ; $8192: 55 62
	*jam                     ; $8194: 62
	*dcp $9649,x             ; $8195: df 49 96
	lsr $96,x                ; $8198: 56 96
	tsx                      ; $819a: ba
	lda ($31),y              ; $819b: b1 31
	ror $2d,x                ; $819d: 76 2d
	eor $bd5f                ; $819f: 4d 5f bd
	*rra $32e9,y             ; $81a2: 7b e9 32 PPUMASK
	dex                      ; $81a5: ca
	*jam                     ; $81a6: d2
	*dcp $56,x               ; $81a7: d7 56
	rol $ea                  ; $81a9: 26 ea
	*sre $6e31,x             ; $81ab: 5f 31 6e
	asl $52,x                ; $81ae: 16 52
	*nop #$1e                ; $81b0: 80 1e
	ror                      ; $81b2: 6a
	ldx #$62                 ; $81b3: a2 62
	brk                      ; $81b5: 00

; === Block $8191-$8194 (Code) ===
entry_8191:
	stx $6255                ; $8191: 8e 55 62

; === Block $81a0-$81a5 (Code) ===
entry_81a0:
	*sre $7bbd,x             ; $81a0: 5f bd 7b
	sbc #$32                 ; $81a3: e9 32

; === Block $81ad-$81b0 (Code) ===
entry_81ad:
	ror $5216                ; $81ad: 6e 16 52

; === Block $81bc-$81d1 (Code) ===
entry_81bc:
	*anc #$f5                ; $81bc: 2b f5
	sta $68                  ; $81be: 85 68
	sta ($ed,x)              ; $81c0: 81 ed
	*nop $4c,x               ; $81c2: 54 4c
	eor $bed4                ; $81c4: 4d d4 be
	*jam                     ; $81c7: 62
	*nop $1c2d,x             ; $81c8: dc 2d 1c
	txs                      ; $81cb: 9a
	ora #$21                 ; $81cc: 09 21
	*isc $4c74               ; $81ce: ef 74 4c

; === Block $81ca-$81d1 (Code) ===
entry_81ca:
	*nop $099a,x             ; $81ca: 1c 9a 09
	and ($ef,x)              ; $81cd: 21 ef
	*nop $4c,x               ; $81cf: 74 4c
	jmp $8b5d                ; $81d1: 4c 5d 8b

; === Block $81ce-$81d2 (Code) ===
loc_81ce:
	adc $13,x                ; $81ce: 75 13
	ldy $f2                  ; $81d0: a4 f2

; === Block $81ec-$81ef (Code) ===
loc_81ec:
	dec $8743                ; $81ec: ce 43 87

; === Block $8204-$822d (Code) ===
entry_8204:
	sed                      ; $8204: f8
	*nop $65,x               ; $8205: 74 65
	eor ($c7,x)              ; $8207: 41 c7
	*isc ($ff),y             ; $8209: f3 ff
	*shx $f07c,y             ; $820b: 9e 7c f0
	inx                      ; $820e: e8
	*isc $1613               ; $820f: ef 13 16
	sta $b34f                ; $8212: 8d 4f b3
	nop                      ; $8215: ea
	*slo ($e9,x)             ; $8216: 03 e9
	*alr #$e9                ; $8218: 4b e9
	*sre ($3d,x)             ; $821a: 43 3d
	dec $bc                  ; $821c: c6 bc
	cpy #$55                 ; $821e: c0 55
	*nop $c4                 ; $8220: 44 c4
	cmp $90                  ; $8222: c5 90
	sed                      ; $8224: f8
	php                      ; $8225: 08
	*nop #$5b                ; $8226: 80 5b
	*sax $90                 ; $8228: 87 90
	*anc #$fa                ; $822a: 0b fa
	tay                      ; $822c: a8

; === Block $8211-$8216 (Code) ===
entry_8211:
	asl $8d,x                ; $8211: 16 8d
	*sre $eab3               ; $8213: 4f b3 ea

; === Block $821d-$8220 (Code) ===
loc_821d:
	ldy $55c0,x              ; $821d: bc c0 55

; === Block $821f-$8225 (Code) ===
entry_821f:
	eor $44,x                ; $821f: 55 44
	cpy $c5                  ; $8221: c4 c5
	bcc $821d                ; $8223: 90 f8

; === Block $822d-$834d (Code) ===
entry_822d:
	tya                      ; $822d: 98
	tya                      ; $822e: 98
	tsx                      ; $822f: ba
	ror $e50d,x              ; $8230: 7e 0d e5
	and $5d63,x              ; $8233: 3d 63 5d
	adc #$0c                 ; $8236: 69 0c
	*sre ($68),y             ; $8238: 53 68
	cmp ($cf),y              ; $823a: d1 cf
	*nop $319b               ; $823c: 0c 9b 31 OAMADDR
	*sre ($e4),y             ; $823f: 53 e4
	*nop $de,x               ; $8241: 74 de
	*sha $2358,y             ; $8243: 9f 58 23 PPUCTRL
	cpx $eff9                ; $8246: ec f9 ef
	*nop #$cb                ; $8249: c2 cb
	*lax ($52,x)             ; $824b: a3 52
	sbc ($cd,x)              ; $824d: e1 cd
entry_824f:
	and $3642,x              ; $824f: 3d 42 36 PPUSTATUS
	*nop #$44                ; $8252: 89 44
	ldx #$62                 ; $8254: a2 62
	*jam                     ; $8256: 62
	cmp $1f                  ; $8257: c5 1f
	dec $db,x                ; $8259: d6 db
	bmi $8262                ; $825b: 30 05
loc_825d:
	clv                      ; $825d: b8
	*rra $ee39               ; $825e: 6f 39 ee
	*rla ($4b),y             ; $8261: 33 4b
	*nop $9d                 ; $8263: 44 9d
	cli                      ; $8265: 58
	tya                      ; $8266: 98
	lda ($5e),y              ; $8267: b1 5e
	adc #$02                 ; $8269: 69 02
	cpy $8b5d                ; $826b: cc 5d 8b
	eor ($79),y              ; $826e: 51 79
	*rla $dc                 ; $8270: 27 dc
	*rla $9c,x               ; $8272: 37 9c
	*isc $19,x               ; $8274: f7 19
	lda $a2                  ; $8276: a5 a2
	lsr $26aa                ; $8278: 4e aa 26 PPUSTATUS
	rol $2c                  ; $827b: 26 2c
	*dcp $df26,x             ; $827d: df 26 df
	and $a5                  ; $8280: 25 a5
	*rla $0ca5               ; $8282: 2f a5 0c
	*isc $19,x               ; $8285: f7 19
	lda $a2                  ; $8287: a5 a2
	lsr $4cac                ; $8289: 4e ac 4c
	*sre $addf,y             ; $828c: 5b df ad
entry_828f:
	ora $a5                  ; $828f: 05 a5
	*rla $bb98               ; $8291: 2f 98 bb
	asl $a2,x                ; $8294: 16 a2
	*jam                     ; $8296: f2
	*sre $fc90               ; $8297: 4f 90 fc
	*dcp $e39e,y             ; $829a: db 9e e3
	*nop $b4,x               ; $829d: 34 b4
	eor #$f7                 ; $829f: 49 f7
	*nop $c4                 ; $82a1: 44 c4
	cmp $af                  ; $82a3: c5 af
	bmi $829b                ; $82a5: 30 f4
loc_82a7:
	*lax ($dc),y             ; $82a7: b3 dc
entry_82a9:
	ror $e1                  ; $82a9: 66 e1
	lsr $26,x                ; $82ab: 56 26
	and $d2c2                ; $82ad: 2d c2 d2
	*nop                     ; $82b0: 7a
	sty $af                  ; $82b1: 84 af
entry_82b3:
	sbc $13ab,x              ; $82b3: fd ab 13
	asl $8e,x                ; $82b6: 16 8e
	adc $9e05                ; $82b8: 6d 05 9e
	adc $c4,x                ; $82bb: 75 c4
	*nop $89d5,x             ; $82bd: 3c d5 89
	*xaa #$46                ; $82c0: 8b 46
	bcs $8245                ; $82c2: b0 81
loc_82c4:
	*nop $27                 ; $82c4: 64 27
	*isc $86e3,y             ; $82c6: fb e3 86
	sty $fe                  ; $82c9: 84 fe
	and ($68),y              ; $82cb: 31 68
	*rla $2a,x               ; $82cd: 37 2a
	lda ($37),y              ; $82cf: b1 37
	*jam                     ; $82d1: 52
	sed                      ; $82d2: f8
	*isc $5c                 ; $82d3: e7 5c
	*sre ($ce,x)             ; $82d5: 43 ce
	*sre $94ff,x             ; $82d7: 5f ff 94
	sta ($55,x)              ; $82da: 81 55
	*nop #$8b                ; $82dc: 89 8b
	bvs $8292                ; $82de: 70 b2
entry_82e0:
	sta ($02),y              ; $82e0: 91 02
	rol $191d                ; $82e2: 2e 1d 19
	inc $7131                ; $82e5: ee 31 71
	*jam                     ; $82e8: d2
	*lax $3ec9               ; $82e9: af c9 3e PPUMASK
entry_82ec:
	sbc ($31),y              ; $82ec: f1 31
	ror $4216                ; $82ee: 6e 16 42
entry_82f1:
	ora #$27                 ; $82f1: 09 27
	*slo $f71e,x             ; $82f3: 1f 1e f7
	*nop #$8b                ; $82f6: 89 8b
	bvs $82af                ; $82f8: 70 b5
loc_82fa:
	sty $f2,x                ; $82fa: 94 f2
	asl $e8f0,x              ; $82fc: 1e f0 e8
	cmp #$f3                 ; $82ff: c9 f3
	ldy $43cb,x              ; $8301: bc cb 43
	sbc $62e2,x              ; $8304: fd e2 62
	dec $c1ac                ; $8307: ce ac c1
	adc $de                  ; $830a: 65 de
	sta ($e7,x)              ; $830c: 81 e7
entry_830e:
	eor $57f8,y              ; $830e: 59 f8 57
	lda $9858,x              ; $8311: bd 58 98
	lda $a3,x                ; $8314: b5 a3
	dec $b83a,x              ; $8316: de 3a b8
	bit $805c                ; $8319: 2c 5c 80
	*rla $85,x               ; $831c: 37 85
	adc $28d1,x              ; $831e: 7d d1 28 PPUMASK
	tya                      ; $8321: 98
	tya                      ; $8322: 98
	*las $6a16,y             ; $8323: bb 16 6a
	*jam                     ; $8326: 52
	ror $b896,x              ; $8327: 7e 96 b8
	cli                      ; $832a: 58
	*rra $9eaf               ; $832b: 6f af 9e
	*rra $ea0a,y             ; $832e: 7b 0a ea
	ldx #$62                 ; $8331: a2 62
	*jam                     ; $8333: 62
	cpx $3258                ; $8334: ec 58 32 PPUCTRL
	inc $087e,x              ; $8337: fe 7e 08
	lda $a327,y              ; $833a: b9 27 a3
	tsx                      ; $833d: ba
	sta $aa00,x              ; $833e: 9d 00 aa
	ldx #$62                 ; $8341: a2 62
	*jam                     ; $8343: 62
	*nop $07,x               ; $8344: d4 07
entry_8346:
	bit $fc43                ; $8346: 2c 43 fc
	sty $95,x                ; $8349: 94 95
	*nop $4c,x               ; $834b: 54 4c
entry_834d:
	jmp $135a                ; $834d: 4c 5a 13

; === Block $8231-$8236 (Code) ===
entry_8231:
	ora $3de5                ; $8231: 0d e5 3d PPUSCROLL
	*rra ($5d,x)             ; $8234: 63 5d

; === Block $8245-$824d (Code) ===
loc_8245:
	*rla ($ec,x)             ; $8245: 23 ec
	sbc $c2ef,y              ; $8247: f9 ef c2
	*axs #$a3                ; $824a: cb a3
	*jam                     ; $824c: 52

; === Block $825a-$825d (Code) ===
entry_825a:
	*dcp $0530,y             ; $825a: db 30 05

; === Block $825a-$82c1 (Code) ===
loc_825a:
	*sre ($60),y             ; $825a: 53 60
	*nop $86,x               ; $825c: 14 86
	*sax $09                 ; $825e: 87 09
	cmp ($e7,x)              ; $8260: c1 e7
	sta $7a6d,x              ; $8262: 9d 6d 7a
	asl                      ; $8265: 0a
	*sre $9f9a               ; $8266: 4f 9a 9f
	*nop                     ; $8269: fa
	eor $180c,x              ; $826a: 5d 0c 18
	*nop                     ; $826d: fa
	eor #$25                 ; $826e: 49 25
	sbc #$f8                 ; $8270: e9 f8
	*nop $9c,x               ; $8272: 54 9c
	ldy $3a                  ; $8274: a4 3a
	*nop $29c0,x             ; $8276: 3c c0 29 PPUCTRL
	asl $398a                ; $8279: 0e 8a 39 PPUSTATUS
	pha                      ; $827c: 48
	*nop $f9                 ; $827d: 64 f9
	cmp $ca,x                ; $827f: d5 ca
	*rra $c9a6,x             ; $8281: 7f a6 c9
	*jam                     ; $8284: 02
	rol $e549                ; $8285: 2e 49 e5
	*rla $7374,x             ; $8288: 3f 74 73
	pla                      ; $828b: 68
	cmp $ef71                ; $828c: cd 71 ef
	lda $1d1d                ; $828f: ad 1d 1d
	sbc #$8a                 ; $8292: e9 8a
	*lax $ab,y               ; $8294: b7 ab
	eor ($13),y              ; $8296: 51 13
	plp                      ; $8298: 28
	*sre $f9                 ; $8299: 47 f9
	and $fc                  ; $829b: 25 fc
	*nop $fc,x               ; $829d: f4 fc
	*nop                     ; $829f: 3a
	lsr $928e                ; $82a0: 4e 8e 92
	eor #$6a                 ; $82a3: 49 6a
	*nop $31,x               ; $82a5: d4 31
	*jam                     ; $82a7: b2
	sty $7f                  ; $82a8: 84 7f
	*jam                     ; $82aa: 92
	*sre $4fcf,x             ; $82ab: 5f cf 4f
	*dcp ($a3,x)             ; $82ae: c3 a3
	*lax ($a2,x)             ; $82b0: a3 a2
	lda ($8d,x)              ; $82b2: a1 8d
	sty $23,x                ; $82b4: 94 23
	*nop $fe92,x             ; $82b6: fc 92 fe
	*nop                     ; $82b9: 7a
	ror $371e,x              ; $82ba: 7e 1e 37 PPUADDR
	*jam                     ; $82bd: 92
	*nop                     ; $82be: 1a
	sbc #$b5                 ; $82bf: e9 b5
	jmp $ebaa                ; $82c1: 4c aa eb

; === Block $8262-$8267 (Code) ===
loc_8262:
	*alr #$44                ; $8262: 4b 44
	sta $9858,x              ; $8264: 9d 58 98

; === Block $8268-$826b (Code) ===
entry_8268:
	lsr $0269,x              ; $8268: 5e 69 02

; === Block $8292-$8296 (Code) ===
loc_8292:
	tya                      ; $8292: 98
	*las $a216,y             ; $8293: bb 16 a2

; === Block $829b-$82a0 (Code) ===
loc_829b:
	*shx $34e3,y             ; $829b: 9e e3 34 OAMADDR
	ldy $49,x                ; $829e: b4 49

; === Block $82a0-$82a7 (Code) ===
entry_82a0:
	*isc $44,x               ; $82a0: f7 44
	cpy $c5                  ; $82a2: c4 c5
	*lax $f430               ; $82a4: af 30 f4

; === Block $82af-$82b0 (Code) ===
loc_82af:
	*jam                     ; $82af: d2

; === Block $82d9-$82e0 (Code) ===
entry_82d9:
	sty $81,x                ; $82d9: 94 81
	eor $89,x                ; $82db: 55 89
	*xaa #$70                ; $82dd: 8b 70
	*jam                     ; $82df: b2

; === Block $8303-$8307 (Code) ===
entry_8303:
	*sre ($fd,x)             ; $8303: 43 fd
	*nop #$62                ; $8305: e2 62

; === Block $8330-$8331 (Code) ===
entry_8330:
	nop                      ; $8330: ea

; === Block $834c-$834c (Code) ===
entry_834c:
	jmp $5a4c                ; $834c: 4c 4c 5a

; === Block $8352-$8358 (Code) ===
entry_8352:
	*nop $6b,x               ; $8352: 14 6b
	sbc ($ed),y              ; $8354: f1 ed
	*nop $4c,x               ; $8356: 54 4c
	jmp $2459                ; $8358: 4c 59 24 PPUMASK

; === Block $8357-$8357 (Code) ===
entry_8357:
	jmp $594c                ; $8357: 4c 4c 59

; === Block $835b-$8360 (Code) ===
entry_835b:
	*anc #$27                ; $835b: 0b 27
	dec $96e3                ; $835d: ce e3 96

; === Block $8360-$837a (Code) ===
entry_8360:
	*nop #$93                ; $8360: 82 93
	sbc #$49                 ; $8362: e9 49
	dec $34                  ; $8364: c6 34
	lda ($bc,x)              ; $8366: a1 bc
	*axs #$43                ; $8368: cb 43
	sbc $51,x                ; $836a: f5 51
	and ($55),y              ; $836c: 31 55
	*lax $de                 ; $836e: a7 de
	*rla $19,x               ; $8370: 37 19
	dey                      ; $8372: 88
	tsx                      ; $8373: ba
	ora ($31),y              ; $8374: 11 31
entry_8376:
	and ($6f),y              ; $8376: 31 6f
	*nop $e3,x               ; $8378: 54 e3

; === Block $8363-$836a (Code) ===
entry_8363:
	eor #$c6                 ; $8363: 49 c6
	*nop $a1,x               ; $8365: 34 a1
	ldy $43cb,x              ; $8367: bc cb 43

; === Block $8377-$8383 (Code) ===
entry_8377:
	*rra $e354               ; $8377: 6f 54 e3
	ora $97                  ; $837a: 05 97
	*slo ($fd),y             ; $837c: 13 fd
	lsr $bd81                ; $837e: 4e 81 bd
	*sre ($8c),y             ; $8381: 53 8c

; === Block $837d-$83a6 (Code) ===
entry_837d:
	sbc $814e,x              ; $837d: fd 4e 81
	lda $8c53,x              ; $8380: bd 53 8c
entry_8383:
	eor $89,x                ; $8383: 55 89
	*xaa #$b1                ; $8385: 8b b1
	ror $4d                  ; $8387: 66 4d
	*rla $70,x               ; $8389: 37 70
	ldy $25,x                ; $838b: b4 25
	lda ($f1,x)              ; $838d: a1 f1
	inc $5eb3                ; $838f: ee b3 5e
	adc $9b                  ; $8392: 65 9b
entry_8394:
	cpy $ddf0                ; $8394: cc f0 dd
	*nop                     ; $8397: 1a
	cmp $89,x                ; $8398: d5 89
	stx $fc,y                ; $839a: 96 fc
	*nop $47                 ; $839c: 04 47
	asl $d28c                ; $839e: 0e 8c d2
	*jam                     ; $83a1: d2
	ora $8a                  ; $83a2: 05 8a
	*isc ($2f),y             ; $83a4: f3 2f

; === Block $8382-$8385 (Code) ===
entry_8382:
	sty $8955                ; $8382: 8c 55 89

; === Block $8480-$8492 (Code) ===
entry_8480:
	asl $f2                  ; $8480: 06 f2
	*nop $d53f               ; $8482: 0c 3f d5
	cmp ($66,x)              ; $8485: c1 66
	rol $a9c5                ; $8487: 2e c5 a9
	adc ($d6),y              ; $848a: 71 d6
	clc                      ; $848c: 18
	ldy $d5cb,x              ; $848d: bc cb d5
	*nop $c5                 ; $8490: 44 c5
	jmp $afd7                ; $8492: 4c d7 af

; === Block $8488-$848a (Code) ===
entry_8488:
	cmp $a9                  ; $8488: c5 a9

; === Block $84ad-$84ea (Code) ===
entry_84ad:
	cpy $4a1f                ; $84ad: cc 1f 4a
	*nop                     ; $84b0: 1a
	*nop $eea2,x             ; $84b1: 1c a2 ee
	*nop $313a,x             ; $84b4: 7c 3a 31 PPUSTATUS
	lsr $cb65,x              ; $84b7: 5e 65 cb
	lsr                      ; $84ba: 4a
	*sre $f921,x             ; $84bb: 5f 21 f9
	*lax $3d,y               ; $84be: b7 3d
	dec $27                  ; $84c0: c6 27
	*nop $10,x               ; $84c2: 54 10
	tax                      ; $84c4: aa
	*nop #$89                ; $84c5: 89 89
	stx $f3,y                ; $84c7: 96 f3
	*nop #$ca                ; $84c9: e2 ca
	*nop #$05                ; $84cb: c2 05
	tay                      ; $84cd: a8
	eor #$5f                 ; $84ce: 49 5f
	lsr                      ; $84d0: 4a
	*sre $f921,x             ; $84d1: 5f 21 f9
	*lax $3d,y               ; $84d4: b7 3d
	dec $27                  ; $84d6: c6 27
	*nop $10,x               ; $84d8: 54 10
	tax                      ; $84da: aa
	*nop #$89                ; $84db: 89 89
	bcc $851e                ; $84dd: 90 3f
loc_84df:
	cmp ($ad,x)              ; $84df: c1 ad
	sbc ($39,x)              ; $84e1: e1 39
	*jam                     ; $84e3: 62
	*sre $29ff               ; $84e4: 4f ff 29 PPUDATA
	*rla $dc73,x             ; $84e7: 3f 73 dc
	rts                      ; $84ea: 60

; === Block $84de-$84e1 (Code) ===
entry_84de:
	*rla $adc1,x             ; $84de: 3f c1 ad

; === Block $8519-$8533 (Code) ===
entry_8519:
	*rla $85                 ; $8519: 27 85
	*nop                     ; $851b: 7a
	*sax $9dca               ; $851c: 8f ca 9d
	*nop $4c,x               ; $851f: 54 4c
	eor $70d8                ; $8521: 4d d8 70
	sbc $d1e1,x              ; $8524: fd e1 d1
	lda ($ca,x)              ; $8527: a1 ca
	rol $8ae5                ; $8529: 2e e5 8a
	*nop $9331,x             ; $852c: fc 31 93
	inc $4f                  ; $852f: e6 4f
	and ($77),y              ; $8531: 31 77

; === Block $851e-$8521 (Code) ===
loc_851e:
	sta $4c54,x              ; $851e: 9d 54 4c

; === Block $852e-$8614 (Code) ===
entry_852e:
	*sha ($e6),y             ; $852e: 93 e6
	*sre $7731               ; $8530: 4f 31 77
	*nop $c4                 ; $8533: 44 c4
	cmp $ac                  ; $8535: c5 ac
	dey                      ; $8537: 88
	inc $d0                  ; $8538: e6 d0
	*nop                     ; $853a: 5a
	cmp $d1f8,y              ; $853b: d9 f8 d1
	cmp #$a0                 ; $853e: c9 a0
entry_8540:
	*jam                     ; $8540: 92
	asl $89d5,x              ; $8541: 1e d5 89
	tsx                      ; $8544: ba
	*sax $cf,y               ; $8545: 97 cf
	adc ($8b),y              ; $8547: 71 8b
	stx $7e95                ; $8549: 8e 95 7e
	eor #$eb                 ; $854c: 49 eb
	lda #$1f                 ; $854e: a9 1f
	*rra $d1                 ; $8550: 67 d1
	cmp $814e,x              ; $8552: dd 4e 81
entry_8555:
	inc $cb57                ; $8555: ee 57 cb
	php                      ; $8558: 08
	eor $89,x                ; $8559: 55 89
	*xaa #$7b                ; $855b: 8b 7b
	jsr $b38f                ; $855d: 20 8f b3
loc_8560:
	*isc $5c8a               ; $8560: ef 8a 5c
	ldy $2a                  ; $8563: a4 2a
	cpy $c5                  ; $8565: c4 c5
	lda $689f,x              ; $8567: bd 9f 68
	ora $9e                  ; $856a: 05 9e
	*isc ($59,x)             ; $856c: e3 59
	sed                      ; $856e: f8
	*sre $bd,x               ; $856f: 57 bd
	cli                      ; $8571: 58
	*tas $7da9,y             ; $8572: 9b a9 7d
	sbc $30                  ; $8575: e5 30
	*nop #$f7                ; $8577: 80 f7
	eor $d958,y              ; $8579: 59 58 d9
	*sbc #$35                ; $857c: eb 35
	sbc $c4                  ; $857e: e5 c4
	*isc $a053,x             ; $8580: ff 53 a0
	*nop $27                 ; $8583: 64 27
	sbc ($8a),y              ; $8585: f1 8a
	tay                      ; $8587: a8
	tya                      ; $8588: 98
	lda #$9a                 ; $8589: a9 9a
entry_858b:
	cpy $8838                ; $858b: cc 38 88
	*nop $2f                 ; $858e: 44 2f
	sbc $95df,x              ; $8590: fd df 95
	sbc $4b69,y              ; $8593: f9 69 4b
	sbc #$43                 ; $8596: e9 43
entry_8598:
	and $26c6,x              ; $8598: 3d c6 26 PPUADDR
	*lax $fe                 ; $859b: a7 fe
entry_859d:
	cmp $8a,x                ; $859d: d5 8a
entry_859f:
	sta $c1ac,y              ; $859f: 99 ac c1
	eor ($03),y              ; $85a2: 51 03
	*slo ($fc),y             ; $85a4: 13 fc
	and $a5a5                ; $85a6: 2d a5 a5
	*rla $0ca5               ; $85a9: 2f a5 0c
	*isc $18,x               ; $85ac: f7 18
	txs                      ; $85ae: 9a
	*sha $56fb,y             ; $85af: 9f fb 56
	rol $4d                  ; $85b2: 26 4d
	*nop $e3                 ; $85b4: 64 e3
	*nop $9694,x             ; $85b6: fc 94 96
	and #$49                 ; $85b9: 29 49
	*nop                     ; $85bb: fa
	*sre $90e2,y             ; $85bc: 5b e2 90
	sbc $f591,x              ; $85bf: fd 91 f5
	adc ($56),y              ; $85c2: 71 56
	rol $fdbb                ; $85c4: 2e bb fd
	lsr $8a81                ; $85c7: 4e 81 8a
	cmp ($08),y              ; $85ca: d1 08
	asl $43,x                ; $85cc: 16 43
	bcc $8556                ; $85ce: 90 86
loc_85d0:
	*rra $bf8c,y             ; $85d0: 7b 8c bf
	*anc #$56                ; $85d3: 0b 56
	jsr $8963                ; $85d5: 20 63 89
loc_85d8:
	*xaa #$7b                ; $85d8: 8b 7b
entry_85da:
	*dcp $b34f               ; $85da: cf 4f b3
	nop                      ; $85dd: ea
	*slo ($ee,x)             ; $85de: 03 ee
	and $9858,x              ; $85e0: 3d 58 98
	bcs $8567                ; $85e3: b0 82
loc_85e5:
	adc $8f05,x              ; $85e5: 7d 05 8f
	stx $d9,y                ; $85e8: 96 d9
	sta $75                  ; $85ea: 85 75
	*jam                     ; $85ec: 62
	*jam                     ; $85ed: 62
	cmp $1f29                ; $85ee: cd 29 1f
	*rra $cd                 ; $85f1: 67 cd
	*anc #$c7                ; $85f3: 2b c7
	ror $151d,x              ; $85f5: 7e 1d 15
	*jam                     ; $85f8: 62
	*jam                     ; $85f9: 62
	cmp $6df2                ; $85fa: cd f2 6d
entry_85fd:
	*jam                     ; $85fd: f2
	*nop                     ; $85fe: 5a
	dex                      ; $85ff: ca
	dec $ce                  ; $8600: c6 ce
	ldy $d44d                ; $8602: ac 4d d4
	ldx $66e1,y              ; $8605: be e1 66
	sbc $f936,y              ; $8608: f9 36 f9
	asl $a4e9,x              ; $860b: 1e e9 a4
	*rla $2656,x             ; $860e: 3f 56 26 PPUADDR
	bit $9a57                ; $8611: 2c 57 9a
	rti                      ; $8614: 40

; === Block $8556-$8558 (Code) ===
loc_8556:
	*sre $cb,x               ; $8556: 57 cb

; === Block $857f-$8583 (Code) ===
entry_857f:
	cpy $ff                  ; $857f: c4 ff
	*sre ($a0),y             ; $8581: 53 a0

; === Block $8586-$8587 (Code) ===
entry_8586:
	txa                      ; $8586: 8a

; === Block $8592-$8596 (Code) ===
entry_8592:
	sta $f9,x                ; $8592: 95 f9
	adc #$4b                 ; $8594: 69 4b

; === Block $85b8-$85ba (Code) ===
entry_85b8:
	stx $29,y                ; $85b8: 96 29

; === Block $85ba-$85bc (Code) ===
entry_85ba:
	eor #$fa                 ; $85ba: 49 fa

; === Block $85d7-$85de (Code) ===
entry_85d7:
	*nop #$8b                ; $85d7: 89 8b
	*rra $4fcf,y             ; $85d9: 7b cf 4f
loc_85dc:
	*lax ($ea),y             ; $85dc: b3 ea

; === Block $85e9-$85ec (Code) ===
entry_85e9:
	cmp $7585,y              ; $85e9: d9 85 75

; === Block $8616-$863b (Code) ===
entry_8616:
	asl $e1,x                ; $8616: 16 e1
	ldy $b8e7,x              ; $8618: bc e7 b8
	cmp $122d                ; $861b: cd 2d 12
	adc $62,x                ; $861e: 75 62
	*jam                     ; $8620: 62
	dec $68fd,x              ; $8621: de fd 68
	and $7c29                ; $8624: 2d 29 7c
	cmp $90                  ; $8627: c5 90
	*nop $9edb,x             ; $8629: fc db 9e
	*isc ($34,x)             ; $862c: e3 34
	ldy $49,x                ; $862e: b4 49
	cmp $89,x                ; $8630: d5 89
	*xaa #$59                ; $8632: 8b 59
	eor $4bbe                ; $8634: 4d be 4b
	bvs $8617                ; $8637: 70 de
loc_8639:
	*rra ($dc),y             ; $8639: 73 dc

; === Block $8617-$861b (Code) ===
loc_8617:
	sbc ($bc,x)              ; $8617: e1 bc
	*isc $b8                 ; $8619: e7 b8

; === Block $863b-$8666 (Code) ===
entry_863b:
	pla                      ; $863b: 68
	*dcp $21                 ; $863c: c7 21
	*dcp ($a2,x)             ; $863e: c3 a2
	ldy $5d4c                ; $8640: ac 4c 5d
	*xaa #$53                ; $8643: 8b 53
	*sre $ef,x               ; $8645: 57 ef
	lsr $9bb2,x              ; $8647: 5e b2 9b
	*nop $e196,x             ; $864a: 7c 96 e1
	ldy $b8e7,x              ; $864d: bc e7 b8
	cmp ($8e),y              ; $8650: d1 8e
	*sre ($87,x)             ; $8652: 43 87
	eor $58                  ; $8654: 45 58
	lda #$90                 ; $8656: a9 90
	asl $bb                  ; $8658: 06 bb
	bne $85dc                ; $865a: d0 80
loc_865c:
	*sre $1e,x               ; $865c: 57 1e
	inc $2a                  ; $865e: e6 2a
	lda ($31),y              ; $8660: b1 31
	ror $94                  ; $8662: 66 94
	*lax $a1,y               ; $8664: b7 a1
	brk                      ; $8666: 00

; === Block $8642-$8645 (Code) ===
entry_8642:
	eor $538b,x              ; $8642: 5d 8b 53

; === Block $8668-$86af (Code) ===
entry_8668:
	and $13ef,x              ; $8668: 3d ef 13
	asl $e1,x                ; $866b: 16 e1
	*arr #$3f                ; $866d: 6b 3f
	sty $d1,x                ; $866f: 94 d1
	*rra $de,x               ; $8671: 77 de
	*axs #$47                ; $8673: cb 47
	lsr $26,x                ; $8675: 56 26
	nop                      ; $8677: ea
	*sre $6e31,x             ; $8678: 5f 31 6e
	asl $e1,x                ; $867b: 16 e1
	*isc $b8                 ; $867d: e7 b8
entry_867f:
	cmp $122d                ; $867f: cd 2d 12
	adc $62,x                ; $8682: 75 62
	ror $f3a5                ; $8684: 6e a5 f3
	asl $e1,x                ; $8687: 16 e1
	*slo $cb67,x             ; $8689: 1f 67 cb
	asl $1552                ; $868c: 0e 52 15
	*jam                     ; $868f: 62
	sbc ($b8),y              ; $8690: f1 b8
	sed                      ; $8692: f8
	cpx $e758                ; $8693: ec 58 e7
	eor #$8d                 ; $8696: 49 8d
	*dcp ($cf,x)             ; $8698: c3 cf
	adc ($9a),y              ; $869a: 71 9a
	*nop                     ; $869c: 5a
	bit $ea                  ; $869d: 24 ea
	cpy $c5                  ; $869f: c4 c5
	*nop #$d7                ; $86a1: 89 d7
	inc $e15b                ; $86a3: ee 5b e1
	adc $d1e1,x              ; $86a6: 7d e1 d1
	ldy $f257,x              ; $86a9: bc 57 f2
	sbc $bfbc,y              ; $86ac: f9 bc bf

; === Block $86af-$8718 (Code) ===
entry_86af:
	*nop $aa,x               ; $86af: f4 aa
	cpy $dd                  ; $86b1: c4 dd
	*alr #$e6                ; $86b3: 4b e6
	and $9f1a                ; $86b5: 2d 1a 9f
	*rra $df                 ; $86b8: 67 df
	*anc #$ee                ; $86ba: 0b ee
	sbc ($5f),y              ; $86bc: f1 5f
	*axs #$e6                ; $86be: cb e6
	*jam                     ; $86c0: f2
	*isc $abd2,x             ; $86c1: ff d2 ab
	*slo ($29),y             ; $86c4: 13 29
	ror $dfbb,x              ; $86c6: 7e bb df
	*lax #$45                ; $86c9: ab 45
	*shx $37e3,y             ; $86cb: 9e e3 37 OAMADDR
	*sax $fe,y               ; $86ce: 97 fe
	sbc #$43                 ; $86d0: e9 43
	*nop $ba,x               ; $86d2: 54 ba
	ldy $375e                ; $86d4: ac 5e 37 PPUADDR
	*nop                     ; $86d7: 1a
	cpy $7e38                ; $86d8: cc 38 7e
	beq $86c5                ; $86db: f0 e8
loc_86dd:
	bne $86c4                ; $86dd: d0 e5
loc_86df:
	*slo $72,x               ; $86df: 17 72
	*jam                     ; $86e1: d2
	stx $46                  ; $86e2: 86 46
entry_86e4:
	*nop #$49                ; $86e4: 82 49
	sbc $c518,y              ; $86e6: f9 18 c5
	ror $c918,x              ; $86e9: 7e 18 c9
	*isc ($27),y             ; $86ec: f3 27
	*shx $03e3,y             ; $86ee: 9e e3 03
	asl $d7,x                ; $86f1: 16 d7
	lsr $26,x                ; $86f3: 56 26
	rol $adc5                ; $86f5: 2e c5 ad
	*sha $06ac,y             ; $86f8: 9f ac 06
	sbc ($6b,x)              ; $86fb: e1 6b
	*rla ($24),y             ; $86fd: 33 24
	*isc ($da,x)             ; $86ff: e3 da
	lda ($32),y              ; $8701: b1 32
	and #$72                 ; $8703: 29 72
	*nop                     ; $8705: 1a
	dec $9613,x              ; $8706: de 13 96
	*isc ($29),y             ; $8709: f3 29
	inc $f343,x              ; $870b: fe 43 f3
	ror $8c7b                ; $870e: 6e 7b 8c
	dec $fb5f,x              ; $8711: de 5f fb
	sty $fd,x                ; $8714: 94 fd
	cpy #$e8                 ; $8716: c0 e8
	jmp $cf10                ; $8718: 4c 10 cf

; === Block $86c5-$86ce (Code) ===
loc_86c5:
	and #$7e                 ; $86c5: 29 7e
	*las $abdf,y             ; $86c7: bb df ab
	eor $9e                  ; $86ca: 45 9e
	*isc ($37,x)             ; $86cc: e3 37

; === Block $86f0-$86f8 (Code) ===
entry_86f0:
	*slo ($16,x)             ; $86f0: 03 16
	*dcp $56,x               ; $86f2: d7 56
	rol $2e                  ; $86f4: 26 2e
entry_86f6:
	cmp $ad                  ; $86f6: c5 ad

; === Block $86fe-$8701 (Code) ===
entry_86fe:
	bit $e3                  ; $86fe: 24 e3
	*nop                     ; $8700: da

; === Block $871b-$87c4 (Code) ===
entry_871b:
	adc ($97),y              ; $871b: 71 97
	sbc ($6a,x)              ; $871d: e1 6a
	cmp $52                  ; $871f: c5 52
	*sre ($8e,x)             ; $8721: 43 8e
	*isc ($fc,x)             ; $8723: e3 fc
	*nop                     ; $8725: 3a
	*rla $8d,x               ; $8726: 37 8d
	*isc $f9                 ; $8728: e7 f9
	eor $36d6,x              ; $872a: 5d d6 36 PPUADDR
	adc $99                  ; $872d: 65 99
	*alr #$f5                ; $872f: 4b f5
	cpx $8f5a                ; $8731: ec 5a 8f
	dex                      ; $8734: ca
	*nop $89d5,x             ; $8735: 7c d5 89
	*xaa #$7b                ; $8738: 8b 7b
	sbc $68,x                ; $873a: f5 68
entry_873c:
	*lax ($dc),y             ; $873c: b3 dc
	ror $f2                  ; $873e: 66 f2
	*isc $28dd,x             ; $8740: ff dd 28 PPUSCROLL
	ror                      ; $8743: 6a
	pla                      ; $8744: 68
	*nop                     ; $8745: fa
	*jam                     ; $8746: 02
	*rla $e4,x               ; $8747: 37 e4
	sta $bc58,x              ; $8749: 9d 58 bc
	ror $b335                ; $874c: 6e 35 b3
	*rla $0e                 ; $874f: 27 0e
	eor ($77),y              ; $8751: 51 77
	*nop $1384,x             ; $8753: dc 84 13
	*rra $5c0d               ; $8756: 6f 0d 5c
entry_8759:
	asl $7b,x                ; $8759: 16 7b
loc_875b:
	sty $5b0c                ; $875b: 8c 0c 5b
	eor $bc58,x              ; $875e: 5d 58 bc
	ror $2431                ; $8761: 6e 31 24 PPUMASK
	sbc ($ca,x)              ; $8764: e1 ca
	rol $aff8                ; $8766: 2e f8 af
	*dcp ($05,x)             ; $8769: c3 05
	*sha ($e6),y             ; $876b: 93 e6
	*sre $c63d               ; $876d: 4f 3d c6
	cli                      ; $8770: 58
	*sre ($80,x)             ; $8771: 43 80
	tax                      ; $8773: aa
	cmp $4c                  ; $8774: c5 4c
	dec $61,x                ; $8776: d6 61
	*rla ($eb),y             ; $8778: 33 eb
	adc ($d0),y              ; $877a: 71 d0
	sed                      ; $877c: f8
	php                      ; $877d: 08
	stx $1a1d                ; $877e: 8e 1d 1a
	*rla $10f2,y             ; $8781: 3b f2 10
	dex                      ; $8784: ca
	inc $b3b1                ; $8785: ee b1 b3
	bit $5fca                ; $8788: 2c ca 5f
	lda $bc58                ; $878b: ad 58 bc
	ror $bc35                ; $878e: 6e 35 bc
	*isc $fbe7,x             ; $8791: ff e7 fb
	sbc ($08,x)              ; $8794: e1 08
	php                      ; $8796: 08
	*nop $dcb3,x             ; $8797: dc b3 dc
	ror $b45a                ; $879a: 6e 5a b4
	ora $6528                ; $879d: 0d 28 65
	and $c9cf,x              ; $87a0: 3d cf c9
	inx                      ; $87a3: e8
	inc $6793                ; $87a4: ee 93 67
	lsr $2f,x                ; $87a7: 56 2f
	ora $3da0,y              ; $87a9: 19 a0 3d PPUCTRL
	*dcp $db                 ; $87ac: c7 db
	and ($76),y              ; $87ae: 31 76
	and $5f4d                ; $87b0: 2d 4d 5f
	lda $9d78,x              ; $87b3: bd 78 9d
	ror $97e5,x              ; $87b6: 7e e5 97
	adc $e168,x              ; $87b9: 7d 68 e1
	cmp ($ac),y              ; $87bc: d1 ac
	cmp ($51,x)              ; $87be: c1 51
	*jam                     ; $87c0: 02
	ldy $335e                ; $87c1: ac 5e 33 PPUADDR
	rti                      ; $87c4: 40

; === Block $8798-$879a (Code) ===
entry_8798:
	*lax ($dc),y             ; $8798: b3 dc

; === Block $87bb-$87c0 (Code) ===
loc_87bb:
	sbc ($d1,x)              ; $87bb: e1 d1
	ldy $51c1                ; $87bd: ac c1 51

; === Block $87c6-$87c9 (Code) ===
loc_87c6:
	*sax $62b6               ; $87c6: 8f b6 62

; === Block $87c7-$87d1 (Code) ===
entry_87c7:
	ldx $62,y                ; $87c7: b6 62
	cpx $9a5a                ; $87c9: ec 5a 9a
	*lax $f17a,y             ; $87cc: bf 7a f1
	rol $db                  ; $87cf: 26 db

; === Block $87d1-$87fe (Code) ===
entry_87d1:
	*nop $cb                 ; $87d1: 64 cb
	*sre $3859,y             ; $87d3: 5b 59 38 PPUMASK
	*isc $2525,x             ; $87d6: ff 25 25 PPUSCROLL
	lda $39e1                ; $87d9: ad e1 39 PPUMASK
	eor $8b,x                ; $87dc: 55 8b
	*dcp ($ad,x)             ; $87de: c3 ad
	*las $d668,y             ; $87e0: bb 68 d6
	bpl $87c6                ; $87e3: 10 e1
loc_87e5:
	cmp ($b8),y              ; $87e5: d1 b8
	*nop                     ; $87e7: fa
	lda $27                  ; $87e8: a5 27
	stx $fa54                ; $87ea: 8e 54 fa
	*lax $29                 ; $87ed: a7 29
	dec $f6c9,x              ; $87ef: de c9 f6
	adc $0f6f,x              ; $87f2: 7d 6f 0f
	cmp $2e09,x              ; $87f5: dd 09 2e PPUMASK
	ora $b91a,x              ; $87f8: 1d 1a b9
	*sre $4bf3               ; $87fb: 4f f3 4b
	rti                      ; $87fe: 40

; === Block $8803-$88a6 (Code) ===
entry_8803:
	asl $e137,x              ; $8803: 1e 37 e1
	*arr #$2a                ; $8806: 6b 2a
	*isc $b801               ; $8808: ef 01 b8
	eor $edc7,y              ; $880b: 59 c7 ed
	sbc ($ab,x)              ; $880e: e1 ab
	*sax $4458               ; $8810: 8f 58 44
	beq $87bb                ; $8813: f0 a6
loc_8815:
	cpy #$29                 ; $8815: c0 29
	*nop $be0d               ; $8817: 0c 0d be
	txs                      ; $881a: 9a
	*isc ($dc),y             ; $881b: f3 dc
	*rra ($0c,x)             ; $881d: 63 0c
	*las $2aeb,y             ; $881f: bb eb 2a OAMADDR
	*isc $c200               ; $8822: ef 00 c2
	*rla $9c0a               ; $8825: 2f 0a 9c
	*lax $b7                 ; $8828: a7 b7
	dec $80                  ; $882a: c6 80
	*nop                     ; $882c: 5a
	*nop $1b3a,x             ; $882d: 5c 3a 1b
	*rla $f6c1               ; $8830: 2f c1 f6
	adc $a65c,x              ; $8833: 7d 5c a6
	*shx $2fa2,y             ; $8836: 9e a2 2f PPUSTATUS
	asl                      ; $8839: 0a
	*rra ($b8,x)             ; $883a: 63 b8
	*rla $e4,x               ; $883c: 37 e4
	*shx $00f3,y             ; $883e: 9e f3 00
	ldy $2a                  ; $8841: a4 2a
	*nop $31,x               ; $8843: d4 31
	sed                      ; $8845: f8
	*jam                     ; $8846: 22
	sta $c21a                ; $8847: 8d 1a c2
	ora $c2ef,y              ; $884a: 19 ef c2
	dec $ab,x                ; $884d: d6 ab
	*dcp $7c                 ; $884f: c7 7c
	*las $abdf,y             ; $8851: bb df ab
	*sre $8cd4,y             ; $8854: 5b d4 8c
	*isc ($a6),y             ; $8857: f3 a6
	bcc $8856                ; $8859: 90 fb
loc_885b:
	*jam                     ; $885b: f2
	bne $881f                ; $885c: d0 c1
loc_885e:
	*sax $a7c2               ; $885e: 8f c2 a7
	and #$fe                 ; $8861: 29 fe
	adc #$68                 ; $8863: 69 68
	*slo $d72c,x             ; $8865: 1f 2c d7
	and ($0d,x)              ; $8868: 21 0d
	*nop $6f                 ; $886a: 64 6f
	*sax $4f                 ; $886c: 87 4f
	cpy $dd7b                ; $886e: cc 7b dd
	bcc $88e0                ; $8871: 90 6d
loc_8873:
	*nop $d7,x               ; $8873: f4 d7
	*shx $18e3,y             ; $8875: 9e e3 18
	adc $df                  ; $8878: 65 df
	*nop                     ; $887a: 5a
	*lax $ea1d               ; $887b: af 1d ea
entry_887e:
	*nop $44,x               ; $887e: d4 44
	cmp $9a                  ; $8880: c5 9a
entry_8882:
	*jam                     ; $8882: 52
	*axs #$ad                ; $8883: cb ad
	*isc $d6                 ; $8885: e7 d6
	sta ($dd,x)              ; $8887: 81 dd
	*slo ($13),y             ; $8889: 13 13
	*slo $62,x               ; $888b: 17 62
	*nop $d5,x               ; $888d: d4 d5
	*isc $9ad7,y             ; $888f: fb d7 9a
	*jam                     ; $8892: 52
	dec $0284,x              ; $8893: de 84 02
	clv                      ; $8896: b8
	inc $ac,x                ; $8897: f6 ac
	lsr $1937,x              ; $8899: 5e 37 19
	lda $d0e1,y              ; $889c: b9 e1 d0
	sta $fe,x                ; $889f: 95 fe
	*rla $e330               ; $88a1: 2f 30 e3
	sta $54,x                ; $88a4: 95 54
	jmp $a14c                ; $88a6: 4c 4c a1

; === Block $8805-$8808 (Code) ===
entry_8805:
	sbc ($6b,x)              ; $8805: e1 6b
	rol                      ; $8807: 2a

; === Block $880d-$8810 (Code) ===
entry_880d:
	sbc $abe1                ; $880d: ed e1 ab

; === Block $884b-$8857 (Code) ===
entry_884b:
	*isc $d6c2               ; $884b: ef c2 d6
	*lax #$c7                ; $884e: ab c7
	*nop $dfbb,x             ; $8850: 7c bb df
	*lax #$5b                ; $8853: ab 5b
	*nop $8c,x               ; $8855: d4 8c

; === Block $8856-$8859 (Code) ===
loc_8856:
	sty $a6f3                ; $8856: 8c f3 a6

; === Block $8884-$8887 (Code) ===
entry_8884:
	lda $d6e7                ; $8884: ad e7 d6

; === Block $888c-$888d (Code) ===
entry_888c:
	*jam                     ; $888c: 62

; === Block $88b1-$88ba (Code) ===
entry_88b1:
	*isc $7c09               ; $88b1: ef 09 7c
	sbc $f20b,y              ; $88b4: f9 0b f2
	tax                      ; $88b7: aa
	*nop #$89                ; $88b8: 89 89

; === Block $88ba-$8936 (Code) ===
entry_88ba:
	sty $23,x                ; $88ba: 94 23
	*nop $fe92,x             ; $88bc: fc 92 fe
	*rra $b816,y             ; $88bf: 7b 16 b8
	*sre $bc77,x             ; $88c2: 5f 77 bc
	and $f3                  ; $88c5: 25 f3
	cpx $2f                  ; $88c7: e4 2f
	dex                      ; $88c9: ca
	tax                      ; $88ca: aa
	rol $26                  ; $88cb: 26 26
	bvc $885e                ; $88cd: 50 8f
loc_88cf:
	*jam                     ; $88cf: f2
	*alr #$f9                ; $88d0: 4b f9
	cpx $c85a                ; $88d2: ec 5a c8
	sty $2b                  ; $88d5: 84 2b
	cmp $8f7f                ; $88d7: cd 7f 8f
	bvs $8936                ; $88da: 70 5a
loc_88dc:
	*sax $82cb               ; $88dc: 8f cb 82
	lda #$49                 ; $88df: a9 49
	bpl $8892                ; $88e1: 10 af
loc_88e3:
	*lax ($ba,x)             ; $88e3: a3 ba
entry_88e5:
	rol $26                  ; $88e5: 26 26
	bvc $8878                ; $88e7: 50 8f
loc_88e9:
	*jam                     ; $88e9: f2
	*alr #$f9                ; $88ea: 4b f9
	cmp ($dd),y              ; $88ec: d1 dd
	eor $37cb                ; $88ee: 4d cb 37 OAMADDR
	adc $27                  ; $88f1: 65 27
	clc                      ; $88f3: 18
	tax                      ; $88f4: aa
	*nop #$89                ; $88f5: 89 89
	*xaa #$0b                ; $88f7: 8b 0b
	*sre $e8                 ; $88f9: 47 e8
	ora $9e                  ; $88fb: 05 9e
	*isc ($35,x)             ; $88fd: e3 35
	*dcp ($31,x)             ; $88ff: c3 31
	*nop                     ; $8901: fa
	tay                      ; $8902: a8
	tya                      ; $8903: 98
	ldx #$8a                 ; $8904: a2 8a
	plp                      ; $8906: 28
	ldx #$8a                 ; $8907: a2 8a
	plp                      ; $8909: 28
	ldx #$8a                 ; $890a: a2 8a
	plp                      ; $890c: 28
entry_890d:
	ldx #$8a                 ; $890d: a2 8a
	plp                      ; $890f: 28
	ldx #$8a                 ; $8910: a2 8a
	plp                      ; $8912: 28
	ldx #$00                 ; $8913: a2 00
	*jam                     ; $8915: 62
	*nop #$de                ; $8916: c2 de
	and $c865,y              ; $8918: 39 65 c8
	*rra ($e2),y             ; $891b: 73 e2
	dex                      ; $891d: ca
	*nop #$15                ; $891e: c2 15
	*jam                     ; $8920: 62
	*jam                     ; $8921: 62
entry_8922:
	*nop #$de                ; $8922: c2 de
	and $8e62,y              ; $8924: 39 62 8e
	*rra $f81d,x             ; $8927: 7f 1d f8
entry_892a:
	*nop $6a,x               ; $892a: 74 6a
	*nop $aa,x               ; $892c: 14 aa
	cpy $c5                  ; $892e: c4 c5
	sta $bc                  ; $8930: 85 bc
	*jam                     ; $8932: 72
	*axs #$a9                ; $8933: cb a9
	*jam                     ; $8935: 72
loc_8936:
	rts                      ; $8936: 60

; === Block $88bf-$891e (Code) ===
loc_88bf:
	*nop $7438,x             ; $88bf: fc 38 74
	*rra $47,x               ; $88c2: 77 47
	*nop                     ; $88c4: 5a
	*sre ($57,x)             ; $88c5: 43 57
	and #$d6                 ; $88c7: 29 d6
	*rra $a229,x             ; $88c9: 7f 29 a2
	*isc $9fad               ; $88cc: ef ad 9f
	sta $fc68                ; $88cf: 8d 68 fc
	*rra $53,x               ; $88d2: 77 53
	*isc $84,x               ; $88d4: f7 84
	and #$ea                 ; $88d6: 29 ea
	*jam                     ; $88d8: 22
	adc $07                  ; $88d9: 65 07
	lsr $879f,x              ; $88db: 5e 9f 87
	sta $e8c1                ; $88de: 8d c1 e8
	inc $d1                  ; $88e1: e6 d1
	ldx $90                  ; $88e3: a6 90
	inc $f8b8,x              ; $88e5: fe b8 f8
	inx                      ; $88e8: e8
	adc ($13,x)              ; $88e9: 61 13
	plp                      ; $88eb: 28
	*nop                     ; $88ec: 3a
	*nop $fc,x               ; $88ed: f4 fc
	*slo $09a1,y             ; $88ef: 1b a1 09
	sed                      ; $88f2: f8
	*dcp $8e11,x             ; $88f3: df 11 8e
	*jam                     ; $88f6: 52
	sbc ($d1,x)              ; $88f7: e1 d1
	*shx $5ae3,y             ; $88f9: 9e e3 5a
	*rla $d41d,x             ; $88fc: 3f 1d d4
	sbc $06e1,x              ; $88ff: fd e1 06
	dec $3b,x                ; $8902: d6 3b
	*jam                     ; $8904: 42
	*nop                     ; $8905: 1a
	stx $1a52                ; $8906: 8e 52 1a
	lda $7b4e,y              ; $8909: b9 4e 7b
	sta $f3e7                ; $890c: 8d e7 f3
	clc                      ; $890f: 18
	asl $4396,x              ; $8910: 1e 96 43
	*isc ($6e),y             ; $8913: f3 6e
	ldy $8f13                ; $8915: ac 13 8f
	*nop                     ; $8918: fa
	lda $f6,x                ; $8919: b5 f6
	bit $004b                ; $891b: 2c 4b 00
loc_891e:
	jmp $fc18                ; $891e: 4c 18 fc

; === Block $88e0-$88e5 (Code) ===
loc_88e0:
	eor #$10                 ; $88e0: 49 10
	*lax $baa3               ; $88e2: af a3 ba

; === Block $88fe-$8902 (Code) ===
entry_88fe:
	and $c3,x                ; $88fe: 35 c3
	and ($fa),y              ; $8900: 31 fa

; === Block $8921-$89b6 (Code) ===
loc_8921:
	lsr $13,x                ; $8921: 56 13
	*rla $be                 ; $8923: 27 be
	*rla ($1c,x)             ; $8925: 23 1c
	ldy $0b                  ; $8927: a4 0b
	*jam                     ; $8929: 32
	cmp $c344                ; $892a: cd 44 c3
	cmp $82e7,x              ; $892d: dd e7 82
	bmi $88bf                ; $8930: 30 8d
loc_8932:
	ror                      ; $8932: 6a
	lda ($c4),y              ; $8933: b1 c4
	dex                      ; $8935: ca
	asl $3fbd                ; $8936: 0e bd 3f PPUSCROLL
	*nop $5b                 ; $8939: 04 5b
	*lax #$e2                ; $893b: ab e2
	tsx                      ; $893d: ba
	*nop #$1a                ; $893e: c2 1a
	dec $f2                  ; $8940: c6 f2
	*sax $c9,y               ; $8942: 97 c9
	*isc ($90),y             ; $8944: f3 90
	*sha $58e2,y             ; $8946: 9f e2 58
	asl                      ; $8949: 0a
	*nop                     ; $894a: 7a
	dey                      ; $894b: 88
	sta $d741,y              ; $894c: 99 41 d7
	*lax $e1                 ; $894f: a7 e1
	*isc ($71,x)             ; $8951: e3 71
	*tas $3e85,y             ; $8953: 9b 85 3e PPUSCROLL
	lda ($da),y              ; $8956: b1 da
	bpl $891e                ; $8958: 10 c4
loc_895a:
	and ($0d,x)              ; $895a: 21 0d
	*dcp $c8                 ; $895c: c7 c8
	*sre $2cf3               ; $895e: 4f f3 2c OAMADDR
	*nop $4c,x               ; $8961: d4 4c
	and $78de,x              ; $8963: 3d de 78
	*rla ($08,x)             ; $8966: 23 08
	dec $ae,x                ; $8968: d6 ae
	bcs $89c5                ; $896a: b0 59
loc_896c:
	inc $baaf                ; $896c: ee af ba
	*nop $65,x               ; $896f: d4 65
	and $4c44,x              ; $8971: 3d 44 4c
	ldy #$eb                 ; $8974: a0 eb
	*dcp ($f0),y             ; $8976: d3 f0
	ldx $43                  ; $8978: a6 43
	*nop $eea2,x             ; $897a: fc a2 ee
	*nop                     ; $897d: da
	*dcp $68                 ; $897e: c7 68
	*sre ($79,x)             ; $8980: 43 79
	*alr #$ee                ; $8982: 4b ee
	rol $9c4f,x              ; $8984: 3e 4f 9c
	sty $ff                  ; $8987: 84 ff
	*jam                     ; $8989: 12
	cpy #$30                 ; $898a: c0 30
	*rra ($89,x)             ; $898c: 63 89
	sty $1d,x                ; $898e: 94 1d
	*nop                     ; $8990: 7a
	ror $c314,x              ; $8991: 7e 14 c3
	lda $c3ef                ; $8994: ad ef c3
	*lax ($08,x)             ; $8997: a3 08
	bpl $8963                ; $8999: 10 c8
loc_899b:
	*sre $2cf1               ; $899b: 4f f1 2c PPUMASK
	ora $3d                  ; $899e: 05 3d
	*nop $4c                 ; $89a0: 44 4c
	ldy #$eb                 ; $89a2: a0 eb
	*dcp ($f0),y             ; $89a4: d3 f0
	lda #$ca                 ; $89a6: a9 ca
	*rra $b2,x               ; $89a8: 77 b2
	adc $349f,x              ; $89aa: 7d 9f 34 PPUDATA
	ldx $f9                  ; $89ad: a6 f9
	*isc $10                 ; $89af: e7 10
	sty $37                  ; $89b1: 84 37
	asl $239f,x              ; $89b3: 1e 9f 23 PPUDATA
	brk                      ; $89b6: 00

; === Block $8937-$8945 (Code) ===
loc_8937:
	ora $98f5                ; $8937: 0d f5 98
	rol                      ; $893a: 2a
	jsr $8955                ; $893b: 20 55 89
loc_893e:
	*xaa #$0b                ; $893e: 8b 0b
	sei                      ; $8940: 78
	sbc $97                  ; $8941: e5 97
	and ($f0,x)              ; $8943: 21 f0

; === Block $8945-$8963 (Code) ===
loc_8945:
	ora ($1c),y              ; $8945: 11 1c
	*nop                     ; $8947: 3a
	*rla ($5c),y             ; $8948: 33 5c
	*rla $c46a,x             ; $894a: 3f 6a c4
	cmp $85                  ; $894d: c5 85
	ldy $cb72,x              ; $894f: bc 72 cb
	ldy $88c3                ; $8952: ac c3 88
	sty $42                  ; $8955: 84 42
	*isc $b1da,x             ; $8957: ff da b1
	and ($61),y              ; $895a: 31 61
	*rra $b21c               ; $895c: 6f 1c b2
	nop                      ; $895f: ea
	jsr $de16                ; $8960: 20 16 de

; === Block $8963-$89a6 (Code) ===
loc_8963:
	ora $b90d,x              ; $8963: 1d 0d b9
	ora $847a,x              ; $8966: 1d 7a 84
	*sha ($e9),y             ; $8969: 93 e9
	*sre ($35,x)             ; $896b: 43 35
	*dcp ($f6,x)             ; $896d: c3 f6
	ldy $584c                ; $896f: ac 4c 58
	*sre $2dc7,y             ; $8972: 5b c7 2d PPUDATA
	*jam                     ; $8975: 42
	cpy #$16                 ; $8976: c0 16
	sty $31,x                ; $8978: 94 31
	*nop $03,x               ; $897a: 34 03
	*sbc #$3f                ; $897c: eb 3f
	asl                      ; $897e: 0a
	*isc $ab,x               ; $897f: f7 ab
	*slo ($16),y             ; $8981: 13 16
	eor ($61,x)              ; $8983: 41 61
	*jam                     ; $8985: 02
	dex                      ; $8986: ca
	bvc $898c                ; $8987: 50 03
loc_8989:
	cmp $9858                ; $8989: cd 58 98
loc_898c:
	bcs $8945                ; $898c: b0 b7
loc_898e:
	stx $cc5b                ; $898e: 8e 5b cc
	beq $8937                ; $8991: f0 a4
loc_8993:
	sbc $0a,x                ; $8993: f5 0a
	eor $62,x                ; $8995: 55 62
	*jam                     ; $8997: 62
	*nop $e62d,x             ; $8998: dc 2d e6
	sei                      ; $899b: 78
	*jam                     ; $899c: 52
	*rra ($da,x)             ; $899d: 63 da
	lda ($31),y              ; $899f: b1 31
	adc ($6f,x)              ; $89a1: 61 6f
	*nop $0bb5,x             ; $89a3: 1c b5 0b

; === Block $89a6-$89a6 (Code) ===
entry_89a6:
	brk                      ; $89a6: 00

; === Block $89b9-$89d8 (Code) ===
entry_89b9:
	*sbc #$0a                ; $89b9: eb 0a
	cmp ($03),y              ; $89bb: d1 03
	*nop                     ; $89bd: da
	lda ($31),y              ; $89be: b1 31
	ror $f516                ; $89c0: 6e 16 f5
	eor ($03),y              ; $89c3: 51 03
	*nop                     ; $89c5: da
	tay                      ; $89c6: a8
	tya                      ; $89c7: 98
	tya                      ; $89c8: 98
	lda ($41),y              ; $89c9: b1 41
	adc $c72d                ; $89cb: 6d 2d c7
	and $7d66                ; $89ce: 2d 66 7d
	*lax $de70               ; $89d1: af 70 de
	*rra ($15),y             ; $89d4: 73 15
	*nop $4c,x               ; $89d6: 54 4c
	jmp $ff59                ; $89d8: 4c 59 ff

; === Block $89c5-$8a3e (Code) ===
loc_89c5:
	*nop $7936,x             ; $89c5: fc 36 79
	inc $7033                ; $89c8: ee 33 70
	*nop $f32c,x             ; $89cb: dc 2c f3
	*nop                     ; $89ce: 3a
	*jam                     ; $89cf: 92
	cmp ($2b,x)              ; $89d0: c1 2b
	ror $03                  ; $89d2: 66 03
	*nop $10e2,x             ; $89d4: 3c e2 10
	*sax $7a                 ; $89d7: 87 7a
	*shy $b7a7,x             ; $89d9: 9c a7 b7
	tsx                      ; $89dc: ba
	iny                      ; $89dd: c8
	*rra $1f,x               ; $89de: 77 1f
	cpy $f3c0                ; $89e0: cc c0 f3
	clv                      ; $89e3: b8
	cpx $e218                ; $89e4: ec 18 e2
	adc $07                  ; $89e7: 65 07
	lsr $829f,x              ; $89e9: 5e 9f 82
	plp                      ; $89ec: 28
	sbc $9ef1                ; $89ed: ed f1 9e
	*isc $d194,x             ; $89f0: ff 94 d1
	*nop $314f,x             ; $89f3: 7c 4f 31 PPUDATA
	*lax ($e1),y             ; $89f6: b3 e1
	bne $89d5                ; $89f8: d0 db
loc_89fa:
	*nop $efa2,x             ; $89fa: fc a2 ef
	*sre $6591               ; $89fd: 4f 91 65
	bmi $89f9                ; $8a00: 30 f7
loc_8a02:
	*sre $29,x               ; $8a02: 57 29
	bne $89e9                ; $8a04: d0 e3
loc_8a06:
	and ($9e),y              ; $8a06: 31 9e
	adc ($01),y              ; $8a08: 71 01
	txs                      ; $8a0a: 9a
	tsx                      ; $8a0b: ba
	ldx $6b68,y              ; $8a0c: be 68 6b
	lda $9021                ; $8a0f: ad 21 90
	*sha $58e2,y             ; $8a12: 9f e2 58
	asl                      ; $8a15: 0a
	*nop                     ; $8a16: 7a
	dey                      ; $8a17: 88
	sta $d741,y              ; $8a18: 99 41 d7
	*lax $e1                 ; $8a1b: a7 e1
	*rra ($b4,x)             ; $8a1d: 63 b4
	and ($9f,x)              ; $8a1f: 21 9f
	sbc $eb,x                ; $8a21: f5 eb
	*lax $cffd               ; $8a23: af fd cf
	*nop                     ; $8a26: 3a
	*nop #$fa                ; $8a27: 80 fa
	*nop #$9f                ; $8a29: 89 9f
	*rra $9f,x               ; $8a2b: 77 9f
	*jam                     ; $8a2d: f2
	bmi $8a8d                ; $8a2e: 30 5d
loc_8a30:
	nop                      ; $8a30: ea
	*jam                     ; $8a31: 72
	*shy $fdd4,x             ; $8a32: 9c d4 fd
	*shx $ffba,y             ; $8a35: 9e ba ff
	*nop $3df3,x             ; $8a38: dc f3 3d OAMADDR
	*nop                     ; $8a3b: fa
	inc $ac,x                ; $8a3c: f6 ac
	jmp ($d4ea)              ; $8a3e: 6c ea d4

; === Block $89d5-$89d7 (Code) ===
loc_89d5:
	*nop #$10                ; $89d5: e2 10

; === Block $89e1-$8a1a (Code) ===
entry_89e1:
	jsr $5155                ; $89e1: 20 55 51
loc_89e4:
	and ($32),y              ; $89e4: 31 32
	cmp $a4fb,y              ; $89e6: d9 fb a4
	cmp $c4,x                ; $89e9: d5 c4
	*anc #$cf                ; $89eb: 2b cf
	adc ($f1),y              ; $89ed: 71 f1
	cld                      ; $89ef: d8
	lda ($ce),y              ; $89f0: b1 ce
	sbc ($b7,x)              ; $89f2: e1 b7
	cmp #$fd                 ; $89f4: c9 fd
	adc $51,x                ; $89f6: 75 51
	and ($31),y              ; $89f8: 31 31
	*rra $08af               ; $89fa: 6f af 08
	asl $7b,x                ; $89fd: 16 7b
	sty $34dc                ; $89ff: 8c dc 34 OAMDATA
	*jam                     ; $8a02: d2
	*slo $5fb8,x             ; $8a03: 1f b8 5f
	ror                      ; $8a06: 6a
	cpy $c5                  ; $8a07: c4 c5
	ldx $20bc,y              ; $8a09: be bc 20 OAMDATA
	eor $d475,y              ; $8a0c: 59 75 d4
	sbc $48d3,x              ; $8a0f: fd d3 48
	ror $7de1,x              ; $8a12: 7e e1 7d
	tax                      ; $8a15: aa
	*nop #$89                ; $8a16: 89 89
loc_8a18:
	*xaa #$a7                ; $8a18: 8b a7

; === Block $89ec-$89ef (Code) ===
loc_89ec:
	*dcp $f171               ; $89ec: cf 71 f1

; === Block $89f9-$8a0a (Code) ===
loc_89f9:
	*dcp $a2fc,y             ; $89f9: db fc a2
	*isc $914f               ; $89fc: ef 4f 91
	adc $30                  ; $89ff: 65 30
	*isc $57,x               ; $8a01: f7 57
	and #$d0                 ; $8a03: 29 d0
	*isc ($31,x)             ; $8a05: e3 31
	*shx $0171,y             ; $8a07: 9e 71 01

; === Block $8a1a-$8b0f (Code) ===
entry_8a1a:
	sbc ($63,x)              ; $8a1a: e1 63
	lda $b9,x                ; $8a1c: b5 b9
	*rra $5e,x               ; $8a1e: 77 5e
	*nop $77b4,x             ; $8a20: 1c b4 77
	*sre $0d                 ; $8a23: 47 0d
	sta ($c3),y              ; $8a25: 91 c3
	*nop $71                 ; $8a27: 64 71
	bne $89ec                ; $8a29: d0 c1
loc_8a2b:
	*slo $a244,y             ; $8a2b: 1b 44 a2
	*jam                     ; $8a2e: 62
	*jam                     ; $8a2f: 62
	sbc #$f8                 ; $8a30: e9 f8
	cli                      ; $8a32: 58
	sbc $5d6e                ; $8a33: ed 6e 5d
	*dcp $87,x               ; $8a36: d7 87
	and $fc1d                ; $8a38: 2d 1d fc
	*sre ($64,x)             ; $8a3b: 43 64
	bvs $8a18                ; $8a3d: 70 d9
loc_8a3f:
	*nop $3074,x             ; $8a3f: 1c 74 30 OAMDATA
	lsr $d1                  ; $8a42: 46 d1
	plp                      ; $8a44: 28
entry_8a45:
	tya                      ; $8a45: 98
	tya                      ; $8a46: 98
	*lax ($df),y             ; $8a47: b3 df
	*jam                     ; $8a49: f2
	cmp ($65),y              ; $8a4a: d1 65
	adc #$6b                 ; $8a4c: 69 6b
	*dcp $9b71               ; $8a4e: cf 71 9b
	sta $58                  ; $8a51: 85 58
	tya                      ; $8a53: 98
	lda $9f,x                ; $8a54: b5 9f
	lda #$fb                 ; $8a56: a9 fb
	*nop #$b8                ; $8a58: c2 b8
	bit $a0b9                ; $8a5a: 2c b9 a0
	ldx $ea64,y              ; $8a5d: be 64 ea
	cpy $dc                  ; $8a60: c4 dc
	cmp #$02                 ; $8a62: c9 02
	cmp ($c9),y              ; $8a64: d1 c9
entry_8a66:
	*lax $19e6,y             ; $8a66: bf e6 19
	*sre $82dc               ; $8a69: 4f dc 82
	*nop #$05                ; $8a6c: c2 05
	eor $13,x                ; $8a6e: 55 13
	*slo ($2c),y             ; $8a70: 13 2c
	cmp $da2a,x              ; $8a72: dd 2a da
entry_8a75:
	ldy $0d,x                ; $8a75: b4 0d
	eor $1b9e                ; $8a77: 4d 9e 1b
	*lax ($5a,x)             ; $8a7a: a3 5a
	lda ($31),y              ; $8a7c: b1 31
	pla                      ; $8a7e: 68
	inc $cb07                ; $8a7f: ee 07 cb
	eor #$e6                 ; $8a82: 49 e6
	rol                      ; $8a84: 2a
	tay                      ; $8a85: a8
	tya                      ; $8a86: 98
	tya                      ; $8a87: 98
	tsx                      ; $8a88: ba
	ror $fc08,x              ; $8a89: 7e 08 fc
	*jam                     ; $8a8c: f2
	cmp $9e1f,y              ; $8a8d: d9 1f 9e
	*sre $a723,y             ; $8a90: 5b 23 a7
	*isc $f35a,x             ; $8a93: ff 5a f3
	ora $5a,x                ; $8a96: 15 5a
	sty $6d                  ; $8a98: 84 6d
	*slo ($13),y             ; $8a9a: 13 13
	asl $27,x                ; $8a9c: 16 27
	*sre $68b9,x             ; $8a9e: 5f b9 68
	*isc $0e5f,x             ; $8aa1: ff 5f 0e
	txa                      ; $8aa4: 8a
	tay                      ; $8aa5: a8
	tya                      ; $8aa6: 98
	tya                      ; $8aa7: 98
	tsx                      ; $8aa8: ba
	ror $3316,x              ; $8aa9: 7e 16 33 PPUADDR
	lsr                      ; $8aac: 4a
	*rra $759e               ; $8aad: 6f 9e 75
	*slo ($af),y             ; $8ab0: 13 af
	rol $8a,x                ; $8ab2: 36 8a
	*las $36af,y             ; $8ab4: bb af 36 PPUDATA
	*nop                     ; $8ab7: 7a
	*nop                     ; $8ab8: 3a
	*isc ($67),y             ; $8ab9: f3 67
	ldx #$a1                 ; $8abb: a2 a1
	*slo $c444,y             ; $8abd: 1b 44 c4
	cmp $a8                  ; $8ac0: c5 a8
	*nop                     ; $8ac2: fa
	cmp $a72c,y              ; $8ac3: d9 2c a7
	inc $fe7b                ; $8ac6: ee 7b fe
	*nop                     ; $8ac9: 5a
	bit $2dad                ; $8aca: 2c ad 2d PPUSCROLL
	adc $aa8a,y              ; $8acd: 79 8a aa
	rol $26                  ; $8ad0: 26 26
	rol $829f                ; $8ad2: 2e 9f 82
	*jam                     ; $8ad5: 32
	*dcp ($21,x)             ; $8ad6: c3 21
	bcc $8aa2                ; $8ad8: 90 c8
loc_8ada:
	*nop $55                 ; $8ada: 64 55
	tay                      ; $8adc: a8
	*nop #$8b                ; $8add: 89 8b
	*slo ($af),y             ; $8adf: 13 af
	*nop $82b3,x             ; $8ae1: dc b3 82
	ror $181d,x              ; $8ae4: 7e 1d 18
	*sha $e8e0,y             ; $8ae7: 9f e0 e8
	*rra $35eb,y             ; $8aea: 7b eb 35 OAMADDR
	*sbc #$3f                ; $8aed: eb 3f
	asl                      ; $8aef: 0a
	*dcp $4687               ; $8af0: cf 87 46
	*rra $4f8c,y             ; $8af3: 7b 8c 4f
	rol $0b                  ; $8af6: 26 0b
	clc                      ; $8af8: 18
	*sre $aed9,x             ; $8af9: 5f d9 ae
	tax                      ; $8afc: aa
	and $13                  ; $8afd: 25 13
	*slo ($16),y             ; $8aff: 13 16
	*isc ($c8),y             ; $8b01: f3 c8
	cmp $4f96,y              ; $8b03: d9 96 4f
	*shy $eea7,x             ; $8b06: 9c a7 ee
	*rra $5afe,y             ; $8b09: 7b fe 5a
	bit $9eb8                ; $8b0c: 2c b8 9e
	jmp $4455                ; $8b0f: 4c 55 44

; === Block $8a22-$8a27 (Code) ===
entry_8a22:
	*rra $47,x               ; $8a22: 77 47
	ora $c391                ; $8a24: 0d 91 c3

; === Block $8a2a-$8a2e (Code) ===
entry_8a2a:
	cmp ($1b,x)              ; $8a2a: c1 1b
	*nop $a2                 ; $8a2c: 44 a2

; === Block $8a5b-$8a60 (Code) ===
entry_8a5b:
	lda $bea0,y              ; $8a5b: b9 a0 be
	*nop $ea                 ; $8a5e: 64 ea

; === Block $8a8d-$8b6e (Code) ===
loc_8a8d:
	*isc $e970,x             ; $8a8d: ff 70 e9
	*slo ($79,x)             ; $8a90: 03 79
	sbc $857b,x              ; $8a92: fd 7b 85
	bcc $8ae3                ; $8a95: 90 4c
loc_8a97:
	jsr $8dc1                ; $8a97: 20 c1 8d
loc_8a9a:
	sty $1d,x                ; $8a9a: 94 1d
	*nop                     ; $8a9c: 7a
	ror $b208,x              ; $8a9d: 7e 08 b2
	tya                      ; $8aa0: 98
	*rra $94ab,y             ; $8aa1: 7b ab 94
	inx                      ; $8aa4: e8
	adc ($98),y              ; $8aa5: 71 98
	*dcp $8038               ; $8aa7: cf 38 80
	cmp $5f5d                ; $8aaa: cd 5d 5f
	*nop $35,x               ; $8aad: 34 35
	dec $90,x                ; $8aaf: d6 90
	iny                      ; $8ab1: c8
	*sre $2cf1               ; $8ab2: 4f f1 2c PPUMASK
	ora $3d                  ; $8ab5: 05 3d
	*nop $5d                 ; $8ab7: 44 5d
	*rra $fc,x               ; $8ab9: 77 fc
	*dcp $f0d3,y             ; $8abb: db d3 f0
	*nop $d7                 ; $8abe: 64 d7
	*tas $de8d,y             ; $8ac0: 9b 8d de
	lda $ae65                ; $8ac3: ad 65 ae
	ldy $86,x                ; $8ac6: b4 86
	*jam                     ; $8ac8: f2
	ldy $43                  ; $8ac9: a4 43
	dec $3bf6,x              ; $8acb: de f6 3b PPUADDR
	*jam                     ; $8ace: 42
	*nop                     ; $8acf: 1a
	ora ($69,x)              ; $8ad0: 01 69
	*nop $d372               ; $8ad2: 0c 72 d3
	asl $3e                  ; $8ad5: 06 3e
	*las $6dfe,y             ; $8ad7: bb fe 6d
	sbc #$f8                 ; $8ada: e9 f8
	sei                      ; $8adc: 78
	*lax #$31                ; $8add: ab 31
	*lax ($5f,x)             ; $8adf: a3 5f
	txa                      ; $8ae1: 8a
	lda $58bb,y              ; $8ae2: b9 bb 58
	*lax #$51                ; $8ae5: ab 51
	*slo ($72),y             ; $8ae7: 13 72
	lda #$f8                 ; $8ae9: a9 f8
	*rla $e9,x               ; $8aeb: 37 e9
	sed                      ; $8aed: f8
	adc $e7,x                ; $8aee: 75 e7
	*isc $b5ad,x             ; $8af0: ff ad b5
	lda $e6,x                ; $8af3: b5 e6
	*isc ($77,x)             ; $8af5: e3 77
	*lax #$59                ; $8af7: ab 59
	*arr #$ad                ; $8af9: 6b ad
	and ($bc,x)              ; $8afb: 21 bc
	lda #$10                 ; $8afd: a9 10
	*isc $bd,x               ; $8aff: f7 bd
	sta $496a                ; $8b01: 8d 6a 49
	sbc $13,x                ; $8b04: f5 13
	cmp $af96,x              ; $8b06: dd 96 af
	*dcp ($42,x)             ; $8b09: c3 42
	bpl $8ab8                ; $8b0b: 10 ab
loc_8b0d:
	eor ($13),y              ; $8b0d: 51 13
	asl $f2,x                ; $8b0f: 16 f2
	*jam                     ; $8b11: 92
	clv                      ; $8b12: b8
	bit $1af7                ; $8b13: 2c f7 1a
	dex                      ; $8b16: ca
	eor $f4e4,x              ; $8b17: 5d e4 f4
	*shx $8c7b,y             ; $8b1a: 9e 7b 8c
	*jam                     ; $8b1d: d2
	*nop #$1d                ; $8b1e: c2 1d
	cld                      ; $8b20: d8
	*nop $376e,x             ; $8b21: fc 6e 37 PPUADDR
	*lax ($3f),y             ; $8b24: b3 3f
	*dcp ($e4),y             ; $8b26: d3 e4
	ora $8977,y              ; $8b28: 19 77 89
	*xaa #$79                ; $8b2b: 8b 79
	*alr #$96                ; $8b2d: 4b 96
	*rra $ff8c,y             ; $8b2f: 7b 8c ff
	asl                      ; $8b32: 0a
	eor #$f8                 ; $8b33: 49 f8
	dec $56,x                ; $8b35: d6 56
	rol $79,x                ; $8b37: 36 79
	*lax #$8f                ; $8b39: ab 8f
	sta $cdc7                ; $8b3b: 8d c7 cd
	and #$77                 ; $8b3e: 29 77
	*xaa #$c6                ; $8b40: 8b c6
	sbc #$2d                 ; $8b42: e9 2d
	*nop #$b0                ; $8b44: e2 b0
	sta $003d,y              ; $8b46: 99 3d 00
	*sax ($e4,x)             ; $8b49: 83 e4
	*rla $f9                 ; $8b4b: 27 f9
	inc $5230                ; $8b4d: ee 30 52
	adc $c4c3,x              ; $8b50: 7d c3 c4
	*slo $f1,x               ; $8b53: 17 f1
	*dcp $1a4a,x             ; $8b55: df 4a 1a
	*jam                     ; $8b58: 02
	*nop #$7e                ; $8b59: 80 7e
	*lax $cdeb               ; $8b5b: af eb cd
	ora $f3                  ; $8b5e: 05 f3
	rol $59                  ; $8b60: 26 59
	*sre $ffdc               ; $8b62: 4f dc ff
	asl                      ; $8b65: 0a
	eor #$f8                 ; $8b66: 49 f8
	rol $7eec                ; $8b68: 2e ec 7e
	*rla ($a3),y             ; $8b6b: 33 a3
	tya                      ; $8b6d: 98
	rti                      ; $8b6e: 40

; === Block $8a95-$8a98 (Code) ===
entry_8a95:
	*isc ($15),y             ; $8a95: f3 15
	*nop                     ; $8a97: 5a

; === Block $8aa2-$8aa5 (Code) ===
loc_8aa2:
	*sre $8a0e,x             ; $8aa2: 5f 0e 8a

; === Block $8ab8-$8abb (Code) ===
loc_8ab8:
	eor $fc77,x              ; $8ab8: 5d 77 fc

; === Block $8abf-$8ac2 (Code) ===
entry_8abf:
	cpy $c5                  ; $8abf: c4 c5
	tay                      ; $8ac1: a8

; === Block $8ad7-$8ada (Code) ===
entry_8ad7:
	and ($90,x)              ; $8ad7: 21 90
	iny                      ; $8ad9: c8

; === Block $8ae3-$8ae9 (Code) ===
loc_8ae3:
	*las $ab58,y             ; $8ae3: bb 58 ab
	eor ($13),y              ; $8ae6: 51 13
	*jam                     ; $8ae8: 72

; === Block $8af7-$8af9 (Code) ===
loc_8af7:
	*anc #$18                ; $8af7: 0b 18

; === Block $8b3a-$8ba0 (Code) ===
entry_8b3a:
	tax                      ; $8b3a: aa
	rol $26                  ; $8b3b: 26 26
	rol $839f                ; $8b3d: 2e 9f 83
	*nop $6a,x               ; $8b40: 74 6a
	rol $7d                  ; $8b42: 26 7d
	*dcp $fe39               ; $8b44: cf 39 fe
	ldy $84,x                ; $8b47: b4 84
	*slo $cb                 ; $8b49: 07 cb
	lda ($82,x)              ; $8b4b: a1 82
	rol $89,x                ; $8b4d: 36 89
	*nop $c4                 ; $8b4f: 44 c4
	cmp $d3                  ; $8b51: c5 d3
	beq $8bc4                ; $8b53: f0 6f
loc_8b55:
	and #$ea                 ; $8b55: 29 ea
	sbc $39                  ; $8b57: e5 39
	cpy $21                  ; $8b59: c4 21
	lda $ee19                ; $8b5b: ad 19 ee
	*rla ($4b),y             ; $8b5e: 33 4b
	lsr $d479,x              ; $8b60: 5e 79 d4
	iny                      ; $8b63: c8
	adc ($6e),y              ; $8b64: 71 6e
	*lax $4f                 ; $8b66: a7 4f
	bvc $8af7                ; $8b68: 50 8d
loc_8b6a:
	ldx #$51                 ; $8b6a: a2 51
	and ($31),y              ; $8b6c: 31 31
	*rra $1164               ; $8b6e: 6f 64 11
	inc $7d,x                ; $8b71: f6 7d
	beq $8bd3                ; $8b73: f0 5e
loc_8b75:
	*nop $fd                 ; $8b75: 64 fd
	tax                      ; $8b77: aa
	*nop #$89                ; $8b78: 89 89
	*xaa #$3a                ; $8b7a: 8b 3a
	*lax ($05),y             ; $8b7c: b3 05
	lda $04                  ; $8b7e: a5 04
	*rla ($dc),y             ; $8b80: 33 dc
	ror $e1                  ; $8b82: 66 e1
	lsr $26,x                ; $8b84: 56 26
	and $d1c2                ; $8b86: 2d c2 d1
	cmp $687f,x              ; $8b89: dd 7f 68
	*isc $59,x               ; $8b8c: f7 59
	*lax $5531               ; $8b8e: af 31 55
	*nop $a2                 ; $8b91: 44 a2
	*jam                     ; $8b93: 62
	*jam                     ; $8b94: 62
	cmp $1f                  ; $8b95: c5 1f
	*nop #$da                ; $8b97: c2 da
	eor $51,x                ; $8b99: 55 51
	and ($31),y              ; $8b9b: 31 31
	*nop $fc,x               ; $8b9d: 74 fc
	rol                      ; $8b9f: 2a
	rts                      ; $8ba0: 60

; === Block $8b5d-$8b60 (Code) ===
loc_8b5d:
	inc $4b33                ; $8b5d: ee 33 4b

; === Block $8bc4-$8bca (Code) ===
loc_8bc4:
	*rla ($68,x)             ; $8bc4: 23 68
	tya                      ; $8bc6: 98
	tya                      ; $8bc7: 98
	*lax $0b,y               ; $8bc8: b7 0b

; === Block $8bca-$8bf1 (Code) ===
entry_8bca:
	adc $f7f8,y              ; $8bca: 79 f8 f7
	sta ($bf),y              ; $8bcd: 91 bf
	asl $d58c                ; $8bcf: 0e 8c d5
	*isc $35                 ; $8bd2: e7 35
	iny                      ; $8bd4: c8
	*sre ($35,x)             ; $8bd5: 43 35
	*dcp ($aa,x)             ; $8bd7: c3 aa
	*nop #$89                ; $8bd9: 89 89
	*xaa #$37                ; $8bdb: 8b 37
	*dcp ($c3),y             ; $8bdd: d3 c3
	bit $1af7                ; $8bdf: 2c f7 1a
	dex                      ; $8be2: ca
	*las $55c0,y             ; $8be3: bb c0 55
	*nop #$8b                ; $8be6: 89 8b
	eor ($f5),y              ; $8be8: 51 f5
	*rla $9525               ; $8bea: 2f 25 95
	*isc ($15),y             ; $8bed: f3 15
	*nop $4c,x               ; $8bef: 54 4c
	jmp $855b                ; $8bf1: 4c 5b 85

; === Block $8bd3-$8bd5 (Code) ===
loc_8bd3:
	and $c8,x                ; $8bd3: 35 c8

; === Block $8c39-$8c4c (Code) ===
entry_8c39:
	*xaa #$a2                ; $8c39: 8b a2
	dex                      ; $8c3b: ca
	*sre $a746,x             ; $8c3c: 5f 46 a7
	cmp $c5f7,y              ; $8c3f: d9 f7 c5
	ldx #$db                 ; $8c42: a2 db
	*rla ($f9,x)             ; $8c44: 23 f9
	inc $c137                ; $8c46: ee 37 c1
	rol $3394,x              ; $8c49: 3e 94 33 OAMDATA

; === Block $8c48-$8c85 (Code) ===
entry_8c48:
	cmp ($3e,x)              ; $8c48: c1 3e
	sty $33,x                ; $8c4a: 94 33
	*nop $f262,x             ; $8c4c: dc 62 f2
	and ($0a,x)              ; $8c4f: 21 0a
	tay                      ; $8c51: a8
	tya                      ; $8c52: 98
	tya                      ; $8c53: 98
	tsx                      ; $8c54: ba
	ror $b708,x              ; $8c55: 7e 08 b7
	*sre $cd,x               ; $8c58: 57 cd
	and #$6b                 ; $8c5a: 29 6b
	clc                      ; $8c5c: 18
	*sha ($e7),y             ; $8c5d: 93 e7
	cpy $f790                ; $8c5f: cc 90 f7
	*nop $66ef,x             ; $8c62: 3c ef 66
	*shx $1ba1,y             ; $8c65: 9e a1 1b
	*nop $a2                 ; $8c68: 44 a2
	*jam                     ; $8c6a: 62
	*jam                     ; $8c6b: 62
	cmp $6df2                ; $8c6c: cd f2 6d
	*jam                     ; $8c6f: f2
	*nop                     ; $8c70: 5a
	dex                      ; $8c71: ca
	dec $cf                  ; $8c72: c6 cf
	bvs $8c54                ; $8c74: 70 de
loc_8c76:
	*rra ($dc),y             ; $8c76: 73 dc
entry_8c78:
	ror $96                  ; $8c78: 66 96
	*nop #$3a                ; $8c7a: 89 3a
	lda ($31),y              ; $8c7c: b1 31
	*rra $bf                 ; $8c7e: 67 bf
	sbc $a2                  ; $8c80: e5 a2
	iny                      ; $8c82: c8
	*dcp ($d4),y             ; $8c83: d3 d4
	jmp $de3d                ; $8c85: 4c 3d de

; === Block $8cd6-$8cf3 (Code) ===
entry_8cd6:
	php                      ; $8cd6: 08
	*jam                     ; $8cd7: b2
	tya                      ; $8cd8: 98
	*rra $94ab,y             ; $8cd9: 7b ab 94
	inx                      ; $8cdc: e8
	adc ($98),y              ; $8cdd: 71 98
	*dcp $167e               ; $8cdf: cf 7e 16
	ror $fa14                ; $8ce2: 6e 14 fa
	*dcp $68                 ; $8ce5: c7 68
	*sre ($51,x)             ; $8ce7: 43 51
	dex                      ; $8ce9: ca
	*sre ($57,x)             ; $8cea: 43 57
	and #$cb                 ; $8cec: 29 cb
	lda $47e1,x              ; $8cee: bd e1 47
	and #$37                 ; $8cf1: 29 37
	rts                      ; $8cf3: 60

; === Block $8cfd-$8d63 (Code) ===
entry_8cfd:
	*isc ($da,x)             ; $8cfd: e3 da
	tay                      ; $8cff: a8
	tya                      ; $8d00: 98
	tya                      ; $8d01: 98
	*lax $0b,y               ; $8d02: b7 0b
	eor $b35f,y              ; $8d04: 59 5f b3
	sbc ($d1,x)              ; $8d07: e1 d1
	txs                      ; $8d09: 9a
	*nop $b0ff,x             ; $8d0a: 1c ff b0
	ldx $26aa                ; $8d0d: ae aa 26 PPUSTATUS
	rol $2c                  ; $8d10: 26 2c
	*isc $d916,x             ; $8d12: ff 16 d9
	*nop #$2a                ; $8d15: 80 2a
	tay                      ; $8d17: a8
	tya                      ; $8d18: 98
	*nop #$62                ; $8d19: 80 62
	dec $67,x                ; $8d1b: d6 67
	*nop                     ; $8d1d: da
	sbc ($41),y              ; $8d1e: f1 41
	adc $c32d                ; $8d20: 6d 2d c3
	adc $55cc,y              ; $8d23: 79 cc 55
	*jam                     ; $8d26: 62
	*jam                     ; $8d27: 62
	dec $8854,x              ; $8d28: de 54 88
	asl $7b,x                ; $8d2b: 16 7b
	inc $4553,x              ; $8d2d: fe 53 45
	*isc $1f,x               ; $8d30: f7 1f
	and #$fb                 ; $8d32: 29 fb
	lda $2fe1,x              ; $8d34: bd e1 2f PPUMASK
	*sha $7e21,y             ; $8d37: 9f 21 7e
	cli                      ; $8d3a: 58
	ldx $d0                  ; $8d3b: a6 d0
	cmp $c7,x                ; $8d3d: d5 c7
	cmp $54                  ; $8d3f: c5 54
	lsr                      ; $8d41: 4a
	rol $26                  ; $8d42: 26 26
	and $9f1a                ; $8d44: 2d 1a 9f
	*rra $d6                 ; $8d47: 67 d6
	cmp $9721                ; $8d49: cd 21 97
	*slo $0e,x               ; $8d4c: 17 0e
	dey                      ; $8d4e: 88
	ora $4a6a                ; $8d4f: 0d 6a 4a
	sec                      ; $8d52: 38
	asl                      ; $8d53: 0a
	tay                      ; $8d54: a8
	tya                      ; $8d55: 98
	*tas $7ca9,y             ; $8d56: 9b a9 7c
	*isc $1a,x               ; $8d59: f7 1a
	cpy $5efb                ; $8d5b: cc fb 5e
	inc $41,x                ; $8d5e: f6 41
	*slo $c867,x             ; $8d60: 1f 67 c8
	jmp $2d21                ; $8d63: 4c 21 2d PPUMASK

; === Block $8d80-$8d8d (Code) ===
loc_8d80:
	*jam                     ; $8d80: 62
	*jam                     ; $8d81: 62
	cpy $eb                  ; $8d82: c4 eb
	*isc $2c,x               ; $8d84: f7 2c
	*nop $383a,x             ; $8d86: 5c 3a 38 PPUSTATUS
	*nop $65,x               ; $8d89: 74 65
	bne $8dd9                ; $8d8b: d0 4c

; === Block $8d8d-$8f3a (Code) ===
entry_8d8d:
	jsr $6bb6                ; $8d8d: 20 b6 6b
loc_8d90:
	*isc $1613               ; $8d90: ef 13 16
	*nop #$5f                ; $8d93: 80 5f
	and $a4                  ; $8d95: 25 a4
	*isc ($15),y             ; $8d97: f3 15
	cli                      ; $8d99: 58
	tya                      ; $8d9a: 98
entry_8d9b:
	ldy $6a,x                ; $8d9b: b4 6a
	sbc ($dc),y              ; $8d9d: f1 dc
	asl $62,x                ; $8d9f: 16 62
	*jam                     ; $8da1: d2
	*nop #$1a                ; $8da2: 82 1a
	sty $af                  ; $8da4: 84 af
	sbc $7eca,x              ; $8da6: fd ca 7e
	*nop #$70                ; $8da9: e2 70
	bcs $8dd9                ; $8dab: b0 2c
loc_8dad:
	lda $14fe,y              ; $8dad: b9 fe 14
	*sha ($f1),y             ; $8db0: 93 f1
	*lax ($b8,x)             ; $8db2: a3 b8
	*rla $aa                 ; $8db4: 27 aa
	*nop #$a9                ; $8db6: 89 a9
	*nop $4c                 ; $8db8: 64 4c
	eor $063f,x              ; $8dba: 5d 3f 06
	*jam                     ; $8dbd: f2
	*nop #$dd                ; $8dbe: c2 dd
	cpx $6db4                ; $8dc0: ec b4 6d
	sta $21                  ; $8dc3: 85 21
	*nop                     ; $8dc5: fa
	cpx $b5cf                ; $8dc6: ec cf b5
	cmp $a8,x                ; $8dc9: d5 a8
	lsr $d1                  ; $8dcb: 46 d1
	plp                      ; $8dcd: 28
	tya                      ; $8dce: 98
	*tas $0bcb,y             ; $8dcf: 9b cb 0b
	*sre $bb                 ; $8dd2: 47 bb
	cmp $f568,y              ; $8dd4: d9 68 f5
	txs                      ; $8dd7: 9a
	*isc ($13),y             ; $8dd8: f3 13
	*rra $b8                 ; $8dda: 67 b8
	iny                      ; $8ddc: c8
	pha                      ; $8ddd: 48
	bit $1ed7                ; $8dde: 2c d7 1e
	inc $5afd,x              ; $8de1: fe fd 5a
	inc $4489                ; $8de4: ee 89 44
	cpy $de                  ; $8de7: c4 de
	cli                      ; $8de9: 58
	*nop                     ; $8dea: 5a
	and $cbde,x              ; $8deb: 3d de cb
	*sre $ac                 ; $8dee: 47 ac
	*dcp $98,x               ; $8df0: d7 98
	*tas $6631,y             ; $8df2: 9b 31 66
	clv                      ; $8df5: b8
	*isc $f7,x               ; $8df6: f7 f7
	nop                      ; $8df8: ea
	cmp ($77),y              ; $8df9: d1 77
	*nop $a2                 ; $8dfb: 44 a2
	*jam                     ; $8dfd: 62
	sbc ($b8),y              ; $8dfe: f1 b8
	iny                      ; $8e00: c8
	pha                      ; $8e01: 48
	and $4764                ; $8e02: 2d 64 47
	rol $8c,x                ; $8e05: 36 8c
	and #$03                 ; $8e07: 29 03
	dec $cf,x                ; $8e09: d6 cf
	dec $e1                  ; $8e0b: c6 e1
	ldy #$9f                 ; $8e0d: a0 9f
	sbc ($5c),y              ; $8e0f: f1 5c
	*rra $1355,y             ; $8e11: 7b 55 13
	*slo ($16),y             ; $8e14: 13 16
	*jam                     ; $8e16: b2
	*rla ($9b,x)             ; $8e17: 23 9b
	eor ($61,x)              ; $8e19: 41 61
	pha                      ; $8e1b: 48
	asl $7eb6,x              ; $8e1c: 1e b6 7e
	*rla $0d,x               ; $8e1f: 37 0d
	*nop $ff                 ; $8e21: 04 ff
	txa                      ; $8e23: 8a
	*isc ($da,x)             ; $8e24: e3 da
	tay                      ; $8e26: a8
	tya                      ; $8e27: 98
	tya                      ; $8e28: 98
	lda $aa,x                ; $8e29: b5 aa
	cpy $5316                ; $8e2b: cc 16 53
	dex                      ; $8e2e: ca
	*jam                     ; $8e2f: d2
	ora #$86                 ; $8e30: 09 86
	*jam                     ; $8e32: f2
	*sha ($aa),y             ; $8e33: 93 aa
	*nop #$89                ; $8e35: 89 89
	*xaa #$15                ; $8e37: 8b 15
	cmp $98,x                ; $8e39: d5 98
	bit $1ed7                ; $8e3b: 2c d7 1e
	*nop                     ; $8e3e: fa
	asl                      ; $8e3f: 0a
	txs                      ; $8e40: 9a
	rol $f5e3                ; $8e41: 2e e3 f5
	*jam                     ; $8e44: 62
	*jam                     ; $8e45: 62
	cmp ($dd),y              ; $8e46: d1 dd
	eor $75cb                ; $8e48: 4d cb 75
	*sax $9f,y               ; $8e4b: 97 9f
	*rla ($f5,x)             ; $8e4d: 23 f5
	*jam                     ; $8e4f: 62
	*jam                     ; $8e50: 62
	*dcp $79fe               ; $8e51: cf fe 79
	rol                      ; $8e54: 2a
	lda ($53),y              ; $8e55: b1 53
	*slo $d53d,x             ; $8e57: 1f 3d d5
	*isc $0c,x               ; $8e5a: f7 0c
	sta $db4d,x              ; $8e5c: 9d 4d db
	rol $2f68                ; $8e5f: 2e 68 2f PPUCTRL
	sta $7e3d,y              ; $8e62: 99 3d 7e
	and $2a66,y              ; $8e65: 39 66 2a PPUADDR
	tay                      ; $8e68: a8
	tya                      ; $8e69: 98
	tya                      ; $8e6a: 98
	lda $1f,x                ; $8e6b: b5 1f
	*sre $9425,y             ; $8e6d: 5b 25 94
	sbc $7fcf,x              ; $8e70: fd cf 7f
	*axs #$45                ; $8e73: cb 45
	*nop #$4f                ; $8e75: 89 4f
	cmp $9e27,x              ; $8e77: dd 27 9e
	*isc ($51,x)             ; $8e7a: e3 51
	sbc $fb49,y              ; $8e7c: f9 49 fb
	eor $13,x                ; $8e7f: 55 13
	*slo $8d,x               ; $8e81: 17 8d
	dec $25                  ; $8e83: c6 25
	*rla $0175,x             ; $8e85: 3f 75 01
	*axs #$70                ; $8e88: cb 70
	*isc ($17),y             ; $8e8a: f3 17
	*jam                     ; $8e8c: 62
	*nop #$b0                ; $8e8d: c2 b0
	eor $62,x                ; $8e8f: 55 62
	*jam                     ; $8e91: 62
	cpy $eb                  ; $8e92: c4 eb
	*isc $2c,x               ; $8e94: f7 2c
	bvc $8ef3                ; $8e96: 50 5b
loc_8e98:
	adc $d1e1                ; $8e98: 6d e1 d1
	txs                      ; $8e9b: 9a
	*isc ($df,x)             ; $8e9c: e3 df
	adc ($cb),y              ; $8e9e: 71 cb
	eor $6b9f,y              ; $8ea0: 59 9f 6b
	*lax #$17                ; $8ea3: ab 17
	*sax $90d6               ; $8ea5: 8f d6 90
	*sax $0e                 ; $8ea8: 87 0e
	sta $fc68                ; $8eaa: 8d 68 fc
	*rra $53,x               ; $8ead: 77 53
	*jam                     ; $8eaf: 72
	*axs #$e7                ; $8eb0: cb e7
	iny                      ; $8eb2: c8
	*sre $4be9,x             ; $8eb3: 5f e9 4b
	sbc #$43                 ; $8eb6: e9 43
	*nop $71b5,x             ; $8eb8: 1c b5 71
	sbc ($55),y              ; $8ebb: f1 55
	*jam                     ; $8ebd: 12
	*nop #$8b                ; $8ebe: 89 8b
	dec $e3                  ; $8ec0: c6 e3
	*nop                     ; $8ec2: 5a
	*rla $d41d,x             ; $8ec3: 3f 1d d4
	*dcp $ed2f,x             ; $8ec6: df 2f ed
	*lax $ba2b               ; $8ec9: af 2b ba
	dec $cc                  ; $8ecc: c6 cc
	tax                      ; $8ece: aa
	cmp $e3                  ; $8ecf: c5 e3
	adc ($ad),y              ; $8ed1: 71 ad
	*slo $ea8e,x             ; $8ed3: 1f 8e ea
	ror $925a                ; $8ed6: 6e 5a 92
	*sha $fd0a,y             ; $8ed9: 9f 0a fd
	cmp ($31),y              ; $8edc: d1 31
	and ($66),y              ; $8ede: 31 66
	lda $1045,y              ; $8ee0: b9 45 10
	ora $97                  ; $8ee3: 05 97
	and ($c3,x)              ; $8ee5: 21 c3
	ldy #$7f                 ; $8ee7: a0 7f
	bvs $8edd                ; $8ee9: 70 f2
loc_8eeb:
	inx                      ; $8eeb: e8
	sbc $e0f8,y              ; $8eec: f9 f8 e0
	rol                      ; $8eef: 2a
	cpy $c5                  ; $8ef0: c4 c5
	ldy $e688                ; $8ef2: ac 88 e6
	bne $8f52                ; $8ef5: d0 5b
loc_8ef7:
	dec $1122,x              ; $8ef7: de 22 11
	ora $d5,x                ; $8efa: 15 d5
	txa                      ; $8efc: 8a
	rol $2c                  ; $8efd: 26 2c
	eor $e401                ; $8eff: 4d 01 e4
	ldy $05,x                ; $8f02: b4 05
	ora $56                  ; $8f04: 05 56
	rol $2c                  ; $8f06: 26 2c
	*isc $92e7,x             ; $8f08: ff e7 92
	*lax #$17                ; $8f0b: ab 17
	sta $42c6                ; $8f0d: 8d c6 42
	eor ($67,x)              ; $8f10: 41 67
	*sre $70cf               ; $8f12: 4f cf 70
	dec $e672,x              ; $8f15: de 72 e6
	pha                      ; $8f18: 48
	adc $86,x                ; $8f19: 75 86
	*sbc #$c3                ; $8f1b: eb c3
	stx $8a,y                ; $8f1d: 96 8a
	lda ($31),y              ; $8f1f: b1 31
	pla                      ; $8f21: 68
	*nop $9c,x               ; $8f22: d4 9c
	lda $4b,x                ; $8f24: b5 4b
	dex                      ; $8f26: ca
	lda ($31),y              ; $8f27: b1 31
	ror $2d,x                ; $8f29: 76 2d
entry_8f2b:
	eor $bd5f                ; $8f2b: 4d 5f bd
	*nop                     ; $8f2e: 7a
	and $27,x                ; $8f2f: 35 27
	and $f352                ; $8f31: 2d 52 f3
	*nop $1ed0,x             ; $8f34: 3c d0 1e
	*isc ($f5,x)             ; $8f37: e3 f5
	*jam                     ; $8f39: 62
	brk                      ; $8f3a: 00

; === Block $8dbc-$8dbe (Code) ===
entry_8dbc:
	asl $f2                  ; $8dbc: 06 f2

; === Block $8dc1-$8e5c (Code) ===
loc_8dc1:
	*sre $ebab,y             ; $8dc1: 5b ab eb
	*lax $209f               ; $8dc4: af 9f 20 PPUDATA
	*dcp $b4                 ; $8dc7: c7 b4
	sbc $11,x                ; $8dc9: f5 11
	*rla $bf,x               ; $8dcb: 37 bf
	*nop #$79                ; $8dcd: c2 79
	sbc #$f8                 ; $8dcf: e9 f8
	*jam                     ; $8dd1: 22
	*nop $767c,x             ; $8dd2: dc 7c 76
	bit $0f29                ; $8dd5: 2c 29 0f
	*dcp $66,x               ; $8dd8: d7 66
	adc $9fae,x              ; $8dda: 7d ae 9f
	*rla ($88,x)             ; $8ddd: 23 88
	*jam                     ; $8ddf: 42
	adc #$f5                 ; $8de0: 69 f5
	*nop #$ca                ; $8de2: 82 ca
	adc $c9,x                ; $8de4: 75 c9
	sta $f171                ; $8de6: 8d 71 f1
	*sre $c650               ; $8de9: 4f 50 c6
	*dcp $52b7,x             ; $8dec: df b7 52
	sbc $3eee,y              ; $8def: f9 ee 3e PPUADDR
	*rla ($4a),y             ; $8df2: 33 4a
	cli                      ; $8df4: 58
	*isc $7c                 ; $8df5: e7 7c
	adc $7d85,y              ; $8df7: 79 85 7d
	ora $f0e2,x              ; $8dfa: 1d e2 f0
	sbc ($b8),y              ; $8dfd: f1 b8
	sed                      ; $8dff: f8
	cpx $7159                ; $8e00: ec 59 71
	*jam                     ; $8e03: 42
	*sre $b15a,x             ; $8e04: 5f 5a b1
	*dcp $2986,x             ; $8e07: df 86 29 PPUADDR
	*jam                     ; $8e0a: f2
	*rla $0d21               ; $8e0b: 2f 21 0d
	*nop $79a7,x             ; $8e0e: 5c a7 79
	*nop #$d7                ; $8e11: 82 d7
	*sre $1251               ; $8e13: 4f 51 12
	and $f7d5                ; $8e16: 2d d5 f7
	ldy $3df7,x              ; $8e19: bc f7 3d PPUDATA
	dec $f7                  ; $8e1c: c6 f7
	sbc ($6d,x)              ; $8e1e: e1 6d
	and $6728                ; $8e20: 2d 28 67
	clv                      ; $8e23: b8
	iny                      ; $8e24: c8
	dec $1a1d                ; $8e25: ce 1d 1a
	bvc $8e07                ; $8e28: 50 dd
loc_8e2a:
	adc $37,x                ; $8e2a: 75 37
	*jam                     ; $8e2c: 02
	cmp $5368,x              ; $8e2d: dd 68 53
	*lax $46                 ; $8e30: a7 46
	*nop                     ; $8e32: fa
	asl $5be3,x              ; $8e33: 1e e3 5b
	eor $ff38,y              ; $8e36: 59 38 ff
	and $25                  ; $8e39: 25 25
	sta $3f42,y              ; $8e3b: 99 42 3f PPUSTATUS
	cmp #$2f                 ; $8e3e: c9 2f
	sbc $b3                  ; $8e40: e5 b3
	*sre $af,x               ; $8e42: 57 af
	*rra $75cf,y             ; $8e44: 7b cf 75
	dec $24                  ; $8e47: c6 24
	*isc $38e8,y             ; $8e49: fb e8 38 PPUCTRL
	*sre $bd,x               ; $8e4c: 57 bd
	sbc ($2f,x)              ; $8e4e: e1 2f
	*sha $7f21,y             ; $8e50: 9f 21 7f
	lsr $d0c7                ; $8e53: 4e c7 d0
	*lax $ee                 ; $8e56: a7 ee
	ror                      ; $8e58: 6a
	nop                      ; $8e59: ea
	*nop                     ; $8e5a: fa
	iny                      ; $8e5b: c8
	rti                      ; $8e5c: 40

; === Block $8dcc-$8dce (Code) ===
entry_8dcc:
	cmp ($28),y              ; $8dcc: d1 28

; === Block $8dd5-$8dd8 (Code) ===
entry_8dd5:
	pla                      ; $8dd5: 68
	sbc $9a,x                ; $8dd6: f5 9a

; === Block $8dd9-$8ddc (Code) ===
loc_8dd9:
	*slo ($67),y             ; $8dd9: 13 67
	clv                      ; $8ddb: b8

; === Block $8ebf-$8ec3 (Code) ===
loc_8ebf:
	*xaa #$c6                ; $8ebf: 8b c6
	*isc ($5a,x)             ; $8ec1: e3 5a

; === Block $8edd-$8ee3 (Code) ===
loc_8edd:
	and ($31),y              ; $8edd: 31 31
	ror $b9                  ; $8edf: 66 b9
	eor $10                  ; $8ee1: 45 10

; === Block $8ef3-$8efd (Code) ===
loc_8ef3:
	dey                      ; $8ef3: 88
	inc $d0                  ; $8ef4: e6 d0
	*sre $22de,y             ; $8ef6: 5b de 22 PPUADDR
	ora ($15),y              ; $8ef9: 11 15
	cmp $8a,x                ; $8efb: d5 8a

; === Block $8f52-$8f7b (Code) ===
loc_8f52:
	eor $23dc                ; $8f52: 4d dc 23 OAMDATA
	cpx $92f8                ; $8f55: ec f8 92
	*nop #$1c                ; $8f58: 82 1c
	*sax $de80               ; $8f5a: 8f 80 de
	ldy $375e                ; $8f5d: ac 5e 37 PPUADDR
	*nop                     ; $8f60: 1a
	lda $e6                  ; $8f61: a5 e6
	sbc ($1f,x)              ; $8f63: e1 1f
	*rra $d1                 ; $8f65: 67 d1
	lda #$3d                 ; $8f67: a9 3d
	cli                      ; $8f69: 58
	*tas $7ca9,y             ; $8f6a: 9b a9 7c
	cmp $aa                  ; $8f6d: c5 aa
	*jam                     ; $8f6f: 52
	adc $381b,y              ; $8f70: 79 1b 38 OAMADDR
	*sre $a3,x               ; $8f73: 57 a3
	txs                      ; $8f75: 9a
	*sre ($e5,x)             ; $8f76: 43 e5
	clv                      ; $8f78: b8
	sbc $ad                  ; $8f79: e5 ad

; === Block $8f7b-$8f8d (Code) ===
entry_8f7b:
	sty $bd,x                ; $8f7b: 94 bd
	nop                      ; $8f7d: ea
	ldx #$62                 ; $8f7e: a2 62
	*jam                     ; $8f80: 62
	iny                      ; $8f81: c8
	*rla $5920               ; $8f82: 2f 20 59
	*isc $46                 ; $8f85: e7 46
	ldy $fa                  ; $8f87: a4 fa
	lda $e5                  ; $8f89: a5 e5
	*nop $4c,x               ; $8f8b: 54 4c
	jmp $855b                ; $8f8d: 4c 5b 85

; === Block $8f7c-$8f80 (Code) ===
entry_8f7c:
	lda $a2ea,x              ; $8f7c: bd ea a2
	*jam                     ; $8f7f: 62

; === Block $8f9a-$8f9e (Code) ===
entry_8f9a:
	ora $84                  ; $8f9a: 05 84
	*anc #$29                ; $8f9c: 0b 29
	rti                      ; $8f9e: 40

; === Block $9012-$903a (Code) ===
entry_9012:
	sec                      ; $9012: 38
	*sax $07                 ; $9013: 87 07
	lda $62,x                ; $9015: b5 62
	*jam                     ; $9017: 62
	*nop $402c,x             ; $9018: dc 2c 40
	*dcp $de70,x             ; $901b: df 70 de
	*rra ($dc),y             ; $901e: 73 dc
	pla                      ; $9020: 68
	*jam                     ; $9021: 72
	*xaa #$b9                ; $9022: 8b b9
	*rra $46,x               ; $9024: 77 46
	nop                      ; $9026: ea
	eor $1713,y              ; $9027: 59 13 17
	*jam                     ; $902a: 62
	cmp $e4                  ; $902b: c5 e4
	*jam                     ; $902d: 42
	ora $97                  ; $902e: 05 97
	*isc ($47,x)             ; $9030: e3 47
	rol $eb                  ; $9032: 26 eb
	*dcp ($1e,x)             ; $9034: c3 1e
	cmp $89,x                ; $9036: d5 89
	*xaa #$b1                ; $9038: 8b b1

; === Block $903a-$90ba (Code) ===
entry_903a:
	*jam                     ; $903a: 62
	*jam                     ; $903b: f2
	and ($02,x)              ; $903c: 21 02
	*axs #$f1                ; $903e: cb f1
	*lax ($93,x)             ; $9040: a3 93
	adc $e1,x                ; $9042: 75 e1
	*sax $c46a               ; $9044: 8f 6a c4
	cmp $b8                  ; $9047: c5 b8
	cli                      ; $9049: 58
	*sha ($ff),y             ; $904a: 93 ff
	dex                      ; $904c: ca
	*sre $eed1               ; $904d: 4f d1 ee
	*lax ($5e),y             ; $9050: b3 5e
	*lax $9f,y               ; $9052: b7 9f
	*nop                     ; $9054: 5a
	ora ($55,x)              ; $9055: 01 55
	*nop #$8b                ; $9057: 89 8b
	and $2dff,x              ; $9059: 3d ff 2d PPUDATA
	asl $5c,x                ; $905c: 16 5c
	cmp $b499,x              ; $905e: dd 99 b4
	adc $8c4e,x              ; $9061: 7d 4e 8c
	*lax $aa98               ; $9064: af 98 aa
	cpy $c5                  ; $9067: c4 c5
	ldy $e688                ; $9069: ac 88 e6
	bne $90c8                ; $906c: d0 5a
loc_906e:
	and $1234,y              ; $906e: 39 34 12
	*sre ($da,x)             ; $9071: 43 da
	lda ($31),y              ; $9073: b1 31
	*rra $4f                 ; $9075: 67 4f
	cpy $95b5                ; $9077: cc b5 95
	sta $e19e                ; $907a: 8d 9e e1
	ldy $39ee,x              ; $907d: bc ee 39 PPUADDR
	adc #$ff                 ; $9080: 69 ff
	plp                      ; $9082: 28
	sbc ($ac,x)              ; $9083: e1 ac
	*jam                     ; $9085: 32
	*slo ($fb),y             ; $9086: 13 fb
	ror                      ; $9088: 6a
	cpy $c5                  ; $9089: c4 c5
	sty $89,x                ; $908b: 94 89
	rol $82,x                ; $908d: 36 82
	*dcp $8a71               ; $908f: cf 71 8a
	*sbc #$e4                ; $9092: eb e4
	adc #$43                 ; $9094: 69 43
	and ($55),y              ; $9096: 31 55
	*xaa #$c6                ; $9098: 8b c6
	*isc ($2f,x)             ; $909a: e3 2f
	*nop #$ea                ; $909c: c2 ea
	*rla $162d,x             ; $909e: 3f 2d 16
	*nop $81,x               ; $90a1: 14 81
loc_90a3:
	*isc $ec57               ; $90a3: ef 57 ec
	*dcp $ea                 ; $90a6: c7 ea
	cpy $c5                  ; $90a8: c4 c5
	sta $323f,x              ; $90aa: 9d 3f 32 PPUDATA
	*nop $9c37,x             ; $90ad: dc 37 9c
	tsx                      ; $90b0: ba
	stx $be29                ; $90b1: 8e 29 be
entry_90b4:
	*isc $eb,x               ; $90b4: f7 eb
	*nop $9d                 ; $90b6: 44 9d
	*nop $4c,x               ; $90b8: 54 4c
	jmp $855b                ; $90ba: 4c 5b 85

; === Block $90c8-$90cb (Code) ===
loc_90c8:
	sta $bae1,y              ; $90c8: 99 e1 ba

; === Block $90cb-$90fd (Code) ===
entry_90cb:
	and $ab,x                ; $90cb: 35 ab
	*slo ($16),y             ; $90cd: 13 16
	sbc ($6f,x)              ; $90cf: e1 6f
	cmp $239b                ; $90d1: cd 9b 23 OAMADDR
	cmp $6628,x              ; $90d4: dd 28 66
	eor $3499,y              ; $90d7: 59 99 34 PPUMASK
	cmp $78e6,x              ; $90da: dd e6 78
	ror $6a8d                ; $90dd: 6e 8d 6a
entry_90e0:
	cpy $c5                  ; $90e0: c4 c5
	ldy $e688                ; $90e2: ac 88 e6
	bne $9142                ; $90e5: d0 5b
loc_90e7:
	*sha $e293,y             ; $90e7: 9f 93 e2
	jsr $557b                ; $90ea: 20 7b 55
loc_90ed:
	*slo ($13),y             ; $90ed: 13 13
	*slo $62,x               ; $90ef: 17 62
	*nop $7e,x               ; $90f1: d4 7e
	*sre ($e7),y             ; $90f3: 53 e7
	eor $cd11,y              ; $90f5: 59 11 cd
	ldy #$b7                 ; $90f8: a0 b7
	*rla $c427,x             ; $90fa: 3f 27 c4
	rti                      ; $90fd: 40

; === Block $90df-$90e0 (Code) ===
loc_90df:
	ror                      ; $90df: 6a

; === Block $9128-$913a (Code) ===
loc_9128:
	sbc #$66                 ; $9128: e9 66
	rol                      ; $912a: 2a
	tay                      ; $912b: a8
	tya                      ; $912c: 98
	tya                      ; $912d: 98
	*las $a616,y             ; $912e: bb 16 a6
	eor ($c8),y              ; $9131: 51 c8
	adc ($eb),y              ; $9133: 71 eb
	*nop $48,x               ; $9135: d4 48
	bit $399f                ; $9137: 2c 9f 39 PPUDATA

; === Block $913a-$9142 (Code) ===
loc_913a:
	stx $6f,y                ; $913a: 96 6f
	*rla ($c3),y             ; $913c: 33 c3
	*nop $6b,x               ; $913e: 74 6b
	lsr $2a,x                ; $9140: 56 2a

; === Block $9142-$919b (Code) ===
loc_9142:
	ror $7b                  ; $9142: 66 7b
	beq $913a                ; $9144: f0 f4
loc_9146:
	bvs $90df                ; $9146: 70 97
loc_9148:
	ldx $3494,y              ; $9148: be 94 34 OAMDATA
	and $dc45,y              ; $914b: 39 45 dc
	bcs $9188                ; $914e: b0 38
loc_9150:
	sbc ($24,x)              ; $9150: e1 24
	*anc #$31                ; $9152: 0b 31
	ror $2d,x                ; $9154: 76 2d
	eor $bd5f                ; $9156: 4d 5f bd
	adc $51,x                ; $9159: 75 51
	and ($00),y              ; $915b: 31 00
	*jam                     ; $915d: 62
	cpx $985a                ; $915e: ec 5a 98
	inc $b3b1                ; $9161: ee b1 b3
	*nop $d9,x               ; $9164: d4 d9
	pla                      ; $9166: 68
	*rra $297b,x             ; $9167: 7f 7b 29 OAMADDR
	*lax ($00),y             ; $916a: b3 00
	eor $51,x                ; $916c: 55 51
	and ($31),y              ; $916e: 31 31
	ror $2c,x                ; $9170: 76 2c
	adc #$b6                 ; $9172: 69 b6
	cmp #$82                 ; $9174: c9 82
	bit $5fd0                ; $9176: 2c d0 5f
	stx $94,y                ; $9179: 96 94
	bpl $9128                ; $917b: 10 ab
loc_917d:
	*slo ($16),y             ; $917d: 13 16
	adc #$59                 ; $917f: 69 59
	*nop #$c9                ; $9181: 82 c9
	*isc ($56),y             ; $9183: f3 56
	rol $2c                  ; $9185: 26 2c
	eor #$8d                 ; $9187: 49 8d
	sta $f964,y              ; $9189: 99 64 f9
	cpy $32b3                ; $918c: cc b3 32 OAMADDR
	adc #$bb                 ; $918f: 69 bb
	cpy $ddf0                ; $9191: cc f0 dd
	*nop                     ; $9194: 1a
	cmp $44,x                ; $9195: d5 44
	cpy $c5                  ; $9197: c4 c5
	*lax ($58,x)             ; $9199: a3 58
	rti                      ; $919b: 40

; === Block $9188-$918f (Code) ===
loc_9188:
	sta $6499                ; $9188: 8d 99 64
	sbc $b3cc,y              ; $918b: f9 cc b3
	*jam                     ; $918e: 32

; === Block $91af-$91d1 (Code) ===
entry_91af:
	adc ($02,x)              ; $91af: 61 02
	cmp #$38                 ; $91b1: c9 38
	cpx $ca                  ; $91b3: e4 ca
	rol $4a4a,x              ; $91b5: 3e 4a 4a
	ldy $c354                ; $91b8: ac 54 c3
	cpy #$7f                 ; $91bb: c0 7f
	*sax ($21,x)             ; $91bd: 83 21
	*nop $65,x               ; $91bf: 34 65
	*isc ($e4),y             ; $91c1: f3 e4
	*rla $4acb               ; $91c3: 2f cb 4a
	*sre $184a,x             ; $91c6: 5f 4a 18
	sbc $ab                  ; $91c9: e5 ab
	*sax $a78c               ; $91cb: 8f 8c a7
	inc $4207                ; $91ce: ee 07 42

; === Block $91b6-$91b8 (Code) ===
entry_91b6:
	lsr                      ; $91b6: 4a
	lsr                      ; $91b7: 4a

; === Block $91cd-$91d1 (Code) ===
entry_91cd:
	*lax $ee                 ; $91cd: a7 ee
	*slo $42                 ; $91cf: 07 42
	rts                      ; $91d1: 60

; === Block $91e3-$921e (Code) ===
entry_91e3:
	*jam                     ; $91e3: 62
	cpx $9a5a                ; $91e4: ec 5a 9a
	*lax $f77a,y             ; $91e7: bf 7a f7
	*anc #$59                ; $91ea: 0b 59
	sta $1e27,y              ; $91ec: 99 27 1e
	cmp $44,x                ; $91ef: d5 44
	ldx #$62                 ; $91f1: a2 62
	sbc ($e5),y              ; $91f3: f1 e5
	*lax ($13,x)             ; $91f5: a3 13
	*dcp $ab92               ; $91f7: cf 92 ab
	*slo $8f,x               ; $91fa: 17 8f
	and $e01b                ; $91fc: 2d 1b e0
	sta $e57e,x              ; $91ff: 9d 7e e5
	lsr $2a,x                ; $9202: 56 2a
	ror $bf                  ; $9204: 66 bf
	and $9212,x              ; $9206: 3d 12 92
	*nop $7d,x               ; $9209: d4 7d
	rol $d9,x                ; $920b: 36 d9
	*nop #$dc                ; $920d: 80 dc
	and $bf70                ; $920f: 2d 70 bf
	*isc $4a,x               ; $9212: f7 4a
	*sre $184a,x             ; $9214: 5f 4a 18
	sbc $ab                  ; $9217: e5 ab
	*sax $a88a               ; $9219: 8f 8a a8
	sty $4c,x                ; $921c: 94 4c
	jmp $8b5d                ; $921e: 4c 5d 8b

; === Block $9213-$9214 (Code) ===
entry_9213:
	lsr                      ; $9213: 4a

; === Block $9220-$9241 (Code) ===
entry_9220:
	*xaa #$32                ; $9220: 8b 32
	adc #$bb                 ; $9222: 69 bb
	sta $a8                  ; $9224: 85 a8
	*sha ($15),y             ; $9226: 93 15
	*jam                     ; $9228: 62
	beq $929a                ; $9229: f0 6f
loc_922b:
	eor $314e,x              ; $922b: 5d 4e 31 PPUADDR
	*sre $22,x               ; $922e: 57 22
	*sre $53d7,y             ; $9230: 5b d7 53
	sty $c855                ; $9233: 8c 55 c8
	stx $f5,y                ; $9236: 96 f5
	*nop $e3,x               ; $9238: d4 e3
	ora $220c,x              ; $923a: 1d 0c 22 OAMDATA
	*jam                     ; $923d: 62
	cpx $945a                ; $923e: ec 5a 94

; === Block $923b-$923e (Code) ===
entry_923b:
	*nop $6222               ; $923b: 0c 22 62

; === Block $9241-$93a7 (Code) ===
entry_9241:
	*jam                     ; $9241: f2
	and ($84),y              ; $9242: 31 84
	*rra $90,x               ; $9244: 77 90
	eor $f9ef,y              ; $9246: 59 ef f9
	eor $cf17                ; $9249: 4d 17 cf
	adc ($97),y              ; $924c: 71 97
	sbc ($77,x)              ; $924e: e1 77
	*slo $5e52               ; $9250: 0f 52 5e
	*slo $4a74,x             ; $9253: 1f 74 4a
entry_9256:
	rol $2a                  ; $9256: 26 2a
	ror $a3                  ; $9258: 66 a3
	txa                      ; $925a: 8a
	*rra $f3ac               ; $925b: 6f ac f3
	inc $f3e5,x              ; $925e: fe e5 f3
	cpx $2f                  ; $9261: e4 2f
	*axs #$4a                ; $9263: cb 4a
	*sre $184a,x             ; $9265: 5f 4a 18
	sbc $ab                  ; $9268: e5 ab
	*sax $a78c               ; $926a: 8f 8c a7
	inc $7f8d                ; $926d: ee 8d 7f
	inc $d202,x              ; $9270: fe 02 d2
	*nop #$19                ; $9273: 82 19
	*xaa #$b1                ; $9275: 8b b1
	ror                      ; $9277: 6a
	ror                      ; $9278: 6a
	sbc $dceb,x              ; $9279: fd eb dc
	and $2dc7,x              ; $927c: 3d c7 2d PPUDATA
	*rra $94                 ; $927f: 67 94
	pla                      ; $9281: 68
	cpx #$ad                 ; $9282: e0 ad
	ora $54,x                ; $9284: 15 54
	lsr                      ; $9286: 4a
	and $13                  ; $9287: 25 13
	ora $30,x                ; $9289: 15 30
	beq $92ec                ; $928b: f0 5f
loc_928d:
	lda $52ea,x              ; $928d: bd ea 52
	eor $98,x                ; $9290: 55 98
entry_9292:
	*dcp $e3,x               ; $9292: d7 e3
	sta $58,x                ; $9294: 95 58
	ldy $336e,x              ; $9296: bc 6e 33 PPUADDR
	*nop $3f5b,x             ; $9299: fc 5b 3f OAMADDR
	dec $ab,x                ; $929c: d6 ab
entry_929e:
	bmi $92f8                ; $929e: 30 58
loc_92a0:
	sta $de4f,x              ; $92a0: 9d 4f de
	ora $961b,x              ; $92a3: 1d 1b 96
	sbc $2e92,y              ; $92a6: f9 92 2e PPUSTATUS
	eor $ab80,y              ; $92a9: 59 80 ab
	*slo ($7b),y             ; $92ac: 13 7b
	*sbc #$1b                ; $92ae: eb 1b
	*jam                     ; $92b0: 32
	*dcp $e749,x             ; $92b1: df 49 e7
	*lax $34e5,y             ; $92b4: bf e5 34 PPUSCROLL
entry_92b7:
	*sre $c63d,x             ; $92b7: 5f 3d c6
	*lax ($f2,x)             ; $92ba: a3 f2
	*sha ($f6),y             ; $92bc: 93 f6
	ldy $594c                ; $92be: ac 4c 59
	ora $84                  ; $92c1: 05 84
	*anc #$70                ; $92c3: 0b 70
	dec $e872,x              ; $92c5: de 72 e8
	inc $b3b1,x              ; $92c8: fe b1 b3
	*lax #$15                ; $92cb: ab 15
	*rla ($5b),y             ; $92cd: 33 5b
	and #$37                 ; $92cf: 29 37
	lsr $a41c,x              ; $92d1: 5e 1c a4
	lda $1c,x                ; $92d4: b5 1c
	*sre ($76),y             ; $92d6: 53 76
	bne $932e                ; $92d8: d0 54
loc_92da:
	cmp ($7e),y              ; $92da: d1 7e
	ora $fc1a,x              ; $92dc: 1d 1a fc
	*nop $4a,x               ; $92df: f4 4a
	lsr                      ; $92e1: 4a
	ora $b6,x                ; $92e2: 15 b6
	*sre $423e,x             ; $92e4: 5f 3e 42
	*nop $a2aa,x             ; $92e7: fc aa a2
	eor ($31),y              ; $92ea: 51 31
loc_92ec:
	sei                      ; $92ec: 78
	*nop $386a,x             ; $92ed: dc 6a 38 PPUSTATUS
	ldx $f9                  ; $92f0: a6 f9
	eor $36d6,x              ; $92f2: 5d d6 36 PPUADDR
	adc $56                  ; $92f5: 65 56
	*rla $8d1b               ; $92f7: 2f 1b 8d
	*sre $14                 ; $92fa: 47 14
	*dcp $c735,x             ; $92fc: df 35 c7
	*lax $56bf,y             ; $92ff: bf bf 56
	*xaa #$41                ; $9302: 8b 41
	*sre ($45),y             ; $9304: 53 45
	sed                      ; $9306: f8
	*nop $55,x               ; $9307: 74 55
	*nop #$8b                ; $9309: 89 8b
entry_930b:
	*nop                     ; $930b: 3a
	ror $b865,x              ; $930c: 7e 65 b8
	*rra $7339               ; $930f: 6f 39 73
	bit $3a                  ; $9312: 24 3a
	*dcp ($75,x)             ; $9314: c3 75
	sbc ($cb,x)              ; $9316: e1 cb
	eor $58                  ; $9318: 45 58
	ldy $6879,x              ; $931a: bc 79 68
	*dcp $8714,x             ; $931d: df 14 87
	iny                      ; $9320: c8
	ora $58,x                ; $9321: 15 58
entry_9323:
	*tas $e1b0,y             ; $9323: 9b b0 e1
	*isc $a3c3,y             ; $9326: fb c3 a3
	*sre ($94,x)             ; $9329: 43 94
	eor $03cb,x              ; $932b: 5d cb 03
loc_932e:
	lda ($30,x)              ; $932e: a1 30
	*sre ($3d,x)             ; $9330: 43 3d
	dec $5f                  ; $9332: c6 5f
	sta $6c                  ; $9334: 85 6c
	*lax $ee                 ; $9336: a7 ee
	*nop $2d47,x             ; $9338: 5c 47 2d PPUDATA
	ror $af                  ; $933b: 66 af
	*dcp $1b                 ; $933d: c7 1b
	*dcp $12ad,x             ; $933f: df ad 12
	adc $f97c,y              ; $9342: 79 7c f9
	*anc #$f2                ; $9345: 0b f2
	tax                      ; $9347: aa
	*nop #$44                ; $9348: 89 44
	cmp $e3                  ; $934a: c5 e3
	adc ($bd),y              ; $934c: 71 bd
	*nop                     ; $934e: fa
	cmp ($27),y              ; $934f: d1 27
	*lax ($5f,x)             ; $9351: a3 5f
	*isc $b480,x             ; $9353: ff 80 b4
	ldy #$86                 ; $9356: a0 86
	*rra $848c,y             ; $9358: 7b 8c 84
	*nop #$aa                ; $935b: 82 aa
	*nop #$8b                ; $935d: 89 8b
	dec $e3                  ; $935f: c6 e3
	*rra $a2f5,y             ; $9361: 7b f5 a2
	*sre $bf46               ; $9364: 4f 46 bf
	*isc $6901,x             ; $9367: ff 01 69
	eor ($0c,x)              ; $936a: 41 0c
	cmp $55                  ; $936c: c5 55
	*slo ($13),y             ; $936e: 13 13
	asl $7b,x                ; $9370: 16 7b
	beq $934d                ; $9372: f0 d9
loc_9374:
	stx $e2,y                ; $9374: 96 e2
	ora $35ee,y              ; $9376: 19 ee 35 PPUADDR
	sta $77,x                ; $9379: 95 77
entry_937b:
	*nop #$dc                ; $937b: 80 dc
	bit $9bd4                ; $937d: 2c d4 9b
	*rra $6b                 ; $9380: 67 6b
	sta ($8c),y              ; $9382: 91 8c
	*isc $19,x               ; $9384: f7 19
	bit $95                  ; $9386: 24 95
	stx $5b                  ; $9388: 86 5b
	adc $26                  ; $938a: 65 26
entry_938c:
	*nop                     ; $938c: fa
	bvc $9365                ; $938d: 50 d6
loc_938f:
	cmp #$8a                 ; $938f: c9 8a
	*nop $6a,x               ; $9391: f4 6a
	*nop                     ; $9393: 7a
	iny                      ; $9394: c8
	dec $af,x                ; $9395: d6 af
	ldx #$aa                 ; $9397: a2 aa
	rol $2a                  ; $9399: 26 2a
	ror $b3                  ; $939b: 66 b3
	asl $bc1f                ; $939d: 0e 1f bc
	*nop                     ; $93a0: 3a
	*nop $39,x               ; $93a1: 34 39
	eor $df                  ; $93a3: 45 df
	ora $f8,x                ; $93a5: 15 f8
	rts                      ; $93a7: 60

; === Block $926c-$9273 (Code) ===
entry_926c:
	*lax $ee                 ; $926c: a7 ee
	sta $fe7f                ; $926e: 8d 7f fe
	*jam                     ; $9271: 02
	*jam                     ; $9272: d2

; === Block $9276-$9278 (Code) ===
entry_9276:
	lda ($6a),y              ; $9276: b1 6a

; === Block $9280-$9282 (Code) ===
entry_9280:
	sty $68,x                ; $9280: 94 68

; === Block $929a-$92a0 (Code) ===
loc_929a:
	*sre $d63f,y             ; $929a: 5b 3f d6
	*lax #$30                ; $929d: ab 30
	cli                      ; $929f: 58

; === Block $92a7-$92b0 (Code) ===
entry_92a7:
	*jam                     ; $92a7: 92
	rol $8059                ; $92a8: 2e 59 80
	*lax #$13                ; $92ab: ab 13
	*rra $1beb,y             ; $92ad: 7b eb 1b

; === Block $92b5-$92b7 (Code) ===
entry_92b5:
	sbc $34                  ; $92b5: e5 34

; === Block $92bf-$92bf (Code) ===
entry_92bf:
	jmp $0559                ; $92bf: 4c 59 05

; === Block $92d9-$92e1 (Code) ===
entry_92d9:
	*nop $d1,x               ; $92d9: 54 d1
	ror $1a1d,x              ; $92db: 7e 1d 1a
	*nop $4af4,x             ; $92de: fc f4 4a

; === Block $92f8-$92ff (Code) ===
loc_92f8:
	*slo $478d,y             ; $92f8: 1b 8d 47
	*nop $df,x               ; $92fb: 14 df
	and $c7,x                ; $92fd: 35 c7

; === Block $931c-$931d (Code) ===
entry_931c:
	pla                      ; $931c: 68

; === Block $932f-$9334 (Code) ===
entry_932f:
	bmi $9374                ; $932f: 30 43
loc_9331:
	and $5fc6,x              ; $9331: 3d c6 5f

; === Block $9339-$933b (Code) ===
entry_9339:
	*sre $2d                 ; $9339: 47 2d

; === Block $934d-$935d (Code) ===
loc_934d:
	lda $d1fa,x              ; $934d: bd fa d1
	*rla $a3                 ; $9350: 27 a3
	*sre $80ff,x             ; $9352: 5f ff 80
	ldy $a0,x                ; $9355: b4 a0
	stx $7b                  ; $9357: 86 7b
	sty $8284                ; $9359: 8c 84 82
	tax                      ; $935c: aa

; === Block $9365-$9367 (Code) ===
loc_9365:
	lsr $bf                  ; $9365: 46 bf

; === Block $9373-$9376 (Code) ===
entry_9373:
	cmp $e296,y              ; $9373: d9 96 e2

; === Block $937a-$9382 (Code) ===
entry_937a:
	*rra $80,x               ; $937a: 77 80
	*nop $d42c,x             ; $937c: dc 2c d4
	*tas $6b67,y             ; $937f: 9b 67 6b

; === Block $9383-$9386 (Code) ===
entry_9383:
	sty $19f7                ; $9383: 8c f7 19

; === Block $939e-$93a1 (Code) ===
entry_939e:
	*slo $3abc,x             ; $939e: 1f bc 3a OAMDATA

; === Block $94a2-$94a6 (Code) ===
entry_94a2:
	*slo ($13),y             ; $94a2: 13 13
	asl $f2,x                ; $94a4: 16 f2

; === Block $94a5-$952d (Code) ===
entry_94a5:
	*jam                     ; $94a5: f2
	*sax $2c,y               ; $94a6: 97 2c
	*isc $19,x               ; $94a8: f7 19
	clv                      ; $94aa: b8
	adc #$3c                 ; $94ab: 69 3c
	lda $1d0e,y              ; $94ad: b9 0e 1d
	*slo ($f9,x)             ; $94b0: 03 f9
	*sre $68dd               ; $94b2: 4f dd 68
	*isc $8e,x               ; $94b5: f7 8e
	ldx $ba0b                ; $94b7: ae 0b ba
	rol $26                  ; $94ba: 26 26
	rol $99c5                ; $94bc: 2e c5 99
	*nop $dd,x               ; $94bf: 34 dd
	*nop #$df                ; $94c1: c2 df
	*nop $f3                 ; $94c3: 04 f3
	sbc ($ee),y              ; $94c5: f1 ee
	*lax ($5e),y             ; $94c7: b3 5e
entry_94c9:
	adc $9b                  ; $94c9: 65 9b
	cpy $ddf0                ; $94cb: cc f0 dd
	*nop                     ; $94ce: 1a
	cmp $89,x                ; $94cf: d5 89
	*sax $e3c6               ; $94d1: 8f c6 e3
	*rra $4687,x             ; $94d4: 7f 87 46
	rol $1b40                ; $94d7: 2e 40 1b
entry_94da:
	*nop #$bd                ; $94da: c2 bd
	*slo $6dd3,x             ; $94dc: 1f d3 6d
	tya                      ; $94df: 98
	*jam                     ; $94e0: 02
	dex                      ; $94e1: ca
	*jam                     ; $94e2: d2
	*dcp $56,x               ; $94e3: d7 56
	rol $2d                  ; $94e5: 26 2d
	*sre $29                 ; $94e7: 47 29
	*jam                     ; $94e9: 02
	*dcp $9b71               ; $94ea: cf 71 9b
	stx $79                  ; $94ed: 86 79
	*axs #$a3                ; $94ef: cb a3
	*tas $a97c,y             ; $94f1: 9b 7c a9
	*jam                     ; $94f4: f2
	lsr $4cac                ; $94f5: 4e ac 4c
	*nop                     ; $94f8: 5a
	cpy $a225                ; $94f9: cc 25 a2
	*dcp $9b71               ; $94fc: cf 71 9b
	*sax $78                 ; $94ff: 87 78
	tya                      ; $9501: 98
	*lax ($ab),y             ; $9502: b3 ab
	bmi $9560                ; $9504: 30 5a
loc_9506:
	*jam                     ; $9506: 52
entry_9507:
	sbc $33ee,y              ; $9507: f9 ee 33 PPUADDR
	bvs $94fb                ; $950a: 70 ef
loc_950c:
	*slo ($16),y             ; $950c: 13 16
	sbc ($6f,x)              ; $950e: e1 6f
	bmi $951c                ; $9510: 30 0a
loc_9512:
	*sre ($da,x)             ; $9512: 43 da
	lda ($44),y              ; $9514: b1 44
	cmp $d8                  ; $9516: c5 d8
	*lax $5d,y               ; $9518: b7 5d
	inc $870e,x              ; $951a: fe 0e 87
	ldx $41a2,y              ; $951d: be a2 41
	*nop $f9                 ; $9520: 64 f9
	cpy $79b3                ; $9522: cc b3 79
	*shx $a31b,y             ; $9525: 9e 1b a3
	*nop                     ; $9528: 5a
	lda ($31),y              ; $9529: b1 31
	ror $2d,x                ; $952b: 76 2d
	jmp $90a3                ; $952d: 4c a3 90

; === Block $94e4-$94e9 (Code) ===
entry_94e4:
	lsr $26,x                ; $94e4: 56 26
	and $2947                ; $94e6: 2d 47 29 PPUDATA

; === Block $94ee-$94f1 (Code) ===
entry_94ee:
	adc $a3cb,y              ; $94ee: 79 cb a3

; === Block $94fb-$94ff (Code) ===
loc_94fb:
	ldx #$cf                 ; $94fb: a2 cf
	adc ($9b),y              ; $94fd: 71 9b

; === Block $9500-$9501 (Code) ===
entry_9500:
	sei                      ; $9500: 78

; === Block $9508-$950e (Code) ===
entry_9508:
	inc $7033                ; $9508: ee 33 70
	*isc $1613               ; $950b: ef 13 16

; === Block $9513-$9514 (Code) ===
entry_9513:
	*nop                     ; $9513: da

; === Block $951b-$9520 (Code) ===
entry_951b:
	asl $be87                ; $951b: 0e 87 be
	ldx #$41                 ; $951e: a2 41

; === Block $951c-$951e (Code) ===
loc_951c:
	*sax $be                 ; $951c: 87 be

; === Block $9533-$953e (Code) ===
entry_9533:
	bcc $958e                ; $9533: 90 59
loc_9535:
	rol $2c73,x              ; $9535: 3e 73 2c OAMADDR
	dec $8667,x              ; $9538: de 67 86
	inx                      ; $953b: e8
	dec $ac,x                ; $953c: d6 ac
	jmp $8b5d                ; $953e: 4c 5d 8b

; === Block $9543-$9550 (Code) ===
entry_9543:
	sta $a29e                ; $9543: 8d 9e a2
	eor ($64,x)              ; $9546: 41 64
	sbc $b3cc,y              ; $9548: f9 cc b3
	adc $1b9e,y              ; $954b: 79 9e 1b
	*lax ($5a,x)             ; $954e: a3 5a

; === Block $9547-$95c2 (Code) ===
entry_9547:
	*nop $f9                 ; $9547: 64 f9
	cpy $79b3                ; $9549: cc b3 79
	*shx $a31b,y             ; $954c: 9e 1b a3
	*nop                     ; $954f: 5a
	lda ($31),y              ; $9550: b1 31
	ror $2c,x                ; $9552: 76 2c
	cmp #$56                 ; $9554: c9 56
	*sre $a696,x             ; $9556: 5f 96 a6
	*nop $4d8f,x             ; $9559: dc 8f 4d
	*nop $48,x               ; $955c: d4 48
	bit $399f                ; $955e: 2c 9f 39 PPUDATA
	stx $6f,y                ; $9561: 96 6f
	*rla ($c3),y             ; $9563: 33 c3
	*nop $6b,x               ; $9565: 74 6b
	lsr $26,x                ; $9567: 56 26
	rol $99c5                ; $9569: 2e c5 99
	rol                      ; $956c: 2a
	*axs #$f2                ; $956d: cb f2
	*nop $db,x               ; $956f: d4 db
	sta $dd34,y              ; $9571: 99 34 dd
	*nop $82                 ; $9574: 44 82
	cmp #$f3                 ; $9576: c9 f3
	sta $f366,y              ; $9578: 99 66 f3
	*nop $4637,x             ; $957b: 3c 37 46
	lda $62,x                ; $957e: b5 62
	*jam                     ; $9580: 62
	bne $951c                ; $9581: d0 99
loc_9583:
	ror $5b                  ; $9583: 66 5b
	stx $f3                  ; $9585: 86 f3
	*shx $37e3,y             ; $9587: 9e e3 37 OAMADDR
	asl                      ; $958a: 0a
	lda ($78),y              ; $958b: b1 78
	*nop $796b,x             ; $958d: dc 6b 79
	*isc $f7cf,x             ; $9590: ff cf f7
	*nop #$10                ; $9593: c2 10
	ora ($b9),y              ; $9595: 11 b9
	*rra $b8                 ; $9597: 67 b8
	*nop $68b5,x             ; $9599: dc b5 68
	*nop                     ; $959c: 1a
	bvc $956b                ; $959d: 50 cc
entry_959f:
	eor $f1e2,x              ; $959f: 5d e2 f1
	clv                      ; $95a2: b8
	*dcp $8df4               ; $95a3: cf f4 8d
	*axs #$56                ; $95a6: cb 56
	sta ($a5,x)              ; $95a8: 81 a5
	*nop $9ac5               ; $95aa: 0c c5 9a
	ldy $16ee,x              ; $95ad: bc ee 16
	*isc $85,x               ; $95b0: f7 85
	*jam                     ; $95b2: 42
	sei                      ; $95b3: 78
	*sre ($dc,x)             ; $95b4: 43 dc
	lda $98                  ; $95b6: a5 98
	*lax $0b,y               ; $95b8: b7 0b
	bpl $95c3                ; $95ba: 10 07
loc_95bc:
	eor $12,x                ; $95bc: 55 12
	*nop #$89                ; $95be: 89 89
	*xaa #$b1                ; $95c0: 8b b1

; === Block $9560-$9563 (Code) ===
loc_9560:
	and $6f96,y              ; $9560: 39 96 6f

; === Block $956b-$956f (Code) ===
loc_956b:
	sta $cb2a,y              ; $956b: 99 2a cb
	*jam                     ; $956e: f2

; === Block $957a-$957e (Code) ===
entry_957a:
	*isc ($3c),y             ; $957a: f3 3c
	*rla $46,x               ; $957c: 37 46

; === Block $958e-$9590 (Code) ===
loc_958e:
	*arr #$79                ; $958e: 6b 79

; === Block $95a7-$95ad (Code) ===
entry_95a7:
	lsr $81,x                ; $95a7: 56 81
	lda $0c                  ; $95a9: a5 0c
	cmp $9a                  ; $95ab: c5 9a

; === Block $95c2-$95e4 (Code) ===
entry_95c2:
	ror                      ; $95c2: 6a
	adc $1c                  ; $95c3: 65 1c
	*sax $1e                 ; $95c5: 87 1e
	lda $a6ec,x              ; $95c7: bd ec a6
	cpy $5501                ; $95ca: cc 01 55
	txa                      ; $95cd: 8a
	rol $2d                  ; $95ce: 26 2d
	*nop $0bda,x             ; $95d0: 1c da 0b
	*nop $89d5,x             ; $95d3: 3c d5 89
	*xaa #$47                ; $95d6: 8b 47
entry_95d8:
	sbc $6a,x                ; $95d8: f5 6a
	ora $a5                  ; $95da: 05 a5
	*rla $0ca5               ; $95dc: 2f a5 0c
	*isc $1b,x               ; $95df: f7 1b
	*dcp $ac1e               ; $95e1: cf 1e ac
	jmp $8b5d                ; $95e4: 4c 5d 8b

; === Block $977c-$97b6 (Code) ===
entry_977c:
	*slo $8d,x               ; $977c: 17 8d
	dec $42                  ; $977e: c6 42
	eor ($65,x)              ; $9780: 41 65
	*rra $58,x               ; $9782: 77 58
	cmp $21eb,y              ; $9784: d9 eb 21 OAMADDR
	ora #$f8                 ; $9787: 09 f8
entry_9789:
	cmp $ca,x                ; $9789: d5 ca
	*rra $6f7c,y             ; $978b: 7b 7c 6f
	sta $f6                  ; $978e: 85 f6
	tsx                      ; $9790: ba
	tay                      ; $9791: a8
	tya                      ; $9792: 98
	tya                      ; $9793: 98
	*jam                     ; $9794: b2
	*las $6cac,y             ; $9795: bb ac 6c
	*axs #$59                ; $9798: cb 59
	php                      ; $979a: 08
	*sre $aec6               ; $979b: 4f c6 ae
	*sre ($db),y             ; $979e: 53 db
	*isc ($7c,x)             ; $97a0: e3 7c
	*rla $d5b5               ; $97a2: 2f b5 d5
	*nop $c5                 ; $97a5: 44 c5
	*isc ($71,x)             ; $97a7: e3 71
	bcc $973b                ; $97a9: 90 90
entry_97ab:
	cli                      ; $97ab: 58
	*sha ($ef),y             ; $97ac: 93 ef
	ldy #$e1                 ; $97ae: a0 e1
	lsr $7557,x              ; $97b0: 5e 57 75
	sta $549d                ; $97b3: 8d 9d 54
	jmp $584c                ; $97b6: 4c 4c 58

; === Block $9788-$9789 (Code) ===
entry_9788:
	sed                      ; $9788: f8

; === Block $97da-$9837 (Code) ===
entry_97da:
	*isc ($16),y             ; $97da: f3 16
	tsx                      ; $97dc: ba
	sta ($f6),y              ; $97dd: 91 f6
	*nop $1e40,x             ; $97df: 7c 40 1e
	ldx $5553                ; $97e2: ae 53 55
entry_97e5:
	*slo ($13),y             ; $97e5: 13 13
	adc $2f,x                ; $97e7: 75 2f
	*shx $21e3,y             ; $97e9: 9e e3 21 OAMADDR
	jsr $fcb2                ; $97ec: 20 b2 fc
loc_97ef:
	*arr #$21                ; $97ef: 6b 21
	ldx $d143                ; $97f1: ae 43 d1
	sbc ($ed),y              ; $97f4: f1 ed
	*nop $4c,x               ; $97f6: 54 4c
	eor $bed4                ; $97f8: 4d d4 be
	*jam                     ; $97fb: 62
	*nop $642d,x             ; $97fc: dc 2d 64
	and $c8,x                ; $97ff: 35 c8
	*nop                     ; $9801: 7a
	rol $aa3d,x              ; $9802: 3e 3d aa
	*nop #$89                ; $9805: 89 89
	*xaa #$7b                ; $9807: 8b 7b
	dex                      ; $9809: ca
	*sre ($ee,x)             ; $980a: 43 ee
	eor $32ee,y              ; $980c: 59 ee 32 PPUADDR
	*jam                     ; $980f: 12
	*anc #$b6                ; $9810: 0b b6
	*sre $70,x               ; $9812: 57 70
	*rra $3cc9               ; $9814: 6f c9 3c PPUMASK
	*lax $ee                 ; $9817: a7 ee
	*nop #$72                ; $9819: 80 72
entry_981b:
	*dcp $a971               ; $981b: cf 71 a9
	*lax #$f7                ; $981e: ab f7
	*lax $0021               ; $9820: af 21 00
	rol                      ; $9823: 2a
	ldx #$51                 ; $9824: a2 51
	and ($31),y              ; $9826: 31 31
	*rra $4879               ; $9828: 6f 79 48
	adc $31cb,x              ; $982b: 7d cb 31 OAMADDR
	ror $2c,x                ; $982e: 76 2c
	ldx $dfe0                ; $9830: ae e0 df
	*jam                     ; $9833: 92
	adc $dd4f,y              ; $9834: 79 4f dd
	brk                      ; $9837: 00

; === Block $981d-$9823 (Code) ===
entry_981d:
	lda #$ab                 ; $981d: a9 ab
	*isc $af,x               ; $981f: f7 af
	and ($00,x)              ; $9821: 21 00

; === Block $9838-$98ef (Code) ===
entry_9838:
	sbc $9e                  ; $9838: e5 9e
	*isc ($53,x)             ; $983a: e3 53
	*sre $ef,x               ; $983c: 57 ef
	lsr $0042,x              ; $983e: 5e 42 00
entry_9841:
	eor $44,x                ; $9841: 55 44
	ldx #$62                 ; $9843: a2 62
	*jam                     ; $9845: 62
	cpx $9a5a                ; $9846: ec 5a 9a
	*lax $f57a,y             ; $9849: bf 7a f5
	sta ($1c),y              ; $984c: 91 1c
	*nop                     ; $984e: da
	*anc #$73                ; $984f: 0b 73
	*jam                     ; $9851: f2
	*nop $0f44,x             ; $9852: 7c 44 0f
	*sre $df72,y             ; $9855: 5b 72 df
	*rla ($f4,x)             ; $9858: 23 f4
	lda $2c29,y              ; $985a: b9 29 2c PPUMASK
	*isc ($95),y             ; $985d: f3 95
	cmp $6763,x              ; $985f: dd 63 67
	eor $13,x                ; $9862: 55 13
	*slo ($16),y             ; $9864: 13 16
	*jam                     ; $9866: b2
	*rla ($9b,x)             ; $9867: 23 9b
	eor ($6e,x)              ; $9869: 41 6e
	ror $884f,x              ; $986b: 7e 4f 88
	sta ($eb,x)              ; $986e: 81 eb
	ror $e45b                ; $9870: 6e 5b e4
	ror $2597,x              ; $9873: 7e 97 25 PPUDATA
	and $9e                  ; $9876: 25 9e
	*jam                     ; $9878: 72
	*las $6cac,y             ; $9879: bb ac 6c
	nop                      ; $987c: ea
	ldx #$62                 ; $987d: a2 62
	*jam                     ; $987f: 62
	cmp $6f                  ; $9880: c5 6f
	jsr $2a0b                ; $9882: 20 0b 2a OAMADDR
loc_9885:
	php                      ; $9885: 08
	php                      ; $9886: 08
	*dcp $6a92,x             ; $9887: df 92 6a
	*nop #$15                ; $988a: e2 15
	*isc $8b,x               ; $988c: f7 8b
	dec $e3                  ; $988e: c6 e3
	eor $6b9f,y              ; $9890: 59 9f 6b
	*nop $cb2d,x             ; $9893: dc 2d cb
	adc $3c9b                ; $9896: 6d 9b 3c OAMADDR
	*nop #$de                ; $9899: 80 de
	ldy $67                  ; $989b: a4 67
	*shy $34ba,x             ; $989d: 9c ba 34 PPUSTATUS
	*nop $5885,x             ; $98a0: fc 85 58
entry_98a3:
	tya                      ; $98a3: 98
	*lax $0b,y               ; $98a4: b7 0b
	ora $bc,x                ; $98a6: 15 bc
	*sax $0e                 ; $98a8: 87 0e
	txa                      ; $98aa: 8a
	lda ($31),y              ; $98ab: b1 31
	*rra $bf                 ; $98ad: 67 bf
	sbc $a2                  ; $98af: e5 a2
	dex                      ; $98b1: ca
	*jam                     ; $98b2: d2
	*dcp $9e,x               ; $98b3: d7 9e
	*isc ($37,x)             ; $98b5: e3 37
	asl                      ; $98b7: 0a
	lda ($78),y              ; $98b8: b1 78
	*nop $2464,x             ; $98ba: dc 64 24 OAMDATA
	asl $5f,x                ; $98bd: 16 5f
	sta $3564                ; $98bf: 8d 64 35 OAMDATA
entry_98c2:
	iny                      ; $98c2: c8
	*nop                     ; $98c3: 7a
	rol $ab3d,x              ; $98c4: 3e 3d ab
	*slo ($16),y             ; $98c7: 13 16
	sbc ($6b,x)              ; $98c9: e1 6b
	and ($ae,x)              ; $98cb: 21 ae
	*sre ($d1,x)             ; $98cd: 43 d1
	sbc ($ed),y              ; $98cf: f1 ed
	cli                      ; $98d1: 58
	tya                      ; $98d2: 98
	*las $a616,y             ; $98d3: bb 16 a6
	*lax $bdde               ; $98d6: af de bd
	*nop #$de                ; $98d9: c2 de
	*sre $fc                 ; $98db: 47 fc
	cpy #$32                 ; $98dd: c0 32
	*isc ($da,x)             ; $98df: e3 da
	lda ($31),y              ; $98e1: b1 31
	ror $f216                ; $98e3: 6e 16 f2
	*rla $01e6,x             ; $98e6: 3f e6 01
	*sax $1e,y               ; $98e9: 97 1e
	cmp $89,x                ; $98eb: d5 89
	*xaa #$21                ; $98ed: 8b 21
	brk                      ; $98ef: 00

; === Block $9868-$986b (Code) ===
entry_9868:
	*tas $6e41,y             ; $9868: 9b 41 6e

; === Block $986f-$9876 (Code) ===
entry_986f:
	*sbc #$6e                ; $986f: eb 6e
	*sre $7ee4,y             ; $9871: 5b e4 7e
	*sax $25,y               ; $9874: 97 25

; === Block $9872-$9874 (Code) ===
entry_9872:
	cpx $7e                  ; $9872: e4 7e

; === Block $98ee-$9970 (Code) ===
entry_98ee:
	and ($00,x)              ; $98ee: 21 00
	asl                      ; $98f0: 0a
entry_98f1:
	ldy $5a4c                ; $98f1: ac 4c 5a
	dex                      ; $98f4: ca
	adc $4b0f,y              ; $98f5: 79 0f 4b
	*rla $ce                 ; $98f8: 27 ce
	*isc ($2d),y             ; $98fa: f3 2d
	*slo $89d5               ; $98fc: 0f d5 89
	*xaa #$24                ; $98ff: 8b 24
	sta ($65,x)              ; $9901: 81 65
	cpy $ef91                ; $9903: cc 91 ef
	*rla ($58,x)             ; $9906: 23 58
	*nop $71                 ; $9908: 64 71
	*isc $6235,y             ; $990a: fb 35 62
entry_990d:
	*jam                     ; $990d: 62
	*nop $72,x               ; $990e: d4 72
	bcc $993e                ; $9910: 90 2c
loc_9912:
	*isc $19,x               ; $9912: f7 19
	lda $860a,y              ; $9914: b9 0a 86
	sty $32,x                ; $9917: 94 32
	bit $1efe                ; $9919: 2c fe 1e
	*isc $811f               ; $991c: ef 1f 81
	*shx $1573,y             ; $991f: 9e 73 15
	cli                      ; $9922: 58
	tya                      ; $9923: 98
	lda $d3,x                ; $9924: b5 d3
	sed                      ; $9926: f8
	asl $7b,x                ; $9927: 16 7b
	sty $c38b                ; $9929: 8c 8b c3
	*lax ($4a,x)             ; $992c: a3 4a
	ora $ba16,y              ; $992e: 19 16 ba
	*sre ($e7,x)             ; $9931: 43 e7
	clv                      ; $9933: b8
	*rra $ee39               ; $9934: 6f 39 ee
	and ($33),y              ; $9937: 31 33
	ldx $4cac                ; $9939: ae ac 4c
	cli                      ; $993c: 58
	txs                      ; $993d: 9a
loc_993e:
	sbc ($d0,x)              ; $993e: e1 d0
	eor $37ee,y              ; $9940: 59 ee 37 PPUADDR
	eor $ffa9,x              ; $9943: 5d a9 ff
	tsx                      ; $9946: ba
	bvc $9916                ; $9947: 50 cd
loc_9949:
	iny                      ; $9949: c8
	*rra $e8af,y             ; $994a: 7b af e8
	ldx $4cac                ; $994d: ae ac 4c
	cli                      ; $9950: 58
	txs                      ; $9951: 9a
	sbc ($d0,x)              ; $9952: e1 d0
	eor $37ee,y              ; $9954: 59 ee 37 PPUADDR
	eor $04d5,x              ; $9957: 5d d5 04
	*nop $a1,x               ; $995a: 34 a1
	ldy $936e,x              ; $995c: bc 6e 93
	*nop $7e,x               ; $995f: f4 7e
	ldy $594c                ; $9961: ac 4c 59
	*isc $68f9               ; $9964: ef f9 68
	*lax ($dc),y             ; $9967: b3 dc
	ror $ec                  ; $9969: 66 ec
	cmp $eaa3                ; $996b: cd a3 ea
	*nop $55,x               ; $996e: 74 55

; === Block $9916-$9919 (Code) ===
loc_9916:
	stx $94                  ; $9916: 86 94
	*jam                     ; $9918: 32

; === Block $9966-$9967 (Code) ===
entry_9966:
	pla                      ; $9966: 68

; === Block $9970-$9b44 (Code) ===
entry_9970:
	*nop #$8b                ; $9970: 89 8b
	lsr $e961,x              ; $9972: 5e 61 e9
	*rra $b8                 ; $9975: 67 b8
	cmp $f07b,x              ; $9977: dd 7b f0
	*sre ($dd,x)             ; $997a: 43 dd
entry_997c:
	plp                      ; $997c: 28
	ror $fcbb                ; $997d: 6e bb fc
	ora $7d0f,x              ; $9980: 1d 0f 7d
	*nop $87,x               ; $9983: 34 87
	inc $da17                ; $9985: ee 17 da
	lda ($31),y              ; $9988: b1 31
	*arr #$cc                ; $998a: 6b cc
	and $f72c,x              ; $998c: 3d 2c f7
	*slo $e6af,y             ; $998f: 1b af e6
	*isc ($e3,x)             ; $9992: e3 e3
	lsr                      ; $9994: 4a
	*slo $c8af,y             ; $9995: 1b af c8
	*slo ($8c,x)             ; $9998: 03 8c
	adc #$a4                 ; $999a: 69 a4
	*rla $be70,x             ; $999c: 3f 70 be
	cmp $8b,x                ; $999f: d5 8b
	dec $e3                  ; $99a1: c6 e3
	*nop $10                 ; $99a3: 04 10
	ora ($be),y              ; $99a5: 11 be
	sty $35,x                ; $99a7: 94 35
	*sax $f1c9               ; $99a9: 8f c9 f1
	bpl $99e2                ; $99ac: 10 34
loc_99ae:
	*shx $ec62,y             ; $99ae: 9e 62 ec
	*nop                     ; $99b1: 5a
	txs                      ; $99b2: 9a
	*lax $f37a,y             ; $99b3: bf 7a f3
	eor ($7e,x)              ; $99b6: 41 7e
	*nop                     ; $99b8: 5a
	bvc $99fd                ; $99b9: 50 42
loc_99bb:
	ldy $375e                ; $99bb: ac 5e 37 PPUADDR
	clc                      ; $99be: 18
	jsr $8d80                ; $99bf: 20 80 8d
loc_99c2:
	*nop $a1,x               ; $99c2: f4 a1
	ldy $4f7e                ; $99c4: ac 7e 4f
	dey                      ; $99c7: 88
	sta ($a4,x)              ; $99c8: 81 a4
	*isc ($16),y             ; $99ca: f3 16
	pla                      ; $99cc: 68
	*rla $4acb               ; $99cd: 2f cb 4a
	php                      ; $99d0: 08
	eor $8a,x                ; $99d1: 55 8a
	plp                      ; $99d3: 28
	ldx #$8a                 ; $99d4: a2 8a
	jsr $f1f0                ; $99d6: 20 f0 f1
loc_99d9:
	*lax $700b,y             ; $99d9: bf 0b 70
	*jam                     ; $99dc: b2
	*shx $8be3,y             ; $99dd: 9e e3 8b
	adc ($5e),y              ; $99e0: 71 5e
loc_99e2:
	*nop $c8d5,x             ; $99e2: 7c d5 c8
	*lax $57,y               ; $99e5: b7 57
	cmp $614a                ; $99e7: cd 4a 61
	inc $53ae                ; $99ea: ee ae 53
	lda ($c6,x)              ; $99ed: a1 c6
	*rra ($3c,x)             ; $99ef: 63 3c
	*isc $9e66               ; $99f1: ef 66 9e
	ldx #$2f                 ; $99f4: a2 2f
	*nop $5b                 ; $99f6: 04 5b
	*lax #$e6                ; $99f8: ab e6
	lda $30                  ; $99fa: a5 30
	*isc $57,x               ; $99fc: f7 57
	and #$d0                 ; $99fe: 29 d0
	*isc ($31,x)             ; $9a00: e3 31
	*sre $1751               ; $9a02: 4f 51 17
	sta $8e                  ; $9a05: 85 8e
	dec $e5,x                ; $9a07: d6 e5
	*sre ($eb,x)             ; $9a09: 43 eb
	*dcp $7275               ; $9a0b: cf 75 72
	sta $9fec,x              ; $9a0e: 9d ec 9f
entry_9a11:
	*rra $d7                 ; $9a11: 67 d7
	*nop                     ; $9a13: 5a
	*sre ($03,x)             ; $9a14: 43 03
	sty $d1,x                ; $9a16: 94 d1
	adc $986c,x              ; $9a18: 7d 6c 98
	*lax $eb3c               ; $9a1b: af 3c eb
	and #$af                 ; $9a1e: 29 af
	and $d8d5,x              ; $9a20: 3d d5 d8
entry_9a23:
	eor $e1                  ; $9a23: 45 e1
	*isc ($71,x)             ; $9a25: e3 71
	*tas $6f83,y             ; $9a27: 9b 83 6f
	*jam                     ; $9a2a: f2
	*xaa #$bd                ; $9a2b: 8b bd
	rol $baf1,x              ; $9a2d: 3e f1 ba
	*tas $5c3d,y             ; $9a30: 9b 3d 5c
	lda $83                  ; $9a33: a5 83
	*nop $085e,x             ; $9a35: 1c 5e 08
	*lax $9e,y               ; $9a38: b7 9e
	cmp $a8                  ; $9a3a: c5 a8
	*shx $191d,y             ; $9a3c: 9e 1d 19
	*isc $3a                 ; $9a3f: e7 3a
	*lax ($19),y             ; $9a41: b3 19
	*isc $a7c2               ; $9a43: ef c2 a7
	tay                      ; $9a46: a8
	*xaa #$c1                ; $9a47: 8b c1
	tsx                      ; $9a49: ba
	*sax $cc,y               ; $9a4a: 97 cc
	*nop                     ; $9a4c: 5a
	and $3e,x                ; $9a4d: 35 3e
	*dcp $5fa3               ; $9a4f: cf a3 5f
	inc $a7bc,x              ; $9a52: fe bc a7
	lsr $7eb6,x              ; $9a55: 5e b6 7e
	*rla ($df),y             ; $9a58: 33 df
	*sax $41                 ; $9a5a: 87 41
	bmi $9ac1                ; $9a5c: 30 63
loc_9a5e:
	*xaa #$c1                ; $9a5e: 8b c1
	lda $8d36,x              ; $9a60: bd 36 8d
	adc $63                  ; $9a63: 65 63
	*rra $95                 ; $9a65: 67 95
	*slo $1f                 ; $9a67: 07 1f
	*dcp $a61e,x             ; $9a69: df 1e a6
	rol $191d,x              ; $9a6c: 3e 1d 19
	inc $a631                ; $9a6f: ee 31 a6
	*dcp $fa23,y             ; $9a72: db 23 fa
	bvc $9a46                ; $9a75: 50 cf
loc_9a77:
	ror $051d,x              ; $9a77: 7e 1d 05
	*lax #$94                ; $9a7a: ab 94
	inc $f8,x                ; $9a7c: f6 f8
	cmp ($af),y              ; $9a7e: d1 af
	*isc $0e5f,x             ; $9a80: ff 5f 0e
	stx $11                  ; $9a83: 86 11
	sei                      ; $9a85: 78
	adc $ee,x                ; $9a86: 75 ee
	bcs $9a10                ; $9a88: b0 86
loc_9a8a:
	lda ($a8),y              ; $9a8a: b1 a8
	sbc $21                  ; $9a8c: e5 21
	*shx $2cfc,y             ; $9a8e: 9e fc 2c OAMDATA
	*isc ($8a),y             ; $9a91: f3 8a
	adc $6312                ; $9a93: 6d 12 63
	php                      ; $9a96: 08
	bpl $9a40                ; $9a97: 10 a7
loc_9a99:
	tay                      ; $9a99: a8
	*xaa #$c1                ; $9a9a: 8b c1
	*xaa #$46                ; $9a9c: 8b 46
	*lax $d9                 ; $9a9e: a7 d9
	*jam                     ; $9aa0: f2
	pha                      ; $9aa1: 48
	*rra $bf                 ; $9aa2: 67 bf
	*anc #$bf                ; $9aa4: 0b bf
	*alr #$3a                ; $9aa6: 4b 3a
	lda $274e,y              ; $9aa8: b9 4e 27 PPUADDR
	cpx $21                  ; $9aab: e4 21
	txs                      ; $9aad: 9a
	*sre ($7d),y             ; $9aae: 53 7d
entry_9ab0:
	*dcp $a7                 ; $9ab0: c7 a7
	tay                      ; $9ab2: a8
	*xaa #$c1                ; $9ab3: 8b c1
	*xaa #$70                ; $9ab5: 8b 70
	*lax $0f,y               ; $9ab7: b7 0f
	and $69c6,x              ; $9ab9: 3d c6 69
	pla                      ; $9abc: 68
	*sha ($a7),y             ; $9abd: 93 a7
	dec $3b,x                ; $9abf: d6 3b
loc_9ac1:
	*jam                     ; $9ac1: 42
	*slo $0ed1,y             ; $9ac2: 1b d1 0e
	*jam                     ; $9ac5: 52
	*slo $7cdc,x             ; $9ac6: 1f dc 7c
	*isc ($9e),y             ; $9ac9: f3 9e
	*isc ($34,x)             ; $9acb: e3 34
	ldy $49,x                ; $9acd: b4 49
	*isc $b8                 ; $9acf: e7 b8
	rol $11,x                ; $9ad1: 36 11
	sei                      ; $9ad3: 78
	cli                      ; $9ad4: 58
	sbc $6f08                ; $9ad5: ed 08 6f
	and #$7c                 ; $9ad8: 29 7c
	*isc $e1,x               ; $9ada: f7 e1
	ror $621e                ; $9adc: 6e 1e 62
	cpx $c65b                ; $9adf: ec 5b c6
	ror $19                  ; $9ae2: 66 19
	tsx                      ; $9ae4: ba
	ldy $67,x                ; $9ae5: b4 67
	clv                      ; $9ae7: b8
	rol $11,x                ; $9ae8: 36 11
	sei                      ; $9aea: 78
	*rla ($8f,x)             ; $9aeb: 23 8f
	sta $a75c                ; $9aed: 8d 5c a7
	eor ($2d),y              ; $9af0: 51 2d
	tya                      ; $9af2: 98
	tax                      ; $9af3: aa
	*nop $44,x               ; $9af4: d4 44
	cmp $bd                  ; $9af6: c5 bd
	bcc $9b41                ; $9af8: 90 47
loc_9afa:
	cmp $01f1,y              ; $9afa: d9 f1 01
	ror $cd79                ; $9afd: 6e 79 cd
	and #$be                 ; $9b00: 29 be
	adc $0bd0,y              ; $9b02: 79 d0 0b
	pha                      ; $9b05: 48
	*rra $bf                 ; $9b06: 67 bf
	asl $ef82                ; $9b08: 0e 82 ef
	*slo $82,x               ; $9b0b: 17 82
	and $86e4                ; $9b0d: 2d e4 86
	*isc ($8b,x)             ; $9b10: e3 8b
	*alr #$46                ; $9b12: 4b 46
	*lax $ab                 ; $9b14: a7 ab
	sty $e2,x                ; $9b16: 94 e2
	bpl $9aa0                ; $9b18: 10 86
loc_9b1a:
	ldy $53,x                ; $9b1a: b4 53
	*nop $45,x               ; $9b1c: d4 45
	cpx #$8e                 ; $9b1e: e0 8e
	*tas $e6d3,y             ; $9b20: 9b d3 e6
	and $2c75                ; $9b23: 2d 75 2c PPUSCROLL
	*rra ($b8),y             ; $9b26: 73 b8
	*nop #$d2                ; $9b28: e2 d2
	adc ($17,x)              ; $9b2a: 61 17
	*nop #$2d                ; $9b2c: 82 2d
	cmp $f4,x                ; $9b2e: d5 f4
	ror                      ; $9b30: 6a
	*nop                     ; $9b31: 7a
	lda $214e,y              ; $9b32: b9 4e 21 PPUADDR
	php                      ; $9b35: 08
	*arr #$45                ; $9b36: 6b 45
	and $5e44,x              ; $9b38: 3d 44 5e
	asl $1937,x              ; $9b3b: 1e 37 19
	clv                      ; $9b3e: b8
	*sre ($e4),y             ; $9b3f: 53 e4
loc_9b41:
	*rra $e86d,y             ; $9b41: 7b 6d e8
	rts                      ; $9b44: 60

; === Block $9987-$9988 (Code) ===
entry_9987:
	*nop                     ; $9987: da

; === Block $99ad-$99b0 (Code) ===
entry_99ad:
	*nop $9e,x               ; $99ad: 34 9e
	*jam                     ; $99af: 62

; === Block $99b0-$99b3 (Code) ===
entry_99b0:
	cpx $9a5a                ; $99b0: ec 5a 9a

; === Block $99e4-$99e5 (Code) ===
loc_99e4:
	iny                      ; $99e4: c8

; === Block $99e9-$99f6 (Code) ===
entry_99e9:
	adc ($ee,x)              ; $99e9: 61 ee
	ldx $a153                ; $99eb: ae 53 a1
	dec $63                  ; $99ee: c6 63
	*nop $66ef,x             ; $99f0: 3c ef 66
	*shx $2fa2,y             ; $99f3: 9e a2 2f PPUSTATUS

; === Block $99fd-$9a05 (Code) ===
loc_99fd:
	*sre $29,x               ; $99fd: 57 29
	bne $99e4                ; $99ff: d0 e3
loc_9a01:
	and ($4f),y              ; $9a01: 31 4f
	eor ($17),y              ; $9a03: 51 17

; === Block $9a10-$9a13 (Code) ===
loc_9a10:
	*sha $d767,y             ; $9a10: 9f 67 d7

; === Block $9a22-$9a23 (Code) ===
entry_9a22:
	cld                      ; $9a22: d8

; === Block $9a40-$9a41 (Code) ===
loc_9a40:
	*nop                     ; $9a40: 3a

; === Block $9a62-$9a65 (Code) ===
entry_9a62:
	sta $6365                ; $9a62: 8d 65 63

; === Block $9a70-$9a72 (Code) ===
entry_9a70:
	and ($a6),y              ; $9a70: 31 a6

; === Block $9a74-$9a75 (Code) ===
entry_9a74:
	*nop                     ; $9a74: fa

; === Block $9ab6-$9abd (Code) ===
entry_9ab6:
	bvs $9a6f                ; $9ab6: 70 b7
loc_9ab8:
	*slo $c63d               ; $9ab8: 0f 3d c6
	adc #$68                 ; $9abb: 69 68

; === Block $9ac7-$9acd (Code) ===
entry_9ac7:
	*nop $f37c,x             ; $9ac7: dc 7c f3
	*shx $34e3,y             ; $9aca: 9e e3 34 OAMADDR

; === Block $9b15-$9b26 (Code) ===
entry_9b15:
	*lax #$94                ; $9b15: ab 94
	*nop #$10                ; $9b17: e2 10
	stx $b4                  ; $9b19: 86 b4
	*sre ($d4),y             ; $9b1b: 53 d4
	eor $e0                  ; $9b1d: 45 e0
	stx $d39b                ; $9b1f: 8e 9b d3
	inc $2d                  ; $9b22: e6 2d
	adc $2c,x                ; $9b24: 75 2c

; === Block $9b4a-$9b7d (Code) ===
entry_9b4a:
	*nop                     ; $9b4a: 5a
	*sbc #$ff                ; $9b4b: eb ff
	*rra ($ce),y             ; $9b4d: 73 ce
	*sre $7e3e,x             ; $9b4f: 5f 3e 7e
	ldy $9e21,x              ; $9b52: bc 21 9e
	nop                      ; $9b55: ea
	cpx $ac3a                ; $9b56: ec 3a ac
	*rra $bf                 ; $9b59: 67 bf
	ora $ae9e                ; $9b5b: 0d 9e ae
	*sre ($db),y             ; $9b5e: 53 db
	cmp $3b64,x              ; $9b60: dd 64 3b OAMDATA
	*sax $97e3               ; $9b63: 8f e3 97
	cpy $21                  ; $9b66: c4 21
	ora $de3f                ; $9b68: 0d 3f de
	beq $9b10                ; $9b6b: f0 a3
entry_9b6d:
	*sre $9efb,x             ; $9b6d: 5f fb 9e
	*nop $0b3a,x             ; $9b70: fc 3a 0b
	*sre ($8c,x)             ; $9b73: 43 8c
	dec $7b                  ; $9b75: c6 7b
	*lax #$b0                ; $9b77: ab b0
	*xaa #$c2                ; $9b79: 8b c2
	*dcp $68                 ; $9b7b: c7 68

; === Block $9b7c-$9c12 (Code) ===
entry_9b7c:
	pla                      ; $9b7c: 68
	*sre ($79,x)             ; $9b7d: 43 79
	*nop                     ; $9b7f: 5a
	*isc ($2c),y             ; $9b80: f3 2c
	*nop $4c,x               ; $9b82: d4 4c
entry_9b84:
	and $78de,x              ; $9b84: 3d de 78
	*rla ($08,x)             ; $9b87: 23 08
	*dcp $21,x               ; $9b89: d7 21
	*rla $75cf,x             ; $9b8b: 3f cf 75
	ror $0bf6,x              ; $9b8e: 7e f6 0b
	and $f7d5,x              ; $9b91: 3d d5 f7
	*nop                     ; $9b94: 5a
	sty $a8a7                ; $9b95: 8c a7 a8
	*xaa #$c3                ; $9b98: 8b c3
	lda $6abb                ; $9b9a: ad bb 6a
	sbc $3a                  ; $9b9d: e5 3a
	*rla $d0a9,y             ; $9b9f: 3b a9 d0
	and $cad5,x              ; $9ba2: 3d d5 ca
	*rra $e1ad,x             ; $9ba5: 7f ad e1
	*isc $bc4f,y             ; $9ba8: fb 4f bc
	ror $75                  ; $9bab: 66 75
	sta $f7,x                ; $9bad: 95 f7
	lda ($84,x)              ; $9baf: a1 84
	lsr $371e,x              ; $9bb1: 5e 1e 37 PPUADDR
	*sre ($67),y             ; $9bb4: 53 67
	*lax #$94                ; $9bb6: ab 94
	cpx $27                  ; $9bb8: e4 27
	sed                      ; $9bba: f8
	sty $21                  ; $9bbb: 84 21
	*dcp ($a3,x)             ; $9bbd: c3 a3
	adc ($f3),y              ; $9bbf: 71 f3
	dec $30b4                ; $9bc1: ce b4 30 OAMDATA
	*xaa #$c2                ; $9bc4: 8b c2
	*dcp $68                 ; $9bc6: c7 68
	*sre ($50,x)             ; $9bc8: 43 50
	*slo $c63d,x             ; $9bca: 1f 3d c6
	*isc ($8b,x)             ; $9bcd: e3 8b
	*jam                     ; $9bcf: 72
	*slo $739b,x             ; $9bd0: 1f 9b 73
	asl $e1,x                ; $9bd3: 16 e1
	*isc $b8                 ; $9bd5: e7 b8
	cmp $122d                ; $9bd7: cd 2d 12
	adc $0dee,y              ; $9bda: 79 ee 0d
	sty $56                  ; $9bdd: 84 56
	*slo $2735,x             ; $9bdf: 1f 35 27 PPUSCROLL
	cmp $73f4,y              ; $9be2: d9 f4 73
	pla                      ; $9be5: 68
	*jam                     ; $9be6: d2
	*nop #$1b                ; $9be7: 82 1b
	*nop $8c,x               ; $9be9: d4 8c
	*isc ($97),y             ; $9beb: f3 97
	lsr $9f                  ; $9bed: 46 9f
	bcc $9b9c                ; $9bef: 90 ab
loc_9bf1:
	cmp $63,x                ; $9bf1: d5 63
	lsr $a7                  ; $9bf3: 46 a7
	cmp $94f5,y              ; $9bf5: d9 f5 94
	*dcp $b8,x               ; $9bf8: d7 b8
	sbc $0dee,y              ; $9bfa: f9 ee 0d
	sty $51                  ; $9bfd: 84 51
entry_9bff:
	sei                      ; $9bff: 78
	adc $b7,x                ; $9c00: 75 b7
	adc $a75c                ; $9c02: 6d 5c a7
	*sre $75                 ; $9c05: 47 75
	*nop                     ; $9c07: 3a
	*slo $ba                 ; $9c08: 07 ba
	lda $f54f,y              ; $9c0a: b9 4f f5
entry_9c0d:
	ldy $583f,x              ; $9c0d: bc 3f 58
entry_9c10:
	eor $e1                  ; $9c10: 45 e1
	jmp $de3a                ; $9c12: 4c 3a de

; === Block $9b9c-$9b9d (Code) ===
loc_9b9c:
	ror                      ; $9b9c: 6a

; === Block $9ba4-$9ba5 (Code) ===
entry_9ba4:
	dex                      ; $9ba4: ca

; === Block $9bae-$9bbb (Code) ===
entry_9bae:
	*isc $a1,x               ; $9bae: f7 a1
	sty $5e                  ; $9bb0: 84 5e
	asl $5337,x              ; $9bb2: 1e 37 53
	*rra $ab                 ; $9bb5: 67 ab
	sty $e4,x                ; $9bb7: 94 e4
	*rla $f8                 ; $9bb9: 27 f8

; === Block $9bd4-$9bd7 (Code) ===
entry_9bd4:
	sbc ($e7,x)              ; $9bd4: e1 e7
	clv                      ; $9bd6: b8

; === Block $9c09-$9c0a (Code) ===
entry_9c09:
	tsx                      ; $9c09: ba

; === Block $9c29-$9c8e (Code) ===
loc_9c29:
	sbc ($d5,x)              ; $9c29: e1 d5
	tay                      ; $9c2b: a8
	*xaa #$c1                ; $9c2c: 8b c1
	*nop $42,x               ; $9c2e: 14 42
	and $67b4,y              ; $9c30: 39 b4 67
	*shy $19f7,x             ; $9c33: 9c f7 19
	asl $4352,x              ; $9c36: 1e 52 43
	lsr                      ; $9c39: 4a
	ora $2c1c,y              ; $9c3a: 19 1c 2c OAMDATA
	sec                      ; $9c3d: 38
	*nop $77,x               ; $9c3e: 74 77
	eor $ba                  ; $9c40: 45 ba
	ldx $4f8d,y              ; $9c42: be 8d 4f
	cli                      ; $9c45: 58
	dec $42ce,x              ; $9c46: de ce 42
	*rra $94ab,x             ; $9c49: 7f ab 94
	*dcp ($d4),y             ; $9c4c: d3 d4
	eor $e0                  ; $9c4e: 45 e0
	txa                      ; $9c50: 8a
	and ($1c,x)              ; $9c51: 21 1c
	*nop                     ; $9c53: da
	*rla ($ce),y             ; $9c54: 33 ce
	*rra $8f8c,y             ; $9c56: 7b 8c 8f
	and #$21                 ; $9c59: 29 21
	lda $0c                  ; $9c5b: a5 0c
	stx $1c16                ; $9c5d: 8e 16 1c
	*nop                     ; $9c60: 3a
	*rla $7ed8,y             ; $9c61: 3b d8 7e
	cmp $8a                  ; $9c64: c5 8a
	*nop $15,x               ; $9c66: 74 15
	dec $57                  ; $9c68: c6 57
	*dcp $ca                 ; $9c6a: c7 ca
	rol $d1fd                ; $9c6c: 2e fd d1
	ror $bdaf                ; $9c6f: 6e af bd
	sta $a75c,x              ; $9c72: 9d 5c a7
	clc                      ; $9c75: 18
	asl $d4d3,x              ; $9c76: 1e d3 d4
	eor $e0                  ; $9c79: 45 e0
	*xaa #$79                ; $9c7b: 8b 79
	*nop $f32c,x             ; $9c7d: dc 2c f3
	ldy $ff8c                ; $9c80: ac 8c ff
	asl                      ; $9c83: 0a
	*isc ($da,x)             ; $9c84: e3 da
	*nop                     ; $9c86: 7a
	dey                      ; $9c87: 88
	ldy $a91b,x              ; $9c88: bc 1b a9
	*nop $b8c5,x             ; $9c8b: 7c c5 b8

; === Block $9c8c-$9cb3 (Code) ===
loc_9c8c:
	cmp $b8                  ; $9c8c: c5 b8
	cli                      ; $9c8e: 58
	sbc $f2                  ; $9c8f: e5 f2
	ldy #$84                 ; $9c91: a0 84
	and $8f1b,y              ; $9c93: 39 1b 8f
	adc $9a,x                ; $9c96: 75 9a
	*isc $99,x               ; $9c98: f7 99
	sbc ($49,x)              ; $9c9a: e1 49
	bcs $9c29                ; $9c9c: b0 8b
loc_9c9e:
	cmp ($95,x)              ; $9c9e: c1 95
	and $1d6b                ; $9ca0: 2d 6b 1d
	lda ($0c,x)              ; $9ca3: a1 0c
	ldx $c3db,y              ; $9ca5: be db c3
	sbc ($38,x)              ; $9ca8: e1 38
	inc $8c7b,x              ; $9caa: fe 7b 8c
	ldx $fc                  ; $9cad: a6 fc
	inc $5c,x                ; $9caf: f6 5c
	*rra $9c                 ; $9cb1: 67 9c

; === Block $9cb3-$9d19 (Code) ===
entry_9cb3:
	cpy $c2                  ; $9cb3: c4 c2
	jsr $45f0                ; $9cb5: 20 f0 45
loc_9cb8:
	ldy $d190,x              ; $9cb8: bc 90 d1
entry_9cbb:
	*lax $e4                 ; $9cbb: a7 e4
	*rla $0b,x               ; $9cbd: 37 0b
	*nop $23eb,x             ; $9cbf: 3c eb 23 OAMADDR
	*sre ($88,x)             ; $9cc2: 43 88
	sec                      ; $9cc4: 38
	inc $9e,x                ; $9cc5: f6 9e
	ldx #$2f                 ; $9cc7: a2 2f
	asl $ea                  ; $9cc9: 06 ea
	*sre $6e31,x             ; $9ccb: 5f 31 6e
	asl $39,x                ; $9cce: 16 39
	*nop $21a8,x             ; $9cd0: 7c a8 21 PPUCTRL
	asl $e346                ; $9cd3: 0e 46 e3
	cmp $bc66,x              ; $9cd6: dd 66 bc
	tsx                      ; $9cd9: ba
	*nop $fc,x               ; $9cda: 34 fc
	*sax ($08,x)             ; $9cdc: 83 08
	ldy $b029,x              ; $9cde: bc 29 b0
	asl                      ; $9ce1: 0a
	*sre ($59,x)             ; $9ce2: 43 59
	*nop                     ; $9ce4: 1a
	lda $27                  ; $9ce5: a5 27
	sta ($fb,x)              ; $9ce7: 81 fb
	cld                      ; $9ce9: d8
loc_9cea:
	cmp $75                  ; $9cea: c5 75
	sty $37                  ; $9cec: 84 37
	cmp $b3                  ; $9cee: c5 b3
	pha                      ; $9cf0: 48
	*rra $bf                 ; $9cf1: 67 bf
	*anc #$2d                ; $9cf3: 0b 2d
	sta $86b7,y              ; $9cf5: 99 b7 86
	ldx $60,y                ; $9cf8: b6 60
	*nop $69,x               ; $9cfa: 34 69
	sbc $870c,y              ; $9cfc: f9 0c 87
	inc $dc                  ; $9cff: e6 dc
	cmp $d0                  ; $9d01: c5 d0
	*nop #$2f                ; $9d03: c2 2f
	*nop $5b                 ; $9d05: 04 5b
	dec $67e1                ; $9d07: ce e1 67
	sta $6f64,x              ; $9d0a: 9d 64 6f
	txa                      ; $9d0d: 8a
	*nop $3da4,x             ; $9d0e: 5c a4 3d OAMDATA
	*lax $a8                 ; $9d11: a7 a8
	*xaa #$c2                ; $9d13: 8b c2
	*lax $29                 ; $9d15: a7 29
	dec $a4,x                ; $9d17: d6 a4

; === Block $9cb7-$9cbb (Code) ===
entry_9cb7:
	eor $bc                  ; $9cb7: 45 bc
	bcc $9c8c                ; $9cb9: 90 d1

; === Block $9d19-$9d66 (Code) ===
entry_9d19:
	*sha $1959,y             ; $9d19: 9f 59 19
	*sha $f73d,y             ; $9d1c: 9f 3d f7
	*sax $45                 ; $9d1f: 87 45
	*nop $b8c5,x             ; $9d21: 5c c5 b8
	eor $ca61,y              ; $9d24: 59 61 ca
	*jam                     ; $9d27: 42
	lda $5e44                ; $9d28: ad 44 5e
	*nop $d8,x               ; $9d2b: 14 d8
	ora $21                  ; $9d2d: 05 21
	ldy $528d                ; $9d2f: ac 8d 52
	*sha ($c0),y             ; $9d32: 93 c0
	cpx $e218                ; $9d34: ec 18 e2
	beq $9cea                ; $9d37: f0 b1
loc_9d39:
	txa                      ; $9d39: 8a
	*sbc #$08                ; $9d3a: eb 08
	*arr #$3f                ; $9d3c: 6b 3f
	sbc ($d1,x)              ; $9d3e: e1 d1
	ldy $6cac                ; $9d40: ac ac 6c
	*isc ($dc),y             ; $9d43: f3 dc
	ror $94                  ; $9d45: 66 94
	sbc $e11f,x              ; $9d47: fd 1f e1
	cmp ($8b),y              ; $9d4a: d1 8b
	*dcp $c73f               ; $9d4c: cf 3f c7
	*jam                     ; $9d4f: d2
	stx $62                  ; $9d50: 86 62
	*dcp $ef39               ; $9d52: cf 39 ef
loc_9d55:
	*nop #$cd                ; $9d55: c2 cd
	*sre $efe1               ; $9d57: 4f e1 ef
	*sre ($08,x)             ; $9d5a: 43 08
	ldy $881b,x              ; $9d5c: bc 1b 88
	ror $d0bc,x              ; $9d5f: 7e bc d0
	sty $1b                  ; $9d62: 84 1b
	*sre $29,x               ; $9d64: 57 29

; === Block $9d31-$9d32 (Code) ===
entry_9d31:
	*jam                     ; $9d31: 52

; === Block $9d55-$9d68 (Code) ===
loc_9d55:
	stx $f8                  ; $9d55: 86 f8
	cli                      ; $9d57: 58
	*jam                     ; $9d58: 42
	lda $b36a,x              ; $9d59: bd 6a b3
	ora $5708,y              ; $9d5c: 19 08 57
	*dcp ($a3,x)             ; $9d5f: c3 a3
	*jam                     ; $9d61: 52
	*nop $42                 ; $9d62: 04 42
	ora $4f                  ; $9d64: 05 4f
	ora $32,x                ; $9d66: 15 32

; === Block $9d5d-$9d66 (Code) ===
entry_9d5d:
	*slo $7e88,y             ; $9d5d: 1b 88 7e
	ldy $84d0,x              ; $9d60: bc d0 84
	*slo $2957,y             ; $9d63: 1b 57 29 PPUDATA

; === Block $9d66-$9deb (Code) ===
entry_9d66:
	cmp $be29                ; $9d66: cd 29 be
	ldy $67,x                ; $9d69: b4 67
	*shy $484b,x             ; $9d6b: 9c 4b 48
	ror                      ; $9d6e: 6a
	sbc $3f                  ; $9d6f: e5 3f
	dec $347f,x              ; $9d71: de 7f 34 PPUDATA
	*nop $3011,x             ; $9d74: 7c 11 30 PPUMASK
	*xaa #$c3                ; $9d77: 8b c3
	cpy $42                  ; $9d79: c4 42
	*nop                     ; $9d7b: 1a
	cmp ($96),y              ; $9d7c: d1 96
	bpl $9d55                ; $9d7e: 10 d5
loc_9d80:
	dex                      ; $9d80: ca
	*rra $1952,y             ; $9d81: 7b 52 19
	*rra ($bf,x)             ; $9d84: 63 bf
	ora $21                  ; $9d86: 05 21
	inc $c829                ; $9d88: ee 29 c8
	*rla $75d8               ; $9d8b: 2f d8 75
	sei                      ; $9d8e: 78
	*nop $b11e,x             ; $9d8f: dc 1e b1
	txa                      ; $9d92: 8a
	*sbc #$08                ; $9d93: eb 08
	ror $bf                  ; $9d95: 66 bf
	*dcp $1b                 ; $9d97: c7 1b
	*sax $96bd               ; $9d99: 8f bd 96
	*sax $e749               ; $9d9c: 8f 49 e7
	clv                      ; $9d9f: b8
	dec $2d,x                ; $9da0: d6 2d
	*jam                     ; $9da2: f2
	*rla $86c5,x             ; $9da3: 3f c5 86
	*sbc #$c7                ; $9da6: eb c7
	sbc $0b84,y              ; $9da8: f9 84 0b
	lsr                      ; $9dab: 4a
	ora $4e1e,y              ; $9dac: 19 1e 4e
	*rra $c1de,x             ; $9daf: 7f de c1
	*rra $ba                 ; $9db2: 67 ba
	ldx $7f58,y              ; $9db4: be 58 7f
	sty $5d,x                ; $9db7: 94 5d
	sbc #$ea                 ; $9db9: e9 ea
	*jam                     ; $9dbb: 22
	beq $9d6f                ; $9dbc: f0 b1
loc_9dbe:
	*lax ($1f,x)             ; $9dbe: a3 1f
	adc $e1,x                ; $9dc0: 75 e1
	*nop #$bd                ; $9dc2: c2 bd
	sbc ($1c),y              ; $9dc4: f1 1c
	*isc $eed1,x             ; $9dc6: ff d1 ee
	ldx $fd53                ; $9dc9: ae 53 fd
	*isc $f3                 ; $9dcc: e7 f3
	*sre $c1                 ; $9dce: 47 c1
	*slo ($0e),y             ; $9dd0: 13 0e
	tax                      ; $9dd2: aa
	*rra $c6                 ; $9dd3: 67 c6
	ldx $a353                ; $9dd5: ae 53 a3
	*sha ($7e),y             ; $9dd8: 93 7e
	*nop                     ; $9dda: 1a
	sei                      ; $9ddb: 78
	*nop $6a,x               ; $9ddc: 74 6a
	sbc $3f                  ; $9dde: e5 3f
	cmp $29,x                ; $9de0: d5 29
	jsr $9e9e                ; $9de2: 20 9e 9e
loc_9de5:
	ldx #$2f                 ; $9de5: a2 2f
	*anc #$1a                ; $9de7: 0b 1a
	and $3c,x                ; $9de9: 35 3c
	rti                      ; $9deb: 40

; === Block $9d67-$9d69 (Code) ===
loc_9d67:
	and #$be                 ; $9d67: 29 be

; === Block $9d67-$9d78 (Code) ===
loc_9d67:
	*jam                     ; $9d67: 32
	sec                      ; $9d68: 38
	*isc $fe                 ; $9d69: e7 fe
	beq $9d55                ; $9d6b: f0 e8
loc_9d6d:
	*dcp $613a               ; $9d6d: cf 3a 61
	inc $32b3                ; $9d70: ee b3 32 OAMADDR
	cpy $3d9b                ; $9d73: cc 9b 3d OAMADDR
	dec $04                  ; $9d76: c6 04
	rti                      ; $9d78: 40

; === Block $9d6a-$9d6e (Code) ===
entry_9d6a:
	*rra $9c                 ; $9d6a: 67 9c
	*alr #$48                ; $9d6c: 4b 48

; === Block $9d73-$9d77 (Code) ===
entry_9d73:
	*nop $7c,x               ; $9d73: 34 7c
	ora ($30),y              ; $9d75: 11 30

; === Block $9d96-$9d99 (Code) ===
entry_9d96:
	*lax $1bc7,y             ; $9d96: bf c7 1b

; === Block $9e30-$9f95 (Code) ===
entry_9e30:
	*nop $f543,x             ; $9e30: dc 43 f5
	inc $84                  ; $9e33: e6 84
	and ($df,x)              ; $9e35: 21 df
	*dcp $eb                 ; $9e37: c7 eb
	pha                      ; $9e39: 48
	*sre ($12,x)             ; $9e3a: 43 12
	ldy #$21                 ; $9e3c: a0 21
	*sre $f476,x             ; $9e3e: 5f 76 f4
	*nop                     ; $9e41: da
	and $95,x                ; $9e42: 35 95
	sta $539e                ; $9e44: 8d 9e 53
	lda $68f9                ; $9e47: ad f9 68
	adc ($17,x)              ; $9e4a: 61 17
	*sax $8d                 ; $9e4c: 87 8d
	dec $40                  ; $9e4e: c6 40
	ora $ccc2                ; $9e50: 0d c2 cc
	*lax ($51),y             ; $9e53: b3 51
	bmi $9e4e                ; $9e55: 30 f7
loc_9e57:
	adc $8ce0,y              ; $9e57: 79 e0 8c
	*rla ($5e,x)             ; $9e5a: 23 5e
	inc $0b,x                ; $9e5c: f6 0b
	and $f2d5,x              ; $9e5e: 3d d5 f2
	*dcp ($fc,x)             ; $9e61: c3 fc
	ldx #$ef                 ; $9e63: a2 ef
	*sre $1751               ; $9e65: 4f 51 17
	sta $8e                  ; $9e68: 85 8e
	dec $e2,x                ; $9e6a: d6 e2
	*sha $b6fe,y             ; $9e6c: 9f fe b6
entry_9e6f:
	dec $52,x                ; $9e6f: d6 52
entry_9e71:
	*nop                     ; $9e71: fa
	lda $f64e,y              ; $9e72: b9 4e f6
	*sre $ebb3               ; $9e75: 4f b3 eb
	lda $8121                ; $9e78: ad 21 81
	dex                      ; $9e7b: ca
	pla                      ; $9e7c: 68
	ldx $4cb6,y              ; $9e7d: be b6 4c
	*sre $9e,x               ; $9e80: 57 9e
	*rra $95,x               ; $9e82: 77 95
	*lax $3f21               ; $9e84: af 21 3f PPUMASK
	*jam                     ; $9e87: d2
	*sha $1fe2,y             ; $9e88: 9f e2 1f
	lda $c8                  ; $9e8b: a5 c8
	*dcp ($0e,x)             ; $9e8d: c3 0e
	ldx $f4                  ; $9e8f: a6 f4
	*nop                     ; $9e91: da
	and $95,x                ; $9e92: 35 95
	sta $5a9e                ; $9e94: 8d 9e 5a
	*slo $87,x               ; $9e97: 17 87
	txs                      ; $9e99: 9a
	clv                      ; $9e9a: b8
	and $a75c,x              ; $9e9b: 3d 5c a7
loc_9e9e:
	eor $0c69,x              ; $9e9e: 5d 69 0c
	asl $4553                ; $9ea1: 0e 53 45
	sbc $b2,x                ; $9ea4: f5 b2
	*jam                     ; $9ea6: 62
	ldx $11,y                ; $9ea7: b6 11
	sei                      ; $9ea9: 78
	*rla $10,x               ; $9eaa: 37 10
	sbc $a179,x              ; $9eac: fd 79 a1
	php                      ; $9eaf: 08
	rol $ae,x                ; $9eb0: 36 ae
	*sre ($bd),y             ; $9eb2: 53 bd
	*sha ($ec),y             ; $9eb4: 93 ec
	sbc $37a5,y              ; $9eb6: f9 a5 37 PPUSCROLL
	*jam                     ; $9eb9: d2
	*sha $1fe2,y             ; $9eba: 9f e2 1f
	lda $c8                  ; $9ebd: a5 c8
	*dcp ($0e,x)             ; $9ebf: c3 0e
entry_9ec1:
	*lax #$08                ; $9ec1: ab 08
	ror                      ; $9ec3: 6a
	sbc $3a                  ; $9ec4: e5 3a
	*rla $d0a9,y             ; $9ec6: 3b a9 d0
	and $72,x                ; $9ec9: 35 72
	*sha $78eb,y             ; $9ecb: 9f eb 78
	ror $8eb6,x              ; $9ece: 7e b6 8e
	adc $ca1a                ; $9ed1: 6d 1a ca
	dec $cf                  ; $9ed4: c6 cf
	and #$d6                 ; $9ed6: 29 d6
	*nop $30b4,x             ; $9ed8: fc b4 30 OAMDATA
	*xaa #$c2                ; $9edb: 8b c2
	ldy $99                  ; $9edd: a4 99
	*isc $2a,x               ; $9edf: f7 2a
	asl $733e                ; $9ee1: 0e 3e 73
	*rla $57                 ; $9ee4: 27 57
	*jam                     ; $9ee6: 22
	dey                      ; $9ee7: 88
	*sre $36                 ; $9ee8: 47 36
	sty $9ef3                ; $9eea: 8c f3 9e
	*isc ($22,x)             ; $9eed: e3 22
	lda $2f68                ; $9eef: ad 68 2f PPUCTRL
	*dcp $fb                 ; $9ef2: c7 fb
	asl $b0,x                ; $9ef4: 16 b0
	ror $c2                  ; $9ef6: 66 c2
	*rla $5104               ; $9ef8: 2f 04 51
	php                      ; $9efb: 08
	inc $d1                  ; $9efc: e6 d1
	*shx $dc73,y             ; $9efe: 9e 73 dc
	*nop $55                 ; $9f01: 64 55
	lda $f805                ; $9f03: ad 05 f8
	*isc $d662,x             ; $9f06: ff 62 d6
	*nop $d4fb               ; $9f09: 0c fb d4
	sbc $3a                  ; $9f0c: e5 3a
	*nop $93,x               ; $9f0e: d4 93
	*sbc #$23                ; $9f10: eb 23
	*jam                     ; $9f12: 52
	*slo $3faf,x             ; $9f13: 1f af 3f PPUDATA
	rol $c83d,x              ; $9f16: 3e 3d c8
	ror $d56d,x              ; $9f19: 7e 6d d5
	dex                      ; $9f1c: ca
	*rra $27a1,x             ; $9f1d: 7f a1 27 PPUMASK
	lsr $6f                  ; $9f20: 46 6f
	lda $3f                  ; $9f22: a5 3f
	and ($5b),y              ; $9f24: 31 5b
	php                      ; $9f26: 08
	tya                      ; $9f27: 98
	*nop $d33a,x             ; $9f28: fc 3a d3
	clc                      ; $9f2b: 18
	sbc $df45,y              ; $9f2c: f9 45 df
	lda ($62),y              ; $9f2f: b1 62
	adc $af,x                ; $9f31: 75 af
	bvs $9ee8                ; $9f33: 70 b3
loc_9f35:
	bit $4cd4                ; $9f35: 2c d4 4c
	and $78de,x              ; $9f38: 3d de 78
	*rla ($08,x)             ; $9f3b: 23 08
	*dcp $ba,x               ; $9f3d: d7 ba
	bit $1ea6                ; $9f3f: 2c a6 1e
	nop                      ; $9f42: ea
	sbc $3a                  ; $9f43: e5 3a
	*nop $3366,x             ; $9f45: 1c 66 33 PPUADDR
	dec $5a27                ; $9f48: ce 27 5a
	sbc #$ea                 ; $9f4b: e9 ea
	*jam                     ; $9f4d: 22
	beq $9fb5                ; $9f4e: f0 65
loc_9f50:
	*lax #$f0                ; $9f50: ab f0
	bne $9ed8                ; $9f52: d0 84
loc_9f54:
	*rla $b3f4,y             ; $9f54: 3b f4 b3
	*lax ($9b,x)             ; $9f57: a3 9b
	lsr $5a                  ; $9f59: 46 5a
	*slo $86,x               ; $9f5b: 17 86
	*nop #$2f                ; $9f5d: c2 2f
	*anc #$1d                ; $9f5f: 0b 1d
	lda $3fc5                ; $9f61: ad c5 3f PPUSCROLL
	sbc $ac6d,x              ; $9f64: fd 6d ac
	lda $f5                  ; $9f67: a5 f5
	*jam                     ; $9f69: 72
	sta $9fec,x              ; $9f6a: 9d ec 9f
	*rra $d7                 ; $9f6d: 67 d7
	*nop                     ; $9f6f: 5a
	*sre ($03,x)             ; $9f70: 43 03
entry_9f72:
	sty $d1,x                ; $9f72: 94 d1
	adc $986c,x              ; $9f74: 7d 6c 98
	lda $5587                ; $9f77: ad 87 55
	rol $01,x                ; $9f7a: 36 01
	pha                      ; $9f7c: 48
	pla                      ; $9f7d: 68
	inc $d1                  ; $9f7e: e6 d1
	stx $85,y                ; $9f80: 96 85
	sbc ($e6,x)              ; $9f82: e1 e6
	ldx $570f                ; $9f84: ae 0f 57
	and #$de                 ; $9f87: 29 de
	*axs #$08                ; $9f89: cb 08
	ldy $0619,x              ; $9f8b: bc 19 06
	*dcp $7a4d,x             ; $9f8e: df 4d 7a
	lda $f14f,y              ; $9f91: b9 4f f1
	*nop                     ; $9f94: 3a

; === Block $9f6c-$9f6f (Code) ===
entry_9f6c:
	*sha $d767,y             ; $9f6c: 9f 67 d7

; === Block $9f8c-$9f8f (Code) ===
entry_9f8c:
	ora $df06,y              ; $9f8c: 19 06 df

; === Block $9f8f-$9f9c (Code) ===
entry_9f8f:
	eor $b97a                ; $9f8f: 4d 7a b9
	*sre $3af1               ; $9f92: 4f f1 3a PPUMASK
	dec $c2,x                ; $9f95: d6 c2
	*rla $920a               ; $9f97: 2f 0a 92
	*rra $dd                 ; $9f9a: 67 dd
	jmp ($f8fc)              ; $9f9c: 6c fc f8

; === Block $9f99-$9f9a (Code) ===
entry_9f99:
	*jam                     ; $9f99: 92

; === Block $9fb5-$9fb6 (Code) ===
loc_9fb5:
	rol                      ; $9fb5: 2a
	rts                      ; $9fb6: 60

; === Block $a028-$a067 (Code) ===
entry_a028:
	*rra $8316,x             ; $a028: 7f 16 83
	*jam                     ; $a02b: 72
	inc $2d8f                ; $a02c: ee 8f 2d PPUDATA
	*arr #$53                ; $a02f: 6b 53
	ora $52f3,x              ; $a031: 1d f3 52
	tya                      ; $a034: 98
	*rra $94ab,y             ; $a035: 7b ab 94
	inx                      ; $a038: e8
	adc ($98),y              ; $a039: 71 98
	*dcp $013a               ; $a03b: cf 3a 01
	adc #$0a                 ; $a03e: 69 0a
	*nop                     ; $a040: 7a
	dey                      ; $a041: 88
	ldy $762c,x              ; $a042: bc 2c 76
	*lax $14,y               ; $a045: b7 14
	*isc $e7f5,x             ; $a047: ff f5 e7
	sta $42c3,x              ; $a04a: 9d c3 42
	*rra $ae6e,x             ; $a04d: 7f 6e ae
	*jam                     ; $a050: 52
	*nop                     ; $a051: da
	dex                      ; $a052: ca
	*sre $2957,x             ; $a053: 5f 57 29 PPUDATA
	dec $f6c9,x              ; $a056: de c9 f6
	*nop $5b40,x             ; $a059: 7c 40 5b
	*shx $d675,y             ; $a05c: 9e 75 d6
	bcc $a030                ; $a05f: 90 cf
loc_a061:
	adc $7d,x                ; $a061: 75 7d
	ror                      ; $a063: 6a
	*rra ($bb,x)             ; $a064: 63 bb
	php                      ; $a066: 08

; === Block $a030-$a034 (Code) ===
loc_a030:
	*sre ($1d),y             ; $a030: 53 1d
	*isc ($52),y             ; $a032: f3 52

; === Block $a036-$a038 (Code) ===
entry_a036:
	*lax #$94                ; $a036: ab 94

; === Block $a05e-$a063 (Code) ===
entry_a05e:
	dec $90,x                ; $a05e: d6 90
	*dcp $7d75               ; $a060: cf 75 7d

; === Block $a067-$a0f2 (Code) ===
entry_a067:
	ldy $6619,x              ; $a067: bc 19 66
	ldx #$61                 ; $a06a: a2 61
	inc $c1f3                ; $a06c: ee f3 c1
	clc                      ; $a06f: 18
	rol $c4ed                ; $a070: 2e ed c4
	*rla $685e,x             ; $a073: 3f 5e 68
	*jam                     ; $a076: 42
	ora $76ec,x              ; $a077: 1d ec 76
	sty $33                  ; $a07a: 84 33
	*lax #$31                ; $a07c: ab 31
	tay                      ; $a07e: a8
	sta $46f7,y              ; $a07f: 99 f7 46
	*lax $501a,y             ; $a082: bf 1a 50
	*nop $1176,x             ; $a085: dc 76 11
	sei                      ; $a088: 78
	*jam                     ; $a089: 22
	dec $167b,x              ; $a08a: de 7b 16
	ldx #$78                 ; $a08d: a2 78
	*nop $67,x               ; $a08f: 74 67
	sta $b400,x              ; $a091: 9d 00 b4
	stx $29                  ; $a094: 86 29
	ldy $3d,x                ; $a096: b4 3d
	sed                      ; $a098: f8
	*nop $53,x               ; $a099: 74 53
	*nop $45,x               ; $a09b: d4 45
	cpx #$dd                 ; $a09d: e0 dd
	*alr #$e6                ; $a09f: 4b e6
	and $82ec                ; $a0a1: 2d ec 82
	rol $88cf,x              ; $a0a4: 3e cf 88
	*anc #$73                ; $a0a7: 0b 73
	dec $d2ba                ; $a0a9: ce ba d2
	ora $b74e,y              ; $a0ac: 19 4e b7
	*lax $860e,y             ; $a0af: bf 0e 86
	ora ($78),y              ; $a0b2: 11 78
	*jam                     ; $a0b4: 22
	cmp $355f,x              ; $a0b5: dd 5f 35 PPUDATA
	and #$87                 ; $a0b8: 29 87
entry_a0ba:
	tsx                      ; $a0ba: ba
	lda $874e,y              ; $a0bb: b9 4e 87
	ora $f38c,y              ; $a0be: 19 8c f3
	ldy #$16                 ; $a0c1: a0 16
	bcc $a06c                ; $a0c3: 90 a7
loc_a0c5:
	tay                      ; $a0c5: a8
	dey                      ; $a0c6: 88
	beq $a0ba                ; $a0c7: f0 f1
loc_a0c9:
	clv                      ; $a0c9: b8
	cmp $9ec2                ; $a0ca: cd c2 9e
	*lax ($a9,x)             ; $a0cd: a3 a9
entry_a0cf:
	asl $e0,x                ; $a0cf: 16 e0
	sbc $72,x                ; $a0d1: f5 72
	sta $91e7,x              ; $a0d3: 9d e7 91
	*lax ($dc),y             ; $a0d6: b3 dc
	*nop $2d9f,x             ; $a0d8: 7c 9f 2d PPUDATA
	*shx $e3e3,y             ; $a0db: 9e e3 e3
	and $c8,x                ; $a0de: 35 c8
	*sre ($59,x)             ; $a0e0: 43 59
	ora $7774,y              ; $a0e2: 19 74 77
	*sre $34d0,x             ; $a0e5: 5f d0 34 PPUCTRL
	lda ($91,x)              ; $a0e8: a1 91
	*lax $d6                 ; $a0ea: a7 d6
	*nop                     ; $a0ec: 7a
	*nop #$87                ; $a0ed: 89 87
	*las $04cf,y             ; $a0ef: bb cf 04
	rts                      ; $a0f2: 60

; === Block $a06d-$a06f (Code) ===
entry_a06d:
	*isc ($c1),y             ; $a06d: f3 c1

; === Block $a104-$a11b (Code) ===
entry_a104:
	*lax ($4f,x)             ; $a104: a3 4f
	iny                      ; $a106: c8
	rol $7b,x                ; $a107: 36 7b
	sty $33dc                ; $a109: 8c dc 33 OAMDATA
	*jam                     ; $a10c: 52
	adc $479f,x              ; $a10d: 7d 9f 47
	rol $8d,x                ; $a110: 36 8d
	plp                      ; $a112: 28
	and ($df,x)              ; $a113: 21 df
	tax                      ; $a115: aa
	dec $8d                  ; $a116: c6 8d
	*sre $e6b3               ; $a118: 4f b3 e6
	rts                      ; $a11b: 60

; === Block $a119-$a11b (Code) ===
entry_a119:
	*lax ($e6),y             ; $a119: b3 e6

; === Block $a13e-$a169 (Code) ===
entry_a13e:
	*slo $82,x               ; $a13e: 17 82
	*rla $0d21               ; $a140: 2f 21 0d
	*nop $40a7,x             ; $a143: 5c a7 40
	and $a521                ; $a146: 2d 21 a5
	inc $b83f                ; $a149: ee 3f b8
loc_a14c:
	*nop #$d2                ; $a14c: e2 d2
	*lax $a8                 ; $a14e: a7 a8
	*xaa #$c1                ; $a150: 8b c1
	asl $ea,x                ; $a152: 16 ea
entry_a154:
	sbc $4ca9,y              ; $a154: f9 a9 4c
	and $cad5,x              ; $a157: 3d d5 ca
	*nop $38,x               ; $a15a: 74 38
	cpy $9d67                ; $a15c: cc 67 9d
	*isc $91                 ; $a15f: e7 91
	*lax ($c9),y             ; $a161: b3 c9
	*isc ($4f),y             ; $a163: f3 4f
	eor ($17),y              ; $a165: 51 17
	*sax ($26,x)             ; $a167: 83 26
	jmp $4f57                ; $a169: 4c 57 4f

; === Block $a18e-$a307 (Code) ===
entry_a18e:
	ldy $46f0,x              ; $a18e: bc f0 46
	*anc #$21                ; $a191: 0b 21
	*rla $cad5,x             ; $a193: 3f d5 ca
	*rra $cba3,y             ; $a196: 7b a3 cb
	*nop                     ; $a199: 5a
	*nop $c7,x               ; $a19a: d4 c7
	adc $eaec,x              ; $a19c: 7d ec ea
	sbc $39                  ; $a19f: e5 39
	lda $37                  ; $a1a1: a5 37
	*lax $a8                 ; $a1a3: a7 a8
	*xaa #$c3                ; $a1a5: 8b c3
	*lax $fd3f               ; $a1a7: af 3f fd
	adc $a5ac                ; $a1aa: 6d ac a5
	sbc $72,x                ; $a1ad: f5 72
	sta $3def,x              ; $a1af: 9d ef 3d PPUDATA
	rol $a0cf,x              ; $a1b2: 3e cf a0
	asl $90,x                ; $a1b5: 16 90
	*dcp $7d75               ; $a1b7: cf 75 7d
	ror                      ; $a1ba: 6a
	*rra ($be,x)             ; $a1bb: 63 be
	ldx $4c,y                ; $a1bd: b6 4c
	lsr $c2,x                ; $a1bf: 56 c2
	*rla $e206               ; $a1c1: 2f 06 e2
	*slo $34af,x             ; $a1c4: 1f af 34 PPUDATA
	and ($0e,x)              ; $a1c7: 21 0e
	inx                      ; $a1c9: e8
	*isc ($e3,x)             ; $a1ca: e3 e3
	*sre $29,x               ; $a1cc: 57 29
	*axs #$f0                ; $a1ce: cb f0
	*nop #$2f                ; $a1d0: c2 2f
	*nop $5b                 ; $a1d2: 04 5b
	*lax #$d3                ; $a1d4: ab d3
	nop                      ; $a1d6: ea
	*shy $7ba7,x             ; $a1d7: 9c a7 7b
	*dcp $b34f               ; $a1da: cf 4f b3
	inx                      ; $a1dd: e8
	ora $a4                  ; $a1de: 05 a4
	*jam                     ; $a1e0: 32
	sta $7e6f,x              ; $a1e1: 9d 6f 7e
	ora $0c1d,x              ; $a1e4: 1d 1d 0c
	*jam                     ; $a1e7: 22
	beq $a22f                ; $a1e8: f0 45
loc_a1ea:
	*lax $be23,y             ; $a1ea: bf 23 be
	*isc ($8b,x)             ; $a1ed: e3 8b
	adc ($5d),y              ; $a1ef: 71 5d
	adc ($0d,x)              ; $a1f1: 61 0d
	*rra ($7c,x)             ; $a1f3: 63 7c
	*nop                     ; $a1f5: 3a
	ror $e779,x              ; $a1f6: 7e 79 e7
	*sre $29,x               ; $a1f9: 57 29
	*lax $a8                 ; $a1fb: a7 a8
	*xaa #$c3                ; $a1fd: 8b c3
	dec $e3                  ; $a1ff: c6 e3
	*rla $0a,x               ; $a201: 37 0a
	adc $4763,x              ; $a203: 7d 63 47
	adc $fd,x                ; $a206: 75 fd
	*slo ($23,x)             ; $a208: 03 23
	*sre $f5ac               ; $a20a: 4f ac f5
	*slo ($0f),y             ; $a20d: 13 0f
	*rra $9e,x               ; $a20f: 77 9e
	php                      ; $a211: 08
	cmp ($77,x)              ; $a212: c1 77
	bcs $a26f                ; $a214: b0 59
loc_a216:
	inc $96af                ; $a216: ee af 96
	*slo $17e5,x             ; $a219: 1f e5 17
	*nop                     ; $a21c: 7a
	*nop                     ; $a21d: 7a
	dey                      ; $a21e: 88
	ldy $ed11,x              ; $a21f: bc 11 ed
entry_a222:
	*lax $a2,y               ; $a222: b7 a2
	lda $f64e,y              ; $a224: b9 4e f6
	*sre $ebb3               ; $a227: 4f b3 eb
	lda $8121                ; $a22a: ad 21 81
entry_a22d:
	dex                      ; $a22d: ca
	pla                      ; $a22e: 68
loc_a22f:
	ldx $4cb6,y              ; $a22f: be b6 4c
	*sre $de,x               ; $a232: 57 de
	dec $8d                  ; $a234: c6 8d
	*sre $efb3               ; $a236: 4f b3 ef
	*sax $4f                 ; $a239: 87 4f
	*dcp $c63d               ; $a23b: cf 3d c6
	*isc ($8b,x)             ; $a23e: e3 8b
	cli                      ; $a240: 58
	eor $e0                  ; $a241: 45 e0
	*xaa #$29                ; $a243: 8b 29
	*sax $ba                 ; $a245: 87 ba
	lda $874e,y              ; $a247: b9 4e 87
	ora $f38c,y              ; $a24a: 19 8c f3
	sta $8d59,x              ; $a24d: 9d 59 8d
	and #$7d                 ; $a250: 29 7d
	*nop $faa7,x             ; $a252: 5c a7 fa
	cmp $5e31,y              ; $a255: d9 31 5e
entry_a258:
	*sre ($9f,x)             ; $a258: 43 9f
	*rla $a7                 ; $a25a: 27 a7
	tay                      ; $a25c: a8
	*xaa #$c1                ; $a25d: 8b c1
	asl $f3,x                ; $a25f: 16 f3
	*nop                     ; $a261: da
	bpl $a235                ; $a262: 10 d1
loc_a264:
	*lax $5eff               ; $a264: af ff 5e
	*rra $a9f0,y             ; $a267: 7b f0 a9
	nop                      ; $a26a: ea
	*jam                     ; $a26b: 22
	beq $a2d0                ; $a26c: f0 62
loc_a26e:
	dec $23c8,x              ; $a26e: de c8 23 PPUCTRL
	cpx $80f8                ; $a271: ec f8 80
	*lax $3c,y               ; $a274: b7 3c
	*sbc #$23                ; $a276: eb 23
	and $0c98                ; $a278: 2d 98 0c
	*isc ($a3),y             ; $a27b: f3 a3
	*sre $bcfe,x             ; $a27d: 5f fe bc
	*lax $5e                 ; $a280: a7 5e
	ldx $7e,y                ; $a282: b6 7e
	*rla ($df),y             ; $a284: 33 df
entry_a286:
	*sax $41                 ; $a286: 87 41
	bmi $a2ed                ; $a288: 30 63
loc_a28a:
	*xaa #$c1                ; $a28a: 8b c1
	stx $f3,y                ; $a28c: 96 f3
	cpx $fb                  ; $a28e: e4 fb
	*isc ($d4,x)             ; $a290: e3 d4
	dec $33                  ; $a292: c6 33
	*nop $4d63,x             ; $a294: dc 63 4d
	ldx $47,y                ; $a297: b6 47
	*nop $a1,x               ; $a299: f4 a1
	clv                      ; $a29b: b8
	*nop #$d2                ; $a29c: e2 d2
	dec $6b,x                ; $a29e: d6 6b
	bne $a2ad                ; $a2a0: d0 0b
loc_a2a2:
	*alr #$87                ; $a2a2: 4b 87
	lsr $29                  ; $a2a4: 46 29
	ldy $6b,x                ; $a2a6: b4 6b
	*sax $3f8d               ; $a2a8: 8f 8d 3f PPUSCROLL
	dec $6b,x                ; $a2ab: d6 6b
loc_a2ad:
	cpy $21                  ; $a2ad: c4 21
	asl $1a1d                ; $a2af: 0e 1d 1a
	ror $fb8d,x              ; $a2b2: 7e 8d fb
	*nop #$8d                ; $a2b5: c2 8d
	*rra $0eef,x             ; $a2b7: 7f ef 0e
	sty $16f7                ; $a2ba: 8c f7 16
	bcs $a24a                ; $a2bd: b0 8b
loc_a2bf:
	cmp ($16,x)              ; $a2bf: c1 16
	*sre ($0f),y             ; $a2c1: 53 0f
	adc ($4d),y              ; $a2c3: 71 4d
	ldx #$4c                 ; $a2c5: a2 4c
	adc ($02,x)              ; $a2c7: 61 02
	*nop                     ; $a2c9: 1a
	and $ff,x                ; $a2ca: 35 ff
	*sbc #$cf                ; $a2cc: eb cf
	ror $3d15,x              ; $a2ce: 7e 15 3d PPUSCROLL
	*nop $5e                 ; $a2d1: 44 5e
	*nop $355a               ; $a2d3: 0c 5a 35 PPUSTATUS
	rol $accf,x              ; $a2d6: 3e cf ac
	sty $522a                ; $a2d9: 8c 2a 52
	adc $c8e7,y              ; $a2dc: 79 e7 c8
	*isc $35,x               ; $a2df: f7 35
	*dcp $be                 ; $a2e1: c7 be
	*rra $dc8c,y             ; $a2e3: 7b 8c dc
	*rla $2cd8,y             ; $a2e6: 3b d8 2c PPUCTRL
	*isc $57,x               ; $a2e9: f7 57
	*axs #$0f                ; $a2eb: cb 0f
loc_a2ed:
	*jam                     ; $a2ed: f2
	*xaa #$bd                ; $a2ee: 8b bd
	and $5e44,x              ; $a2f0: 3d 44 5e
	asl $3b,x                ; $a2f3: 16 3b
	*jam                     ; $a2f5: 42
	*slo $0ed1,y             ; $a2f6: 1b d1 0e
	*jam                     ; $a2f9: 52
	*slo $7ecf,x             ; $a2fa: 1f cf 7e
	asl $79,x                ; $a2fd: 16 79
	*dcp $9a71               ; $a2ff: cf 71 9a
	*nop                     ; $a302: 5a
	bit $d8                  ; $a303: 24 d8
	eor $e1                  ; $a305: 45 e1
	jmp $f987                ; $a307: 4c 87 f9

; === Block $a1c2-$a1c4 (Code) ===
entry_a1c2:
	asl $e2                  ; $a1c2: 06 e2

; === Block $a235-$a23b (Code) ===
loc_a235:
	sta $b34f                ; $a235: 8d 4f b3
	*isc $4f87               ; $a238: ef 87 4f

; === Block $a26f-$a270 (Code) ===
loc_a26f:
	iny                      ; $a26f: c8

; === Block $a270-$a278 (Code) ===
entry_a270:
	*rla ($ec,x)             ; $a270: 23 ec
	sed                      ; $a272: f8
	*nop #$b7                ; $a273: 80 b7
	*nop $23eb,x             ; $a275: 3c eb 23 OAMADDR

; === Block $a298-$a29c (Code) ===
entry_a298:
	*sre $f4                 ; $a298: 47 f4
	lda ($b8,x)              ; $a29a: a1 b8

; === Block $a2c8-$a2c9 (Code) ===
entry_a2c8:
	*jam                     ; $a2c8: 02

; === Block $a2d0-$a2d3 (Code) ===
loc_a2d0:
	and $5e44,x              ; $a2d0: 3d 44 5e

; === Block $a2f4-$a2f9 (Code) ===
entry_a2f4:
	*rla $1b42,y             ; $a2f4: 3b 42 1b
	cmp ($0e),y              ; $a2f7: d1 0e

; === Block $a31e-$a50f (Code) ===
entry_a31e:
	ldy $9029,x              ; $a31e: bc 29 90
	*isc $bb28,x             ; $a321: ff 28 bb
	ldx $b1,y                ; $a324: b6 b1
	*nop                     ; $a326: da
	bpl $a307                ; $a327: 10 de
loc_a329:
	*jam                     ; $a329: 52
	sbc $c2ef,y              ; $a32a: f9 ef c2
	*nop $c53c,x             ; $a32d: dc 3c c5
	cld                      ; $a330: d8
	*lax $8c,y               ; $a331: b7 8c
	cpy $7533                ; $a333: cc 33 75
	pla                      ; $a336: 68
	adc ($17,x)              ; $a337: 61 17
	sta $8e                  ; $a339: 85 8e
	bne $a2c3                ; $a33b: d0 86
loc_a33d:
	sed                      ; $a33d: f8
	*nop $fc,x               ; $a33e: 74 fc
	*isc ($df),y             ; $a340: f3 df
	sta $9e                  ; $a342: 85 9e
	adc $72,x                ; $a344: 75 72
	stx $11,y                ; $a346: 96 11
	sei                      ; $a348: 78
	*nop $e5,x               ; $a349: 54 e5
	*nop                     ; $a34b: 3a
	*rla $d0a9,y             ; $a34c: 3b a9 d0
	and $cad5,x              ; $a34f: 3d d5 ca
	*rra $e1ad,x             ; $a352: 7f ad e1
	*nop                     ; $a355: fa
	cmp ($8e,x)              ; $a356: c1 8e
	*rla $610a               ; $a358: 2f 0a 61
	dec $f7,x                ; $a35b: d6 f7
	sbc ($d1,x)              ; $a35d: e1 d1
	sty $08                  ; $a35f: 84 08
	*sre ($d4),y             ; $a361: 53 d4
	eor $e0                  ; $a363: 45 e0
	stx $86b4                ; $a365: 8e b4 86
	*nop $804a,x             ; $a368: 5c 4a 80
	cmp $a7f4                ; $a36b: cd f4 a7
	inc $2b                  ; $a36e: e6 2b
	adc ($17,x)              ; $a370: 61 17
	*sax $8d                 ; $a372: 87 8d
	sed                      ; $a374: f8
	*sre $9785,y             ; $a375: 5b 85 97
	*nop $17,x               ; $a378: 34 17
	cpy $2b9e                ; $a37a: cc 9e 2b PPUADDR
	*dcp $e89e               ; $a37d: cf 9e e8
	*lax $57,y               ; $a380: b7 57
	cmp $614a                ; $a382: cd 4a 61
	inc $53ae                ; $a385: ee ae 53
	lda ($c6,x)              ; $a388: a1 c6
	*rra ($3c,x)             ; $a38a: 63 3c
entry_a38c:
	*isc $9e66               ; $a38c: ef 66 9e
	ldx #$2f                 ; $a38f: a2 2f
	*nop $5b                 ; $a391: 04 5b
	*lax #$ef                ; $a393: ab ef
	*rra $57                 ; $a395: 67 57
	and #$cd                 ; $a397: 29 cd
	and #$bd                 ; $a399: 29 bd
	and $5e44,x              ; $a39b: 3d 44 5e
	asl $1937,x              ; $a39e: 1e 37 19
	clv                      ; $a3a1: b8
	*sre ($ea),y             ; $a3a2: 53 ea
	*shy $7ba7,x             ; $a3a4: 9c a7 7b
	*rla $d9                 ; $a3a7: 27 d9
	sbc $d6,x                ; $a3a9: f5 d6
	bcc $a36d                ; $a3ab: 90 c0
loc_a3ad:
	sbc $34                  ; $a3ad: e5 34
	*sre $265b,x             ; $a3af: 5f 5b 26 OAMADDR
	*anc #$c8                ; $a3b2: 2b c8
	*sre $ddf3               ; $a3b4: 4f f3 dd
	eor $5e84,x              ; $a3b7: 5d 84 5e
	asl $1937,x              ; $a3ba: 1e 37 19
	clv                      ; $a3bd: b8
	*sre ($ef),y             ; $a3be: 53 ef
	*slo $b3a9,y             ; $a3c0: 1b a9 b3
	cmp $ca,x                ; $a3c3: d5 ca
	cli                      ; $a3c5: 58
	and ($c5),y              ; $a3c6: 31 c5
	cpx #$8b                 ; $a3c8: e0 8b
	adc $75c5,y              ; $a3ca: 79 c5 75
	sty $33                  ; $a3cd: 84 33
	*lax #$31                ; $a3cf: ab 31
	*shx $2afc,y             ; $a3d1: 9e fc 2a OAMDATA
	*nop                     ; $a3d4: 7a
	dey                      ; $a3d5: 88
	ldy $f33a,x              ; $a3d6: bc 3a f3
	*isc $dad6,x             ; $a3d9: ff d6 da
	dex                      ; $a3dc: ca
	*sre $6831,x             ; $a3dd: 5f 31 68
	*nop $fb,x               ; $a3e0: d4 fb
	rol $7f8d,x              ; $a3e2: 3e 8d 7f
	*nop                     ; $a3e5: fa
	*jam                     ; $a3e6: f2
entry_a3e7:
	sta $d97a,x              ; $a3e7: 9d 7a d9
	sed                      ; $a3ea: f8
	*dcp $1d7e               ; $a3eb: cf 7e 1d
	*nop $c1                 ; $a3ee: 04 c1
	stx $f020                ; $a3f0: 8e 20 f0
	lda ($a3),y              ; $a3f3: b1 a3
	*sre ($ec),y             ; $a3f5: 53 ec
	sed                      ; $a3f7: f8
	sty $21                  ; $a3f8: 84 21
	*lax #$94                ; $a3fa: ab 94
	*isc $bf                 ; $a3fc: e7 bf
	*anc #$24                ; $a3fe: 0b 24
	cpx #$08                 ; $a400: e0 08
	lda $72,x                ; $a402: b5 72
	sta $eaf1,x              ; $a404: 9d f1 ea
	*rra ($19,x)             ; $a407: 63 19
	inc $a631                ; $a409: ee 31 a6
	*dcp $fa23,y             ; $a40c: db 23 fa
	bvc $a3ed                ; $a40f: 50 dc
loc_a411:
	adc ($69),y              ; $a411: 71 69
	ror                      ; $a413: 6a
	sbc $3d                  ; $a414: e5 3d
	ldx $6b34,y              ; $a416: be 34 6b
	*isc $c3d7,x             ; $a419: ff d7 c3
	*lax ($59,x)             ; $a41c: a3 59
	*lax $8410               ; $a41e: af 10 84
	sec                      ; $a421: 38
	*nop $69,x               ; $a422: 74 69
	inc $85f7,x              ; $a424: fe f7 85
	*nop                     ; $a427: 1a
	*isc $1dde,x             ; $a428: ff de 1d
	clc                      ; $a42b: 18
	ldx $d0                  ; $a42c: a6 d0
	*nop #$2f                ; $a42e: c2 2f
	asl $4196                ; $a430: 0e 96 41
	*jam                     ; $a433: 62
	*tas $9844,y             ; $a434: 9b 44 98
	*nop #$04                ; $a437: c2 04
	*rla ($4a),y             ; $a439: 33 4a
	*rra $739e               ; $a43b: 6f 9e 73
	*lax #$31                ; $a43e: ab 31
	*shx $2afc,y             ; $a440: 9e fc 2a OAMDATA
	*nop                     ; $a443: 7a
	dey                      ; $a444: 88
	ldy $b418,x              ; $a445: bc 18 b4
	ror                      ; $a448: 6a
	adc $599f,x              ; $a449: 7d 9f 59
	clc                      ; $a44c: 18
	*nop $a4,x               ; $a44d: 54 a4
	*isc ($cf),y             ; $a44f: f3 cf
	sta ($ee),y              ; $a451: 91 ee
	*arr #$8f                ; $a453: 6b 8f
	*nop $e1f7,x             ; $a455: 7c f7 e1
	*rra $b0,x               ; $a458: 77 b0
	eor $afee,y              ; $a45a: 59 ee af
	stx $1f,y                ; $a45d: 96 1f
	sbc $17                  ; $a45f: e5 17
	*nop                     ; $a461: 7a
	*nop                     ; $a462: 7a
	dey                      ; $a463: 88
	ldy $9029,x              ; $a464: bc 29 90
	*isc $bb28,x             ; $a467: ff 28 bb
	ldx $b1,y                ; $a46a: b6 b1
	*nop                     ; $a46c: da
	bpl $a44d                ; $a46d: 10 de
loc_a46f:
	dey                      ; $a46f: 88
	*jam                     ; $a470: 72
	bcc $a471                ; $a471: 90 fe
entry_a473:
	*rra $b3f0,y             ; $a473: 7b f0 b3
	dec $dc62                ; $a476: ce 62 dc
	*nop $19f7,x             ; $a479: 3c f7 19
	lda $a2                  ; $a47c: a5 a2
	eor $5e84                ; $a47e: 4d 84 5e
	*nop $c8,x               ; $a481: 14 c8
	*rra $5d94,x             ; $a483: 7f 94 5d
	*dcp $ed58,y             ; $a486: db 58 ed
	php                      ; $a489: 08
entry_a48a:
	ror                      ; $a48a: 6a
	and $6748,y              ; $a48b: 39 48 67
	*lax $3c0b,y             ; $a48e: bf 0b 3c OAMADDR
	inc $2e                  ; $a491: e6 2e
	cmp $a8                  ; $a493: c5 a8
	ldy $b093,x              ; $a495: bc 93 b0
	*xaa #$c2                ; $a498: 8b c2
	sta $f20f,y              ; $a49a: 99 0f f2
	*xaa #$bb                ; $a49d: 8b bb
	*arr #$1d                ; $a49f: 6b 1d
	lda ($0d,x)              ; $a4a1: a1 0d
	sbc $2f                  ; $a4a3: e5 2f
	*shx $2dfc,y             ; $a4a5: 9e fc 2d OAMDATA
	*dcp ($cc,x)             ; $a4a8: c3 cc
	eor $788b,x              ; $a4aa: 5d 8b 78
	cpy $37c3                ; $a4ad: cc c3 37 OAMADDR
	lsr $86,x                ; $a4b0: 56 86
	ora ($78),y              ; $a4b2: 11 78
	*rla ($8f,x)             ; $a4b4: 23 8f
	sta $a75c                ; $a4b6: 8d 5c a7
	eor ($2d),y              ; $a4b9: 51 2d
	tya                      ; $a4bb: 98
	tya                      ; $a4bc: 98
	eor $e0                  ; $a4bd: 45 e0
	*xaa #$79                ; $a4bf: 8b 79
	and ($ac,x)              ; $a4c1: 21 ac
	dey                      ; $a4c3: 88
	eor #$d1                 ; $a4c4: 49 d1
	*dcp ($a0,x)             ; $a4c6: c3 a0
	*lax ($52),y             ; $a4c8: b3 52
	tya                      ; $a4ca: 98
	*rra $94ab,y             ; $a4cb: 7b ab 94
entry_a4ce:
	inx                      ; $a4ce: e8
	adc ($98),y              ; $a4cf: 71 98
	*dcp $8438               ; $a4d1: cf 38 84
	and ($4f,x)              ; $a4d4: 21 4f
	eor ($17),y              ; $a4d6: 51 17
	sta $33                  ; $a4d8: 85 33
	*isc ($57,x)             ; $a4da: e3 57
	and #$cc                 ; $a4dc: 29 cc
	sbc $bcef,y              ; $a4de: f9 ef bc
	*nop                     ; $a4e1: 3a
	and #$f3                 ; $a4e2: 29 f3
	asl $f6,x                ; $a4e4: 16 f6
	eor ($1f,x)              ; $a4e6: 41 1f
	*rra $d7                 ; $a4e8: 67 d7
	*nop                     ; $a4ea: 5a
	*sre ($29,x)             ; $a4eb: 43 29
	dec $f7,x                ; $a4ed: d6 f7
	sbc ($d0,x)              ; $a4ef: e1 d0
	*nop #$2f                ; $a4f1: c2 2f
	*nop $5b                 ; $a4f3: 04 5b
	*lax #$e6                ; $a4f5: ab e6
	lda $30                  ; $a4f7: a5 30
	*isc $57,x               ; $a4f9: f7 57
	and #$d0                 ; $a4fb: 29 d0
	*isc ($31,x)             ; $a4fd: e3 31
	*shx $0871,y             ; $a4ff: 9e 71 08
	*jam                     ; $a502: 42
	*shx $2fa2,y             ; $a503: 9e a2 2f PPUSTATUS
	*slo $8c1b               ; $a506: 0f 1b 8c
	*nop $ea29,x             ; $a509: dc 29 ea
	*jam                     ; $a50c: 22
	sbc ($58),y              ; $a50d: f1 58
	jmp $4f9f                ; $a50f: 4c 9f 4f

; === Block $a36d-$a378 (Code) ===
loc_a36d:
	*lax $e6                 ; $a36d: a7 e6
	*anc #$61                ; $a36f: 2b 61
	*slo $87,x               ; $a371: 17 87
	sta $5bf8                ; $a373: 8d f8 5b
	sta $97                  ; $a376: 85 97

; === Block $a3a5-$a3a7 (Code) ===
entry_a3a5:
	*lax $7b                 ; $a3a5: a7 7b

; === Block $a3c4-$a3c5 (Code) ===
entry_a3c4:
	dex                      ; $a3c4: ca

; === Block $a3ed-$a3f0 (Code) ===
loc_a3ed:
	ora $c104,x              ; $a3ed: 1d 04 c1

; === Block $a436-$a437 (Code) ===
entry_a436:
	tya                      ; $a436: 98

; === Block $a488-$a48b (Code) ===
entry_a488:
	sbc $6a08                ; $a488: ed 08 6a

; === Block $a4e9-$a4eb (Code) ===
loc_a4e9:
	*dcp $5a,x               ; $a4e9: d7 5a

; === Block $a559-$a666 (Code) ===
entry_a559:
	*slo $9c                 ; $a559: 07 9c
	*isc $57,x               ; $a55b: f7 57
	adc ($17,x)              ; $a55d: 61 17
	sta $8e                  ; $a55f: 85 8e
	bne $a4e9                ; $a561: d0 86
loc_a563:
	*jam                     ; $a563: f2
	lda $e6,x                ; $a564: b5 e6
	eor $98a8,y              ; $a566: 59 a8 98
	*rra $f0bc,y             ; $a569: 7b bc f0
	lsr $11                  ; $a56c: 46 11
	ldx $7f42                ; $a56e: ae 42 7f
	clv                      ; $a571: b8
	sbc $16ec,x              ; $a572: fd ec 16
	*rra $e5ab,y             ; $a575: 7b ab e5
	*sax $f9                 ; $a578: 87 f9
	eor $de                  ; $a57a: 45 de
	*shx $2fa2,y             ; $a57c: 9e a2 2f PPUSTATUS
	*slo $ab1b               ; $a57f: 0f 1b ab
	inc $2c,x                ; $a582: f6 2c
	*isc ($3a),y             ; $a584: f3 3a
	dex                      ; $a586: ca
	*nop                     ; $a587: fa
	*nop #$2f                ; $a588: c2 2f
	*slo $a91b               ; $a58a: 0f 1b a9
	*lax ($d5),y             ; $a58d: b3 d5
	dex                      ; $a58f: ca
	cli                      ; $a590: 58
	eor $e1                  ; $a591: 45 e1
	*rra ($b4,x)             ; $a593: 63 b4
	and ($a8,x)              ; $a595: 21 a8
	*slo $e39e               ; $a597: 0f 9e e3
	adc ($c5),y              ; $a59a: 71 c5
	lda $cd0f,y              ; $a59c: b9 0f cd
	lda $708b,y              ; $a59f: b9 8b 70
	*isc ($dc),y             ; $a5a2: f3 dc
	ror $96                  ; $a5a4: 66 96
	*nop #$36                ; $a5a6: 89 36
	ora ($74),y              ; $a5a8: 11 74
	lda #$19                 ; $a5aa: a9 19
entry_a5ac:
	*isc $2e                 ; $a5ac: e7 2e
	sta $203f                ; $a5ae: 8d 3f 20 PPUDATA
	*dcp $9a8f,y             ; $a5b1: db 8f 9a
	*sha ($ec),y             ; $a5b4: 93 ec
	*nop                     ; $a5b6: fa
	and $69b4,y              ; $a5b7: 39 b4 69
	eor ($0d,x)              ; $a5ba: 41 0d
	*nop $f9a7,x             ; $a5bc: 5c a7 f9
	*rra $7e6f,x             ; $a5bf: 7f 6f 7e
	*lax $9d19               ; $a5c2: af 19 9d
	adc $7d                  ; $a5c5: 65 7d
	inx                      ; $a5c7: e8
	adc ($17,x)              ; $a5c8: 61 17
	*sax $4b                 ; $a5ca: 87 4b
	sbc $acf3,y              ; $a5cc: f9 f3 ac
	*dcp $96,x               ; $a5cf: d7 96
	sta $e1                  ; $a5d1: 85 e1
	cmp $a8,x                ; $a5d3: d5 a8
	*xaa #$c3                ; $a5d5: 8b c3
	dec $fc                  ; $a5d7: c6 fc
	and $cac2                ; $a5d9: 2d c2 ca
	adc $6c7f,y              ; $a5dc: 79 7f 6c
	*isc $e715,x             ; $a5df: ff 15 e7
	*dcp $5b74               ; $a5e2: cf 74 5b
	*lax #$ef                ; $a5e5: ab ef
entry_a5e7:
	*rra $57                 ; $a5e7: 67 57
	and #$cd                 ; $a5e9: 29 cd
	and #$be                 ; $a5eb: 29 be
	adc $cdde,y              ; $a5ed: 79 de cd
	and $5e44,x              ; $a5f0: 3d 44 5e
	php                      ; $a5f3: 08
	*lax $57,y               ; $a5f4: b7 57
	cmp $614a                ; $a5f6: cd 4a 61
	inc $53ae                ; $a5f9: ee ae 53
	lda ($c6,x)              ; $a5fc: a1 c6
	*rra ($3c,x)             ; $a5fe: 63 3c
	*sbc #$29                ; $a600: eb 29
	ldx $a29e                ; $a602: ae 9e a2
	*rla $1b0f               ; $a605: 2f 0f 1b
	sty $29dc                ; $a608: 8c dc 29 OAMDATA
	*isc $5e,x               ; $a60b: f7 5e
	*rra $dbfa,x             ; $a60d: 7f fa db
	eor $ea4b,y              ; $a610: 59 4b ea
	sbc $3b                  ; $a613: e5 3b
	cmp $cf3e,y              ; $a615: d9 3e cf
	ldx $86b4                ; $a618: ae b4 86
	*slo $29                 ; $a61b: 07 29
entry_a61d:
	ldx #$fa                 ; $a61d: a2 fa
	cmp $5b31,y              ; $a61f: d9 31 5b
	php                      ; $a622: 08
	ldy $6e3c,x              ; $a623: bc 3c 6e
	*rla ($70),y             ; $a626: 33 70
	*lax $de                 ; $a628: a7 de
	*rla $53,x               ; $a62a: 37 53
entry_a62c:
	*rra $ab                 ; $a62c: 67 ab
entry_a62e:
	sty $b0,x                ; $a62e: 94 b0
	*rra ($8b,x)             ; $a630: 63 8b
	cmp ($16,x)              ; $a632: c1 16
	*isc ($9a),y             ; $a634: f3 9a
	cpx $21                  ; $a636: e4 21
	sta $8d59,x              ; $a638: 9d 59 8d
	*dcp $a7                 ; $a63b: c7 a7
	tay                      ; $a63d: a8
	*xaa #$c1                ; $a63e: 8b c1
entry_a640:
	tsx                      ; $a640: ba
	*sax $cc,y               ; $a641: 97 cc
	*nop                     ; $a643: 5a
	nop                      ; $a644: ea
	eor $75e6,y              ; $a645: 59 e6 75
	tax                      ; $a648: aa
	adc $e7,x                ; $a649: 75 e7
	*lax $820e,y             ; $a64b: bf 0e 82
	*axs #$0f                ; $a64e: cb 0f
	sta $f6                  ; $a650: 85 f6
	ldx $0c,y                ; $a652: b6 0c
	adc ($78),y              ; $a654: 71 78
	*jam                     ; $a656: 22
	dec $ecbd,x              ; $a657: de bd ec
	*sha $d567,y             ; $a65a: 9f 67 d5
	dex                      ; $a65d: ca
	*rra $c7,x               ; $a65e: 77 c7
	lda #$8c                 ; $a660: a9 8c
	*rra $b8                 ; $a662: 67 b8
	dec $9b                  ; $a664: c6 9b
	jmp ($e98f)              ; $a666: 6c 8f e9

; === Block $a599-$a5a2 (Code) ===
entry_a599:
	*isc ($71,x)             ; $a599: e3 71
	cmp $b9                  ; $a59b: c5 b9
	*slo $b9cd               ; $a59d: 0f cd b9
	*xaa #$70                ; $a5a0: 8b 70

; === Block $a612-$a613 (Code) ===
entry_a612:
	nop                      ; $a612: ea

; === Block $a635-$a636 (Code) ===
entry_a635:
	txs                      ; $a635: 9a

; === Block $a658-$a65d (Code) ===
entry_a658:
	lda $9fec,x              ; $a658: bd ec 9f
	*rra $d5                 ; $a65b: 67 d5

; === Block $a66b-$a673 (Code) ===
loc_a66b:
	sed                      ; $a66b: f8
	*nop $16,x               ; $a66c: 74 16
	ldx $db53                ; $a66e: ae 53 db
	*isc ($46,x)             ; $a671: e3 46

; === Block $a673-$a751 (Code) ===
entry_a673:
	*lax $7cfd,y             ; $a673: bf fd 7c
	*nop                     ; $a676: 3a
	and $9a,x                ; $a677: 35 9a
	sbc ($08),y              ; $a679: f1 08
	*sre ($87,x)             ; $a67b: 43 87
	lsr $9f                  ; $a67d: 46 9f
	*isc $5178               ; $a67f: ef 78 51
	*lax $e1fd               ; $a682: af fd e1
	cmp ($8a),y              ; $a685: d1 8a
entry_a687:
	adc $f514                ; $a687: 6d 14 f5
	ora ($78),y              ; $a68a: 11 78
	sei                      ; $a68c: 78
	*nop $e166,x             ; $a68d: dc 66 e1
	*sre $c750               ; $a690: 4f 50 c7
	*slo $87,x               ; $a693: 17 87
	*alr #$20                ; $a695: 4b 20
	*jam                     ; $a697: b2
	sta $6372,x              ; $a698: 9d 72 63
	php                      ; $a69b: 08
	bpl $a66b                ; $a69c: 10 cd
loc_a69e:
	and #$be                 ; $a69e: 29 be
	adc $acce,y              ; $a6a0: 79 ce ac
	dec $7b                  ; $a6a3: c6 7b
	beq $a650                ; $a6a5: f0 a9
loc_a6a7:
	nop                      ; $a6a7: ea
	*jam                     ; $a6a8: 22
	beq $a70d                ; $a6a9: f0 62
loc_a6ab:
	cmp ($a9),y              ; $a6ab: d1 a9
	inc $7d,x                ; $a6ad: f6 7d
	*nop $61                 ; $a6af: 64 61
	*jam                     ; $a6b1: 52
	*sha ($cf),y             ; $a6b2: 93 cf
	rol $b947,x              ; $a6b4: 3e 47 b9
	ldx $f33d                ; $a6b7: ae 3d f3
	*dcp $df85,x             ; $a6ba: df 85 df
	lda $9d                  ; $a6bd: a5 9d
	*nop $13a7,x             ; $a6bf: 5c a7 13
	*jam                     ; $a6c2: f2
	bpl $a692                ; $a6c3: 10 cd
loc_a6c5:
	and #$be                 ; $a6c5: 29 be
	*isc ($d3,x)             ; $a6c7: e3 d3
	*nop $45,x               ; $a6c9: d4 45
	sbc ($63,x)              ; $a6cb: e1 63
	ldy $21,x                ; $a6cd: b4 21
	lda $e510,x              ; $a6cf: bd 10 e5
	and ($fc,x)              ; $a6d2: 21 fc
	*isc $e1,x               ; $a6d4: f7 e1
	*rra $9c                 ; $a6d6: 67 9c
	cmp $b8                  ; $a6d8: c5 b8
	adc $33ee,y              ; $a6da: 79 ee 33 PPUADDR
	*alr #$44                ; $a6dd: 4b 44
	*tas $bc08,y             ; $a6df: 9b 08 bc
	bit $8476                ; $a6e2: 2c 76 84
	*rla $94,x               ; $a6e5: 37 94
	ldx $f07b,y              ; $a6e7: be 7b f0
	*lax $0f,y               ; $a6ea: b7 0f
	and ($76),y              ; $a6ec: 31 76
	and $33e3                ; $a6ee: 2d e3 33 OAMADDR
	*nop $5add               ; $a6f1: 0c dd 5a
	clc                      ; $a6f4: 18
	eor $e0                  ; $a6f5: 45 e0
	stx $353e                ; $a6f7: 8e 3e 35 PPUADDR
	*jam                     ; $a6fa: 72
	sta $b644,x              ; $a6fb: 9d 44 b6
	*jam                     ; $a6fe: 62
	adc ($10,x)              ; $a6ff: 61 10
	beq $a748                ; $a701: f0 45
loc_a703:
	ldy $d690,x              ; $a703: bc 90 d6
	*nop $24                 ; $a706: 44 24
	inx                      ; $a708: e8
	sbc ($d0,x)              ; $a709: e1 d0
	eor $4ca9,y              ; $a70b: 59 a9 4c
	and $cad5,x              ; $a70e: 3d d5 ca
	*nop $38,x               ; $a711: 74 38
	cpy $9c67                ; $a713: cc 67 9c
	*jam                     ; $a716: 42
	bpl $a6c0                ; $a717: 10 a7
loc_a719:
	tay                      ; $a719: a8
	*xaa #$c1                ; $a71a: 8b c1
	*xaa #$7b                ; $a71c: 8b 7b
	jsr $b38f                ; $a71e: 20 8f b3
loc_a721:
	*nop #$02                ; $a721: e2 02
	*nop $aef3,x             ; $a723: dc f3 ae
	ldy $86,x                ; $a726: b4 86
	*sre ($ad),y             ; $a728: 53 ad
	*isc $a1c3               ; $a72a: ef c3 a1
	sty $5e                  ; $a72d: 84 5e
	php                      ; $a72f: 08
	*lax $57,y               ; $a730: b7 57
	cmp $614a                ; $a732: cd 4a 61
	inc $53ae                ; $a735: ee ae 53
	lda ($c6,x)              ; $a738: a1 c6
	*rra ($3c,x)             ; $a73a: 63 3c
	*nop #$10                ; $a73c: e2 10
	sta $3d                  ; $a73e: 85 3d
	*nop $4c                 ; $a740: 44 4c
	adc ($78),y              ; $a742: 71 78
	cli                      ; $a744: 58
	sbc $87ee                ; $a745: ed ee 87
loc_a748:
	ora $f38c,y              ; $a748: 19 8c f3
	ldy $bca6                ; $a74b: ac a6 bc
	*isc $57,x               ; $a74e: f7 57
	inx                      ; $a750: e8
	rts                      ; $a751: 60

; === Block $a68f-$a693 (Code) ===
entry_a68f:
	sbc ($4f,x)              ; $a68f: e1 4f
	bvc $a65a                ; $a691: 50 c7

; === Block $a692-$a69c (Code) ===
loc_a692:
	*dcp $17                 ; $a692: c7 17
	*sax $4b                 ; $a694: 87 4b
	jsr $9db2                ; $a696: 20 b2 9d
loc_a699:
	*jam                     ; $a699: 72
	*rra ($08,x)             ; $a69a: 63 08

; === Block $a6b9-$a6bd (Code) ===
entry_a6b9:
	*isc ($df),y             ; $a6b9: f3 df
	sta $df                  ; $a6bb: 85 df

; === Block $a6c0-$a6c2 (Code) ===
loc_a6c0:
	*lax $13                 ; $a6c0: a7 13

; === Block $a6d3-$a6d6 (Code) ===
entry_a6d3:
	*nop $e1f7,x             ; $a6d3: fc f7 e1

; === Block $a70d-$a70d (Code) ===
loc_a70d:
	jmp $d53d                ; $a70d: 4c 3d d5

; === Block $a712-$a713 (Code) ===
loc_a712:
	sec                      ; $a712: 38

; === Block $a77b-$a808 (Code) ===
entry_a77b:
	*lax $cd32               ; $a77b: af 32 cd
	*nop $c3                 ; $a77e: 44 c3
	cmp $82e7,x              ; $a780: dd e7 82
	bmi $a712                ; $a783: 30 8d
loc_a785:
	*jam                     ; $a785: 72
	*slo ($fc),y             ; $a786: 13 fc
	*isc $57,x               ; $a788: f7 57
	*isc $b360               ; $a78a: ef 60 b3
	cmp $2c5f,x              ; $a78d: dd 5f 2c PPUDATA
	adc ($8f),y              ; $a790: 71 8f
	rol $60b6                ; $a792: 2e b6 60
	and #$ea                 ; $a795: 29 ea
	*jam                     ; $a797: 22
	beq $a78b                ; $a798: f0 f1
loc_a79a:
	tsx                      ; $a79a: ba
	*lax $cf62,y             ; $a79b: bf 62 cf
	*rla ($ac),y             ; $a79e: 33 ac
	*lax $0cbd               ; $a7a0: af bd 0c
	*jam                     ; $a7a3: 22
	beq $a797                ; $a7a4: f0 f1
loc_a7a6:
	tsx                      ; $a7a6: ba
	*tas $5c3d,y             ; $a7a7: 9b 3d 5c
	lda $84                  ; $a7aa: a5 84
	lsr $371e,x              ; $a7ac: 5e 1e 37 PPUADDR
	*slo $ac                 ; $a7af: 07 ac
	ror $84,x                ; $a7b1: 76 84
	and $01,x                ; $a7b3: 35 01
	*isc $1f,x               ; $a7b5: f7 1f
	and ($f9,x)              ; $a7b7: 21 f9
	*lax $31,y               ; $a7b9: b7 31
	ror $7b1e                ; $a7bb: 6e 1e 7b
	sty $d1d2                ; $a7be: 8c d2 d1
	rol $c2                  ; $a7c1: 26 c2
	rol $2395                ; $a7c3: 2e 95 23 PPUSCROLL
	*nop $d1e5,x             ; $a7c6: 3c e5 d1
	*lax $e4                 ; $a7c9: a7 e4
	*slo $f371,y             ; $a7cb: 1b 71 f3
	*jam                     ; $a7ce: 52
	adc $479f,x              ; $a7cf: 7d 9f 47
	rol $8d,x                ; $a7d2: 36 8d
	plp                      ; $a7d4: 28
	and ($55,x)              ; $a7d5: 21 55
	*slo $47f0,y             ; $a7d7: 1b f0 47
	stx $b1,y                ; $a7da: 96 b1
	lsr $bf                  ; $a7dc: 46 bf
	ldx $42ad                ; $a7de: ae ad 42
	*rla $e0,x               ; $a7e1: 37 e0
	*nop $ec87,x             ; $a7e3: dc 87 ec
	*nop                     ; $a7e6: 5a
	and $84,x                ; $a7e7: 35 84
	*nop $a0,x               ; $a7e9: 34 a0
	stx $7b                  ; $a7eb: 86 7b
	beq $a7a6                ; $a7ed: f0 b7
loc_a7ef:
	lda ($60,x)              ; $a7ef: a1 60
	*nop #$2f                ; $a7f1: c2 2f
	*slo $831b               ; $a7f3: 0f 1b 83
	dec $3b,x                ; $a7f6: d6 3b
	*jam                     ; $a7f8: 42
	*nop                     ; $a7f9: 1a
	stx $1b52                ; $a7fa: 8e 52 1b
	*sax $739e               ; $a7fd: 8f 9e 73
	*slo $62,x               ; $a800: 17 62
	*nop $5e,x               ; $a802: d4 5e
	eor #$d8                 ; $a804: 49 d8
	eor $e1                  ; $a806: 45 e1
	rts                      ; $a808: 60

; === Block $a78b-$a78b (Code) ===
loc_a78b:
	rts                      ; $a78b: 60

; === Block $a7b4-$a7b9 (Code) ===
entry_a7b4:
	ora ($f7,x)              ; $a7b4: 01 f7
	*slo $f921,x             ; $a7b6: 1f 21 f9

; === Block $a85d-$a917 (Code) ===
entry_a85d:
	*isc $dad6,x             ; $a85d: ff d6 da
	dex                      ; $a860: ca
	*sre $c63d,x             ; $a861: 5f 3d c6
	ldy $a9                  ; $a864: a4 a9
	*sax ($ee,x)             ; $a866: 83 ee
	asl $41,x                ; $a868: 16 41
	bmi $a7ef                ; $a86a: 30 83
loc_a86c:
	adc $3f                  ; $a86c: 65 3f
	adc $8d,x                ; $a86e: 75 8d
	*nop                     ; $a870: 1a
	*sha $ce67,y             ; $a871: 9f 67 ce
	ldy $53c6                ; $a874: ac c6 53
	*lax $3f5b               ; $a877: af 5b 3f OAMADDR
	ora $c3ef,y              ; $a87a: 19 ef c3
	ldy #$98                 ; $a87d: a0 98
	eor $e0                  ; $a87f: 45 e0
	*axs #$35                ; $a881: cb 35
	*slo ($0f),y             ; $a883: 13 0f
	*rra $9e,x               ; $a885: 77 9e
	php                      ; $a887: 08
	*nop #$35                ; $a888: c2 35
	*lax $a8                 ; $a88a: a7 a8
	*xaa #$c2                ; $a88c: 8b c2
	*dcp $6b                 ; $a88e: c7 6b
	*rra ($8f),y             ; $a890: 73 8f
	*isc $6196,x             ; $a892: ff 96 61
	lsr $ff29,x              ; $a895: 5e 29 ff
	*sbc #$6d                ; $a898: eb 6d
	adc $2f                  ; $a89a: 65 2f
	ldy $d468                ; $a89c: ac 68 d4
	*isc $663e,y             ; $a89f: fb 3e 66
	*slo $9c                 ; $a8a2: 07 9c
	*lax $5e                 ; $a8a4: a7 5e
	ldx $7e,y                ; $a8a6: b6 7e
	*nop $a1,x               ; $a8a8: 34 a1
	*lax #$94                ; $a8aa: ab 94
entry_a8ac:
	*isc $265b,x             ; $a8ac: ff 5b 26 OAMADDR
	*anc #$61                ; $a8af: 2b 61
	*slo $85,x               ; $a8b1: 17 85
	*rla ($51),y             ; $a8b3: 33 51
	*rla ($ee),y             ; $a8b5: 33 ee
	sed                      ; $a8b7: f8
	*rla $c5                 ; $a8b8: 27 c5
	adc $3d4c,y              ; $a8ba: 79 4c 3d OAMDATA
	*nop $5c3a,x             ; $a8bd: dc 3a 5c
	ldx #$7e                 ; $a8c0: a2 7e
	ldx $7235                ; $a8c2: ae 35 72
entry_a8c5:
	*shy $ff84,x             ; $a8c5: 9c 84 ff
	*nop $3fdb,x             ; $a8c8: 3c db 3f OAMADDR
	*nop $dfb5,x             ; $a8cb: fc b5 df
	ldy $04                  ; $a8ce: a4 04
	sbc $08a1,y              ; $a8d0: f9 a1 08
	bmi $a938                ; $a8d3: 30 63
loc_a8d5:
	*xaa #$c5                ; $a8d5: 8b c5
	*rla $283d,x             ; $a8d7: 3f 3d 28 PPUSCROLL
	and ($9e,x)              ; $a8da: 21 9e
entry_a8dc:
	*isc ($79,x)             ; $a8dc: e3 79
	stx $87,y                ; $a8de: 96 87
	*isc ($57),y             ; $a8e0: f3 57
	cpx $06                  ; $a8e2: e4 06
	ldy $dec3,x              ; $a8e4: bc c3 de
	ora $ee19,x              ; $a8e7: 1d 19 ee
	*rla $48,x               ; $a8ea: 37 48
	iny                      ; $a8ec: c8
	*sbc #$b2                ; $a8ed: eb b2
	*nop $7573,x             ; $a8ef: 3c 73 75
	rol $7bf2                ; $a8f2: 2e f2 7b
	*sax $dd                 ; $a8f5: 87 dd
	stx $1ac2                ; $a8f7: 8e c2 1a
	lda $744e,y              ; $a8fa: b9 4e 74
	*nop $a0f4,x             ; $a8fd: fc f4 a0
	stx $7b                  ; $a900: 86 7b
	sta $5ae6                ; $a902: 8d e6 5a
	*slo $71cd,x             ; $a905: 1f cd 71
	*isc $7d29               ; $a908: ef 29 7d
	adc $bc87,y              ; $a90b: 79 87 bc
	*nop                     ; $a90e: 3a
	*rla ($dc),y             ; $a90f: 33 dc
	ror $9191                ; $a911: 6e 91 91
	*dcp $64,x               ; $a914: d7 64
	sei                      ; $a916: 78

; === Block $a863-$a86a (Code) ===
entry_a863:
	dec $a4                  ; $a863: c6 a4
	lda #$83                 ; $a865: a9 83
	inc $4116                ; $a867: ee 16 41

; === Block $a904-$a905 (Code) ===
entry_a904:
	*nop                     ; $a904: 5a

; === Block $a910-$a9be (Code) ===
entry_a910:
	*nop $916e,x             ; $a910: dc 6e 91
	sta ($d7),y              ; $a913: 91 d7
	*nop $78                 ; $a915: 64 78
	inc $ea                  ; $a917: e6 ea
	eor $f7e4,x              ; $a919: 5d e4 f7
	ora $72b5                ; $a91c: 0d b5 72
	sta $d76a,x              ; $a91f: 9d 6a d7
	lda ($24,x)              ; $a922: a1 24
	*jam                     ; $a924: 32
	*nop #$19                ; $a925: c2 19
	inc $b8af                ; $a927: ee af b8
	*sre $39e2,y             ; $a92a: 5b e2 39 PPUSTATUS
	*isc $dda3,x             ; $a92d: ff a3 dd
	*dcp ($cf,x)             ; $a930: c3 cf
	adc ($ac),y              ; $a932: 71 ac
	*sre $7fe4,y             ; $a934: 5b e4 7f
	*xaa #$0d                ; $a937: 8b 0d
	*dcp $8f,x               ; $a939: d7 8f
	*isc ($08),y             ; $a93b: f3 08
	asl $94,x                ; $a93d: 16 94
	*jam                     ; $a93f: 32
entry_a940:
	*nop $fe9c,x             ; $a940: 3c 9c fe
	ldy $5a4c                ; $a943: ac 4c 5a
	*rla $d988,y             ; $a946: 3b 88 d9
	stx $7b,y                ; $a949: 96 7b
	sty $c2d2                ; $a94b: 8c d2 c2
	ora $fcd8,x              ; $a94e: 1d d8 fc
	ror $3b3e                ; $a951: 6e 3e 3b PPUADDR
	asl $5d,x                ; $a954: 16 5d
	adc $2e                  ; $a956: 65 2e
	*jam                     ; $a958: f2
	adc $d1d8,x              ; $a959: 7d d8 d1
	adc $30                  ; $a95c: 65 30
	*isc $57,x               ; $a95e: f7 57
	and #$d0                 ; $a960: 29 d0
	*isc ($31,x)             ; $a962: e3 31
	*shx $9f77,y             ; $a964: 9e 77 9f
	*nop #$2d                ; $a967: 82 2d
	*dcp $a7                 ; $a969: c7 a7
	txa                      ; $a96b: 8a
	sta $04ad,y              ; $a96c: 99 ad 04
	*alr #$40                ; $a96f: 4b 40
	*nop $1a2d,x             ; $a971: dc 2d 1a
	inc $f790,x              ; $a974: fe 90 f7
	bvs $a96c                ; $a977: 70 f3
loc_a979:
	*nop $2164,x             ; $a979: dc 64 21 OAMDATA
	*rla ($fe),y             ; $a97c: 33 fe
	sbc $335e,x              ; $a97e: fd 5e 33 PPUADDR
	ldy $246f,x              ; $a981: bc 6f 24 PPUDATA
	*jam                     ; $a984: 32
	and $78e7                ; $a985: 2d e7 78
	sbc $0869,x              ; $a988: fd 69 08
	ror $eb1e                ; $a98b: 6e 1e eb
	sta $fc                  ; $a98e: 85 fc
	*rra $d2,x               ; $a990: 77 d2
	stx $f1                  ; $a992: 86 f1
	sed                      ; $a994: f8
	*jam                     ; $a995: 52
	*sre $4dc7               ; $a996: 4f c7 4d
	*slo $03e9,y             ; $a999: 1b e9 03
	*lax $e7                 ; $a99c: a7 e7
	*shx $3fe3,y             ; $a99e: 9e e3 3f OAMADDR
	*nop #$92                ; $a9a1: c2 92
	ror $7235,x              ; $a9a3: 7e 35 72
	*shx $86d4,y             ; $a9a6: 9e d4 86
	*rla $98                 ; $a9a9: 27 98
	*slo ($cf,x)             ; $a9ab: 03 cf
	and $c2ef,y              ; $a9ad: 39 ef c2
	dec $b160,x              ; $a9b0: de 60 b1
	stx $1d                  ; $a9b3: 86 1d
	lsr $0737,x              ; $a9b5: 5e 37 07
	*shx $06e3,y             ; $a9b8: 9e e3 06
	*sre $9a8f,x             ; $a9bb: 5f 8f 9a

; === Block $a938-$a93b (Code) ===
loc_a938:
	ora $8fd7                ; $a938: 0d d7 8f

; === Block $a96a-$a96c (Code) ===
entry_a96a:
	*lax $8a                 ; $a96a: a7 8a

; === Block $a9ae-$a9b4 (Code) ===
loc_a9ae:
	sta $54eb                ; $a9ae: 8d eb 54
	cmp $fdf0,y              ; $a9b1: d9 f0 fd
	rts                      ; $a9b4: 60

; === Block $a9b7-$a9e9 (Code) ===
loc_a9b7:
	sbc $d7,x                ; $a9b7: f5 d7
	*isc ($d3),y             ; $a9b9: f3 d3
	beq $a9ae                ; $a9bb: f0 f1
loc_a9bd:
	clv                      ; $a9bd: b8
	cmp $e14f                ; $a9be: cd 4f e1
	inc $906b                ; $a9c1: ee 6b 90
	*nop #$37                ; $a9c4: 82 37
	txa                      ; $a9c6: 8a
	*nop $f1                 ; $a9c7: 64 f1
	ora ($b8,x)              ; $a9c9: 01 b8
	sbc $81                  ; $a9cb: e5 81
	*nop                     ; $a9cd: fa
	cmp ($8d,x)              ; $a9ce: c1 8d
	*lax $afeb,y             ; $a9d0: bf eb af
	*isc $a7                 ; $a9d3: e7 a7
	sbc ($d6,x)              ; $a9d5: e1 d6
	lsr $fc                  ; $a9d7: 46 fc
loc_a9d9:
	stx $b6                  ; $a9d9: 86 b6
	ldy $6f,x                ; $a9db: b4 6f
	and $78b6                ; $a9dd: 2d b6 78
	*nop $dc93,x             ; $a9e0: fc 93 dc
	bit $6f                  ; $a9e3: 24 6f
	jsr $2198                ; $a9e5: 20 98 21 PPUCTRL
loc_a9e8:
	iny                      ; $a9e8: c8
	rti                      ; $a9e9: 40

; === Block $a9be-$aa8c (Code) ===
entry_a9be:
	*nop                     ; $a9be: 5a
	*isc ($5c),y             ; $a9bf: f3 5c
	sty $32                  ; $a9c1: 84 32
	sbc $17f2,y              ; $a9c3: f9 f2 17
	sbc $180c,x              ; $a9c6: fd 0c 18
	*nop                     ; $a9c9: fa
	eor $cad5,y              ; $a9ca: 59 d5 ca
	*rra ($4a),y             ; $a9cd: 73 4a
	*rra $779e               ; $a9cf: 6f 9e 77
	*dcp ($a7,x)             ; $a9d2: c3 a7
	*isc $9e                 ; $a9d4: e7 9e
	*isc ($58,x)             ; $a9d6: e3 58
	*nop $eb9e,x             ; $a9d8: fc 9e eb
	tax                      ; $a9db: aa
	*jam                     ; $a9dc: 02
	*shx $ea26,y             ; $a9dd: 9e 26 ea
entry_a9e0:
	*sre $c63d,x             ; $a9e0: 5f 3d c6
	*rra $2485,x             ; $a9e3: 7f 85 24 PPUSCROLL
	*nop $ee68,x             ; $a9e6: fc 68 ee
	ora #$f7                 ; $a9e9: 09 f7
	*anc #$0b                ; $a9eb: 0b 0b
	*nop $7dbd,x             ; $a9ed: 7c bd 7d
	ora $65e2,x              ; $a9f0: 1d e2 65
	ldy $4b3f,x              ; $a9f3: bc 3f 4b
	and $6ec6,x              ; $a9f6: 3d c6 6e
	ora $58,x                ; $a9f9: 15 58
	*nop #$f1                ; $a9fb: e2 f1
	clv                      ; $a9fd: b8
	*dcp $a4f0               ; $a9fe: cf f0 a4
	*sha $1d8d,y             ; $aa01: 9f 8d 1d
	cmp ($3e,x)              ; $aa04: c1 3e
	sbc ($65,x)              ; $aa06: e1 65
	cpy $5b9e                ; $aa08: cc 9e 5b
	iny                      ; $aa0b: c8
	nop                      ; $aa0c: ea
	cmp $e3                  ; $aa0d: c5 e3
	adc ($9f),y              ; $aa0f: 71 9f
	sbc ($49,x)              ; $aa11: e1 49
	*rla $3b1a,x             ; $aa13: 3f 1a 3b PPUSTATUS
	*nop #$7d                ; $aa16: 82 7d
	*nop #$cb                ; $aa18: c2 cb
	sta $6d2a,y              ; $aa1a: 99 2a 6d
	*dcp $64                 ; $aa1d: c7 64
	*anc #$8f                ; $aa1f: 2b 8f
	inc $f5                  ; $aa21: e6 f5
	cmp ($3d,x)              ; $aa23: c1 3d
	cli                      ; $aa25: 58
	*tas $7ca9,y             ; $aa26: 9b a9 7c
	cmp $a3                  ; $aa29: c5 a3
	*sre ($ec),y             ; $aa2b: 53 ec
	*nop                     ; $aa2d: fa
	and $ff,x                ; $aa2e: 35 ff
	*sbc #$ca                ; $aa30: eb ca
	adc $eb,x                ; $aa32: 75 eb
	*rra $e3                 ; $aa34: 67 e3
	and $74f8,x              ; $aa36: 3d f8 74
	*slo $78,x               ; $aa39: 17 78
	*tas $7ca9,y             ; $aa3b: 9b a9 7c
	cmp $d8                  ; $aa3e: c5 d8
	lda $35,x                ; $aa40: b5 35
	ror $e8f5,x              ; $aa42: 7e f5 e8
	*nop $fb,x               ; $aa45: d4 fb
	rol $7f8d,x              ; $aa47: 3e 8d 7f
	*nop                     ; $aa4a: fa
	*jam                     ; $aa4b: f2
	sta $d97a,x              ; $aa4c: 9d 7a d9
	sed                      ; $aa4f: f8
	*dcp $1d7e               ; $aa50: cf 7e 1d
	ora $de                  ; $aa53: 05 de
	rol $3e                  ; $aa55: 26 3e
	stx $75,y                ; $aa57: 96 75
	*jam                     ; $aa59: 72
	*shy $9bd2,x             ; $aa5a: 9c d2 9b
	*isc $9d                 ; $aa5d: e7 9d
	*isc $350a               ; $aa5f: ef 0a 35 PPUSTATUS
	*isc $a6b8,x             ; $aa62: ff b8 a6
	bne $aa5e                ; $aa65: d0 f7
loc_aa67:
	sbc ($d1,x)              ; $aa67: e1 d1
	*sre $2d12               ; $aa69: 4f 12 2d PPUSTATUS
	*isc $b4                 ; $aa6c: e7 b4
	and ($bd,x)              ; $aa6e: 21 bd
	sbc ($46,x)              ; $aa70: e1 46
	*lax $14f7,y             ; $aa72: bf f7 14
	*nop                     ; $aa75: da
	asl $3afc,x              ; $aa76: 1e fc 3a OAMDATA
	and #$e2                 ; $aa79: 29 e2
	eor $ba                  ; $aa7b: 45 ba
	ldx $75f6,y              ; $aa7d: be f6 75
	*jam                     ; $aa80: 72
	*shy $9bd2,x             ; $aa81: 9c d2 9b
	*isc $9d                 ; $aa84: e7 9d
	*isc $350a               ; $aa86: ef 0a 35 PPUSTATUS
	*isc $f1b4,x             ; $aa89: ff b4 f1
	brk                      ; $aa8c: 00

; === Block $a9e7-$a9e9 (Code) ===
loc_a9e7:
	and ($c8,x)              ; $a9e7: 21 c8

; === Block $a9f0-$aa52 (Code) ===
loc_a9f0:
	cmp ($bd),y              ; $a9f0: d1 bd
	adc ($f1),y              ; $a9f2: 71 f1
	bne $a9b7                ; $a9f4: d0 c1
loc_a9f6:
	stx $ff26                ; $a9f6: 8e 26 ff
	ldy $92                  ; $a9f9: a4 92
	lsr $829f,x              ; $a9fb: 5e 9f 82
	rol                      ; $a9fe: 2a
	sbc ($db),y              ; $a9ff: f1 db
	adc $d7,x                ; $aa01: 75 d7
	*isc ($56),y             ; $aa03: f3 56
	lda ($8d,x)              ; $aa05: a1 8d
	*lax $24e9,y             ; $aa07: bf e9 24 PPUMASK
	*sax $a7,y               ; $aa0a: 97 a7
	sbc ($d1,x)              ; $aa0c: e1 d1
	cmp ($d1),y              ; $aa0e: d1 d1
	bvc $a9d9                ; $aa10: 50 c7
loc_aa12:
	*slo ($7f),y             ; $aa12: 13 7f
	*jam                     ; $aa14: d2
	eor #$2f                 ; $aa15: 49 2f
	*sre $afc3               ; $aa17: 4f c3 af
	rol $89,x                ; $aa1a: 36 89
	and ($d0),y              ; $aa1c: 31 d0
	*sre ($68),y             ; $aa1e: 53 68
	*sha ($08),y             ; $aa20: 93 08
	dec $24b5,x              ; $aa22: de b5 24 PPUSCROLL
	sed                      ; $aa25: f8
	*shx $ee7c,y             ; $aa26: 9e 7c ee
	tsx                      ; $aa29: ba
	inc $d46a,x              ; $aa2a: fe 6a d4
	and ($b7),y              ; $aa2d: 31 b7
	sbc $9224,x              ; $aa2f: fd 24 92
	*nop $fc,x               ; $aa32: f4 fc
	*nop                     ; $aa34: 3a
	*dcp $b8e7,x             ; $aa35: df e7 b8
	cmp $e14f                ; $aa38: cd 4f e1
	nop                      ; $aa3b: ea
	*rla $9a,x               ; $aa3c: 37 9a
	cpx $21                  ; $aa3e: e4 21
	*lax ($0a,x)             ; $aa40: a3 0a
	*sre ($3c,x)             ; $aa42: 43 3c
	cpx #$cb                 ; $aa44: e0 cb
	beq $a9e7                ; $aa46: f0 9f
loc_aa48:
	lda ($83,x)              ; $aa48: a1 83
	*slo $d27f,y             ; $aa4a: 1b 7f d2
	eor #$2f                 ; $aa4d: 49 2f
	*sre $9bc2               ; $aa4f: 4f c2 9b
	brk                      ; $aa52: 00

; === Block $aa3c-$aa3e (Code) ===
entry_aa3c:
	lda #$7c                 ; $aa3c: a9 7c

; === Block $aa52-$aa55 (Code) ===
entry_aa52:
	ora $de05,x              ; $aa52: 1d 05 de

; === Block $aa5e-$aa6e (Code) ===
loc_aa5e:
	sta $0aef,x              ; $aa5e: 9d ef 0a
	and $ff,x                ; $aa61: 35 ff
	clv                      ; $aa63: b8
	ldx $d0                  ; $aa64: a6 d0
	*isc $e1,x               ; $aa66: f7 e1
	cmp ($4f),y              ; $aa68: d1 4f
	*jam                     ; $aa6a: 12
	and $b4e7                ; $aa6b: 2d e7 b4

; === Block $aa7c-$aa7d (Code) ===
entry_aa7c:
	tsx                      ; $aa7c: ba

; === Block $aa85-$aa8c (Code) ===
entry_aa85:
	sta $0aef,x              ; $aa85: 9d ef 0a
	and $ff,x                ; $aa88: 35 ff
	ldy $f1,x                ; $aa8a: b4 f1

; === Block $aaa1-$ab2f (Code) ===
entry_aaa1:
	*sax $78                 ; $aaa1: 87 78
	tya                      ; $aaa3: 98
	*las $a616,y             ; $aaa4: bb 16 a6
	*lax $bdde               ; $aaa7: af de bd
	*sre $29                 ; $aaaa: 47 29
	*jam                     ; $aaac: 02
	cmp #$f3                 ; $aaad: c9 f3
	*shx $37e3,y             ; $aaaf: 9e e3 37 OAMADDR
	asl $31f1                ; $aab2: 0e f1 31 PPUMASK
	*rra $5178               ; $aab5: 6f 78 51
	*lax $2cfd               ; $aab8: af fd 2c PPUSCROLL
	*isc $19,x               ; $aabb: f7 19
	clv                      ; $aabd: b8
	adc $3f                  ; $aabe: 65 3f
	*nop $d9,x               ; $aac0: 74 d9
	adc $e1,x                ; $aac2: 75 e1
	stx $7b,y                ; $aac4: 96 7b
	sty $3bdc                ; $aac6: 8c dc 3b OAMDATA
	cpy $c5                  ; $aac9: c4 c5
	sta $8259,x              ; $aacb: 9d 59 82
	*dcp $9b71               ; $aace: cf 71 9b
	stx $56                  ; $aad1: 86 56
	stx $bc,y                ; $aad3: 96 bc
	*sax $e6                 ; $aad5: 87 e6
	*nop $d8c5,x             ; $aad7: dc c5 d8
	lda $17,x                ; $aada: b5 17
	*jam                     ; $aadc: 92
	*nop $eea7,x             ; $aadd: 7c a7 ee
	*lax ($94,x)             ; $aae0: a3 94
	sta ($67,x)              ; $aae2: 81 67
	clv                      ; $aae4: b8
	cmp $3cc3                ; $aae5: cd c3 3c OAMADDR
	*isc $b8                 ; $aae8: e7 b8
	*nop $5e,x               ; $aaea: d4 5e
	eor #$fb                 ; $aaec: 49 fb
	cpy $c5                  ; $aaee: c4 c5
	sta $8259,x              ; $aaf0: 9d 59 82
	*dcp $9b71               ; $aaf3: cf 71 9b
	stx $43                  ; $aaf6: 86 43
	*isc ($6e),y             ; $aaf8: f3 6e
	*jam                     ; $aafa: 62
	cpx $c65b                ; $aafb: ec 5b c6
	ror $19                  ; $aafe: 66 19
	tsx                      ; $ab00: ba
	ldy $65,x                ; $ab01: b4 65
	*rla $9477,x             ; $ab03: 3f 77 94
	lda $b867,y              ; $ab06: b9 67 b8
	cmp $70c3                ; $ab09: cd c3 70
	*isc $1f,x               ; $ab0c: f7 1f
	ldy $d44d,x              ; $ab0e: bc 4d d4
	ldx $7b39,y              ; $ab11: be 39 7b
	beq $aafe                ; $ab14: f0 e8
loc_ab16:
	*nop $842c,x             ; $ab16: dc 2c 84
	ldy $fd                  ; $ab19: a4 fd
	*isc $1613               ; $ab1b: ef 13 16
	jsr $8ebf                ; $ab1e: 20 bf 8e
loc_ab21:
	cpx #$b3                 ; $ab21: e0 b3
	*nop $f865,x             ; $ab23: dc 65 f8
	*nop $94bf,x             ; $ab26: 5c bf 94
	*sha $00b9,y             ; $ab29: 9f b9 00
	*slo $1cbb,x             ; $ab2c: 1f bb 1c
	jmp $be59                ; $ab2f: 4c 59 be

; === Block $aad0-$aad3 (Code) ===
entry_aad0:
	*tas $5686,y             ; $aad0: 9b 86 56

; === Block $aade-$aae0 (Code) ===
entry_aade:
	*lax $ee                 ; $aade: a7 ee

; === Block $aaef-$aaf6 (Code) ===
entry_aaef:
	cmp $9d                  ; $aaef: c5 9d
	eor $cf82,y              ; $aaf1: 59 82 cf
	adc ($9b),y              ; $aaf4: 71 9b

; === Block $ab1a-$ab26 (Code) ===
entry_ab1a:
	sbc $13ef,x              ; $ab1a: fd ef 13
	asl $20,x                ; $ab1d: 16 20
	*lax $e08e,y             ; $ab1f: bf 8e e0
	*lax ($dc),y             ; $ab22: b3 dc
	adc $f8                  ; $ab24: 65 f8

; === Block $ab39-$ab46 (Code) ===
entry_ab39:
	cmp $7e                  ; $ab39: c5 7e
	adc $7eca,y              ; $ab3b: 79 ca 7e
	*isc $4879               ; $ab3e: ef 79 48
	asl $e1,x                ; $ab41: 16 e1
	ldy $b8e7,x              ; $ab43: bc e7 b8

; === Block $ab3f-$abb7 (Code) ===
entry_ab3f:
	adc $1648,y              ; $ab3f: 79 48 16
	sbc ($bc,x)              ; $ab42: e1 bc
	*isc $b8                 ; $ab44: e7 b8
	cpy $17                  ; $ab46: c4 17
	ldy $d44d,x              ; $ab48: bc 4d d4
	ldx $d162,y              ; $ab4b: be 62 d1
	lda #$f6                 ; $ab4e: a9 f6
	adc $ff1a,x              ; $ab50: 7d 1a ff
	sbc $e5,x                ; $ab53: f5 e5
	*nop                     ; $ab55: 3a
	dec $3afc,x              ; $ab56: de fc 3a OAMDATA
	*rla $c5c4,y             ; $ab59: 3b c4 c5
	clv                      ; $ab5c: b8
	*sre $d9                 ; $ab5d: 47 d9
	*nop $6b,x               ; $ab5f: f4 6b
	*isc $c3d7,x             ; $ab61: ff d7 c3
	*lax ($29,x)             ; $ab64: a3 29
	dec $f7,x                ; $ab66: d6 f7
	sbc ($d1,x)              ; $ab68: e1 d1
	dec $b22e,x              ; $ab6a: de 2e b2
	and $b3,x                ; $ab6d: 35 b3
	ora ($9e,x)              ; $ab6f: 01 9e
	adc $b3,x                ; $ab71: 75 b3
	pha                      ; $ab73: 48
	rol $62,x                ; $ab74: 36 62
	cmp ($a9),y              ; $ab76: d1 a9
	inc $7c,x                ; $ab78: f6 7c
	*jam                     ; $ab7a: 92
	ora $37ee,y              ; $ab7b: 19 ee 37 PPUADDR
	*nop $de5b,x             ; $ab7e: 1c 5b de
	rol $35b2                ; $ab81: 2e b2 35 PPUSTATUS
	*lax ($01),y             ; $ab84: b3 01
	*shx $b375,y             ; $ab86: 9e 75 b3
	pha                      ; $ab89: 48
	rol $62,x                ; $ab8a: 36 62
	cmp ($a9),y              ; $ab8c: d1 a9
	inc $7d,x                ; $ab8e: f6 7d
	ora $6cc4,x              ; $ab90: 1d c4 6c
	*isc ($dc),y             ; $ab93: f3 dc
	ror $b738                ; $ab95: 6e 38 b7
	ldy $d14d,x              ; $ab98: bc 4d d1
	*dcp ($a3,x)             ; $ab9b: c3 a3
	*sre ($88,x)             ; $ab9d: 43 88
	php                      ; $ab9f: 08
	*jam                     ; $aba0: 02
	rol $cc                  ; $aba1: 26 cc
	*nop                     ; $aba3: 5a
	and $3e,x                ; $aba4: 35 3e
	*dcp $4392               ; $aba6: cf 92 43
entry_aba9:
	and $e3c6,x              ; $aba9: 3d c6 e3
	*xaa #$7b                ; $abac: 8b 7b
	cpy $dd                  ; $abae: c4 dd
	*nop $343a,x             ; $abb0: 1c 3a 34 PPUSTATUS
	sec                      ; $abb3: 38
	*nop #$80                ; $abb4: 80 80
	*jam                     ; $abb6: 22
	jmp ($a3c5)              ; $abb7: 6c c5 a3

; === Block $ab5b-$ab5d (Code) ===
entry_ab5b:
	cmp $b8                  ; $ab5b: c5 b8

; === Block $aba5-$abac (Code) ===
entry_aba5:
	rol $92cf,x              ; $aba5: 3e cf 92
	*sre ($3d,x)             ; $aba8: 43 3d
	dec $e3                  ; $abaa: c6 e3

; === Block $ac2a-$ac6e (Code) ===
entry_ac2a:
	rol $2d                  ; $ac2a: 26 2d
	*sre $29                 ; $ac2c: 47 29
	*jam                     ; $ac2e: 02
	*dcp $9b71               ; $ac2f: cf 71 9b
	stx $79                  ; $ac32: 86 79
	cpy $8b5d                ; $ac34: cc 5d 8b
	eor ($79),y              ; $ac37: 51 79
	*rla $ef                 ; $ac39: 27 ef
	*slo ($16),y             ; $ac3b: 13 16
entry_ac3d:
	adc $66,x                ; $ac3d: 75 66
	*anc #$3d                ; $ac3f: 0b 3d
	dec $6e                  ; $ac41: c6 6e
	ora $cd0f,y              ; $ac43: 19 0f cd
	lda $b18b,y              ; $ac46: b9 8b b1
	*rra $9819               ; $ac49: 6f 19 98
entry_ac4c:
	ror $ea                  ; $ac4c: 66 ea
	cmp ($de),y              ; $ac4e: d1 de
	rol $2c                  ; $ac50: 26 2c
	nop                      ; $ac52: ea
	cpy $7b16                ; $ac53: cc 16 7b
	sty $32dc                ; $ac56: 8c dc 32 OAMDATA
	*slo $739b,x             ; $ac59: 1f 9b 73
	*slo $62,x               ; $ac5c: 17 62
	dec $3033,x              ; $ac5e: de 33 30 OAMADDR
	cmp $a3d5                ; $ac61: cd d5 a3
	and #$fb                 ; $ac64: 29 fb
	ldy $cba5,x              ; $ac66: bc a5 cb
entry_ac69:
	adc ($f7),y              ; $ac69: 71 f7
	*slo $7631               ; $ac6b: 0f 31 76

; === Block $ac63-$ad64 (Code) ===
entry_ac63:
	*lax ($29,x)             ; $ac63: a3 29
	*isc $a5bc,y             ; $ac65: fb bc a5
	*axs #$71                ; $ac68: cb 71
	*isc $0f,x               ; $ac6a: f7 0f
	and ($76),y              ; $ac6c: 31 76
	and $33e3                ; $ac6e: 2d e3 33 OAMADDR
	*nop $5add               ; $ac71: 0c dd 5a
	*rla $c5c4,y             ; $ac74: 3b c4 c5
	sta $8259,x              ; $ac77: 9d 59 82
	*dcp $9b71               ; $ac7a: cf 71 9b
	stx $43                  ; $ac7d: 86 43
	*isc ($6e),y             ; $ac7f: f3 6e
	*jam                     ; $ac81: 62
	cpx $c65b                ; $ac82: ec 5b c6
	ror $19                  ; $ac85: 66 19
	tsx                      ; $ac87: ba
	ldy $65,x                ; $ac88: b4 65
	*rla $1c75,x             ; $ac8a: 3f 75 1c
	ldy $0b                  ; $ac8d: a4 0b
	adc ($f3),y              ; $ac8f: 71 f3
	dec $ec62                ; $ac91: ce 62 ec
	*nop                     ; $ac94: 5a
	*xaa #$c9                ; $ac95: 8b c9
	*rla $9878,x             ; $ac97: 3f 78 98
	*lax ($ab),y             ; $ac9a: b3 ab
	bmi $acf7                ; $ac9c: 30 59
loc_ac9e:
	inc $7033                ; $ac9e: ee 33 70
	iny                      ; $aca1: c8
	ror $cc6d,x              ; $aca2: 7e 6d cc
	eor $518b,x              ; $aca5: 5d 8b 51
entry_aca8:
	adc $ef27,y              ; $aca8: 79 27 ef
	*slo ($16),y             ; $acab: 13 16
	adc $66,x                ; $acad: 75 66
entry_acaf:
	*anc #$3d                ; $acaf: 0b 3d
	dec $6e                  ; $acb1: c6 6e
	ora $cd0f,y              ; $acb3: 19 0f cd
	lda $b18b,y              ; $acb6: b9 8b b1
	ror                      ; $acb9: 6a
	*rla $f924               ; $acba: 2f 24 f9
	*sre $e5dd               ; $acbd: 4f dd e5
	rol $8f5b                ; $acc0: 2e 5b 8f
	clv                      ; $acc3: b8
	adc $b18b,y              ; $acc4: 79 8b b1
	*rra $9819               ; $acc7: 6f 19 98
	ror $ea                  ; $acca: 66 ea
	cmp ($de),y              ; $accc: d1 de
	rol $2c                  ; $acce: 26 2c
	nop                      ; $acd0: ea
	cpy $7b16                ; $acd1: cc 16 7b
	sty $32dc                ; $acd4: 8c dc 32 OAMDATA
	*slo $739b,x             ; $acd7: 1f 9b 73
	*slo $62,x               ; $acda: 17 62
	*nop $5e,x               ; $acdc: d4 5e
	eor #$f2                 ; $acde: 49 f2
entry_ace0:
	*sha $8eba,y             ; $ace0: 9f ba 8e
	*jam                     ; $ace3: 52
	ora $b8                  ; $ace4: 05 b8
	sbc $31e7,y              ; $ace6: f9 e7 31 PPUDATA
	ror $2d,x                ; $ace9: 76 2d
	eor $e4                  ; $aceb: 45 e4
	*sha $4cbc,y             ; $aced: 9f bc 4c
entry_acf0:
	*nop                     ; $acf0: 5a
	*isc ($0f),y             ; $acf1: f3 0f
	*alr #$3d                ; $acf3: 4b 3d
	dec $6e                  ; $acf5: c6 6e
loc_acf7:
	*slo $9e87,y             ; $acf7: 1b 87 9e
	*isc ($4b,x)             ; $acfa: e3 4b
	*nop $5d7f,x             ; $acfc: dc 7f 5d
	*sre $f1de               ; $acff: 4f de f1
	and ($67),y              ; $ad02: 31 67
	lsr $60,x                ; $ad04: 56 60
	*lax ($dc),y             ; $ad06: b3 dc
	ror $e1                  ; $ad08: 66 e1
	bcc $ad08                ; $ad0a: 90 fc
loc_ad0c:
	*dcp $bb98,y             ; $ad0c: db 98 bb
	asl $f1,x                ; $ad0f: 16 f1
	sta $6e86,y              ; $ad11: 99 86 6e
	lda $4f19                ; $ad14: ad 19 4f
	cmp $e9f0,x              ; $ad17: dd f0 e9
	sbc $e396,y              ; $ad1a: f9 96 e3
	*isc $9c                 ; $ad1d: e7 9c
	cmp $d8                  ; $ad1f: c5 d8
	*lax $8c,y               ; $ad21: b7 8c
	cpy $7533                ; $ad23: cc 33 75
	pla                      ; $ad26: 68
	*isc $1613               ; $ad27: ef 13 16
	adc $66,x                ; $ad2a: 75 66
	*anc #$3d                ; $ad2c: 0b 3d
	dec $6e                  ; $ad2e: c6 6e
	ora $cd0f,y              ; $ad30: 19 0f cd
	lda $b18b,y              ; $ad33: b9 8b b1
	ror                      ; $ad36: 6a
	*rla $f924               ; $ad37: 2f 24 f9
	*sre $f0dd               ; $ad3a: 4f dd f0
	sbc #$f9                 ; $ad3d: e9 f9
	stx $e3,y                ; $ad3f: 96 e3
entry_ad41:
	*isc $9c                 ; $ad41: e7 9c
	cmp $d8                  ; $ad43: c5 d8
	lda $17,x                ; $ad45: b5 17
entry_ad47:
	*jam                     ; $ad47: 92
	ror $74f1,x              ; $ad48: 7e f1 74
	*lax ($ab),y             ; $ad4b: b3 ab
	sty $e6,x                ; $ad4d: 94 e6
	sty $df,x                ; $ad4f: 94 df
	*nop $78ef,x             ; $ad51: 3c ef 78
	eor ($af),y              ; $ad54: 51 af
	sbc $71cf,x              ; $ad56: fd cf 71
	*tas $3c85,y             ; $ad59: 9b 85 3c PPUSCROLL
	eor $bed4                ; $ad5c: 4d d4 be
	*jam                     ; $ad5f: 62
	*dcp $52,x               ; $ad60: d7 52
	*dcp $3a                 ; $ad62: c7 3a
	jmp $9d67                ; $ad64: 4c 67 9d

; === Block $acf4-$acf7 (Code) ===
entry_acf4:
	and $6ec6,x              ; $acf4: 3d c6 6e

; === Block $acf6-$acfc (Code) ===
entry_acf6:
	ror $871b                ; $acf6: 6e 1b 87
	*shx $4be3,y             ; $acf9: 9e e3 4b

; === Block $ad03-$ad05 (Code) ===
loc_ad03:
	*rra $56                 ; $ad03: 67 56
	rts                      ; $ad05: 60

; === Block $ad15-$ad1a (Code) ===
entry_ad15:
	ora $dd4f,y              ; $ad15: 19 4f dd
	beq $ad03                ; $ad18: f0 e9

; === Block $ad16-$ad1d (Code) ===
entry_ad16:
	*sre $f0dd               ; $ad16: 4f dd f0
	sbc #$f9                 ; $ad19: e9 f9
	stx $e3,y                ; $ad1b: 96 e3

; === Block $ad79-$ad7a (Code) ===
entry_ad79:
	dey                      ; $ad79: 88
	rti                      ; $ad7a: 40

; === Block $adfa-$ae33 (Code) ===
entry_adfa:
	*isc $4cc5,y             ; $adfa: fb c5 4c
	dec $60,x                ; $adfd: d6 60
	sta ($a1),y              ; $adff: 91 a1
	dex                      ; $ae01: ca
	rol $88fa                ; $ae02: 2e fa 88
	*alr #$45                ; $ae05: 4b 45
	clv                      ; $ae07: b8
	adc $33ee,y              ; $ae08: 79 ee 33 PPUADDR
	*nop $2729,x             ; $ae0b: fc 29 27 PPUMASK
	*isc ($47,x)             ; $ae0e: e3 47
	bvs $ae61                ; $ae10: 70 4f
loc_ae12:
	dec $1b2f,x              ; $ae12: de 2f 1b
	sty $0aff                ; $ae15: 8c ff 0a
	eor #$f8                 ; $ae18: 49 f8
	cmp ($dc),y              ; $ae1a: d1 dc
	*slo ($e2),y             ; $ae1c: 13 e2
	*jam                     ; $ae1e: 02
	*jam                     ; $ae1f: d2
	*dcp $c83a               ; $ae20: cf 3a c8
	*nop #$df                ; $ae23: c2 df
	*rla $785f               ; $ae25: 2f 5f 78
	tya                      ; $ae28: 98
	*las $6a16,y             ; $ae29: bb 16 6a
	*jam                     ; $ae2c: 52
	ror $b896,x              ; $ae2d: 7e 96 b8
	cli                      ; $ae30: 58
	eor $89,x                ; $ae31: 55 89

; === Block $ae0f-$ae18 (Code) ===
loc_ae0f:
	*sre $70                 ; $ae0f: 47 70
	*sre $2fde               ; $ae11: 4f de 2f PPUADDR
	*slo $ff8c,y             ; $ae14: 1b 8c ff
	asl                      ; $ae17: 0a

; === Block $ae33-$ae6b (Code) ===
entry_ae33:
	*xaa #$b1                ; $ae33: 8b b1
	*rra ($4d,x)             ; $ae35: 63 4d
	ldx $4c,y                ; $ae37: b6 4c
	ora ($6a),y              ; $ae39: 11 6a
	bit $16                  ; $ae3b: 24 16
	lsr $96,x                ; $ae3d: 56 96
	tsx                      ; $ae3f: ba
	lda ($78),y              ; $ae40: b1 78
	*nop $336f,x             ; $ae42: dc 6f 33 PPUDATA
	*nop #$93                ; $ae45: c2 93
	bne $ae54                ; $ae47: d0 0b
loc_ae49:
	pha                      ; $ae49: 48
	asl $62,x                ; $ae4a: 16 62
	cpx $cc5a                ; $ae4c: ec 5a cc
	*isc $585d,y             ; $ae4f: fb 5d 58
	tya                      ; $ae52: 98
	*lax $c5,y               ; $ae53: b7 c5
	rol $0552                ; $ae55: 2e 52 05
	lsr $26,x                ; $ae58: 56 26
	and $82ec                ; $ae5a: 2d ec 82
	rol $becf,x              ; $ae5d: 3e cf be
	and #$72                 ; $ae60: 29 72
	bcc $ae0f                ; $ae62: 90 ab
loc_ae64:
	*slo ($74),y             ; $ae64: 13 74
	bvs $ae50                ; $ae66: 70 e8
loc_ae68:
	bne $ae4c                ; $ae68: d0 e2
loc_ae6a:
	*jam                     ; $ae6a: 02
	brk                      ; $ae6b: 00

; === Block $ae50-$ae53 (Code) ===
loc_ae50:
	eor $9858,x              ; $ae50: 5d 58 98

; === Block $ae54-$ae62 (Code) ===
loc_ae54:
	cmp $2e                  ; $ae54: c5 2e
	*jam                     ; $ae56: 52
	ora $56                  ; $ae57: 05 56
	rol $2d                  ; $ae59: 26 2d
	cpx $3e82                ; $ae5b: ec 82 3e PPUSTATUS
	*dcp $29be               ; $ae5e: cf be 29 PPUADDR
loc_ae61:
	*jam                     ; $ae61: 72

; === Block $afa1-$afc1 (Code) ===
entry_afa1:
	cmp $1827,x              ; $afa1: dd 27 18
	adc ($13,x)              ; $afa4: 61 13
	*slo $8785,x             ; $afa6: 1f 85 87
	cpy $05                  ; $afa9: c4 05
	lda $9e                  ; $afab: a5 9e
	nop                      ; $afad: ea
	sbc $c2ef,y              ; $afae: f9 ef c2
	cmp ($a9),y              ; $afb1: d1 a9
	*sbc #$23                ; $afb3: eb 23
	bit $87                  ; $afb5: 24 87
	lda $68f9,y              ; $afb7: b9 f9 68
	dex                      ; $afba: ca
	*sax ($8f,x)             ; $afbb: 83 8f
	*isc $e5                 ; $afbd: e7 e5
	lda ($84,x)              ; $afbf: a1 84
	rti                      ; $afc1: 40

; === Block $afcb-$afdf (Code) ===
entry_afcb:
	and #$d7                 ; $afcb: 29 d7
	rol $34                  ; $afcd: 26 34
	ror                      ; $afcf: 6a
	*nop                     ; $afd0: 7a
	iny                      ; $afd1: c8
	*nop #$a5                ; $afd2: c2 a5
	*rla $9e                 ; $afd4: 27 9e
	*nop $738f,x             ; $afd6: 7c 8f 73
	*nop $e77b,x             ; $afd9: 5c 7b e7
	*lax $8409,y             ; $afdc: bf 09 84

; === Block $afd7-$afdd (Code) ===
loc_afd7:
	*sax $5c73               ; $afd7: 8f 73 5c
	*rra $bfe7,y             ; $afda: 7b e7 bf

; === Block $afdd-$afdf (Code) ===
entry_afdd:
	ora #$84                 ; $afdd: 09 84
	jmp $1e7e                ; $afdf: 4c 7e 1e

; === Block $afe5-$b02f (Code) ===
entry_afe5:
	sty $25                  ; $afe5: 84 25
	ldx $1a1d                ; $afe7: ae 1d 1a
	and $3d,x                ; $afea: 35 3d
	*nop $61                 ; $afec: 64 61
	*jam                     ; $afee: 52
entry_afef:
	*sha ($cf),y             ; $afef: 93 cf
	rol $b947,x              ; $aff1: 3e 47 b9
	ldx $f33d                ; $aff4: ae 3d f3
	*dcp $d385,x             ; $aff7: df 85 d3
	lsr $ea                  ; $affa: 46 ea
	eor $6216,y              ; $affc: 59 16 62
	adc ($16,x)              ; $afff: 61 16
	*jam                     ; $b001: 62
	dex                      ; $b002: ca
	ror $26e6,x              ; $b003: 7e e6 26 PPUADDR
	ora ($66),y              ; $b006: 11 66
	rol $cc                  ; $b008: 26 cc
	pha                      ; $b00a: 48
	dec $f753,x              ; $b00b: de 53 f7
	and ($30),y              ; $b00e: 31 30
	*nop #$8f                ; $b010: 89 8f
	*nop #$c6                ; $b012: c2 c6
	inc $4f,x                ; $b014: f6 4f
	*lax ($e7),y             ; $b016: b3 e7
	*lax $9e0d,y             ; $b018: bf 0d 9e
	*sre ($af),y             ; $b01b: 53 af
	lsr                      ; $b01d: 4a
	ora $a325,y              ; $b01e: 19 25 a3
	*sre ($d6),y             ; $b021: 53 d6
	lsr $15                  ; $b023: 46 15
	and #$3c                 ; $b025: 29 3c
	*isc ($e4),y             ; $b027: f3 e4
	*rra $e39a,y             ; $b029: 7b 9a e3
	*dcp $f83d,x             ; $b02c: df 3d f8
	jmp $6222                ; $b02f: 4c 22 62

; === Block $b04d-$b05d (Code) ===
loc_b04d:
	adc ($91),y              ; $b04d: 71 91
	*shy $3b3a,x             ; $b04f: 9c 3a 3b PPUSTATUS
	cpy $c5                  ; $b052: c4 c5
	txs                      ; $b054: 9a
	*anc #$f2                ; $b055: 0b f2
	*dcp $9b71               ; $b057: cf 71 9b
	*sax $78                 ; $b05a: 87 78
	tsx                      ; $b05c: ba

; === Block $b05d-$b0e2 (Code) ===
entry_b05d:
	inc $71bf                ; $b05d: ee bf 71
	inc $1542                ; $b060: ee 42 15
	beq $b04d                ; $b063: f0 e8
loc_b065:
	*dcp $e5,x               ; $b065: d7 e5
	*slo $c9,x               ; $b067: 17 c9
	*isc ($b8),y             ; $b069: f3 b8
	*rra $ee39               ; $b06b: 6f 39 ee
	and ($33),y              ; $b06e: 31 33
	*lax $26ba               ; $b070: af ba 26 PPUSTATUS
	*rla $8c1b               ; $b073: 2f 1b 8c
	*nop $0b37,x             ; $b076: dc 37 0b
	lsr $9f                  ; $b079: 46 9f
	bcc $b074                ; $b07b: 90 f7
loc_b07d:
	ldy $714c,x              ; $b07d: bc 4c 71
	sei                      ; $b080: 78
	*rla $a6,x               ; $b081: 37 a6
	cmp ($9e),y              ; $b083: d1 9e
entry_b085:
	*nop $d22c,x             ; $b085: fc 2c d2
	*dcp $d0,x               ; $b088: d7 d0
	*nop #$2f                ; $b08a: c2 2f
	*anc #$08                ; $b08c: 0b 08
entry_b08e:
	ror                      ; $b08e: 6a
	sbc $3a                  ; $b08f: e5 3a
	*nop #$cf                ; $b091: 89 cf
	adc $7c,x                ; $b093: 75 7c
	*jam                     ; $b095: d2
	dec $da,x                ; $b096: d6 da
	lda $684f,y              ; $b098: b9 4f 68
	*sre ($51,x)             ; $b09b: 43 51
	*nop                     ; $b09d: 3a
	dex                      ; $b09e: ca
	dec $cf                  ; $b09f: c6 cf
	lda ($84,x)              ; $b0a1: a1 84
	lsr $a90c,x              ; $b0a3: 5e 0c a9
	*nop $57f7,x             ; $b0a6: 7c f7 57
	cmp $7d2d                ; $b0a9: cd 2d 7d
	*nop $6322               ; $b0ac: 0c 22 63
	beq $b061                ; $b0af: f0 b0
loc_b0b1:
	sed                      ; $b0b1: f8
	*nop #$b4                ; $b0b2: 80 b4
	*lax ($dd),y             ; $b0b4: b3 dd
	*sre $c249,x             ; $b0b6: 5f 49 c2
	lda $4663,x              ; $b0b9: bd 63 46
	*lax $ac                 ; $b0bc: a7 ac
	sty $522a                ; $b0be: 8c 2a 52
	adc $c8e7,y              ; $b0c1: 79 e7 c8
	*isc $35,x               ; $b0c4: f7 35
	*dcp $be                 ; $b0c6: c7 be
	*rra $98f0,y             ; $b0c8: 7b f0 98
	eor $e3                  ; $b0cb: 45 e3
	adc ($f1),y              ; $b0cd: 71 f1
	cld                      ; $b0cf: d8
	lda ($ce),y              ; $b0d0: b1 ce
	*sha ($1b),y             ; $b0d2: 93 1b
	*sax $9e                 ; $b0d4: 87 9e
	nop                      ; $b0d6: ea
	*isc $7cde,y             ; $b0d7: fb de 7c
	lsr $fc                  ; $b0da: 46 fc
	*sha ($ef),y             ; $b0dc: 93 ef
	*slo $83,x               ; $b0de: 17 83
	ror $5a,x                ; $b0e0: 76 5a
	jmp ($2d8b)              ; $b0e2: 6c 8b 2d OAMADDR

; === Block $b061-$b065 (Code) ===
loc_b061:
	*jam                     ; $b061: 42
	ora $f0,x                ; $b062: 15 f0
	inx                      ; $b064: e8

; === Block $b074-$b079 (Code) ===
loc_b074:
	*slo $dc8c,y             ; $b074: 1b 8c dc
	*rla $0b,x               ; $b077: 37 0b

; === Block $b0ba-$b0bc (Code) ===
entry_b0ba:
	*rra ($46,x)             ; $b0ba: 63 46

; === Block $b118-$b11e (Code) ===
loc_b118:
	ldx $d1                  ; $b118: a6 d1
	*shx $2cfc,y             ; $b11a: 9e fc 2c OAMDATA
	*jam                     ; $b11d: d2

; === Block $b11b-$b2ab (Code) ===
entry_b11b:
	*nop $d22c,x             ; $b11b: fc 2c d2
	dec $da,x                ; $b11e: d6 da
	lda $b34e,y              ; $b120: b9 4e b3
	sbc $7a,x                ; $b123: f5 7a
	lda $08,x                ; $b125: b5 08
	*dcp $7283,x             ; $b127: df 83 72
	*slo $355a,x             ; $b12a: 1f 5a 35 PPUSTATUS
	*slo ($57),y             ; $b12d: 13 57
	cli                      ; $b12f: 58
	dec $f6c9,x              ; $b130: de c9 f6
	*nop $9bd2,x             ; $b133: 7c d2 9b
	*isc $9d                 ; $b136: e7 9d
	*nop $d5                 ; $b138: 44 d5
	tay                      ; $b13a: a8
	*xaa #$c1                ; $b13b: 8b c1
	*nop $cd43,x             ; $b13d: 1c 43 cd
	*nop $218e,x             ; $b140: 5c 8e 21 PPUADDR
	*isc $5a                 ; $b143: e7 5a
	rol                      ; $b145: 2a
	*nop $45,x               ; $b146: d4 45
	*isc ($71,x)             ; $b148: e3 71
	txs                      ; $b14a: 9a
entry_b14b:
	sty $9f,x                ; $b14b: 94 9f
	lda $a5                  ; $b14d: a5 a5
	*nop $94c5               ; $b14f: 0c c5 94
	sbc $71cf,x              ; $b152: fd cf 71
	lda $ee                  ; $b155: a5 ee
	rol $e15a,x              ; $b157: 3e 5a e1
	adc ($de,x)              ; $b15a: 61 de
	*rla $1b0f               ; $b15c: 2f 0f 1b
	beq $b118                ; $b15f: f0 b7
loc_b161:
	*anc #$29                ; $b161: 0b 29
	inc $b738                ; $b163: ee 38 b7
	ora $e7,x                ; $b166: 15 e7
	*dcp $1b7f               ; $b168: cf 7f 1b
	txa                      ; $b16b: 8a
	*isc $b2,x               ; $b16c: f7 b2
	adc $469f,x              ; $b16e: 7d 9f 46
	*lax $78fd,y             ; $b171: bf fd 78
	lda $34                  ; $b174: a5 34
	sta ($f3,x)              ; $b176: 81 f3
	cpx $d9                  ; $b178: e4 d9
	*isc $a229               ; $b17a: ef 29 a2
entry_b17d:
	cpx $f022                ; $b17d: ec 22 f0
	*sre $1f                 ; $b180: 47 1f
	*nop                     ; $b182: 1a
	*nop $ba05,x             ; $b183: 1c 05 ba
	*nop $d2                 ; $b186: 44 d2
	*jam                     ; $b188: 52
	*dcp $ba71               ; $b189: cf 71 ba
	*isc ($0f),y             ; $b18c: f3 0f
	sei                      ; $b18e: 78
	*rla $bc9a,x             ; $b18f: 3f 9a bc
	*nop #$5a                ; $b192: e2 5a
	*sre ($dc,x)             ; $b194: 43 dc
	*isc $e1,x               ; $b196: f7 e1
	*rra $96                 ; $b198: 67 96
entry_b19a:
	sta $5e84                ; $b19a: 8d 84 5e
	*nop $c3,x               ; $b19d: 14 c3
	*isc $3d,x               ; $b19f: f7 3d
	sed                      ; $b1a1: f8
	*sre $d185,y             ; $b1a2: 5b 85 d1
	cmp $cb90,x              ; $b1a5: dd 90 cb
	dec $92                  ; $b1a8: c6 92
	*nop                     ; $b1aa: 1a
	bne $b170                ; $b1ab: d0 c3
loc_b1ad:
	lda #$94                 ; $b1ad: a9 94
	*sha $6d90,y             ; $b1af: 9f 90 6d
	*rra ($b7,x)             ; $b1b2: 63 b7
	tsx                      ; $b1b4: ba
	*nop $3366,x             ; $b1b5: 1c 66 33 PPUADDR
	dec $cb2b                ; $b1b8: ce 2b cb
	eor $afee,y              ; $b1bb: 59 ee af
	*shx $dc73,y             ; $b1be: 9e 73 dc
	*nop                     ; $b1c1: 5a
	cmp ($8d,x)              ; $b1c2: c1 8d
	sty $9f,x                ; $b1c4: 94 9f
	bcc $b1b1                ; $b1c6: 90 e9
loc_b1c8:
	sed                      ; $b1c8: f8
	adc $a8,x                ; $b1c9: 75 a8
	pla                      ; $b1cb: 68
	sbc $3f                  ; $b1cc: e5 3f
	jsr $2fc2                ; $b1ce: 20 c2 2f PPUSTATUS
loc_b1d1:
	*slo $f01b               ; $b1d1: 0f 1b f0
	*lax $0b,y               ; $b1d4: b7 0b
	and $5fc6,x              ; $b1d6: 3d c6 5f
	*dcp $cf3f,y             ; $b1d9: db 3f cf
	adc ($5e),y              ; $b1dc: 71 5e
	*jam                     ; $b1de: b2
	and ($c1,x)              ; $b1df: 21 c1
	pha                      ; $b1e1: 48
	ror $3491                ; $b1e2: 6e 91 34 PPUMASK
	sty $b3,x                ; $b1e5: 94 b3
	*sre ($f0),y             ; $b1e7: 53 f0
	*dcp ($ab,x)             ; $b1e9: c3 ab
	dec $e2                  ; $b1eb: c6 e2
	ldy $5e4b,x              ; $b1ed: bc 4b 5e
	*rra $b2f0,y             ; $b1f0: 7b f0 b2
	inc $fed9,x              ; $b1f3: fe d9 fe
	tsx                      ; $b1f6: ba
	stx $5d,y                ; $b1f7: 96 5d
	pha                      ; $b1f9: 48
	ror $6dbd,x              ; $b1fa: 7e bd 6d
	*nop $e3                 ; $b1fd: 64 e3
	*nop $9694,x             ; $b1ff: fc 94 96
	*isc ($2d),y             ; $b202: f3 2d
	*slo $8bb0               ; $b204: 0f b0 8b
	*nop #$98                ; $b207: c2 98
	ror $bfe7,x              ; $b209: 7e e7 bf
	*anc #$70                ; $b20c: 0b 70
	*lax ($dc),y             ; $b20e: b3 dc
	ror                      ; $b210: 6a
	adc ($85,x)              ; $b211: 61 85
entry_b213:
	*alr #$2f                ; $b213: 4b 2f
	tsx                      ; $b215: ba
	inc $bb57,x              ; $b216: fe 57 bb
	adc ($0f),y              ; $b219: 71 0f
	*dcp $be,x               ; $b21b: d7 be
	bpl $b217                ; $b21d: 10 f8
loc_b21f:
	*anc #$f0                ; $b21f: 2b f0
	inx                      ; $b221: e8
	dex                      ; $b222: ca
	*sax ($8f,x)             ; $b223: 83 8f
	sbc $d0                  ; $b225: e5 d0
	*sha ($a3),y             ; $b227: 93 a3
	*rla $d2,x               ; $b229: 37 d2
entry_b22b:
	*sha $ad98,y             ; $b22b: 9f 98 ad
	sty $5e                  ; $b22e: 84 5e
	ora $f3da                ; $b230: 0d da f3
entry_b233:
	*nop $9666,x             ; $b233: dc 66 96
	ldx $d7,y                ; $b236: b6 d7
	*nop                     ; $b238: 5a
	*sre ($57,x)             ; $b239: 43 57
	and #$de                 ; $b23b: 29 de
	dey                      ; $b23d: 88
	sbc $f7e8,y              ; $b23e: f9 e8 f7
	and $71,x                ; $b241: 35 71
	sbc ($9e),y              ; $b243: f1 9e
	adc ($3a),y              ; $b245: 71 3a
	*dcp $9e,x               ; $b247: d7 9e
	*sre $5d94               ; $b249: 4f 94 5d
	sbc #$ea                 ; $b24c: e9 ea
	*nop                     ; $b24e: 3a
	ldy $886f                ; $b24f: ac 6f 88
	inc $db                  ; $b252: e6 db
	eor ($fb,x)              ; $b254: 41 fb
	*shx $2dfc,y             ; $b256: 9e fc 2d OAMDATA
	*dcp ($3e,x)             ; $b259: c3 3e
	inc $1b37,x              ; $b25b: fe 37 1b
	iny                      ; $b25e: c8
	*sha $1930,y             ; $b25f: 9f 30 19
entry_b262:
	ror $7234,x              ; $b262: 7e 34 72
	*sha $94b8,y             ; $b265: 9f b8 94
	stx $53,y                ; $b268: 96 53
	*isc $3d,x               ; $b26a: f7 3d
	dec $f3                  ; $b26c: c6 f3
	inc $3746,x              ; $b26e: fe 46 37 PPUADDR
	*anc #$7c                ; $b271: 0b 7c
	and #$49                 ; $b273: 29 49
	lda $0e98                ; $b275: ad 98 0e
	inx                      ; $b278: e8
	ldx #$10                 ; $b279: a2 10
	adc $5a63                ; $b27b: 6d 63 5a
	*jam                     ; $b27e: 92
	adc $e344,x              ; $b27f: 7d 44 e3
	stx $bb,y                ; $b282: 96 bb
	*lax $6b,y               ; $b284: b7 6b
	*nop $f022               ; $b286: 0c 22 f0
	adc $4d                  ; $b289: 65 4d
	*nop $87dc,x             ; $b28b: 5c dc 87
	dec $8d,x                ; $b28e: d6 8d
	*nop $d5                 ; $b290: 44 d5
	iny                      ; $b292: c8
	*nop #$1e                ; $b293: e2 1e
	ror                      ; $b295: 6a
	inc $dabc                ; $b296: ee bc da
	bit $c5                  ; $b299: 24 c5
	*nop                     ; $b29b: 5a
	dey                      ; $b29c: 88
	ldy $ef3a,x              ; $b29d: bc 3a ef
	rol $e46a,x              ; $b2a0: 3e 6a e4
	*sre $fc5b               ; $b2a3: 4f 5b fc
	*isc $1a,x               ; $b2a6: f7 1a
entry_b2a8:
	*tas $1cfe,y             ; $b2a8: 9b fe 1c
	rts                      ; $b2ab: 60

; === Block $b137-$b13a (Code) ===
entry_b137:
	sta $d544,x              ; $b137: 9d 44 d5

; === Block $b147-$b14b (Code) ===
entry_b147:
	eor $e3                  ; $b147: 45 e3
	adc ($9a),y              ; $b149: 71 9a

; === Block $b170-$b184 (Code) ===
loc_b170:
	lsr $bf                  ; $b170: 46 bf
	sbc $a578,x              ; $b172: fd 78 a5
	*nop $81,x               ; $b175: 34 81
	*isc ($e4),y             ; $b177: f3 e4
	cmp $29ef,y              ; $b179: d9 ef 29 PPUDATA
	ldx #$ec                 ; $b17c: a2 ec
	*jam                     ; $b17e: 22
	beq $b1c8                ; $b17f: f0 47
loc_b181:
	*slo $1c1a,x             ; $b181: 1f 1a 1c

; === Block $b173-$b174 (Code) ===
entry_b173:
	sei                      ; $b173: 78

; === Block $b184-$b186 (Code) ===
entry_b184:
	ora $ba                  ; $b184: 05 ba

; === Block $b193-$b194 (Code) ===
entry_b193:
	*nop                     ; $b193: 5a

; === Block $b1b1-$b1b4 (Code) ===
loc_b1b1:
	adc $b763                ; $b1b1: 6d 63 b7

; === Block $b1ea-$b1f0 (Code) ===
entry_b1ea:
	*lax #$c6                ; $b1ea: ab c6
	*nop #$bc                ; $b1ec: e2 bc
	*alr #$5e                ; $b1ee: 4b 5e

; === Block $b217-$b219 (Code) ===
loc_b217:
	*sre $bb,x               ; $b217: 57 bb

; === Block $b276-$b27e (Code) ===
entry_b276:
	tya                      ; $b276: 98
	asl $a2e8                ; $b277: 0e e8 a2
	bpl $b2e9                ; $b27a: 10 6d
loc_b27c:
	*rra ($5a,x)             ; $b27c: 63 5a

; === Block $b2d7-$b2e6 (Code) ===
loc_b2d7:
	*nop #$79                ; $b2d7: e2 79
	sbc $6c79,x              ; $b2d9: fd 79 6c
	dex                      ; $b2dc: ca
	*sre $6b7e,x             ; $b2dd: 5f 7e 6b
	cli                      ; $b2e0: 58
	*jam                     ; $b2e1: 62
	tya                      ; $b2e2: 98
	*rra $f2c1,y             ; $b2e3: 7b c1 f2

; === Block $b2e5-$b307 (Code) ===
entry_b2e5:
	*jam                     ; $b2e5: f2
	*jam                     ; $b2e6: d2
	stx $5c                  ; $b2e7: 86 5c
loc_b2e9:
	lsr $ac,x                ; $b2e9: 56 ac
	and ($a3,x)              ; $b2eb: 21 a3
	sty $9b,x                ; $b2ed: 94 9b
	inc $1abd,x              ; $b2ef: fe bd 1a
	*nop #$03                ; $b2f2: c2 03
	*nop $4fdd,x             ; $b2f4: dc dd 4f
	cpx #$a7                 ; $b2f7: e0 a7
	*isc $3e76               ; $b2f9: ef 76 3e PPUADDR
	ldy $c6,x                ; $b2fc: b4 c6
	sty $33,x                ; $b2fe: 94 33
	*nop $cd6f,x             ; $b300: dc 6f cd
	*arr #$0c                ; $b303: 6b 0c
	*sre ($0f),y             ; $b305: 53 0f

; === Block $b301-$b381 (Code) ===
entry_b301:
	*rra $6bcd               ; $b301: 6f cd 6b
	*nop $0f53               ; $b304: 0c 53 0f
	sei                      ; $b307: 78
	rol $855b,x              ; $b308: 3e 5b 85
	*lax #$94                ; $b30b: ab 94
	ldx $e9,y                ; $b30d: b6 e9
	asl $83,x                ; $b30f: 16 83
	*sre $63f7,x             ; $b311: 5f f7 63
	*sbc #$4c                ; $b314: eb 4c
	*arr #$67                ; $b316: 6b 67
	*isc $c3                 ; $b318: e7 c3
	lda ($b3,x)              ; $b31a: a1 b3
	*nop $6764,x             ; $b31c: dc 64 67
	asl $498c                ; $b31f: 0e 8c 49
	ldx $d9,y                ; $b322: b6 d9
	*jam                     ; $b324: 32
	*axs #$08                ; $b325: cb 08
	*rra $b8                 ; $b327: 67 b8
	cmp $30                  ; $b329: c5 30
	*isc $83,x               ; $b32b: f7 83
	sbc $9e                  ; $b32d: e5 9e
	*rra ($dc),y             ; $b32f: 73 dc
	ror $f2                  ; $b331: 66 f2
	*sha ($c0),y             ; $b333: 93 c0
	pla                      ; $b335: 68
	sbc $3f                  ; $b336: e5 3f
	ror $ec8e,x              ; $b338: 7e 8e ec
	adc ($78),y              ; $b33b: 71 78
	sei                      ; $b33d: 78
	*nop $6764,x             ; $b33e: dc 64 67
	asl $d78c                ; $b341: 0e 8c d7
	and ($0c,x)              ; $b344: 21 0c
	lsr $b342,x              ; $b346: 5e 42 b3
	*dcp $b93a               ; $b349: cf 3a b9
	*sre $e776               ; $b34c: 4f 76 e7
	sty $e0                  ; $b34f: 84 e0
	*nop $6b,x               ; $b351: f4 6b
	beq $b2d7                ; $b353: f0 82
loc_b355:
	adc ($0a,x)              ; $b355: 61 0a
	cld                      ; $b357: d8
	eor $e0                  ; $b358: 45 e0
	iny                      ; $b35a: c8
	ldy $3f                  ; $b35b: a4 3f
	*nop $6c98,x             ; $b35d: 5c 98 6c
	*lax $9082               ; $b360: af 82 90
	adc ($d5,x)              ; $b363: 61 d5
	*sre ($94),y             ; $b365: 53 94
	*sbc #$52                ; $b367: eb 52
	*sre $b4ae               ; $b369: 4f ae b4
	stx $b8                  ; $b36c: 86 b8
	*sre $9efb,x             ; $b36e: 5f fb 9e
	*isc ($7d,x)             ; $b371: e3 7d
	rol $cf,x                ; $b373: 36 cf
	*isc ($dd),y             ; $b375: f3 dd
	*sre $7e47,x             ; $b377: 5f 47 7e
	*sre ($df,x)             ; $b37a: 43 df
	*sax ($d7,x)             ; $b37c: 83 d7
	*nop                     ; $b37e: 5a
	*sre ($59,x)             ; $b37f: 43 59
	brk                      ; $b381: 00

; === Block $b38f-$b394 (Code) ===
loc_b38f:
	*isc ($71,x)             ; $b38f: e3 71
	lda $b897                ; $b391: ad 97 b8

; === Block $b390-$b3fc (Code) ===
entry_b390:
	adc ($ad),y              ; $b390: 71 ad
	*sax $b8,y               ; $b392: 97 b8
	sbc $3f64,y              ; $b394: f9 64 3f OAMDATA
	rol $eb,x                ; $b397: 36 eb
	php                      ; $b399: 08
	*xaa #$78                ; $b39a: 8b 78
	sbc $b9b8,y              ; $b39c: f9 b8 b9
	php                      ; $b39f: 08
	and $4603                ; $b3a0: 2d 03 46
	ldx $8c,y                ; $b3a3: b6 8c
	*isc ($ad),y             ; $b3a5: f3 ad
	*slo $9c87,y             ; $b3a7: 1b 87 9c
	*rla $3dcb               ; $b3aa: 2f cb 3d OAMADDR
	sed                      ; $b3ad: f8
	*nop                     ; $b3ae: 5a
	cmp $f0f9,y              ; $b3af: d9 f9 f0
	inx                      ; $b3b2: e8
	dec $45,x                ; $b3b3: d6 45
	*nop $70,x               ; $b3b5: 14 70
	inx                      ; $b3b7: e8
	iny                      ; $b3b8: c8
	*sre $c4f5               ; $b3b9: 4f f5 c4
	*nop $eab0,x             ; $b3bc: 3c b0 ea
	ldx $16                  ; $b3bf: a6 16
	*rra $8c8c,y             ; $b3c1: 7b 8c 8c
	sbc ($d1,x)              ; $b3c4: e1 d1
	lda $0c                  ; $b3c6: a5 0c
	*isc $e1,x               ; $b3c8: f7 e1
	pla                      ; $b3ca: 68
	sbc $26                  ; $b3cb: e5 26
	*isc $b5ad,x             ; $b3cd: ff ad b5
	sta $991a                ; $b3d0: 8d 1a 99
	*axs #$ee                ; $b3d3: cb ee
	bvc $b44a                ; $b3d5: 50 73
loc_b3d7:
	sbc ($9e),y              ; $b3d7: f1 9e
	*nop $e72d,x             ; $b3d9: fc 2d e7
	*isc ($66),y             ; $b3dc: f3 66
	*jam                     ; $b3de: 02
	*nop $5ea7,x             ; $b3df: dc a7 5e
	sty $9d                  ; $b3e2: 84 9d
	*slo ($ec,x)             ; $b3e4: 03 ec
	*nop                     ; $b3e6: 3a
	sta $0f6f,y              ; $b3e7: 99 6f 0f
	*nop $1af7,x             ; $b3ea: dc f7 1a
	and $49,x                ; $b3ed: 35 49
entry_b3ef:
	ora $6728                ; $b3ef: 0d 28 67
	clv                      ; $b3f2: b8
	and ($bd,x)              ; $b3f3: 21 bd
	sbc ($2f,x)              ; $b3f5: e1 2f
	*sha $7e21,y             ; $b3f7: 9f 21 7e
	*lax $18                 ; $b3fa: a7 18

; === Block $b3fc-$b468 (Code) ===
entry_b3fc:
	bit $eea7                ; $b3fc: 2c a7 ee
	sed                      ; $b3ff: f8
	*isc ($3f),y             ; $b400: f3 3f
	*nop $adf3,x             ; $b402: 7c f3 ad
	ora $75,x                ; $b405: 15 75
	eor #$2d                 ; $b407: 49 2d
	lda $14af                ; $b409: ad af 14
	*dcp ($de,x)             ; $b40c: c3 de
	*slo $5a95               ; $b40e: 0f 95 5a
	dey                      ; $b411: 88
	ldy $fc3a,x              ; $b412: bc 3a fc
	*isc $886b,y             ; $b415: fb 6b 88
	adc $8ad6,y              ; $b418: 79 d6 8a
	lda $11,x                ; $b41b: b5 11
	*jam                     ; $b41d: 32
	cld                      ; $b41e: d8
	*sre $a7d7               ; $b41f: 4f d7 a7
	sbc ($61,x)              ; $b422: e1 61
	*isc $ae16,y             ; $b424: fb 16 ae
	*jam                     ; $b427: 52
	*dcp $7d84,y             ; $b428: db 84 7d
	*sha $e971,y             ; $b42b: 9f 71 e9
	nop                      ; $b42e: ea
	ora ($ba),y              ; $b42f: 11 ba
	*nop $03                 ; $b431: 64 03
	*rla $f0d3               ; $b433: 2f d3 f0
	eor $bc                  ; $b436: 45 bc
	sbc $f8                  ; $b438: e5 f8
	cmp $ca,x                ; $b43a: d5 ca
	*sre $bd5a,y             ; $b43c: 5b 5a bd
	stx $da,y                ; $b43f: 96 da
	*nop                     ; $b441: 7a
	stx $36                  ; $b442: 86 36
	*sre $fa09,y             ; $b444: 5b 09 fa
	*nop $fc,x               ; $b447: f4 fc
	*nop                     ; $b449: 3a
	eor $cf3e,y              ; $b44a: 59 3e cf
	*lax #$94                ; $b44d: ab 94
	*isc $e688               ; $b44f: ef 88 e6
	*sax ($e2,x)             ; $b452: 83 e2
	jsr $456b                ; $b454: 20 6b 45
entry_b457:
	rol $dab1,x              ; $b457: 3e b1 da
	*nop $61cb,x             ; $b45a: dc cb 61
	*rla $d556,x             ; $b45d: 3f 56 d5
	dex                      ; $b460: ca
	*rra $e29a,x             ; $b461: 7f 9a e2
	*jam                     ; $b464: 02
	lda $3742                ; $b465: ad 42 37 PPUSTATUS
	jmp $6580                ; $b468: 4c 80 65

; === Block $b416-$b418 (Code) ===
entry_b416:
	*arr #$88                ; $b416: 6b 88

; === Block $b423-$b427 (Code) ===
entry_b423:
	adc ($fb,x)              ; $b423: 61 fb
	asl $ae,x                ; $b425: 16 ae

; === Block $b42c-$b42e (Code) ===
entry_b42c:
	adc ($e9),y              ; $b42c: 71 e9

; === Block $b479-$b4af (Code) ===
entry_b479:
	*jam                     ; $b479: b2
	adc $579f,x              ; $b47a: 7d 9f 57
	and #$c2                 ; $b47d: 29 c2
	bcc $b4be                ; $b47f: 90 3d
loc_b481:
	sbc ($68),y              ; $b481: f1 68
	ldx $c8,y                ; $b483: b6 c8
	inc $f07b,x              ; $b485: fe 7b f0
	lda #$f7                 ; $b488: a9 f7
	lsr $8dd5,x              ; $b48a: 5e d5 8d
	sta $845a,x              ; $b48d: 9d 5a 84
	ror $0099                ; $b490: 6e 99 00
	*axs #$f4                ; $b493: cb f4
	*nop $3a3a,x             ; $b495: fc 3a 3a PPUSTATUS
	*nop                     ; $b498: 3a
	rol                      ; $b499: 2a
	clc                      ; $b49a: 18
	sbc #$90                 ; $b49b: e9 90
	*nop $4fbf               ; $b49d: 0c bf 4f
	*dcp ($a1,x)             ; $b4a0: c3 a1
	stx $c2,y                ; $b4a2: 96 c2
	ror $6ab5,x              ; $b4a4: 7e b5 6a
	ora ($b6),y              ; $b4a7: 11 b6
	*sre $fa09,y             ; $b4a9: 5b 09 fa
	*nop $fc,x               ; $b4ac: f4 fc
	rol                      ; $b4ae: 2a
	rts                      ; $b4af: 60

; === Block $b4be-$b511 (Code) ===
loc_b4be:
	*sre $e8ab,y             ; $b4be: 5b ab e8
	dec $d1,x                ; $b4c1: d6 d1
	ldx $90                  ; $b4c3: a6 90
	inc $53b4,x              ; $b4c5: fe b4 53
	*sbc #$1a                ; $b4c8: eb 1a
	*nop $93,x               ; $b4ca: d4 93
	*sbc #$ad                ; $b4cc: eb ad
	and ($a1,x)              ; $b4ce: 21 a1
	bit $fa                  ; $b4d0: 24 fa
	*nop                     ; $b4d2: da
	sbc $bc,x                ; $b4d3: f5 bc
	*rla $0f77,x             ; $b4d5: 3f 77 0f
	jsr $f917                ; $b4d8: 20 17 f9
loc_b4db:
	bvc $b54e                ; $b4db: 50 71
loc_b4dd:
	sbc $7064,x              ; $b4dd: fd 64 70
	inx                      ; $b4e0: e8
	dex                      ; $b4e1: ca
	inc $b3b1                ; $b4e2: ee b1 b3
	asl $35eb,x              ; $b4e5: 1e eb 35 OAMADDR
	*sbc #$64                ; $b4e8: eb 64
	cmp #$c7                 ; $b4ea: c9 c7
	cmp #$83                 ; $b4ec: c9 83
	ora $0132,x              ; $b4ee: 1d 32 01
	*sax $e9,y               ; $b4f1: 97 e9
	sed                      ; $b4f3: f8
	adc $e6,x                ; $b4f4: 75 e6
	asl $7df0,x              ; $b4f6: 1e f0 7d
	*lax ($dd),y             ; $b4f9: b3 dd
	eor $6499                ; $b4fb: 4d 99 64
	*rla $f9                 ; $b4fe: 27 f9
	asl $bc1f                ; $b500: 0e 1f bc
	*nop                     ; $b503: 3a
	and $a1,x                ; $b504: 35 a1
	*sax ($1d,x)             ; $b506: 83 1d
	*jam                     ; $b508: 32
	ora ($97,x)              ; $b509: 01 97
	sbc #$f8                 ; $b50b: e9 f8
	cli                      ; $b50d: 58
	*dcp $8b16,x             ; $b50e: df 16 8b
	jmp ($f48f)              ; $b511: 6c 8f f4

; === Block $b51d-$b596 (Code) ===
entry_b51d:
	*lax $14,y               ; $b51d: b7 14
	*nop                     ; $b51f: da
	*nop $77,x               ; $b520: 34 77
	cpx $3d                  ; $b522: e4 3d
	sed                      ; $b524: f8
	rol $868a,x              ; $b525: 3e 8a 86
	sec                      ; $b528: 38
	tsx                      ; $b529: ba
	*isc ($68),y             ; $b52a: f3 68
	ror                      ; $b52c: 6a
	*isc ($e1,x)             ; $b52d: e3 e1
	ldy $24,x                ; $b52f: b4 24
	inx                      ; $b531: e8
	*axs #$44                ; $b532: cb 44
	ldx $7b,y                ; $b534: b6 7b
	*sax $d28c               ; $b536: 8f 8c d2
	stx $5d,y                ; $b539: 96 5d
	pha                      ; $b53b: 48
	ror $f3bc,x              ; $b53c: 7e bc f3
	adc $af99                ; $b53f: 6d 99 af
	sta $7d                  ; $b542: 85 7d
	*isc $fc                 ; $b544: e7 fc
	sec                      ; $b546: 38
	cmp ($16,x)              ; $b547: c1 16
	and $b4,x                ; $b549: 35 b4
	*rra $90a9,y             ; $b54b: 7b a9 90
	asl $bd                  ; $b54e: 06 bd
	cld                      ; $b550: d8
	*nop $326e,x             ; $b551: fc 6e 32 PPUADDR
	*rla ($87),y             ; $b554: 33 87
	lsr $69                  ; $b556: 46 69
	*alr #$47                ; $b558: 4b 47
	rol $4e                  ; $b55a: 26 4e
	ldx $f0                  ; $b55c: a6 f0
	*lax $c927               ; $b55e: af 27 c9
	*slo $d6                 ; $b561: 07 d6
	*arr #$d7                ; $b563: 6b d7
	*slo $45d6,x             ; $b565: 1f d6 45
	dec $97,x                ; $b568: d6 97
	*rla $fd                 ; $b56a: 27 fd
	*nop                     ; $b56c: fa
	*dcp ($1a),y             ; $b56d: d3 1a
	cmp $f0f9,y              ; $b56f: d9 f9 f0
	inx                      ; $b572: e8
	adc $8971                ; $b573: 6d 71 89
	rol $db,x                ; $b576: 36 db
	rol $3d                  ; $b578: 26 3d
	*dcp $a971               ; $b57a: cf 71 a9
	*lax $c6e1,y             ; $b57d: bf e1 c6
	php                      ; $b580: 08
	*lax ($ce),y             ; $b581: b3 ce
	*lax $470b,y             ; $b583: bf 0b 47
	adc $b6,x                ; $b586: 75 b6
	iny                      ; $b588: c8
	*isc $7e47,x             ; $b589: ff 47 7e
	tax                      ; $b58c: aa
	*rra $71f8               ; $b58d: 6f f8 71
	*nop #$2a                ; $b590: 82 2a
	tsx                      ; $b592: ba
	*tas $1cfe,y             ; $b593: 9b fe 1c
	rts                      ; $b596: 60

; === Block $b65b-$b741 (Code) ===
entry_b65b:
	*nop $b0,x               ; $b65b: 34 b0
	*sax $76                 ; $b65d: 87 76
	*rla $880f,y             ; $b65f: 3b 0f 88
	*anc #$4b                ; $b662: 0b 4b
	and $69c6,x              ; $b664: 3d c6 69
	adc ($06,x)              ; $b667: 61 06
	*dcp $571e,x             ; $b669: df 1e 57
	*sha $e61e,y             ; $b66c: 9f 1e e6
	clv                      ; $b66f: b8
	*isc $c8,x               ; $b670: f7 c8
	*sre ($96,x)             ; $b672: 43 96
	sta $7a,x                ; $b674: 95 7a
	cpy $fdaf                ; $b676: cc af fd
	rol $d1                  ; $b679: 26 d1
	lda #$eb                 ; $b67b: a9 eb
	*rla ($59,x)             ; $b67d: 23 59
	*nop $07b3,x             ; $b67f: fc b3 07
	*shx $94ff,y             ; $b682: 9e ff 94
	cmp ($7d),y              ; $b685: d1 7d
	ror $bc                  ; $b687: 66 bc
	*dcp $b391               ; $b689: cf 91 b3
	sbc ($d1,x)              ; $b68c: e1 d1
	cmp $a58f,x              ; $b68e: dd 8f a5
	sta $a75c,x              ; $b691: 9d 5c a7
	*nop $a6,x               ; $b694: 34 a6
	sbc $33e7,y              ; $b696: f9 e7 33 PPUDATA
	cpx $6c                  ; $b699: e4 6c
	*isc $1e,x               ; $b69b: f7 1e
	*shx $5426,y             ; $b69d: 9e 26 54
	lda $74f8,x              ; $b6a0: bd f8 74
	*jam                     ; $b6a3: 62
	*jam                     ; $b6a4: f2
	*rla ($e2,x)             ; $b6a5: 23 e2
	*dcp ($70,x)             ; $b6a7: c3 70
	*jam                     ; $b6a9: b2
	*jam                     ; $b6aa: 12
	*sha ($f7),y             ; $b6ab: 93 f7
	ldy $df4d,x              ; $b6ad: bc 4d df
	txa                      ; $b6b0: 8a
	*nop                     ; $b6b1: fa
	ror $df14,x              ; $b6b2: 7e 14 df
	beq $b69a                ; $b6b5: f0 e3
loc_b6b7:
	*nop $55                 ; $b6b7: 04 55
	adc $87,x                ; $b6b9: 75 87
	cpx $e25b                ; $b6bb: ec 5b e2
	rol $70,x                ; $b6be: 36 70
	*nop $59                 ; $b6c0: 04 59
	*isc $37                 ; $b6c2: e7 37
	*jam                     ; $b6c4: d2
	*sha $af98,y             ; $b6c5: 9f 98 af
	bit $c524                ; $b6c8: 2c 24 c5
	eor $0d61,x              ; $b6cb: 5d 61 0d
	*nop $b7a7,x             ; $b6ce: 5c a7 b7
	dec $f4                  ; $b6d1: c6 f4
	sec                      ; $b6d3: 38
	sbc $31bc,x              ; $b6d4: fd bc 31 OAMDATA
	*sbc #$6b                ; $b6d7: eb 6b
	ora $0ca1,x              ; $b6d9: 1d a1 0c
	lda ($c7),y              ; $b6dc: b1 c7
	rol $f9,x                ; $b6de: 36 f9
	*sre ($af),y             ; $b6e0: 53 af
	*sre $29,x               ; $b6e2: 57 29
	*lax #$50                ; $b6e4: ab 50
	dec $de                  ; $b6e6: c6 de
	*isc $e709,x             ; $b6e8: ff 09 e7
	*lax $e1                 ; $b6eb: a7 e1
	adc ($b5,x)              ; $b6ed: 61 b5
	*jam                     ; $b6ef: 72
	*sha $a6eb,y             ; $b6f0: 9f eb a6
	*dcp $1830,y             ; $b6f3: db 30 18
	*sax $e9                 ; $b6f6: 87 e9
	and #$bb                 ; $b6f8: 29 bb
	ror $b9                  ; $b6fa: 66 b9
	php                      ; $b6fc: 08
	adc $8e                  ; $b6fd: 65 8e
	and $cab7,y              ; $b6ff: 39 b7 ca
	sta $b97a,x              ; $b702: 9d 7a b9
	lsr $1458                ; $b705: 4e 58 14
	ldx $a6,y                ; $b708: b6 a6
	*isc $1887,x             ; $b70a: ff 87 18
	*jam                     ; $b70d: 22
	*lax #$9b                ; $b70e: ab 9b
	bcc $b70f                ; $b710: 90 fd
loc_b712:
	*xaa #$51                ; $b712: 8b 51
	sec                      ; $b714: 38
	sbc $a6                  ; $b715: e5 a6
	*nop $df6d               ; $b717: 0c 6d df
	txa                      ; $b71a: 8a
	*jam                     ; $b71b: f2
	*sha $bdb9,y             ; $b71c: 9f b9 bd
	inc $ce13,x              ; $b71f: fe 13 ce
	*rra $86a7               ; $b722: 6f a7 86
	and $71cf,x              ; $b725: 3d cf 71
	lda #$ab                 ; $b728: a9 ab
	*isc $ae,x               ; $b72a: f7 ae
	tax                      ; $b72c: aa
	rol $8d,x                ; $b72d: 36 8d
	rol                      ; $b72f: 2a
	stx $45,y                ; $b730: 96 45
	*sre ($94),y             ; $b732: 53 94
	inx                      ; $b734: e8
	*nop $fb,x               ; $b735: d4 fb
	rol $3ea0,x              ; $b737: 3e a0 3e PPUCTRL
	sty $10,x                ; $b73a: 94 10
	*dcp $1f,x               ; $b73c: d7 1f
	ora $a6e2,x              ; $b73e: 1d e2 a6
	rti                      ; $b741: 40

; === Block $b69a-$b69a (Code) ===
loc_b69a:
	jmp ($1ef7)              ; $b69a: 6c f7 1e

; === Block $b70f-$b712 (Code) ===
loc_b70f:
	*tas $fd90,y             ; $b70f: 9b 90 fd

; === Block $b81d-$b833 (Code) ===
loc_b81d:
	inc $132e,x              ; $b81d: fe 2e 13
	*sax $e1b6               ; $b820: 8f b6 e1
	adc $de                  ; $b823: 65 de
	lda #$c6                 ; $b825: a9 c6
	*rla $94dd,x             ; $b827: 3f dd 94
	*lax $cf56,y             ; $b82a: bf 56 cf
	adc ($ab),y              ; $b82d: 71 ab
	sty $9d,x                ; $b82f: 94 9d
	*slo ($fa,x)             ; $b831: 03 fa
	jmp $e136                ; $b833: 4c 36 e1

; === Block $b854-$b867 (Code) ===
loc_b854:
	ldy $7a,x                ; $b854: b4 7a
	bvc $b81d                ; $b856: 50 c5
loc_b858:
	*rla $46                 ; $b858: 27 46
	*sre ($f7),y             ; $b85a: 53 f7
	*nop                     ; $b85c: 7a
	*lax $18                 ; $b85d: a7 18
	inc $17c7                ; $b85f: ee c7 17
	*sax ($25,x)             ; $b862: 83 25
	ror $75b5,x              ; $b864: 7e b5 75

; === Block $b861-$b973 (Code) ===
entry_b861:
	*slo $83,x               ; $b861: 17 83
	and $7e                  ; $b863: 25 7e
	lda $75,x                ; $b865: b5 75
	lsr $db53                ; $b867: 4e 53 db
	*isc ($3d,x)             ; $b86a: e3 3d
	dec $b2                  ; $b86c: c6 b2
	ora #$ea                 ; $b86e: 09 ea
	*nop $23,x               ; $b870: d4 23
	ror $3515,x              ; $b872: 7e 15 35 PPUSCROLL
	ldy $5acd,x              ; $b875: bc cd 5a
	sty $6f                  ; $b878: 84 6f
	*nop #$c6                ; $b87a: c2 c6
	sty $d2                  ; $b87c: 84 d2
	*nop                     ; $b87e: 1a
	lda $664b,y              ; $b87f: b9 4b 66
	lsr                      ; $b882: 4a
	sbc $d46a,x              ; $b883: fd 6a d4
	*nop $ca                 ; $b886: 44 ca
	*sre $4faf,x             ; $b888: 5f af 4f
	*nop #$a4                ; $b88b: c2 a4
	sta $79f7,y              ; $b88d: 99 f7 79
	*slo $7f42,x             ; $b890: 1f 42 7f
	ror                      ; $b893: 6a
	*shy $b161,x             ; $b894: 9c 61 b1
	bvs $b854                ; $b897: 70 bb
loc_b899:
	*nop $bc,x               ; $b899: f4 bc
	*isc $57,x               ; $b89b: f7 57
	and #$c4                 ; $b89d: 29 c4
	asl $bf                  ; $b89f: 06 bf
	and $a8a7                ; $b8a1: 2d a7 a8
	*rra ($64,x)             ; $b8a4: 63 64
	*lax $a7d7               ; $b8a6: af d7 a7
	cpx #$ca                 ; $b8a9: e0 ca
	*shx $37f6,y             ; $b8ab: 9e f6 37 PPUADDR
	ldy $fbf4,x              ; $b8ae: bc f4 fb
	rol $3220,x              ; $b8b1: 3e 20 32 PPUCTRL
	inx                      ; $b8b4: e8
	*jam                     ; $b8b5: d2
	*isc ($50,x)             ; $b8b6: e3 50
	txs                      ; $b8b8: 9a
	*isc $0f,x               ; $b8b9: f7 0f
	and $54c6,x              ; $b8bb: 3d c6 54
	*isc $71c0,y             ; $b8be: fb c0 71
	sty $eaf3                ; $b8c1: 8c f3 ea
	*dcp $87,x               ; $b8c4: d7 87
	asl $ece3,x              ; $b8c6: 1e e3 ec
	clc                      ; $b8c9: 18
	cmp $f54b,y              ; $b8ca: d9 4b f5
	sbc #$f8                 ; $b8cd: e9 f8
	*jam                     ; $b8cf: 32
	lda $b5                  ; $b8d0: a5 b5
	sta $5368                ; $b8d2: 8d 68 53
	*dcp $e5,x               ; $b8d5: d7 e5
	lda $d4fa,x              ; $b8d7: bd fa d4
	*isc $5313,x             ; $b8da: ff 13 53
	*isc ($c0),y             ; $b8dd: f3 c0
	cmp $b5                  ; $b8df: c5 b5
	ldx $6e,y                ; $b8e1: b6 6e
	ldy $0b11                ; $b8e3: ac 11 0b
	*slo $b53a,y             ; $b8e6: 1b 3a b5
	*nop $956c               ; $b8e9: 0c 6c 95
	*nop                     ; $b8ec: fa
	*nop $fc,x               ; $b8ed: f4 fc
	*nop                     ; $b8ef: 3a
	*dcp $ffb6,y             ; $b8f0: db b6 ff
	plp                      ; $b8f3: 28
	*las $65f7,y             ; $b8f4: bb f7 65
	*alr #$6b                ; $b8f7: 4b 6b
	*slo $7ade,y             ; $b8f9: 1b de 7a
	adc $109f,x              ; $b8fc: 7d 9f 10
	*nop                     ; $b8ff: 1a
	*nop $0eb7,x             ; $b900: fc b7 0e
	and $d8c7,x              ; $b903: 3d c7 d8
	and ($b2),y              ; $b906: 31 b2
	*sax $eb,y               ; $b908: 97 eb
	*dcp ($f0),y             ; $b90a: d3 f0
	lda ($88),y              ; $b90c: b1 88
	asl $1186                ; $b90e: 0e 86 11
	*jam                     ; $b911: 32
	*nop $9c,x               ; $b912: 54 9c
	*rra $e1a7,x             ; $b914: 7f a7 e1
	*jam                     ; $b917: d2
	cmp #$f6                 ; $b918: c9 f6
	adc $6264,x              ; $b91a: 7d 64 62
	sta $0aef,x              ; $b91d: 9d ef 0a
	and $d64f,y              ; $b920: 39 4f d6
	sta ($ef,x)              ; $b923: 81 ef
	*rra $6a08,y             ; $b925: 7b 08 6a
	sbc $3a                  ; $b928: e5 3a
	and $e137,y              ; $b92a: 39 37 e1
	ldy $67                  ; $b92d: a4 67
	*nop                     ; $b92f: fa
	*jam                     ; $b930: d2
	bpl $b914                ; $b931: 10 e1
loc_b933:
	bne $b90d                ; $b933: d0 d8
loc_b935:
	ldx $d1                  ; $b935: a6 d1
	nop                      ; $b937: ea
	*dcp $ab,x               ; $b938: d7 ab
	sty $f6,x                ; $b93a: 94 f6
	sty $32                  ; $b93c: 84 32
	*nop $753f,x             ; $b93e: 1c 3f 75
	sbc $066b,y              ; $b941: f9 6b 06
	rol $4a,x                ; $b944: 36 4a
	*sha ($8f),y             ; $b946: 93 8f
	*nop $fc,x               ; $b948: f4 fc
	ora ($c7),y              ; $b94a: 11 c7
	*dcp ($6b,x)             ; $b94c: c3 6b
	ora $0da1,x              ; $b94e: 1d a1 0d
	sbc $6b                  ; $b951: e5 6b
	cmp $ca,x                ; $b953: d5 ca
	*jam                     ; $b955: 72
	*nop $bfe7,x             ; $b956: 7c e7 bf
	sbc $34                  ; $b959: e5 34
	*sre $fa3c,x             ; $b95b: 5f 3c fa
	lda $f7,x                ; $b95e: b5 f7
	sbc ($ba),y              ; $b960: f1 ba
	*tas $c832,y             ; $b962: 9b 32 c8
	*sre $91f7               ; $b965: 4f f7 91
	*nop $27,x               ; $b968: f4 27
	inc $f0,x                ; $b96a: f6 f0
	inx                      ; $b96c: e8
	iny                      ; $b96d: c8
	*sre $49f2               ; $b96e: 4f f2 49
	*sax ($1c,x)             ; $b971: 83 1c
	jmp $fa95                ; $b973: 4c 95 fa

; === Block $b8f1-$b8f3 (Code) ===
Bank0_Func00:
	ldx $ff,y                ; $b8f1: b6 ff

; === Block $b8fb-$b8fc (Code) ===
entry_b8fb:
	*nop                     ; $b8fb: 7a

; === Block $b90d-$b90e (Code) ===
loc_b90d:
	dey                      ; $b90d: 88

; === Block $b943-$b946 (Code) ===
entry_b943:
	asl $36                  ; $b943: 06 36
	lsr                      ; $b945: 4a

; === Block $b9e6-$ba06 (Code) ===
entry_b9e6:
	inc $b335                ; $b9e6: ee 35 b3
	*isc ($e1),y             ; $b9e9: f3 e1
	cmp ($dd),y              ; $b9eb: d1 dd
	ora $0c69,x              ; $b9ed: 1d 69 0c
	clv                      ; $b9f0: b8
	sta $01,x                ; $b9f1: 95 01
	*tas $4fe9,y             ; $b9f3: 9b e9 4f
	cpy $c256                ; $b9f6: cc 56 c2
entry_b9f9:
	rol $52                  ; $b9f9: 26 52
	sbc $7e7a,x              ; $b9fb: fd 7a 7e
	ora $24,x                ; $b9fe: 15 24
	*dcp $d9ba               ; $ba00: cf ba d9
	sbc $e8f0,y              ; $ba03: f9 f0 e8
	jmp ($2e5c)              ; $ba06: 6c 5c 2e OAMDATA

; === Block $b9ee-$b9f0 (Code) ===
loc_b9ee:
	adc #$0c                 ; $b9ee: 69 0c

; === Block $ba04-$ba06 (Code) ===
entry_ba04:
	beq $b9ee                ; $ba04: f0 e8

; === Block $ba0b-$ba3a (Code) ===
entry_ba0b:
	ldy $9a21                ; $ba0b: ac 21 9a
	*nop                     ; $ba0e: 1a
	ora ($69,x)              ; $ba0f: 01 69
	*nop $d572               ; $ba11: 0c 72 d5
	and $5e44,x              ; $ba14: 3d 44 5e
	*nop $ab4d               ; $ba17: 0c 4d ab
	sty $f6,x                ; $ba1a: 94 f6
	sty $31                  ; $ba1c: 84 31
	sta ($ee,x)              ; $ba1e: 81 ee
	adc $9a                  ; $ba20: 65 9a
	cmp $ccf8,y              ; $ba22: d9 f8 cc
	stx $5f                  ; $ba25: 86 5f
	iny                      ; $ba27: c8
	*isc $c601,x             ; $ba28: ff 01 c6
	and $36,x                ; $ba2b: 35 36
	sei                      ; $ba2d: 78
	ror $738d                ; $ba2e: 6e 8d 73
	dec $58f8                ; $ba31: ce f8 58
	*isc $e39e               ; $ba34: ef 9e e3
entry_ba37:
	clc                      ; $ba37: 18
	adc $df                  ; $ba38: 65 df
	rti                      ; $ba3a: 40

; === Block $ba21-$ba22 (Code) ===
entry_ba21:
	txs                      ; $ba21: 9a

; === Block $ba2a-$ba2e (Code) ===
loc_ba2a:
	dec $35                  ; $ba2a: c6 35
	rol $78,x                ; $ba2c: 36 78

; === Block $ba54-$ba95 (Code) ===
entry_ba54:
	jsr $7d23                ; $ba54: 20 23 7d
loc_ba57:
	plp                      ; $ba57: 28
	ror $7990                ; $ba58: 6e 90 79
	bpl $ba2a                ; $ba5b: 10 cd
loc_ba5d:
	ora $f9                  ; $ba5d: 05 f9
	adc #$41                 ; $ba5f: 69 41
	asl $78f1                ; $ba61: 0e f1 78
	*nop $8260,x             ; $ba64: dc 60 82
	*jam                     ; $ba67: 02
	*rla $d2,x               ; $ba68: 37 d2
	stx $7b                  ; $ba6a: 86 7b
	sty $57cb                ; $ba6c: 8c cb 57
	*sha $22af,y             ; $ba6f: 9f af 22 PPUDATA
	*lax #$8f                ; $ba72: ab 8f
	inc $82                  ; $ba74: e6 82
	*nop $a0b4,x             ; $ba76: fc b4 a0
	*sax $78                 ; $ba79: 87 78
	tya                      ; $ba7b: 98
	ldy $26,x                ; $ba7c: b4 26
	eor $5796,y              ; $ba7e: 59 96 57
	*dcp $8b71               ; $ba81: cf 71 8b
	sty $1e,x                ; $ba84: 94 1e
	*isc ($24),y             ; $ba86: f3 24
	sbc $dbd8,x              ; $ba88: fd d8 db
	lda #$7d                 ; $ba8b: a9 7d
	*dcp $ec                 ; $ba8d: c7 ec
	eor $33ee,y              ; $ba8f: 59 ee 33 PPUADDR
	*sre $a393,x             ; $ba92: 5f 93 a3

; === Block $ba91-$bae7 (Code) ===
entry_ba91:
	*rla ($5f),y             ; $ba91: 33 5f
	*sha ($a3),y             ; $ba93: 93 a3
	*slo $3d,x               ; $ba95: 17 3d
	ora $b6d1,x              ; $ba97: 1d d1 b6
	*jam                     ; $ba9a: f2
entry_ba9b:
	*sha $df67,y             ; $ba9b: 9f 67 df
	*anc #$ee                ; $ba9e: 0b ee
	*rra $688d,y             ; $baa0: 7b 8d 68
	*jam                     ; $baa3: 22
	*nop                     ; $baa4: 5a
	*slo $78                 ; $baa5: 07 78
entry_baa7:
	ldy $c26f,x              ; $baa7: bc 6f c2
	*nop $dc2c,x             ; $baaa: dc 2c dc
	*lax #$35                ; $baad: ab 35
	and $b2,x                ; $baaf: 35 b2
	lda $1597                ; $bab1: ad 97 15
	*lax #$08                ; $bab4: ab 08
	*rra $96                 ; $bab6: 67 96
	*sax $bf20               ; $bab8: 8f 20 bf
	*dcp $3f                 ; $babb: c7 3f
	*rra $43e9,y             ; $babd: 7b e9 43
	*jam                     ; $bac0: 32
	*slo $ffd9               ; $bac1: 0f d9 ff
	ror $3a,x                ; $bac4: 76 3a
	ror $b5                  ; $bac6: 66 b5
	*sre $da1a               ; $bac8: 4f 1a da
	and $2bde,x              ; $bacb: 3d de 2b PPUADDR
	ora #$93                 ; $bace: 09 93
	bne $bab7                ; $bad0: d0 e5
loc_bad2:
	jsr $875b                ; $bad2: 20 5b 87
entry_bad5:
	*shx $2cfc,y             ; $bad5: 9e fc 2c OAMDATA
	*jam                     ; $bad8: f2
	cmp ($f7),y              ; $bad9: d1 f7
	*rra ($47,x)             ; $badb: 63 47
	ora $fba9,y              ; $badd: 19 a9 fb
	*jam                     ; $bae0: 32
	iny                      ; $bae1: c8
	*sre $4df1               ; $bae2: 4f f1 4d
	ldx #$4c                 ; $bae5: a2 4c

; === Block $baa6-$baa7 (Code) ===
loc_baa6:
	sei                      ; $baa6: 78

; === Block $bab7-$bac1 (Code) ===
loc_bab7:
	stx $8f,y                ; $bab7: 96 8f
	jsr $c7bf                ; $bab9: 20 bf c7
loc_babc:
	*rla $e97b,x             ; $babc: 3f 7b e9
	*sre ($32,x)             ; $babf: 43 32

; === Block $bac3-$bac6 (Code) ===
entry_bac3:
	*isc $3a76,x             ; $bac3: ff 76 3a PPUADDR

; === Block $bada-$bae0 (Code) ===
loc_bada:
	*isc $63,x               ; $bada: f7 63
	*sre $19                 ; $badc: 47 19
	lda #$fb                 ; $bade: a9 fb

; === Block $bae7-$bfdc (Code) ===
entry_bae7:
	*rra ($96,x)             ; $bae7: 63 96
	*tas $4b59,y             ; $bae9: 9b 59 4b
	*sbc #$f0                ; $baec: eb f0
	*lax $bf,y               ; $baee: b7 bf
	*anc #$6e                ; $baf0: 0b 6e
	sbc ($67,x)              ; $baf2: e1 67
	sta $4764,x              ; $baf4: 9d 64 47
	rol $8c,x                ; $baf7: 36 8c
	*isc $19,x               ; $baf9: f7 19
	lda #$fc                 ; $bafb: a9 fc
	and $5aec,x              ; $bafd: 3d ec 5a
	*sax $7085               ; $bb00: 8f 85 70
	*sre $f697               ; $bb03: 4f 97 f6
	stx $b4,y                ; $bb06: 96 b4
	ror $a93b,x              ; $bb08: 7e 3b a9
	ldx $b429,y              ; $bb0b: be 29 b4
	*nop                     ; $bb0e: 7a
	lda $f7,x                ; $bb0f: b5 f7
	*rra ($8b,x)             ; $bb11: 63 8b
	*dcp ($ae,x)             ; $bb13: c3 ae
	nop                      ; $bb15: ea
	ror $b8e7,x              ; $bb16: 7e e7 b8
	sed                      ; $bb19: f8
	inc $49de                ; $bb1a: ee de 49
	*nop $3eda,x             ; $bb1d: 3c da 3e PPUSTATUS
	eor $42ae,y              ; $bb20: 59 ae 42
	*nop                     ; $bb23: 1a
	and $67b4,y              ; $bb24: 39 b4 67
	sta $a55c,x              ; $bb27: 9d 5c a5
	*sax $55                 ; $bb2a: 87 55
	stx $86d0                ; $bb2c: 8e d0 86
	*jam                     ; $bb2f: f2
	lda $ea,x                ; $bb30: b5 ea
	sbc $3a                  ; $bb32: e5 3a
	*sre $3647               ; $bb34: 4f 47 36 PPUDATA
	*dcp $2ec2,y             ; $bb37: db c2 2e PPUSTATUS
	eor #$e2                 ; $bb3a: 49 e2
	*shy $fdd4,x             ; $bb3c: 9c d4 fd
	*shx $ffba,y             ; $bb3f: 9e ba ff
	dec $1d,x                ; $bb42: d6 1d
	lsr $3b,x                ; $bb44: 56 3b
entry_bb46:
	*jam                     ; $bb46: 42
	*nop                     ; $bb47: 1a
	iny                      ; $bb48: c8
	dec $46cb,x              ; $bb49: de cb 46
	lsr $f9bc                ; $bb4c: 4e bc f9
	bmi $bada                ; $bb4f: 30 89
loc_bb51:
	sty $1d,x                ; $bb51: 94 1d
	*nop                     ; $bb53: 7a
	ror $aa08,x              ; $bb54: 7e 08 aa
	cpy $f964                ; $bb57: cc 64 f9
	*isc $9453               ; $bb5a: ef 53 94
	*sbc #$52                ; $bb5d: eb 52
	*sre $9ca8               ; $bb5f: 4f a8 9c
	*isc ($9e),y             ; $bb62: f3 9e
	*isc ($15,x)             ; $bb64: e3 15
	*isc $ce                 ; $bb66: e7 ce
	and #$93                 ; $bb68: 29 93
	*dcp ($fc),y             ; $bb6a: d3 fc
	*isc $1a,x               ; $bb6c: f7 1a
	cpy $6691                ; $bb6e: cc 91 66
	lda $6208,y              ; $bb71: b9 08 62
	stx $ee61                ; $bb74: 8e 61 ee
	ldx $9653                ; $bb77: ae 53 96
	sta $e1                  ; $bb7a: 85 e1
	bcs $bbe1                ; $bb7c: b0 63
loc_bb7e:
	adc $07                  ; $bb7e: 65 07
	lsr $879f,x              ; $bb80: 5e 9f 87
	lsr                      ; $bb83: 4a
	*lax $0e87,y             ; $bb84: bf 87 0e
	txa                      ; $bb87: 8a
	lda $08,x                ; $bb88: b5 08
	*nop                     ; $bb8a: da
	rol $26                  ; $bb8b: 26 26
	bvc $bc04                ; $bb8d: 50 75
loc_bb8f:
	sbc #$f8                 ; $bb8f: e9 f8
entry_bb91:
	*nop $e5,x               ; $bb91: 54 e5
	and $32be,x              ; $bb93: 3d be 32 PPUADDR
	*nop $7de5,x             ; $bb96: 7c e5 7d
	ora $27                  ; $bb99: 05 27
	inc $3e8e                ; $bb9b: ee 8e 3e PPUADDR
	*rla $ae16,y             ; $bb9e: 3b 16 ae
	*sre ($fd),y             ; $bba1: 53 fd
	*nop $9c                 ; $bba3: 04 9c
	*rra $60,x               ; $bba5: 77 60
	dec $ca                  ; $bba7: c6 ca
	asl $3fbd                ; $bba9: 0e bd 3f PPUSCROLL
	asl                      ; $bbac: 0a
	*jam                     ; $bbad: 92
	*nop $a5,x               ; $bbae: 74 a5
	*jam                     ; $bbb0: f2
	*sha $e1ba,y             ; $bbb1: 9f ba e1
	adc $02cd,x              ; $bbb4: 7d cd 02
	ror $2cfd,x              ; $bbb7: 7e fd 2c PPUSCROLL
	*sha $d667,y             ; $bbba: 9f 67 d6
	lsr $5c                  ; $bbbd: 46 5c
	bvc $bbc4                ; $bbbf: 50 03
loc_bbc1:
	cmp $c76d                ; $bbc1: cd 6d c7
loc_bbc4:
	clv                      ; $bbc4: b8
	*sre $755b,x             ; $bbc5: 5f 5b 75
	tay                      ; $bbc8: a8
	dex                      ; $bbc9: ca
	*nop $b48e,x             ; $bbca: 7c 8e b4
	stx $5c                  ; $bbcd: 86 5c
entry_bbcf:
	*nop $6f8c,x             ; $bbcf: 7c 8c 6f
	lsr $b6,x                ; $bbd2: 56 b6
	php                      ; $bbd4: 08
	*nop                     ; $bbd5: da
	rol $20                  ; $bbd6: 26 20
	beq $bb8b                ; $bbd8: f0 b1
loc_bbda:
	*lax ($53,x)             ; $bbda: a3 53
	cpx $c8fa                ; $bbdc: ec fa c8
	*sax $05                 ; $bbdf: 87 05
loc_bbe1:
	and ($ac,x)              ; $bbe1: 21 ac
	pla                      ; $bbe3: 68
	eor #$3f                 ; $bbe4: 49 3f
	*sre ($0e,x)             ; $bbe6: 43 0e
	*lax #$1d                ; $bbe8: ab 1d
	lda $9fc4                ; $bbea: ad c4 9f
	sta $712f                ; $bbed: 8d 2f 71
	sbc $996c,x              ; $bbf0: fd 6c 99
	sec                      ; $bbf3: 38
	sbc $b966,y              ; $bbf4: f9 66 b9
	php                      ; $bbf7: 08
	*jam                     ; $bbf8: 62
	ora ($9e,x)              ; $bbf9: 01 9e
	sty $be,x                ; $bbfb: 94 be
	*sre ($f7),y             ; $bbfd: 53 f7
	*nop                     ; $bbff: 7a
	ora #$ff                 ; $bc00: 09 ff
	and $e7,x                ; $bc02: 35 e7
loc_bc04:
	clv                      ; $bc04: b8
	iny                      ; $bc05: c8
	*isc ($f3,x)             ; $bc06: e3 f3
	bne $bbcd                ; $bc08: d0 c3
loc_bc0a:
	tax                      ; $bc0a: aa
	sta $6b08,y              ; $bc0b: 99 08 6b
	*nop $d9,x               ; $bc0e: 54 d9
	beq $bc0f                ; $bc10: f0 fd
loc_bc12:
	cmp $1072                ; $bc12: cd 72 10
	*nop #$90                ; $bc15: c2 90
	*rla $4a,x               ; $bc17: 37 4a
	*nop #$15                ; $bc19: c2 15
	*sbc #$23                ; $bc1b: eb 23
	lsr                      ; $bc1d: 4a
	php                      ; $bc1e: 08
	*slo $728f               ; $bc1f: 0f 8f 72
	*nop $9ce7,x             ; $bc22: 7c e7 9c
	*isc $1b,x               ; $bc25: f7 1b
	ldy $4c                  ; $bc27: a4 4c
	*slo $f4                 ; $bc29: 07 f4
	lda ($99,x)              ; $bc2b: a1 99
	*nop $b9,x               ; $bc2d: 14 b9
	asl $3bf6                ; $bc2f: 0e f6 3b PPUADDR
	*jam                     ; $bc32: 42
	clc                      ; $bc33: 18
	*nop #$d5                ; $bc34: 80 d5
	dex                      ; $bc36: ca
	*rra $0f,x               ; $bc37: 77 0f
	and $64c6,x              ; $bc39: 3d c6 64
	*jam                     ; $bc3c: 52
	cpx $32                  ; $bc3d: e4 32
	bit $1efe                ; $bc3f: 2c fe 1e
	*nop $77,x               ; $bc42: f4 77
	*nop $d4                 ; $bc44: 44 d4
	txa                      ; $bc46: 8a
	lsr $d46a,x              ; $bc47: 5e 6a d4
entry_bc4a:
	*rla ($68,x)             ; $bc4a: 23 68
	tya                      ; $bc4c: 98
	ldy $d311,x              ; $bc4d: bc 11 d3
	*isc $75ad,x             ; $bc50: ff ad 75
	*rra $8d,x               ; $bc53: 77 8d
	*nop $d9,x               ; $bc55: d4 d9
	nop                      ; $bc57: ea
	sbc $2d                  ; $bc58: e5 2d
	*xaa #$9f                ; $bc5a: 8b 9f
	*lax #$51                ; $bc5c: ab 51
	*nop $8a,x               ; $bc5e: d4 8a
	*nop $6a,x               ; $bc60: 34 6a
	*nop                     ; $bc62: 7a
	*nop #$d7                ; $bc63: 89 d7
	*tas $6f43,y             ; $bc65: 9b 43 6f
	*jam                     ; $bc68: f2
	*xaa #$bd                ; $bc69: 8b bd
	rol $aeb1,x              ; $bc6b: 3e b1 ae
	*slo $fe,x               ; $bc6e: 17 fe
	nop                      ; $bc70: ea
	sbc $3a                  ; $bc71: e5 3a
	and $3d,x                ; $bc73: 35 3d
	*nop $eb                 ; $bc75: 44 eb
	cmp $71a3                ; $bc77: cd a3 71
	ora $a75c                ; $bc7a: 0d 5c a7
	*rla $c9,x               ; $bc7d: 37 c9
	*lax $ce,y               ; $bc7f: b7 ce
	*sre ($f3,x)             ; $bc81: 43 f3
	ror $8c7b                ; $bc83: 6e 7b 8c
	*isc ($e5),y             ; $bc86: f3 e5
	sty $5e                  ; $bc88: 84 5e
	ora $ea6d,x              ; $bc8a: 1d 6d ea
	*sbc #$1d                ; $bc8d: eb 1d
	lda $41d4                ; $bc8f: ad d4 41
	adc $cad5,x              ; $bc92: 7d d5 ca
	*rra $6b7c,y             ; $bc95: 7b 7c 6b
	*anc #$1b                ; $bc98: 2b 1b
	*nop $804a,x             ; $bc9a: 3c 4a 80
	sta $6c                  ; $bc9d: 85 6c
	*jam                     ; $bc9f: 22
	beq $bc8b                ; $bca0: f0 e9
loc_bca2:
	*nop $fb                 ; $bca2: 64 fb
	rol $5327,x              ; $bca4: 3e 27 53
	*isc $3d,x               ; $bca7: f7 3d
	*dcp $c7                 ; $bca9: c7 c7
	ror $f4,x                ; $bcab: 76 f4
	*nop                     ; $bcad: da
	*jam                     ; $bcae: 32
	inc $7e52,x              ; $bcaf: fe 52 7e
	*sbc #$8f                ; $bcb2: eb 8f
entry_bcb4:
	stx $1d                  ; $bcb4: 86 1d
	eor $f26f,x              ; $bcb6: 5d 6f f2
	*nop $e56a,x             ; $bcb9: fc 6a e5
	*nop                     ; $bcbc: 3a
	*isc ($e3,x)             ; $bcbd: e3 e3
	and #$65                 ; $bcbf: 29 65
	cmp ($a4),y              ; $bcc1: d1 a4
	*shx $1f6d,y             ; $bcc3: 9e 6d 1f
	*dcp $ad3e               ; $bcc6: cf 3e ad
	*nop $f5,x               ; $bcc9: 74 f5
entry_bccb:
	ora ($78),y              ; $bccb: 11 78
	adc $b7,x                ; $bccd: 75 b7
	adc $1063                ; $bccf: 6d 63 10
	*nop $e218               ; $bcd2: 0c 18 e2
	beq $bc87                ; $bcd5: f0 b0
loc_bcd7:
	stx $7b                  ; $bcd7: 86 7b
	*lax #$f6                ; $bcd9: ab f6
entry_bcdb:
	bit $1af7                ; $bcdb: 2c f7 1a
	and $20,x                ; $bcde: 35 20
	*nop                     ; $bce0: da
entry_bce1:
	and $6bb4,y              ; $bce1: 39 b4 6b
	*sax $528d               ; $bce4: 8f 8d 52
	*sha ($c8),y             ; $bce7: 93 c8
	cmp $b6c2,y              ; $bce9: d9 c2 b6
	ora ($78),y              ; $bcec: 11 78
	cli                      ; $bcee: 58
	sbc $6b48                ; $bcef: ed 48 6b
	jsr $691e                ; $bcf2: 20 1e 69
loc_bcf5:
	sei                      ; $bcf5: 78
	*nop $323a,x             ; $bcf6: fc 3a 32 PPUSTATUS
	*slo ($fd),y             ; $bcf9: 13 fd
	*nop $bda7,x             ; $bcfb: 5c a7 bd
	lsr $da53                ; $bcfe: 4e 53 da
	bcc $bcd4                ; $bd01: 90 d1
loc_bd03:
	cmp $3ca3                ; $bd03: cd a3 3c OAMADDR
	inc $a7                  ; $bd06: e6 a7
	cpx $7fdb                ; $bd08: ec db 7f
	sty $5d,x                ; $bd0b: 94 5d
	sbc #$ea                 ; $bd0d: e9 ea
	*jam                     ; $bd0f: 22
	lda #$76                 ; $bd10: a9 76
	adc #$4b                 ; $bd12: 69 4b
	lsr $bf                  ; $bd14: 46 bf
	*isc $b907,x             ; $bd16: ff 07 b9
	*isc $3d                 ; $bd19: e7 3d
	dec $69                  ; $bd1b: c6 69
	pla                      ; $bd1d: 68
	*sha ($ef),y             ; $bd1e: 93 ef
	*slo $85,x               ; $bd20: 17 85
	sty $7740                ; $bd22: 8c 40 77
	lda ($99),y              ; $bd25: b1 99
	*shy $abb5,x             ; $bd27: 9c b5 ab
	sty $e6,x                ; $bd2a: 94 e6
	sty $df,x                ; $bd2c: 94 df
	*nop $fde7,x             ; $bd2e: 3c e7 fd
entry_bd31:
	*nop                     ; $bd31: 7a
	cmp $3a,x                ; $bd32: d5 3a
	*isc ($df),y             ; $bd34: f3 df
	*sax $41                 ; $bd36: 87 41
	bmi $bd24                ; $bd38: 30 ea
loc_bd3a:
	adc $4e                  ; $bd3a: 65 4e
	*isc ($f9),y             ; $bd3c: f3 f9
	*lax ($01),y             ; $bd3e: b3 01
	*rra $967e               ; $bd40: 6f 7e 96
	*rra ($57),y             ; $bd43: 73 57
	*sre $d5,x               ; $bd45: 57 d5
	dex                      ; $bd47: ca
	*rra ($4a),y             ; $bd48: 73 4a
	*rra $c2de               ; $bd4a: 6f de c2
	*nop                     ; $bd4d: 1a
	lda $694e,y              ; $bd4e: b9 4e 69
	eor $cef3                ; $bd51: 4d f3 ce
	ror                      ; $bd54: 6a
	ror $5ccf,x              ; $bd55: 7e cf 5c
	*nop $a165,x             ; $bd58: 7c 65 a1
	sei                      ; $bd5b: 78
	adc $9ba3                ; $bd5c: 6d a3 9b
	lsr $b2                  ; $bd5f: 46 b2
	lda ($b3),y              ; $bd61: b1 b3
	adc ($17,x)              ; $bd63: 61 17
	sta $82                  ; $bd65: 85 82
	*dcp $167e               ; $bd67: cf 7e 16
	*nop $5fd0,x             ; $bd6a: 5c d0 5f
	*jam                     ; $bd6d: 32
	sei                      ; $bd6e: 78
	*lax $693e               ; $bd6f: af 3e 69
	nop                      ; $bd72: ea
	*jam                     ; $bd73: 22
	beq $bddb                ; $bd74: f0 65
loc_bd76:
	eor $eb3e                ; $bd76: 4d 3e eb
	*dcp $5eff               ; $bd79: cf ff 5e
	lda ($ac),y              ; $bd7c: b1 ac
	*axs #$dc                ; $bd7e: cb dc
	*nop $ab7b,x             ; $bd80: 7c 7b ab
	sty $b0,x                ; $bd83: 94 b0
	*xaa #$c1                ; $bd85: 8b c1
	ldy $aba7,x              ; $bd87: bc a7 ab
	sty $e2,x                ; $bd8a: 94 e2
	ldy $adb5,x              ; $bd8c: bc b5 ad
	ora $c3ef,y              ; $bd8f: 19 ef c3
	ldy #$b2                 ; $bd92: a0 b2
	*slo ($fc),y             ; $bd94: 13 fc
	*alr #$01                ; $bd96: 4b 01
	*sre $1751               ; $bd98: 4f 51 17
	*nop #$2d                ; $bd9b: 82 2d
	cmp $f2,x                ; $bd9d: d5 f2
entry_bd9f:
	*nop $e56a,x             ; $bd9f: fc 6a e5
	*nop $fb,x               ; $bda2: 34 fb
	*lax $6b79               ; $bda4: af 79 6b
	and $b9c5,x              ; $bda7: 3d c5 b9
	*isc $5a                 ; $bdaa: e7 5a
	clc                      ; $bdac: 18
	eor $e1                  ; $bdad: 45 e1
	*rra ($b4,x)             ; $bdaf: 63 b4
	and ($9d,x)              ; $bdb1: 21 9d
	eor $f78c,y              ; $bdb3: 59 8c f7
	ora $77b8,y              ; $bdb6: 19 b8 77
entry_bdb9:
	sbc ($b8),y              ; $bdb9: f1 b8
	dec $c87f,x              ; $bdbb: de 7f c8
	dec $e1                  ; $bdbe: c6 e1
	ror $59                  ; $bdc0: 66 59
	tay                      ; $bdc2: a8
	tya                      ; $bdc3: 98
	*rra $f0bc,y             ; $bdc4: 7b bc f0
	lsr $11                  ; $bdc7: 46 11
	*lax #$6f                ; $bdc9: ab 6f
	*jam                     ; $bdcb: f2
	*xaa #$bd                ; $bdcc: 8b bd
	and $5e44,x              ; $bdce: 3d 44 5e
	ora $39,x                ; $bdd1: 15 39
	lsr $1987                ; $bdd3: 4e 87 19
	sty $9ecf                ; $bdd6: 8c cf 9e
	*isc $a3c3,y             ; $bdd9: fb c3 a3
	adc $e613,y              ; $bddc: 79 13 e6
	ora ($b7,x)              ; $bddf: 01 b7
	*jam                     ; $bde1: b2
	adc $579f,x              ; $bde2: 7d 9f 57
	and #$a7                 ; $bde5: 29 a7
	tay                      ; $bde7: a8
	*xaa #$c2                ; $bde8: 8b c2
	dec $b5                  ; $bdea: c6 b5
	adc $7519,x              ; $bdec: 7d 19 75
	*slo ($3e),y             ; $bdef: 13 3e
	*isc $fc29               ; $bdf1: ef 29 fc
	*rra $52,x               ; $bdf4: 77 52
	ora $6efc,x              ; $bdf6: 1d fc 6e
	ldx $cc                  ; $bdf9: a6 cc
	*tas $ed58,y             ; $bdfb: 9b 58 ed
	php                      ; $bdfe: 08
entry_bdff:
	pla                      ; $bdff: 68
	inc $d1                  ; $be00: e6 d1
	stx $85,y                ; $be02: 96 85
	sbc ($b0,x)              ; $be04: e1 b0
	*xaa #$c2                ; $be06: 8b c2
	*lax $29                 ; $be08: a7 29
	sbc $6a08                ; $be0a: ed 08 6a
	and $6b48,y              ; $be0d: 39 48 6b
	lsr $5d                  ; $be10: 46 5d
	*isc $390a               ; $be12: ef 0a 39 PPUSTATUS
	eor #$bd                 ; $be15: 49 bd
	*nop                     ; $be17: 5a
	*nop $2d8f,x             ; $be18: 7c 8f 2d PPUDATA
	*arr #$53                ; $be1b: 6b 53
	ora $0bf7,x              ; $be1d: 1d f7 0b
	and $6ec6,x              ; $be20: 3d c6 6e
	*nop $f9,x               ; $be23: 14 f9
	asl $cb5a,x              ; $be25: 1e 5a cb
entry_be28:
	ror $52                  ; $be28: 66 52
	sbc $6a96,y              ; $be2a: f9 96 6a
	rol $1e                  ; $be2d: 26 1e
	*isc $113c               ; $be2f: ef 3c 11
	sty $6b                  ; $be32: 84 6b
	*sre $1751               ; $be34: 4f 51 17
entry_be37:
	*nop #$2d                ; $be37: 82 2d
	cmp $e9,x                ; $be39: d5 e9
	sbc $4e,x                ; $be3b: f5 4e
	*sre ($be),y             ; $be3d: 53 be
	ldy $ee21,x              ; $be3f: bc 21 ee
	*rra $e78d,y             ; $be42: 7b 8d e7
	*nop $538c,x             ; $be45: fc 8c 53
	*isc $8c1b               ; $be48: ef 1b 8c
	*nop $0b37,x             ; $be4b: dc 37 0b
	*jam                     ; $be4e: 32
	cmp $c344                ; $be4f: cd 44 c3
	cmp $82e7,x              ; $be52: dd e7 82
	bmi $bde4                ; $be55: 30 8d
loc_be57:
	adc ($3a),y              ; $be57: 71 3a
	sbc $74f8,x              ; $be59: fd f8 74
	*rra $9f                 ; $be5c: 67 9f
	lsr $ba,x                ; $be5e: 56 ba
	*nop                     ; $be60: 7a
	dey                      ; $be61: 88
	ldy $762c,x              ; $be62: bc 2c 76
	ldy $31                  ; $be65: a4 31
	dec $f38e                ; $be67: ce 8e f3
	iny                      ; $be6a: c8
	*dcp $7b                 ; $be6b: c7 7b
	ora $0da1,x              ; $be6d: 1d a1 0d
	sbc $6b                  ; $be70: e5 6b
entry_be72:
	*nop $fe7e,x             ; $be72: dc 7e fe
	*rla $53,x               ; $be75: 37 53
	ror $59                  ; $be77: 66 59
	*nop $25,x               ; $be79: 74 25
	nop                      ; $be7b: ea
	*nop $45,x               ; $be7c: d4 45
entry_be7e:
	sbc ($61,x)              ; $be7e: e1 61
	*nop $57f7               ; $be80: 0c f7 57
	cpx $ee59                ; $be83: ec 59 ee
	*nop $6a,x               ; $be86: 34 6a
	eor ($b5,x)              ; $be88: 41 b5
	sty $9fd4                ; $be8a: 8c d4 9f
	*rra $d6                 ; $be8d: 67 d6
	*sre ($5e),y             ; $be8f: 53 5e
	*isc ($f7,x)             ; $be91: e3 f7
	ror $2ad6                ; $be93: 6e d6 2a PPUADDR
	*nop $45,x               ; $be96: d4 45
	cpx #$8e                 ; $be98: e0 8e
	*tas $ead3,y             ; $be9a: 9b d3 ea
	*shy $7ba7,x             ; $be9d: 9c a7 7b
	*rla $d9                 ; $bea0: 27 d9
entry_bea2:
	sbc ($01),y              ; $bea2: f1 01
	ror $d779                ; $bea4: 6e 79 d7
	*nop                     ; $bea7: 5a
	*sre ($59,x)             ; $bea8: 43 59
	*nop $8ba6,x             ; $beaa: fc a6 8b
	ldx $ad53,y              ; $bead: be 53 ad
	*isc $a3c3               ; $beb0: ef c3 a3
	eor $d958,y              ; $beb3: 59 58 d9
	*isc $9f                 ; $beb6: e7 9f
	lsr $b6,x                ; $beb8: 56 b6
	ora ($78),y              ; $beba: 11 78
	adc $b3,x                ; $bebc: 75 b3
	cpx $9b                  ; $bebe: e4 9b
	cli                      ; $bec0: 58
	dec $f6c9,x              ; $bec1: de c9 f6
	adc $a475,x              ; $bec4: 7d 75 a4
	bmi $bf02                ; $bec7: 30 39
loc_bec9:
	eor $d617                ; $bec9: 4d 17 d6
	cmp #$8a                 ; $becc: c9 8a
	*jam                     ; $bece: f2
	*slo ($fc),y             ; $becf: 13 fc
	*isc $57,x               ; $bed1: f7 57
	adc ($d5,x)              ; $bed3: 61 d5
	*dcp $9f,x               ; $bed5: d7 9f
	inc $d6b6,x              ; $bed7: fe b6 d6
	*rla $1a42,y             ; $beda: 3b 42 1a
	iny                      ; $bedd: c8
	dec $56,x                ; $bede: d6 56
	rol $6c,x                ; $bee0: 36 6c
	*jam                     ; $bee2: 22
	beq $bf49                ; $bee3: f0 64
loc_bee5:
	*jam                     ; $bee5: 32
	sbc ($a4),y              ; $bee6: f1 a4
	stx $b4                  ; $bee8: 86 b4
	rol $b2,x                ; $beea: 36 b2
	*sax $d6,y               ; $beec: 97 d6
	and $d6,x                ; $beee: 35 d6
	bcc $bec1                ; $bef0: 90 cf
loc_bef2:
	*rla ($ad),y             ; $bef2: 33 ad
	*sre ($af),y             ; $bef4: 53 af
	and $74f8,x              ; $bef6: 3d f8 74
	*slo ($0e),y             ; $bef9: 13 0e
	*lax #$1d                ; $befb: ab 1d
	lda ($0c,x)              ; $befd: a1 0c
	*jam                     ; $beff: 42
	bpl $bed5                ; $bf00: 10 d3
loc_bf02:
	sbc $0aef,x              ; $bf02: fd ef 0a
	and $ff,x                ; $bf05: 35 ff
	lda $2dee,y              ; $bf07: b9 ee 2d PPUADDR
	cmp $36                  ; $bf0a: c5 36
	stx $ae                  ; $bf0c: 86 ae
	rol $f53b,x              ; $bf0e: 3e 3b f5
	cpy #$d5                 ; $bf11: c0 d5
	dex                      ; $bf13: ca
	cli                      ; $bf14: 58
	eor $e0                  ; $bf15: 45 e0
	*sax $bd6d               ; $bf17: 8f 6d bd
	asl $34,x                ; $bf1a: 16 34
	ror                      ; $bf1c: 6a
	adc $599f,x              ; $bf1d: 7d 9f 59
	clc                      ; $bf20: 18
	*nop $a4,x               ; $bf21: 54 a4
	*isc ($cf),y             ; $bf23: f3 cf
	sta ($ee),y              ; $bf25: 91 ee
	*arr #$8f                ; $bf27: 6b 8f
	*nop $e1f7,x             ; $bf29: 7c f7 e1
	*rra $6f,x               ; $bf2c: 77 6f
	and #$ea                 ; $bf2e: 29 ea
	sbc $38                  ; $bf30: e5 38
	*sha $8690,y             ; $bf32: 9f 90 86
	and ($08,x)              ; $bf35: 21 08
	ror $793e                ; $bf37: 6e 3e 79
	dec $8a,x                ; $bf3a: d6 8a
	*nop                     ; $bf3c: 7a
	dey                      ; $bf3d: 88
	ldy $6e3c,x              ; $bf3e: bc 3c 6e
	ldx $cc                  ; $bf41: a6 cc
	*jam                     ; $bf43: b2
	inx                      ; $bf44: e8
entry_bf45:
	*alr #$f7                ; $bf45: 4b f7
	lda ($da),y              ; $bf47: b1 da
loc_bf49:
	bpl $bf1f                ; $bf49: 10 d4
loc_bf4b:
	*jam                     ; $bf4b: 72
	bcc $bf1d                ; $bf4c: 90 cf
loc_bf4e:
	ror $7916,x              ; $bf4e: 7e 16 79
	dec $d7,x                ; $bf51: d6 d7
	bcc $bf54                ; $bf53: 90 ff
loc_bf55:
	ora ($fb,x)              ; $bf55: 01 fb
	cmp $58bb,x              ; $bf57: dd bb 58
	*dcp $2d                 ; $bf5a: c7 2d
	bmi $bee9                ; $bf5c: 30 8b
loc_bf5e:
	*nop #$c6                ; $bf5e: c2 c6
	ror $61                  ; $bf60: 66 61
	lda $e8c7                ; $bf62: ad c7 e8
	*isc $9fd7               ; $bf65: ef d7 9f
	inc $63bd,x              ; $bf68: fe bd 63
	eor $b897,y              ; $bf6b: 59 97 b8
	sed                      ; $bf6e: f8
	*isc $57,x               ; $bf6f: f7 57
	and #$61                 ; $bf71: 29 61
	*slo $82,x               ; $bf73: 17 82
	*rla ($88),y             ; $bf75: 33 88
	cpy #$05                 ; $bf77: c0 05
	*nop                     ; $bf79: 5a
	sty $6d                  ; $bf7a: 84 6d
	*slo ($17),y             ; $bf7c: 13 17
	*sax ($2a,x)             ; $bf7e: 83 2a
	adc #$f7                 ; $bf80: 69 f7
	lsr $fa7f,x              ; $bf82: 5e 7f fa
	sbc $8d,x                ; $bf85: f5 8d
	ror $5e                  ; $bf87: 66 5e
	*isc ($e3,x)             ; $bf89: e3 e3
	cmp $a55c,x              ; $bf8b: dd 5c a5
	sty $5e                  ; $bf8e: 84 5e
	asl $35,x                ; $bf90: 16 35
	dec $90,x                ; $bf92: d6 90
	*axs #$9a                ; $bf94: cb 9a
	*anc #$e6                ; $bf96: 0b e6
	*sre $e23c               ; $bf98: 4f 3c e2
	bpl $bf24                ; $bf9b: 10 87
loc_bf9d:
	*nop $5e,x               ; $bf9d: 74 5e
	*jam                     ; $bf9f: 42
	*nop                     ; $bfa0: 1a
	lda $b24e,y              ; $bfa1: b9 4e b2
	txs                      ; $bfa4: 9a
	*isc $1e,x               ; $bfa5: f7 1e
	*shx $2fa2,y             ; $bfa7: 9e a2 2f PPUSTATUS
	*anc #$18                ; $bfaa: 0b 18
	*nop #$ef                ; $bfac: 80 ef
	*rra ($b4,x)             ; $bfae: 63 b4
	and ($9f,x)              ; $bfb0: 21 9f
	sbc $e9,x                ; $bfb2: f5 e9
	*rra $ef8f,y             ; $bfb4: 7b 8f ef
	bmi $c011                ; $bfb7: 30 58
loc_bfb9:
	cmp ($67,x)              ; $bfb9: c1 67
	clv                      ; $bfbb: b8
	rol $11,x                ; $bfbc: 36 11
	sei                      ; $bfbe: 78
	cli                      ; $bfbf: 58
	ror $9ec5,x              ; $bfc0: 7e c5 9e
	*isc ($37,x)             ; $bfc3: e3 37
	asl $f2e8                ; $bfc5: 0e e8 f2
	dec $5b,x                ; $bfc8: d6 5b
	*jam                     ; $bfca: 32
	*sax $de,y               ; $bfcb: 97 de
	lsr $be,x                ; $bfcd: 56 be
	ora $9619,x              ; $bfcf: 1d 19 96
	ror                      ; $bfd2: 6a
	rol $1e                  ; $bfd3: 26 1e
	*isc $113c               ; $bfd5: ef 3c 11
	sei                      ; $bfd8: 78
	inc $bfdf                ; $bfd9: ee df bf
	jmp $ff8e                ; $bfdc: 4c 8e ff

; === Block $baea-$baf2 (Code) ===
entry_baea:
	eor $eb4b,y              ; $baea: 59 4b eb
	beq $baa6                ; $baed: f0 b7
loc_baef:
	*lax $6e0b,y             ; $baef: bf 0b 6e

; === Block $bb76-$bb84 (Code) ===
entry_bb76:
	inc $53ae                ; $bb76: ee ae 53
	stx $85,y                ; $bb79: 96 85
	sbc ($b0,x)              ; $bb7b: e1 b0
	*rra ($65,x)             ; $bb7d: 63 65
	*slo $5e                 ; $bb7f: 07 5e
	*sha $4a87,y             ; $bb81: 9f 87 4a

; === Block $bbdd-$bbdf (Code) ===
entry_bbdd:
	*nop                     ; $bbdd: fa
	iny                      ; $bbde: c8

; === Block $bc0f-$bc12 (Code) ===
loc_bc0f:
	cmp $fdf0,y              ; $bc0f: d9 f0 fd

; === Block $bc87-$bc8d (Code) ===
loc_bc87:
	sbc $84                  ; $bc87: e5 84
	lsr $6d1d,x              ; $bc89: 5e 1d 6d
	nop                      ; $bc8c: ea

; === Block $bc8b-$bc95 (Code) ===
loc_bc8b:
	adc $ebea                ; $bc8b: 6d ea eb
	ora $d4ad,x              ; $bc8e: 1d ad d4
	eor ($7d,x)              ; $bc91: 41 7d
	cmp $ca,x                ; $bc93: d5 ca

; === Block $bcb1-$bcb4 (Code) ===
entry_bcb1:
	ror $8feb,x              ; $bcb1: 7e eb 8f

; === Block $bcd4-$bcdb (Code) ===
loc_bcd4:
	*nop #$f0                ; $bcd4: e2 f0
	bcs $bc5e                ; $bcd6: b0 86
loc_bcd8:
	*rra $f6ab,y             ; $bcd8: 7b ab f6

; === Block $bcdf-$bce4 (Code) ===
entry_bcdf:
	jsr $39da                ; $bcdf: 20 da 39 PPUSTATUS
loc_bce2:
	ldy $6b,x                ; $bce2: b4 6b

; === Block $bd11-$bd1b (Code) ===
loc_bd11:
	ror $69,x                ; $bd11: 76 69
	*alr #$46                ; $bd13: 4b 46
	*lax $07ff,y             ; $bd15: bf ff 07
	lda $3de7,y              ; $bd18: b9 e7 3d PPUDATA

; === Block $bd21-$bd23 (Code) ===
entry_bd21:
	sta $8c                  ; $bd21: 85 8c
	rti                      ; $bd23: 40

; === Block $bd24-$bd34 (Code) ===
loc_bd24:
	*rra $b1,x               ; $bd24: 77 b1
	sta $b59c,y              ; $bd26: 99 9c b5
	*lax #$94                ; $bd29: ab 94
	inc $94                  ; $bd2b: e6 94
	*dcp $e73c,x             ; $bd2d: df 3c e7
	sbc $d57a,x              ; $bd30: fd 7a d5
	*nop                     ; $bd33: 3a

; === Block $bd77-$bd80 (Code) ===
entry_bd77:
	rol $cfeb,x              ; $bd77: 3e eb cf
	*isc $b15e,x             ; $bd7a: ff 5e b1
	ldy $dccb                ; $bd7d: ac cb dc

; === Block $bd81-$bd8a (Code) ===
entry_bd81:
	*rra $94ab,y             ; $bd81: 7b ab 94
	bcs $bd11                ; $bd84: b0 8b
loc_bd86:
	cmp ($bc,x)              ; $bd86: c1 bc
	*lax $ab                 ; $bd88: a7 ab

; === Block $bda8-$bdaa (Code) ===
entry_bda8:
	cmp $b9                  ; $bda8: c5 b9

; === Block $bdd0-$bdd3 (Code) ===
entry_bdd0:
	lsr $3915,x              ; $bdd0: 5e 15 39 PPUSCROLL

; === Block $bddb-$bddf (Code) ===
loc_bddb:
	*lax ($79,x)             ; $bddb: a3 79
	*slo ($e6),y             ; $bddd: 13 e6

; === Block $bde4-$bde8 (Code) ===
loc_bde4:
	*sre $29,x               ; $bde4: 57 29
	*lax $a8                 ; $bde6: a7 a8

; === Block $be54-$be59 (Code) ===
entry_be54:
	*nop #$30                ; $be54: 82 30
	sta $3a71                ; $be56: 8d 71 3a PPUMASK

; === Block $beb4-$beb8 (Code) ===
entry_beb4:
	cli                      ; $beb4: 58
	cmp $9fe7,y              ; $beb5: d9 e7 9f

; === Block $bee9-$beec (Code) ===
loc_bee9:
	ldy $36,x                ; $bee9: b4 36
	*jam                     ; $beeb: b2

; === Block $befa-$befd (Code) ===
entry_befa:
	asl $1dab                ; $befa: 0e ab 1d

; === Block $bf1e-$bf21 (Code) ===
entry_bf1e:
	*sha $1859,y             ; $bf1e: 9f 59 18

; === Block $bf1f-$bf27 (Code) ===
loc_bf1f:
	eor $5418,y              ; $bf1f: 59 18 54
	ldy $f3                  ; $bf22: a4 f3
loc_bf24:
	*dcp $ee91               ; $bf24: cf 91 ee

; === Block $bf54-$bf57 (Code) ===
loc_bf54:
	*isc $fb01,x             ; $bf54: ff 01 fb

; === Block $bf81-$bf89 (Code) ===
entry_bf81:
	*isc $5e,x               ; $bf81: f7 5e
	*rra $f5fa,x             ; $bf83: 7f fa f5
	sta $5e66                ; $bf86: 8d 66 5e

; === Block $bff1-$bffa (Code) ===
entry_bff1:
	brk                      ; $bff1: 00 Bank call: bank 0, Bank0_Func00
	.byte $00                ; $bff2: 00 Function index
	.byte $00                ; $bff3: 00 Target bank
	pha                      ; $bff4: 48
	*nop $01                 ; $bff5: 04 01
	asl $9e07                ; $bff7: 0e 07 9e

; === Block $bff8-$c004 (Code) ===
entry_bff8:
	*slo $9e                 ; $bff8: 07 9e
entry_bffa:
	cld                      ; $bffa: d8
	*lax $bfd8,y             ; $bffb: bf d8 bf
	cld                      ; $bffe: d8
	*lax $6b84,y             ; $bfff: bf 84 6b
	*rra $e5,x               ; $c002: 77 e5
	jmp $e54b                ; $c004: 4c 4b e5

; === Block $c007-$c007 (Code) ===
loc_c007:
	jmp $e58d                ; $c007: 4c 8d e5

; === Block $c009-$c00d (Code) ===
entry_c009:
	sbc $4c                  ; $c009: e5 4c
	*lax ($e5,x)             ; $c00b: a3 e5
	jmp $e5b9                ; $c00d: 4c b9 e5

; === Block $c011-$c016 (Code) ===
loc_c011:
	*dcp $4ce5               ; $c011: cf e5 4c
	sbc $e5                  ; $c014: e5 e5
	jmp $e561                ; $c016: 4c 61 e5

; === Block $c013-$c013 (Code) ===
loc_c013:
	jmp $e5e5                ; $c013: 4c e5 e5

; === Block $c03d-$c0cf (Code) ===
loc_c03d:
	cld                      ; $c03d: d8
	lda $2002                ; $c03e: ad 02 20 PPUSTATUS
	bpl $c03e                ; $c041: 10 fb
loc_c043:
	lda $2002                ; $c043: ad 02 20 PPUSTATUS
	bpl $c043                ; $c046: 10 fb
loc_c048:
	nop                      ; $c048: ea
	nop                      ; $c049: ea
	nop                      ; $c04a: ea
	nop                      ; $c04b: ea
	nop                      ; $c04c: ea
	nop                      ; $c04d: ea
	lda #$10                 ; $c04e: a9 10
	sta $2000                ; $c050: 8d 00 20 PPUCTRL
	lda #$00                 ; $c053: a9 00
	sta $2001                ; $c055: 8d 01 20 PPUMASK
	sta $ffff                ; $c058: 8d ff ff
	sta $ffff                ; $c05b: 8d ff ff
	sta $ffff                ; $c05e: 8d ff ff
	sta $ffff                ; $c061: 8d ff ff
	sta $ffff                ; $c064: 8d ff ff
	lda #$4c                 ; $c067: a9 4c
	sta $0502                ; $c069: 8d 02 05
	lda $c0d2                ; $c06c: ad d2 c0
	sta $0503                ; $c06f: 8d 03 05
	lda $c0d3                ; $c072: ad d3 c0
	sta $0504                ; $c075: 8d 04 05
	ldx #$ff                 ; $c078: a2 ff
	txs                      ; $c07a: 9a
	lda #$00                 ; $c07b: a9 00
	tax                      ; $c07d: aa
	sta $00,x                ; $c07e: 95 00
	sta $0300,x              ; $c080: 9d 00 03
	sta $0400,x              ; $c083: 9d 00 04
	sta $0505,x              ; $c086: 9d 05 05
	sta $0600,x              ; $c089: 9d 00 06
	sta $0700,x              ; $c08c: 9d 00 07
	inx                      ; $c08f: e8
	bne $c07e                ; $c090: d0 ec
loc_c092:
	lda #$0e                 ; $c092: a9 0e
	sta $0500                ; $c094: 8d 00 05
	lda #$10                 ; $c097: a9 10
	sta $0501                ; $c099: 8d 01 05
	sta $39                  ; $c09c: 85 39
	jsr $c104                ; $c09e: 20 04 c1
loc_c0a1:
	lda $2002                ; $c0a1: ad 02 20 PPUSTATUS
	lda #$10                 ; $c0a4: a9 10
	sta $2006                ; $c0a6: 8d 06 20 PPUADDR
	lda #$00                 ; $c0a9: a9 00
	sta $2006                ; $c0ab: 8d 06 20 PPUADDR
	ldx #$10                 ; $c0ae: a2 10
	sta $2007                ; $c0b0: 8d 07 20 PPUDATA
	dex                      ; $c0b3: ca
	bne $c0b0                ; $c0b4: d0 fa
loc_c0b6:
	lda #$90                 ; $c0b6: a9 90
	sta $0505                ; $c0b8: 8d 05 05
	sta $2000                ; $c0bb: 8d 00 20 PPUCTRL
	jsr $c569                ; $c0be: 20 69 c5
loc_c0c1:
	jsr $c543                ; $c0c1: 20 43 c5
loc_c0c4:
	jsr $ff74                ; $c0c4: 20 74 ff
loc_c0c7:
	lda #$18                 ; $c0c7: a9 18
	sta $0506                ; $c0c9: 8d 06 05
	sta $2001                ; $c0cc: 8d 01 20 PPUMASK
	jmp $c968                ; $c0cf: 4c 68 c9

; === Block $c0f4-$c115 (Code) ===
entry_c0f4:
	*isc $8dff,x             ; $c0f4: ff ff 8d
	*isc $8dff,x             ; $c0f7: ff ff 8d
	*isc $a9ff,x             ; $c0fa: ff ff a9
	ora ($8d,x)              ; $c0fd: 01 8d
	*isc $4cff,x             ; $c0ff: ff ff 4c
	ora ($c1,x)              ; $c102: 01 c1
	inc $ffdf                ; $c104: ee df ff
	lda $0500                ; $c107: ad 00 05
	jsr $c118                ; $c10a: 20 18 c1
loc_c10d:
	lda $0501                ; $c10d: ad 01 05
	jsr $c12f                ; $c110: 20 2f c1
loc_c113:
	lda #$00                 ; $c113: a9 00
	jmp $c146                ; $c115: 4c 46 c1

; === Block $c108-$c108 (Code) ===
entry_c108:
	brk                      ; $c108: 00

; === Block $c118-$c11f (Code) ===
loc_c118:
	sta $0500                ; $c118: 8d 00 05
	sta $9fff                ; $c11b: 8d ff 9f
	lsr                      ; $c11e: 4a

; === Block $c11f-$c12e (Code) ===
entry_c11f:
	sta $9fff                ; $c11f: 8d ff 9f
	lsr                      ; $c122: 4a
	sta $9fff                ; $c123: 8d ff 9f
	lsr                      ; $c126: 4a
	sta $9fff                ; $c127: 8d ff 9f
	lsr                      ; $c12a: 4a
	sta $9fff                ; $c12b: 8d ff 9f
	rts                      ; $c12e: 60

; === Block $c12f-$c145 (Code) ===
loc_c12f:
	sta $0501                ; $c12f: 8d 01 05
	sta $bfff                ; $c132: 8d ff bf
	lsr                      ; $c135: 4a
	sta $bfff                ; $c136: 8d ff bf
	lsr                      ; $c139: 4a
	sta $bfff                ; $c13a: 8d ff bf
	lsr                      ; $c13d: 4a
	sta $bfff                ; $c13e: 8d ff bf
	lsr                      ; $c141: 4a
	sta $bfff                ; $c142: 8d ff bf
	rts                      ; $c145: 60

; === Block $c146-$c159 (Code) ===
loc_c146:
	sta $dfff                ; $c146: 8d ff df
	lsr                      ; $c149: 4a
	sta $dfff                ; $c14a: 8d ff df
	lsr                      ; $c14d: 4a
	sta $dfff                ; $c14e: 8d ff df
	lsr                      ; $c151: 4a
	sta $dfff                ; $c152: 8d ff df
	lsr                      ; $c155: 4a
	sta $dfff                ; $c156: 8d ff df
	rts                      ; $c159: 60

; === Block $c212-$c218 (Code) ===
entry_c212:
	asl $68                  ; $c212: 06 68
	tay                      ; $c214: a8
	pla                      ; $c215: 68
	tax                      ; $c216: aa
	pla                      ; $c217: 68
	rti                      ; $c218: 40

; === Block $c276-$c296 (Code) ===
loc_c276:
	lda $0506                ; $c276: ad 06 05
	and #$08                 ; $c279: 29 08
	beq $c296                ; $c27b: f0 19
loc_c27d:
	lda #$3f                 ; $c27d: a9 3f
	sta $2006                ; $c27f: 8d 06 20 PPUADDR
	lda #$00                 ; $c282: a9 00
	sta $2006                ; $c284: 8d 06 20 PPUADDR
	sta $050a                ; $c287: 8d 0a 05
	lda $05fc                ; $c28a: ad fc 05
	sta $2007                ; $c28d: 8d 07 20 PPUDATA
	lda $1f                  ; $c290: a5 1f
	and #$df                 ; $c292: 29 df
	sta $1f                  ; $c294: 85 1f
loc_c296:
	rts                      ; $c296: 60

; === Block $c299-$c2da (Code) ===
loc_c299:
	lda $0300,x              ; $c299: bd 00 03
	sta $2006                ; $c29c: 8d 06 20 PPUADDR
	lda $0301,x              ; $c29f: bd 01 03
	sta $2006                ; $c2a2: 8d 06 20 PPUADDR
	pha                      ; $c2a5: 48
	lda $0302,x              ; $c2a6: bd 02 03
	sta $2007                ; $c2a9: 8d 07 20 PPUDATA
	lda $0303,x              ; $c2ac: bd 03 03
	sta $2007                ; $c2af: 8d 07 20 PPUDATA
	lda $0300,x              ; $c2b2: bd 00 03
	sta $2006                ; $c2b5: 8d 06 20 PPUADDR
	pla                      ; $c2b8: 68
	clc                      ; $c2b9: 18
	adc #$20                 ; $c2ba: 69 20
	sta $2006                ; $c2bc: 8d 06 20 PPUADDR
	lda $0304,x              ; $c2bf: bd 04 03
	sta $2007                ; $c2c2: 8d 07 20 PPUDATA
	lda $0305,x              ; $c2c5: bd 05 03
	sta $2007                ; $c2c8: 8d 07 20 PPUDATA
	lda $0306,x              ; $c2cb: bd 06 03
	sta $2006                ; $c2ce: 8d 06 20 PPUADDR
	lda $0307,x              ; $c2d1: bd 07 03
	sta $2006                ; $c2d4: 8d 06 20 PPUADDR
	lda $0308,x              ; $c2d7: bd 08 03

; === Block $c2da-$c2e7 (Code) ===
entry_c2da:
	sta $2007                ; $c2da: 8d 07 20 PPUDATA
	txa                      ; $c2dd: 8a
	clc                      ; $c2de: 18
	adc #$09                 ; $c2df: 69 09
	tax                      ; $c2e1: aa
	dec $050b                ; $c2e2: ce 0b 05
	bne $c299                ; $c2e5: d0 b2
loc_c2e7:
	jmp $c276                ; $c2e7: 4c 76 c2

; === Block $c2f3-$c302 (Code) ===
entry_c2f3:
	sta $2001                ; $c2f3: 8d 01 20 PPUMASK
	lda $0508                ; $c2f6: ad 08 05
	sta $2005                ; $c2f9: 8d 05 20 PPUSCROLL
	lda $0509                ; $c2fc: ad 09 05
	sta $2005                ; $c2ff: 8d 05 20 PPUSCROLL
	rts                      ; $c302: 60

; === Block $c38b-$c3aa (Code) ===
loc_c38b:
	sta $20                  ; $c38b: 85 20
	stx $21                  ; $c38d: 86 21
	lda $0507                ; $c38f: ad 07 05
	pha                      ; $c392: 48
	php                      ; $c393: 08
	lda $0507                ; $c394: ad 07 05
	sta $0517                ; $c397: 8d 17 05
	jsr $c3ba                ; $c39a: 20 ba c3
loc_c39d:
	lda #$4c                 ; $c39d: a9 4c
	sta $23                  ; $c39f: 85 23
	ldx $21                  ; $c3a1: a6 21
	lda $20                  ; $c3a3: a5 20
	plp                      ; $c3a5: 28
	jsr $0023                ; $c3a6: 20 23 00
loc_c3a9:
	php                      ; $c3a9: 08

; === Block $c3aa-$c3b8 (Code) ===
entry_c3aa:
	sta $20                  ; $c3aa: 85 20
	pla                      ; $c3ac: 68
	sta $23                  ; $c3ad: 85 23
	pla                      ; $c3af: 68
	jsr $ff91                ; $c3b0: 20 91 ff
loc_c3b3:
	lda $23                  ; $c3b3: a5 23
	pha                      ; $c3b5: 48
	lda $20                  ; $c3b6: a5 20

; === Block $c3ba-$c3c1 (Code) ===
loc_c3ba:
	lda $23                  ; $c3ba: a5 23
	jsr $ff91                ; $c3bc: 20 91 ff
loc_c3bf:
	lda $24                  ; $c3bf: a5 24

; === Block $c3be-$c3cd (Code) ===
entry_c3be:
	*isc $24a5,x             ; $c3be: ff a5 24 PPUSCROLL
	asl                      ; $c3c1: 0a
	tax                      ; $c3c2: aa
	lda $8000,x              ; $c3c3: bd 00 80
	sta $24                  ; $c3c6: 85 24
	lda $8001,x              ; $c3c8: bd 01 80
	sta $25                  ; $c3cb: 85 25
	rts                      ; $c3cd: 60

; === Block $c3ce-$c3da (Code) ===
loc_c3ce:
	sta $20                  ; $c3ce: 85 20
	stx $21                  ; $c3d0: 86 21
	lda $0507                ; $c3d2: ad 07 05
	pha                      ; $c3d5: 48
	jsr $c3ba                ; $c3d6: 20 ba c3
loc_c3d9:
	pla                      ; $c3d9: 68

; === Block $c3da-$c3e9 (Code) ===
entry_c3da:
	jsr $ff91                ; $c3da: 20 91 ff
loc_c3dd:
	ldx $21                  ; $c3dd: a6 21
	lda $24                  ; $c3df: a5 24
	sta $00,x                ; $c3e1: 95 00
	lda $25                  ; $c3e3: a5 25
	sta $01,x                ; $c3e5: 95 01
	lda $20                  ; $c3e7: a5 20
	rts                      ; $c3e9: 60

; === Block $c3ea-$c407 (Code) ===
loc_c3ea:
	sta $20                  ; $c3ea: 85 20
	lda $0507                ; $c3ec: ad 07 05
	pha                      ; $c3ef: 48
	lda $20                  ; $c3f0: a5 20
	jsr $ff91                ; $c3f2: 20 91 ff
loc_c3f5:
	lda $00,x                ; $c3f5: b5 00
	sta $23                  ; $c3f7: 85 23
	lda $01,x                ; $c3f9: b5 01
	sta $24                  ; $c3fb: 85 24
	lda ($23),y              ; $c3fd: b1 23
	sta $20                  ; $c3ff: 85 20
	pla                      ; $c401: 68
	jsr $ff91                ; $c402: 20 91 ff
loc_c405:
	lda $20                  ; $c405: a5 20
	rts                      ; $c407: 60

; === Block $c3f8-$c403 (Code) ===
entry_c3f8:
	*rla ($b5,x)             ; $c3f8: 23 b5
	ora ($85,x)              ; $c3fa: 01 85
	bit $b1                  ; $c3fc: 24 b1
	*rla ($85,x)             ; $c3fe: 23 85
	jsr $2068                ; $c400: 20 68 20 PPUCTRL

; === Block $c408-$c44e (Code) ===
entry_c408:
	sei                      ; $c408: 78
	php                      ; $c409: 08
	bit $4015                ; $c40a: 2c 15 40 SND_CHN
	sta $20                  ; $c40d: 85 20
	stx $21                  ; $c40f: 86 21
	sty $22                  ; $c411: 84 22
	tsx                      ; $c413: ba
	lda $0103,x              ; $c414: bd 03 01
	sec                      ; $c417: 38
	sbc #$01                 ; $c418: e9 01
	sta $26                  ; $c41a: 85 26
	lda $0104,x              ; $c41c: bd 04 01
	sbc #$00                 ; $c41f: e9 00
	sta $27                  ; $c421: 85 27
	ldy #$01                 ; $c423: a0 01
	lda ($26),y              ; $c425: b1 26
	pha                      ; $c427: 48
	and #$0f                 ; $c428: 29 0f
	cmp #$0b                 ; $c42a: c9 0b
	beq $c463                ; $c42c: f0 35
loc_c42e:
	cmp #$03                 ; $c42e: c9 03
	beq $c460                ; $c430: f0 2e
loc_c432:
	pla                      ; $c432: 68
	pha                      ; $c433: 48
	and #$08                 ; $c434: 29 08
	cmp #$08                 ; $c436: c9 08
	pla                      ; $c438: 68
	ror                      ; $c439: 6a
	lsr                      ; $c43a: 4a
	lsr                      ; $c43b: 4a
	lsr                      ; $c43c: 4a
	sta $23                  ; $c43d: 85 23
	dey                      ; $c43f: 88
	lda ($26),y              ; $c440: b1 26
	bmi $c451                ; $c442: 30 0d
loc_c444:
	sta $24                  ; $c444: 85 24
	ldy $22                  ; $c446: a4 22
	ldx $21                  ; $c448: a6 21
	plp                      ; $c44a: 28
	pla                      ; $c44b: 68
	lda $20                  ; $c44c: a5 20
	jmp $c38b                ; $c44e: 4c 8b c3

; === Block $c451-$c45d (Code) ===
loc_c451:
	and #$3f                 ; $c451: 29 3f
	sta $24                  ; $c453: 85 24
	ldy $22                  ; $c455: a4 22
	ldx $21                  ; $c457: a6 21
	plp                      ; $c459: 28
	pla                      ; $c45a: 68
	lda $20                  ; $c45b: a5 20
	jmp $c3ce                ; $c45d: 4c ce c3

; === Block $c460-$c460 (Code) ===
loc_c460:
	jmp $c4f8                ; $c460: 4c f8 c4

; === Block $c463-$c481 (Code) ===
loc_c463:
	pla                      ; $c463: 68
	cmp #$cb                 ; $c464: c9 cb
	bcc $c484                ; $c466: 90 1c
loc_c468:
	cmp #$fb                 ; $c468: c9 fb
	bcc $c4a1                ; $c46a: 90 35
loc_c46c:
	lda #$19                 ; $c46c: a9 19
	sta $23                  ; $c46e: 85 23
	lda #$03                 ; $c470: a9 03
	sta $24                  ; $c472: 85 24
	dey                      ; $c474: 88
	lda ($26),y              ; $c475: b1 26
	sta $20                  ; $c477: 85 20
	ldy $22                  ; $c479: a4 22
	ldx $21                  ; $c47b: a6 21
	plp                      ; $c47d: 28
	pla                      ; $c47e: 68
	lda $20                  ; $c47f: a5 20
	jmp $c38b                ; $c481: 4c 8b c3

; === Block $c484-$c49e (Code) ===
loc_c484:
	pha                      ; $c484: 48
	lda #$16                 ; $c485: a9 16
	sta $23                  ; $c487: 85 23
	lda #$04                 ; $c489: a9 04
	sta $24                  ; $c48b: 85 24
	dey                      ; $c48d: 88
	pla                      ; $c48e: 68
	lsr                      ; $c48f: 4a
	lsr                      ; $c490: 4a
	lsr                      ; $c491: 4a
	lsr                      ; $c492: 4a
	tax                      ; $c493: aa
	lda ($26),y              ; $c494: b1 26
	sta $20                  ; $c496: 85 20
	ldy $22                  ; $c498: a4 22
	plp                      ; $c49a: 28
	pla                      ; $c49b: 68
	lda $20                  ; $c49c: a5 20
	jmp $c38b                ; $c49e: 4c 8b c3

; === Block $c4a1-$c4c9 (Code) ===
loc_c4a1:
	plp                      ; $c4a1: 28
	pha                      ; $c4a2: 48
	tsx                      ; $c4a3: ba
	inc $0103,x              ; $c4a4: fe 03 01
	bne $c4ac                ; $c4a7: d0 03
loc_c4a9:
	inc $0104,x              ; $c4a9: fe 04 01
loc_c4ac:
	pla                      ; $c4ac: 68
	plp                      ; $c4ad: 28
	cmp #$cb                 ; $c4ae: c9 cb
	beq $c4ca                ; $c4b0: f0 18
loc_c4b2:
	cmp #$db                 ; $c4b2: c9 db
	beq $c4e1                ; $c4b4: f0 2b
loc_c4b6:
	dey                      ; $c4b6: 88
	lda ($26),y              ; $c4b7: b1 26
	tax                      ; $c4b9: aa
	iny                      ; $c4ba: c8
	iny                      ; $c4bb: c8
	lda $627b,x              ; $c4bc: bd 7b 62
	and ($26),y              ; $c4bf: 31 26
	php                      ; $c4c1: 08
	ldx $21                  ; $c4c2: a6 21
	ldy $22                  ; $c4c4: a4 22
	lda $20                  ; $c4c6: a5 20
	plp                      ; $c4c8: 28
	rts                      ; $c4c9: 60

; === Block $c4ca-$c4e0 (Code) ===
loc_c4ca:
	dey                      ; $c4ca: 88
	lda ($26),y              ; $c4cb: b1 26
	tax                      ; $c4cd: aa
	iny                      ; $c4ce: c8
	iny                      ; $c4cf: c8
	lda $627b,x              ; $c4d0: bd 7b 62
	ora ($26),y              ; $c4d3: 11 26
	sta $627b,x              ; $c4d5: 9d 7b 62
	php                      ; $c4d8: 08
	ldx $21                  ; $c4d9: a6 21
	ldy $22                  ; $c4db: a4 22
	lda $20                  ; $c4dd: a5 20
	plp                      ; $c4df: 28
	rts                      ; $c4e0: 60

; === Block $c4e1-$c4f7 (Code) ===
loc_c4e1:
	dey                      ; $c4e1: 88
	lda ($26),y              ; $c4e2: b1 26
	tax                      ; $c4e4: aa
	iny                      ; $c4e5: c8
	iny                      ; $c4e6: c8
	lda $627b,x              ; $c4e7: bd 7b 62
	and ($26),y              ; $c4ea: 31 26
	sta $627b,x              ; $c4ec: 9d 7b 62
	php                      ; $c4ef: 08
	ldx $21                  ; $c4f0: a6 21
	ldy $22                  ; $c4f2: a4 22
	lda $20                  ; $c4f4: a5 20
	plp                      ; $c4f6: 28
	rts                      ; $c4f7: 60

; === Block $c4f8-$c512 (Code) ===
loc_c4f8:
	iny                      ; $c4f8: c8
	lda ($26),y              ; $c4f9: b1 26
	sta $78                  ; $c4fb: 85 78
	dey                      ; $c4fd: 88
	dey                      ; $c4fe: 88
	lda ($26),y              ; $c4ff: b1 26
	sta $76                  ; $c501: 85 76
	pla                      ; $c503: 68
	sta $77                  ; $c504: 85 77
	and #$f0                 ; $c506: 29 f0
	lsr                      ; $c508: 4a
	lsr                      ; $c509: 4a
	lsr                      ; $c50a: 4a
	lsr                      ; $c50b: 4a
	cmp #$0a                 ; $c50c: c9 0a
	bcc $c516                ; $c50e: 90 06
loc_c510:
	cmp #$0d                 ; $c510: c9 0d

; === Block $c516-$c524 (Code) ===
loc_c516:
	sta $24                  ; $c516: 85 24
	lda #$10                 ; $c518: a9 10
	sta $23                  ; $c51a: 85 23
	ldy $22                  ; $c51c: a4 22
	ldx $21                  ; $c51e: a6 21
	plp                      ; $c520: 28
	pla                      ; $c521: 68
	lda $20                  ; $c522: a5 20
	jmp $c38b                ; $c524: 4c 8b c3

; === Block $c52f-$c533 (Code) ===
loc_c52f:
	lda #$00                 ; $c52f: a9 00
	sta $1f                  ; $c531: 85 1f

; === Block $c533-$c542 (Code) ===
entry_c533:
	sta $050a                ; $c533: 8d 0a 05
	sta $050b                ; $c536: 8d 0b 05
	sta $0508                ; $c539: 8d 08 05
	sta $0509                ; $c53c: 8d 09 05
	sta $0513                ; $c53f: 8d 13 05
	rts                      ; $c542: 60

; === Block $c53e-$c542 (Code) ===
entry_c53e:
	ora $8d                  ; $c53e: 05 8d
	*slo ($05),y             ; $c540: 13 05

; === Block $c543-$c54d (Code) ===
loc_c543:
	lda #$f7                 ; $c543: a9 f7
	ldx #$00                 ; $c545: a2 00
	sta $0200,x              ; $c547: 9d 00 02
	inx                      ; $c54a: e8
	bne $c547                ; $c54b: d0 fa
loc_c54d:
	rts                      ; $c54d: 60

; === Block $c559-$c566 (Code) ===
entry_c559:
	and #$7f                 ; $c559: 29 7f
	sta $1f                  ; $c55b: 85 1f
	lda $1f                  ; $c55d: a5 1f
	and #$bf                 ; $c55f: 29 bf
	sta $1f                  ; $c561: 85 1f
	jsr $ff74                ; $c563: 20 74 ff
loc_c566:
	jmp $c592                ; $c566: 4c 92 c5

; === Block $c565-$c574 (Code) ===
entry_c565:
	*isc $924c,x             ; $c565: ff 4c 92
	cmp $20                  ; $c568: c5 20
	adc $c5,x                ; $c56a: 75 c5
	ldx #$7f                 ; $c56c: a2 7f
	sta $0400,x              ; $c56e: 9d 00 04
	dex                      ; $c571: ca
	bpl $c56e                ; $c572: 10 fa
loc_c574:
	rts                      ; $c574: 60

; === Block $c569-$c56c (Code) ===
loc_c569:
	jsr $c575                ; $c569: 20 75 c5

; === Block $c575-$c585 (Code) ===
loc_c575:
	lda $2002                ; $c575: ad 02 20 PPUSTATUS
	lda #$20                 ; $c578: a9 20
	sta $2006                ; $c57a: 8d 06 20 PPUADDR
	lda #$00                 ; $c57d: a9 00
	sta $2006                ; $c57f: 8d 06 20 PPUADDR
	ldx #$08                 ; $c582: a2 08
	tay                      ; $c584: a8

; === Block $c585-$c588 (Code) ===
loc_c585:
	sta $2007                ; $c585: 8d 07 20 PPUDATA

; === Block $c586-$c58e (Code) ===
entry_c586:
	*slo $20                 ; $c586: 07 20
	dey                      ; $c588: 88
	bne $c585                ; $c589: d0 fa
loc_c58b:
	dex                      ; $c58b: ca
	bne $c585                ; $c58c: d0 f7

; === Block $c592-$c5a4 (Code) ===
loc_c592:
	ldy #$18                 ; $c592: a0 18
	bne $c598                ; $c594: d0 02
loc_c596:
	ldy #$00                 ; $c596: a0 00
loc_c598:
	lda $2002                ; $c598: ad 02 20 PPUSTATUS
	lda $2002                ; $c59b: ad 02 20 PPUSTATUS
	bpl $c59b                ; $c59e: 10 fb
loc_c5a0:
	tya                      ; $c5a0: 98
	sta $2001                ; $c5a1: 8d 01 20 PPUMASK

; === Block $c59f-$c5a7 (Code) ===
entry_c59f:
	*isc $8d98,y             ; $c59f: fb 98 8d
	ora ($20,x)              ; $c5a2: 01 20
	sta $0506                ; $c5a4: 8d 06 05
	rts                      ; $c5a7: 60

; === Block $c5a9-$c5ae (Code) ===
entry_c5a9:
	*slo $7f29,x             ; $c5a9: 1f 29 7f
	sta $1f                  ; $c5ac: 85 1f
	rts                      ; $c5ae: 60

; === Block $c5b5-$c5dd (Code) ===
entry_c5b5:
	*nop #$85                ; $c5b5: 80 85
	*slo $a960,x             ; $c5b7: 1f 60 a9
	brk                      ; $c5ba: 00 Bank call: bank 22, Bank22_Func85
	.byte $85                ; $c5bb: 85 Function index
	.byte $16                ; $c5bc: 16 Target bank
	beq $c5de                ; $c5bd: f0 1f
loc_c5bf:
	lda #$40                 ; $c5bf: a9 40
	ldx #$f0                 ; $c5c1: a2 f0
	bne $c5c8                ; $c5c3: d0 03
loc_c5c5:
	lda #$10                 ; $c5c5: a9 10
	tax                      ; $c5c7: aa
loc_c5c8:
	stx $17                  ; $c5c8: 86 17
	sta $16                  ; $c5ca: 85 16
	jsr $c5de                ; $c5cc: 20 de c5
loc_c5cf:
	ldx #$03                 ; $c5cf: a2 03
	jsr $c90c                ; $c5d1: 20 0c c9
loc_c5d4:
	lda $16                  ; $c5d4: a5 16
	clc                      ; $c5d6: 18
	adc $17                  ; $c5d7: 65 17
	cmp #$50                 ; $c5d9: c9 50
	bcc $c5ca                ; $c5db: 90 ed
loc_c5dd:
	rts                      ; $c5dd: 60

; === Block $c5ce-$c5d7 (Code) ===
entry_c5ce:
	cmp $a2                  ; $c5ce: c5 a2
	*slo ($20,x)             ; $c5d0: 03 20
	*nop $a5c9               ; $c5d2: 0c c9 a5
	asl $18,x                ; $c5d5: 16 18

; === Block $c5de-$c61d (Code) ===
loc_c5de:
	ldy #$00                 ; $c5de: a0 00
	lda #$bf                 ; $c5e0: a9 bf
	sta $0300,y              ; $c5e2: 99 00 03
	iny                      ; $c5e5: c8
	lda #$20                 ; $c5e6: a9 20
	sta $0300,y              ; $c5e8: 99 00 03
	iny                      ; $c5eb: c8
	lda #$00                 ; $c5ec: a9 00
	sta $0300,y              ; $c5ee: 99 00 03
	iny                      ; $c5f1: c8
	sty $050a                ; $c5f2: 8c 0a 05
	sta $18                  ; $c5f5: 85 18
	tax                      ; $c5f7: aa
loc_c5f8:
	lda $18                  ; $c5f8: a5 18
	ldy $05fc                ; $c5fa: ac fc 05
	and #$03                 ; $c5fd: 29 03
	beq $c605                ; $c5ff: f0 04
loc_c601:
	ldy $05fd,x              ; $c601: bc fd 05
	inx                      ; $c604: e8
loc_c605:
	tya                      ; $c605: 98
	sec                      ; $c606: 38
	sbc $16                  ; $c607: e5 16
	cmp #$40                 ; $c609: c9 40
	bcc $c610                ; $c60b: 90 03
loc_c60d:
	lda $05fc                ; $c60d: ad fc 05
loc_c610:
	ldy $050a                ; $c610: ac 0a 05
	sta $0300,y              ; $c613: 99 00 03
	inc $18                  ; $c616: e6 18
	inc $050a                ; $c618: ee 0a 05
	lda $18                  ; $c61b: a5 18

; === Block $c61d-$c62c (Code) ===
entry_c61d:
	cmp #$20                 ; $c61d: c9 20
	bcc $c5f8                ; $c61f: 90 d7
loc_c621:
	lda #$01                 ; $c621: a9 01
	sta $050b                ; $c623: 8d 0b 05
	lda $1f                  ; $c626: a5 1f
	ora #$20                 ; $c628: 09 20
	sta $1f                  ; $c62a: 85 1f
	rts                      ; $c62c: 60

; === Block $c62d-$c633 (Code) ===
loc_c62d:
	lda $1f                  ; $c62d: a5 1f
	ora #$20                 ; $c62f: 09 20
	sta $1f                  ; $c631: 85 1f
	jmp $ff74                ; $c633: 4c 74 ff

; === Block $c636-$c657 (Code) ===
loc_c636:
	ldx $050a                ; $c636: ae 0a 05
	lda $1c                  ; $c639: a5 1c
	and #$3f                 ; $c63b: 29 3f
	sta $0300,x              ; $c63d: 9d 00 03
	inx                      ; $c640: e8
	lda $1d                  ; $c641: a5 1d
	sta $0300,x              ; $c643: 9d 00 03
	inx                      ; $c646: e8
	lda $1e                  ; $c647: a5 1e
	sta $0300,x              ; $c649: 9d 00 03
	inx                      ; $c64c: e8
	stx $050a                ; $c64d: 8e 0a 05
	inc $050b                ; $c650: ee 0b 05
	inc $1d                  ; $c653: e6 1d
	bne $c659                ; $c655: d0 02

; === Block $c64a-$c64a (Code) ===
entry_c64a:
	brk                      ; $c64a: 00

; === Block $c652-$c659 (Code) ===
entry_c652:
	ora $e6                  ; $c652: 05 e6
	ora $02d0,x              ; $c654: 1d d0 02
	inc $1c                  ; $c657: e6 1c
	rts                      ; $c659: 60

; === Block $c6af-$c6be (Code) ===
entry_c6af:
	ora $c0c9,x              ; $c6af: 1d c9 c0
	bcc $c6be                ; $c6b2: 90 0a
loc_c6b4:
	sbc #$c0                 ; $c6b4: e9 c0
	sta $1d                  ; $c6b6: 85 1d
	lda $1c                  ; $c6b8: a5 1c
	and #$3c                 ; $c6ba: 29 3c
	sta $1c                  ; $c6bc: 85 1c
loc_c6be:
	rts                      ; $c6be: 60

; === Block $c6c3-$c6e2 (Code) ===
loc_c6c3:
	lda $1d                  ; $c6c3: a5 1d
	lsr                      ; $c6c5: 4a
	pha                      ; $c6c6: 48
	and #$01                 ; $c6c7: 29 01
	sta $0b                  ; $c6c9: 85 0b
	pla                      ; $c6cb: 68
	lsr                      ; $c6cc: 4a
	lsr                      ; $c6cd: 4a
	lsr                      ; $c6ce: 4a
	lsr                      ; $c6cf: 4a
	and #$02                 ; $c6d0: 29 02
	ora $0b                  ; $c6d2: 05 0b
	tax                      ; $c6d4: aa
	inx                      ; $c6d5: e8
	lda #$fc                 ; $c6d6: a9 fc
	dex                      ; $c6d8: ca
	beq $c6e5                ; $c6d9: f0 0a
loc_c6db:
	sec                      ; $c6db: 38
	rol                      ; $c6dc: 2a
	rol                      ; $c6dd: 2a
	asl $0d                  ; $c6de: 06 0d
	asl $0d                  ; $c6e0: 06 0d
	jmp $c6d8                ; $c6e2: 4c d8 c6

; === Block $c6e5-$c726 (Code) ===
loc_c6e5:
	sta $0b                  ; $c6e5: 85 0b
	lda $1c                  ; $c6e7: a5 1c
	and #$04                 ; $c6e9: 29 04
	sta $0c                  ; $c6eb: 85 0c
	ora #$23                 ; $c6ed: 09 23
	sta $0e                  ; $c6ef: 85 0e
	lsr $1c                  ; $c6f1: 46 1c
	ror $1d                  ; $c6f3: 66 1d
	lsr $1c                  ; $c6f5: 46 1c
	ror $1d                  ; $c6f7: 66 1d
	lda $1d                  ; $c6f9: a5 1d
	and #$07                 ; $c6fb: 29 07
	sta $0f                  ; $c6fd: 85 0f
	lsr $1d                  ; $c6ff: 46 1d
	lsr $1d                  ; $c701: 46 1d
	lda $1d                  ; $c703: a5 1d
	and #$38                 ; $c705: 29 38
	ora #$c0                 ; $c707: 09 c0
	ora $0f                  ; $c709: 05 0f
	sta $0f                  ; $c70b: 85 0f
	asl $0c                  ; $c70d: 06 0c
	asl $0c                  ; $c70f: 06 0c
	asl $0c                  ; $c711: 06 0c
	asl $0c                  ; $c713: 06 0c
	lda $0f                  ; $c715: a5 0f
	and #$3f                 ; $c717: 29 3f
	ora $0c                  ; $c719: 05 0c
	tax                      ; $c71b: aa
	lda $0400,x              ; $c71c: bd 00 04
	and $0b                  ; $c71f: 25 0b
	ora $0d                  ; $c721: 05 0d
	sta $0400,x              ; $c723: 9d 00 04
	rts                      ; $c726: 60

; === Block $c72e-$c73b (Code) ===
entry_c72e:
	jsr $c6c3                ; $c72e: 20 c3 c6
loc_c731:
	sta $1e                  ; $c731: 85 1e
	lda $0e                  ; $c733: a5 0e
	sta $1c                  ; $c735: 85 1c
	lda $0f                  ; $c737: a5 0f
	sta $1d                  ; $c739: 85 1d
	jmp $c636                ; $c73b: 4c 36 c6

; === Block $c746-$c746 (Code) ===
loc_c746:
	brk                      ; $c746: 00

; === Block $c757-$c75d (Code) ===
loc_c757:
	inx                      ; $c757: e8
	inx                      ; $c758: e8
	inx                      ; $c759: e8
	inx                      ; $c75a: e8
	pla                      ; $c75b: 68
	tay                      ; $c75c: a8
	rts                      ; $c75d: 60

; === Block $c77c-$c789 (Code) ===
entry_c77c:
	*jam                     ; $c77c: 02
	sta $01,x                ; $c77d: 95 01
	lda $0202,y              ; $c77f: b9 02 02
	sta $02,x                ; $c782: 95 02
	lda $0203,y              ; $c784: b9 03 02
	sta $03,x                ; $c787: 95 03
	jmp $c757                ; $c789: 4c 57 c7

; === Block $c78c-$c7cd (Code) ===
loc_c78c:
	tay                      ; $c78c: a8
	txa                      ; $c78d: 8a
	pha                      ; $c78e: 48
	tya                      ; $c78f: 98
	ldy #$00                 ; $c790: a0 00
	sty $16                  ; $c792: 84 16
	ldy #$05                 ; $c794: a0 05
	dey                      ; $c796: 88
	bmi $c7cd                ; $c797: 30 34
loc_c799:
	cmp $c7dc,y              ; $c799: d9 dc c7
	bcc $c796                ; $c79c: 90 f8
loc_c79e:
	pha                      ; $c79e: 48
	tya                      ; $c79f: 98
	sec                      ; $c7a0: 38
	rol                      ; $c7a1: 2a
	sec                      ; $c7a2: 38
	sbc $0513                ; $c7a3: ed 13 05
	bpl $c7ab                ; $c7a6: 10 03
loc_c7a8:
	clc                      ; $c7a8: 18
	adc #$0a                 ; $c7a9: 69 0a
loc_c7ab:
	lsr                      ; $c7ab: 4a
	bcs $c7b3                ; $c7ac: b0 05
loc_c7ae:
	eor #$7f                 ; $c7ae: 49 7f
	clc                      ; $c7b0: 18
	adc #$85                 ; $c7b1: 69 85
loc_c7b3:
	sta $16                  ; $c7b3: 85 16
	asl                      ; $c7b5: 0a
	clc                      ; $c7b6: 18
	adc $16                  ; $c7b7: 65 16
	asl                      ; $c7b9: 0a
	asl                      ; $c7ba: 0a
	asl                      ; $c7bb: 0a
	asl                      ; $c7bc: 0a
	clc                      ; $c7bd: 18
	adc #$10                 ; $c7be: 69 10
	sta $16                  ; $c7c0: 85 16
	pla                      ; $c7c2: 68
	sec                      ; $c7c3: 38
	sbc #$04                 ; $c7c4: e9 04
	sec                      ; $c7c6: 38
	sbc #$0c                 ; $c7c7: e9 0c
	bcs $c7c6                ; $c7c9: b0 fb
loc_c7cb:
	adc #$0c                 ; $c7cb: 69 0c

; === Block $c7bf-$c7c3 (Code) ===
loc_c7bf:
	bpl $c746                ; $c7bf: 10 85
loc_c7c1:
	asl $68,x                ; $c7c1: 16 68

; === Block $c803-$c806 (Code) ===
entry_c803:
	*jam                     ; $c803: 02
	dec $01,x                ; $c804: d6 01
	rts                      ; $c806: 60

; === Block $c80d-$c812 (Code) ===
entry_c80d:
	sec                      ; $c80d: 38
	adc $01,x                ; $c80e: 75 01
	sta $01,x                ; $c810: 95 01
	rts                      ; $c812: 60

; === Block $c813-$c81a (Code) ===
loc_c813:
	clc                      ; $c813: 18
	adc $00,x                ; $c814: 75 00
	sta $00,x                ; $c816: 95 00
	bcc $c81c                ; $c818: 90 02

; === Block $c817-$c81c (Code) ===
entry_c817:
	brk                      ; $c817: 00 Bank call: bank 2, Bank2_Func90
	.byte $90                ; $c818: 90 Function index
	.byte $02                ; $c819: 02 Target bank
	inc $01,x                ; $c81a: f6 01
	rts                      ; $c81c: 60

; === Block $c81d-$c826 (Code) ===
loc_c81d:
	jsr $c813                ; $c81d: 20 13 c8
loc_c820:
	tya                      ; $c820: 98
	clc                      ; $c821: 18
	adc $01,x                ; $c822: 75 01
	sta $01,x                ; $c824: 95 01
	rts                      ; $c826: 60

; === Block $c827-$c82f (Code) ===
loc_c827:
	sta $16                  ; $c827: 85 16
	lda #$00                 ; $c829: a9 00
	sta $17                  ; $c82b: 85 17
	sta $18                  ; $c82d: 85 18

; === Block $c82f-$c844 (Code) ===
loc_c82f:
	lsr $16                  ; $c82f: 46 16
	bcc $c840                ; $c831: 90 0d
loc_c833:
	lda $00,x                ; $c833: b5 00
	clc                      ; $c835: 18
	adc $17                  ; $c836: 65 17
	sta $17                  ; $c838: 85 17
	lda $01,x                ; $c83a: b5 01
	adc $18                  ; $c83c: 65 18
	sta $18                  ; $c83e: 85 18
loc_c840:
	asl $00,x                ; $c840: 16 00
	rol $01,x                ; $c842: 36 01

; === Block $c841-$c850 (Code) ===
entry_c841:
	brk                      ; $c841: 00 Bank call: bank 1, Bank1_Func36
	.byte $36                ; $c842: 36 Function index
	.byte $01                ; $c843: 01 Target bank
	lda $16                  ; $c844: a5 16
	bne $c82f                ; $c846: d0 e7
loc_c848:
	lda $17                  ; $c848: a5 17
	sta $00,x                ; $c84a: 95 00
	lda $18                  ; $c84c: a5 18
	sta $01,x                ; $c84e: 95 01
	rts                      ; $c850: 60

; === Block $c85f-$c878 (Code) ===
loc_c85f:
	asl $00,x                ; $c85f: 16 00
	rol $01,x                ; $c861: 36 01
	rol $16                  ; $c863: 26 16
	rol $17                  ; $c865: 26 17
	inc $00,x                ; $c867: f6 00
	lda $16                  ; $c869: a5 16
	sec                      ; $c86b: 38
	sbc $18                  ; $c86c: e5 18
	pha                      ; $c86e: 48
	lda $17                  ; $c86f: a5 17
	sbc $19                  ; $c871: e5 19
	bcs $c87b                ; $c873: b0 06
loc_c875:
	pla                      ; $c875: 68
	dec $00,x                ; $c876: d6 00

; === Block $c878-$c878 (Code) ===
entry_c878:
	jmp $c880                ; $c878: 4c 80 c8

; === Block $c87b-$c880 (Code) ===
loc_c87b:
	sta $17                  ; $c87b: 85 17
	pla                      ; $c87d: 68
	sta $16                  ; $c87e: 85 16

; === Block $c880-$c881 (Code) ===
loc_c880:
	dey                      ; $c880: 88

; === Block $c881-$c887 (Code) ===
entry_c881:
	bne $c85f                ; $c881: d0 dc
loc_c883:
	pla                      ; $c883: 68
	tay                      ; $c884: a8
	lda $16                  ; $c885: a5 16
	rts                      ; $c887: 60

; === Block $c89d-$c8a5 (Code) ===
entry_c89d:
	asl $20,x                ; $c89d: 16 20
	lda $eec8                ; $c89f: ad c8 ee
	ora $6805                ; $c8a2: 0d 05 68

; === Block $c8cc-$c8ce (Code) ===
loc_c8cc:
	ldx #$00                 ; $c8cc: a2 00

; === Block $c8ce-$c8df (Code) ===
loc_c8ce:
	txa                      ; $c8ce: 8a
	pha                      ; $c8cf: 48
	jsr $c8ec                ; $c8d0: 20 ec c8
loc_c8d3:
	jsr $ff74                ; $c8d3: 20 74 ff
loc_c8d6:
	pla                      ; $c8d6: 68
	tax                      ; $c8d7: aa
	inx                      ; $c8d8: e8
	cpx #$5a                 ; $c8d9: e0 5a
	beq $c8eb                ; $c8db: f0 0e
loc_c8dd:
	lda $14                  ; $c8dd: a5 14

; === Block $c8dc-$c8eb (Code) ===
entry_c8dc:
	asl $14a5                ; $c8dc: 0e a5 14
	bne $c8ce                ; $c8df: d0 ed
loc_c8e1:
	jsr $ff74                ; $c8e1: 20 74 ff
loc_c8e4:
	jsr $c8ec                ; $c8e4: 20 ec c8
loc_c8e7:
	lda $14                  ; $c8e7: a5 14
	beq $c8e1                ; $c8e9: f0 f6
loc_c8eb:
	rts                      ; $c8eb: 60

; === Block $c8e3-$c8e7 (Code) ===
entry_c8e3:
	*isc $ec20,x             ; $c8e3: ff 20 ec
	iny                      ; $c8e6: c8

; === Block $c8ec-$c903 (Code) ===
loc_c8ec:
	ldx #$00                 ; $c8ec: a2 00
	jsr $c8f3                ; $c8ee: 20 f3 c8
loc_c8f1:
	ldx #$01                 ; $c8f1: a2 01
loc_c8f3:
	lda #$01                 ; $c8f3: a9 01
	sta $4016                ; $c8f5: 8d 16 40 JOY1
	lda #$00                 ; $c8f8: a9 00
	sta $4016                ; $c8fa: 8d 16 40 JOY1
	ldy #$08                 ; $c8fd: a0 08
loc_c8ff:
	lda $4016,x              ; $c8ff: bd 16 40 JOY1
	lsr                      ; $c902: 4a

; === Block $c8fc-$c8fc (Code) ===
entry_c8fc:
	rti                      ; $c8fc: 40

; === Block $c903-$c90b (Code) ===
entry_c903:
	bcs $c906                ; $c903: b0 01
loc_c905:
	lsr                      ; $c905: 4a
loc_c906:
	ror $14,x                ; $c906: 76 14
	dey                      ; $c908: 88
	bne $c8ff                ; $c909: d0 f4
loc_c90b:
	rts                      ; $c90b: 60

; === Block $c90c-$c90f (Code) ===
loc_c90c:
	jsr $ff74                ; $c90c: 20 74 ff

; === Block $c90f-$c912 (Code) ===
entry_c90f:
	dex                      ; $c90f: ca
	bne $c90c                ; $c910: d0 fa
loc_c912:
	rts                      ; $c912: 60

; === Block $c913-$c91e (Code) ===
loc_c913:
	txa                      ; $c913: 8a
	pha                      ; $c914: 48
	tya                      ; $c915: 98
	pha                      ; $c916: 48
	jsr $c91f                ; $c917: 20 1f c9
loc_c91a:
	pla                      ; $c91a: 68
	tay                      ; $c91b: a8
	pla                      ; $c91c: 68
	tax                      ; $c91d: aa
	rts                      ; $c91e: 60

; === Block $c91f-$c93d (Code) ===
loc_c91f:
	lda $1f                  ; $c91f: a5 1f
	and #$c8                 ; $c921: 29 c8
	bne $c94a                ; $c923: d0 25
loc_c925:
	lda $0513                ; $c925: ad 13 05
	and #$01                 ; $c928: 29 01
	tax                      ; $c92a: aa
	lda $c94b,x              ; $c92b: bd 4b c9
	pha                      ; $c92e: 48
	lda $c94c,x              ; $c92f: bd 4c c9
	ldx #$40                 ; $c932: a2 40
	jsr $c94e                ; $c934: 20 4e c9
loc_c937:
	ldx #$10                 ; $c937: a2 10
	pla                      ; $c939: 68
	jsr $c94e                ; $c93a: 20 4e c9

; === Block $c93e-$c94a (Code) ===
entry_c93e:
	*slo ($05),y             ; $c93e: 13 05
	inx                      ; $c940: e8
	cpx #$0a                 ; $c941: e0 0a
	bcc $c947                ; $c943: 90 02
loc_c945:
	ldx #$00                 ; $c945: a2 00
loc_c947:
	stx $0513                ; $c947: 8e 13 05
	rts                      ; $c94a: 60

; === Block $c94e-$c967 (Code) ===
loc_c94e:
	tay                      ; $c94e: a8
	lda #$30                 ; $c94f: a9 30
	sta $10                  ; $c951: 85 10
	lda $0200,x              ; $c953: bd 00 02
	pha                      ; $c956: 48
	lda $0200,y              ; $c957: b9 00 02
	sta $0200,x              ; $c95a: 9d 00 02
	pla                      ; $c95d: 68
	sta $0200,y              ; $c95e: 99 00 02
	inx                      ; $c961: e8
	iny                      ; $c962: c8
	dec $10                  ; $c963: c6 10
	bne $c953                ; $c965: d0 ec
loc_c967:
	rts                      ; $c967: 60

; === Block $c968-$c96e (Code) ===
loc_c968:
	jsr $c983                ; $c968: 20 83 c9
loc_c96b:
	jsr $c52f                ; $c96b: 20 2f c5
loc_c96e:
	brk                      ; $c96e: 00

; === Block $c983-$c98e (Code) ===
loc_c983:
	ldx #$5d                 ; $c983: a2 5d
	lda $c98f,x              ; $c985: bd 8f c9
	sta $6cad,x              ; $c988: 9d ad 6c
	dex                      ; $c98b: ca
	bpl $c985                ; $c98c: 10 f7
loc_c98e:
	rts                      ; $c98e: 60

; === Block $c9dd-$c9ec (Code) ===
entry_c9dd:
	sta $bfff                ; $c9dd: 8d ff bf
	nop                      ; $c9e0: ea
	nop                      ; $c9e1: ea
	lda $07cc                ; $c9e2: ad cc 07
	jsr $ff91                ; $c9e5: 20 91 ff
loc_c9e8:
	lda $07ca                ; $c9e8: ad ca 07
	plp                      ; $c9eb: 28
	rts                      ; $c9ec: 60

; === Block $ca07-$ca16 (Code) ===
entry_ca07:
	*dcp $ae,x               ; $ca07: d7 ae
	*rla $2005               ; $ca09: 2f 05 20 PPUSCROLL
	*nop $20c9               ; $ca0c: 0c c9 20 PPUMASK
	*slo $ca,x               ; $ca0f: 17 ca
entry_ca11:
	jsr $d1e1                ; $ca11: 20 e1 d1
loc_ca14:
	inc $3c                  ; $ca14: e6 3c
	rts                      ; $ca16: 60

; === Block $ca31-$ca3c (Code) ===
entry_ca31:
	eor ($ca,x)              ; $ca31: 41 ca
	jsr $cb1e                ; $ca33: 20 1e cb
loc_ca36:
	jsr $cbf8                ; $ca36: 20 f8 cb
loc_ca39:
	jsr $cb71                ; $ca39: 20 71 cb
loc_ca3c:
	rts                      ; $ca3c: 60

; === Block $cafd-$cb0e (Code) ===
loc_cafd:
	lda $70e0,x              ; $cafd: bd e0 70
	and #$bf                 ; $cb00: 29 bf
	sta $70e0,x              ; $cb02: 9d e0 70
	lda $6be7,x              ; $cb05: bd e7 6b
	and #$20                 ; $cb08: 29 20
	asl                      ; $cb0a: 0a
	asl                      ; $cb0b: 0a
	eor #$80                 ; $cb0c: 49 80

; === Block $cb0e-$cb17 (Code) ===
entry_cb0e:
	ora $70e0,x              ; $cb0e: 1d e0 70
	sta $70e0,x              ; $cb11: 9d e0 70
	dex                      ; $cb14: ca
	bpl $cafd                ; $cb15: 10 e6
loc_cb17:
	jmp $d241                ; $cb17: 4c 41 d2

; === Block $cb1e-$cb32 (Code) ===
loc_cb1e:
	lda $0515                ; $cb1e: ad 15 05
	cmp #$02                 ; $cb21: c9 02
	bne $cb33                ; $cb23: d0 0e
loc_cb25:
	lda $0597                ; $cb25: ad 97 05
	beq $cb33                ; $cb28: f0 09
loc_cb2a:
	lda $14                  ; $cb2a: a5 14
	ora $0529                ; $cb2c: 0d 29 05
	lsr                      ; $cb2f: 4a
	bcc $cb33                ; $cb30: 90 01
loc_cb32:
	rts                      ; $cb32: 60

; === Block $cb33-$cb49 (Code) ===
loc_cb33:
	ldx $3d                  ; $cb33: a6 3d
	beq $cb4a                ; $cb35: f0 13
loc_cb37:
	dex                      ; $cb37: ca
	beq $cb64                ; $cb38: f0 2a
loc_cb3a:
	dex                      ; $cb3a: ca
	beq $cb57                ; $cb3b: f0 1a
loc_cb3d:
	jsr $cbca                ; $cb3d: 20 ca cb
loc_cb40:
	jsr $cbd6                ; $cb40: 20 d6 cb
loc_cb43:
	jsr $cbe4                ; $cb43: 20 e4 cb
loc_cb46:
	jsr $cbbe                ; $cb46: 20 be cb
loc_cb49:
	rts                      ; $cb49: 60

; === Block $cb4a-$cb56 (Code) ===
loc_cb4a:
	jsr $cbd6                ; $cb4a: 20 d6 cb
loc_cb4d:
	jsr $cbbe                ; $cb4d: 20 be cb
loc_cb50:
	jsr $cbca                ; $cb50: 20 ca cb
loc_cb53:
	jsr $cbe4                ; $cb53: 20 e4 cb
loc_cb56:
	rts                      ; $cb56: 60

; === Block $cb57-$cb63 (Code) ===
loc_cb57:
	jsr $cbe4                ; $cb57: 20 e4 cb
loc_cb5a:
	jsr $cbca                ; $cb5a: 20 ca cb
loc_cb5d:
	jsr $cbbe                ; $cb5d: 20 be cb
loc_cb60:
	jsr $cbd6                ; $cb60: 20 d6 cb

; === Block $cb61-$cb63 (Code) ===
entry_cb61:
	dec $cb,x                ; $cb61: d6 cb
	rts                      ; $cb63: 60

; === Block $cb64-$cb70 (Code) ===
loc_cb64:
	jsr $cbbe                ; $cb64: 20 be cb
loc_cb67:
	jsr $cbe4                ; $cb67: 20 e4 cb
loc_cb6a:
	jsr $cbd6                ; $cb6a: 20 d6 cb
loc_cb6d:
	jsr $cbca                ; $cb6d: 20 ca cb
loc_cb70:
	rts                      ; $cb70: 60

; === Block $cb71-$cb7b (Code) ===
loc_cb71:
	lda $0530                ; $cb71: ad 30 05
	bmi $cb97                ; $cb74: 30 21
loc_cb76:
	lda $0599                ; $cb76: ad 99 05
	and #$10                 ; $cb79: 29 10

; === Block $cb88-$cb8f (Code) ===
entry_cb88:
	bpl $cb97                ; $cb88: 10 0d
loc_cb8a:
	brk                      ; $cb8a: 00 Bank call: bank 31, Bank31_Func13
	.byte $13                ; $cb8b: 13 Function index
	.byte $1f                ; $cb8c: 1f Target bank
	bcc $cb93                ; $cb8d: 90 04
loc_cb8f:
	brk                      ; $cb8f: 00

; === Block $cb93-$cb93 (Code) ===
loc_cb93:
	brk                      ; $cb93: 00

; === Block $cb97-$cb97 (Code) ===
loc_cb97:
	rts                      ; $cb97: 60

; === Block $cba4-$cbb3 (Code) ===
entry_cba4:
	asl $40,x                ; $cba4: 16 40
	dex                      ; $cba6: ca
	stx $4016                ; $cba7: 8e 16 40 JOY1
	lda $4016                ; $cbaa: ad 16 40 JOY1
	ora $0529                ; $cbad: 0d 29 05
	sta $0529                ; $cbb0: 8d 29 05
	rts                      ; $cbb3: 60

; === Block $cbae-$cbb0 (Code) ===
entry_cbae:
	and #$05                 ; $cbae: 29 05

; === Block $cbba-$cbbd (Code) ===
entry_cbba:
	sta $0526                ; $cbba: 8d 26 05
	rts                      ; $cbbd: 60

; === Block $cbbe-$cbc7 (Code) ===
loc_cbbe:
	lda $14                  ; $cbbe: a5 14
	bpl $cbf7                ; $cbc0: 10 35
loc_cbc2:
	jsr $cd85                ; $cbc2: 20 85 cd
loc_cbc5:
	lda #$01                 ; $cbc5: a9 01
	jmp $cbef                ; $cbc7: 4c ef cb

; === Block $cbc6-$cbd3 (Code) ===
entry_cbc6:
	ora ($4c,x)              ; $cbc6: 01 4c
	*isc $24cb               ; $cbc8: ef cb 24 OAMADDR
	*nop $50,x               ; $cbcb: 14 50
	and #$20                 ; $cbcd: 29 20
	sta $cd                  ; $cbcf: 85 cd
	lda #$03                 ; $cbd1: a9 03
	jmp $cbef                ; $cbd3: 4c ef cb

; === Block $cbca-$cbd1 (Code) ===
loc_cbca:
	bit $14                  ; $cbca: 24 14
	bvc $cbf7                ; $cbcc: 50 29
loc_cbce:
	jsr $cd85                ; $cbce: 20 85 cd

; === Block $cbd4-$cbe1 (Code) ===
entry_cbd4:
	*isc $a5cb               ; $cbd4: ef cb a5
	*nop $29,x               ; $cbd7: 14 29
	bpl $cbcb                ; $cbd9: 10 f0
loc_cbdb:
	*slo $8520,y             ; $cbdb: 1b 20 85
	cmp $00a9                ; $cbde: cd a9 00
	jmp $cbef                ; $cbe1: 4c ef cb

; === Block $cbd6-$cbe1 (Code) ===
loc_cbd6:
	lda $14                  ; $cbd6: a5 14
	and #$10                 ; $cbd8: 29 10
	beq $cbf7                ; $cbda: f0 1b
loc_cbdc:
	jsr $cd85                ; $cbdc: 20 85 cd
loc_cbdf:
	lda #$00                 ; $cbdf: a9 00

; === Block $cbe4-$cbe8 (Code) ===
loc_cbe4:
	lda $14                  ; $cbe4: a5 14
	and #$20                 ; $cbe6: 29 20

; === Block $cbe8-$cbf4 (Code) ===
entry_cbe8:
	beq $cbf7                ; $cbe8: f0 0d
loc_cbea:
	jsr $cd85                ; $cbea: 20 85 cd
loc_cbed:
	lda #$02                 ; $cbed: a9 02
loc_cbef:
	sta $3d                  ; $cbef: 85 3d
	jsr $cc88                ; $cbf1: 20 88 cc
loc_cbf4:
	jmp $d0c4                ; $cbf4: 4c c4 d0

; === Block $cbf7-$cbf7 (Code) ===
loc_cbf7:
	rts                      ; $cbf7: 60

; === Block $cbf8-$cc22 (Code) ===
loc_cbf8:
	lda $0530                ; $cbf8: ad 30 05
	bmi $cc64                ; $cbfb: 30 67
loc_cbfd:
	lda $14                  ; $cbfd: a5 14
	ora $0529                ; $cbff: 0d 29 05
	and #$01                 ; $cc02: 29 01
	beq $cc63                ; $cc04: f0 5d
loc_cc06:
	asl $0529                ; $cc06: 0e 29 05
	lda $0515                ; $cc09: ad 15 05
	cmp #$02                 ; $cc0c: c9 02
	beq $cc33                ; $cc0e: f0 23
loc_cc10:
	lda $41                  ; $cc10: a5 41
	bmi $cc68                ; $cc12: 30 54
loc_cc14:
	lda $42                  ; $cc14: a5 42
	cmp $6197                ; $cc16: cd 97 61
	bne $cc68                ; $cc19: d0 4d
loc_cc1b:
	lda $43                  ; $cc1b: a5 43
	cmp $6198                ; $cc1d: cd 98 61
	bne $cc68                ; $cc20: d0 46
loc_cc22:
	brk                      ; $cc22: 00

; === Block $cc33-$cc42 (Code) ===
loc_cc33:
	ldx $6197                ; $cc33: ae 97 61
	ldy $6198                ; $cc36: ac 98 61
	jsr $d251                ; $cc39: 20 51 d2
loc_cc3c:
	tax                      ; $cc3c: aa
	lda $6f40,x              ; $cc3d: bd 40 6f
	bne $cc81                ; $cc40: d0 3f
loc_cc42:
	brk                      ; $cc42: 00

; === Block $cc63-$cc63 (Code) ===
loc_cc63:
	rts                      ; $cc63: 60

; === Block $cc64-$cc67 (Code) ===
loc_cc64:
	asl $0529                ; $cc64: 0e 29 05
	rts                      ; $cc67: 60

; === Block $cc68-$cc74 (Code) ===
loc_cc68:
	lda $0599                ; $cc68: ad 99 05
	and #$10                 ; $cc6b: 29 10
	bne $cc7d                ; $cc6d: d0 0e
loc_cc6f:
	lda $0539                ; $cc6f: ad 39 05
	bmi $cc7d                ; $cc72: 30 09
loc_cc74:
	brk                      ; $cc74: 00

; === Block $cc7d-$cc7d (Code) ===
loc_cc7d:
	brk                      ; $cc7d: 00

; === Block $cc81-$cc85 (Code) ===
loc_cc81:
	lda #$0b                 ; $cc81: a9 0b
	ldx #$03                 ; $cc83: a2 03
	jmp $d1ed                ; $cc85: 4c ed d1

; === Block $cc88-$cc8e (Code) ===
loc_cc88:
	jsr $cf91                ; $cc88: 20 91 cf
loc_cc8b:
	jsr $cc91                ; $cc8b: 20 91 cc
loc_cc8e:
	jmp $cdc9                ; $cc8e: 4c c9 cd

; === Block $cc91-$cce9 (Code) ===
loc_cc91:
	jsr $d16f                ; $cc91: 20 6f d1
loc_cc94:
	sta $43,x                ; $cc94: 95 43
	sta $6f80                ; $cc96: 8d 80 6f
	lda $52                  ; $cc99: a5 52
	sta $42,x                ; $cc9b: 95 42
	sta $6f60                ; $cc9d: 8d 60 6f
	lda $0515                ; $cca0: ad 15 05
	beq $cce9                ; $cca3: f0 44
loc_cca5:
	cpx #$00                 ; $cca5: e0 00
	bne $ccea                ; $cca7: d0 41
loc_cca9:
	and #$02                 ; $cca9: 29 02
	tax                      ; $ccab: aa
	lsr                      ; $ccac: 4a
	tay                      ; $ccad: a8
	lda $42                  ; $ccae: a5 42
	sta $6195,x              ; $ccb0: 9d 95 61
	sta $6f66,y              ; $ccb3: 99 66 6f
	lda $43                  ; $ccb6: a5 43
	sta $6196,x              ; $ccb8: 9d 96 61
	sta $6f86,y              ; $ccbb: 99 86 6f
	cpx #$00                 ; $ccbe: e0 00
	beq $ccd5                ; $ccc0: f0 13
loc_ccc2:
	lda $42                  ; $ccc2: a5 42
	sta $6f67,y              ; $ccc4: 99 67 6f
	sta $6f68,y              ; $ccc7: 99 68 6f
	lda $43                  ; $ccca: a5 43
	sta $6f88,y              ; $cccc: 99 88 6f
	sec                      ; $cccf: 38
	sbc #$01                 ; $ccd0: e9 01
	sta $6f87,y              ; $ccd2: 99 87 6f
loc_ccd5:
	jsr $cd78                ; $ccd5: 20 78 cd
loc_ccd8:
	cpx #$00                 ; $ccd8: e0 00
	beq $cd3b                ; $ccda: f0 5f
loc_ccdc:
	iny                      ; $ccdc: c8
	jsr $cd78                ; $ccdd: 20 78 cd
loc_cce0:
	iny                      ; $cce0: c8
	jsr $cd78                ; $cce1: 20 78 cd
loc_cce4:
	dey                      ; $cce4: 88
	dey                      ; $cce5: 88
	jsr $cd0f                ; $cce6: 20 0f cd
loc_cce9:
	rts                      ; $cce9: 60

; === Block $ccea-$cd0c (Code) ===
loc_ccea:
	lda $0534                ; $ccea: ad 34 05
	and #$1f                 ; $cced: 29 1f
	tax                      ; $ccef: aa
	lda $44                  ; $ccf0: a5 44
	sta $054e                ; $ccf2: 8d 4e 05
	sta $6f60,x              ; $ccf5: 9d 60 6f
	lda $45                  ; $ccf8: a5 45
	sta $054f                ; $ccfa: 8d 4f 05
	sta $6f80,x              ; $ccfd: 9d 80 6f
	lda $7000,x              ; $cd00: bd 00 70
	and #$fc                 ; $cd03: 29 fc
	ora $3d                  ; $cd05: 05 3d
	ora #$80                 ; $cd07: 09 80
	sta $7000,x              ; $cd09: 9d 00 70
	jmp $d7fc                ; $cd0c: 4c fc d7

; === Block $cd0f-$cd3b (Code) ===
loc_cd0f:
	lda $57                  ; $cd0f: a5 57
	beq $cd3b                ; $cd11: f0 28
loc_cd13:
	txa                      ; $cd13: 8a
	pha                      ; $cd14: 48
	tya                      ; $cd15: 98
	pha                      ; $cd16: 48
	ldx $58                  ; $cd17: a6 58
	lda $ec,x                ; $cd19: b5 ec
	clc                      ; $cd1b: 18
	adc $57                  ; $cd1c: 65 57
	sta $ec,x                ; $cd1e: 95 ec
	txa                      ; $cd20: 8a
	asl                      ; $cd21: 0a
	asl                      ; $cd22: 0a
	asl                      ; $cd23: 0a
	asl                      ; $cd24: 0a
	asl                      ; $cd25: 0a
	tax                      ; $cd26: aa
	ldy #$00                 ; $cd27: a0 00
	lda $6fa7,x              ; $cd29: bd a7 6f
	clc                      ; $cd2c: 18
	adc $57                  ; $cd2d: 65 57
	sta $6fa7,x              ; $cd2f: 9d a7 6f
	inx                      ; $cd32: e8
	iny                      ; $cd33: c8
	cpy #$03                 ; $cd34: c0 03
	bcc $cd29                ; $cd36: 90 f1
loc_cd38:
	pla                      ; $cd38: 68
	bcs $cd3e                ; $cd39: b0 03

; === Block $cd3b-$cd51 (Code) ===
loc_cd3b:
	txa                      ; $cd3b: 8a
	pha                      ; $cd3c: 48
	tya                      ; $cd3d: 98
	clc                      ; $cd3e: 18
	adc #$06                 ; $cd3f: 69 06
	tax                      ; $cd41: aa
	jsr $d7fc                ; $cd42: 20 fc d7
loc_cd45:
	pla                      ; $cd45: 68
	tax                      ; $cd46: aa
	beq $cce9                ; $cd47: f0 a0
loc_cd49:
	ldx #$08                 ; $cd49: a2 08
	jsr $d7fc                ; $cd4b: 20 fc d7
loc_cd4e:
	jsr $cd52                ; $cd4e: 20 52 cd
loc_cd51:
	rts                      ; $cd51: 60

; === Block $cd52-$cd65 (Code) ===
loc_cd52:
	ldx #$0b                 ; $cd52: a2 0b
	lda $7140                ; $cd54: ad 40 71
	beq $cd6a                ; $cd57: f0 11
loc_cd59:
	ldx #$07                 ; $cd59: a2 07
	cmp $cd70,x              ; $cd5b: dd 70 cd
	beq $cd68                ; $cd5e: f0 08
loc_cd60:
	dex                      ; $cd60: ca
	bpl $cd5b                ; $cd61: 10 f8
loc_cd63:
	ldx #$0a                 ; $cd63: a2 0a
	jmp $cd6a                ; $cd65: 4c 6a cd

; === Block $cd68-$cd6a (Code) ===
loc_cd68:
	ldx #$09                 ; $cd68: a2 09

; === Block $cd6a-$cd6f (Code) ===
loc_cd6a:
	stx $6fe9                ; $cd6a: 8e e9 6f
	ldx #$09                 ; $cd6d: a2 09
	rts                      ; $cd6f: 60

; === Block $cd78-$cd84 (Code) ===
loc_cd78:
	lda $7006,y              ; $cd78: b9 06 70
	and #$fc                 ; $cd7b: 29 fc
	ora $3d                  ; $cd7d: 05 3d
	ora #$80                 ; $cd7f: 09 80
	sta $7006,y              ; $cd81: 99 06 70
	rts                      ; $cd84: 60

; === Block $cd85-$cd8a (Code) ===
loc_cd85:
	lda $0539                ; $cd85: ad 39 05
	bpl $cd8e                ; $cd88: 10 04
loc_cd8a:
	brk                      ; $cd8a: 00

; === Block $cd8e-$cda3 (Code) ===
loc_cd8e:
	lda #$00                 ; $cd8e: a9 00
	sta $0539                ; $cd90: 8d 39 05
	lda $0599                ; $cd93: ad 99 05
	and #$f0                 ; $cd96: 29 f0
	beq $cdc8                ; $cd98: f0 2e
loc_cd9a:
	ldy #$bc                 ; $cd9a: a0 bc
	and #$30                 ; $cd9c: 29 30
	bne $cdb6                ; $cd9e: d0 16
loc_cda0:
	dey                      ; $cda0: 88
	ldx #$00                 ; $cda1: a2 00
	brk                      ; $cda3: 00

; === Block $cdb6-$cdc0 (Code) ===
loc_cdb6:
	tya                      ; $cdb6: 98
	ldx #$03                 ; $cdb7: a2 03
	jsr $d1fd                ; $cdb9: 20 fd d1
loc_cdbc:
	ldx #$03                 ; $cdbc: a2 03
	lda #$bd                 ; $cdbe: a9 bd
	brk                      ; $cdc0: 00

; === Block $cdc8-$cdc8 (Code) ===
loc_cdc8:
	rts                      ; $cdc8: 60

; === Block $cdc9-$cddb (Code) ===
loc_cdc9:
	lda $7001                ; $cdc9: ad 01 70
	and #$03                 ; $cdcc: 29 03
	sta $0528                ; $cdce: 8d 28 05
	lda #$10                 ; $cdd1: a9 10
	sta $3e                  ; $cdd3: 85 3e
	jsr $c007                ; $cdd5: 20 07 c0
loc_cdd8:
	jsr $cddc                ; $cdd8: 20 dc cd
loc_cddb:
	rts                      ; $cddb: 60

; === Block $cddc-$cdf9 (Code) ===
loc_cddc:
	lda $41                  ; $cddc: a5 41
	bmi $ce08                ; $cdde: 30 28
loc_cde0:
	lda $6288                ; $cde0: ad 88 62
	bmi $ce08                ; $cde3: 30 23
loc_cde5:
	lda $12                  ; $cde5: a5 12
	and #$1f                 ; $cde7: 29 1f
	adc #$ff                 ; $cde9: 69 ff
	sta $0516                ; $cdeb: 8d 16 05
	sta $0516                ; $cdee: 8d 16 05
	bcc $ce08                ; $cdf1: 90 15
loc_cdf3:
	inc $62ed                ; $cdf3: ee ed 62
	lda $62ed                ; $cdf6: ad ed 62

; === Block $cdf9-$ce08 (Code) ===
entry_cdf9:
	cmp #$cc                 ; $cdf9: c9 cc
	bcc $ce08                ; $cdfb: 90 0b
loc_cdfd:
	lda #$00                 ; $cdfd: a9 00
	sta $62ed                ; $cdff: 8d ed 62
	inc $628c                ; $ce02: ee 8c 62
	inc $628d                ; $ce05: ee 8d 62
loc_ce08:
	rts                      ; $ce08: 60

; === Block $cf10-$cf28 (Code) ===
loc_cf10:
	lda $6f40,x              ; $cf10: bd 40 6f
	and #$7f                 ; $cf13: 29 7f
	cmp #$06                 ; $cf15: c9 06
	beq $cf2b                ; $cf17: f0 12
loc_cf19:
	cmp #$07                 ; $cf19: c9 07
	bne $cf37                ; $cf1b: d0 1a
loc_cf1d:
	lda $6f40,y              ; $cf1d: b9 40 6f
	and #$7f                 ; $cf20: 29 7f
	cmp #$06                 ; $cf22: c9 06
	beq $cf37                ; $cf24: f0 11
loc_cf26:
	dec $42                  ; $cf26: c6 42
	jmp $cf34                ; $cf28: 4c 34 cf

; === Block $cf2b-$cf34 (Code) ===
loc_cf2b:
	lda $6f40,y              ; $cf2b: b9 40 6f
	and #$7f                 ; $cf2e: 29 7f
	cmp #$07                 ; $cf30: c9 07
	beq $cf37                ; $cf32: f0 03
loc_cf34:
	brk                      ; $cf34: 00

; === Block $cf37-$cf37 (Code) ===
loc_cf37:
	rts                      ; $cf37: 60

; === Block $cf91-$cfac (Code) ===
loc_cf91:
	lda $7000                ; $cf91: ad 00 70
	and #$fc                 ; $cf94: 29 fc
	ora $3d                  ; $cf96: 05 3d
	ora #$40                 ; $cf98: 09 40
	sta $7000                ; $cf9a: 8d 00 70
	ldx #$00                 ; $cf9d: a2 00
	stx $0527                ; $cf9f: 8e 27 05
	jsr $d7fc                ; $cfa2: 20 fc d7
loc_cfa5:
	jsr $d16f                ; $cfa5: 20 6f d1
loc_cfa8:
	bit $41                  ; $cfa8: 24 41
	bpl $cfaf                ; $cfaa: 10 03
loc_cfac:
	jmp $d050                ; $cfac: 4c 50 d0

; === Block $cfaf-$cfe8 (Code) ===
loc_cfaf:
	tay                      ; $cfaf: a8
	lda $52                  ; $cfb0: a5 52
	tax                      ; $cfb2: aa
	jsr $d251                ; $cfb3: 20 51 d2
loc_cfb6:
	sta $54                  ; $cfb6: 85 54
	tax                      ; $cfb8: aa
	lda $0515                ; $cfb9: ad 15 05
	bne $d016                ; $cfbc: d0 58
loc_cfbe:
	lda $c000                ; $cfbe: ad 00 c0
	bmi $cfc9                ; $cfc1: 30 06
loc_cfc3:
	lda $14                  ; $cfc3: a5 14
	and #$02                 ; $cfc5: 29 02
	bne $d00a                ; $cfc7: d0 41
loc_cfc9:
	lda $6f40,x              ; $cfc9: bd 40 6f
	sta $059e                ; $cfcc: 8d 9e 05
	bpl $cfeb                ; $cfcf: 10 1a
loc_cfd1:
	cmp #$83                 ; $cfd1: c9 83
	bne $d010                ; $cfd3: d0 3b
loc_cfd5:
	lda $52                  ; $cfd5: a5 52
	cmp $6195                ; $cfd7: cd 95 61
	bne $d013                ; $cfda: d0 37
loc_cfdc:
	lda $53                  ; $cfdc: a5 53
	cmp $6196                ; $cfde: cd 96 61
	bne $d013                ; $cfe1: d0 30
loc_cfe3:
	lda #$01                 ; $cfe3: a9 01
	sta $0527                ; $cfe5: 8d 27 05
	jmp $d00a                ; $cfe8: 4c 0a d0

; === Block $cfeb-$d001 (Code) ===
loc_cfeb:
	lda $65                  ; $cfeb: a5 65
	cmp #$03                 ; $cfed: c9 03
	bne $d00a                ; $cfef: d0 19
loc_cff1:
	ldx #$03                 ; $cff1: a2 03
	lda $6f6a,x              ; $cff3: bd 6a 6f
	cmp $52                  ; $cff6: c5 52
	bne $d007                ; $cff8: d0 0d
loc_cffa:
	lda $6f8a,x              ; $cffa: bd 8a 6f
	cmp $53                  ; $cffd: c5 53
	bne $d007                ; $cfff: d0 06
loc_d001:
	brk                      ; $d001: 00

; === Block $d007-$d00a (Code) ===
loc_d007:
	dex                      ; $d007: ca
	bpl $cff3                ; $d008: 10 e9

; === Block $d00a-$d00f (Code) ===
loc_d00a:
	lda $54                  ; $d00a: a5 54
	jsr $d1c9                ; $d00c: 20 c9 d1
loc_d00f:
	rts                      ; $d00f: 60

; === Block $d010-$d010 (Code) ===
loc_d010:
	brk                      ; $d010: 00

; === Block $d013-$d013 (Code) ===
loc_d013:
	jmp $d0c4                ; $d013: 4c c4 d0

; === Block $d016-$d02c (Code) ===
loc_d016:
	cmp #$01                 ; $d016: c9 01
	bne $d00a                ; $d018: d0 f0
loc_d01a:
	lda $6f40,x              ; $d01a: bd 40 6f
	cmp #$83                 ; $d01d: c9 83
	beq $d00a                ; $d01f: f0 e9
loc_d021:
	cmp #$24                 ; $d021: c9 24
	beq $d00a                ; $d023: f0 e5
loc_d025:
	and #$80                 ; $d025: 29 80
	bne $d013                ; $d027: d0 ea
loc_d029:
	sta $0515                ; $d029: 8d 15 05
	brk                      ; $d02c: 00

; === Block $d050-$d0b5 (Code) ===
loc_d050:
	pha                      ; $d050: 48
	lda $52                  ; $d051: a5 52
	pha                      ; $d053: 48
	lda $63                  ; $d054: a5 63
	cmp #$3e                 ; $d056: c9 3e
	beq $d05e                ; $d058: f0 04
loc_d05a:
	lda $56                  ; $d05a: a5 56
	bne $d080                ; $d05c: d0 22
loc_d05e:
	lda $0515                ; $d05e: ad 15 05
	cmp #$01                 ; $d061: c9 01
	bne $d075                ; $d063: d0 10
loc_d065:
	lda $0534                ; $d065: ad 34 05
	and #$1f                 ; $d068: 29 1f
	tax                      ; $d06a: aa
	lda $7000,x              ; $d06b: bd 00 70
	and #$fc                 ; $d06e: 29 fc
	ora $3d                  ; $d070: 05 3d
	sta $7000,x              ; $d072: 9d 00 70
loc_d075:
	lda #$00                 ; $d075: a9 00
	sta $51                  ; $d077: 85 51
	ldx #$06                 ; $d079: a2 06
	jsr $d724                ; $d07b: 20 24 d7
loc_d07e:
	bcs $d0ef                ; $d07e: b0 6f
loc_d080:
	pla                      ; $d080: 68
	tax                      ; $d081: aa
	pla                      ; $d082: 68
	tay                      ; $d083: a8
	jsr $d3e6                ; $d084: 20 e6 d3
loc_d087:
	tay                      ; $d087: a8
	and #$1f                 ; $d088: 29 1f
	tax                      ; $d08a: aa
	lda $0527                ; $d08b: ad 27 05
	bne $d0b8                ; $d08e: d0 28
loc_d090:
	lda $0515                ; $d090: ad 15 05
	bne $d0bd                ; $d093: d0 28
loc_d095:
	lda $6f40,x              ; $d095: bd 40 6f
	sta $059e                ; $d098: 8d 9e 05
	lda $c000                ; $d09b: ad 00 c0
	bmi $d0a6                ; $d09e: 30 06
loc_d0a0:
	lda $14                  ; $d0a0: a5 14
	and #$02                 ; $d0a2: 29 02
	bne $d0b8                ; $d0a4: d0 12
loc_d0a6:
	lda $059e                ; $d0a6: ad 9e 05
	cmp #$83                 ; $d0a9: c9 83
	beq $d0c4                ; $d0ab: f0 17
loc_d0ad:
	cmp #$b0                 ; $d0ad: c9 b0
	beq $d0c9                ; $d0af: f0 18
loc_d0b1:
	and #$80                 ; $d0b1: 29 80
	beq $d0b8                ; $d0b3: f0 03
loc_d0b5:
	jmp $d010                ; $d0b5: 4c 10 d0

; === Block $d0b8-$d0bc (Code) ===
loc_d0b8:
	tya                      ; $d0b8: 98
	jsr $d1c9                ; $d0b9: 20 c9 d1
loc_d0bc:
	rts                      ; $d0bc: 60

; === Block $d0bd-$d0bf (Code) ===
loc_d0bd:
	sty $54                  ; $d0bd: 84 54
	jmp $d01a                ; $d0bf: 4c 1a d0

; === Block $d0c2-$d0c4 (Code) ===
loc_d0c2:
	pla                      ; $d0c2: 68
	pla                      ; $d0c3: 68

; === Block $d0c4-$d0c8 (Code) ===
loc_d0c4:
	pla                      ; $d0c4: 68
	pla                      ; $d0c5: 68
	pla                      ; $d0c6: 68
	pla                      ; $d0c7: 68
	rts                      ; $d0c8: 60

; === Block $d0c9-$d0dc (Code) ===
loc_d0c9:
	lda $63                  ; $d0c9: a5 63
	cmp #$37                 ; $d0cb: c9 37
	bne $d0b5                ; $d0cd: d0 e6
loc_d0cf:
	lda $6be7                ; $d0cf: ad e7 6b
	ora $6be8                ; $d0d2: 0d e8 6b
	ora $6be9                ; $d0d5: 0d e9 6b
	and #$c0                 ; $d0d8: 29 c0
	bne $d0e2                ; $d0da: d0 06
loc_d0dc:
	brk                      ; $d0dc: 00

; === Block $d0e2-$d0e2 (Code) ===
loc_d0e2:
	brk                      ; $d0e2: 00

; === Block $d0ef-$d123 (Code) ===
loc_d0ef:
	lda $70e0,x              ; $d0ef: bd e0 70
	and #$08                 ; $d0f2: 29 08
	beq $d14a                ; $d0f4: f0 54
loc_d0f6:
	lda #$00                 ; $d0f6: a9 00
	sta $7e                  ; $d0f8: 85 7e
	lda $3d                  ; $d0fa: a5 3d
	sta $7d                  ; $d0fc: 85 7d
	lda $7000,x              ; $d0fe: bd 00 70
	and #$fc                 ; $d101: 29 fc
	ora $7d                  ; $d103: 05 7d
	sta $7000,x              ; $d105: 9d 00 70
	lda $70e0,x              ; $d108: bd e0 70
	ora #$10                 ; $d10b: 09 10
	sta $70e0,x              ; $d10d: 9d e0 70
	txa                      ; $d110: 8a
	pha                      ; $d111: 48
	jsr $d53b                ; $d112: 20 3b d5
loc_d115:
	pla                      ; $d115: 68
	tax                      ; $d116: aa
	lda $7000,x              ; $d117: bd 00 70
	bpl $d126                ; $d11a: 10 0a
loc_d11c:
	lda $7e                  ; $d11c: a5 7e
	bne $d123                ; $d11e: d0 03
loc_d120:
	inc $052f                ; $d120: ee 2f 05
loc_d123:
	jmp $d080                ; $d123: 4c 80 d0

; === Block $d126-$d136 (Code) ===
loc_d126:
	inc $7e                  ; $d126: e6 7e
	lda $7e                  ; $d128: a5 7e
	cmp #$03                 ; $d12a: c9 03
	bcs $d0c2                ; $d12c: b0 94
loc_d12e:
	cmp #$01                 ; $d12e: c9 01
	beq $d139                ; $d130: f0 07
loc_d132:
	lda $7d                  ; $d132: a5 7d
	eor #$02                 ; $d134: 49 02
	jmp $d0fc                ; $d136: 4c fc d0

; === Block $d139-$d147 (Code) ===
loc_d139:
	lda $12                  ; $d139: a5 12
	bpl $d141                ; $d13b: 10 04
loc_d13d:
	inc $7d                  ; $d13d: e6 7d
	inc $7d                  ; $d13f: e6 7d
loc_d141:
	dec $7d                  ; $d141: c6 7d
	lda $7d                  ; $d143: a5 7d
	and #$03                 ; $d145: 29 03
	jmp $d0fc                ; $d147: 4c fc d0

; === Block $d14a-$d169 (Code) ===
loc_d14a:
	lda $70e0,x              ; $d14a: bd e0 70
	and #$07                 ; $d14d: 29 07
	beq $d16c                ; $d14f: f0 1b
loc_d151:
	cmp #$07                 ; $d151: c9 07
	beq $d16c                ; $d153: f0 17
loc_d155:
	asl                      ; $d155: 0a
	asl                      ; $d156: 0a
	asl                      ; $d157: 0a
	asl                      ; $d158: 0a
	asl                      ; $d159: 0a
	sta $0534                ; $d15a: 8d 34 05
	txa                      ; $d15d: 8a
	ora $0534                ; $d15e: 0d 34 05
	sta $0534                ; $d161: 8d 34 05
	lda #$01                 ; $d164: a9 01
	sta $0527                ; $d166: 8d 27 05
	jmp $d080                ; $d169: 4c 80 d0

; === Block $d16c-$d16c (Code) ===
loc_d16c:
	jmp $d0c2                ; $d16c: 4c c2 d0

; === Block $d16f-$d1b8 (Code) ===
loc_d16f:
	lda $41                  ; $d16f: a5 41
	rol                      ; $d171: 2a
	rol                      ; $d172: 2a
	rol                      ; $d173: 2a
	and #$02                 ; $d174: 29 02
	tax                      ; $d176: aa
	pha                      ; $d177: 48
	lda $3d                  ; $d178: a5 3d
	asl                      ; $d17a: 0a
	tay                      ; $d17b: a8
	lda $42,x                ; $d17c: b5 42
	clc                      ; $d17e: 18
	adc $d239,y              ; $d17f: 79 39 d2
	sta $52                  ; $d182: 85 52
	lda $43,x                ; $d184: b5 43
	clc                      ; $d186: 18
	adc $d23a,y              ; $d187: 79 3a d2
	sta $53                  ; $d18a: 85 53
	cpx #$00                 ; $d18c: e0 00
	bne $d1b4                ; $d18e: d0 24
loc_d190:
	lda $0515                ; $d190: ad 15 05
	cmp #$02                 ; $d193: c9 02
	bne $d1b4                ; $d195: d0 1d
loc_d197:
	lda #$00                 ; $d197: a9 00
	sta $57                  ; $d199: 85 57
	ldx $d1b9,y              ; $d19b: be b9 d1
	lda $52,x                ; $d19e: b5 52
	cmp $d1ba,y              ; $d1a0: d9 ba d1
	bne $d1b4                ; $d1a3: d0 0f
loc_d1a5:
	ldx $d1c1,y              ; $d1a5: be c1 d1
	stx $58                  ; $d1a8: 86 58
	lda $d1c2,y              ; $d1aa: b9 c2 d1
	sta $57                  ; $d1ad: 85 57
	clc                      ; $d1af: 18
	adc $52,x                ; $d1b0: 75 52
	sta $52,x                ; $d1b2: 95 52
loc_d1b4:
	pla                      ; $d1b4: 68
	tax                      ; $d1b5: aa
	lda $53                  ; $d1b6: a5 53
	rts                      ; $d1b8: 60

; === Block $d1c9-$d1d3 (Code) ===
loc_d1c9:
	pha                      ; $d1c9: 48
	lda $7142                ; $d1ca: ad 42 71
	sta $7143                ; $d1cd: 8d 43 71
	lda $7141                ; $d1d0: ad 41 71

; === Block $d1d1-$d1e0 (Code) ===
entry_d1d1:
	eor ($71,x)              ; $d1d1: 41 71
	sta $7142                ; $d1d3: 8d 42 71
	lda $7140                ; $d1d6: ad 40 71
	sta $7141                ; $d1d9: 8d 41 71
	pla                      ; $d1dc: 68
	sta $7140                ; $d1dd: 8d 40 71
	rts                      ; $d1e0: 60

; === Block $d1e1-$d1ec (Code) ===
loc_d1e1:
	lda $07bb                ; $d1e1: ad bb 07
	bpl $d1ec                ; $d1e4: 10 06
loc_d1e6:
	jsr $e3e2                ; $d1e6: 20 e2 e3
loc_d1e9:
	jsr $ff74                ; $d1e9: 20 74 ff
loc_d1ec:
	rts                      ; $d1ec: 60

; === Block $d1ed-$d1f8 (Code) ===
loc_d1ed:
	jsr $d1fd                ; $d1ed: 20 fd d1
loc_d1f0:
	jsr $c8cc                ; $d1f0: 20 cc c8
loc_d1f3:
	lda #$00                 ; $d1f3: a9 00
	sta $0539                ; $d1f5: 8d 39 05
	brk                      ; $d1f8: 00

; === Block $d1fd-$d1fe (Code) ===
loc_d1fd:
	pha                      ; $d1fd: 48
	brk                      ; $d1fe: 00

; === Block $d220-$d222 (Code) ===
entry_d220:
	ora $c6                  ; $d220: 05 c6
	brk                      ; $d222: 00

; === Block $d231-$d238 (Code) ===
entry_d231:
	*nop $ff,x               ; $d231: 74 ff
	jsr $c8ec                ; $d233: 20 ec c8
loc_d236:
	lda $14                  ; $d236: a5 14
	rts                      ; $d238: 60

; === Block $d241-$d246 (Code) ===
loc_d241:
	lda $62a5                ; $d241: ad a5 62
	bmi $d249                ; $d244: 30 03
loc_d246:
	jmp $c8ec                ; $d246: 4c ec c8

; === Block $d249-$d250 (Code) ===
loc_d249:
	lda #$00                 ; $d249: a9 00
	sta $14                  ; $d24b: 85 14
	sta $0529                ; $d24d: 8d 29 05
	rts                      ; $d250: 60

; === Block $d251-$d265 (Code) ===
loc_d251:
	lda $0507                ; $d251: ad 07 05
	sta $04                  ; $d254: 85 04
	lda #$0b                 ; $d256: a9 0b
	jsr $ff91                ; $d258: 20 91 ff
loc_d25b:
	jsr $d266                ; $d25b: 20 66 d2
loc_d25e:
	pha                      ; $d25e: 48
	lda $04                  ; $d25f: a5 04
	jsr $ff91                ; $d261: 20 91 ff
loc_d264:
	pla                      ; $d264: 68
	rts                      ; $d265: 60

; === Block $d266-$d276 (Code) ===
loc_d266:
	stx $00                  ; $d266: 86 00
	sty $01                  ; $d268: 84 01
	jsr $d2b7                ; $d26a: 20 b7 d2
loc_d26d:
	jsr $d2e9                ; $d26d: 20 e9 d2
loc_d270:
	jsr $d333                ; $d270: 20 33 d3
loc_d273:
	jsr $d523                ; $d273: 20 23 d5
loc_d276:
	rts                      ; $d276: 60

; === Block $d2b7-$d2dd (Code) ===
loc_d2b7:
	txa                      ; $d2b7: 8a
	pha                      ; $d2b8: 48
	sec                      ; $d2b9: 38
	sbc #$03                 ; $d2ba: e9 03
	sta $49                  ; $d2bc: 85 49
	tya                      ; $d2be: 98
	pha                      ; $d2bf: 48
	sec                      ; $d2c0: 38
	sbc #$03                 ; $d2c1: e9 03
	sta $4a                  ; $d2c3: 85 4a
	ldx $65                  ; $d2c5: a6 65
	lda $49                  ; $d2c7: a5 49
	cmp $d2e3,x              ; $d2c9: dd e3 d2
	bcs $d2d5                ; $d2cc: b0 07
loc_d2ce:
	lda $4a                  ; $d2ce: a5 4a
	cmp $d2e6,x              ; $d2d0: dd e6 d2
	bcc $d2de                ; $d2d3: 90 09
loc_d2d5:
	pla                      ; $d2d5: 68
	pla                      ; $d2d6: 68
	pla                      ; $d2d7: 68
	pla                      ; $d2d8: 68
	lda #$00                 ; $d2d9: a9 00
	tax                      ; $d2db: aa
	tay                      ; $d2dc: a8
	rts                      ; $d2dd: 60

; === Block $d2de-$d2e2 (Code) ===
loc_d2de:
	pla                      ; $d2de: 68
	tay                      ; $d2df: a8
	pla                      ; $d2e0: 68
	tax                      ; $d2e1: aa
	rts                      ; $d2e2: 60

; === Block $d2e9-$d332 (Code) ===
loc_d2e9:
	ldy $01                  ; $d2e9: a4 01
	lda #$00                 ; $d2eb: a9 00
	sta $02                  ; $d2ed: 85 02
	lda $65                  ; $d2ef: a5 65
	asl                      ; $d2f1: 0a
	tax                      ; $d2f2: aa
	lda $8000,x              ; $d2f3: bd 00 80
	sta $49                  ; $d2f6: 85 49
	lda $8001,x              ; $d2f8: bd 01 80
	sta $4a                  ; $d2fb: 85 4a
	ldx $00                  ; $d2fd: a6 00
	tya                      ; $d2ff: 98
	asl                      ; $d300: 0a
	rol $02                  ; $d301: 26 02
	asl                      ; $d303: 0a
	rol $02                  ; $d304: 26 02
	clc                      ; $d306: 18
	adc $49                  ; $d307: 65 49
	sta $49                  ; $d309: 85 49
	lda $02                  ; $d30b: a5 02
	adc $4a                  ; $d30d: 65 4a
	sta $4a                  ; $d30f: 85 4a
	lda #$00                 ; $d311: a9 00
	ldy #$02                 ; $d313: a0 02
	cpx #$40                 ; $d315: e0 40
	bcc $d322                ; $d317: 90 09
loc_d319:
	lda ($49),y              ; $d319: b1 49
	cpx #$c0                 ; $d31b: e0 c0
	bcc $d322                ; $d31d: 90 03
loc_d31f:
	iny                      ; $d31f: c8
	lda ($49),y              ; $d320: b1 49
loc_d322:
	pha                      ; $d322: 48
	ldy #$00                 ; $d323: a0 00
	lda ($49),y              ; $d325: b1 49
	pha                      ; $d327: 48
	iny                      ; $d328: c8
	lda ($49),y              ; $d329: b1 49
	sta $4a                  ; $d32b: 85 4a
	pla                      ; $d32d: 68
	sta $49                  ; $d32e: 85 49
	pla                      ; $d330: 68
	tay                      ; $d331: a8
	rts                      ; $d332: 60

; === Block $d333-$d355 (Code) ===
loc_d333:
	lda #$00                 ; $d333: a9 00
	bit $00                  ; $d335: 24 00
	bvs $d386                ; $d337: 70 4d
loc_d339:
	bpl $d33d                ; $d339: 10 02
loc_d33b:
	lda #$80                 ; $d33b: a9 80
loc_d33d:
	sta $02                  ; $d33d: 85 02
	dec $02                  ; $d33f: c6 02
	dey                      ; $d341: 88
	iny                      ; $d342: c8
	lda ($49),y              ; $d343: b1 49
	sta $03                  ; $d345: 85 03
	and #$e0                 ; $d347: 29 e0
	cmp #$e0                 ; $d349: c9 e0
	bne $d358                ; $d34b: d0 0b
loc_d34d:
	lda $03                  ; $d34d: a5 03
	and #$1f                 ; $d34f: 29 1f
	cmp #$08                 ; $d351: c9 08
	bcc $d36d                ; $d353: 90 18
loc_d355:
	jmp $d379                ; $d355: 4c 79 d3

; === Block $d358-$d36c (Code) ===
loc_d358:
	lda $03                  ; $d358: a5 03
	and #$1f                 ; $d35a: 29 1f
	sec                      ; $d35c: 38
	adc $02                  ; $d35d: 65 02
	sta $02                  ; $d35f: 85 02
	cmp $00                  ; $d361: c5 00
	bcc $d342                ; $d363: 90 dd
loc_d365:
	lda $03                  ; $d365: a5 03
	lsr                      ; $d367: 4a
	lsr                      ; $d368: 4a
	lsr                      ; $d369: 4a
	lsr                      ; $d36a: 4a
	lsr                      ; $d36b: 4a
	rts                      ; $d36c: 60

; === Block $d36d-$d378 (Code) ===
loc_d36d:
	sec                      ; $d36d: 38
	adc $02                  ; $d36e: 65 02
	sta $02                  ; $d370: 85 02
	cmp $00                  ; $d372: c5 00
	bcc $d342                ; $d374: 90 cc
loc_d376:
	lda #$07                 ; $d376: a9 07
	rts                      ; $d378: 60

; === Block $d379-$d385 (Code) ===
loc_d379:
	inc $02                  ; $d379: e6 02
	lda $02                  ; $d37b: a5 02
	cmp $00                  ; $d37d: c5 00
	bcc $d342                ; $d37f: 90 c1
loc_d381:
	lda $03                  ; $d381: a5 03
	and #$1f                 ; $d383: 29 1f
	rts                      ; $d385: 60

; === Block $d386-$d38a (Code) ===
loc_d386:
	jsr $d38b                ; $d386: 20 8b d3
loc_d389:
	dey                      ; $d389: 88
	rts                      ; $d38a: 60

; === Block $d38b-$d3a6 (Code) ===
loc_d38b:
	bmi $d38f                ; $d38b: 30 02
loc_d38d:
	lda #$80                 ; $d38d: a9 80
loc_d38f:
	sta $02                  ; $d38f: 85 02
	dec $02                  ; $d391: c6 02
	dey                      ; $d393: 88
	lda ($49),y              ; $d394: b1 49
	sta $03                  ; $d396: 85 03
	and #$e0                 ; $d398: 29 e0
	cmp #$e0                 ; $d39a: c9 e0
	bne $d3a9                ; $d39c: d0 0b
loc_d39e:
	lda $03                  ; $d39e: a5 03
	and #$1f                 ; $d3a0: 29 1f
	cmp #$08                 ; $d3a2: c9 08
	bcc $d3c7                ; $d3a4: 90 21
loc_d3a6:
	jmp $d3d9                ; $d3a6: 4c d9 d3

; === Block $d3a9-$d3c6 (Code) ===
loc_d3a9:
	lda $03                  ; $d3a9: a5 03
	tax                      ; $d3ab: aa
	and #$1f                 ; $d3ac: 29 1f
	clc                      ; $d3ae: 18
	adc #$01                 ; $d3af: 69 01
	sta $03                  ; $d3b1: 85 03
	lda $02                  ; $d3b3: a5 02
	sec                      ; $d3b5: 38
	sbc $03                  ; $d3b6: e5 03
	sta $02                  ; $d3b8: 85 02
	cmp $00                  ; $d3ba: c5 00
	bcs $d393                ; $d3bc: b0 d5
loc_d3be:
	txa                      ; $d3be: 8a
	sta $03                  ; $d3bf: 85 03
	lsr                      ; $d3c1: 4a
	lsr                      ; $d3c2: 4a
	lsr                      ; $d3c3: 4a
	lsr                      ; $d3c4: 4a
	lsr                      ; $d3c5: 4a
	rts                      ; $d3c6: 60

; === Block $d3c7-$d3d8 (Code) ===
loc_d3c7:
	adc #$01                 ; $d3c7: 69 01
	sta $03                  ; $d3c9: 85 03
	lda $02                  ; $d3cb: a5 02
	sec                      ; $d3cd: 38
	sbc $03                  ; $d3ce: e5 03
	sta $02                  ; $d3d0: 85 02
	cmp $00                  ; $d3d2: c5 00
	bcs $d393                ; $d3d4: b0 bd
loc_d3d6:
	lda #$07                 ; $d3d6: a9 07
	rts                      ; $d3d8: 60

; === Block $d3d9-$d3e5 (Code) ===
loc_d3d9:
	dec $02                  ; $d3d9: c6 02
	lda $02                  ; $d3db: a5 02
	cmp $00                  ; $d3dd: c5 00
	bcs $d393                ; $d3df: b0 b2
loc_d3e1:
	lda $03                  ; $d3e1: a5 03
	and #$1f                 ; $d3e3: 29 1f
	rts                      ; $d3e5: 60

; === Block $d3e6-$d40f (Code) ===
loc_d3e6:
	cpx $3f                  ; $d3e6: e4 3f
	bcs $d410                ; $d3e8: b0 26
loc_d3ea:
	cpy $40                  ; $d3ea: c4 40
	bcs $d410                ; $d3ec: b0 22
loc_d3ee:
	txa                      ; $d3ee: 8a
	pha                      ; $d3ef: 48
	lda $3f                  ; $d3f0: a5 3f
	sta $00                  ; $d3f2: 85 00
	lda #$00                 ; $d3f4: a9 00
	sta $01                  ; $d3f6: 85 01
	tya                      ; $d3f8: 98
	ldx #$00                 ; $d3f9: a2 00
	jsr $c827                ; $d3fb: 20 27 c8
loc_d3fe:
	pla                      ; $d3fe: 68
	ldy #$00                 ; $d3ff: a0 00
	jsr $c81d                ; $d401: 20 1d c8
loc_d404:
	ldy #$78                 ; $d404: a0 78
	lda #$00                 ; $d406: a9 00
	jsr $c81d                ; $d408: 20 1d c8
loc_d40b:
	ldy #$00                 ; $d40b: a0 00
	lda ($00),y              ; $d40d: b1 00
	rts                      ; $d40f: 60

; === Block $d410-$d419 (Code) ===
loc_d410:
	lda #$ff                 ; $d410: a9 ff
	sta $00                  ; $d412: 85 00
	sta $01                  ; $d414: 85 01
	jsr $d459                ; $d416: 20 59 d4
loc_d419:
	rts                      ; $d419: 60

; === Block $d459-$d471 (Code) ===
loc_d459:
	bit $0550                ; $d459: 2c 50 05
	bpl $d472                ; $d45c: 10 14
loc_d45e:
	txa                      ; $d45e: 8a
	and #$07                 ; $d45f: 29 07
	tax                      ; $d461: aa
	tya                      ; $d462: 98
	and #$07                 ; $d463: 29 07
	tay                      ; $d465: a8
	lda $d476,x              ; $d466: bd 76 d4
	and $d47e,y              ; $d469: 39 7e d4
	bne $d472                ; $d46c: d0 04
loc_d46e:
	lda $058c                ; $d46e: ad 8c 05
	rts                      ; $d471: 60

; === Block $d472-$d475 (Code) ===
loc_d472:
	lda $0520                ; $d472: ad 20 05
	rts                      ; $d475: 60

; === Block $d523-$d533 (Code) ===
loc_d523:
	pha                      ; $d523: 48
	lda $00                  ; $d524: a5 00
	cmp #$c2                 ; $d526: c9 c2
	bne $d539                ; $d528: d0 0f
loc_d52a:
	lda $01                  ; $d52a: a5 01
	cmp #$2e                 ; $d52c: c9 2e
	bne $d539                ; $d52e: d0 09
loc_d530:
	lda $62a1                ; $d530: ad a1 62

; === Block $d532-$d538 (Code) ===
entry_d532:
	*jam                     ; $d532: 62
	bpl $d539                ; $d533: 10 04
loc_d535:
	pla                      ; $d535: 68
	lda #$02                 ; $d536: a9 02
	rts                      ; $d538: 60

; === Block $d539-$d53a (Code) ===
loc_d539:
	pla                      ; $d539: 68
	rts                      ; $d53a: 60

; === Block $d53b-$d53d (Code) ===
loc_d53b:
	lda #$ff                 ; $d53b: a9 ff

; === Block $d53d-$d53f (Code) ===
loc_d53d:
	sta $56                  ; $d53d: 85 56
	jmp $d546                ; $d53f: 4c 46 d5

; === Block $d546-$d569 (Code) ===
loc_d546:
	lda $0507                ; $d546: ad 07 05
	sta $58                  ; $d549: 85 58
	lda #$06                 ; $d54b: a9 06
	sta $51                  ; $d54d: 85 51
	lda $6f60                ; $d54f: ad 60 6f
	sec                      ; $d552: 38
	sbc #$08                 ; $d553: e9 08
	sta $7c                  ; $d555: 85 7c
	lda $6f80                ; $d557: ad 80 6f
	sec                      ; $d55a: 38
	sbc #$07                 ; $d55b: e9 07
	sta $7b                  ; $d55d: 85 7b
	lda $3c                  ; $d55f: a5 3c
	and #$0f                 ; $d561: 29 0f
	bne $d588                ; $d563: d0 23
loc_d565:
	lda $41                  ; $d565: a5 41
	bmi $d56c                ; $d567: 30 03
loc_d569:
	jmp $c013                ; $d569: 4c 13 c0

; === Block $d56c-$d57c (Code) ===
loc_d56c:
	lda $67                  ; $d56c: a5 67
	jsr $ff91                ; $d56e: 20 91 ff
loc_d571:
	jsr $d57f                ; $d571: 20 7f d5
loc_d574:
	lda $7024                ; $d574: ad 24 70
	and $7025                ; $d577: 2d 25 70
	bmi $d5ac                ; $d57a: 30 30
loc_d57c:
	jmp $c013                ; $d57c: 4c 13 c0

; === Block $d57f-$d585 (Code) ===
loc_d57f:
	jsr $d607                ; $d57f: 20 07 d6
loc_d582:
	jsr $d5ee                ; $d582: 20 ee d5
loc_d585:
	jmp $d57f                ; $d585: 4c 7f d5

; === Block $d588-$d58d (Code) ===
loc_d588:
	pha                      ; $d588: 48
	jsr $d5c0                ; $d589: 20 c0 d5
loc_d58c:
	pla                      ; $d58c: 68

; === Block $d58d-$d5ac (Code) ===
entry_d58d:
	and #$07                 ; $d58d: 29 07
	bne $d5ac                ; $d58f: d0 1b
loc_d591:
	lda $41                  ; $d591: a5 41
	bpl $d598                ; $d593: 10 03
loc_d595:
	jsr $d5ad                ; $d595: 20 ad d5
loc_d598:
	ldx #$00                 ; $d598: a2 00
	jsr $d59d                ; $d59a: 20 9d d5
loc_d59d:
	lda $052a,x              ; $d59d: bd 2a 05
	and #$40                 ; $d5a0: 29 40
	beq $d5ab                ; $d5a2: f0 07
loc_d5a4:
	asl                      ; $d5a4: 0a
	ora $7004,x              ; $d5a5: 1d 04 70
	sta $7004,x              ; $d5a8: 9d 04 70
loc_d5ab:
	inx                      ; $d5ab: e8
loc_d5ac:
	rts                      ; $d5ac: 60

; === Block $d5ad-$d5b2 (Code) ===
loc_d5ad:
	lda $67                  ; $d5ad: a5 67
	jsr $ff91                ; $d5af: 20 91 ff

; === Block $d5b0-$d5b8 (Code) ===
entry_d5b0:
	sta ($ff),y              ; $d5b0: 91 ff
	jsr $d5fe                ; $d5b2: 20 fe d5
loc_d5b5:
	jsr $d5ee                ; $d5b5: 20 ee d5
loc_d5b8:
	jmp $d5b2                ; $d5b8: 4c b2 d5

; === Block $d5c0-$d5d7 (Code) ===
loc_d5c0:
	ldx $51                  ; $d5c0: a6 51
	lda $7020,x              ; $d5c2: bd 20 70
	cmp #$ff                 ; $d5c5: c9 ff
	beq $d5e5                ; $d5c7: f0 1c
loc_d5c9:
	lda $7160,x              ; $d5c9: bd 60 71
	beq $d5dd                ; $d5cc: f0 0f
loc_d5ce:
	bmi $d5da                ; $d5ce: 30 0a
loc_d5d0:
	lda #$09                 ; $d5d0: a9 09
	sta $57                  ; $d5d2: 85 57
	jsr $d5ea                ; $d5d4: 20 ea d5
loc_d5d7:
	jmp $d5dd                ; $d5d7: 4c dd d5

; === Block $d5da-$d5dd (Code) ===
loc_d5da:
	jsr $d9cb                ; $d5da: 20 cb d9

; === Block $d5dd-$d5e5 (Code) ===
loc_d5dd:
	inc $51                  ; $d5dd: e6 51
	lda $51                  ; $d5df: a5 51
	cmp #$1e                 ; $d5e1: c9 1e
	bcc $d5c0                ; $d5e3: 90 db

; === Block $d5e5-$d5e9 (Code) ===
loc_d5e5:
	lda #$06                 ; $d5e5: a9 06
	sta $51                  ; $d5e7: 85 51
	rts                      ; $d5e9: 60

; === Block $d5ea-$d5ed (Code) ===
loc_d5ea:
	jsr $d94b                ; $d5ea: 20 4b d9
loc_d5ed:
	rts                      ; $d5ed: 60

; === Block $d5ee-$d5fd (Code) ===
loc_d5ee:
	inc $51                  ; $d5ee: e6 51
	lda $51                  ; $d5f0: a5 51
	cmp #$1e                 ; $d5f2: c9 1e
	bcc $d5fd                ; $d5f4: 90 07
loc_d5f6:
	lda $58                  ; $d5f6: a5 58
	jsr $ff91                ; $d5f8: 20 91 ff
loc_d5fb:
	pla                      ; $d5fb: 68
	pla                      ; $d5fc: 68
loc_d5fd:
	rts                      ; $d5fd: 60

; === Block $d5fe-$d61e (Code) ===
loc_d5fe:
	ldx $51                  ; $d5fe: a6 51
	lda $70e0,x              ; $d600: bd e0 70
	and #$40                 ; $d603: 29 40
	beq $d5fd                ; $d605: f0 f6
loc_d607:
	ldx $51                  ; $d607: a6 51
	lda $7020,x              ; $d609: bd 20 70
	cmp #$ff                 ; $d60c: c9 ff
	beq $d5f6                ; $d60e: f0 e6
loc_d610:
	jsr $d63b                ; $d610: 20 3b d6
loc_d613:
	bcc $d61b                ; $d613: 90 06
loc_d615:
	jsr $d621                ; $d615: 20 21 d6
loc_d618:
	jsr $d891                ; $d618: 20 91 d8
loc_d61b:
	jsr $d684                ; $d61b: 20 84 d6
loc_d61e:
	jmp $d76e                ; $d61e: 4c 6e d7

; === Block $d621-$d63a (Code) ===
loc_d621:
	lda $6f60,x              ; $d621: bd 60 6f
	sta $52                  ; $d624: 85 52
	lda $6f80,x              ; $d626: bd 80 6f
	sta $53                  ; $d629: 85 53
	jsr $d6f4                ; $d62b: 20 f4 d6
loc_d62e:
	bcs $d63a                ; $d62e: b0 0a
loc_d630:
	ldx $51                  ; $d630: a6 51
	lda $7020,x              ; $d632: bd 20 70
	and #$ef                 ; $d635: 29 ef
	sta $7020,x              ; $d637: 9d 20 70
loc_d63a:
	rts                      ; $d63a: 60

; === Block $d63b-$d672 (Code) ===
loc_d63b:
	lda $56                  ; $d63b: a5 56
	beq $d646                ; $d63d: f0 07
loc_d63f:
	lda $70e0,x              ; $d63f: bd e0 70
	and #$10                 ; $d642: 29 10
	bne $d673                ; $d644: d0 2d
loc_d646:
	lda $7000,x              ; $d646: bd 00 70
	bmi $d5fb                ; $d649: 30 b0
loc_d64b:
	lda $7040,x              ; $d64b: bd 40 70
	beq $d5fb                ; $d64e: f0 ab
loc_d650:
	dec $7040,x              ; $d650: de 40 70
	lda $7040,x              ; $d653: bd 40 70
	and #$0f                 ; $d656: 29 0f
	bne $d5fb                ; $d658: d0 a1
loc_d65a:
	lda $7040,x              ; $d65a: bd 40 70
	lsr                      ; $d65d: 4a
	lsr                      ; $d65e: 4a
	lsr                      ; $d65f: 4a
	lsr                      ; $d660: 4a
	ora $7040,x              ; $d661: 1d 40 70
	sta $7040,x              ; $d664: 9d 40 70
	lda $6f60,x              ; $d667: bd 60 6f
	and $6f80,x              ; $d66a: 3d 80 6f
	cmp #$80                 ; $d66d: c9 80
	beq $d5fb                ; $d66f: f0 8a
loc_d671:
	sec                      ; $d671: 38
	rts                      ; $d672: 60

; === Block $d673-$d683 (Code) ===
loc_d673:
	lda $70e0,x              ; $d673: bd e0 70
	and #$10                 ; $d676: 29 10
	beq $d5fb                ; $d678: f0 81
loc_d67a:
	lda $70e0,x              ; $d67a: bd e0 70
	and #$ef                 ; $d67d: 29 ef
	sta $70e0,x              ; $d67f: 9d e0 70
	clc                      ; $d682: 18
	rts                      ; $d683: 60

; === Block $d684-$d6b5 (Code) ===
loc_d684:
	php                      ; $d684: 08
	jsr $d752                ; $d685: 20 52 d7
loc_d688:
	plp                      ; $d688: 28
	bcc $d690                ; $d689: 90 05
loc_d68b:
	lda $0530                ; $d68b: ad 30 05
	bmi $d695                ; $d68e: 30 05
loc_d690:
	jsr $d722                ; $d690: 20 22 d7
loc_d693:
	bcs $d6d8                ; $d693: b0 43
loc_d695:
	ldx $52                  ; $d695: a6 52
	ldy $53                  ; $d697: a4 53
	jsr $d3e6                ; $d699: 20 e6 d3
loc_d69c:
	sta $55                  ; $d69c: 85 55
	and #$e0                 ; $d69e: 29 e0
	sta $54                  ; $d6a0: 85 54
	jsr $d6b6                ; $d6a2: 20 b6 d6
loc_d6a5:
	jsr $d6db                ; $d6a5: 20 db d6
loc_d6a8:
	jsr $d6e8                ; $d6a8: 20 e8 d6
loc_d6ab:
	jsr $d6f4                ; $d6ab: 20 f4 d6
loc_d6ae:
	ldx $51                  ; $d6ae: a6 51
	lda $55                  ; $d6b0: a5 55
	sta $7140,x              ; $d6b2: 9d 40 71
	rts                      ; $d6b5: 60

; === Block $d6b6-$d6cb (Code) ===
loc_d6b6:
	lda $55                  ; $d6b6: a5 55
	and #$1f                 ; $d6b8: 29 1f
	tax                      ; $d6ba: aa
	ldy $6f40,x              ; $d6bb: bc 40 6f
	ldx $51                  ; $d6be: a6 51
	lda $70e0,x              ; $d6c0: bd e0 70
	and #$07                 ; $d6c3: 29 07
	beq $d6cc                ; $d6c5: f0 05
loc_d6c7:
	cpy #$83                 ; $d6c7: c0 83
	bne $d6d6                ; $d6c9: d0 0b
loc_d6cb:
	rts                      ; $d6cb: 60

; === Block $d6cc-$d6d5 (Code) ===
loc_d6cc:
	tya                      ; $d6cc: 98
	bmi $d6d6                ; $d6cd: 30 07
loc_d6cf:
	and #$7f                 ; $d6cf: 29 7f
	cmp #$05                 ; $d6d1: c9 05
	beq $d6d6                ; $d6d3: f0 01
loc_d6d5:
	rts                      ; $d6d5: 60

; === Block $d6d6-$d6d8 (Code) ===
loc_d6d6:
	pla                      ; $d6d6: 68
	pla                      ; $d6d7: 68

; === Block $d6d8-$d6da (Code) ===
loc_d6d8:
	pla                      ; $d6d8: 68
	pla                      ; $d6d9: 68
	rts                      ; $d6da: 60

; === Block $d6db-$d6e7 (Code) ===
loc_d6db:
	lda $52                  ; $d6db: a5 52
	cmp $3f                  ; $d6dd: c5 3f
	bcs $d6d6                ; $d6df: b0 f5
loc_d6e1:
	lda $53                  ; $d6e1: a5 53
	cmp $40                  ; $d6e3: c5 40
	bcs $d6d6                ; $d6e5: b0 ef
loc_d6e7:
	rts                      ; $d6e7: 60

; === Block $d6e8-$d6f3 (Code) ===
loc_d6e8:
	ldx $51                  ; $d6e8: a6 51
	lda $7140,x              ; $d6ea: bd 40 71
	and #$e0                 ; $d6ed: 29 e0
	cmp $54                  ; $d6ef: c5 54
	bne $d6d6                ; $d6f1: d0 e3
loc_d6f3:
	rts                      ; $d6f3: 60

; === Block $d6f4-$d70f (Code) ===
loc_d6f4:
	lda $0539                ; $d6f4: ad 39 05
	bpl $d720                ; $d6f7: 10 27
loc_d6f9:
	lda $52                  ; $d6f9: a5 52
	sec                      ; $d6fb: 38
	sbc $7c                  ; $d6fc: e5 7c
	sta $5f                  ; $d6fe: 85 5f
	cmp #$10                 ; $d700: c9 10
	bcs $d720                ; $d702: b0 1c
loc_d704:
	lda $53                  ; $d704: a5 53
	sec                      ; $d706: 38
	sbc $7b                  ; $d707: e5 7b
	sta $60                  ; $d709: 85 60
	cmp #$0f                 ; $d70b: c9 0f
	bcs $d720                ; $d70d: b0 11
loc_d70f:
	brk                      ; $d70f: 00

; === Block $d720-$d721 (Code) ===
loc_d720:
	clc                      ; $d720: 18
	rts                      ; $d721: 60

; === Block $d722-$d742 (Code) ===
loc_d722:
	ldx #$00                 ; $d722: a2 00
loc_d724:
	lda $6f60,x              ; $d724: bd 60 6f
	cmp $52                  ; $d727: c5 52
	bne $d732                ; $d729: d0 07
loc_d72b:
	lda $6f80,x              ; $d72b: bd 80 6f
	cmp $53                  ; $d72e: c5 53
	beq $d743                ; $d730: f0 11
loc_d732:
	inx                      ; $d732: e8
	cpx #$1e                 ; $d733: e0 1e
	bcs $d741                ; $d735: b0 0a
loc_d737:
	lda $6f60,x              ; $d737: bd 60 6f
	and $6f80,x              ; $d73a: 3d 80 6f
	cmp #$ff                 ; $d73d: c9 ff
	bne $d724                ; $d73f: d0 e3
loc_d741:
	clc                      ; $d741: 18
	rts                      ; $d742: 60

; === Block $d743-$d751 (Code) ===
loc_d743:
	cpx $51                  ; $d743: e4 51
	beq $d732                ; $d745: f0 eb
loc_d747:
	cpx #$06                 ; $d747: e0 06
	bcs $d751                ; $d749: b0 06
loc_d74b:
	lda $7020,x              ; $d74b: bd 20 70
	bmi $d732                ; $d74e: 30 e2
loc_d750:
	sec                      ; $d750: 38
loc_d751:
	rts                      ; $d751: 60

; === Block $d752-$d76d (Code) ===
loc_d752:
	ldx $51                  ; $d752: a6 51
	lda $7000,x              ; $d754: bd 00 70
	and #$03                 ; $d757: 29 03
	asl                      ; $d759: 0a
	tay                      ; $d75a: a8
	lda $d239,y              ; $d75b: b9 39 d2
	clc                      ; $d75e: 18
	adc $6f60,x              ; $d75f: 7d 60 6f
	sta $52                  ; $d762: 85 52
	lda $d23a,y              ; $d764: b9 3a d2
	clc                      ; $d767: 18
	adc $6f80,x              ; $d768: 7d 80 6f
	sta $53                  ; $d76b: 85 53
	rts                      ; $d76d: 60

; === Block $d76e-$d791 (Code) ===
loc_d76e:
	ldx $51                  ; $d76e: a6 51
	lda $7000,x              ; $d770: bd 00 70
	ora #$80                 ; $d773: 09 80
	sta $7000,x              ; $d775: 9d 00 70
	and #$01                 ; $d778: 29 01
	beq $d794                ; $d77a: f0 18
loc_d77c:
	ldy #$10                 ; $d77c: a0 10
	lda $7000,x              ; $d77e: bd 00 70
	and #$03                 ; $d781: 29 03
	cmp #$01                 ; $d783: c9 01
	beq $d789                ; $d785: f0 02
loc_d787:
	ldy #$f0                 ; $d787: a0 f0
loc_d789:
	tya                      ; $d789: 98
	clc                      ; $d78a: 18
	adc $71e0,x              ; $d78b: 7d e0 71
	sta $71e0,x              ; $d78e: 9d e0 71
	jmp $d7b7                ; $d791: 4c b7 d7

; === Block $d794-$d7b7 (Code) ===
loc_d794:
	ldy #$01                 ; $d794: a0 01
	lda $7000,x              ; $d796: bd 00 70
	and #$03                 ; $d799: 29 03
	cmp #$02                 ; $d79b: c9 02
	beq $d7a1                ; $d79d: f0 02
loc_d79f:
	ldy #$ff                 ; $d79f: a0 ff
loc_d7a1:
	sty $54                  ; $d7a1: 84 54
	lda $71e0,x              ; $d7a3: bd e0 71
	clc                      ; $d7a6: 18
	adc $54                  ; $d7a7: 65 54
	and #$0f                 ; $d7a9: 29 0f
	sta $54                  ; $d7ab: 85 54
	lda $71e0,x              ; $d7ad: bd e0 71
	and #$f0                 ; $d7b0: 29 f0
	ora $54                  ; $d7b2: 05 54
	sta $71e0,x              ; $d7b4: 9d e0 71

; === Block $d7b7-$d7c8 (Code) ===
loc_d7b7:
	lda $52                  ; $d7b7: a5 52
	sta $6f60,x              ; $d7b9: 9d 60 6f
	lda $53                  ; $d7bc: a5 53
	sta $6f80,x              ; $d7be: 9d 80 6f
	lda $7020,x              ; $d7c1: bd 20 70
	and #$10                 ; $d7c4: 29 10
	beq $d7d2                ; $d7c6: f0 0a

; === Block $d7c5-$d7d2 (Code) ===
entry_d7c5:
	bpl $d7b7                ; $d7c5: 10 f0
loc_d7c7:
	asl                      ; $d7c7: 0a
	lda $52                  ; $d7c8: a5 52
	sta $6fa0,x              ; $d7ca: 9d a0 6f
	lda $53                  ; $d7cd: a5 53
	sta $6fc0,x              ; $d7cf: 9d c0 6f
	jmp $d7fc                ; $d7d2: 4c fc d7

; === Block $d7e1-$d7f0 (Code) ===
entry_d7e1:
	jsr $d7f1                ; $d7e1: 20 f1 d7
loc_d7e4:
	jsr $d7f1                ; $d7e4: 20 f1 d7
loc_d7e7:
	jsr $d7f1                ; $d7e7: 20 f1 d7
loc_d7ea:
	jsr $d7f1                ; $d7ea: 20 f1 d7
loc_d7ed:
	jsr $d7f1                ; $d7ed: 20 f1 d7
loc_d7f0:
	rts                      ; $d7f0: 60

; === Block $d7f1-$d7f4 (Code) ===
loc_d7f1:
	lda $7020,x              ; $d7f1: bd 20 70

; === Block $d7f4-$d85c (Code) ===
entry_d7f4:
	cmp #$ff                 ; $d7f4: c9 ff
	beq $d861                ; $d7f6: f0 69
loc_d7f8:
	cpx #$1e                 ; $d7f8: e0 1e
	bcs $d861                ; $d7fa: b0 65
loc_d7fc:
	txa                      ; $d7fc: 8a
	pha                      ; $d7fd: 48
	lda $70e0,x              ; $d7fe: bd e0 70
	bpl $d857                ; $d801: 10 54
loc_d803:
	pla                      ; $d803: 68
	txa                      ; $d804: 8a
	pha                      ; $d805: 48
	lda $7000,x              ; $d806: bd 00 70
	pha                      ; $d809: 48
	and #$3c                 ; $d80a: 29 3c
	bne $d812                ; $d80c: d0 04
loc_d80e:
	cpx #$00                 ; $d80e: e0 00
	bne $d85d                ; $d810: d0 4b
loc_d812:
	jsr $c78c                ; $d812: 20 8c c7
loc_d815:
	lda $6fe0,x              ; $d815: bd e0 6f
	and #$0f                 ; $d818: 29 0f
	jsr $d864                ; $d81a: 20 64 d8
loc_d81d:
	ldx #$59                 ; $d81d: a2 59
	pla                      ; $d81f: 68
	and #$03                 ; $d820: 29 03
	jsr $d876                ; $d822: 20 76 d8
loc_d825:
	ldx $16                  ; $d825: a6 16
	lda $59                  ; $d827: a5 59
	sta $0201,x              ; $d829: 9d 01 02
	lda $5a                  ; $d82c: a5 5a
	ora #$00                 ; $d82e: 09 00
	sta $0202,x              ; $d830: 9d 02 02
	lda $5b                  ; $d833: a5 5b
	sta $0205,x              ; $d835: 9d 05 02
	lda $5c                  ; $d838: a5 5c
	ora #$00                 ; $d83a: 09 00
	sta $0206,x              ; $d83c: 9d 06 02
	lda $5d                  ; $d83f: a5 5d
	sta $0209,x              ; $d841: 9d 09 02
	lda $5e                  ; $d844: a5 5e
	ora #$00                 ; $d846: 09 00
	sta $020a,x              ; $d848: 9d 0a 02
	lda $5f                  ; $d84b: a5 5f
	sta $020d,x              ; $d84d: 9d 0d 02
	lda $60                  ; $d850: a5 60
	ora #$00                 ; $d852: 09 00
entry_d854:
	sta $020e,x              ; $d854: 9d 0e 02
loc_d857:
	pla                      ; $d857: 68
	clc                      ; $d858: 18
	adc #$06                 ; $d859: 69 06
	tax                      ; $d85b: aa
	rts                      ; $d85c: 60

; === Block $d85d-$d85e (Code) ===
loc_d85d:
	pla                      ; $d85d: 68
	jmp $d857                ; $d85e: 4c 57 d8

; === Block $d861-$d863 (Code) ===
loc_d861:
	pla                      ; $d861: 68
	pla                      ; $d862: 68
	rts                      ; $d863: 60

; === Block $d864-$d875 (Code) ===
loc_d864:
	pha                      ; $d864: 48
	lda #$00                 ; $d865: a9 00
	sta $4f                  ; $d867: 85 4f
	pla                      ; $d869: 68
	lsr                      ; $d86a: 4a
	ror $4f                  ; $d86b: 66 4f
	lsr                      ; $d86d: 4a
	ror $4f                  ; $d86e: 66 4f
	clc                      ; $d870: 18
	adc #$72                 ; $d871: 69 72
	sta $50                  ; $d873: 85 50
	rts                      ; $d875: 60

; === Block $d866-$d866 (Code) ===
entry_d866:
	brk                      ; $d866: 00

; === Block $d876-$d890 (Code) ===
loc_d876:
	and #$03                 ; $d876: 29 03
	asl                      ; $d878: 0a
	asl                      ; $d879: 0a
	asl                      ; $d87a: 0a
	asl                      ; $d87b: 0a
	ldy $0526                ; $d87c: ac 26 05
	bpl $d884                ; $d87f: 10 03
loc_d881:
	clc                      ; $d881: 18
	adc #$08                 ; $d882: 69 08
loc_d884:
	tay                      ; $d884: a8
	lda ($4f),y              ; $d885: b1 4f
	sta $00,x                ; $d887: 95 00
	inx                      ; $d889: e8
	iny                      ; $d88a: c8
	tya                      ; $d88b: 98
	and #$07                 ; $d88c: 29 07
	bne $d885                ; $d88e: d0 f5
loc_d890:
	rts                      ; $d890: 60

; === Block $d891-$d8b7 (Code) ===
loc_d891:
	ldx $51                  ; $d891: a6 51
	lda $7080,x              ; $d893: bd 80 70
	sta $4d                  ; $d896: 85 4d
	lda $7060,x              ; $d898: bd 60 70
	sta $4e                  ; $d89b: 85 4e
	ldy #$00                 ; $d89d: a0 00
	lda ($4d),y              ; $d89f: b1 4d
	sta $57                  ; $d8a1: 85 57
	bmi $d8ba                ; $d8a3: 30 15
loc_d8a5:
	cmp #$31                 ; $d8a5: c9 31
	bcc $d8ab                ; $d8a7: 90 02
loc_d8a9:
	lda #$00                 ; $d8a9: a9 00
loc_d8ab:
	asl                      ; $d8ab: 0a
	tay                      ; $d8ac: a8
	lda $df02,y              ; $d8ad: b9 02 df
	sta $52                  ; $d8b0: 85 52
	lda $df03,y              ; $d8b2: b9 03 df
	sta $53                  ; $d8b5: 85 53
	jmp ($0052)              ; $d8b7: 6c 52 00

; === Block $d8ba-$d8c8 (Code) ===
loc_d8ba:
	and #$7f                 ; $d8ba: 29 7f
	asl                      ; $d8bc: 0a
	tay                      ; $d8bd: a8
	lda $df64,y              ; $d8be: b9 64 df
	sta $52                  ; $d8c1: 85 52
	lda $df65,y              ; $d8c3: b9 65 df
	sta $53                  ; $d8c6: 85 53
	jmp ($0052)              ; $d8c8: 6c 52 00

; === Block $d94b-$d971 (Code) ===
loc_d94b:
	ldx $51                  ; $d94b: a6 51
	lda $7160,x              ; $d94d: bd 60 71
	beq $d99b                ; $d950: f0 49
loc_d952:
	dec $7160,x              ; $d952: de 60 71
	lda $7160,x              ; $d955: bd 60 71
	and #$07                 ; $d958: 29 07
	bne $d974                ; $d95a: d0 18
loc_d95c:
	lda $7160,x              ; $d95c: bd 60 71
	sec                      ; $d95f: 38
	sbc #$08                 ; $d960: e9 08
	and #$38                 ; $d962: 29 38
	cmp #$08                 ; $d964: c9 08
	beq $d97f                ; $d966: f0 17
loc_d968:
	sta $7160,x              ; $d968: 9d 60 71
	lsr                      ; $d96b: 4a
	lsr                      ; $d96c: 4a
	lsr                      ; $d96d: 4a
	ora $7160,x              ; $d96e: 1d 60 71
	jmp $d99d                ; $d971: 4c 9d d9

; === Block $d974-$d97c (Code) ===
loc_d974:
	lda $7020,x              ; $d974: bd 20 70
	and #$7f                 ; $d977: 29 7f
	sta $7020,x              ; $d979: 9d 20 70
	jmp $ddf0                ; $d97c: 4c f0 dd

; === Block $d97f-$d998 (Code) ===
loc_d97f:
	jsr $dde3                ; $d97f: 20 e3 dd
loc_d982:
	lda $57                  ; $d982: a5 57
	cmp #$09                 ; $d984: c9 09
	beq $d996                ; $d986: f0 0e
loc_d988:
	lda #$81                 ; $d988: a9 81
	sta $6f60,x              ; $d98a: 9d 60 6f
	sta $6f80,x              ; $d98d: 9d 80 6f
	sta $6fa0,x              ; $d990: 9d a0 6f
	sta $6fc0,x              ; $d993: 9d c0 6f
loc_d996:
	lda #$00                 ; $d996: a9 00
	jmp $d99d                ; $d998: 4c 9d d9

; === Block $d99b-$d9a0 (Code) ===
loc_d99b:
	lda #$36                 ; $d99b: a9 36
loc_d99d:
	sta $7160,x              ; $d99d: 9d 60 71

; === Block $d9a0-$d9a8 (Code) ===
loc_d9a0:
	lda $7020,x              ; $d9a0: bd 20 70
	ora #$80                 ; $d9a3: 09 80
	sta $7020,x              ; $d9a5: 9d 20 70
	jmp $ddf0                ; $d9a8: 4c f0 dd

; === Block $d9cb-$d9f8 (Code) ===
loc_d9cb:
	ldx $51                  ; $d9cb: a6 51
	lda $7160,x              ; $d9cd: bd 60 71
	beq $da06                ; $d9d0: f0 34
loc_d9d2:
	dec $7160,x              ; $d9d2: de 60 71
	lda $7160,x              ; $d9d5: bd 60 71
	and #$07                 ; $d9d8: 29 07
	bne $d974                ; $d9da: d0 98
loc_d9dc:
	lda $7160,x              ; $d9dc: bd 60 71
	clc                      ; $d9df: 18
	adc #$08                 ; $d9e0: 69 08
	and #$38                 ; $d9e2: 29 38
	cmp #$30                 ; $d9e4: c9 30
	bcs $d9fb                ; $d9e6: b0 13
loc_d9e8:
	ora #$80                 ; $d9e8: 09 80
	sta $7160,x              ; $d9ea: 9d 60 71
	and #$38                 ; $d9ed: 29 38
	lsr                      ; $d9ef: 4a
	lsr                      ; $d9f0: 4a
	lsr                      ; $d9f1: 4a
	ora $7160,x              ; $d9f2: 1d 60 71
	sta $7160,x              ; $d9f5: 9d 60 71
	jmp $d9a0                ; $d9f8: 4c a0 d9

; === Block $d9fb-$da03 (Code) ===
loc_d9fb:
	jsr $dde3                ; $d9fb: 20 e3 dd
loc_d9fe:
	lda #$00                 ; $d9fe: a9 00
	sta $7160,x              ; $da00: 9d 60 71
	jmp $d974                ; $da03: 4c 74 d9

; === Block $da06-$da0e (Code) ===
loc_da06:
	lda #$89                 ; $da06: a9 89
	sta $7160,x              ; $da08: 9d 60 71
	jsr $da11                ; $da0b: 20 11 da
loc_da0e:
	jmp $d974                ; $da0e: 4c 74 d9

; === Block $da11-$da1d (Code) ===
loc_da11:
	lda $6f60,x              ; $da11: bd 60 6f
	sta $6fa0,x              ; $da14: 9d a0 6f
	lda $6f80,x              ; $da17: bd 80 6f
	sta $6fc0,x              ; $da1a: 9d c0 6f
	rts                      ; $da1d: 60

; === Block $dde3-$dde6 (Code) ===
loc_dde3:
	jsr $dde7                ; $dde3: 20 e7 dd
loc_dde6:
	rts                      ; $dde6: 60

; === Block $dde7-$ddef (Code) ===
loc_dde7:
	inc $7080,x              ; $dde7: fe 80 70
	bne $ddef                ; $ddea: d0 03
loc_ddec:
	inc $7060,x              ; $ddec: fe 60 70
loc_ddef:
	rts                      ; $ddef: 60

; === Block $ddf0-$ddf2 (Code) ===
loc_ddf0:
	pla                      ; $ddf0: 68
	pla                      ; $ddf1: 68
	rts                      ; $ddf2: 60

; === Block $de16-$de16 (Code) ===
loc_de16:
	rts                      ; $de16: 60

; === Block $de3a-$de3f (Code) ===
loc_de3a:
	*nop #$70                ; $de3a: 80 70
	sta $70c0,x              ; $de3c: 9d c0 70

; === Block $de3d-$de3f (Code) ===
loc_de3d:
	cpy #$70                 ; $de3d: c0 70
	jmp $d891                ; $de3f: 4c 91 d8

; === Block $df6a-$df9e (Code) ===
entry_df6a:
	*jam                     ; $df6a: 42
	dec $de5d,x              ; $df6b: de 5d de
	adc $92de                ; $df6e: 6d de 92
	dec $decf,x              ; $df71: de cf de
	sbc $de                  ; $df74: e5 de
	sbc $de                  ; $df76: e5 de
	sbc $de                  ; $df78: e5 de
	lda $0507                ; $df7a: ad 07 05
	pha                      ; $df7d: 48
	lda $51                  ; $df7e: a5 51
	jsr $ff91                ; $df80: 20 91 ff
loc_df83:
	ldy #$00                 ; $df83: a0 00
	lda ($49),y              ; $df85: b1 49
	sta $98                  ; $df87: 85 98
	jsr $df9f                ; $df89: 20 9f df
loc_df8c:
	lda ($49),y              ; $df8c: b1 49
	sta $99                  ; $df8e: 85 99
	jsr $df9f                ; $df90: 20 9f df
loc_df93:
	lda ($49),y              ; $df93: b1 49
	sta $9a                  ; $df95: 85 9a
	jsr $df9f                ; $df97: 20 9f df
loc_df9a:
	pla                      ; $df9a: 68
	jsr $ff91                ; $df9b: 20 91 ff
loc_df9e:
	rts                      ; $df9e: 60

; === Block $df9f-$dfdb (Code) ===
loc_df9f:
	pha                      ; $df9f: 48
	inc $49                  ; $dfa0: e6 49
	bne $dfa6                ; $dfa2: d0 02
loc_dfa4:
	inc $4a                  ; $dfa4: e6 4a
loc_dfa6:
	lda $49                  ; $dfa6: a5 49
	cmp #$d8                 ; $dfa8: c9 d8
	bne $dfed                ; $dfaa: d0 41
loc_dfac:
	lda $4a                  ; $dfac: a5 4a
	cmp #$bf                 ; $dfae: c9 bf
	bne $dfed                ; $dfb0: d0 3b
loc_dfb2:
	inc $0507                ; $dfb2: ee 07 05
	inc $51                  ; $dfb5: e6 51
	lda $0507                ; $dfb7: ad 07 05
	pha                      ; $dfba: 48
	jsr $ff91                ; $dfbb: 20 91 ff
loc_dfbe:
	pla                      ; $dfbe: 68
	cmp #$05                 ; $dfbf: c9 05
	bcc $dfe5                ; $dfc1: 90 22
loc_dfc3:
	beq $dfde                ; $dfc3: f0 19
loc_dfc5:
	lda #$1b                 ; $dfc5: a9 1b
	sta $51                  ; $dfc7: 85 51
	jsr $ff91                ; $dfc9: 20 91 ff
loc_dfcc:
	lda $dfef                ; $dfcc: ad ef df
	asl                      ; $dfcf: 0a
	tax                      ; $dfd0: aa
	lda $8000,x              ; $dfd1: bd 00 80
	sta $49                  ; $dfd4: 85 49
	lda $8001,x              ; $dfd6: bd 01 80
	sta $4a                  ; $dfd9: 85 4a
	jmp $dfed                ; $dfdb: 4c ed df

; === Block $dfde-$dfe5 (Code) ===
loc_dfde:
	lda #$1a                 ; $dfde: a9 1a
	sta $51                  ; $dfe0: 85 51
	jsr $ff91                ; $dfe2: 20 91 ff

; === Block $dfe1-$dfee (Code) ===
entry_dfe1:
	eor ($20),y              ; $dfe1: 51 20
	sta ($ff),y              ; $dfe3: 91 ff
	lda #$80                 ; $dfe5: a9 80
	sta $4a                  ; $dfe7: 85 4a
	lda #$00                 ; $dfe9: a9 00
	sta $49                  ; $dfeb: 85 49
	pla                      ; $dfed: 68
	rts                      ; $dfee: 60

; === Block $e05e-$e061 (Code) ===
entry_e05e:
	pla                      ; $e05e: 68
	cpx #$20                 ; $e05f: e0 20
	rts                      ; $e061: 60

; === Block $e0c0-$e0c7 (Code) ===
loc_e0c0:
	lda $7020,x              ; $e0c0: bd 20 70
	cmp #$ff                 ; $e0c3: c9 ff
	bne $e0c8                ; $e0c5: d0 01
loc_e0c7:
	rts                      ; $e0c7: 60

; === Block $e0c8-$e0d9 (Code) ===
loc_e0c8:
	lda $7000,x              ; $e0c8: bd 00 70
	sta $e4                  ; $e0cb: 85 e4
	bmi $e0ea                ; $e0cd: 30 1b
loc_e0cf:
	lda $7020,x              ; $e0cf: bd 20 70
	and #$90                 ; $e0d2: 29 90
	beq $e0dc                ; $e0d4: f0 06
loc_e0d6:
	jsr $e160                ; $e0d6: 20 60 e1
loc_e0d9:
	jmp $e0df                ; $e0d9: 4c df e0

; === Block $e0dc-$e0e9 (Code) ===
loc_e0dc:
	jsr $e169                ; $e0dc: 20 69 e1
loc_e0df:
	lda $e4                  ; $e0df: a5 e4
	sta $7000,x              ; $e0e1: 9d 00 70
	inx                      ; $e0e4: e8
	cpx #$1e                 ; $e0e5: e0 1e
	bcc $e0c0                ; $e0e7: 90 d7
loc_e0e9:
	rts                      ; $e0e9: 60

; === Block $e0ea-$e109 (Code) ===
loc_e0ea:
	lda #$0f                 ; $e0ea: a9 0f
	sta $e3                  ; $e0ec: 85 e3
	ldy #$10                 ; $e0ee: a0 10
	lda $70e0,x              ; $e0f0: bd e0 70
	and #$40                 ; $e0f3: 29 40
	beq $e0fb                ; $e0f5: f0 04
loc_e0f7:
	ldy #$20                 ; $e0f7: a0 20
	lsr $e3                  ; $e0f9: 46 e3
loc_e0fb:
	sty $e2                  ; $e0fb: 84 e2
	lda $7020,x              ; $e0fd: bd 20 70
	sta $e5                  ; $e100: 85 e5
	and #$90                 ; $e102: 29 90
	beq $e10c                ; $e104: f0 06
loc_e106:
	jsr $e160                ; $e106: 20 60 e1
loc_e109:
	jmp $e12b                ; $e109: 4c 2b e1

; === Block $e10c-$e137 (Code) ===
loc_e10c:
	lda $e4                  ; $e10c: a5 e4
	jsr $e2ee                ; $e10e: 20 ee e2
loc_e111:
	lda $e5                  ; $e111: a5 e5
	and #$40                 ; $e113: 29 40
	beq $e128                ; $e115: f0 11
loc_e117:
	lda #$10                 ; $e117: a9 10
	sta $e2                  ; $e119: 85 e2
	lda $e5                  ; $e11b: a5 e5
	and #$20                 ; $e11d: 29 20
	beq $e123                ; $e11f: f0 02
loc_e121:
	asl $e2                  ; $e121: 06 e2
loc_e123:
	lda $e5                  ; $e123: a5 e5
	jsr $e2ee                ; $e125: 20 ee e2
loc_e128:
	jsr $e169                ; $e128: 20 69 e1
loc_e12b:
	lda $3c                  ; $e12b: a5 3c
	and $e3                  ; $e12d: 25 e3
	cmp $e3                  ; $e12f: c5 e3
	bne $e139                ; $e131: d0 06
loc_e133:
	lda $e4                  ; $e133: a5 e4
	and #$7f                 ; $e135: 29 7f

; === Block $e136-$e139 (Code) ===
loc_e136:
	*rra $e485,x             ; $e136: 7f 85 e4

; === Block $e137-$e143 (Code) ===
entry_e137:
	sta $e4                  ; $e137: 85 e4
	lda $e4                  ; $e139: a5 e4
	sta $7000,x              ; $e13b: 9d 00 70
	inx                      ; $e13e: e8
	cpx #$1e                 ; $e13f: e0 1e
	bcs $e146                ; $e141: b0 03
loc_e143:
	jmp $e0c0                ; $e143: 4c c0 e0

; === Block $e146-$e146 (Code) ===
loc_e146:
	rts                      ; $e146: 60

; === Block $e150-$e15d (Code) ===
entry_e150:
	beq $e1b7                ; $e150: f0 65
loc_e152:
	lda #$08                 ; $e152: a9 08
	sta $00                  ; $e154: 85 00
	lda #$07                 ; $e156: a9 07
	sta $01                  ; $e158: 85 01
	lda #$00                 ; $e15a: a9 00
	tax                      ; $e15c: aa
	jmp $e336                ; $e15d: 4c 36 e3

; === Block $e159-$e15b (Code) ===
entry_e159:
	ora ($a9,x)              ; $e159: 01 a9
	brk                      ; $e15b: 00

; === Block $e160-$e168 (Code) ===
loc_e160:
	lda $e4                  ; $e160: a5 e4
	and #$3c                 ; $e162: 29 3c
	sta $e2                  ; $e164: 85 e2
	bne $e1a9                ; $e166: d0 41
loc_e168:
	rts                      ; $e168: 60

; === Block $e169-$e178 (Code) ===
loc_e169:
	lda $e4                  ; $e169: a5 e4
	and #$3c                 ; $e16b: 29 3c
	sta $e2                  ; $e16d: 85 e2
	lda $7140,x              ; $e16f: bd 40 71
	and #$e0                 ; $e172: 29 e0
	cmp $46                  ; $e174: c5 46
	bne $e1a5                ; $e176: d0 2d

; === Block $e178-$e1b7 (Code) ===
loc_e178:
	lda $7120,x              ; $e178: bd 20 71
	sec                      ; $e17b: 38
	sbc $eb                  ; $e17c: e5 eb
	sta $e0                  ; $e17e: 85 e0
	lda $6fc0,x              ; $e180: bd c0 6f
	sbc $ed                  ; $e183: e5 ed
	sta $e1                  ; $e185: 85 e1
	and #$f0                 ; $e187: 29 f0
	beq $e199                ; $e189: f0 0e
loc_e18b:
	lda $e1                  ; $e18b: a5 e1
	cmp #$ff                 ; $e18d: c9 ff
	bne $e1a5                ; $e18f: d0 14
loc_e191:
	lda $e0                  ; $e191: a5 e0
	cmp #$40                 ; $e193: c9 40
	bcc $e1a5                ; $e195: 90 0e
loc_e197:
	bcs $e1d3                ; $e197: b0 3a
loc_e199:
	lda $e1                  ; $e199: a5 e1
	and #$0f                 ; $e19b: 29 0f
	cmp #$0f                 ; $e19d: c9 0f
	bcc $e1d3                ; $e19f: 90 32
loc_e1a1:
	lda $e0                  ; $e1a1: a5 e0
	beq $e1d3                ; $e1a3: f0 2e
loc_e1a5:
	lda $e2                  ; $e1a5: a5 e2
	beq $e1d1                ; $e1a7: f0 28
loc_e1a9:
	jsr $c78c                ; $e1a9: 20 8c c7
loc_e1ac:
	lda $e2                  ; $e1ac: a5 e2
	jsr $e4bb                ; $e1ae: 20 bb e4
loc_e1b1:
	lda $e4                  ; $e1b1: a5 e4
	and #$c3                 ; $e1b3: 29 c3
	sta $e4                  ; $e1b5: 85 e4

; === Block $e1b7-$e1d2 (Code) ===
loc_e1b7:
	lda #$f7                 ; $e1b7: a9 f7
	sta $0200,y              ; $e1b9: 99 00 02
	sta $0204,y              ; $e1bc: 99 04 02
	sta $0208,y              ; $e1bf: 99 08 02
	sta $020c,y              ; $e1c2: 99 0c 02
	sta $0203,y              ; $e1c5: 99 03 02
	sta $0207,y              ; $e1c8: 99 07 02
	sta $020b,y              ; $e1cb: 99 0b 02
	sta $020f,y              ; $e1ce: 99 0f 02
	clc                      ; $e1d1: 18
	rts                      ; $e1d2: 60

; === Block $e1d3-$e20b (Code) ===
loc_e1d3:
	lda $7100,x              ; $e1d3: bd 00 71
	sec                      ; $e1d6: 38
	sbc $ea                  ; $e1d7: e5 ea
	sta $de                  ; $e1d9: 85 de
	lda $6fa0,x              ; $e1db: bd a0 6f
	sbc $ec                  ; $e1de: e5 ec
	sta $df                  ; $e1e0: 85 df
	and #$f0                 ; $e1e2: 29 f0
	beq $e24d                ; $e1e4: f0 67
loc_e1e6:
	lda $df                  ; $e1e6: a5 df
	cmp #$ff                 ; $e1e8: c9 ff
	bne $e1a5                ; $e1ea: d0 b9
loc_e1ec:
	lda $de                  ; $e1ec: a5 de
	bpl $e1a5                ; $e1ee: 10 b5
loc_e1f0:
	sta $e6                  ; $e1f0: 85 e6
	lda $e2                  ; $e1f2: a5 e2
	bne $e20e                ; $e1f4: d0 18
loc_e1f6:
	jsr $e45c                ; $e1f6: 20 5c e4
loc_e1f9:
	sta $e2                  ; $e1f9: 85 e2
	lda $e4                  ; $e1fb: a5 e4
	and #$c3                 ; $e1fd: 29 c3
	ora $e2                  ; $e1ff: 05 e2
	sta $e4                  ; $e201: 85 e4
	lda $e2                  ; $e203: a5 e2
	jsr $c78c                ; $e205: 20 8c c7
loc_e208:
	jsr $e368                ; $e208: 20 68 e3
loc_e20b:
	jmp $e211                ; $e20b: 4c 11 e2

; === Block $e20e-$e24c (Code) ===
loc_e20e:
	jsr $c78c                ; $e20e: 20 8c c7
loc_e211:
	lda $e6                  ; $e211: a5 e6
	lsr                      ; $e213: 4a
	lsr                      ; $e214: 4a
	lsr                      ; $e215: 4a
	lsr                      ; $e216: 4a
	ora #$f8                 ; $e217: 09 f8
	clc                      ; $e219: 18
	adc #$08                 ; $e21a: 69 08
	sta $0207,y              ; $e21c: 99 07 02
	sta $020f,y              ; $e21f: 99 0f 02
	lda $e0                  ; $e222: a5 e0
	lsr $e1                  ; $e224: 46 e1
	ror                      ; $e226: 6a
	lsr $e1                  ; $e227: 46 e1
	ror                      ; $e229: 6a
	lsr $e1                  ; $e22a: 46 e1
	ror                      ; $e22c: 6a
	lsr $e1                  ; $e22d: 46 e1
	ror                      ; $e22f: 6a
	sec                      ; $e230: 38
	sbc $07bc                ; $e231: ed bc 07
	sta $0204,y              ; $e234: 99 04 02
	clc                      ; $e237: 18
	adc #$08                 ; $e238: 69 08
	sta $020c,y              ; $e23a: 99 0c 02
	lda #$f7                 ; $e23d: a9 f7
	sta $0200,y              ; $e23f: 99 00 02
	sta $0208,y              ; $e242: 99 08 02
	sta $0203,y              ; $e245: 99 03 02
	sta $020b,y              ; $e248: 99 0b 02
	sec                      ; $e24b: 38
	rts                      ; $e24c: 60

; === Block $e24d-$e266 (Code) ===
loc_e24d:
	lda $e2                  ; $e24d: a5 e2
	bne $e269                ; $e24f: d0 18
loc_e251:
	jsr $e45c                ; $e251: 20 5c e4
loc_e254:
	sta $e2                  ; $e254: 85 e2
	lda $e4                  ; $e256: a5 e4
	and #$c3                 ; $e258: 29 c3
	ora $e2                  ; $e25a: 05 e2
	sta $e4                  ; $e25c: 85 e4
	lda $e2                  ; $e25e: a5 e2
	jsr $c78c                ; $e260: 20 8c c7
loc_e263:
	jsr $e368                ; $e263: 20 68 e3
loc_e266:
	jmp $e26c                ; $e266: 4c 6c e2

; === Block $e269-$e2ad (Code) ===
loc_e269:
	jsr $c78c                ; $e269: 20 8c c7
loc_e26c:
	lda $df                  ; $e26c: a5 df
	cmp #$0f                 ; $e26e: c9 0f
	bne $e2ae                ; $e270: d0 3c
loc_e272:
	lda $de                  ; $e272: a5 de
	bpl $e2ae                ; $e274: 10 38
loc_e276:
	lsr                      ; $e276: 4a
	lsr                      ; $e277: 4a
	lsr                      ; $e278: 4a
	lsr                      ; $e279: 4a
	clc                      ; $e27a: 18
	adc #$f0                 ; $e27b: 69 f0
	sta $0203,y              ; $e27d: 99 03 02
	sta $020b,y              ; $e280: 99 0b 02
	lda $e0                  ; $e283: a5 e0
	lsr $e1                  ; $e285: 46 e1
	ror                      ; $e287: 6a
	lsr $e1                  ; $e288: 46 e1
	ror                      ; $e28a: 6a
	lsr $e1                  ; $e28b: 46 e1
	ror                      ; $e28d: 6a
	lsr $e1                  ; $e28e: 46 e1
	ror                      ; $e290: 6a
	sec                      ; $e291: 38
	sbc $07bc                ; $e292: ed bc 07
	sta $0200,y              ; $e295: 99 00 02
	clc                      ; $e298: 18
	adc #$08                 ; $e299: 69 08
	sta $0208,y              ; $e29b: 99 08 02
	lda #$f7                 ; $e29e: a9 f7
	sta $0204,y              ; $e2a0: 99 04 02
	sta $020c,y              ; $e2a3: 99 0c 02
	sta $0207,y              ; $e2a6: 99 07 02
	sta $020f,y              ; $e2a9: 99 0f 02
	sec                      ; $e2ac: 38
	rts                      ; $e2ad: 60

; === Block $e2ae-$e2ed (Code) ===
loc_e2ae:
	lda $de                  ; $e2ae: a5 de
	lsr $df                  ; $e2b0: 46 df
	ror                      ; $e2b2: 6a
	lsr $df                  ; $e2b3: 46 df
	ror                      ; $e2b5: 6a
	lsr $df                  ; $e2b6: 46 df
	ror                      ; $e2b8: 6a
	lsr $df                  ; $e2b9: 46 df
	ror                      ; $e2bb: 6a
	sta $0203,y              ; $e2bc: 99 03 02
	sta $020b,y              ; $e2bf: 99 0b 02
	clc                      ; $e2c2: 18
	adc #$08                 ; $e2c3: 69 08
	sta $0207,y              ; $e2c5: 99 07 02
	sta $020f,y              ; $e2c8: 99 0f 02
	lda $e0                  ; $e2cb: a5 e0
	lsr $e1                  ; $e2cd: 46 e1
	ror                      ; $e2cf: 6a
	lsr $e1                  ; $e2d0: 46 e1
	ror                      ; $e2d2: 6a
	lsr $e1                  ; $e2d3: 46 e1
	ror                      ; $e2d5: 6a
	lsr $e1                  ; $e2d6: 46 e1
	ror                      ; $e2d8: 6a
	sec                      ; $e2d9: 38
	sbc $07bc                ; $e2da: ed bc 07
	sta $0200,y              ; $e2dd: 99 00 02
	sta $0204,y              ; $e2e0: 99 04 02
	clc                      ; $e2e3: 18
	adc #$08                 ; $e2e4: 69 08
	sta $0208,y              ; $e2e6: 99 08 02
	sta $020c,y              ; $e2e9: 99 0c 02
	sec                      ; $e2ec: 38
	rts                      ; $e2ed: 60

; === Block $e2ee-$e300 (Code) ===
loc_e2ee:
	and #$03                 ; $e2ee: 29 03
	bne $e301                ; $e2f0: d0 0f
loc_e2f2:
	lda $7120,x              ; $e2f2: bd 20 71
	sec                      ; $e2f5: 38
	sbc $e2                  ; $e2f6: e5 e2
	sta $7120,x              ; $e2f8: 9d 20 71
	bcs $e300                ; $e2fb: b0 03
loc_e2fd:
	dec $6fc0,x              ; $e2fd: de c0 6f
loc_e300:
	rts                      ; $e300: 60

; === Block $e301-$e313 (Code) ===
loc_e301:
	cmp #$01                 ; $e301: c9 01
	bne $e314                ; $e303: d0 0f
loc_e305:
	lda $7100,x              ; $e305: bd 00 71
	clc                      ; $e308: 18
	adc $e2                  ; $e309: 65 e2
	sta $7100,x              ; $e30b: 9d 00 71
	bcc $e313                ; $e30e: 90 03
loc_e310:
	inc $6fa0,x              ; $e310: fe a0 6f
loc_e313:
	rts                      ; $e313: 60

; === Block $e314-$e326 (Code) ===
loc_e314:
	cmp #$02                 ; $e314: c9 02
	bne $e327                ; $e316: d0 0f
loc_e318:
	lda $7120,x              ; $e318: bd 20 71
	clc                      ; $e31b: 18
	adc $e2                  ; $e31c: 65 e2
	sta $7120,x              ; $e31e: 9d 20 71
	bcc $e326                ; $e321: 90 03
loc_e323:
	inc $6fc0,x              ; $e323: fe c0 6f
loc_e326:
	rts                      ; $e326: 60

; === Block $e327-$e335 (Code) ===
loc_e327:
	lda $7100,x              ; $e327: bd 00 71
	sec                      ; $e32a: 38
	sbc $e2                  ; $e32b: e5 e2
	sta $7100,x              ; $e32d: 9d 00 71
	bcs $e335                ; $e330: b0 03
loc_e332:
	dec $6fa0,x              ; $e332: de a0 6f
loc_e335:
	rts                      ; $e335: 60

; === Block $e336-$e358 (Code) ===
loc_e336:
	jsr $c78c                ; $e336: 20 8c c7
loc_e339:
	lda $00                  ; $e339: a5 00
	asl                      ; $e33b: 0a
	asl                      ; $e33c: 0a
	asl                      ; $e33d: 0a
	asl                      ; $e33e: 0a
	sta $0203,y              ; $e33f: 99 03 02
	sta $020b,y              ; $e342: 99 0b 02
	clc                      ; $e345: 18
	adc #$08                 ; $e346: 69 08
	sta $0207,y              ; $e348: 99 07 02
	sta $020f,y              ; $e34b: 99 0f 02
	lda $01                  ; $e34e: a5 01
	asl                      ; $e350: 0a
	asl                      ; $e351: 0a
	asl                      ; $e352: 0a
	asl                      ; $e353: 0a
	sec                      ; $e354: 38
	sbc $07bc                ; $e355: ed bc 07

; === Block $e358-$e367 (Code) ===
entry_e358:
	sta $0200,y              ; $e358: 99 00 02
	sta $0204,y              ; $e35b: 99 04 02
	clc                      ; $e35e: 18
	adc #$08                 ; $e35f: 69 08
	sta $0208,y              ; $e361: 99 08 02
	sta $020c,y              ; $e364: 99 0c 02
	rts                      ; $e367: 60

; === Block $e368-$e3d0 (Code) ===
loc_e368:
	txa                      ; $e368: 8a
	pha                      ; $e369: 48
	tya                      ; $e36a: 98
	pha                      ; $e36b: 48
	lda $e3e0                ; $e36c: ad e0 e3
	sta $02                  ; $e36f: 85 02
	lda $e3e1                ; $e371: ad e1 e3
	sta $03                  ; $e374: 85 03
	lda #$00                 ; $e376: a9 00
	sta $00                  ; $e378: 85 00
	lda $6fe0,x              ; $e37a: bd e0 6f
	and #$0f                 ; $e37d: 29 0f
	lsr                      ; $e37f: 4a
	ror $00                  ; $e380: 66 00
	lsr                      ; $e382: 4a
	ror $00                  ; $e383: 66 00
	sta $01                  ; $e385: 85 01
	lda $7000,x              ; $e387: bd 00 70
	and #$03                 ; $e38a: 29 03
	asl                      ; $e38c: 0a
	asl                      ; $e38d: 0a
	asl                      ; $e38e: 0a
	asl                      ; $e38f: 0a
	clc                      ; $e390: 18
	adc $00                  ; $e391: 65 00
	sta $00                  ; $e393: 85 00
	lda $01                  ; $e395: a5 01
	adc #$00                 ; $e397: 69 00
	sta $01                  ; $e399: 85 01
	clc                      ; $e39b: 18
	lda $00                  ; $e39c: a5 00
	adc $02                  ; $e39e: 65 02
	sta $02                  ; $e3a0: 85 02
	lda $01                  ; $e3a2: a5 01
	adc $03                  ; $e3a4: 65 03
	sta $03                  ; $e3a6: 85 03
	ldy #$00                 ; $e3a8: a0 00
	ldx $16                  ; $e3aa: a6 16
	lda ($02),y              ; $e3ac: b1 02
	sta $0201,x              ; $e3ae: 9d 01 02
	iny                      ; $e3b1: c8
	lda ($02),y              ; $e3b2: b1 02
	sta $0202,x              ; $e3b4: 9d 02 02
	iny                      ; $e3b7: c8
	lda ($02),y              ; $e3b8: b1 02
	sta $0205,x              ; $e3ba: 9d 05 02
	iny                      ; $e3bd: c8
	lda ($02),y              ; $e3be: b1 02
	sta $0206,x              ; $e3c0: 9d 06 02
	iny                      ; $e3c3: c8
	lda ($02),y              ; $e3c4: b1 02
	sta $0209,x              ; $e3c6: 9d 09 02
	iny                      ; $e3c9: c8
	lda ($02),y              ; $e3ca: b1 02
	sta $020a,x              ; $e3cc: 9d 0a 02
	iny                      ; $e3cf: c8

; === Block $e3e2-$e3ec (Code) ===
loc_e3e2:
	lda $07bb                ; $e3e2: ad bb 07
	and #$7f                 ; $e3e5: 29 7f
	sta $07bb                ; $e3e7: 8d bb 07
	ldx #$01                 ; $e3ea: a2 01

; === Block $e3ec-$e3fa (Code) ===
loc_e3ec:
	lda $7020,x              ; $e3ec: bd 20 70
	cmp #$ff                 ; $e3ef: c9 ff
	beq $e402                ; $e3f1: f0 0f
loc_e3f3:
	lda $70e0,x              ; $e3f3: bd e0 70
	and #$20                 ; $e3f6: 29 20
	beq $e3fd                ; $e3f8: f0 03

; === Block $e3f2-$e418 (Code) ===
entry_e3f2:
	*slo $e0bd               ; $e3f2: 0f bd e0
	bvs $e420                ; $e3f5: 70 29
loc_e3f7:
	jsr $03f0                ; $e3f7: 20 f0 03
loc_e3fa:
	jsr $e419                ; $e3fa: 20 19 e4
loc_e3fd:
	inx                      ; $e3fd: e8
	cpx #$1e                 ; $e3fe: e0 1e
	bcc $e3ec                ; $e400: 90 ea
loc_e402:
	ldx #$01                 ; $e402: a2 01
	lda $7020,x              ; $e404: bd 20 70
	cmp #$ff                 ; $e407: c9 ff
	beq $e418                ; $e409: f0 0d
loc_e40b:
	lda $70e0,x              ; $e40b: bd e0 70
	and #$df                 ; $e40e: 29 df
	sta $70e0,x              ; $e410: 9d e0 70
	inx                      ; $e413: e8
	cpx #$1e                 ; $e414: e0 1e
	bcc $e404                ; $e416: 90 ec
loc_e418:
	rts                      ; $e418: 60

; === Block $e419-$e420 (Code) ===
loc_e419:
	ldy #$01                 ; $e419: a0 01
loc_e41b:
	lda $7020,y              ; $e41b: b9 20 70
	cmp #$ff                 ; $e41e: c9 ff

; === Block $e420-$e437 (Code) ===
loc_e420:
	beq $e435                ; $e420: f0 13
loc_e422:
	lda $70e0,y              ; $e422: b9 e0 70
	and #$20                 ; $e425: 29 20
	bne $e430                ; $e427: d0 07
loc_e429:
	lda $7000,y              ; $e429: b9 00 70
	and #$3c                 ; $e42c: 29 3c
	bne $e43a                ; $e42e: d0 0a
loc_e430:
	iny                      ; $e430: c8
	cpy #$1e                 ; $e431: c0 1e
	bcc $e41b                ; $e433: 90 e6
loc_e435:
	pla                      ; $e435: 68
	pla                      ; $e436: 68
	jmp $e402                ; $e437: 4c 02 e4

; === Block $e43a-$e44c (Code) ===
loc_e43a:
	jsr $e4bb                ; $e43a: 20 bb e4
loc_e43d:
	lda $7000,y              ; $e43d: b9 00 70
	and #$c3                 ; $e440: 29 c3
	sta $7000,y              ; $e442: 99 00 70
	lda $7000,x              ; $e445: bd 00 70
	sta $e4                  ; $e448: 85 e4
	lda #$00                 ; $e44a: a9 00

; === Block $e44c-$e45b (Code) ===
entry_e44c:
	sta $e2                  ; $e44c: 85 e2
	jsr $e178                ; $e44e: 20 78 e1
loc_e451:
	bcc $e456                ; $e451: 90 03
loc_e453:
	jsr $e368                ; $e453: 20 68 e3
loc_e456:
	lda $e4                  ; $e456: a5 e4
	sta $7000,x              ; $e458: 9d 00 70
	rts                      ; $e45b: 60

; === Block $e45c-$e480 (Code) ===
loc_e45c:
	lda $61                  ; $e45c: a5 61
	cmp #$ff                 ; $e45e: c9 ff
	beq $e481                ; $e460: f0 1f
loc_e462:
	lda #$02                 ; $e462: a9 02
	sta $01                  ; $e464: 85 01
	lda #$01                 ; $e466: a9 01
	sta $00                  ; $e468: 85 00
	lda $61                  ; $e46a: a5 61
	lsr                      ; $e46c: 4a
	lsr                      ; $e46d: 4a
	bcc $e476                ; $e46e: 90 06
loc_e470:
	asl $01                  ; $e470: 06 01
	inc $00                  ; $e472: e6 00
	bne $e46d                ; $e474: d0 f7
loc_e476:
	lda $61                  ; $e476: a5 61
	ora $01                  ; $e478: 05 01
	sta $61                  ; $e47a: 85 61
	lda $00                  ; $e47c: a5 00
	asl                      ; $e47e: 0a
	asl                      ; $e47f: 0a
	rts                      ; $e480: 60

; === Block $e481-$e4a7 (Code) ===
loc_e481:
	lda $62                  ; $e481: a5 62
	cmp #$ff                 ; $e483: c9 ff
	beq $e4a8                ; $e485: f0 21
loc_e487:
	lda #$01                 ; $e487: a9 01
	sta $01                  ; $e489: 85 01
	lda #$00                 ; $e48b: a9 00
	sta $00                  ; $e48d: 85 00
	lda $62                  ; $e48f: a5 62
	lsr                      ; $e491: 4a
	bcc $e49a                ; $e492: 90 06
loc_e494:
	asl $01                  ; $e494: 06 01
	inc $00                  ; $e496: e6 00
	bne $e491                ; $e498: d0 f7
loc_e49a:
	lda $62                  ; $e49a: a5 62
	ora $01                  ; $e49c: 05 01
	sta $62                  ; $e49e: 85 62
	lda $00                  ; $e4a0: a5 00
	asl                      ; $e4a2: 0a
	asl                      ; $e4a3: 0a
	clc                      ; $e4a4: 18
	adc #$20                 ; $e4a5: 69 20
	rts                      ; $e4a7: 60

; === Block $e4a8-$e4ba (Code) ===
loc_e4a8:
	lda $07bb                ; $e4a8: ad bb 07
	ora #$80                 ; $e4ab: 09 80
	sta $07bb                ; $e4ad: 8d bb 07
	lda $70e0,x              ; $e4b0: bd e0 70
	ora #$20                 ; $e4b3: 09 20
	sta $70e0,x              ; $e4b5: 9d e0 70
	pla                      ; $e4b8: 68
	pla                      ; $e4b9: 68
	rts                      ; $e4ba: 60

; === Block $e4bb-$e4d0 (Code) ===
loc_e4bb:
	sta $00                  ; $e4bb: 85 00
	cmp #$20                 ; $e4bd: c9 20
	bcs $e4dc                ; $e4bf: b0 1b
loc_e4c1:
	lda #$02                 ; $e4c1: a9 02
	sta $01                  ; $e4c3: 85 01
	lda $00                  ; $e4c5: a5 00
	cmp #$04                 ; $e4c7: c9 04
	beq $e4d3                ; $e4c9: f0 08
loc_e4cb:
	asl $01                  ; $e4cb: 06 01
	sec                      ; $e4cd: 38
	sbc #$04                 ; $e4ce: e9 04
	jmp $e4c7                ; $e4d0: 4c c7 e4

; === Block $e4d3-$e4db (Code) ===
loc_e4d3:
	lda $01                  ; $e4d3: a5 01
	eor #$ff                 ; $e4d5: 49 ff
	and $61                  ; $e4d7: 25 61
	sta $61                  ; $e4d9: 85 61
	rts                      ; $e4db: 60

; === Block $e4dc-$e4e2 (Code) ===
loc_e4dc:
	lda #$01                 ; $e4dc: a9 01
	sta $01                  ; $e4de: 85 01
	lda $00                  ; $e4e0: a5 00

; === Block $e4e2-$e4e6 (Code) ===
loc_e4e2:
	cmp #$20                 ; $e4e2: c9 20
	beq $e4ed                ; $e4e4: f0 07

; === Block $e4e6-$e4f5 (Code) ===
entry_e4e6:
	asl $01                  ; $e4e6: 06 01
	sec                      ; $e4e8: 38
	sbc #$04                 ; $e4e9: e9 04
	bne $e4e2                ; $e4eb: d0 f5
loc_e4ed:
	lda $01                  ; $e4ed: a5 01
	eor #$ff                 ; $e4ef: 49 ff
entry_e4f1:
	and $62                  ; $e4f1: 25 62
	sta $62                  ; $e4f3: 85 62
	rts                      ; $e4f5: 60

; === Block $e54b-$e55c (Code) ===
loc_e54b:
	php                      ; $e54b: 08
	sta $07ca                ; $e54c: 8d ca 07
	lda $e55f                ; $e54f: ad 5f e5
	sta $6cdc                ; $e552: 8d dc 6c
	lda $e560                ; $e555: ad 60 e5
	sta $6cdd                ; $e558: 8d dd 6c
	plp                      ; $e55b: 28
	jmp $6cad                ; $e55c: 4c ad 6c

; === Block $e561-$e572 (Code) ===
loc_e561:
	php                      ; $e561: 08
	sta $07ca                ; $e562: 8d ca 07
	lda $e575                ; $e565: ad 75 e5
	sta $6cdc                ; $e568: 8d dc 6c
	lda $e576                ; $e56b: ad 76 e5
	sta $6cdd                ; $e56e: 8d dd 6c
	plp                      ; $e571: 28
	jmp $6cad                ; $e572: 4c ad 6c

; === Block $e58d-$e59e (Code) ===
loc_e58d:
	php                      ; $e58d: 08
	sta $07ca                ; $e58e: 8d ca 07
	lda $e5a1                ; $e591: ad a1 e5
	sta $6cdc                ; $e594: 8d dc 6c
	lda $e5a2                ; $e597: ad a2 e5
	sta $6cdd                ; $e59a: 8d dd 6c
	plp                      ; $e59d: 28
	jmp $6cad                ; $e59e: 4c ad 6c

; === Block $e5b9-$e5ca (Code) ===
loc_e5b9:
	php                      ; $e5b9: 08
	sta $07ca                ; $e5ba: 8d ca 07
	lda $e5cd                ; $e5bd: ad cd e5
	sta $6cdc                ; $e5c0: 8d dc 6c
	lda $e5ce                ; $e5c3: ad ce e5
	sta $6cdd                ; $e5c6: 8d dd 6c
	plp                      ; $e5c9: 28
	jmp $6cad                ; $e5ca: 4c ad 6c

; === Block $e5e5-$e5e9 (Code) ===
loc_e5e5:
	php                      ; $e5e5: 08
	sta $07ca                ; $e5e6: 8d ca 07

; === Block $e729-$e738 (Code) ===
entry_e729:
	cmp #$ff                 ; $e729: c9 ff
	bne $e738                ; $e72b: d0 0b
loc_e72d:
	lda $bb                  ; $e72d: a5 bb
	and #$20                 ; $e72f: 29 20
	bne $e738                ; $e731: d0 05
loc_e733:
	lda #$30                 ; $e733: a9 30
	sta $400c                ; $e735: 8d 0c 40 NOISE_VOL
loc_e738:
	rts                      ; $e738: 60

; === Block $e761-$e770 (Code) ===
entry_e761:
	and $eaf1,y              ; $e761: 39 f1 ea
	beq $e770                ; $e764: f0 0a
loc_e766:
	lda #$0f                 ; $e766: a9 0f
	sta $4015                ; $e768: 8d 15 40 SND_CHN
	ldx $a4                  ; $e76b: a6 a4
	ldy $ec7f,x              ; $e76d: bc 7f ec
loc_e770:
	rts                      ; $e770: 60

; === Block $e76c-$e77b (Code) ===
entry_e76c:
	ldy $bc                  ; $e76c: a4 bc
	*rra $60ec,x             ; $e76e: 7f ec 60
	ldx $a5                  ; $e771: a6 a5
	lda ($a6,x)              ; $e773: a1 a6
	inc $a6,x                ; $e775: f6 a6
	bne $e77b                ; $e777: d0 02
loc_e779:
	inc $a7,x                ; $e779: f6 a7
loc_e77b:
	rts                      ; $e77b: 60

; === Block $eaec-$eaf0 (Code) ===
entry_eaec:
	ldy $85,x                ; $eaec: b4 85
	ldy $60,x                ; $eaee: b4 60
	brk                      ; $eaf0: 00

; === Block $ebaa-$ebaa (Code) ===
loc_ebaa:
	brk                      ; $ebaa: 00

; === Block $ec49-$ec4f (Code) ===
entry_ec49:
	asl $dd                  ; $ec49: 06 dd
	and ($06,x)              ; $ec4b: 21 06
	beq $ec50                ; $ec4d: f0 01
loc_ec4f:
	rts                      ; $ec4f: 60

; === Block $ec50-$ec6f (Code) ===
loc_ec50:
	ldy $a4                  ; $ec50: a4 a4
	lda $b4                  ; $ec52: a5 b4
	and $eaf1,y              ; $ec54: 39 f1 ea
	beq $ec7e                ; $ec57: f0 25
loc_ec59:
	lda $0646,y              ; $ec59: b9 46 06
	cmp #$ff                 ; $ec5c: c9 ff
	beq $ec7e                ; $ec5e: f0 1e
loc_ec60:
	jsr $ed4b                ; $ec60: 20 4b ed
loc_ec63:
	lda $ec85,x              ; $ec63: bd 85 ec
	sta $10                  ; $ec66: 85 10
	lda $ec86,x              ; $ec68: bd 86 ec
	sta $11                  ; $ec6b: 85 11
	ldx $a4                  ; $ec6d: a6 a4

; === Block $ec7e-$ec7e (Code) ===
loc_ec7e:
	rts                      ; $ec7e: 60

; === Block $ed3b-$ed68 (Code) ===
entry_ed3b:
	*rla ($00,x)             ; $ed3b: 23 00
	and ($00,x)              ; $ed3d: 21 00
	jsr $2000                ; $ed3f: 20 00 20 PPUCTRL
loc_ed42:
	brk                      ; $ed42: 00 Bank call: bank 0, Bank0_Func20
	.byte $20                ; $ed43: 20 Function index
	.byte $00                ; $ed44: 00 Target bank
	jsr $2000                ; $ed45: 20 00 20 PPUCTRL
loc_ed48:
	brk                      ; $ed48: 00 Bank call: bank 0, Bank0_Func20
	.byte $20                ; $ed49: 20 Function index
	.byte $00                ; $ed4a: 00 Target bank
	clc                      ; $ed4b: 18
	adc #$03                 ; $ed4c: 69 03
	cpy #$04                 ; $ed4e: c0 04
	bcs $ed66                ; $ed50: b0 14
loc_ed52:
	clc                      ; $ed52: 18
	ldx $a5                  ; $ed53: a6 a5
	adc $6bfe,x              ; $ed55: 7d fe 6b
	cpx #$04                 ; $ed58: e0 04
	bne $ed66                ; $ed5a: d0 0a
loc_ed5c:
	cmp #$39                 ; $ed5c: c9 39
	bcc $ed66                ; $ed5e: 90 06
loc_ed60:
	sec                      ; $ed60: 38
	sbc #$39                 ; $ed61: e9 39
	clc                      ; $ed63: 18
	adc #$4e                 ; $ed64: 69 4e
loc_ed66:
	asl                      ; $ed66: 0a
	tax                      ; $ed67: aa
	rts                      ; $ed68: 60

; === Block $ed59-$ed5c (Code) ===
entry_ed59:
	*nop $d0                 ; $ed59: 04 d0
	asl                      ; $ed5b: 0a

; === Block $edb3-$edd8 (Code) ===
loc_edb3:
	*nop                     ; $edb3: fa
	*arr #$c9                ; $edb4: 6b c9
	*isc $25f0,x             ; $edb6: ff f0 25 PPUCTRL
	ora #$00                 ; $edb9: 09 00
	bne $edc1                ; $edbb: d0 04
loc_edbd:
	lda $10                  ; $edbd: a5 10
	ora #$30                 ; $edbf: 09 30
loc_edc1:
	pha                      ; $edc1: 48
	and #$f0                 ; $edc2: 29 f0
	sta $a2                  ; $edc4: 85 a2
	pla                      ; $edc6: 68
	and #$0f                 ; $edc7: 29 0f
	tax                      ; $edc9: aa
	inx                      ; $edca: e8
	stx $10                  ; $edcb: 86 10
	ldx $a5                  ; $edcd: a6 a5
	lda $b0                  ; $edcf: a5 b0
	and #$0f                 ; $edd1: 29 0f
	sta $11                  ; $edd3: 85 11
	jsr $ee8e                ; $edd5: 20 8e ee
loc_edd8:
	jmp $ee68                ; $edd8: 4c 68 ee

; === Block $ee1d-$ee3e (Code) ===
loc_ee1d:
	asl $b1                  ; $ee1d: 06 b1
	ldy #$c9                 ; $ee1f: a0 c9
	bpl $edb3                ; $ee21: 10 90
loc_ee23:
	asl $c9                  ; $ee23: 06 c9
	cpy #$b0                 ; $ee25: c0 b0
	plp                      ; $ee27: 28
	bcc $ee58                ; $ee28: 90 2e
loc_ee2a:
	asl                      ; $ee2a: 0a
	asl                      ; $ee2b: 0a
	asl                      ; $ee2c: 0a
	asl                      ; $ee2d: 0a
	pha                      ; $ee2e: 48
	lda $6bfd,x              ; $ee2f: bd fd 6b
	and #$0f                 ; $ee32: 29 0f
	sta $6bfd,x              ; $ee34: 9d fd 6b
	pla                      ; $ee37: 68
	ora $6bfd,x              ; $ee38: 1d fd 6b
	sta $6bfd,x              ; $ee3b: 9d fd 6b
	rts                      ; $ee3e: 60

; === Block $ee58-$ee78 (Code) ===
loc_ee58:
	inc $063c,x              ; $ee58: fe 3c 06
	sta $a2                  ; $ee5b: 85 a2
	cpx #$08                 ; $ee5d: e0 08
	beq $ee6a                ; $ee5f: f0 09
loc_ee61:
	and #$0f                 ; $ee61: 29 0f
	sta $11                  ; $ee63: 85 11
	jsr $ee8c                ; $ee65: 20 8c ee
loc_ee68:
	and #$0f                 ; $ee68: 29 0f
loc_ee6a:
	sta $10                  ; $ee6a: 85 10
	ldx $a4                  ; $ee6c: a6 a4
	cpx #$04                 ; $ee6e: e0 04
	bne $ee7a                ; $ee70: d0 08
loc_ee72:
	lda $bb                  ; $ee72: a5 bb
	and #$20                 ; $ee74: 29 20
	beq $ee7a                ; $ee76: f0 02

; === Block $ee7a-$ee7f (Code) ===
loc_ee7a:
	ldy $ec7f,x              ; $ee7a: bc 7f ec
	lda $a2                  ; $ee7d: a5 a2

; === Block $ee7c-$ee86 (Code) ===
entry_ee7c:
	cpx $a2a5                ; $ee7c: ec a5 a2
	and #$f0                 ; $ee7f: 29 f0
	ora $10                  ; $ee81: 05 10
	sta $4000,y              ; $ee83: 99 00 40 SQ1_VOL
	rts                      ; $ee86: 60

; === Block $ee7e-$ee84 (Code) ===
entry_ee7e:
	ldx #$29                 ; $ee7e: a2 29
	beq $ee87                ; $ee80: f0 05
loc_ee82:
	bpl $ee1d                ; $ee82: 10 99
loc_ee84:
	brk                      ; $ee84: 00

; === Block $ee87-$ee8a (Code) ===
loc_ee87:
	*nop #$82                ; $ee87: 82 82
	*jam                     ; $ee89: 02
	brk                      ; $ee8a: 00

; === Block $ee8c-$ee8e (Code) ===
loc_ee8c:
	inc $11                  ; $ee8c: e6 11

; === Block $ee8e-$eeb8 (Code) ===
loc_ee8e:
	lda $10                  ; $ee8e: a5 10
	eor #$ff                 ; $ee90: 49 ff
	sta $10                  ; $ee92: 85 10
	lda #$00                 ; $ee94: a9 00
	lsr $10                  ; $ee96: 46 10
	bcs $ee9c                ; $ee98: b0 02
loc_ee9a:
	adc $11                  ; $ee9a: 65 11
loc_ee9c:
	lsr                      ; $ee9c: 4a
	lsr $10                  ; $ee9d: 46 10
	bcs $eea3                ; $ee9f: b0 02
loc_eea1:
	adc $11                  ; $eea1: 65 11
loc_eea3:
	lsr                      ; $eea3: 4a
	lsr $10                  ; $eea4: 46 10
	bcs $eeaa                ; $eea6: b0 02
loc_eea8:
	adc $11                  ; $eea8: 65 11
loc_eeaa:
	lsr                      ; $eeaa: 4a
	lsr $10                  ; $eeab: 46 10
	bcs $eeb1                ; $eead: b0 02
loc_eeaf:
	adc $11                  ; $eeaf: 65 11
loc_eeb1:
	lsr                      ; $eeb1: 4a
	lsr $10                  ; $eeb2: 46 10
	bcs $eeb8                ; $eeb4: b0 02
loc_eeb6:
	adc $11                  ; $eeb6: 65 11
loc_eeb8:
	rts                      ; $eeb8: 60

; === Block $eed2-$eed4 (Code) ===
entry_eed2:
	ldx $a5                  ; $eed2: a6 a5
	rts                      ; $eed4: 60

; === Block $ef11-$ef58 (Code) ===
loc_ef11:
	tax                      ; $ef11: aa
	lda #$00                 ; $ef12: a9 00
	sta $4010                ; $ef14: 8d 10 40 DMC_FREQ
	lda #$0f                 ; $ef17: a9 0f
	sta $4015                ; $ef19: 8d 15 40 SND_CHN
	lda #$88                 ; $ef1c: a9 88
	sta $4005                ; $ef1e: 8d 05 40 SQ2_SWEEP
	lda #$cf                 ; $ef21: a9 cf
	and $bb                  ; $ef23: 25 bb
	sta $bb                  ; $ef25: 85 bb
	lda $a16c,x              ; $ef27: bd 6c a1
	bmi $ef34                ; $ef2a: 30 08
loc_ef2c:
	pha                      ; $ef2c: 48
	lda #$20                 ; $ef2d: a9 20
	ora $bb                  ; $ef2f: 05 bb
	sta $bb                  ; $ef31: 85 bb
	pla                      ; $ef33: 68
loc_ef34:
	ora #$80                 ; $ef34: 09 80
	sta $af                  ; $ef36: 85 af
	lda $a16b,x              ; $ef38: bd 6b a1
	sta $ae                  ; $ef3b: 85 ae
	lda #$01                 ; $ef3d: a9 01
	sta $0629                ; $ef3f: 8d 29 06
	sta $0628                ; $ef42: 8d 28 06
	lda #$00                 ; $ef45: a9 00
	sta $0632                ; $ef47: 8d 32 06
	sta $0633                ; $ef4a: 8d 33 06
	sta $064f                ; $ef4d: 8d 4f 06
	lda #$ff                 ; $ef50: a9 ff
	sta $0644                ; $ef52: 8d 44 06
	sta $0645                ; $ef55: 8d 45 06
loc_ef58:
	jmp $f083                ; $ef58: 4c 83 f0

; === Block $ef5b-$ef70 (Code) ===
loc_ef5b:
	jsr $f07a                ; $ef5b: 20 7a f0
loc_ef5e:
	tax                      ; $ef5e: aa
	asl                      ; $ef5f: 0a
	bcs $ef11                ; $ef60: b0 af
loc_ef62:
	pha                      ; $ef62: 48
	lda #$20                 ; $ef63: a9 20
	and $bb                  ; $ef65: 25 bb
	sta $bb                  ; $ef67: 85 bb
	pla                      ; $ef69: 68
	cmp $bf                  ; $ef6a: c5 bf
	beq $ef58                ; $ef6c: f0 ea
loc_ef6e:
	sta $bf                  ; $ef6e: 85 bf

; === Block $ef70-$efac (Code) ===
loc_ef70:
	asl                      ; $ef70: 0a
	asl                      ; $ef71: 0a
	tay                      ; $ef72: a8
	lda $00                  ; $ef73: a5 00
	pha                      ; $ef75: 48
	lda $01                  ; $ef76: a5 01
	pha                      ; $ef78: 48
	lda $efbe                ; $ef79: ad be ef
	sta $00                  ; $ef7c: 85 00
	lda $efbf                ; $ef7e: ad bf ef
	sta $01                  ; $ef81: 85 01
	lda $82fe,x              ; $ef83: bd fe 82
	sta $6bfc                ; $ef86: 8d fc 6b
	ldx #$00                 ; $ef89: a2 00
	stx $a4                  ; $ef8b: 86 a4
	stx $a5                  ; $ef8d: 86 a5
	bcc $ef93                ; $ef8f: 90 02
loc_ef91:
	inc $01                  ; $ef91: e6 01
loc_ef93:
	lda ($00),y              ; $ef93: b1 00
	lda $6bfc                ; $ef95: ad fc 6b
	beq $efc0                ; $ef98: f0 26
loc_ef9a:
	lda $6bfc                ; $ef9a: ad fc 6b
	sta $23                  ; $ef9d: 85 23
	ldx #$a6                 ; $ef9f: a2 a6
	lda ($00),y              ; $efa1: b1 00
	sta $24                  ; $efa3: 85 24
	jsr $c3ce                ; $efa5: 20 ce c3
loc_efa8:
	iny                      ; $efa8: c8
	iny                      ; $efa9: c8
	inx                      ; $efaa: e8
	inx                      ; $efab: e8

; === Block $efc0-$efea (Code) ===
loc_efc0:
	lda ($00),y              ; $efc0: b1 00
	sta $a6,x                ; $efc2: 95 a6
	iny                      ; $efc4: c8
	lda ($00),y              ; $efc5: b1 00
	sta $a7,x                ; $efc7: 95 a7
	inx                      ; $efc9: e8
	inx                      ; $efca: e8
	iny                      ; $efcb: c8
	cpx #$08                 ; $efcc: e0 08
	bne $efc0                ; $efce: d0 f0
loc_efd0:
	lda #$0f                 ; $efd0: a9 0f
	sta $b0                  ; $efd2: 85 b0
	lda $6bfc                ; $efd4: ad fc 6b
	beq $efed                ; $efd7: f0 14
loc_efd9:
	ldx #$a6                 ; $efd9: a2 a6
	ldy #$00                 ; $efdb: a0 00
	jsr $c3ea                ; $efdd: 20 ea c3
loc_efe0:
	pha                      ; $efe0: 48
	inc $a6                  ; $efe1: e6 a6
	bne $efe7                ; $efe3: d0 02
loc_efe5:
	inc $a7                  ; $efe5: e6 a7
loc_efe7:
	pla                      ; $efe7: 68
	sta $bc                  ; $efe8: 85 bc
	jmp $eff2                ; $efea: 4c f2 ef

; === Block $efed-$f04e (Code) ===
loc_efed:
	jsr $e771                ; $efed: 20 71 e7
loc_eff0:
	sta $bc                  ; $eff0: 85 bc
loc_eff2:
	lda #$ff                 ; $eff2: a9 ff
	sta $bd                  ; $eff4: 85 bd
	ldx #$00                 ; $eff6: a2 00
	ldy #$00                 ; $eff8: a0 00
	lda #$00                 ; $effa: a9 00
	sta $064b,y              ; $effc: 99 4b 06
	sta $062a,x              ; $efff: 9d 2a 06
	lda #$ff                 ; $f002: a9 ff
	sta $063d,x              ; $f004: 9d 3d 06
	sta $063c,x              ; $f007: 9d 3c 06
	lda #$01                 ; $f00a: a9 01
	sta $0620,x              ; $f00c: 9d 20 06
	sta $0621,x              ; $f00f: 9d 21 06
	sta $062b,x              ; $f012: 9d 2b 06
	inx                      ; $f015: e8
	inx                      ; $f016: e8
	iny                      ; $f017: c8
	cpy #$04                 ; $f018: c0 04
	bne $effa                ; $f01a: d0 de
loc_f01c:
	lda #$00                 ; $f01c: a9 00
	sta $6bfa                ; $f01e: 8d fa 6b
	sta $6bfb                ; $f021: 8d fb 6b
	sta $6bf9                ; $f024: 8d f9 6b
	tax                      ; $f027: aa
	tay                      ; $f028: a8
	lda #$00                 ; $f029: a9 00
	sta $00b1,y              ; $f02b: 99 b1 00
	sta $6bfd,x              ; $f02e: 9d fd 6b
	sta $6bfe,x              ; $f031: 9d fe 6b
	lda #$ff                 ; $f034: a9 ff
	sta $00b5,y              ; $f036: 99 b5 00
	sta $6c09,y              ; $f039: 99 09 6c
	inx                      ; $f03c: e8
	inx                      ; $f03d: e8
	iny                      ; $f03e: c8
	cpy #$03                 ; $f03f: c0 03
	bne $f029                ; $f041: d0 e6
loc_f043:
	lda #$80                 ; $f043: a9 80
	sta $4008                ; $f045: 8d 08 40 TRI_LINEAR
	pla                      ; $f048: 68
	sta $01                  ; $f049: 85 01
	pla                      ; $f04b: 68
	sta $00                  ; $f04c: 85 00
	jmp $f083                ; $f04e: 4c 83 f0

; === Block $f06a-$f06e (Code) ===
entry_f06a:
	ora $bb                  ; $f06a: 05 bb
	sta $bb                  ; $f06c: 85 bb
	jmp $ef70                ; $f06e: 4c 70 ef

; === Block $f07a-$f07f (Code) ===
loc_f07a:
	pha                      ; $f07a: 48
	lda $bf                  ; $f07b: a5 bf
	and #$fe                 ; $f07d: 29 fe

; === Block $f07f-$f082 (Code) ===
loc_f07f:
	sta $bf                  ; $f07f: 85 bf
	pla                      ; $f081: 68
	rts                      ; $f082: 60

; === Block $f083-$f0b3 (Code) ===
loc_f083:
	pha                      ; $f083: 48
	lda $bf                  ; $f084: a5 bf
	ora #$01                 ; $f086: 09 01
	bne $f07f                ; $f088: d0 f5
loc_f08a:
	sei                      ; $f08a: 78
	lda #$00                 ; $f08b: a9 00
	sta $4015                ; $f08d: 8d 15 40 SND_CHN
	lda #$80                 ; $f090: a9 80
	sta $4017                ; $f092: 8d 17 40 JOY2
	lda #$0f                 ; $f095: a9 0f
	sta $4015                ; $f097: 8d 15 40 SND_CHN
	lda #$88                 ; $f09a: a9 88
	sta $4001                ; $f09c: 8d 01 40 SQ1_SWEEP
	sta $4005                ; $f09f: 8d 05 40 SQ2_SWEEP
	lda #$ff                 ; $f0a2: a9 ff
	sta $bd                  ; $f0a4: 85 bd
	lda #$00                 ; $f0a6: a9 00
	sta $bb                  ; $f0a8: 85 bb
	jsr $ef5b                ; $f0aa: 20 5b ef
loc_f0ad:
	lda #$80                 ; $f0ad: a9 80
	jsr $ef5b                ; $f0af: 20 5b ef
loc_f0b2:
	cli                      ; $f0b2: 58
	rts                      ; $f0b3: 60

; === Block $f0d0-$f0d3 (Code) ===
loc_f0d0:
	jsr $ff74                ; $f0d0: 20 74 ff

; === Block $f0d3-$f0e2 (Code) ===
entry_f0d3:
	jsr $c8ec                ; $f0d3: 20 ec c8
loc_f0d6:
	lda $14                  ; $f0d6: a5 14
	and #$03                 ; $f0d8: 29 03
	bne $f0e2                ; $f0da: d0 06
loc_f0dc:
	lda $b0                  ; $f0dc: a5 b0
	and #$20                 ; $f0de: 29 20
	beq $f0d0                ; $f0e0: f0 ee
loc_f0e2:
	rts                      ; $f0e2: 60

; === Block $f0e6-$f0f5 (Code) ===
entry_f0e6:
	bne $f0ea                ; $f0e6: d0 02
loc_f0e8:
	lda #$19                 ; $f0e8: a9 19
loc_f0ea:
	cmp $6e86                ; $f0ea: cd 86 6e
	beq $f0f5                ; $f0ed: f0 06
loc_f0ef:
	sta $6e86                ; $f0ef: 8d 86 6e
	jsr $ff94                ; $f0f2: 20 94 ff
loc_f0f5:
	rts                      ; $f0f5: 60

; === Block $f1f0-$f1f5 (Code) ===
loc_f1f0:
	*lax ($f2),y             ; $f1f0: b3 f2
	jsr $c62d                ; $f1f2: 20 2d c6
loc_f1f5:
	rts                      ; $f1f5: 60

; === Block $f8e7-$f8e9 (Code) ===
loc_f8e7:
	*nop #$00                ; $f8e7: 80 00
	brk                      ; $f8e9: 00

; === Block $f8f2-$f905 (Code) ===
loc_f8f2:
	sei                      ; $f8f2: 78
	*nop #$e0                ; $f8f3: 80 e0
	beq $f8e7                ; $f8f5: f0 f0
loc_f8f7:
	sei                      ; $f8f7: 78
	sei                      ; $f8f8: 78
	sei                      ; $f8f9: 78
loc_f8fa:
	sei                      ; $f8fa: 78
	ora ($03,x)              ; $f8fb: 01 03
	*slo $07                 ; $f8fd: 07 07
	*slo $1f0f               ; $f8ff: 0f 0f 1f
	*slo $0301,x             ; $f902: 1f 01 03

; === Block $f900-$f90d (Code) ===
loc_f900:
	*slo $1f1f               ; $f900: 0f 1f 1f
	ora ($03,x)              ; $f903: 01 03
	*slo $07                 ; $f905: 07 07
	*slo $1f0f               ; $f907: 0f 0f 1f
	*slo $f8fc,x             ; $f90a: 1f fc f8

; === Block $f908-$f90e (Code) ===
loc_f908:
	*slo $1f1f               ; $f908: 0f 1f 1f
	*nop $f8f8,x             ; $f90b: fc f8 f8

; === Block $f909-$f92c (Code) ===
loc_f909:
	*slo $fc1f,x             ; $f909: 1f 1f fc
	sed                      ; $f90c: f8
	sed                      ; $f90d: f8
	beq $f900                ; $f90e: f0 f0
loc_f910:
	beq $f8f2                ; $f910: f0 e0
loc_f912:
	cpx #$fc                 ; $f912: e0 fc
	sed                      ; $f914: f8
	sed                      ; $f915: f8
	beq $f908                ; $f916: f0 f0
loc_f918:
	beq $f8fa                ; $f918: f0 e0
loc_f91a:
	cpx #$00                 ; $f91a: e0 00
	brk                      ; $f91c: 00 Bank call: bank 3, Bank3_Func01
	.byte $01                ; $f91d: 01 Function index
	.byte $03                ; $f91e: 03 Target bank
	*slo $0f                 ; $f91f: 07 0f
	rol $0078,x              ; $f921: 3e 78 00
	brk                      ; $f924: 00 Bank call: bank 3, Bank3_Func01
	.byte $01                ; $f925: 01 Function index
	.byte $03                ; $f926: 03 Target bank
	*slo $0f                 ; $f927: 07 0f
	rol $f878,x              ; $f929: 3e 78 f8

; === Block $f917-$f987 (Code) ===
loc_f917:
	beq $f909                ; $f917: f0 f0
loc_f919:
	cpx #$e0                 ; $f919: e0 e0
	brk                      ; $f91b: 00 Bank call: bank 1, Bank1_Func00
	.byte $00                ; $f91c: 00 Function index
	.byte $01                ; $f91d: 01 Target bank
	*slo ($07,x)             ; $f91e: 03 07
	*slo $783e               ; $f920: 0f 3e 78
	brk                      ; $f923: 00 Bank call: bank 1, Bank1_Func00
	.byte $00                ; $f924: 00 Function index
	.byte $01                ; $f925: 01 Target bank
	*slo ($07,x)             ; $f926: 03 07
	*slo $783e               ; $f928: 0f 3e 78
	sed                      ; $f92b: f8
	beq $f920                ; $f92c: f0 f2
loc_f92e:
	*nop #$c6                ; $f92e: e2 c6
	stx $0c                  ; $f930: 86 0c
	*nop $f0f8               ; $f932: 0c f8 f0
	*jam                     ; $f935: f2
	*nop #$c6                ; $f936: e2 c6
	stx $0c                  ; $f938: 86 0c
	*nop $3f3f               ; $f93a: 0c 3f 3f PPUDATA
	*rla $7f7f,x             ; $f93d: 3f 7f 7f
	*rra $7f7f,x             ; $f940: 7f 7f 7f
	*rla $3f3f,x             ; $f943: 3f 3f 3f PPUDATA
	*rra $7f7f,x             ; $f946: 7f 7f 7f
	*rra $e17f,x             ; $f949: 7f 7f e1
	*isc $f0f0,x             ; $f94c: ff f0 f0
	sed                      ; $f94f: f8
	inc $ffff,x              ; $f950: fe ff ff
	sbc ($ff,x)              ; $f953: e1 ff
	beq $f947                ; $f955: f0 f0
loc_f957:
	sed                      ; $f957: f8
	inc $ffff,x              ; $f958: fe ff ff
	cpx #$00                 ; $f95b: e0 00
	brk                      ; $f95d: 00 Bank call: bank 3, Bank3_Func00
	.byte $00                ; $f95e: 00 Function index
	.byte $03                ; $f95f: 03 Target bank
	*slo $ffff,x             ; $f960: 1f ff ff
	cpx #$00                 ; $f963: e0 00
	brk                      ; $f965: 00 Bank call: bank 3, Bank3_Func00
	.byte $00                ; $f966: 00 Function index
	.byte $03                ; $f967: 03 Target bank
	*slo $ffff,x             ; $f968: 1f ff ff
	*nop $7838,x             ; $f96b: 1c 38 78
	beq $f960                ; $f96e: f0 f0
loc_f970:
	cpx #$e0                 ; $f970: e0 e0
	cpy #$1c                 ; $f972: c0 1c
	sec                      ; $f974: 38
	sei                      ; $f975: 78
	beq $f968                ; $f976: f0 f0
loc_f978:
	cpx #$e0                 ; $f978: e0 e0
	cpy #$7f                 ; $f97a: c0 7f
	*rla $1f3f,x             ; $f97c: 3f 3f 1f
	*slo $070f,x             ; $f97f: 1f 0f 07
	ora ($7f,x)              ; $f982: 01 7f
	*rla $1f3f,x             ; $f984: 3f 3f 1f

; === Block $f93f-$f94d (Code) ===
loc_f93f:
	*rra $7f7f,x             ; $f93f: 7f 7f 7f
	*rra $3f3f,x             ; $f942: 7f 3f 3f PPUDATA
	*rla $7f7f,x             ; $f945: 3f 7f 7f
	*rra $7f7f,x             ; $f948: 7f 7f 7f
	sbc ($ff,x)              ; $f94b: e1 ff

; === Block $f947-$f94f (Code) ===
loc_f947:
	*rra $7f7f,x             ; $f947: 7f 7f 7f
	*rra $ffe1,x             ; $f94a: 7f e1 ff
	beq $f93f                ; $f94d: f0 f0

; === Block $f987-$f9c1 (Code) ===
loc_f987:
	*slo $070f,x             ; $f987: 1f 0f 07
	ora ($ff,x)              ; $f98a: 01 ff
	*isc $ffff,x             ; $f98c: ff ff ff
	*isc $ffff,x             ; $f98f: ff ff ff
	*nop $ffff,x             ; $f992: fc ff ff
	*isc $ffff,x             ; $f995: ff ff ff
	*isc $fcff,x             ; $f998: ff ff fc
	*isc $feff,x             ; $f99b: ff ff fe
	*nop $e0f8,x             ; $f99e: fc f8 e0
	*nop #$00                ; $f9a1: 80 00
	*isc $feff,x             ; $f9a3: ff ff fe
	*nop $e0f8,x             ; $f9a6: fc f8 e0
	*nop #$00                ; $f9a9: 80 00
	*nop #$00                ; $f9ab: 80 00
	brk                      ; $f9ad: 00 Bank call: bank 0, Bank0_Func00
	.byte $00                ; $f9ae: 00 Function index
	.byte $00                ; $f9af: 00 Target bank
	brk                      ; $f9b0: 00 Bank call: bank 0, Bank0_Func00
	.byte $00                ; $f9b1: 00 Function index
	.byte $00                ; $f9b2: 00 Target bank
	*nop #$00                ; $f9b3: 80 00
	brk                      ; $f9b5: 00 Bank call: bank 0, Bank0_Func00
	.byte $00                ; $f9b6: 00 Function index
	.byte $00                ; $f9b7: 00 Target bank
	brk                      ; $f9b8: 00 Bank call: bank 0, Bank0_Func00
	.byte $00                ; $f9b9: 00 Function index
	.byte $00                ; $f9ba: 00 Target bank
	brk                      ; $f9bb: 00 Bank call: bank 0, Bank0_Func00
	.byte $00                ; $f9bc: 00 Function index
	.byte $00                ; $f9bd: 00 Target bank
	*rla $4040,x             ; $f9be: 3f 40 40
	rti                      ; $f9c1: 40

; === Block $fa95-$fa9f (Code) ===
loc_fa95:
	*isc $ffff,x             ; $fa95: ff ff ff
	*isc $ff,x               ; $fa98: f7 ff
	*isc $0400,x             ; $fa9a: ff 00 04
	bpl $fa9f                ; $fa9d: 10 00
loc_fa9f:
	rti                      ; $fa9f: 40

; === Block $fc18-$fc5b (Code) ===
loc_fc18:
	clc                      ; $fc18: 18
	clc                      ; $fc19: 18
	*nop $7e00,x             ; $fc1a: 3c 00 7e
	clc                      ; $fc1d: 18
	clc                      ; $fc1e: 18
	clc                      ; $fc1f: 18
	clc                      ; $fc20: 18
	clc                      ; $fc21: 18
	clc                      ; $fc22: 18
	clc                      ; $fc23: 18
	clc                      ; $fc24: 18
	clc                      ; $fc25: 18
	clc                      ; $fc26: 18
	clc                      ; $fc27: 18
	cld                      ; $fc28: d8
	sed                      ; $fc29: f8
	bvs $fc2c                ; $fc2a: 70 00
loc_fc2c:
	cpy $cc                  ; $fc2c: c4 cc
	cpy $d8d8                ; $fc2e: cc d8 d8
	beq $fc23                ; $fc31: f0 f0
loc_fc33:
	beq $fc25                ; $fc33: f0 f0
loc_fc35:
	cld                      ; $fc35: d8
	cld                      ; $fc36: d8
	cpy $c6cc                ; $fc37: cc cc c6
	dec $00                  ; $fc3a: c6 00
	cpy #$c0                 ; $fc3c: c0 c0
	cpy #$c0                 ; $fc3e: c0 c0
	cpy #$c0                 ; $fc40: c0 c0
	cpy #$c0                 ; $fc42: c0 c0
	cpy #$c0                 ; $fc44: c0 c0
	cpy #$c0                 ; $fc46: c0 c0
	cpy #$c6                 ; $fc48: c0 c6
	inc $c600,x              ; $fc4a: fe 00 c6
	dec $c6                  ; $fc4d: c6 c6
	inc $feee                ; $fc4f: ee ee fe
	inc $d6d6,x              ; $fc52: fe d6 d6
	dec $c6                  ; $fc55: c6 c6
	dec $c6                  ; $fc57: c6 c6
	dec $c6                  ; $fc59: c6 c6
	brk                      ; $fc5b: 00

; === Block $fcb2-$fcb2 (Code) ===
loc_fcb2:
	rts                      ; $fcb2: 60

; === Block $ff59-$ff5b (Code) ===
loc_ff59:
	inc $7f                  ; $ff59: e6 7f
	jmp $ff74                ; $ff5b: 4c 74 ff

; === Block $ff64-$ff64 (Code) ===
entry_ff64:
	rti                      ; $ff64: 40

; === Block $ff74-$ff81 (Code) ===
loc_ff74:
	lda $050c                ; $ff74: ad 0c 05
	nop                      ; $ff77: ea
	nop                      ; $ff78: ea
	inc $12                  ; $ff79: e6 12
	cmp $050c                ; $ff7b: cd 0c 05
	beq $ff77                ; $ff7e: f0 f7
loc_ff80:
	nop                      ; $ff80: ea

; === Block $ff81-$ff85 (Code) ===
entry_ff81:
	nop                      ; $ff81: ea
	jsr $c913                ; $ff82: 20 13 c9
loc_ff85:
	rts                      ; $ff85: 60

; === Block $ff84-$ffc6 (Code) ===
entry_ff84:
	cmp #$60                 ; $ff84: c9 60
	*isc $ffff,x             ; $ff86: ff ff ff
	*isc $ffff,x             ; $ff89: ff ff ff
	*isc $4cff,x             ; $ff8c: ff ff 4c
	and $8dc0,x              ; $ff8f: 3d c0 8d
	*slo $05                 ; $ff92: 07 05
loc_ff94:
	pha                      ; $ff94: 48
	lda $0501                ; $ff95: ad 01 05
	and #$ef                 ; $ff98: 29 ef
	sta $0501                ; $ff9a: 8d 01 05
	pla                      ; $ff9d: 68
	pha                      ; $ff9e: 48
	and #$10                 ; $ff9f: 29 10
	ora $0501                ; $ffa1: 0d 01 05
	sta $0501                ; $ffa4: 8d 01 05
	pla                      ; $ffa7: 68
	and #$0f                 ; $ffa8: 29 0f
	nop                      ; $ffaa: ea
	nop                      ; $ffab: ea
	sta $ffff                ; $ffac: 8d ff ff
	lsr                      ; $ffaf: 4a
	sta $ffff                ; $ffb0: 8d ff ff
	lsr                      ; $ffb3: 4a
	sta $ffff                ; $ffb4: 8d ff ff
	lsr                      ; $ffb7: 4a
	sta $ffff                ; $ffb8: 8d ff ff
	lsr                      ; $ffbb: 4a
	sta $ffff                ; $ffbc: 8d ff ff
	lda $0501                ; $ffbf: ad 01 05
	sta $bfff                ; $ffc2: 8d ff bf
	lsr                      ; $ffc5: 4a

; === Block $ff8e-$ff8e (Code) ===
loc_ff8e:
	jmp $c03d                ; $ff8e: 4c 3d c0

; === Block $ff91-$ff94 (Code) ===
loc_ff91:
	sta $0507                ; $ff91: 8d 07 05

; === Block $ffd8-$ffdc (Code) ===
reset:
	sei                      ; $ffd8: 78
	inc $ffdf                ; $ffd9: ee df ff
	jmp $c03d                ; $ffdc: 4c 3d c0

