; Disassembled by Peony
; Platform: SNES
; Mapper: FINAL FANTASY 2
; MapMode: LoRom
; RomSize: 1024K
; Banks: 32
; CopierHeader: False

.snes

; --- Block at $8000-$8106 ---
bank4_start:
	jsr $8008                    ; 8000: 20 08 80
loc_8003:
	rtl                          ; 8003: 6b
	jsr $8107                    ; 8004: 20 07 81
loc_8007:
	rtl                          ; 8007: 6b
loc_8008:
	phb                          ; 8008: 8b
	phd                          ; 8009: 0b
	php                          ; 800a: 08
	rep #$20                     ; 800b: c2 20
	rep #$10                     ; 800d: c2 10
	pha                          ; 800f: 48
	phx                          ; 8010: da
	phy                          ; 8011: 5a
	sep #$20                     ; 8012: e2 20
	lda.b #$04                   ; 8014: a9 04
	pha                          ; 8016: 48
	plb                          ; 8017: ab
	ldx.w #$1e00                 ; 8018: a2 00 1e
	phx                          ; 801b: da
	pld                          ; 801c: 2b
	sep #$20                     ; 801d: e2 20
	ldx.w #$0000                 ; 801f: a2 00 00
	stz $1e00,x                  ; 8022: 9e 00 1e
	inx                          ; 8025: e8
	cpx.w #$0200                 ; 8026: e0 00 02
	.db $d0, $f7                 ; 8029: d0 f7
loc_802b:
	rep #$20                     ; 802b: c2 20
	lda.w #$bbaa                 ; 802d: a9 aa bb
	cmp $2140                    ; 8030: cd 40 21 ; APUIO0
	.db $d0, $fb                 ; 8033: d0 fb
loc_8035:
	sep #$20                     ; 8035: e2 20
	ldx.w #$0000                 ; 8037: a2 00 00
	lda $8684,x                  ; 803a: bd 84 86
	xba                          ; 803d: eb
	lda $8683,x                  ; 803e: bd 83 86
	rep #$20                     ; 8041: c2 20
	tay                          ; 8043: a8
	sep #$20                     ; 8044: e2 20
	inx                          ; 8046: e8
	inx                          ; 8047: e8
	lda $8683,x                  ; 8048: bd 83 86
	sta $2142                    ; 804b: 8d 42 21 ; APUIO2
	lda $8684,x                  ; 804e: bd 84 86
	sta $2143                    ; 8051: 8d 43 21 ; APUIO3
	lda.b #$01                   ; 8054: a9 01
	sta $2141                    ; 8056: 8d 41 21 ; APUIO1
	inx                          ; 8059: e8
	inx                          ; 805a: e8
	lda.b #$cc                   ; 805b: a9 cc
	sta $2140                    ; 805d: 8d 40 21 ; APUIO0
	cmp $2140                    ; 8060: cd 40 21 ; APUIO0
	.db $d0, $fb                 ; 8063: d0 fb
loc_8065:
	stz $08                      ; 8065: 64 08
	lda $8683,x                  ; 8067: bd 83 86
	sta $2141                    ; 806a: 8d 41 21 ; APUIO1
	lda $08                      ; 806d: a5 08
	sta $2140                    ; 806f: 8d 40 21 ; APUIO0
	inc $08                      ; 8072: e6 08
	cmp $2140                    ; 8074: cd 40 21 ; APUIO0
	.db $d0, $fb                 ; 8077: d0 fb
loc_8079:
	inx                          ; 8079: e8
	dey                          ; 807a: 88
	.db $d0, $ea                 ; 807b: d0 ea
loc_807d:
	inc $08                      ; 807d: e6 08
	inc $08                      ; 807f: e6 08
	inc $08                      ; 8081: e6 08
	rep #$20                     ; 8083: c2 20
	lda $8683,x                  ; 8085: bd 83 86
	inx                          ; 8088: e8
	inx                          ; 8089: e8
	tay                          ; 808a: a8
	.db $f0, $23                 ; 808b: f0 23
loc_808d:
	sep #$20                     ; 808d: e2 20
	lda $8683,x                  ; 808f: bd 83 86
	sta $2142                    ; 8092: 8d 42 21 ; APUIO2
	lda $8684,x                  ; 8095: bd 84 86
	sta $2143                    ; 8098: 8d 43 21 ; APUIO3
	lda.b #$01                   ; 809b: a9 01
	sta $2141                    ; 809d: 8d 41 21 ; APUIO1
	inx                          ; 80a0: e8
	inx                          ; 80a1: e8
	lda $08                      ; 80a2: a5 08
	sta $2140                    ; 80a4: 8d 40 21 ; APUIO0
	cmp $2140                    ; 80a7: cd 40 21 ; APUIO0
	.db $d0, $fb                 ; 80aa: d0 fb
loc_80ac:
	stz $08                      ; 80ac: 64 08
	.db $80, $b7                 ; 80ae: 80 b7
loc_80b0:
	sep #$20                     ; 80b0: e2 20
	lda $8683,x                  ; 80b2: bd 83 86
	sta $2142                    ; 80b5: 8d 42 21 ; APUIO2
	lda $8684,x                  ; 80b8: bd 84 86
	sta $2143                    ; 80bb: 8d 43 21 ; APUIO3
	lda.b #$00                   ; 80be: a9 00
	sta $2141                    ; 80c0: 8d 41 21 ; APUIO1
	lda $08                      ; 80c3: a5 08
	sta $2140                    ; 80c5: 8d 40 21 ; APUIO0
	cmp $2140                    ; 80c8: cd 40 21 ; APUIO0
	.db $d0, $fb                 ; 80cb: d0 fb
loc_80cd:
	stz $2140                    ; 80cd: 9c 40 21 ; APUIO0
	sep #$20                     ; 80d0: e2 20
	ldx.w #$0000                 ; 80d2: a2 00 00
	stz $40,x                    ; 80d5: 74 40
	stz $60,x                    ; 80d7: 74 60
	stz $80,x                    ; 80d9: 74 80
	inx                          ; 80db: e8
	cpx.w #$0020                 ; 80dc: e0 20 00
	.db $d0, $f4                 ; 80df: d0 f4
loc_80e1:
	stz $00                      ; 80e1: 64 00
	stz $01                      ; 80e3: 64 01
	stz $02                      ; 80e5: 64 02
	stz $03                      ; 80e7: 64 03
	stz $04                      ; 80e9: 64 04
	stz $05                      ; 80eb: 64 05
	stz $06                      ; 80ed: 64 06
	stz $07                      ; 80ef: 64 07
	ldx.w #$3000                 ; 80f1: a2 00 30
	stx $60                      ; 80f4: 86 60
	ldx.w #$0800                 ; 80f6: a2 00 08
	dex                          ; 80f9: ca
	.db $d0, $fd                 ; 80fa: d0 fd
loc_80fc:
	rep #$10                     ; 80fc: c2 10
	ply                          ; 80fe: 7a
	plx                          ; 80ff: fa
	rep #$20                     ; 8100: c2 20
	pla                          ; 8102: 68
	plp                          ; 8103: 28
	pld                          ; 8104: 2b
	plb                          ; 8105: ab
	rts                          ; 8106: 60

; --- Block at $8107-$816e ---
loc_8107:
	phb                          ; 8107: 8b
	phd                          ; 8108: 0b
	php                          ; 8109: 08
	rep #$20                     ; 810a: c2 20
	rep #$10                     ; 810c: c2 10
	pha                          ; 810e: 48
	phx                          ; 810f: da
	phy                          ; 8110: 5a
	sep #$20                     ; 8111: e2 20
	lda.b #$04                   ; 8113: a9 04
	pha                          ; 8115: 48
	plb                          ; 8116: ab
	ldx.w #$1e00                 ; 8117: a2 00 1e
	phx                          ; 811a: da
	pld                          ; 811b: 2b
	sep #$20                     ; 811c: e2 20
	lda $00                      ; 811e: a5 00
	.db $f0, $38                 ; 8120: f0 38
loc_8122:
	cmp.b #$01                   ; 8122: c9 01
	.db $d0, $05                 ; 8124: d0 05
loc_8126:
	jsr $816f                    ; 8126: 20 6f 81
loc_8129:
	.db $80, $2f                 ; 8129: 80 2f
loc_812b:
	cmp.b #$02                   ; 812b: c9 02
	.db $d0, $05                 ; 812d: d0 05
loc_812f:
	jsr $85e1                    ; 812f: 20 e1 85
loc_8132:
	.db $80, $26                 ; 8132: 80 26
loc_8134:
	cmp.b #$03                   ; 8134: c9 03
	.db $d0, $05                 ; 8136: d0 05
loc_8138:
	jsr $816f                    ; 8138: 20 6f 81
loc_813b:
	.db $80, $1d                 ; 813b: 80 1d
loc_813d:
	cmp.b #$04                   ; 813d: c9 04
	.db $d0, $05                 ; 813f: d0 05
loc_8141:
	jsr $816f                    ; 8141: 20 6f 81
loc_8144:
	.db $80, $14                 ; 8144: 80 14
loc_8146:
	cmp.b #$10                   ; 8146: c9 10
	.db $90, $09                 ; 8148: 90 09
loc_814a:
	cmp.b #$1f                   ; 814a: c9 1f
	.db $b0, $05                 ; 814c: b0 05
loc_814e:
	jsr $8608                    ; 814e: 20 08 86
loc_8151:
	.db $80, $07                 ; 8151: 80 07
loc_8153:
	cmp.b #$80                   ; 8153: c9 80
	.db $90, $03                 ; 8155: 90 03
loc_8157:
	jsr $861e                    ; 8157: 20 1e 86
loc_815a:
	sep #$20                     ; 815a: e2 20
	stz $00                      ; 815c: 64 00
	stz $01                      ; 815e: 64 01
	stz $02                      ; 8160: 64 02
	stz $03                      ; 8162: 64 03
	rep #$10                     ; 8164: c2 10
	ply                          ; 8166: 7a
	plx                          ; 8167: fa
	rep #$20                     ; 8168: c2 20
	pla                          ; 816a: 68
	plp                          ; 816b: 28
	pld                          ; 816c: 2b
	plb                          ; 816d: ab
	rts                          ; 816e: 60

; --- Block at $816f-$817e ---
loc_816f:
	sep #$20                     ; 816f: e2 20
	sta $08                      ; 8171: 85 08
	sta $04                      ; 8173: 85 04
	lda.b #$00                   ; 8175: a9 00
	xba                          ; 8177: eb
	lda $01                      ; 8178: a5 01
	cmp $05                      ; 817a: c5 05
	.db $d0, $01                 ; 817c: d0 01
loc_817e:
	rts                          ; 817e: 60

; --- Block at $817f-$82ff ---
loc_817f:
	sep #$20                     ; 817f: e2 20
	sta $05                      ; 8181: 85 05
	sta $4202                    ; 8183: 8d 02 42 ; WRMPYA
	lda.b #$03                   ; 8186: a9 03
	sta $4203                    ; 8188: 8d 03 42 ; WRMPYB
	lda $c000                    ; 818b: ad 00 c0
	sta $20                      ; 818e: 85 20
	lda $c001                    ; 8190: ad 01 c0
	sta $21                      ; 8193: 85 21
	lda $c002                    ; 8195: ad 02 c0
	sta $22                      ; 8198: 85 22
	jsr $864e                    ; 819a: 20 4e 86
loc_819d:
	lda $20                      ; 819d: a5 20
	sta $10                      ; 819f: 85 10
	lda $21                      ; 81a1: a5 21
	sta $11                      ; 81a3: 85 11
	lda $22                      ; 81a5: a5 22
	sta $12                      ; 81a7: 85 12
	lda $22                      ; 81a9: a5 22
	sta $12                      ; 81ab: 85 12
	rep #$20                     ; 81ad: c2 20
	lda $20                      ; 81af: a5 20
	clc                          ; 81b1: 18
	adc $4216                    ; 81b2: 6d 16 42 ; RDMPYL
	.db $90, $05                 ; 81b5: 90 05
loc_81b7:
	inc $12                      ; 81b7: e6 12
	sbc.w #RESET                 ; 81b9: e9 00 80
loc_81bc:
	sta $10                      ; 81bc: 85 10
	sep #$20                     ; 81be: e2 20
	lda [$10]                    ; 81c0: a7 10
	sta $20                      ; 81c2: 85 20
	ldy $10                      ; 81c4: a4 10
	iny                          ; 81c6: c8
	.db $d0, $05                 ; 81c7: d0 05
loc_81c9:
	inc $12                      ; 81c9: e6 12
	ldy.w #RESET                 ; 81cb: a0 00 80
loc_81ce:
	sty $10                      ; 81ce: 84 10
	lda [$10]                    ; 81d0: a7 10
	sta $21                      ; 81d2: 85 21
	ldy $10                      ; 81d4: a4 10
	iny                          ; 81d6: c8
	.db $d0, $05                 ; 81d7: d0 05
loc_81d9:
	inc $12                      ; 81d9: e6 12
	ldy.w #RESET                 ; 81db: a0 00 80
loc_81de:
	sty $10                      ; 81de: 84 10
	lda [$10]                    ; 81e0: a7 10
	sta $22                      ; 81e2: 85 22
	jsr $864e                    ; 81e4: 20 4e 86
loc_81e7:
	lda $20                      ; 81e7: a5 20
	sta $10                      ; 81e9: 85 10
	lda $21                      ; 81eb: a5 21
	sta $11                      ; 81ed: 85 11
	lda $22                      ; 81ef: a5 22
	sta $12                      ; 81f1: 85 12
	lda [$10]                    ; 81f3: a7 10
	xba                          ; 81f5: eb
	ldy $10                      ; 81f6: a4 10
	iny                          ; 81f8: c8
	.db $d0, $05                 ; 81f9: d0 05
loc_81fb:
	inc $12                      ; 81fb: e6 12
	ldy.w #RESET                 ; 81fd: a0 00 80
loc_8200:
	sty $10                      ; 8200: 84 10
	lda [$10]                    ; 8202: a7 10
	xba                          ; 8204: eb
	ldy $10                      ; 8205: a4 10
	iny                          ; 8207: c8
	.db $d0, $05                 ; 8208: d0 05
loc_820a:
	inc $12                      ; 820a: e6 12
	ldy.w #RESET                 ; 820c: a0 00 80
loc_820f:
	sty $10                      ; 820f: 84 10
	rep #$20                     ; 8211: c2 20
	tax                          ; 8213: aa
	sep #$20                     ; 8214: e2 20
	lda [$10]                    ; 8216: a7 10
	sta $2142                    ; 8218: 8d 42 21 ; APUIO2
	lda $08                      ; 821b: a5 08
	sta $2140                    ; 821d: 8d 40 21 ; APUIO0
	ldy $10                      ; 8220: a4 10
	iny                          ; 8222: c8
	.db $d0, $05                 ; 8223: d0 05
loc_8225:
	inc $12                      ; 8225: e6 12
	ldy.w #RESET                 ; 8227: a0 00 80
loc_822a:
	sty $10                      ; 822a: 84 10
	inc $08                      ; 822c: e6 08
	.db $d0, $02                 ; 822e: d0 02
loc_8230:
	inc $08                      ; 8230: e6 08
loc_8232:
	cmp $2140                    ; 8232: cd 40 21 ; APUIO0
	.db $d0, $fb                 ; 8235: d0 fb
loc_8237:
	dex                          ; 8237: ca
	.db $d0, $dc                 ; 8238: d0 dc
loc_823a:
	lda $c006                    ; 823a: ad 06 c0
	sta $20                      ; 823d: 85 20
	lda $c007                    ; 823f: ad 07 c0
	sta $21                      ; 8242: 85 21
	lda $c008                    ; 8244: ad 08 c0
	sta $22                      ; 8247: 85 22
	jsr $864e                    ; 8249: 20 4e 86
loc_824c:
	lda $20                      ; 824c: a5 20
	sta $10                      ; 824e: 85 10
	lda $21                      ; 8250: a5 21
	sta $11                      ; 8252: 85 11
	lda $22                      ; 8254: a5 22
	sta $12                      ; 8256: 85 12
	lda.b #$00                   ; 8258: a9 00
	xba                          ; 825a: eb
	lda $01                      ; 825b: a5 01
	rep #$20                     ; 825d: c2 20
	asl                          ; 825f: 0a
	asl                          ; 8260: 0a
	asl                          ; 8261: 0a
	asl                          ; 8262: 0a
	asl                          ; 8263: 0a
	clc                          ; 8264: 18
	adc $10                      ; 8265: 65 10
	.db $90, $05                 ; 8267: 90 05
loc_8269:
	inc $12                      ; 8269: e6 12
	sbc.w #RESET                 ; 826b: e9 00 80
loc_826e:
	sta $10                      ; 826e: 85 10
	ldx.w #$0000                 ; 8270: a2 00 00
	sep #$20                     ; 8273: e2 20
	lda [$10]                    ; 8275: a7 10
	sta $c0,x                    ; 8277: 95 c0
	sta $e0,x                    ; 8279: 95 e0
	ldy $10                      ; 827b: a4 10
	iny                          ; 827d: c8
	.db $d0, $05                 ; 827e: d0 05
loc_8280:
	inc $12                      ; 8280: e6 12
	ldy.w #RESET                 ; 8282: a0 00 80
loc_8285:
	sty $10                      ; 8285: 84 10
	lda [$10]                    ; 8287: a7 10
	sta $c1,x                    ; 8289: 95 c1
	sta $e1,x                    ; 828b: 95 e1
	ldy $10                      ; 828d: a4 10
	iny                          ; 828f: c8
	.db $d0, $05                 ; 8290: d0 05
loc_8292:
	inc $12                      ; 8292: e6 12
	ldy.w #RESET                 ; 8294: a0 00 80
loc_8297:
	sty $10                      ; 8297: 84 10
	lda.b #$00                   ; 8299: a9 00
	sta $a0,x                    ; 829b: 95 a0
	sta $a1,x                    ; 829d: 95 a1
	inx                          ; 829f: e8
	inx                          ; 82a0: e8
	cpx.w #$0020                 ; 82a1: e0 20 00
	.db $d0, $cf                 ; 82a4: d0 cf
loc_82a6:
	ldy.w #$0000                 ; 82a6: a0 00 00
	rep #$20                     ; 82a9: c2 20
	lda $1e40,y                  ; 82ab: b9 40 1e
	.db $f0, $1f                 ; 82ae: f0 1f
loc_82b0:
	ldx.w #$0000                 ; 82b0: a2 00 00
	cmp $e0,x                    ; 82b3: d5 e0
	.db $f0, $09                 ; 82b5: f0 09
loc_82b7:
	inx                          ; 82b7: e8
	inx                          ; 82b8: e8
	cpx.w #$0020                 ; 82b9: e0 20 00
	.db $d0, $f5                 ; 82bc: d0 f5
loc_82be:
	.db $80, $08                 ; 82be: 80 08
loc_82c0:
	sta $1ea0,y                  ; 82c0: 99 a0 1e
	lda.w #$0000                 ; 82c3: a9 00 00
	sta $e0,x                    ; 82c6: 95 e0
loc_82c8:
	iny                          ; 82c8: c8
	iny                          ; 82c9: c8
	cpy.w #$0020                 ; 82ca: c0 20 00
	.db $d0, $dc                 ; 82cd: d0 dc
loc_82cf:
	lda.w #$0000                 ; 82cf: a9 00 00
	sta $2141                    ; 82d2: 8d 41 21 ; APUIO1
	tya                          ; 82d5: 98
	.db $f0, $2a                 ; 82d6: f0 2a
loc_82d8:
	ldx.w #$0000                 ; 82d8: a2 00 00
	lda.w #$0000                 ; 82db: a9 00 00
	clc                          ; 82de: 18
	adc $e0,x                    ; 82df: 75 e0
	inx                          ; 82e1: e8
	inx                          ; 82e2: e8
	cpx.w #$0020                 ; 82e3: e0 20 00
	.db $d0, $f7                 ; 82e6: d0 f7
loc_82e8:
	tax                          ; 82e8: aa
	.db $d0, $2e                 ; 82e9: d0 2e
loc_82eb:
	sep #$20                     ; 82eb: e2 20
	lda.b #$ff                   ; 82ed: a9 ff
	sta $2141                    ; 82ef: 8d 41 21 ; APUIO1
	lda.b #$00                   ; 82f2: a9 00
	sta $2140                    ; 82f4: 8d 40 21 ; APUIO0
	cmp $2140                    ; 82f7: cd 40 21 ; APUIO0
	.db $d0, $fb                 ; 82fa: d0 fb
loc_82fc:
	inc                          ; 82fc: 1a
	sta $08                      ; 82fd: 85 08
	jmp $84ca                    ; 82ff: 4c ca 84

; --- Block at $8302-$8316 ---
loc_8302:
	sep #$20                     ; 8302: e2 20
	lda.b #$11                   ; 8304: a9 11
	sta $2141                    ; 8306: 8d 41 21 ; APUIO1
	lda.b #$00                   ; 8309: a9 00
	sta $2140                    ; 830b: 8d 40 21 ; APUIO0
	cmp $2140                    ; 830e: cd 40 21 ; APUIO0
	.db $d0, $fb                 ; 8311: d0 fb
loc_8313:
	inc                          ; 8313: 1a
	sta $08                      ; 8314: 85 08
	jmp $83a3                    ; 8316: 4c a3 83

; --- Block at $8319-$832b ---
loc_8319:
	rep #$20                     ; 8319: c2 20
	stz $08                      ; 831b: 64 08
	ldx.w #$0000                 ; 831d: a2 00 00
	lda $a0,x                    ; 8320: b5 a0
	.db $f0, $0a                 ; 8322: f0 0a
loc_8324:
	inx                          ; 8324: e8
	inx                          ; 8325: e8
	cpx.w #$0020                 ; 8326: e0 20 00
	.db $d0, $f5                 ; 8329: d0 f5
loc_832b:
	jmp $83a3                    ; 832b: 4c a3 83

; --- Block at $832e-$83a3 ---
loc_832e:
	txy                          ; 832e: 9b
	inx                          ; 832f: e8
	inx                          ; 8330: e8
	lda $a0,x                    ; 8331: b5 a0
	.db $d0, $0f                 ; 8333: d0 0f
loc_8335:
	inx                          ; 8335: e8
	inx                          ; 8336: e8
	cpx.w #$0020                 ; 8337: e0 20 00
	.db $d0, $f5                 ; 833a: d0 f5
loc_833c:
	lda $1e60,y                  ; 833c: b9 60 1e
	sta $2142                    ; 833f: 8d 42 21 ; APUIO2
	.db $80, $4c                 ; 8342: 80 4c
loc_8344:
	sta $1e40,y                  ; 8344: 99 40 1e
	lda $60,x                    ; 8347: b5 60
	sta $2142                    ; 8349: 8d 42 21 ; APUIO2
	lda $08                      ; 834c: a5 08
	sta $2140                    ; 834e: 8d 40 21 ; APUIO0
	inc $08                      ; 8351: e6 08
	cmp $2140                    ; 8353: cd 40 21 ; APUIO0
	.db $d0, $fb                 ; 8356: d0 fb
loc_8358:
	lda $80,x                    ; 8358: b5 80
	sta $1e80,y                  ; 835a: 99 80 1e
	clc                          ; 835d: 18
	adc $1e60,y                  ; 835e: 79 60 1e
	sta $1e62,y                  ; 8361: 99 62 1e
	lda $1e60,y                  ; 8364: b9 60 1e
	sta $2142                    ; 8367: 8d 42 21 ; APUIO2
	lda $08                      ; 836a: a5 08
	sta $2140                    ; 836c: 8d 40 21 ; APUIO0
	inc $08                      ; 836f: e6 08
	cmp $2140                    ; 8371: cd 40 21 ; APUIO0
	.db $d0, $fb                 ; 8374: d0 fb
loc_8376:
	lda $80,x                    ; 8376: b5 80
	sta $2142                    ; 8378: 8d 42 21 ; APUIO2
	lda $08                      ; 837b: a5 08
	sta $2140                    ; 837d: 8d 40 21 ; APUIO0
	inc $08                      ; 8380: e6 08
	cmp $2140                    ; 8382: cd 40 21 ; APUIO0
	.db $d0, $fb                 ; 8385: d0 fb
loc_8387:
	iny                          ; 8387: c8
	iny                          ; 8388: c8
	lda.w #$0000                 ; 8389: a9 00 00
	sta $a0,x                    ; 838c: 95 a0
	.db $80, $a5                 ; 838e: 80 a5
loc_8390:
	sep #$20                     ; 8390: e2 20
	lda.b #$22                   ; 8392: a9 22
	sta $2141                    ; 8394: 8d 41 21 ; APUIO1
	lda $08                      ; 8397: a5 08
	sta $2140                    ; 8399: 8d 40 21 ; APUIO0
	inc $08                      ; 839c: e6 08
	cmp $2140                    ; 839e: cd 40 21 ; APUIO0
	.db $d0, $fb                 ; 83a1: d0 fb

; --- Block at $83a3-$83d6 ---
loc_83a3:
	sep #$20                     ; 83a3: e2 20
	sty $0a                      ; 83a5: 84 0a
	lda $c003                    ; 83a7: ad 03 c0
	sta $20                      ; 83aa: 85 20
	lda $c004                    ; 83ac: ad 04 c0
	sta $21                      ; 83af: 85 21
	lda $c005                    ; 83b1: ad 05 c0
	sta $22                      ; 83b4: 85 22
	jsr $864e                    ; 83b6: 20 4e 86
loc_83b9:
	lda $20                      ; 83b9: a5 20
	sta $10                      ; 83bb: 85 10
	lda $21                      ; 83bd: a5 21
	sta $11                      ; 83bf: 85 11
	lda $22                      ; 83c1: a5 22
	sta $12                      ; 83c3: 85 12
	ldy.w #$0000                 ; 83c5: a0 00 00
	rep #$20                     ; 83c8: c2 20
	lda $1ee0,y                  ; 83ca: b9 e0 1e
	.db $d0, $0a                 ; 83cd: d0 0a
loc_83cf:
	iny                          ; 83cf: c8
	iny                          ; 83d0: c8
	cpy.w #$0020                 ; 83d1: c0 20 00
	.db $90, $f2                 ; 83d4: 90 f2
loc_83d6:
	jmp $84b6                    ; 83d6: 4c b6 84

; --- Block at $83d9-$84b3 ---
loc_83d9:
	iny                          ; 83d9: c8
	iny                          ; 83da: c8
	phy                          ; 83db: 5a
	sta $28                      ; 83dc: 85 28
	sep #$20                     ; 83de: e2 20
	sta $4202                    ; 83e0: 8d 02 42 ; WRMPYA
	lda.b #$03                   ; 83e3: a9 03
	sta $4203                    ; 83e5: 8d 03 42 ; WRMPYB
	lda $12                      ; 83e8: a5 12
	sta $15                      ; 83ea: 85 15
	rep #$20                     ; 83ec: c2 20
	lda $10                      ; 83ee: a5 10
	clc                          ; 83f0: 18
	adc $4216                    ; 83f1: 6d 16 42 ; RDMPYL
	.db $90, $05                 ; 83f4: 90 05
loc_83f6:
	inc $15                      ; 83f6: e6 15
	sbc.w #RESET                 ; 83f8: e9 00 80
loc_83fb:
	sta $13                      ; 83fb: 85 13
	sep #$20                     ; 83fd: e2 20
	lda [$13]                    ; 83ff: a7 13
	sta $20                      ; 8401: 85 20
	ldy $13                      ; 8403: a4 13
	iny                          ; 8405: c8
	.db $d0, $05                 ; 8406: d0 05
loc_8408:
	inc $15                      ; 8408: e6 15
	ldy.w #RESET                 ; 840a: a0 00 80
loc_840d:
	sty $13                      ; 840d: 84 13
	lda [$13]                    ; 840f: a7 13
	sta $21                      ; 8411: 85 21
	ldy $13                      ; 8413: a4 13
	iny                          ; 8415: c8
	.db $d0, $05                 ; 8416: d0 05
loc_8418:
	inc $15                      ; 8418: e6 15
	ldy.w #RESET                 ; 841a: a0 00 80
loc_841d:
	sty $13                      ; 841d: 84 13
	lda [$13]                    ; 841f: a7 13
	sta $22                      ; 8421: 85 22
	jsr $864e                    ; 8423: 20 4e 86
loc_8426:
	lda $20                      ; 8426: a5 20
	sta $18                      ; 8428: 85 18
	lda $21                      ; 842a: a5 21
	sta $19                      ; 842c: 85 19
	lda $22                      ; 842e: a5 22
	sta $1a                      ; 8430: 85 1a
	lda [$18]                    ; 8432: a7 18
	xba                          ; 8434: eb
	ldy $18                      ; 8435: a4 18
	iny                          ; 8437: c8
	.db $d0, $05                 ; 8438: d0 05
loc_843a:
	inc $1a                      ; 843a: e6 1a
	ldy.w #RESET                 ; 843c: a0 00 80
loc_843f:
	sty $18                      ; 843f: 84 18
	lda [$18]                    ; 8441: a7 18
	xba                          ; 8443: eb
	ldy $18                      ; 8444: a4 18
	iny                          ; 8446: c8
	.db $d0, $05                 ; 8447: d0 05
loc_8449:
	inc $1a                      ; 8449: e6 1a
	ldy.w #RESET                 ; 844b: a0 00 80
loc_844e:
	sty $18                      ; 844e: 84 18
	rep #$20                     ; 8450: c2 20
	tax                          ; 8452: aa
	ldy $0a                      ; 8453: a4 0a
	sta $1e80,y                  ; 8455: 99 80 1e
	clc                          ; 8458: 18
	adc $1e60,y                  ; 8459: 79 60 1e
	sta $1e62,y                  ; 845c: 99 62 1e
	lda $28                      ; 845f: a5 28
	sta $1e40,y                  ; 8461: 99 40 1e
	iny                          ; 8464: c8
	iny                          ; 8465: c8
	sty $0a                      ; 8466: 84 0a
	sep #$20                     ; 8468: e2 20
	lda [$18]                    ; 846a: a7 18
	sta $2141                    ; 846c: 8d 41 21 ; APUIO1
	ldy $18                      ; 846f: a4 18
	iny                          ; 8471: c8
	.db $d0, $05                 ; 8472: d0 05
loc_8474:
	inc $1a                      ; 8474: e6 1a
	ldy.w #RESET                 ; 8476: a0 00 80
loc_8479:
	sty $18                      ; 8479: 84 18
	lda [$18]                    ; 847b: a7 18
	sta $2142                    ; 847d: 8d 42 21 ; APUIO2
	ldy $18                      ; 8480: a4 18
	iny                          ; 8482: c8
	.db $d0, $05                 ; 8483: d0 05
loc_8485:
	inc $1a                      ; 8485: e6 1a
	ldy.w #RESET                 ; 8487: a0 00 80
loc_848a:
	sty $18                      ; 848a: 84 18
	lda [$18]                    ; 848c: a7 18
	sta $2143                    ; 848e: 8d 43 21 ; APUIO3
	ldy $18                      ; 8491: a4 18
	iny                          ; 8493: c8
	.db $d0, $05                 ; 8494: d0 05
loc_8496:
	inc $1a                      ; 8496: e6 1a
	ldy.w #RESET                 ; 8498: a0 00 80
loc_849b:
	sty $18                      ; 849b: 84 18
	lda $08                      ; 849d: a5 08
	sta $2140                    ; 849f: 8d 40 21 ; APUIO0
	inc $08                      ; 84a2: e6 08
	.db $d0, $02                 ; 84a4: d0 02
loc_84a6:
	inc $08                      ; 84a6: e6 08
loc_84a8:
	cmp $2140                    ; 84a8: cd 40 21 ; APUIO0
	.db $d0, $fb                 ; 84ab: d0 fb
loc_84ad:
	dex                          ; 84ad: ca
	dex                          ; 84ae: ca
	dex                          ; 84af: ca
	.db $d0, $b8                 ; 84b0: d0 b8
loc_84b2:
	ply                          ; 84b2: 7a
	jmp $83c8                    ; 84b3: 4c c8 83

; --- Block at $84b6-$84ca ---
loc_84b6:
	ldx $0a                      ; 84b6: a6 0a
	rep #$20                     ; 84b8: c2 20
	lda.w #$0000                 ; 84ba: a9 00 00
	.db $80, $04                 ; 84bd: 80 04
	sta $40,x                    ; 84bf: 95 40
	inx                          ; 84c1: e8
	inx                          ; 84c2: e8
loc_84c3:
	cpx.w #$0020                 ; 84c3: e0 20 00
	.db $d0, $f7                 ; 84c6: d0 f7
loc_84c8:
	stz $08                      ; 84c8: 64 08

; --- Block at $84ca-$84f4 ---
loc_84ca:
	sep #$20                     ; 84ca: e2 20
	lda $c009                    ; 84cc: ad 09 c0
	sta $20                      ; 84cf: 85 20
	lda $c00a                    ; 84d1: ad 0a c0
	sta $21                      ; 84d4: 85 21
	lda $c00b                    ; 84d6: ad 0b c0
	sta $22                      ; 84d9: 85 22
	jsr $864e                    ; 84db: 20 4e 86
loc_84de:
	lda $20                      ; 84de: a5 20
	sta $10                      ; 84e0: 85 10
	lda $21                      ; 84e2: a5 21
	sta $11                      ; 84e4: 85 11
	lda $22                      ; 84e6: a5 22
	sta $12                      ; 84e8: 85 12
	ldy.w #$0000                 ; 84ea: a0 00 00
	rep #$20                     ; 84ed: c2 20
	lda $1ec0,y                  ; 84ef: b9 c0 1e
	.db $d0, $03                 ; 84f2: d0 03
loc_84f4:
	jmp $857c                    ; 84f4: 4c 7c 85

; --- Block at $84f7-$8579 ---
loc_84f7:
	phy                          ; 84f7: 5a
	ldx $11                      ; 84f8: a6 11
	stx $19                      ; 84fa: 86 19
	ldx.w #$0000                 ; 84fc: a2 00 00
	cmp $40,x                    ; 84ff: d5 40
	.db $f0, $04                 ; 8501: f0 04
loc_8503:
	inx                          ; 8503: e8
	inx                          ; 8504: e8
	.db $80, $f8                 ; 8505: 80 f8
loc_8507:
	asl                          ; 8507: 0a
	asl                          ; 8508: 0a
	clc                          ; 8509: 18
	adc $10                      ; 850a: 65 10
	.db $90, $05                 ; 850c: 90 05
loc_850e:
	inc $1a                      ; 850e: e6 1a
	sbc.w #RESET                 ; 8510: e9 00 80
loc_8513:
	sta $18                      ; 8513: 85 18
	sep #$20                     ; 8515: e2 20
	lda [$18]                    ; 8517: a7 18
	xba                          ; 8519: eb
	ldy $18                      ; 851a: a4 18
	iny                          ; 851c: c8
	.db $d0, $05                 ; 851d: d0 05
loc_851f:
	inc $1a                      ; 851f: e6 1a
	ldy.w #RESET                 ; 8521: a0 00 80
loc_8524:
	sty $18                      ; 8524: 84 18
	lda [$18]                    ; 8526: a7 18
	xba                          ; 8528: eb
	ldy $18                      ; 8529: a4 18
	iny                          ; 852b: c8
	.db $d0, $05                 ; 852c: d0 05
loc_852e:
	inc $1a                      ; 852e: e6 1a
	ldy.w #RESET                 ; 8530: a0 00 80
loc_8533:
	sty $18                      ; 8533: 84 18
	rep #$20                     ; 8535: c2 20
	clc                          ; 8537: 18
	adc $60,x                    ; 8538: 75 60
	sta $2142                    ; 853a: 8d 42 21 ; APUIO2
	lda $08                      ; 853d: a5 08
	sta $2140                    ; 853f: 8d 40 21 ; APUIO0
	inc $08                      ; 8542: e6 08
	cmp $2140                    ; 8544: cd 40 21 ; APUIO0
	.db $d0, $fb                 ; 8547: d0 fb
loc_8549:
	sep #$20                     ; 8549: e2 20
	lda [$18]                    ; 854b: a7 18
	xba                          ; 854d: eb
	ldy $18                      ; 854e: a4 18
	iny                          ; 8550: c8
	.db $d0, $05                 ; 8551: d0 05
loc_8553:
	inc $1a                      ; 8553: e6 1a
	ldy.w #RESET                 ; 8555: a0 00 80
loc_8558:
	sty $18                      ; 8558: 84 18
	lda [$18]                    ; 855a: a7 18
	xba                          ; 855c: eb
	rep #$20                     ; 855d: c2 20
	clc                          ; 855f: 18
	adc $60,x                    ; 8560: 75 60
	sta $2142                    ; 8562: 8d 42 21 ; APUIO2
	lda $08                      ; 8565: a5 08
	sta $2140                    ; 8567: 8d 40 21 ; APUIO0
	inc $08                      ; 856a: e6 08
	cmp $2140                    ; 856c: cd 40 21 ; APUIO0
	.db $d0, $fb                 ; 856f: d0 fb
loc_8571:
	ply                          ; 8571: 7a
	iny                          ; 8572: c8
	iny                          ; 8573: c8
	cpy.w #$0020                 ; 8574: c0 20 00
	.db $f0, $03                 ; 8577: f0 03
loc_8579:
	jmp $84ed                    ; 8579: 4c ed 84

; --- Block at $857c-$85e0 ---
loc_857c:
	stz $08                      ; 857c: 64 08
	sep #$20                     ; 857e: e2 20
	lda $c00c                    ; 8580: ad 0c c0
	sta $20                      ; 8583: 85 20
	lda $c00d                    ; 8585: ad 0d c0
	sta $21                      ; 8588: 85 21
	lda $c00e                    ; 858a: ad 0e c0
	sta $22                      ; 858d: 85 22
	jsr $864e                    ; 858f: 20 4e 86
loc_8592:
	lda $20                      ; 8592: a5 20
	sta $10                      ; 8594: 85 10
	lda $21                      ; 8596: a5 21
	sta $11                      ; 8598: 85 11
	lda $22                      ; 859a: a5 22
	sta $12                      ; 859c: 85 12
	ldx.w #$0000                 ; 859e: a2 00 00
	rep #$20                     ; 85a1: c2 20
	lda $11                      ; 85a3: a5 11
	sta $19                      ; 85a5: 85 19
	lda $1ec0,x                  ; 85a7: bd c0 1e
	.db $f0, $24                 ; 85aa: f0 24
loc_85ac:
	clc                          ; 85ac: 18
	adc $10                      ; 85ad: 65 10
	.db $90, $05                 ; 85af: 90 05
loc_85b1:
	inc $1a                      ; 85b1: e6 1a
	sbc.w #RESET                 ; 85b3: e9 00 80
loc_85b6:
	sta $18                      ; 85b6: 85 18
	lda [$18]                    ; 85b8: a7 18
	sta $2142                    ; 85ba: 8d 42 21 ; APUIO2
	lda $08                      ; 85bd: a5 08
	sta $2140                    ; 85bf: 8d 40 21 ; APUIO0
	inc $08                      ; 85c2: e6 08
	cmp $2140                    ; 85c4: cd 40 21 ; APUIO0
	.db $d0, $fb                 ; 85c7: d0 fb
loc_85c9:
	inx                          ; 85c9: e8
	inx                          ; 85ca: e8
	cpx.w #$0020                 ; 85cb: e0 20 00
	.db $d0, $d3                 ; 85ce: d0 d3
loc_85d0:
	lda $08                      ; 85d0: a5 08
	sta $2140                    ; 85d2: 8d 40 21 ; APUIO0
	cmp $2140                    ; 85d5: cd 40 21 ; APUIO0
	.db $d0, $fb                 ; 85d8: d0 fb
loc_85da:
	lda.w #$0000                 ; 85da: a9 00 00
	sta $2140                    ; 85dd: 8d 40 21 ; APUIO0
	rts                          ; 85e0: 60

; --- Block at $85e1-$8607 ---
loc_85e1:
	sep #$20                     ; 85e1: e2 20
	lda $03                      ; 85e3: a5 03
	sta $2143                    ; 85e5: 8d 43 21 ; APUIO3
	lda $02                      ; 85e8: a5 02
	sta $2142                    ; 85ea: 8d 42 21 ; APUIO2
	lda $01                      ; 85ed: a5 01
	sta $2141                    ; 85ef: 8d 41 21 ; APUIO1
	lda $00                      ; 85f2: a5 00
	sta $2140                    ; 85f4: 8d 40 21 ; APUIO0
	cmp $2140                    ; 85f7: cd 40 21 ; APUIO0
	.db $d0, $fb                 ; 85fa: d0 fb
loc_85fc:
	stz $2140                    ; 85fc: 9c 40 21 ; APUIO0
	stz $00                      ; 85ff: 64 00
	stz $01                      ; 8601: 64 01
	stz $02                      ; 8603: 64 02
	stz $03                      ; 8605: 64 03
	rts                          ; 8607: 60

; --- Block at $8608-$861d ---
loc_8608:
	sep #$20                     ; 8608: e2 20
	sta $2140                    ; 860a: 8d 40 21 ; APUIO0
	cmp $2140                    ; 860d: cd 40 21 ; APUIO0
	.db $d0, $fb                 ; 8610: d0 fb
loc_8612:
	stz $2140                    ; 8612: 9c 40 21 ; APUIO0
	stz $00                      ; 8615: 64 00
	stz $01                      ; 8617: 64 01
	stz $02                      ; 8619: 64 02
	stz $03                      ; 861b: 64 03
	rts                          ; 861d: 60

; --- Block at $861e-$864d ---
loc_861e:
	sep #$20                     ; 861e: e2 20
	lda $01                      ; 8620: a5 01
	sta $2141                    ; 8622: 8d 41 21 ; APUIO1
	lda $02                      ; 8625: a5 02
	sta $2142                    ; 8627: 8d 42 21 ; APUIO2
	lda $03                      ; 862a: a5 03
	sta $2143                    ; 862c: 8d 43 21 ; APUIO3
	lda $00                      ; 862f: a5 00
	sta $2140                    ; 8631: 8d 40 21 ; APUIO0
	cmp $2140                    ; 8634: cd 40 21 ; APUIO0
	.db $d0, $fb                 ; 8637: d0 fb
loc_8639:
	stz $2140                    ; 8639: 9c 40 21 ; APUIO0
	stz $2141                    ; 863c: 9c 41 21 ; APUIO1
	stz $2142                    ; 863f: 9c 42 21 ; APUIO2
	stz $2143                    ; 8642: 9c 43 21 ; APUIO3
	stz $00                      ; 8645: 64 00
	stz $01                      ; 8647: 64 01
	stz $02                      ; 8649: 64 02
	stz $03                      ; 864b: 64 03
	rts                          ; 864d: 60

; --- Block at $864e-$8682 ---
loc_864e:
	php                          ; 864e: 08
	rep #$20                     ; 864f: c2 20
	lda $21                      ; 8651: a5 21
	cmp.w #$0040                 ; 8653: c9 40 00
	.db $b0, $05                 ; 8656: b0 05
loc_8658:
	adc.w #$04c0                 ; 8658: 69 c0 04
	.db $80, $22                 ; 865b: 80 22
loc_865d:
	cmp.w #$00c0                 ; 865d: c9 c0 00
	.db $b0, $05                 ; 8660: b0 05
loc_8662:
	adc.w #$0540                 ; 8662: 69 40 05
	.db $80, $18                 ; 8665: 80 18
loc_8667:
	cmp.w #$0140                 ; 8667: c9 40 01
	.db $b0, $05                 ; 866a: b0 05
loc_866c:
	adc.w #$05c0                 ; 866c: 69 c0 05
	.db $80, $0e                 ; 866f: 80 0e
loc_8671:
	cmp.w #$01c0                 ; 8671: c9 c0 01
	.db $b0, $05                 ; 8674: b0 05
loc_8676:
	adc.w #$0640                 ; 8676: 69 40 06
	.db $80, $04                 ; 8679: 80 04
loc_867b:
	clc                          ; 867b: 18
	adc.w #$06c0                 ; 867c: 69 c0 06
loc_867f:
	sta $21                      ; 867f: 85 21
	plp                          ; 8681: 28
	rts                          ; 8682: 60

; --- Block at $48000-$48106 ---
loc_48000:
	jsr $8008                    ; 48000: 20 08 80
loc_48003:
	rtl                          ; 48003: 6b
	jsr $8107                    ; 48004: 20 07 81
loc_48007:
	rtl                          ; 48007: 6b
	phb                          ; 48008: 8b
	phd                          ; 48009: 0b
	php                          ; 4800a: 08
	rep #$20                     ; 4800b: c2 20
	rep #$10                     ; 4800d: c2 10
	pha                          ; 4800f: 48
	phx                          ; 48010: da
	phy                          ; 48011: 5a
	sep #$20                     ; 48012: e2 20
	lda.b #$04                   ; 48014: a9 04
	pha                          ; 48016: 48
	plb                          ; 48017: ab
	ldx.w #$1e00                 ; 48018: a2 00 1e
	phx                          ; 4801b: da
	pld                          ; 4801c: 2b
	sep #$20                     ; 4801d: e2 20
	ldx.w #$0000                 ; 4801f: a2 00 00
	stz $1e00,x                  ; 48022: 9e 00 1e
	inx                          ; 48025: e8
	cpx.w #$0200                 ; 48026: e0 00 02
	.db $d0, $f7                 ; 48029: d0 f7
loc_4802b:
	rep #$20                     ; 4802b: c2 20
	lda.w #$bbaa                 ; 4802d: a9 aa bb
	cmp $2140                    ; 48030: cd 40 21 ; APUIO0
	.db $d0, $fb                 ; 48033: d0 fb
loc_48035:
	sep #$20                     ; 48035: e2 20
	ldx.w #$0000                 ; 48037: a2 00 00
	lda $8684,x                  ; 4803a: bd 84 86
	xba                          ; 4803d: eb
	lda $8683,x                  ; 4803e: bd 83 86
	rep #$20                     ; 48041: c2 20
	tay                          ; 48043: a8
	sep #$20                     ; 48044: e2 20
	inx                          ; 48046: e8
	inx                          ; 48047: e8
	lda $8683,x                  ; 48048: bd 83 86
	sta $2142                    ; 4804b: 8d 42 21 ; APUIO2
	lda $8684,x                  ; 4804e: bd 84 86
	sta $2143                    ; 48051: 8d 43 21 ; APUIO3
	lda.b #$01                   ; 48054: a9 01
	sta $2141                    ; 48056: 8d 41 21 ; APUIO1
	inx                          ; 48059: e8
	inx                          ; 4805a: e8
	lda.b #$cc                   ; 4805b: a9 cc
	sta $2140                    ; 4805d: 8d 40 21 ; APUIO0
	cmp $2140                    ; 48060: cd 40 21 ; APUIO0
	.db $d0, $fb                 ; 48063: d0 fb
loc_48065:
	stz $08                      ; 48065: 64 08
	lda $8683,x                  ; 48067: bd 83 86
	sta $2141                    ; 4806a: 8d 41 21 ; APUIO1
	lda $08                      ; 4806d: a5 08
	sta $2140                    ; 4806f: 8d 40 21 ; APUIO0
	inc $08                      ; 48072: e6 08
	cmp $2140                    ; 48074: cd 40 21 ; APUIO0
	.db $d0, $fb                 ; 48077: d0 fb
loc_48079:
	inx                          ; 48079: e8
	dey                          ; 4807a: 88
	.db $d0, $ea                 ; 4807b: d0 ea
loc_4807d:
	inc $08                      ; 4807d: e6 08
	inc $08                      ; 4807f: e6 08
	inc $08                      ; 48081: e6 08
	rep #$20                     ; 48083: c2 20
	lda $8683,x                  ; 48085: bd 83 86
	inx                          ; 48088: e8
	inx                          ; 48089: e8
	tay                          ; 4808a: a8
	.db $f0, $23                 ; 4808b: f0 23
loc_4808d:
	sep #$20                     ; 4808d: e2 20
	lda $8683,x                  ; 4808f: bd 83 86
	sta $2142                    ; 48092: 8d 42 21 ; APUIO2
	lda $8684,x                  ; 48095: bd 84 86
	sta $2143                    ; 48098: 8d 43 21 ; APUIO3
	lda.b #$01                   ; 4809b: a9 01
	sta $2141                    ; 4809d: 8d 41 21 ; APUIO1
	inx                          ; 480a0: e8
	inx                          ; 480a1: e8
	lda $08                      ; 480a2: a5 08
	sta $2140                    ; 480a4: 8d 40 21 ; APUIO0
	cmp $2140                    ; 480a7: cd 40 21 ; APUIO0
	.db $d0, $fb                 ; 480aa: d0 fb
loc_480ac:
	stz $08                      ; 480ac: 64 08
	.db $80, $b7                 ; 480ae: 80 b7
loc_480b0:
	sep #$20                     ; 480b0: e2 20
	lda $8683,x                  ; 480b2: bd 83 86
	sta $2142                    ; 480b5: 8d 42 21 ; APUIO2
	lda $8684,x                  ; 480b8: bd 84 86
	sta $2143                    ; 480bb: 8d 43 21 ; APUIO3
	lda.b #$00                   ; 480be: a9 00
	sta $2141                    ; 480c0: 8d 41 21 ; APUIO1
	lda $08                      ; 480c3: a5 08
	sta $2140                    ; 480c5: 8d 40 21 ; APUIO0
	cmp $2140                    ; 480c8: cd 40 21 ; APUIO0
	.db $d0, $fb                 ; 480cb: d0 fb
loc_480cd:
	stz $2140                    ; 480cd: 9c 40 21 ; APUIO0
	sep #$20                     ; 480d0: e2 20
	ldx.w #$0000                 ; 480d2: a2 00 00
	stz $40,x                    ; 480d5: 74 40
	stz $60,x                    ; 480d7: 74 60
	stz $80,x                    ; 480d9: 74 80
	inx                          ; 480db: e8
	cpx.w #$0020                 ; 480dc: e0 20 00
	.db $d0, $f4                 ; 480df: d0 f4
loc_480e1:
	stz $00                      ; 480e1: 64 00
	stz $01                      ; 480e3: 64 01
	stz $02                      ; 480e5: 64 02
	stz $03                      ; 480e7: 64 03
	stz $04                      ; 480e9: 64 04
	stz $05                      ; 480eb: 64 05
	stz $06                      ; 480ed: 64 06
	stz $07                      ; 480ef: 64 07
	ldx.w #$3000                 ; 480f1: a2 00 30
	stx $60                      ; 480f4: 86 60
	ldx.w #$0800                 ; 480f6: a2 00 08
	dex                          ; 480f9: ca
	.db $d0, $fd                 ; 480fa: d0 fd
loc_480fc:
	rep #$10                     ; 480fc: c2 10
	ply                          ; 480fe: 7a
	plx                          ; 480ff: fa
	rep #$20                     ; 48100: c2 20
	pla                          ; 48102: 68
	plp                          ; 48103: 28
	pld                          ; 48104: 2b
	plb                          ; 48105: ab
	rts                          ; 48106: 60

