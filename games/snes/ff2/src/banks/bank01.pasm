; Disassembled by Peony
; Platform: SNES
; Mapper: FINAL FANTASY 2
; MapMode: LoRom
; RomSize: 1024K
; Banks: 32
; CopierHeader: False

.snes

; --- Block at $8000-$8044 ---
bank1_start:
	jsr $802c                    ; 8000: 20 2c 80
loc_8003:
	rtl                          ; 8003: 6b
	jsr $b9f1                    ; 8004: 20 f1 b9
loc_8007:
	rtl                          ; 8007: 6b
	jsr $c296                    ; 8008: 20 96 c2
loc_800b:
	rtl                          ; 800b: 6b
	jsr $9598                    ; 800c: 20 98 95
loc_800f:
	rtl                          ; 800f: 6b
	jsr $805e                    ; 8010: 20 5e 80
loc_8013:
	rtl                          ; 8013: 6b
	jsr $cc6a                    ; 8014: 20 6a cc
loc_8017:
	rtl                          ; 8017: 6b
	jsr $b9f1                    ; 8018: 20 f1 b9
loc_801b:
	rtl                          ; 801b: 6b
	jsr $82bb                    ; 801c: 20 bb 82
loc_801f:
	rtl                          ; 801f: 6b
	jsr $d44f                    ; 8020: 20 4f d4
loc_8023:
	rtl                          ; 8023: 6b
	jsr $cc6a                    ; 8024: 20 6a cc
loc_8027:
	rtl                          ; 8027: 6b
	jsr $806e                    ; 8028: 20 6e 80
loc_802b:
	rtl                          ; 802b: 6b
loc_802c:
	phb                          ; 802c: 8b
	phd                          ; 802d: 0b
	tdc                          ; 802e: 7b
	sta.l $004100                ; 802f: 8f 00 41 00
	lda.b #$7e                   ; 8033: a9 7e
	pha                          ; 8035: 48
	plb                          ; 8036: ab
	jsr $8045                    ; 8037: 20 45 80
loc_803a:
	lda.b #$80                   ; 803a: a9 80
	sta.l $002100                ; 803c: 8f 00 21 00 ; INIDISP
	tdc                          ; 8040: 7b
	xba                          ; 8041: eb
	pld                          ; 8042: 2b
	plb                          ; 8043: ab
	rts                          ; 8044: 60

; --- Block at $8045-$8057 ---
loc_8045:
	jsr $873a                    ; 8045: 20 3a 87
loc_8048:
	jsr $8c7f                    ; 8048: 20 7f 8c
loc_804b:
	tsx                          ; 804b: ba
	dex                          ; 804c: ca
	dex                          ; 804d: ca
	stx $1a65                    ; 804e: 8e 65 1a
	jsr $87fb                    ; 8051: 20 fb 87
loc_8054:
	jsr $9484                    ; 8054: 20 84 94
loc_8057:
	jmp $873f                    ; 8057: 4c 3f 87

; --- Block at $805e-$806d ---
loc_805e:
	pha                          ; 805e: 48
	lda.b #$00                   ; 805f: a9 00
	sta.l $000140                ; 8061: 8f 40 01 00
	jsl $14fd03                  ; 8065: 22 03 fd 14
loc_8069:
	lda.b #$00                   ; 8069: a9 00
	xba                          ; 806b: eb
	pla                          ; 806c: 68
	rts                          ; 806d: 60

; --- Block at $806e-$8077 ---
loc_806e:
	pha                          ; 806e: 48
	jsl $14fd03                  ; 806f: 22 03 fd 14
loc_8073:
	lda.b #$00                   ; 8073: a9 00
	xba                          ; 8075: eb
	pla                          ; 8076: 68
	rts                          ; 8077: 60

; --- Block at $8078-$80b1 ---
loc_8078:
	phb                          ; 8078: 8b
	tdc                          ; 8079: 7b
	pha                          ; 807a: 48
	plb                          ; 807b: ab
	lda.b #$80                   ; 807c: a9 80
	sta $2115                    ; 807e: 8d 15 21 ; VMAIN
	tdc                          ; 8081: 7b
	sta $420c                    ; 8082: 8d 0c 42 ; HDMAEN
	ldy $011d                    ; 8085: ac 1d 01
	sty $2116                    ; 8088: 8c 16 21 ; VMADDL
	lda.b #$01                   ; 808b: a9 01
	sta $4300                    ; 808d: 8d 00 43 ; DMAP0
	lda.b #$18                   ; 8090: a9 18
	sta $4301                    ; 8092: 8d 01 43 ; BBAD0
	rep #$20                     ; 8095: c2 20
	lda $011f                    ; 8097: ad 1f 01
	sta $4302                    ; 809a: 8d 02 43 ; A1TL0
	lda $0121                    ; 809d: ad 21 01
loc_80a0:
	sta $4304                    ; 80a0: 8d 04 43 ; A1B0
	sep #$20                     ; 80a3: e2 20
	lda $0123                    ; 80a5: ad 23 01
	sta $4306                    ; 80a8: 8d 06 43 ; DAS0H
	lda.b #$01                   ; 80ab: a9 01
	sta $420b                    ; 80ad: 8d 0b 42 ; MDMAEN
	plb                          ; 80b0: ab
	rts                          ; 80b1: 60

; --- Block at $80b2-$80d8 ---
loc_80b2:
	phd                          ; 80b2: 0b
	ldx.b #$00                   ; 80b3: a2 00
	eor $da,s                    ; 80b5: 43 da
	pld                          ; 80b7: 2b
	tdc                          ; 80b8: 7b
	sta.l $002121                ; 80b9: 8f 21 21 00 ; CGADD
	sta $00                      ; 80bd: 85 00
	lda.b #$22                   ; 80bf: a9 22
	sta $01                      ; 80c1: 85 01
	ldx.b #$00                   ; 80c3: a2 00
	ldy.b #$86                   ; 80c5: a0 86
	cop #$a9                     ; 80c7: 02 a9
	ror $0485,x                  ; 80c9: 7e 85 04
	ldx.b #$00                   ; 80cc: a2 00
	cop #$86                     ; 80ce: 02 86
	ora $a9                      ; 80d0: 05 a9
	ora ($8f,x)                  ; 80d2: 01 8f
	phd                          ; 80d4: 0b
	wdm #$00                     ; 80d5: 42 00
	pld                          ; 80d7: 2b
	rts                          ; 80d8: 60

; --- Block at $80d9-$80f4 ---
loc_80d9:
	phy                          ; 80d9: 5a
	phb                          ; 80da: 8b
	phk                          ; 80db: 4b
	plb                          ; 80dc: ab
	rep #$20                     ; 80dd: c2 20
	lda.w $0000,y                ; 80df: b9 00 00
	sta $2b                      ; 80e2: 85 2b
	lda.w $0002,y                ; 80e4: b9 02 00
	sta $2d                      ; 80e7: 85 2d
	sep #$20                     ; 80e9: e2 20
	lda $34                      ; 80eb: a5 34
	sta $2f                      ; 80ed: 85 2f
	plb                          ; 80ef: ab
	jsr $80f5                    ; 80f0: 20 f5 80
loc_80f3:
	ply                          ; 80f3: 7a
	rts                          ; 80f4: 60

; --- Block at $80f5-$810e ---
loc_80f5:
	rep #$20                     ; 80f5: c2 20
	lda $29                      ; 80f7: a5 29
	clc                          ; 80f9: 18
	adc $2b                      ; 80fa: 65 2b
	tay                          ; 80fc: a8
	lda $2d                      ; 80fd: a5 2d
	sta $31                      ; 80ff: 85 31
	sep #$20                     ; 8101: e2 20
	lda.b #$f7                   ; 8103: a9 f7
	jsr $811c                    ; 8105: 20 1c 81
loc_8108:
	pha                          ; 8108: 48
	lda $33                      ; 8109: a5 33
	.db $f0, $02                 ; 810b: f0 02
loc_810d:
	pla                          ; 810d: 68
	rts                          ; 810e: 60

; --- Block at $810f-$8119 ---
loc_810f:
	pla                          ; 810f: 68
	jsr $8152                    ; 8110: 20 52 81
loc_8113:
	dec $32                      ; 8113: c6 32
	.db $d0, $f9                 ; 8115: d0 f9
loc_8117:
	lda.b #$fc                   ; 8117: a9 fc
	jmp $811c                    ; 8119: 4c 1c 81

; --- Block at $811c-$814f ---
loc_811c:
	phy                          ; 811c: 5a
	sta $30                      ; 811d: 85 30
	lda $30                      ; 811f: a5 30
	sta.w $0000,y                ; 8121: 99 00 00
	iny                          ; 8124: c8
	lda $2f                      ; 8125: a5 2f
	sta.w $0000,y                ; 8127: 99 00 00
	iny                          ; 812a: c8
	lda $2d                      ; 812b: a5 2d
	sta $31                      ; 812d: 85 31
	inc $30                      ; 812f: e6 30
	lda $30                      ; 8131: a5 30
	sta.w $0000,y                ; 8133: 99 00 00
	iny                          ; 8136: c8
	lda $2f                      ; 8137: a5 2f
	sta.w $0000,y                ; 8139: 99 00 00
	iny                          ; 813c: c8
	dec $31                      ; 813d: c6 31
	.db $d0, $f0                 ; 813f: d0 f0
loc_8141:
	inc $30                      ; 8141: e6 30
	lda $30                      ; 8143: a5 30
	sta.w $0000,y                ; 8145: 99 00 00
	iny                          ; 8148: c8
	lda $2f                      ; 8149: a5 2f
	sta.w $0000,y                ; 814b: 99 00 00
	ply                          ; 814e: 7a
	jmp $878b                    ; 814f: 4c 8b 87

; --- Block at $8152-$8183 ---
loc_8152:
	phy                          ; 8152: 5a
	sta $30                      ; 8153: 85 30
	lda.b #$fa                   ; 8155: a9 fa
	sta.w $0000,y                ; 8157: 99 00 00
	iny                          ; 815a: c8
	lda $2f                      ; 815b: a5 2f
	sta.w $0000,y                ; 815d: 99 00 00
	iny                          ; 8160: c8
	lda $2d                      ; 8161: a5 2d
	sta $31                      ; 8163: 85 31
	inc $30                      ; 8165: e6 30
	lda.b #$ff                   ; 8167: a9 ff
	sta.w $0000,y                ; 8169: 99 00 00
	iny                          ; 816c: c8
	lda $2f                      ; 816d: a5 2f
	sta.w $0000,y                ; 816f: 99 00 00
	iny                          ; 8172: c8
	dec $31                      ; 8173: c6 31
	.db $d0, $f0                 ; 8175: d0 f0
loc_8177:
	lda.b #$fb                   ; 8177: a9 fb
	sta.w $0000,y                ; 8179: 99 00 00
	iny                          ; 817c: c8
	lda $2f                      ; 817d: a5 2f
	sta.w $0000,y                ; 817f: 99 00 00
	ply                          ; 8182: 7a
	jmp $878b                    ; 8183: 4c 8b 87

; --- Block at $818a-$81bc ---
loc_818a:
	pha                          ; 818a: 48
	inc $16a3                    ; 818b: ee a3 16
	lda $16a3                    ; 818e: ad a3 16
	cmp.b #$3c                   ; 8191: c9 3c
	.db $90, $10                 ; 8193: 90 10
loc_8195:
	stz $16a3                    ; 8195: 9c a3 16
	inc $16a4                    ; 8198: ee a4 16
	.db $d0, $08                 ; 819b: d0 08
loc_819d:
	inc $16a5                    ; 819d: ee a5 16
	.db $d0, $03                 ; 81a0: d0 03
loc_81a2:
	inc $16a6                    ; 81a2: ee a6 16
loc_81a5:
	lda.l $004210                ; 81a5: af 10 42 00 ; RDNMI
	and.b #$80                   ; 81a9: 29 80
	.db $d0, $f8                 ; 81ab: d0 f8
loc_81ad:
	lda.l $004210                ; 81ad: af 10 42 00 ; RDNMI
	and.b #$80                   ; 81b1: 29 80
	.db $f0, $f8                 ; 81b3: f0 f8
loc_81b5:
	lda $88                      ; 81b5: a5 88
	sta.l $002100                ; 81b7: 8f 00 21 00 ; INIDISP
	pla                          ; 81bb: 68
	rts                          ; 81bc: 60

; --- Block at $81bd-$81dc ---
loc_81bd:
	stz $45                      ; 81bd: 64 45
	sec                          ; 81bf: 38
	sbc.w #$900a                 ; 81c0: e9 0a 90
	tsb $e6                      ; 81c3: 04 e6
	eor $80                      ; 81c5: 45 80
	sbc [$69],y                  ; 81c7: f7 69
	txa                          ; 81c9: 8a
	xba                          ; 81ca: eb
	lda $45                      ; 81cb: a5 45
	.db $d0, $03                 ; 81cd: d0 03
loc_81cf:
	lda.w #$60ff                 ; 81cf: a9 ff 60
loc_81d2:
	clc                          ; 81d2: 18
	adc.w #$6080                 ; 81d3: 69 80 60
	phx                          ; 81d6: da
	phy                          ; 81d7: 5a
	rep #$20                     ; 81d8: c2 20
	ldx.b #$7f                   ; 81da: a2 7f
	brk #$86                     ; 81dc: 00 86

; --- Block at $824c-$824f ---
loc_824c:
	jsr $818a                    ; 824c: 20 8a 81

; --- Block at $824f-$826b ---
loc_824f:
	phx                          ; 824f: da
	phd                          ; 8250: 0b
	ldx.b #$00                   ; 8251: a2 00
	eor $da,s                    ; 8253: 43 da
	pld                          ; 8255: 2b
	tdc                          ; 8256: 7b
	sta.l $002102                ; 8257: 8f 02 21 00 ; OAMADDL
	sta.l $002103                ; 825b: 8f 03 21 00 ; OAMADDH
	sta $00                      ; 825f: 85 00
	lda.b #$04                   ; 8261: a9 04
	sta $01                      ; 8263: 85 01
	ldx.b #$00                   ; 8265: a2 00
	ora $86,s                    ; 8267: 03 86
	cop #$a9                     ; 8269: 02 a9
	brk #$85                     ; 826b: 00 85

; --- Block at $827c-$8282 ---
loc_827c:
	ldy.b #$10                   ; 827c: a0 10
	ora $80,s                    ; 827e: 03 80
	ora $a0,s                    ; 8280: 03 a0
	brk #$03                     ; 8282: 00 03

; --- Block at $8281-$82a4 ---
loc_8281:
	ldy.b #$00                   ; 8281: a0 00
	ora $a6,s                    ; 8283: 03 a6
	eor $a9                      ; 8285: 45 a9
	asl                          ; 8287: 0a
	phb                          ; 8288: 8b
	pha                          ; 8289: 48
	lda.b #$7e                   ; 828a: a9 7e
	pha                          ; 828c: 48
	plb                          ; 828d: ab
	pla                          ; 828e: 68
	sta.w $0002,y                ; 828f: 99 02 00
	rep #$20                     ; 8292: c2 20
	txa                          ; 8294: 8a
	sep #$20                     ; 8295: e2 20
	sta.w $0000,y                ; 8297: 99 00 00
	xba                          ; 829a: eb
	sta.w $0001,y                ; 829b: 99 01 00
	lda $3f                      ; 829e: a5 3f
	sta.w $0003,y                ; 82a0: 99 03 00
	plb                          ; 82a3: ab
	rts                          ; 82a4: 60

; --- Block at $8286-$8288 ---
loc_8286:
	lda.b #$0a                   ; 8286: a9 0a

; --- Block at $82a5-$82b3 ---
loc_82a5:
	lda $01                      ; 82a5: a5 01
	and.b #$03                   ; 82a7: 29 03
	.db $d0, $09                 ; 82a9: d0 09
loc_82ab:
	jsr $82c0                    ; 82ab: 20 c0 82
loc_82ae:
	lda $03                      ; 82ae: a5 03
	sta $01                      ; 82b0: 85 01
	clc                          ; 82b2: 18
	rts                          ; 82b3: 60

; --- Block at $82b4-$82b5 ---
loc_82b4:
	sec                          ; 82b4: 38
	rts                          ; 82b5: 60

; --- Block at $82b6-$82ba ---
loc_82b6:
	jsl $14fd03                  ; 82b6: 22 03 fd 14
loc_82ba:
	rts                          ; 82ba: 60

; --- Block at $82bb-$82bf ---
loc_82bb:
	jsl $14fd00                  ; 82bb: 22 00 fd 14
loc_82bf:
	rts                          ; 82bf: 60

; --- Block at $82c0-$82cc ---
loc_82c0:
	jsr $82b6                    ; 82c0: 20 b6 82
loc_82c3:
	lda $00                      ; 82c3: a5 00
	ora $01                      ; 82c5: 05 01
	.db $f0, $03                 ; 82c7: f0 03
loc_82c9:
	jsr $874e                    ; 82c9: 20 4e 87
loc_82cc:
	rts                          ; 82cc: 60

; --- Block at $82cd-$82fb ---
loc_82cd:
	phb                          ; 82cd: 8b
	phd                          ; 82ce: 0b
	phx                          ; 82cf: da
	phx                          ; 82d0: da
	ldx.b #$00                   ; 82d1: a2 00
	ora ($da,x)                  ; 82d3: 01 da
	pld                          ; 82d5: 2b
	plx                          ; 82d6: fa
	phk                          ; 82d7: 4b
	plb                          ; 82d8: ab
	rep #$20                     ; 82d9: c2 20
	txa                          ; 82db: 8a
	clc                          ; 82dc: 18
	adc $29                      ; 82dd: 65 29
	tax                          ; 82df: aa
	sep #$20                     ; 82e0: e2 20
	.db $80, $34                 ; 82e2: 80 34
	phb                          ; 82e4: 8b
	phd                          ; 82e5: 0b
	phx                          ; 82e6: da
	phx                          ; 82e7: da
	ldx.b #$00                   ; 82e8: a2 00
	ora ($da,x)                  ; 82ea: 01 da
	pld                          ; 82ec: 2b
	plx                          ; 82ed: fa
	pha                          ; 82ee: 48
	plb                          ; 82ef: ab
	rep #$20                     ; 82f0: c2 20
	txa                          ; 82f2: 8a
	clc                          ; 82f3: 18
	adc $29                      ; 82f4: 65 29
	tax                          ; 82f6: aa
	sep #$20                     ; 82f7: e2 20
	.db $80, $1d                 ; 82f9: 80 1d

; --- Block at $82fb-$8335 ---
loc_82fb:
	jsr $80d9                    ; 82fb: 20 d9 80
loc_82fe:
	jsr $87bd                    ; 82fe: 20 bd 87
loc_8301:
	phb                          ; 8301: 8b
	phd                          ; 8302: 0b
	phx                          ; 8303: da
	ldx.b #$00                   ; 8304: a2 00
	ora ($da,x)                  ; 8306: 01 da
	pld                          ; 8308: 2b
	phk                          ; 8309: 4b
	plb                          ; 830a: ab
	rep #$20                     ; 830b: c2 20
	lda.w $0000,y                ; 830d: b9 00 00
	clc                          ; 8310: 18
	adc $29                      ; 8311: 65 29
	tax                          ; 8313: aa
	sep #$20                     ; 8314: e2 20
	iny                          ; 8316: c8
	iny                          ; 8317: c8
	lda.w $0000,y                ; 8318: b9 00 00
	.db $f0, $15                 ; 831b: f0 15
loc_831d:
	iny                          ; 831d: c8
	cmp.b #$01                   ; 831e: c9 01
	.db $f0, $e9                 ; 8320: f0 e9
loc_8322:
	jsr $8e34                    ; 8322: 20 34 8e
loc_8325:
	sta $7e0000,x                ; 8325: 9f 00 00 7e
	xba                          ; 8329: eb
	sta $7e0040,x                ; 832a: 9f 40 00 7e
	inx                          ; 832e: e8
	inx                          ; 832f: e8
	.db $80, $e6                 ; 8330: 80 e6
loc_8332:
	plx                          ; 8332: fa
	pld                          ; 8333: 2b
	plb                          ; 8334: ab
	rts                          ; 8335: 60

; --- Block at $8336-$834a ---
loc_8336:
	pha                          ; 8336: 48
	phx                          ; 8337: da
	phy                          ; 8338: 5a
	phb                          ; 8339: 8b
	jsr $818a                    ; 833a: 20 8a 81
loc_833d:
	jsr $82c0                    ; 833d: 20 c0 82
loc_8340:
	lda $00                      ; 8340: a5 00
	ora $01                      ; 8342: 05 01
	.db $f0, $f4                 ; 8344: f0 f4
loc_8346:
	plb                          ; 8346: ab
	ply                          ; 8347: 7a
	plx                          ; 8348: fa
	pla                          ; 8349: 68
	rts                          ; 834a: 60

; --- Block at $834b-$8366 ---
loc_834b:
	sta $1d                      ; 834b: 85 1d
	stz $1e                      ; 834d: 64 1e
	phk                          ; 834f: 4b
	pla                          ; 8350: 68
	sta $011f                    ; 8351: 8d 1f 01
	rep #$20                     ; 8354: c2 20
	lda $1d                      ; 8356: a5 1d
	stx $1d                      ; 8358: 86 1d
	asl                          ; 835a: 0a
	adc $1d                      ; 835b: 65 1d
	sta $1d                      ; 835d: 85 1d
	lda [$1d]                    ; 835f: a7 1d
	sta $0120                    ; 8361: 8d 20 01
	sep #$20                     ; 8364: e2 20
	jmp ($0120)                  ; 8366: 6c 20 01

; --- Block at $8369-$837e ---
loc_8369:
	jsr $81bd                    ; 8369: 20 bd 81
loc_836c:
	rep #$20                     ; 836c: c2 20
	pha                          ; 836e: 48
	tya                          ; 836f: 98
	clc                          ; 8370: 18
	adc $29                      ; 8371: 65 29
	tay                          ; 8373: a8
	pla                          ; 8374: 68
	sep #$20                     ; 8375: e2 20
	sta.w $0000,y                ; 8377: 99 00 00
	xba                          ; 837a: eb
	sta.w $0002,y                ; 837b: 99 02 00
	rts                          ; 837e: 60

; --- Block at $83ab-$83af ---
loc_83ab:
	and.b #$3f                   ; 83ab: 29 3f
	.db $d0, $01                 ; 83ad: d0 01
loc_83af:
	rts                          ; 83af: 60

; --- Block at $83b0-$83e2 ---
loc_83b0:
	dec                          ; 83b0: 3a
	jsr $87b4                    ; 83b1: 20 b4 87
loc_83b4:
	lda $018457,x                ; 83b4: bf 57 84 01
	asl                          ; 83b8: 0a
	sta $45                      ; 83b9: 85 45
	asl                          ; 83bb: 0a
	adc $45                      ; 83bc: 65 45
	jsr $87b4                    ; 83be: 20 b4 87
loc_83c1:
	rep #$20                     ; 83c1: c2 20
	tya                          ; 83c3: 98
	clc                          ; 83c4: 18
	adc $29                      ; 83c5: 65 29
	tay                          ; 83c7: a8
	sep #$20                     ; 83c8: e2 20
	lda.b #$06                   ; 83ca: a9 06
	sta $45                      ; 83cc: 85 45
	lda $1500,x                  ; 83ce: bd 00 15
	inx                          ; 83d1: e8
	jsr $8e34                    ; 83d2: 20 34 8e
loc_83d5:
	sta.w $0000,y                ; 83d5: 99 00 00
	xba                          ; 83d8: eb
	sta.w $0040,y                ; 83d9: 99 40 00
	iny                          ; 83dc: c8
	iny                          ; 83dd: c8
	dec $45                      ; 83de: c6 45
	.db $d0, $ec                 ; 83e0: d0 ec
loc_83e2:
	rts                          ; 83e2: 60

; --- Block at $83e3-$83f5 ---
loc_83e3:
	lda.b #$19                   ; 83e3: a9 19
	sta $45                      ; 83e5: 85 45
	ldx $35                      ; 83e7: a6 35
	stx $1d                      ; 83e9: 86 1d
	ldx $29                      ; 83eb: a6 29
	stx $1f                      ; 83ed: 86 1f
	lda.b #$7e                   ; 83ef: a9 7e
	sta $21                      ; 83f1: 85 21
	ldx.b #$80                   ; 83f3: a2 80
	brk #$86                     ; 83f5: 00 86

; --- Block at $846d-$8470 ---
loc_846d:
	jsr $8d47                    ; 846d: 20 47 8d

; --- Block at $8470-$8478 ---
loc_8470:
	pha                          ; 8470: 48
	phx                          ; 8471: da
	ldx.b #$00                   ; 8472: a2 00
	dec $86,x                    ; 8474: d6 86
	and.b #$a2                   ; 8476: 29 a2
	brk #$70                     ; 8478: 00 70

; --- Block at $8488-$8490 ---
loc_8488:
	pha                          ; 8488: 48
	phx                          ; 8489: da
	ldx.b #$00                   ; 848a: a2 00
	dec $86                      ; 848c: c6 86
	and.b #$a2                   ; 848e: 29 a2
	brk #$78                     ; 8490: 00 78

; --- Block at $849f-$84a2 ---
loc_849f:
	jsr $8d3d                    ; 849f: 20 3d 8d

; --- Block at $84a2-$84aa ---
loc_84a2:
	pha                          ; 84a2: 48
	phx                          ; 84a3: da
	ldx.b #$00                   ; 84a4: a2 00
	ldx $86,y                    ; 84a6: b6 86
	and.b #$a2                   ; 84a8: 29 a2
	brk #$60                     ; 84aa: 00 60

; --- Block at $84b7-$84ba ---
loc_84b7:
	jsr $8d38                    ; 84b7: 20 38 8d

; --- Block at $84ba-$84c2 ---
loc_84ba:
	pha                          ; 84ba: 48
	phx                          ; 84bb: da
	ldx.b #$00                   ; 84bc: a2 00
	ldx $86                      ; 84be: a6 86
	and.b #$a2                   ; 84c0: 29 a2
	brk #$68                     ; 84c2: 00 68

; --- Block at $84d0-$8552 ---
loc_84d0:
	phb                          ; 84d0: 8b
	phk                          ; 84d1: 4b
	plb                          ; 84d2: ab
	lda.w $0000,y                ; 84d3: b9 00 00
	and.b #$3f                   ; 84d6: 29 3f
	lsr                          ; 84d8: 4a
	sta $63                      ; 84d9: 85 63
	lda.w $0002,y                ; 84db: b9 02 00
	clc                          ; 84de: 18
	adc $63                      ; 84df: 65 63
	inc                          ; 84e1: 1a
	sta $65                      ; 84e2: 85 65
	rep #$20                     ; 84e4: c2 20
	lda.w $0000,y                ; 84e6: b9 00 00
	lsr                          ; 84e9: 4a
	lsr                          ; 84ea: 4a
	lsr                          ; 84eb: 4a
	lsr                          ; 84ec: 4a
	lsr                          ; 84ed: 4a
	lsr                          ; 84ee: 4a
	sep #$20                     ; 84ef: e2 20
	sta $64                      ; 84f1: 85 64
	lda.w $0003,y                ; 84f3: b9 03 00
	clc                          ; 84f6: 18
	adc $64                      ; 84f7: 65 64
	inc                          ; 84f9: 1a
	sta $66                      ; 84fa: 85 66
	lda.w $0000,x                ; 84fc: bd 00 00
	and.b #$3f                   ; 84ff: 29 3f
	lsr                          ; 8501: 4a
	sta $67                      ; 8502: 85 67
	lda.w $0002,x                ; 8504: bd 02 00
	clc                          ; 8507: 18
	adc $67                      ; 8508: 65 67
	inc                          ; 850a: 1a
	sta $69                      ; 850b: 85 69
	rep #$20                     ; 850d: c2 20
	lda.w $0000,x                ; 850f: bd 00 00
	lsr                          ; 8512: 4a
	lsr                          ; 8513: 4a
	lsr                          ; 8514: 4a
	lsr                          ; 8515: 4a
	lsr                          ; 8516: 4a
	lsr                          ; 8517: 4a
	sep #$20                     ; 8518: e2 20
	sta $68                      ; 851a: 85 68
	lda.w $0003,x                ; 851c: bd 03 00
	clc                          ; 851f: 18
	adc $68                      ; 8520: 65 68
	inc                          ; 8522: 1a
	sta $6a                      ; 8523: 85 6a
	plb                          ; 8525: ab
	lda $64                      ; 8526: a5 64
	cmp $68                      ; 8528: c5 68
	.db $f0, $03                 ; 852a: f0 03
loc_852c:
	jsr $85c0                    ; 852c: 20 c0 85
loc_852f:
	lda $66                      ; 852f: a5 66
	cmp $6a                      ; 8531: c5 6a
	.db $f0, $03                 ; 8533: f0 03
loc_8535:
	jsr $85d2                    ; 8535: 20 d2 85
loc_8538:
	lda $63                      ; 8538: a5 63
	cmp $67                      ; 853a: c5 67
	.db $f0, $03                 ; 853c: f0 03
loc_853e:
	jsr $85e4                    ; 853e: 20 e4 85
loc_8541:
	lda $65                      ; 8541: a5 65
	cmp $69                      ; 8543: c5 69
	.db $f0, $03                 ; 8545: f0 03
loc_8547:
	jsr $85f6                    ; 8547: 20 f6 85
loc_854a:
	lda $c2                      ; 854a: a5 c2
	.db $f0, $10                 ; 854c: f0 10
loc_854e:
	dec $c2                      ; 854e: c6 c2
	ldy.b #$08                   ; 8550: a0 08
	brk #$a6                     ; 8552: 00 a6

; --- Block at $855e-$858c ---
loc_855e:
	jsr $01cf                    ; 855e: 20 cf 01
loc_8561:
	jsr $818a                    ; 8561: 20 8a 81
loc_8564:
	lda $c3                      ; 8564: a5 c3
	ldx.b #$b8                   ; 8566: a2 b8
	sta $20                      ; 8568: 85 20
	phk                          ; 856a: 4b
	sta $20,s                    ; 856b: 83 20
	cpy $2001                    ; 856d: cc 01 20
	tax                          ; 8570: aa
	sty $a6,x                    ; 8571: 94 a6
	adc $e4,s                    ; 8573: 63 e4
	adc [$d0]                    ; 8575: 67 d0
	ldx $65a6                    ; 8577: ae a6 65
	cpx $69                      ; 857a: e4 69
	.db $d0, $a8                 ; 857c: d0 a8
loc_857e:
	lda $01c2                    ; 857e: ad c2 01
	.db $d0, $a3                 ; 8581: d0 a3
loc_8583:
	ldx.b #$8c                   ; 8583: a2 8c
	sta $8e                      ; 8585: 85 8e
	cmp $8e01                    ; 8587: cd 01 8e
	.db $d0, $01                 ; 858a: d0 01
loc_858c:
	rts                          ; 858c: 60

; --- Block at $858d-$85a7 ---
loc_858d:
	lda $a2,x                    ; 858d: b5 a2
	.db $10, $17                 ; 858f: 10 17
loc_8591:
	rep #$20                     ; 8591: c2 20
	lda $a1,x                    ; 8593: b5 a1
	and.w #$7fff                 ; 8595: 29 ff 7f
	sta $1d                      ; 8598: 85 1d
	lda $89,x                    ; 859a: b5 89
	sec                          ; 859c: 38
	sbc $1d                      ; 859d: e5 1d
	sta $89,x                    ; 859f: 95 89
	sep #$20                     ; 85a1: e2 20
	.db $b0, $02                 ; 85a3: b0 02
loc_85a5:
	dec $8b,x                    ; 85a5: d6 8b
loc_85a7:
	rts                          ; 85a7: 60

; --- Block at $85a8-$85b7 ---
loc_85a8:
	rep #$20                     ; 85a8: c2 20
	lda $89,x                    ; 85aa: b5 89
	clc                          ; 85ac: 18
	adc $a1,x                    ; 85ad: 75 a1
	sta $89,x                    ; 85af: 95 89
	sep #$20                     ; 85b1: e2 20
	.db $90, $02                 ; 85b3: 90 02
loc_85b5:
	inc $8b,x                    ; 85b5: f6 8b
loc_85b7:
	rts                          ; 85b7: 60

; --- Block at $85c0-$85c7 ---
loc_85c0:
	.db $90, $08                 ; 85c0: 90 08
loc_85c2:
	jsr $8637                    ; 85c2: 20 37 86
loc_85c5:
	dec $64                      ; 85c5: c6 64
	jmp $8675                    ; 85c7: 4c 75 86

; --- Block at $85ca-$85cf ---
loc_85ca:
	jsr $865f                    ; 85ca: 20 5f 86
loc_85cd:
	inc $64                      ; 85cd: e6 64
	jmp $8675                    ; 85cf: 4c 75 86

; --- Block at $85d2-$85d9 ---
loc_85d2:
	.db $90, $08                 ; 85d2: 90 08
loc_85d4:
	jsr $865a                    ; 85d4: 20 5a 86
loc_85d7:
	dec $66                      ; 85d7: c6 66
	jmp $8698                    ; 85d9: 4c 98 86

; --- Block at $85dc-$85e1 ---
loc_85dc:
	jsr $8632                    ; 85dc: 20 32 86
loc_85df:
	inc $66                      ; 85df: e6 66
	jmp $8698                    ; 85e1: 4c 98 86

; --- Block at $85e4-$85eb ---
loc_85e4:
	.db $90, $08                 ; 85e4: 90 08
loc_85e6:
	jsr $86bb                    ; 85e6: 20 bb 86
loc_85e9:
	dec $63                      ; 85e9: c6 63
	jmp $86c9                    ; 85eb: 4c c9 86

; --- Block at $85ee-$85f3 ---
loc_85ee:
	jsr $8722                    ; 85ee: 20 22 87
loc_85f1:
	inc $63                      ; 85f1: e6 63
	jmp $86c9                    ; 85f3: 4c c9 86

; --- Block at $85f6-$85fd ---
loc_85f6:
	.db $90, $08                 ; 85f6: 90 08
loc_85f8:
	jsr $871d                    ; 85f8: 20 1d 87
loc_85fb:
	dec $65                      ; 85fb: c6 65
	jmp $86d7                    ; 85fd: 4c d7 86

; --- Block at $8600-$8605 ---
loc_8600:
	jsr $86e5                    ; 8600: 20 e5 86
loc_8603:
	inc $65                      ; 8603: e6 65
	jmp $86d7                    ; 8605: 4c d7 86

; --- Block at $8608-$8631 ---
loc_8608:
	lda $63                      ; 8608: a5 63
	asl                          ; 860a: 0a
	sta $43                      ; 860b: 85 43
	lda $64                      ; 860d: a5 64
	.db $80, $10                 ; 860f: 80 10
loc_8611:
	lda $63                      ; 8611: a5 63
	asl                          ; 8613: 0a
	sta $43                      ; 8614: 85 43
	lda $66                      ; 8616: a5 66
	.db $80, $07                 ; 8618: 80 07
loc_861a:
	lda $65                      ; 861a: a5 65
	asl                          ; 861c: 0a
	sta $43                      ; 861d: 85 43
	lda $64                      ; 861f: a5 64
loc_8621:
	xba                          ; 8621: eb
	lda.b #$00                   ; 8622: a9 00
	rep #$20                     ; 8624: c2 20
	lsr                          ; 8626: 4a
	lsr                          ; 8627: 4a
	clc                          ; 8628: 18
	adc $43                      ; 8629: 65 43
	clc                          ; 862b: 18
	adc $29                      ; 862c: 65 29
	tax                          ; 862e: aa
	sep #$20                     ; 862f: e2 20
	rts                          ; 8631: 60

; --- Block at $8632-$8637 ---
loc_8632:
	jsr $8611                    ; 8632: 20 11 86
loc_8635:
	.db $80, $03                 ; 8635: 80 03

; --- Block at $8637-$8659 ---
loc_8637:
	jsr $8608                    ; 8637: 20 08 86
loc_863a:
	lda $65                      ; 863a: a5 65
	sec                          ; 863c: 38
	sbc $63                      ; 863d: e5 63
	dec                          ; 863f: 3a
	sta $1d                      ; 8640: 85 1d
	lda.b #$fa                   ; 8642: a9 fa
	sta.w $0000,x                ; 8644: 9d 00 00
	inx                          ; 8647: e8
	inx                          ; 8648: e8
	lda.b #$ff                   ; 8649: a9 ff
	sta.w $0000,x                ; 864b: 9d 00 00
	inx                          ; 864e: e8
	inx                          ; 864f: e8
	dec $1d                      ; 8650: c6 1d
	.db $d0, $f7                 ; 8652: d0 f7
loc_8654:
	lda.b #$fb                   ; 8654: a9 fb
	sta.w $0000,x                ; 8656: 9d 00 00
	rts                          ; 8659: 60

; --- Block at $865a-$8674 ---
loc_865a:
	jsr $8611                    ; 865a: 20 11 86
loc_865d:
	.db $80, $03                 ; 865d: 80 03
loc_865f:
	jsr $8608                    ; 865f: 20 08 86
loc_8662:
	lda $65                      ; 8662: a5 65
	sec                          ; 8664: 38
	sbc $63                      ; 8665: e5 63
	inc                          ; 8667: 1a
	sta $1d                      ; 8668: 85 1d
	tdc                          ; 866a: 7b
	sta.w $0000,x                ; 866b: 9d 00 00
	inx                          ; 866e: e8
	inx                          ; 866f: e8
	dec $1d                      ; 8670: c6 1d
	.db $d0, $f7                 ; 8672: d0 f7
loc_8674:
	rts                          ; 8674: 60

; --- Block at $8675-$8697 ---
loc_8675:
	jsr $8608                    ; 8675: 20 08 86
loc_8678:
	lda $65                      ; 8678: a5 65
	sec                          ; 867a: 38
	sbc $63                      ; 867b: e5 63
	dec                          ; 867d: 3a
	sta $1d                      ; 867e: 85 1d
	lda.b #$f7                   ; 8680: a9 f7
	sta.w $0000,x                ; 8682: 9d 00 00
	inx                          ; 8685: e8
	inx                          ; 8686: e8
	lda.b #$f8                   ; 8687: a9 f8
	sta.w $0000,x                ; 8689: 9d 00 00
	inx                          ; 868c: e8
	inx                          ; 868d: e8
	dec $1d                      ; 868e: c6 1d
	.db $d0, $f7                 ; 8690: d0 f7
loc_8692:
	lda.b #$f9                   ; 8692: a9 f9
	sta.w $0000,x                ; 8694: 9d 00 00
	rts                          ; 8697: 60

; --- Block at $8698-$86ba ---
loc_8698:
	jsr $8611                    ; 8698: 20 11 86
loc_869b:
	lda $65                      ; 869b: a5 65
	sec                          ; 869d: 38
	sbc $63                      ; 869e: e5 63
	dec                          ; 86a0: 3a
	sta $1d                      ; 86a1: 85 1d
	lda.b #$fc                   ; 86a3: a9 fc
	sta.w $0000,x                ; 86a5: 9d 00 00
	inx                          ; 86a8: e8
	inx                          ; 86a9: e8
	lda.b #$fd                   ; 86aa: a9 fd
	sta.w $0000,x                ; 86ac: 9d 00 00
	inx                          ; 86af: e8
	inx                          ; 86b0: e8
	dec $1d                      ; 86b1: c6 1d
	.db $d0, $f7                 ; 86b3: d0 f7
loc_86b5:
	lda.b #$fe                   ; 86b5: a9 fe
	sta.w $0000,x                ; 86b7: 9d 00 00
	rts                          ; 86ba: 60

; --- Block at $86bb-$871c ---
loc_86bb:
	lda.b #$f8                   ; 86bb: a9 f8
	sta $1e                      ; 86bd: 85 1e
	lda.b #$ff                   ; 86bf: a9 ff
	sta $1f                      ; 86c1: 85 1f
	lda.b #$fd                   ; 86c3: a9 fd
	sta $20                      ; 86c5: 85 20
	.db $80, $2f                 ; 86c7: 80 2f
loc_86c9:
	lda.b #$f7                   ; 86c9: a9 f7
	sta $1e                      ; 86cb: 85 1e
	lda.b #$fa                   ; 86cd: a9 fa
	sta $1f                      ; 86cf: 85 1f
	lda.b #$fc                   ; 86d1: a9 fc
	sta $20                      ; 86d3: 85 20
	.db $80, $21                 ; 86d5: 80 21
loc_86d7:
	lda.b #$f9                   ; 86d7: a9 f9
	sta $1e                      ; 86d9: 85 1e
	lda.b #$fb                   ; 86db: a9 fb
	sta $1f                      ; 86dd: 85 1f
	lda.b #$fe                   ; 86df: a9 fe
	sta $20                      ; 86e1: 85 20
	.db $80, $0e                 ; 86e3: 80 0e
	lda.b #$f8                   ; 86e5: a9 f8
	sta $1e                      ; 86e7: 85 1e
	lda.b #$ff                   ; 86e9: a9 ff
	sta $1f                      ; 86eb: 85 1f
	lda.b #$fd                   ; 86ed: a9 fd
	sta $20                      ; 86ef: 85 20
	.db $80, $00                 ; 86f1: 80 00
loc_86f3:
	jsr $861a                    ; 86f3: 20 1a 86
loc_86f6:
	.db $80, $03                 ; 86f6: 80 03
loc_86f8:
	jsr $8608                    ; 86f8: 20 08 86
loc_86fb:
	lda $66                      ; 86fb: a5 66
	sec                          ; 86fd: 38
	sbc $64                      ; 86fe: e5 64
	dec                          ; 8700: 3a
	sta $1d                      ; 8701: 85 1d
	lda $1e                      ; 8703: a5 1e
	sta.w $0000,x                ; 8705: 9d 00 00
	jsr $877e                    ; 8708: 20 7e 87
loc_870b:
	lda $1f                      ; 870b: a5 1f
	sta.w $0000,x                ; 870d: 9d 00 00
	jsr $877e                    ; 8710: 20 7e 87
loc_8713:
	dec $1d                      ; 8713: c6 1d
	.db $d0, $f4                 ; 8715: d0 f4
loc_8717:
	lda $20                      ; 8717: a5 20
	sta.w $0000,x                ; 8719: 9d 00 00
	rts                          ; 871c: 60

; --- Block at $871d-$8739 ---
loc_871d:
	jsr $861a                    ; 871d: 20 1a 86
loc_8720:
	.db $80, $03                 ; 8720: 80 03
loc_8722:
	jsr $8608                    ; 8722: 20 08 86
loc_8725:
	lda $66                      ; 8725: a5 66
	sec                          ; 8727: 38
	sbc $64                      ; 8728: e5 64
	inc                          ; 872a: 1a
	sta $1d                      ; 872b: 85 1d
	lda.b #$00                   ; 872d: a9 00
	sta.w $0000,x                ; 872f: 9d 00 00
	jsr $877e                    ; 8732: 20 7e 87
loc_8735:
	dec $1d                      ; 8735: c6 1d
	.db $d0, $f4                 ; 8737: d0 f4
loc_8739:
	rts                          ; 8739: 60

; --- Block at $873a-$873e ---
loc_873a:
	jsl $14fd0f                  ; 873a: 22 0f fd 14
loc_873e:
	rts                          ; 873e: 60

; --- Block at $873f-$8748 ---
loc_873f:
	phb                          ; 873f: 8b
	jsl $14ffd6                  ; 8740: 22 d6 ff 14
loc_8744:
	jsr $8078                    ; 8744: 20 78 80
loc_8747:
	plb                          ; 8747: ab
	rts                          ; 8748: 60

; --- Block at $8749-$874d ---
loc_8749:
	jsl $14fd09                  ; 8749: 22 09 fd 14
loc_874d:
	rts                          ; 874d: 60

; --- Block at $874e-$8757 ---
loc_874e:
	lda.b #$11                   ; 874e: a9 11
	sta $1e00                    ; 8750: 8d 00 1e
	jsl $048004                  ; 8753: 22 04 80 04
loc_8757:
	rts                          ; 8757: 60

; --- Block at $8758-$8778 ---
loc_8758:
	lda.b #$12                   ; 8758: a9 12
	.db $80, $f4                 ; 875a: 80 f4
	jsr $8762                    ; 875c: 20 62 87
loc_875f:
	rtl                          ; 875f: 6b
loc_8760:
	lda.b #$58                   ; 8760: a9 58
loc_8762:
	sta $1e01                    ; 8762: 8d 01 1e
	lda.b #$02                   ; 8765: a9 02
	sta $1e00                    ; 8767: 8d 00 1e
	lda.b #$80                   ; 876a: a9 80
	sta $1e02                    ; 876c: 8d 02 1e
	lda.b #$ff                   ; 876f: a9 ff
	sta $1e03                    ; 8771: 8d 03 1e
	jsl $048004                  ; 8774: 22 04 80 04
loc_8778:
	rts                          ; 8778: 60

; --- Block at $877e-$878a ---
loc_877e:
	rep #$20                     ; 877e: c2 20
	pha                          ; 8780: 48
	txa                          ; 8781: 8a
	clc                          ; 8782: 18
	adc.w #$0040                 ; 8783: 69 40 00
	tax                          ; 8786: aa
	pla                          ; 8787: 68
	sep #$20                     ; 8788: e2 20
	rts                          ; 878a: 60

; --- Block at $878b-$8797 ---
loc_878b:
	rep #$20                     ; 878b: c2 20
	pha                          ; 878d: 48
	tya                          ; 878e: 98
	clc                          ; 878f: 18
	adc.w #$0040                 ; 8790: 69 40 00
	tay                          ; 8793: a8
	pla                          ; 8794: 68
	sep #$20                     ; 8795: e2 20
	rts                          ; 8797: 60

; --- Block at $87b4-$87b8 ---
loc_87b4:
	sta $43                      ; 87b4: 85 43
	ldx $43                      ; 87b6: a6 43
	rts                          ; 87b8: 60

; --- Block at $87bd-$87c1 ---
loc_87bd:
	iny                          ; 87bd: c8
	iny                          ; 87be: c8
	iny                          ; 87bf: c8
	iny                          ; 87c0: c8
	rts                          ; 87c1: 60

; --- Block at $87c2-$87e3 ---
loc_87c2:
	jsr $8470                    ; 87c2: 20 70 84
loc_87c5:
	ldy.b #$20                   ; 87c5: a0 20
	jml [$2ea2]                  ; 87c7: dc a2 2e
	ora $20                      ; 87ca: 05 20
	tya                          ; 87cc: 98
	sta [$a0]                    ; 87cd: 87 a0
	and ($db)                    ; 87cf: 32 db
	ldx.b #$76                   ; 87d1: a2 76
	asl $20                      ; 87d3: 06 20
	cmp $2082                    ; 87d5: cd 82 20
	sta $8b,x                    ; 87d8: 95 8b
	ldy.b #$2a                   ; 87da: a0 2a
	asl $ad                      ; 87dc: 06 ad
	ldx.b #$16                   ; 87de: a2 16
	ldx $16a0                    ; 87e0: ae a0 16
	jmp $8fa8                    ; 87e3: 4c a8 8f

; --- Block at $87e6-$87f8 ---
loc_87e6:
	jsr $94a2                    ; 87e6: 20 a2 94
loc_87e9:
	jsr $94aa                    ; 87e9: 20 aa 94
loc_87ec:
	jsr $9264                    ; 87ec: 20 64 92
loc_87ef:
	jsr $8c0b                    ; 87ef: 20 0b 8c
loc_87f2:
	jsr $9417                    ; 87f2: 20 17 94
loc_87f5:
	jsr $824f                    ; 87f5: 20 4f 82
loc_87f8:
	jmp $946a                    ; 87f8: 4c 6a 94

; --- Block at $87fb-$887a ---
loc_87fb:
	lda.b #$7e                   ; 87fb: a9 7e
	pha                          ; 87fd: 48
	plb                          ; 87fe: ab
	jsr $8c67                    ; 87ff: 20 67 8c
loc_8802:
	jsr $87e6                    ; 8802: 20 e6 87
loc_8805:
	stz $1a03                    ; 8805: 9c 03 1a
	lda $16b7                    ; 8808: ad b7 16
	.db $d0, $06                 ; 880b: d0 06
loc_880d:
	stz $1a76                    ; 880d: 9c 76 1a
	stz $1a77                    ; 8810: 9c 77 1a
loc_8813:
	lda $1a76                    ; 8813: ad 76 1a
	asl                          ; 8816: 0a
	asl                          ; 8817: 0a
	asl                          ; 8818: 0a
	asl                          ; 8819: 0a
	adc.b #$10                   ; 881a: 69 10
	sta $46                      ; 881c: 85 46
	lda.b #$b0                   ; 881e: a9 b0
	sta $45                      ; 8820: 85 45
	jsr $8281                    ; 8822: 20 81 82
loc_8825:
	jsr $87c2                    ; 8825: 20 c2 87
loc_8828:
	jsr $824c                    ; 8828: 20 4c 82
loc_882b:
	jsr $9450                    ; 882b: 20 50 94
loc_882e:
	jsr $80b2                    ; 882e: 20 b2 80
loc_8831:
	jsr $82c0                    ; 8831: 20 c0 82
loc_8834:
	lda $01                      ; 8834: a5 01
	and.b #$08                   ; 8836: 29 08
	.db $f0, $0b                 ; 8838: f0 0b
loc_883a:
	lda $1a76                    ; 883a: ad 76 1a
	dec                          ; 883d: 3a
	.db $10, $02                 ; 883e: 10 02
loc_8840:
	lda.b #$07                   ; 8840: a9 07
loc_8842:
	sta $1a76                    ; 8842: 8d 76 1a
loc_8845:
	lda $01                      ; 8845: a5 01
	and.b #$04                   ; 8847: 29 04
	.db $f0, $0c                 ; 8849: f0 0c
loc_884b:
	lda $1a76                    ; 884b: ad 76 1a
	inc                          ; 884e: 1a
	cmp.b #$08                   ; 884f: c9 08
	.db $90, $01                 ; 8851: 90 01
loc_8853:
	tdc                          ; 8853: 7b
loc_8854:
	sta $1a76                    ; 8854: 8d 76 1a
loc_8857:
	lda $00                      ; 8857: a5 00
	and.b #$80                   ; 8859: 29 80
	.db $f0, $20                 ; 885b: f0 20
loc_885d:
	jsr $a2ca                    ; 885d: 20 ca a2
loc_8860:
	jsr $824c                    ; 8860: 20 4c 82
loc_8863:
	lda $1a76                    ; 8863: ad 76 1a
	cmp $1a77                    ; 8866: cd 77 1a
	.db $f0, $03                 ; 8869: f0 03
loc_886b:
	jsr $8c67                    ; 886b: 20 67 8c
loc_886e:
	sta $1a77                    ; 886e: 8d 77 1a
	ldx.b #$87                   ; 8871: a2 87
	dey                          ; 8873: 88
	jsr $834b                    ; 8874: 20 4b 83
loc_8877:
	jsr $8c67                    ; 8877: 20 67 8c
loc_887a:
	jmp $8813                    ; 887a: 4c 13 88

; --- Block at $887d-$8883 ---
loc_887d:
	lda $01                      ; 887d: a5 01
	and.b #$80                   ; 887f: 29 80
	.db $f0, $01                 ; 8881: f0 01
loc_8883:
	rts                          ; 8883: 60

; --- Block at $8884-$8884 ---
loc_8884:
	jmp $8813                    ; 8884: 4c 13 88

; --- Block at $8897-$889a ---
loc_8897:
	jsr $889d                    ; 8897: 20 9d 88
loc_889a:
	jmp $88fd                    ; 889a: 4c fd 88

; --- Block at $889d-$88b2 ---
loc_889d:
	jsr $8470                    ; 889d: 20 70 84
loc_88a0:
	ldy.b #$1e                   ; 88a0: a0 1e
	cld                          ; 88a2: d8
	jsr $80d9                    ; 88a3: 20 d9 80
loc_88a6:
	jsr $88d0                    ; 88a6: 20 d0 88
loc_88a9:
	jsr $88d9                    ; 88a9: 20 d9 88
loc_88ac:
	jsr $88e2                    ; 88ac: 20 e2 88
loc_88af:
	jsr $88eb                    ; 88af: 20 eb 88
loc_88b2:
	jmp $88f4                    ; 88b2: 4c f4 88

; --- Block at $88bf-$88cd ---
loc_88bf:
	jsr $8470                    ; 88bf: 20 70 84
loc_88c2:
	ldy.b #$1e                   ; 88c2: a0 1e
	cld                          ; 88c4: d8
	jsr $80d9                    ; 88c5: 20 d9 80
loc_88c8:
	lda $e8                      ; 88c8: a5 e8
	ldx.b #$b5                   ; 88ca: a2 b5
	dey                          ; 88cc: 88
	jmp $834b                    ; 88cd: 4c 4b 83

; --- Block at $88d0-$88d4 ---
loc_88d0:
	ldx.b #$ce                   ; 88d0: a2 ce
	cop #$a0                     ; 88d2: 02 a0
	brk #$10                     ; 88d4: 00 10

; --- Block at $88d9-$88db ---
loc_88d9:
	ldx.b #$4e                   ; 88d9: a2 4e
	brk #$a0                     ; 88db: 00 a0

; --- Block at $88e2-$88e8 ---
loc_88e2:
	ldx.b #$4e                   ; 88e2: a2 4e
	ora $a0                      ; 88e4: 05 a0
	.db $80, $10                 ; 88e6: 80 10
	jmp $899b                    ; 88e8: 4c 9b 89

; --- Block at $88eb-$88f1 ---
loc_88eb:
	ldx.b #$8e                   ; 88eb: a2 8e
	ora ($a0,x)                  ; 88ed: 01 a0
	cpy.b #$10                   ; 88ef: c0 10
	jmp $899b                    ; 88f1: 4c 9b 89

; --- Block at $88f4-$88f8 ---
loc_88f4:
	ldx.b #$0e                   ; 88f4: a2 0e
	tsb $a0                      ; 88f6: 04 a0
loc_88f8:
	brk #$11                     ; 88f8: 00 11

; --- Block at $88fd-$8916 ---
loc_88fd:
	lda.b #$00                   ; 88fd: a9 00
	sta $c1                      ; 88ff: 85 c1
	tdc                          ; 8901: 7b
	jsr $8992                    ; 8902: 20 92 89
loc_8905:
	lda.b #$01                   ; 8905: a9 01
	jsr $8992                    ; 8907: 20 92 89
loc_890a:
	lda.b #$02                   ; 890a: a9 02
	jsr $8992                    ; 890c: 20 92 89
loc_890f:
	lda.b #$03                   ; 890f: a9 03
	jsr $8992                    ; 8911: 20 92 89
loc_8914:
	lda.b #$04                   ; 8914: a9 04
	jmp $8992                    ; 8916: 4c 92 89

; --- Block at $8919-$8947 ---
loc_8919:
	jsr $8897                    ; 8919: 20 97 88
loc_891c:
	jsr $8470                    ; 891c: 20 70 84
loc_891f:
	ldy.b #$26                   ; 891f: a0 26
	cld                          ; 8921: d8
	jsr $80d9                    ; 8922: 20 d9 80
loc_8925:
	ldy.b #$22                   ; 8925: a0 22
	cld                          ; 8927: d8
	jsr $80d9                    ; 8928: 20 d9 80
loc_892b:
	jsr $8488                    ; 892b: 20 88 84
loc_892e:
	ldy.b #$2a                   ; 892e: a0 2a
	cld                          ; 8930: d8
	jsr $82fb                    ; 8931: 20 fb 82
loc_8934:
	lda $1a02                    ; 8934: ad 02 1a
	.db $d0, $0e                 ; 8937: d0 0e
loc_8939:
	lda.b #$24                   ; 8939: a9 24
	sta $ca31                    ; 893b: 8d 31 ca
	sta $ca33                    ; 893e: 8d 33 ca
	sta $ca35                    ; 8941: 8d 35 ca
	sta $ca37                    ; 8944: 8d 37 ca
loc_8947:
	rts                          ; 8947: 60

; --- Block at $8948-$896b ---
loc_8948:
	sta $60                      ; 8948: 85 60
	stz $61                      ; 894a: 64 61
	rep #$20                     ; 894c: c2 20
	lda $60                      ; 894e: a5 60
	asl                          ; 8950: 0a
	asl                          ; 8951: 0a
	asl                          ; 8952: 0a
	asl                          ; 8953: 0a
	asl                          ; 8954: 0a
	asl                          ; 8955: 0a
	adc.w #$1000                 ; 8956: 69 00 10
	tay                          ; 8959: a8
	sep #$20                     ; 895a: e2 20
	lda $60                      ; 895c: a5 60
	asl                          ; 895e: 0a
	asl                          ; 895f: 0a
	asl                          ; 8960: 0a
	asl                          ; 8961: 0a
	sta $48                      ; 8962: 85 48
	lda.w $0000,y                ; 8964: b9 00 00
	and.b #$3f                   ; 8967: 29 3f
	.db $d0, $01                 ; 8969: d0 01
loc_896b:
	rts                          ; 896b: 60

; --- Block at $896c-$8977 ---
loc_896c:
	ora $48                      ; 896c: 05 48
	sta $48                      ; 896e: 85 48
	lda $16a8                    ; 8970: ad a8 16
	.db $f0, $05                 ; 8973: f0 05
loc_8975:
	ldx.b #$0a                   ; 8975: a2 0a
	brk #$80                     ; 8977: 00 80

; --- Block at $897a-$8991 ---
loc_897a:
	ldx $41                      ; 897a: a6 41
	stx $45                      ; 897c: 86 45
	lda $60                      ; 897e: a5 60
	asl                          ; 8980: 0a
	sta $43                      ; 8981: 85 43
	rep #$20                     ; 8983: c2 20
	lda $43                      ; 8985: a5 43
	adc $45                      ; 8987: 65 45
	tax                          ; 8989: aa
	lda $1efe0a,x                ; 898a: bf 0a fe 1e
	tay                          ; 898e: a8
	sep #$20                     ; 898f: e2 20
	rts                          ; 8991: 60

; --- Block at $8992-$8997 ---
loc_8992:
	jsr $8948                    ; 8992: 20 48 89
loc_8995:
	lda $60                      ; 8995: a5 60
	jmp $8e70                    ; 8997: 4c 70 8e

; --- Block at $899a-$899a ---
loc_899a:
	rts                          ; 899a: 60

; --- Block at $899b-$89f6 ---
loc_899b:
	lda.w $0000,y                ; 899b: b9 00 00
	and.b #$3f                   ; 899e: 29 3f
	.db $f0, $f8                 ; 89a0: f0 f8
loc_89a2:
	sty $48                      ; 89a2: 84 48
	stx $4b                      ; 89a4: 86 4b
	jsr $8c23                    ; 89a6: 20 23 8c
loc_89a9:
	txy                          ; 89a9: 9b
	jsr $83ab                    ; 89aa: 20 ab 83
loc_89ad:
	ldy $4b                      ; 89ad: a4 4b
	ldx $48                      ; 89af: a6 48
	jsr $8b02                    ; 89b1: 20 02 8b
loc_89b4:
	rep #$20                     ; 89b4: c2 20
	lda $4b                      ; 89b6: a5 4b
	clc                          ; 89b8: 18
	adc.w #$0084                 ; 89b9: 69 84 00
	sta $4b                      ; 89bc: 85 4b
	adc $29                      ; 89be: 65 29
	tax                          ; 89c0: aa
	sep #$20                     ; 89c1: e2 20
	lda.b #$4d                   ; 89c3: a9 4d
	sta.w $0000,x                ; 89c5: 9d 00 00
	lda.b #$67                   ; 89c8: a9 67
	sta.w $0008,x                ; 89ca: 9d 08 00
	lda.b #$60                   ; 89cd: a9 60
	sta.w $0002,x                ; 89cf: 9d 02 00
	sta.w $0006,x                ; 89d2: 9d 06 00
	lda.b #$71                   ; 89d5: a9 71
	sta.w $0004,x                ; 89d7: 9d 04 00
	lda.b #$49                   ; 89da: a9 49
	sta.w $0040,x                ; 89dc: 9d 40 00
	lda.b #$51                   ; 89df: a9 51
	sta.w $0042,x                ; 89e1: 9d 42 00
	sta.w $0082,x                ; 89e4: 9d 82 00
	lda.b #$4e                   ; 89e7: a9 4e
	sta.w $0080,x                ; 89e9: 9d 80 00
	lda.b #$c7                   ; 89ec: a9 c7
	sta.w $004e,x                ; 89ee: 9d 4e 00
	sta.w $008e,x                ; 89f1: 9d 8e 00
	ldy.b #$02                   ; 89f4: a0 02
	brk #$b1                     ; 89f6: 00 b1

; --- Block at $8a54-$8a66 ---
loc_8a54:
	lda $e7                      ; 8a54: a5 e7
	jsr $87b4                    ; 8a56: 20 b4 87
loc_8a59:
	jsr $a8ea                    ; 8a59: 20 ea a8
loc_8a5c:
	.db $d0, $0d                 ; 8a5c: d0 0d
loc_8a5e:
	lda $e7                      ; 8a5e: a5 e7
	inc                          ; 8a60: 1a
	cmp.w #$d005                 ; 8a61: c9 05 d0
	cop #$a9                     ; 8a64: 02 a9
	brk #$85                     ; 8a66: 00 85

; --- Block at $8a6b-$8af3 ---
loc_8a6b:
	lda $e7                      ; 8a6b: a5 e7
	asl                          ; 8a6d: 0a
	asl                          ; 8a6e: 0a
	asl                          ; 8a6f: 0a
	sta $45                      ; 8a70: 85 45
	asl                          ; 8a72: 0a
	asl                          ; 8a73: 0a
	adc $45                      ; 8a74: 65 45
	adc.w #$8510                 ; 8a76: 69 10 85
	lsr $a9                      ; 8a79: 46 a9
	cop #$85                     ; 8a7b: 02 85
	eor $20                      ; 8a7d: 45 20
	sta ($82,x)                  ; 8a7f: 81 82
	jsr $824c                    ; 8a81: 20 4c 82
loc_8a84:
	jsr $82c0                    ; 8a84: 20 c0 82
loc_8a87:
	lda $01                      ; 8a87: a5 01
	and.w #$f008                 ; 8a89: 29 08 f0
	ora $3ae7a5,x                ; 8a8c: 1f a5 e7 3a
	.db $10, $02                 ; 8a90: 10 02
loc_8a92:
	lda.w #$8504                 ; 8a92: a9 04 85
	sbc [$20]                    ; 8a95: e7 20
	ldy $87,x                    ; 8a97: b4 87
	lda $14ff9d,x                ; 8a99: bf 9d ff 14
	jsr $9007                    ; 8a9d: 20 07 90
loc_8aa0:
	lda $1bb8                    ; 8aa0: ad b8 1b
	.db $d0, $07                 ; 8aa3: d0 07
loc_8aa5:
	lda.w $0000,x                ; 8aa5: bd 00 00
	and.w #$f01f                 ; 8aa8: 29 1f f0
	sbc ($a5,x)                  ; 8aab: e1 a5
	ora ($29,x)                  ; 8aad: 01 29
	tsb $f0                      ; 8aaf: 04 f0
	jsr $e7a5                    ; 8ab1: 20 a5 e7
loc_8ab4:
	inc                          ; 8ab4: 1a
	cmp.w #$d005                 ; 8ab5: c9 05 d0
	ora ($7b,x)                  ; 8ab8: 01 7b
	sta $e7                      ; 8aba: 85 e7
	jsr $87b4                    ; 8abc: 20 b4 87
loc_8abf:
	lda $14ff9d,x                ; 8abf: bf 9d ff 14
	jsr $9007                    ; 8ac3: 20 07 90
loc_8ac6:
	lda $1bb8                    ; 8ac6: ad b8 1b
	.db $d0, $07                 ; 8ac9: d0 07
loc_8acb:
	lda.w $0000,x                ; 8acb: bd 00 00
	and.w #$f01f                 ; 8ace: 29 1f f0
	cpx.b #$ad                   ; 8ad1: e0 ad
	and [$1b]                    ; 8ad3: 27 1b
	.db $f0, $0b                 ; 8ad5: f0 0b
loc_8ad7:
	lda $01                      ; 8ad7: a5 01
	and.w #$f003                 ; 8ad9: 29 03 f0
	ora $a9                      ; 8adc: 05 a9
	adc $60e885,x                ; 8ade: 7f 85 e8 60
loc_8ae2:
	lda $00                      ; 8ae2: a5 00
	and.w #$f080                 ; 8ae4: 29 80 f0
	tsb $e7a5                    ; 8ae7: 0c a5 e7
	jsr $87b4                    ; 8aea: 20 b4 87
loc_8aed:
	lda $14ff9d,x                ; 8aed: bf 9d ff 14
	sta $e8                      ; 8af1: 85 e8
	rts                          ; 8af3: 60

; --- Block at $8a94-$8a99 ---
loc_8a94:
	sta $e7                      ; 8a94: 85 e7
	jsr $87b4                    ; 8a96: 20 b4 87

; --- Block at $8aac-$8ab1 ---
loc_8aac:
	lda $01                      ; 8aac: a5 01
	and.w #$f004                 ; 8aae: 29 04 f0

; --- Block at $8ad2-$8ad5 ---
loc_8ad2:
	lda $1b27                    ; 8ad2: ad 27 1b

; --- Block at $8b02-$8b2f ---
loc_8b02:
	sty $4b                      ; 8b02: 84 4b
	stx $48                      ; 8b04: 86 48
	lda.w $0003,x                ; 8b06: bd 03 00
	bit.b #$80                   ; 8b09: 89 80
	.db $d0, $1b                 ; 8b0b: d0 1b
loc_8b0d:
	asl                          ; 8b0d: 0a
	sta $45                      ; 8b0e: 85 45
	lda.w $0004,x                ; 8b10: bd 04 00
	rol                          ; 8b13: 2a
	rol                          ; 8b14: 2a
	rol                          ; 8b15: 2a
	and.b #$01                   ; 8b16: 29 01
	ora $45                      ; 8b18: 05 45
	.db $f0, $16                 ; 8b1a: f0 16
loc_8b1c:
	pha                          ; 8b1c: 48
	jsr $8c17                    ; 8b1d: 20 17 8c
loc_8b20:
	jsr $878b                    ; 8b20: 20 8b 87
loc_8b23:
	pla                          ; 8b23: 68
	dey                          ; 8b24: 88
	dey                          ; 8b25: 88
	.db $80, $1d                 ; 8b26: 80 1d
loc_8b28:
	jsr $8c17                    ; 8b28: 20 17 8c
loc_8b2b:
	tyx                          ; 8b2b: bb
	ldy.b #$76                   ; 8b2c: a0 76
	cld                          ; 8b2e: d8
	jmp $82cd                    ; 8b2f: 4c cd 82

; --- Block at $8b32-$8b37 ---
loc_8b32:
	lda $1bc2                    ; 8b32: ad c2 1b
	.db $f0, $01                 ; 8b35: f0 01
loc_8b37:
	rts                          ; 8b37: 60

; --- Block at $8b38-$8b42 ---
loc_8b38:
	ldy $48                      ; 8b38: a4 48
	lda.w $0001,y                ; 8b3a: b9 01 00
	pha                          ; 8b3d: 48
	jsr $8c17                    ; 8b3e: 20 17 8c
loc_8b41:
	pla                          ; 8b41: 68
	jmp $8fc8                    ; 8b42: 4c c8 8f

; --- Block at $8b45-$8b56 ---
loc_8b45:
	sta $45                      ; 8b45: 85 45
	lda.b #$21                   ; 8b47: a9 21
	sta $46                      ; 8b49: 85 46
	rep #$20                     ; 8b4b: c2 20
	tya                          ; 8b4d: 98
	clc                          ; 8b4e: 18
	adc $29                      ; 8b4f: 65 29
	tay                          ; 8b51: a8
	sep #$20                     ; 8b52: e2 20
	ldx.b #$08                   ; 8b54: a2 08
	brk #$a5                     ; 8b56: 00 a5

; --- Block at $8bea-$8bee ---
loc_8bea:
	stz $1d                      ; 8bea: 64 1d
	ldx.b #$18                   ; 8bec: a2 18
	brk #$26                     ; 8bee: 00 26

; --- Block at $8c0b-$8c14 ---
loc_8c0b:
	jsr $8d2f                    ; 8c0b: 20 2f 8d
loc_8c0e:
	jsr $8d6c                    ; 8c0e: 20 6c 8d
loc_8c11:
	jsr $824f                    ; 8c11: 20 4f 82
loc_8c14:
	jmp $8919                    ; 8c14: 4c 19 89

; --- Block at $8c17-$8c22 ---
loc_8c17:
	rep #$20                     ; 8c17: c2 20
	lda $4b                      ; 8c19: a5 4b
	clc                          ; 8c1b: 18
	adc.w #$000e                 ; 8c1c: 69 0e 00
	tay                          ; 8c1f: a8
	sep #$20                     ; 8c20: e2 20
	rts                          ; 8c22: 60

; --- Block at $8c23-$8c48 ---
loc_8c23:
	pha                          ; 8c23: 48
	phx                          ; 8c24: da
	phy                          ; 8c25: 5a
	lda.w $0003,y                ; 8c26: b9 03 00
	and.b #$80                   ; 8c29: 29 80
	clc                          ; 8c2b: 18
	rol                          ; 8c2c: 2a
	rol                          ; 8c2d: 2a
	rol                          ; 8c2e: 2a
	rol                          ; 8c2f: 2a
	sta $45                      ; 8c30: 85 45
	lda.b #$07                   ; 8c32: a9 07
	jsr $8c49                    ; 8c34: 20 49 8c
loc_8c37:
	jsr $8c49                    ; 8c37: 20 49 8c
loc_8c3a:
	lda.b #$0e                   ; 8c3a: a9 0e
	jsr $8c49                    ; 8c3c: 20 49 8c
loc_8c3f:
	jsr $8c49                    ; 8c3f: 20 49 8c
loc_8c42:
	jsr $8c49                    ; 8c42: 20 49 8c
loc_8c45:
	ply                          ; 8c45: 7a
	plx                          ; 8c46: fa
	pla                          ; 8c47: 68
	rts                          ; 8c48: 60

; --- Block at $8c49-$8c66 ---
loc_8c49:
	pha                          ; 8c49: 48
	sta $37                      ; 8c4a: 85 37
	phx                          ; 8c4c: da
	rep #$20                     ; 8c4d: c2 20
	txa                          ; 8c4f: 8a
	clc                          ; 8c50: 18
	adc $29                      ; 8c51: 65 29
	tax                          ; 8c53: aa
	sep #$20                     ; 8c54: e2 20
	lda $45                      ; 8c56: a5 45
	sta.w $0001,x                ; 8c58: 9d 01 00
	inx                          ; 8c5b: e8
	inx                          ; 8c5c: e8
	dec $37                      ; 8c5d: c6 37
	.db $d0, $f7                 ; 8c5f: d0 f7
loc_8c61:
	plx                          ; 8c61: fa
	jsr $877e                    ; 8c62: 20 7e 87
loc_8c65:
	pla                          ; 8c65: 68
	rts                          ; 8c66: 60

; --- Block at $8c67-$8c6f ---
loc_8c67:
	pha                          ; 8c67: 48
	lda $16b7                    ; 8c68: ad b7 16
	.db $d0, $10                 ; 8c6b: d0 10
loc_8c6d:
	ldx.b #$eb                   ; 8c6d: a2 eb
	brk #$a4                     ; 8c6f: 00 a4

; --- Block at $8c7d-$8c7e ---
loc_8c7d:
	pla                          ; 8c7d: 68
	rts                          ; 8c7e: 60

; --- Block at $8c7f-$8ca0 ---
loc_8c7f:
	sei                          ; 8c7f: 78
	lda.b #$00                   ; 8c80: a9 00
	sta.l $000144                ; 8c82: 8f 44 01 00
	pha                          ; 8c86: 48
	plb                          ; 8c87: ab
	lda.b #$80                   ; 8c88: a9 80
	sta $2100                    ; 8c8a: 8d 00 21 ; INIDISP
	lda.b #$01                   ; 8c8d: a9 01
	sta $4200                    ; 8c8f: 8d 00 42 ; NMITIMEN
	ldx.b #$00                   ; 8c92: a2 00
	and ($da,x)                  ; 8c94: 21 da
	pld                          ; 8c96: 2b
	jsl $1efccd                  ; 8c97: 22 cd fc 1e
loc_8c9b:
	jsr $94af                    ; 8c9b: 20 af 94
loc_8c9e:
	ldx.b #$00                   ; 8c9e: a2 00
	rti                          ; 8ca0: 40

; --- Block at $8d2f-$8d48 ---
loc_8d2f:
	jsr $8d47                    ; 8d2f: 20 47 8d
loc_8d32:
	jsr $8d3d                    ; 8d32: 20 3d 8d
loc_8d35:
	jsr $8d42                    ; 8d35: 20 42 8d
loc_8d38:
	ldx.b #$00                   ; 8d38: a2 00
	ldx $80                      ; 8d3a: a6 80
	ora $b600a2                  ; 8d3c: 0f a2 00 b6
	.db $80, $22                 ; 8d40: 80 22
loc_8d42:
	ldx.b #$00                   ; 8d42: a2 00
	dec $80                      ; 8d44: c6 80
	ora $a2                      ; 8d46: 05 a2
	brk #$d6                     ; 8d48: 00 d6

; --- Block at $8d3d-$8d47 ---
loc_8d3d:
	ldx.b #$00                   ; 8d3d: a2 00
	ldx $80,y                    ; 8d3f: b6 80
	jsl $c600a2                  ; 8d41: 22 a2 00 c6
loc_8d45:
	.db $80, $05                 ; 8d45: 80 05

; --- Block at $8d47-$8d63 ---
loc_8d47:
	ldx.b #$00                   ; 8d47: a2 00
	dec $80,x                    ; 8d49: d6 80
	clc                          ; 8d4b: 18
	stx $73                      ; 8d4c: 86 73
	rep #$20                     ; 8d4e: c2 20
	lda.w #$2000                 ; 8d50: a9 00 20
	ldy $41                      ; 8d53: a4 41
	ldx.b #$00                   ; 8d55: a2 00
	php                          ; 8d57: 08
	sta ($73),y                  ; 8d58: 91 73
	iny                          ; 8d5a: c8
	iny                          ; 8d5b: c8
	dex                          ; 8d5c: ca
	.db $d0, $f9                 ; 8d5d: d0 f9
loc_8d5f:
	sep #$20                     ; 8d5f: e2 20
	stz $44                      ; 8d61: 64 44
	rts                          ; 8d63: 60

; --- Block at $8d64-$8d6c ---
loc_8d64:
	stx $73                      ; 8d64: 86 73
	rep #$20                     ; 8d66: c2 20
	lda $41                      ; 8d68: a5 41
	.db $80, $e7                 ; 8d6a: 80 e7

; --- Block at $8d6c-$8d70 ---
loc_8d6c:
	rep #$20                     ; 8d6c: c2 20
	ldy.b #$80                   ; 8d6e: a0 80
	brk #$a2                     ; 8d70: 00 a2

; --- Block at $8da2-$8dcf ---
loc_8da2:
	stz $e4                      ; 8da2: 64 e4
	lda $e4                      ; 8da4: a5 e4
	jsr $9007                    ; 8da6: 20 07 90
loc_8da9:
	asl                          ; 8da9: 0a
	sta $43                      ; 8daa: 85 43
	ldy $43                      ; 8dac: a4 43
	lda.w $0000,x                ; 8dae: bd 00 00
	and.b #$3f                   ; 8db1: 29 3f
	sta $5a                      ; 8db3: 85 5a
	sta $1a67,y                  ; 8db5: 99 67 1a
	lda $e4                      ; 8db8: a5 e4
	sta $5b                      ; 8dba: 85 5b
	sta $1a68,y                  ; 8dbc: 99 68 1a
	lda.w $0001,x                ; 8dbf: bd 01 00
	sta $5c                      ; 8dc2: 85 5c
	jsr $8dd0                    ; 8dc4: 20 d0 8d
loc_8dc7:
	inc $e4                      ; 8dc7: e6 e4
	lda $e4                      ; 8dc9: a5 e4
	cmp.b #$05                   ; 8dcb: c9 05
	.db $d0, $d5                 ; 8dcd: d0 d5
loc_8dcf:
	rts                          ; 8dcf: 60

; --- Block at $8dd0-$8dd4 ---
loc_8dd0:
	lda $5a                      ; 8dd0: a5 5a
	.db $d0, $01                 ; 8dd2: d0 01
loc_8dd4:
	rts                          ; 8dd4: 60

; --- Block at $8dd5-$8e33 ---
loc_8dd5:
	lda.b #$00                   ; 8dd5: a9 00
	xba                          ; 8dd7: eb
	lda $5c                      ; 8dd8: a5 5c
	asl                          ; 8dda: 0a
	asl                          ; 8ddb: 0a
	asl                          ; 8ddc: 0a
	xba                          ; 8ddd: eb
	rep #$20                     ; 8dde: c2 20
	clc                          ; 8de0: 18
	adc.w #RESET                 ; 8de1: 69 00 80
	sta $1f                      ; 8de4: 85 1f
	lda.w #$0600                 ; 8de6: a9 00 06
	sta $22                      ; 8de9: 85 22
	sep #$20                     ; 8deb: e2 20
	lda.b #$1a                   ; 8ded: a9 1a
	sta $21                      ; 8def: 85 21
	lda $5b                      ; 8df1: a5 5b
	asl                          ; 8df3: 0a
	jsr $87b4                    ; 8df4: 20 b4 87
loc_8df7:
	rep #$20                     ; 8df7: c2 20
	lda $1efd73,x                ; 8df9: bf 73 fd 1e
	sta $1d                      ; 8dfd: 85 1d
	sep #$20                     ; 8dff: e2 20
	jsr $818a                    ; 8e01: 20 8a 81
loc_8e04:
	jsr $8078                    ; 8e04: 20 78 80
loc_8e07:
	tdc                          ; 8e07: 7b
	xba                          ; 8e08: eb
	lda $5c                      ; 8e09: a5 5c
	and.b #$0f                   ; 8e0b: 29 0f
	rep #$20                     ; 8e0d: c2 20
	asl                          ; 8e0f: 0a
	asl                          ; 8e10: 0a
	asl                          ; 8e11: 0a
	asl                          ; 8e12: 0a
	asl                          ; 8e13: 0a
	tax                          ; 8e14: aa
	sep #$20                     ; 8e15: e2 20
	lda $5b                      ; 8e17: a5 5b
	asl                          ; 8e19: 0a
	asl                          ; 8e1a: 0a
	asl                          ; 8e1b: 0a
	asl                          ; 8e1c: 0a
	asl                          ; 8e1d: 0a
	sta $43                      ; 8e1e: 85 43
	ldy $43                      ; 8e20: a4 43
	lda.b #$20                   ; 8e22: a9 20
	sta $45                      ; 8e24: 85 45
	lda $1cfd00,x                ; 8e26: bf 00 fd 1c
	sta $fe28,y                  ; 8e2a: 99 28 fe
	inx                          ; 8e2d: e8
	iny                          ; 8e2e: c8
	dec $45                      ; 8e2f: c6 45
	.db $d0, $f3                 ; 8e31: d0 f3
loc_8e33:
	rts                          ; 8e33: 60

; --- Block at $8e34-$8e4d ---
loc_8e34:
	phx                          ; 8e34: da
	cmp.b #$42                   ; 8e35: c9 42
	.db $b0, $15                 ; 8e37: b0 15
loc_8e39:
	sec                          ; 8e39: 38
	sbc.b #$0f                   ; 8e3a: e9 0f
	asl                          ; 8e3c: 0a
	xba                          ; 8e3d: eb
	lda.b #$00                   ; 8e3e: a9 00
	xba                          ; 8e40: eb
	tax                          ; 8e41: aa
	lda $1efe1f,x                ; 8e42: bf 1f fe 1e
	xba                          ; 8e46: eb
	lda $1efe1e,x                ; 8e47: bf 1e fe 1e
	xba                          ; 8e4b: eb
	plx                          ; 8e4c: fa
	rts                          ; 8e4d: 60

; --- Block at $8e4e-$8e52 ---
loc_8e4e:
	xba                          ; 8e4e: eb
	lda.b #$ff                   ; 8e4f: a9 ff
	plx                          ; 8e51: fa
	rts                          ; 8e52: 60

; --- Block at $8e70-$8e8a ---
loc_8e70:
	pha                          ; 8e70: 48
	phy                          ; 8e71: 5a
	sta $1d                      ; 8e72: 85 1d
	sty $1e                      ; 8e74: 84 1e
	jsr $a8f1                    ; 8e76: 20 f1 a8
loc_8e79:
	.db $d0, $28                 ; 8e79: d0 28
loc_8e7b:
	tdc                          ; 8e7b: 7b
	xba                          ; 8e7c: eb
	lda $1d                      ; 8e7d: a5 1d
	rep #$20                     ; 8e7f: c2 20
	asl                          ; 8e81: 0a
	asl                          ; 8e82: 0a
	asl                          ; 8e83: 0a
	asl                          ; 8e84: 0a
	asl                          ; 8e85: 0a
	asl                          ; 8e86: 0a
	tay                          ; 8e87: a8
	ldx.b #$20                   ; 8e88: a2 20
	brk #$a9                     ; 8e8a: 00 a9

; --- Block at $8ea3-$8ecc ---
loc_8ea3:
	lda.b #$00                   ; 8ea3: a9 00
	xba                          ; 8ea5: eb
	lda $1d                      ; 8ea6: a5 1d
	rep #$20                     ; 8ea8: c2 20
	asl                          ; 8eaa: 0a
	asl                          ; 8eab: 0a
	asl                          ; 8eac: 0a
	asl                          ; 8ead: 0a
	asl                          ; 8eae: 0a
	asl                          ; 8eaf: 0a
	tay                          ; 8eb0: a8
	sep #$20                     ; 8eb1: e2 20
	lda $1d                      ; 8eb3: a5 1d
	asl                          ; 8eb5: 0a
	asl                          ; 8eb6: 0a
	asl                          ; 8eb7: 0a
	asl                          ; 8eb8: 0a
	adc.b #$20                   ; 8eb9: 69 20
	sta $20                      ; 8ebb: 85 20
	lda $1d                      ; 8ebd: a5 1d
	clc                          ; 8ebf: 18
	adc.b #$03                   ; 8ec0: 69 03
	asl                          ; 8ec2: 0a
	ora $01c1                    ; 8ec3: 0d c1 01
	sta $21                      ; 8ec6: 85 21
	rep #$20                     ; 8ec8: c2 20
	ldx.b #$04                   ; 8eca: a2 04
	brk #$a5                     ; 8ecc: 00 a5

; --- Block at $8f5b-$8f69 ---
loc_8f5b:
	stx $73                      ; 8f5b: 86 73
	sta $75                      ; 8f5d: 85 75
	lda.b #$ff                   ; 8f5f: a9 ff
	ldx $41                      ; 8f61: a6 41
	sta $0163,x                  ; 8f63: 9d 63 01
	inx                          ; 8f66: e8
	cpx.b #$07                   ; 8f67: e0 07
	brk #$d0                     ; 8f69: 00 d0

; --- Block at $8fa8-$8fc3 ---
loc_8fa8:
	phy                          ; 8fa8: 5a
	phy                          ; 8fa9: 5a
	jsr $8f5b                    ; 8faa: 20 5b 8f
loc_8fad:
	rep #$20                     ; 8fad: c2 20
	pla                          ; 8faf: 68
	clc                          ; 8fb0: 18
	adc.w #$000e                 ; 8fb1: 69 0e 00
	tay                          ; 8fb4: a8
	sep #$20                     ; 8fb5: e2 20
	ldx $41                      ; 8fb7: a6 41
	lda $0163,x                  ; 8fb9: bd 63 01
	sta ($29),y                  ; 8fbc: 91 29
	dey                          ; 8fbe: 88
	dey                          ; 8fbf: 88
	inx                          ; 8fc0: e8
	cpx.b #$07                   ; 8fc1: e0 07
	brk #$d0                     ; 8fc3: 00 d0

; --- Block at $8fc8-$9006 ---
loc_8fc8:
	and.b #$0f                   ; 8fc8: 29 0f
	pha                          ; 8fca: 48
	rep #$20                     ; 8fcb: c2 20
	tya                          ; 8fcd: 98
	clc                          ; 8fce: 18
	adc $29                      ; 8fcf: 65 29
	tay                          ; 8fd1: a8
	sep #$20                     ; 8fd2: e2 20
	pla                          ; 8fd4: 68
	sta $46                      ; 8fd5: 85 46
	asl                          ; 8fd7: 0a
	sta $45                      ; 8fd8: 85 45
	asl                          ; 8fda: 0a
	adc $45                      ; 8fdb: 65 45
	adc $46                      ; 8fdd: 65 46
	sta $45                      ; 8fdf: 85 45
	stz $46                      ; 8fe1: 64 46
	ldx $45                      ; 8fe3: a6 45
	lda.b #$07                   ; 8fe5: a9 07
	sta $45                      ; 8fe7: 85 45
	lda $0fa764,x                ; 8fe9: bf 64 a7 0f
	jsr $8e34                    ; 8fed: 20 34 8e
loc_8ff0:
	sta.w $0000,y                ; 8ff0: 99 00 00
	xba                          ; 8ff3: eb
	sta.w $0040,y                ; 8ff4: 99 40 00
	iny                          ; 8ff7: c8
	lda $34                      ; 8ff8: a5 34
	sta.w $0000,y                ; 8ffa: 99 00 00
	sta.w $0040,y                ; 8ffd: 99 40 00
	iny                          ; 9000: c8
	inx                          ; 9001: e8
	dec $45                      ; 9002: c6 45
	.db $d0, $e3                 ; 9004: d0 e3
loc_9006:
	rts                          ; 9006: 60

; --- Block at $9007-$9018 ---
loc_9007:
	pha                          ; 9007: 48
	and.b #$0f                   ; 9008: 29 0f
	asl                          ; 900a: 0a
	jsr $87b4                    ; 900b: 20 b4 87
loc_900e:
	rep #$20                     ; 900e: c2 20
	lda $0fc625,x                ; 9010: bf 25 c6 0f
	tax                          ; 9014: aa
	sep #$20                     ; 9015: e2 20
	pla                          ; 9017: 68
	rts                          ; 9018: 60

; --- Block at $906a-$9091 ---
loc_906a:
	phx                          ; 906a: da
	lda $1d                      ; 906b: a5 1d
	jsr $9007                    ; 906d: 20 07 90
loc_9070:
	stx $22                      ; 9070: 86 22
	lda ($22)                    ; 9072: b2 22
	and.b #$3f                   ; 9074: 29 3f
	.db $d0, $1a                 ; 9076: d0 1a
loc_9078:
	.db $80, $01                 ; 9078: 80 01
	phx                          ; 907a: da
loc_907b:
	tdc                          ; 907b: 7b
	xba                          ; 907c: eb
	lda $1d                      ; 907d: a5 1d
	rep #$20                     ; 907f: c2 20
	asl                          ; 9081: 0a
	asl                          ; 9082: 0a
	asl                          ; 9083: 0a
	asl                          ; 9084: 0a
	asl                          ; 9085: 0a
	asl                          ; 9086: 0a
	adc.w #$0340                 ; 9087: 69 40 03
	tay                          ; 908a: a8
	sep #$20                     ; 908b: e2 20
	jsr $9126                    ; 908d: 20 26 91
loc_9090:
	plx                          ; 9090: fa
	rts                          ; 9091: 60

; --- Block at $9092-$90c7 ---
loc_9092:
	ldy $41                      ; 9092: a4 41
	cmp $1a67,y                  ; 9094: d9 67 1a
	.db $f0, $04                 ; 9097: f0 04
loc_9099:
	iny                          ; 9099: c8
	iny                          ; 909a: c8
	.db $80, $f7                 ; 909b: 80 f7
loc_909d:
	lda $1a68,y                  ; 909d: b9 68 1a
	pha                          ; 90a0: 48
	sta $45                      ; 90a1: 85 45
	asl                          ; 90a3: 0a
	adc $45                      ; 90a4: 65 45
	asl                          ; 90a6: 0a
	asl                          ; 90a7: 0a
	asl                          ; 90a8: 0a
	asl                          ; 90a9: 0a
	adc.b #$80                   ; 90aa: 69 80
	sta $48                      ; 90ac: 85 48
	lda.b #$00                   ; 90ae: a9 00
	adc.b #$00                   ; 90b0: 69 00
	sta $49                      ; 90b2: 85 49
	pla                          ; 90b4: 68
	inc                          ; 90b5: 1a
	inc                          ; 90b6: 1a
	inc                          ; 90b7: 1a
	asl                          ; 90b8: 0a
	ora $c1                      ; 90b9: 05 c1
	adc $49                      ; 90bb: 65 49
	sta $49                      ; 90bd: 85 49
	lda $1e                      ; 90bf: a5 1e
	cmp.b #$09                   ; 90c1: c9 09
	.db $d0, $05                 ; 90c3: d0 05
loc_90c5:
	ldx.b #$06                   ; 90c5: a2 06
	brk #$80                     ; 90c7: 00 80

; --- Block at $90ca-$9125 ---
loc_90ca:
	ldx $41                      ; 90ca: a6 41
	tdc                          ; 90cc: 7b
	xba                          ; 90cd: eb
	lda $1d                      ; 90ce: a5 1d
	rep #$20                     ; 90d0: c2 20
	asl                          ; 90d2: 0a
	asl                          ; 90d3: 0a
	asl                          ; 90d4: 0a
	asl                          ; 90d5: 0a
	asl                          ; 90d6: 0a
	asl                          ; 90d7: 0a
	adc.w #$0340                 ; 90d8: 69 40 03
	tay                          ; 90db: a8
	sep #$20                     ; 90dc: e2 20
	lda.b #$06                   ; 90de: a9 06
	sta $45                      ; 90e0: 85 45
	lda $1f                      ; 90e2: a5 1f
	clc                          ; 90e4: 18
	adc $019183,x                ; 90e5: 7f 83 91 01
	sta.w $0000,y                ; 90e9: 99 00 00
	lda $20                      ; 90ec: a5 20
	clc                          ; 90ee: 18
	adc $01918f,x                ; 90ef: 7f 8f 91 01
	sta.w $0001,y                ; 90f3: 99 01 00
	stx $e9                      ; 90f6: 86 e9
	lda $1e                      ; 90f8: a5 1e
	asl                          ; 90fa: 0a
	sta $43                      ; 90fb: 85 43
	asl                          ; 90fd: 0a
	adc $43                      ; 90fe: 65 43
	adc $e9                      ; 9100: 65 e9
	jsr $87b4                    ; 9102: 20 b4 87
loc_9105:
	lda.b #$00                   ; 9105: a9 00
	xba                          ; 9107: eb
	lda $019141,x                ; 9108: bf 41 91 01
	ldx $e9                      ; 910c: a6 e9
	rep #$20                     ; 910e: c2 20
	clc                          ; 9110: 18
	adc $48                      ; 9111: 65 48
	sta.w $0002,y                ; 9113: 99 02 00
	sep #$20                     ; 9116: e2 20
	iny                          ; 9118: c8
	iny                          ; 9119: c8
	iny                          ; 911a: c8
	iny                          ; 911b: c8
	inx                          ; 911c: e8
	dec $45                      ; 911d: c6 45
	.db $d0, $c1                 ; 911f: d0 c1
loc_9121:
	jsr $9126                    ; 9121: 20 26 91
loc_9124:
	plx                          ; 9124: fa
	rts                          ; 9125: 60

; --- Block at $9126-$9128 ---
loc_9126:
	ldx.b #$0a                   ; 9126: a2 0a
	brk #$c2                     ; 9128: 00 c2

; --- Block at $91d4-$920f ---
loc_91d4:
	lda $16a8                    ; 91d4: ad a8 16
	.db $f0, $02                 ; 91d7: f0 02
loc_91d9:
	lda.b #$0a                   ; 91d9: a9 0a
loc_91db:
	jsr $87b4                    ; 91db: 20 b4 87
loc_91de:
	rep #$20                     ; 91de: c2 20
	lda.w #$0005                 ; 91e0: a9 05 00
	sta $45                      ; 91e3: 85 45
	ldy $41                      ; 91e5: a4 41
	lda $019210,x                ; 91e7: bf 10 92 01
	clc                          ; 91eb: 18
	adc $1a71                    ; 91ec: 6d 71 1a
	sta $fe02,y                  ; 91ef: 99 02 fe
	sta $fe16,y                  ; 91f2: 99 16 fe
	tya                          ; 91f5: 98
	lsr                          ; 91f6: 4a
	lsr                          ; 91f7: 4a
	sta $fe00,y                  ; 91f8: 99 00 fe
	sta $fe14,y                  ; 91fb: 99 14 fe
	iny                          ; 91fe: c8
	iny                          ; 91ff: c8
	iny                          ; 9200: c8
	iny                          ; 9201: c8
	inx                          ; 9202: e8
	inx                          ; 9203: e8
	dec $45                      ; 9204: c6 45
	.db $d0, $df                 ; 9206: d0 df
loc_9208:
	sep #$20                     ; 9208: e2 20
	lda.b #$0a                   ; 920a: a9 0a
	sta $1a73                    ; 920c: 8d 73 1a
	rts                          ; 920f: 60

; --- Block at $9224-$922c ---
loc_9224:
	lda $1a73                    ; 9224: ad 73 1a
	.db $f0, $04                 ; 9227: f0 04
loc_9229:
	dec $1a73                    ; 9229: ce 73 1a
	rts                          ; 922c: 60

; --- Block at $922d-$9246 ---
loc_922d:
	lda.b #$0a                   ; 922d: a9 0a
	sta $1a73                    ; 922f: 8d 73 1a
	lda.b #$ff                   ; 9232: a9 ff
	eor $1a75                    ; 9234: 4d 75 1a
	sta $1a75                    ; 9237: 8d 75 1a
	.db $f0, $05                 ; 923a: f0 05
loc_923c:
	ldy.b #$00                   ; 923c: a0 00
	inc $0380,x                  ; 923e: fe 80 03
loc_9241:
	ldy.b #$14                   ; 9241: a0 14
	inc $05a2,x                  ; 9243: fe a2 05
	brk #$c2                     ; 9246: 00 c2

; --- Block at $9264-$9276 ---
loc_9264:
	tdc                          ; 9264: 7b
	jsr $818a                    ; 9265: 20 8a 81
loc_9268:
	jsr $9279                    ; 9268: 20 79 92
loc_926b:
	jsr $9334                    ; 926b: 20 34 93
loc_926e:
	inc                          ; 926e: 1a
	cmp.b #$05                   ; 926f: c9 05
	.db $d0, $f2                 ; 9271: d0 f2
loc_9273:
	jsr $818a                    ; 9273: 20 8a 81
loc_9276:
	jmp $80b2                    ; 9276: 4c b2 80

; --- Block at $9279-$9284 ---
loc_9279:
	pha                          ; 9279: 48
	sta $45                      ; 927a: 85 45
	stz $46                      ; 927c: 64 46
	jsr $a8f1                    ; 927e: 20 f1 a8
loc_9281:
	.db $d0, $02                 ; 9281: d0 02
loc_9283:
	pla                          ; 9283: 68
	rts                          ; 9284: 60

; --- Block at $9285-$9300 ---
loc_9285:
	pha                          ; 9285: 48
	lda.w $0001,x                ; 9286: bd 01 00
	and.b #$0f                   ; 9289: 29 0f
	sta $1bc0                    ; 928b: 8d c0 1b
	stz $1bbf                    ; 928e: 9c bf 1b
	lda.w $0003,x                ; 9291: bd 03 00
	and.b #$38                   ; 9294: 29 38
	.db $f0, $30                 ; 9296: f0 30
loc_9298:
	lsr                          ; 9298: 4a
	lsr                          ; 9299: 4a
	jsr $87b4                    ; 929a: 20 b4 87
loc_929d:
	rep #$20                     ; 929d: c2 20
	lda $1efcbd,x                ; 929f: bf bd fc 1e
	tay                          ; 92a3: a8
	sep #$20                     ; 92a4: e2 20
	lda $45                      ; 92a6: a5 45
	asl                          ; 92a8: 0a
	sta $43                      ; 92a9: 85 43
	ldx $43                      ; 92ab: a6 43
	lda.b #$80                   ; 92ad: a9 80
	sta.l $002115                ; 92af: 8f 15 21 00 ; VMAIN
	rep #$20                     ; 92b3: c2 20
	lda $01932a,x                ; 92b5: bf 2a 93 01
	sta.l $002116                ; 92b9: 8f 16 21 00 ; VMADDL
	sep #$20                     ; 92bd: e2 20
	pla                          ; 92bf: 68
	phd                          ; 92c0: 0b
	ldx.b #$00                   ; 92c1: a2 00
	and ($da,x)                  ; 92c3: 21 da
	pld                          ; 92c5: 2b
	.db $80, $2b                 ; 92c6: 80 2b
loc_92c8:
	pla                          ; 92c8: 68
	phd                          ; 92c9: 0b
	ldx.b #$00                   ; 92ca: a2 00
	and ($da,x)                  ; 92cc: 21 da
	pld                          ; 92ce: 2b
	dec                          ; 92cf: 3a
	asl                          ; 92d0: 0a
	sta $0143                    ; 92d1: 8d 43 01
	lda.b #$80                   ; 92d4: a9 80
	sta $15                      ; 92d6: 85 15
	rep #$20                     ; 92d8: c2 20
	lda $1bbf                    ; 92da: ad bf 1b
	lsr                          ; 92dd: 4a
	clc                          ; 92de: 18
	adc $1bbf                    ; 92df: 6d bf 1b
	adc.w #$d3c0                 ; 92e2: 69 c0 d3
	tay                          ; 92e5: a8
	lda $0145                    ; 92e6: ad 45 01
	asl                          ; 92e9: 0a
	tax                          ; 92ea: aa
	lda $01932a,x                ; 92eb: bf 2a 93 01
	sta $16                      ; 92ef: 85 16
	sep #$20                     ; 92f1: e2 20
loc_92f3:
	phb                          ; 92f3: 8b
	lda.b #$1d                   ; 92f4: a9 1d
	pha                          ; 92f6: 48
	plb                          ; 92f7: ab
	lda.b #$10                   ; 92f8: a9 10
	jsr $9301                    ; 92fa: 20 01 93
loc_92fd:
	plb                          ; 92fd: ab
	pld                          ; 92fe: 2b
	pla                          ; 92ff: 68
	rts                          ; 9300: 60

; --- Block at $9301-$9306 ---
loc_9301:
	sta $0145                    ; 9301: 8d 45 01
	ldx.b #$08                   ; 9304: a2 08
	brk #$b9                     ; 9306: 00 b9

; --- Block at $9334-$933f ---
loc_9334:
	pha                          ; 9334: 48
	sta $45                      ; 9335: 85 45
	stz $46                      ; 9337: 64 46
	jsr $a8f1                    ; 9339: 20 f1 a8
loc_933c:
	.db $d0, $02                 ; 933c: d0 02
loc_933e:
	pla                          ; 933e: 68
	rts                          ; 933f: 60

; --- Block at $9340-$9367 ---
loc_9340:
	lda.w $0001,x                ; 9340: bd 01 00
	and.b #$0f                   ; 9343: 29 0f
	sta $43                      ; 9345: 85 43
	rep #$20                     ; 9347: c2 20
	lda $43                      ; 9349: a5 43
	asl                          ; 934b: 0a
	asl                          ; 934c: 0a
	asl                          ; 934d: 0a
	asl                          ; 934e: 0a
	adc.w #$86d0                 ; 934f: 69 d0 86
	tax                          ; 9352: aa
	lda $45                      ; 9353: a5 45
	asl                          ; 9355: 0a
	asl                          ; 9356: 0a
	asl                          ; 9357: 0a
	asl                          ; 9358: 0a
	asl                          ; 9359: 0a
	adc.w #$a160                 ; 935a: 69 60 a1
	tay                          ; 935d: a8
	lda.w #$000f                 ; 935e: a9 0f 00
	mvn $7e,$0d                  ; 9361: 54 7e 0d
	sep #$20                     ; 9364: e2 20
	pla                          ; 9366: 68
	rts                          ; 9367: 60

; --- Block at $93f6-$9414 ---
loc_93f6:
	ldx $69                      ; 93f6: a6 69
	stx $1f                      ; 93f8: 86 1f
	jsr $906a                    ; 93fa: 20 6a 90
loc_93fd:
	lda.b #$04                   ; 93fd: a9 04
	sta $1d                      ; 93ff: 85 1d
	lda $1b53                    ; 9401: ad 53 1b
	sta $1e                      ; 9404: 85 1e
	lda $1a75                    ; 9406: ad 75 1a
	.db $d0, $05                 ; 9409: d0 05
loc_940b:
	lda $1b54                    ; 940b: ad 54 1b
	sta $1e                      ; 940e: 85 1e
loc_9410:
	ldx $6b                      ; 9410: a6 6b
	stx $1f                      ; 9412: 86 1f
	jmp $906a                    ; 9414: 4c 6a 90

; --- Block at $9417-$9420 ---
loc_9417:
	jsr $9429                    ; 9417: 20 29 94
loc_941a:
	jsr $9436                    ; 941a: 20 36 94
loc_941d:
	jsr $9443                    ; 941d: 20 43 94
loc_9420:
	jmp $9450                    ; 9420: 4c 50 94

; --- Block at $9423-$9426 ---
loc_9423:
	jsr $8d38                    ; 9423: 20 38 8d

; --- Block at $9426-$9429 ---
loc_9426:
	jsr $818a                    ; 9426: 20 8a 81

; --- Block at $9429-$943a ---
loc_9429:
	phx                          ; 9429: da
	phy                          ; 942a: 5a
	ldx.b #$00                   ; 942b: a2 00
	pla                          ; 942d: 68
	ldy.b #$00                   ; 942e: a0 00
	ldx $80                      ; 9430: a6 80
	and $20                      ; 9432: 25 20
	txa                          ; 9434: 8a
	sta ($da,x)                  ; 9435: 81 da
	phy                          ; 9437: 5a
	ldx.b #$00                   ; 9438: a2 00
	rts                          ; 943a: 60

; --- Block at $9433-$9436 ---
loc_9433:
	jsr $818a                    ; 9433: 20 8a 81

; --- Block at $9436-$9437 ---
loc_9436:
	phx                          ; 9436: da

; --- Block at $9440-$9443 ---
loc_9440:
	jsr $818a                    ; 9440: 20 8a 81

; --- Block at $9443-$9456 ---
loc_9443:
	phx                          ; 9443: da
	phy                          ; 9444: 5a
	ldx.b #$00                   ; 9445: a2 00
	sei                          ; 9447: 78
	ldy.b #$00                   ; 9448: a0 00
	dec $80                      ; 944a: c6 80
	phd                          ; 944c: 0b
loc_944d:
	jsr $818a                    ; 944d: 20 8a 81
loc_9450:
	phx                          ; 9450: da
	phy                          ; 9451: 5a
	ldx.b #$00                   ; 9452: a2 00
	.db $70, $a0                 ; 9454: 70 a0
loc_9456:
	brk #$d6                     ; 9456: 00 d6

; --- Block at $946a-$9483 ---
loc_946a:
	jsr $818a                    ; 946a: 20 8a 81
loc_946d:
	lda $88                      ; 946d: a5 88
	and.b #$7f                   ; 946f: 29 7f
	sta.l $002100                ; 9471: 8f 00 21 00 ; INIDISP
	pha                          ; 9475: 48
	jsr $82b6                    ; 9476: 20 b6 82
loc_9479:
	pla                          ; 9479: 68
	inc                          ; 947a: 1a
	sta $88                      ; 947b: 85 88
	cmp.b #$10                   ; 947d: c9 10
	.db $90, $e9                 ; 947f: 90 e9
loc_9481:
	dec $88                      ; 9481: c6 88
	rts                          ; 9483: 60

; --- Block at $9484-$94a1 ---
loc_9484:
	jsr $818a                    ; 9484: 20 8a 81
loc_9487:
	lda $88                      ; 9487: a5 88
	.db $30, $16                 ; 9489: 30 16
loc_948b:
	sta.l $002100                ; 948b: 8f 00 21 00 ; INIDISP
	pha                          ; 948f: 48
	jsr $82b6                    ; 9490: 20 b6 82
loc_9493:
	pla                          ; 9493: 68
	dec                          ; 9494: 3a
	sta $88                      ; 9495: 85 88
	.db $10, $eb                 ; 9497: 10 eb
loc_9499:
	lda.b #$80                   ; 9499: a9 80
	sta.l $002100                ; 949b: 8f 00 21 00 ; INIDISP
	sta $88                      ; 949f: 85 88
loc_94a1:
	rts                          ; 94a1: 60

; --- Block at $94a2-$94aa ---
loc_94a2:
	jsr $94af                    ; 94a2: 20 af 94
loc_94a5:
	.db $80, $03                 ; 94a5: 80 03
	jsr $818a                    ; 94a7: 20 8a 81

; --- Block at $94aa-$94ae ---
loc_94aa:
	jsl $14fd0c                  ; 94aa: 22 0c fd 14
loc_94ae:
	rts                          ; 94ae: 60

; --- Block at $94af-$94bd ---
loc_94af:
	phx                          ; 94af: da
	phd                          ; 94b0: 0b
	ldx.b #$00                   ; 94b1: a2 00
	ora ($da,x)                  ; 94b3: 01 da
	pld                          ; 94b5: 2b
	rep #$20                     ; 94b6: c2 20
	lda.w #$0000                 ; 94b8: a9 00 00
	ldy.b #$1c                   ; 94bb: a0 1c
	brk #$a6                     ; 94bd: 00 a6

; --- Block at $94dd-$94e6 ---
loc_94dd:
	rep #$20                     ; 94dd: c2 20
	lda.w #$00ff                 ; 94df: a9 ff 00
	ldx.b #$00                   ; 94e2: a2 00
	ldy.b #$a0                   ; 94e4: a0 a0
	brk #$a4                     ; 94e6: 00 a4

; --- Block at $94ff-$9508 ---
loc_94ff:
	rep #$20                     ; 94ff: c2 20
	lda.w #$00ff                 ; 9501: a9 ff 00
	ldx.b #$00                   ; 9504: a2 00
	ldy $a0                      ; 9506: a4 a0
	brk #$a0                     ; 9508: 00 a0

; --- Block at $958f-$9597 ---
loc_958f:
	lda $e8                      ; 958f: a5 e8
	jsr $9007                    ; 9591: 20 07 90
loc_9594:
	lda.w $0003,x                ; 9594: bd 03 00
	rts                          ; 9597: 60

; --- Block at $9598-$95d1 ---
loc_9598:
	phb                          ; 9598: 8b
	phd                          ; 9599: 0b
	jsr $873a                    ; 959a: 20 3a 87
loc_959d:
	lda.b #$7e                   ; 959d: a9 7e
	pha                          ; 959f: 48
	plb                          ; 95a0: ab
	stz $1b9a                    ; 95a1: 9c 9a 1b
	ldx.b #$e4                   ; 95a4: a2 e4
	tcs                          ; 95a6: 1b
	cpx $1a5f                    ; 95a7: ec 5f 1a
	.db $f0, $0c                 ; 95aa: f0 0c
loc_95ac:
	stx $1a5f                    ; 95ac: 8e 5f 1a
	stz $1a3c                    ; 95af: 9c 3c 1a
	jsr $992a                    ; 95b2: 20 2a 99
loc_95b5:
	jsr $82bb                    ; 95b5: 20 bb 82
loc_95b8:
	jsr $9988                    ; 95b8: 20 88 99
loc_95bb:
	jsr $9aef                    ; 95bb: 20 ef 9a
loc_95be:
	.db $b0, $06                 ; 95be: b0 06
loc_95c0:
	jsr $95fe                    ; 95c0: 20 fe 95
loc_95c3:
	jsr $95d2                    ; 95c3: 20 d2 95
loc_95c6:
	jsr $873f                    ; 95c6: 20 3f 87
loc_95c9:
	tdc                          ; 95c9: 7b
	xba                          ; 95ca: eb
	lda.l $0017fb                ; 95cb: af fb 17 00
	pld                          ; 95cf: 2b
	plb                          ; 95d0: ab
	rts                          ; 95d1: 60

; --- Block at $95d2-$95fd ---
loc_95d2:
	stz $48                      ; 95d2: 64 48
	lda $48                      ; 95d4: a5 48
	jsr $b977                    ; 95d6: 20 77 b9
loc_95d9:
	lda.w $0000,x                ; 95d9: bd 00 00
	and.b #$3f                   ; 95dc: 29 3f
	.db $d0, $08                 ; 95de: d0 08
loc_95e0:
	inc $48                      ; 95e0: e6 48
	lda $48                      ; 95e2: a5 48
	cmp.b #$05                   ; 95e4: c9 05
	.db $d0, $ec                 ; 95e6: d0 ec
loc_95e8:
	lda $48                      ; 95e8: a5 48
	sta $e7                      ; 95ea: 85 e7
	sta $1b3e                    ; 95ec: 8d 3e 1b
	sta $1b8a                    ; 95ef: 8d 8a 1b
	ldx.b #$d8                   ; 95f2: a2 d8
	sbc $1ba58e,x                ; 95f4: ff 8e a5 1b
	lda $16a9                    ; 95f8: ad a9 16
	sta $1c                      ; 95fb: 85 1c
	rts                          ; 95fd: 60

; --- Block at $95fe-$9648 ---
loc_95fe:
	lda.b #$15                   ; 95fe: a9 15
	sta $1e01                    ; 9600: 8d 01 1e
	lda.b #$01                   ; 9603: a9 01
	sta $1e00                    ; 9605: 8d 00 1e
	jsl $048004                  ; 9608: 22 04 80 04
loc_960c:
	jsr $8c7f                    ; 960c: 20 7f 8c
loc_960f:
	lda.b #$30                   ; 960f: a9 30
	sta $c1                      ; 9611: 85 c1
	jsr $9988                    ; 9613: 20 88 99
loc_9616:
	stz $1b47                    ; 9616: 9c 47 1b
	jsr $8d2f                    ; 9619: 20 2f 8d
loc_961c:
	jsr $8d6c                    ; 961c: 20 6c 8d
loc_961f:
	jsr $824f                    ; 961f: 20 4f 82
loc_9622:
	lda $1a3c                    ; 9622: ad 3c 1a
	jsr $9785                    ; 9625: 20 85 97
loc_9628:
	jsr $8da2                    ; 9628: 20 a2 8d
loc_962b:
	jsr $98cf                    ; 962b: 20 cf 98
loc_962e:
	jsr $96e4                    ; 962e: 20 e4 96
loc_9631:
	jsr $84ba                    ; 9631: 20 ba 84
loc_9634:
	ldy.b #$de                   ; 9634: a0 de
	stp                          ; 9636: db
	jsr $8301                    ; 9637: 20 01 83
loc_963a:
	jsr $9417                    ; 963a: 20 17 94
loc_963d:
	jsr $99be                    ; 963d: 20 be 99
loc_9640:
	jsr $965f                    ; 9640: 20 5f 96
loc_9643:
	lda $1a3c                    ; 9643: ad 3c 1a
	.db $d0, $03                 ; 9646: d0 03
loc_9648:
	jmp $9914                    ; 9648: 4c 14 99

; --- Block at $964b-$9656 ---
loc_964b:
	jsr $97d9                    ; 964b: 20 d9 97
loc_964e:
	.db $90, $09                 ; 964e: 90 09
loc_9650:
	jsr $d434                    ; 9650: 20 34 d4
loc_9653:
	jsr $d39b                    ; 9653: 20 9b d3
loc_9656:
	jmp $9484                    ; 9656: 4c 84 94

; --- Block at $9659-$965c ---
loc_9659:
	jsr $9484                    ; 9659: 20 84 94
loc_965c:
	jmp $9619                    ; 965c: 4c 19 96

; --- Block at $965f-$9682 ---
loc_965f:
	lda $1a3c                    ; 965f: ad 3c 1a
	cmp.b #$05                   ; 9662: c9 05
	.db $90, $03                 ; 9664: 90 03
loc_9666:
	stz $1a3c                    ; 9666: 9c 3c 1a
loc_9669:
	jsr $824c                    ; 9669: 20 4c 82
loc_966c:
	jsr $80b2                    ; 966c: 20 b2 80
loc_966f:
	lda.b #$1f                   ; 966f: a9 1f
	sta.l $00212c                ; 9671: 8f 2c 21 00 ; TM
	inc $16a7                    ; 9675: ee a7 16
	jsr $82c0                    ; 9678: 20 c0 82
loc_967b:
	lda $00                      ; 967b: a5 00
	and.b #$80                   ; 967d: 29 80
	.db $f0, $02                 ; 967f: f0 02
loc_9681:
	sec                          ; 9681: 38
	rts                          ; 9682: 60

; --- Block at $9683-$96e0 ---
loc_9683:
	lda $01                      ; 9683: a5 01
	and.b #$08                   ; 9685: 29 08
	.db $f0, $25                 ; 9687: f0 25
loc_9689:
	lda.b #$0f                   ; 9689: a9 0f
	sta.l $00212c                ; 968b: 8f 2c 21 00 ; TM
	lda $1b47                    ; 968f: ad 47 1b
	.db $f0, $08                 ; 9692: f0 08
loc_9694:
	lda $1a3c                    ; 9694: ad 3c 1a
	dec                          ; 9697: 3a
	.db $f0, $08                 ; 9698: f0 08
loc_969a:
	.db $80, $08                 ; 969a: 80 08
loc_969c:
	lda $1a3c                    ; 969c: ad 3c 1a
	dec                          ; 969f: 3a
	.db $10, $02                 ; 96a0: 10 02
loc_96a2:
	lda.b #$04                   ; 96a2: a9 04
loc_96a4:
	sta $1a3c                    ; 96a4: 8d 3c 1a
	jsr $9949                    ; 96a7: 20 49 99
loc_96aa:
	.db $90, $e3                 ; 96aa: 90 e3
loc_96ac:
	.db $80, $1f                 ; 96ac: 80 1f
loc_96ae:
	lda $01                      ; 96ae: a5 01
	and.b #$04                   ; 96b0: 29 04
	.db $f0, $25                 ; 96b2: f0 25
loc_96b4:
	lda.b #$0f                   ; 96b4: a9 0f
	sta.l $00212c                ; 96b6: 8f 2c 21 00 ; TM
	lda $1a3c                    ; 96ba: ad 3c 1a
	inc                          ; 96bd: 1a
	cmp.b #$05                   ; 96be: c9 05
	.db $d0, $03                 ; 96c0: d0 03
loc_96c2:
	lda $1b47                    ; 96c2: ad 47 1b
loc_96c5:
	sta $1a3c                    ; 96c5: 8d 3c 1a
	jsr $9949                    ; 96c8: 20 49 99
loc_96cb:
	.db $90, $ed                 ; 96cb: 90 ed
loc_96cd:
	lda $1a3c                    ; 96cd: ad 3c 1a
	jsr $9785                    ; 96d0: 20 85 97
loc_96d3:
	jsr $8da2                    ; 96d3: 20 a2 8d
loc_96d6:
	jsr $98cf                    ; 96d6: 20 cf 98
loc_96d9:
	lda $01                      ; 96d9: a5 01
	and.b #$80                   ; 96db: 29 80
	.db $f0, $02                 ; 96dd: f0 02
loc_96df:
	clc                          ; 96df: 18
	rts                          ; 96e0: 60

; --- Block at $96e1-$96e1 ---
loc_96e1:
	jmp $965f                    ; 96e1: 4c 5f 96

; --- Block at $96e4-$9722 ---
loc_96e4:
	jsr $8749                    ; 96e4: 20 49 87
loc_96e7:
	rep #$20                     ; 96e7: c2 20
	lda $7006aa                  ; 96e9: af aa 06 70
	sta $a042                    ; 96ed: 8d 42 a0
	sta $a04a                    ; 96f0: 8d 4a a0
	lda $700eaa                  ; 96f3: af aa 0e 70
	sta $a002                    ; 96f7: 8d 02 a0
	sta $a00a                    ; 96fa: 8d 0a a0
	lda $7016aa                  ; 96fd: af aa 16 70
	sta $a0c2                    ; 9701: 8d c2 a0
	sta $a0ca                    ; 9704: 8d ca a0
	lda $701eaa                  ; 9707: af aa 1e 70
	sta $a082                    ; 970b: 8d 82 a0
	sta $a08a                    ; 970e: 8d 8a a0
	sep #$20                     ; 9711: e2 20
	tdc                          ; 9713: 7b
	jsr $9a39                    ; 9714: 20 39 9a
loc_9717:
	jsr $9a39                    ; 9717: 20 39 9a
loc_971a:
	jsr $9a39                    ; 971a: 20 39 9a
loc_971d:
	jsr $9a39                    ; 971d: 20 39 9a
loc_9720:
	ldx.b #$00                   ; 9720: a2 00
	rti                          ; 9722: 40

; --- Block at $973c-$9741 ---
loc_973c:
	phy                          ; 973c: 5a
	sta $73                      ; 973d: 85 73
	stx $74                      ; 973f: 86 74

; --- Block at $9741-$975b ---
loc_9741:
	phb                          ; 9741: 8b
	lda.w #$487e                 ; 9742: a9 7e 48
	plb                          ; 9745: ab
	jsr $8bea                    ; 9746: 20 ea 8b
loc_9749:
	jsr $8bea                    ; 9749: 20 ea 8b
loc_974c:
	ldx $73                      ; 974c: a6 73
	lda $1d                      ; 974e: a5 1d
	jsr $81bd                    ; 9750: 20 bd 81
loc_9753:
	cmp.w #$d0ff                 ; 9753: c9 ff d0
	cop #$a9                     ; 9756: 02 a9
	.db $80, $99                 ; 9758: 80 99
	asl                          ; 975a: 0a
	brk #$eb                     ; 975b: 00 eb

; --- Block at $9780-$9781 ---
loc_9780:
	php                          ; 9780: 08
	brk #$ab                     ; 9781: 00 ab

; --- Block at $9785-$97a1 ---
loc_9785:
	dec                          ; 9785: 3a
	.db $30, $19                 ; 9786: 30 19
loc_9788:
	asl                          ; 9788: 0a
	asl                          ; 9789: 0a
	asl                          ; 978a: 0a
	sta $46                      ; 978b: 85 46
	stz $45                      ; 978d: 64 45
	phb                          ; 978f: 8b
	rep #$20                     ; 9790: c2 20
	ldx $45                      ; 9792: a6 45
	ldy.b #$00                   ; 9794: a0 00
	.db $10, $a9                 ; 9796: 10 a9
loc_9798:
	sbc.l $005407,x              ; 9798: ff 07 54 00
	.db $70, $e2                 ; 979c: 70 e2
loc_979e:
	jsr $60ab                    ; 979e: 20 ab 60

; --- Block at $97a1-$97a8 ---
loc_97a1:
	phb                          ; 97a1: 8b
	rep #$20                     ; 97a2: c2 20
	ldx.b #$10                   ; 97a4: a2 10
	lda [$a0]                    ; 97a6: a7 a0
	brk #$15                     ; 97a8: 00 15

; --- Block at $97d9-$98ad ---
loc_97d9:
	jsr $9484                    ; 97d9: 20 84 94
loc_97dc:
	jsr $94a2                    ; 97dc: 20 a2 94
loc_97df:
	jsr $8d2f                    ; 97df: 20 2f 8d
loc_97e2:
	jsr $9417                    ; 97e2: 20 17 94
loc_97e5:
	jsr $8d6c                    ; 97e5: 20 6c 8d
loc_97e8:
	jsr $8470                    ; 97e8: 20 70 84
loc_97eb:
	jsr $9264                    ; 97eb: 20 64 92
loc_97ee:
	ldx.b #$e4                   ; 97ee: a2 e4
	tcs                          ; 97f0: 1b
	cpx $17fe                    ; 97f1: ec fe 17
	.db $d0, $05                 ; 97f4: d0 05
loc_97f6:
	jsr $8897                    ; 97f6: 20 97 88
loc_97f9:
	.db $80, $12                 ; 97f9: 80 12
loc_97fb:
	jsr $8470                    ; 97fb: 20 70 84
loc_97fe:
	ldy.b #$1e                   ; 97fe: a0 1e
	cld                          ; 9800: d8
	jsr $80d9                    ; 9801: 20 d9 80
loc_9804:
	ldx.b #$94                   ; 9804: a2 94
	ora $a0,s                    ; 9806: 03 a0
	and [$dc]                    ; 9808: 27 dc
	jsr $82cd                    ; 980a: 20 cd 82
loc_980d:
	jsr $824f                    ; 980d: 20 4f 82
loc_9810:
	jsr $8488                    ; 9810: 20 88 84
loc_9813:
	ldy.b #$fc                   ; 9813: a0 fc
	stp                          ; 9815: db
	jsr $80d9                    ; 9816: 20 d9 80
loc_9819:
	ldy.b #$f8                   ; 9819: a0 f8
	stp                          ; 981b: db
	jsr $80d9                    ; 981c: 20 d9 80
loc_981f:
	lda $1b47                    ; 981f: ad 47 1b
	.db $f0, $08                 ; 9822: f0 08
loc_9824:
	ldy.b #$49                   ; 9824: a0 49
	jml [$0120]                  ; 9826: dc 20 01
	sta $80,s                    ; 9829: 83 80
	asl $a0                      ; 982b: 06 a0
	tsb $dc                      ; 982d: 04 dc
	jsr $8301                    ; 982f: 20 01 83
loc_9832:
	ldy.b #$13                   ; 9832: a0 13
	jml [$0120]                  ; 9834: dc 20 01
	sta $ad,s                    ; 9837: 83 ad
	ldy $16                      ; 9839: a4 16
	ldx $16a5                    ; 983b: ae a5 16
	ldy.b #$2e                   ; 983e: a0 2e
	wai                          ; 9840: cb
	jsr $973c                    ; 9841: 20 3c 97
loc_9844:
	ldy.b #$1e                   ; 9844: a0 1e
	jml [$0120]                  ; 9846: dc 20 01
	sta $20,s                    ; 9849: 83 20
	ldx.b #$84                   ; 984b: a2 84
	ldy.b #$00                   ; 984d: a0 00
	jml [$d920]                  ; 984f: dc 20 d9
	.db $80, $a0                 ; 9852: 80 a0
	and ($db)                    ; 9854: 32 db
	ldx.b #$78                   ; 9856: a2 78
	asl $20                      ; 9858: 06 20
	cmp $a082                    ; 985a: cd 82 a0
	bit $ad06                    ; 985d: 2c 06 ad
	ldx.b #$16                   ; 9860: a2 16
	ldx $16a0                    ; 9862: ae a0 16
	jsr $8fa8                    ; 9865: 20 a8 8f
loc_9868:
	jsr $9417                    ; 9868: 20 17 94
loc_986b:
	jsr $8749                    ; 986b: 20 49 87
loc_986e:
	jsr $80b2                    ; 986e: 20 b2 80
loc_9871:
	jsr $946a                    ; 9871: 20 6a 94
loc_9874:
	stz $1b46                    ; 9874: 9c 46 1b
	lda $1b46                    ; 9877: ad 46 1b
	.db $f0, $04                 ; 987a: f0 04
loc_987c:
	lda.b #$40                   ; 987c: a9 40
	.db $80, $02                 ; 987e: 80 02
loc_9880:
	lda.b #$30                   ; 9880: a9 30
loc_9882:
	sta $46                      ; 9882: 85 46
	lda.b #$b8                   ; 9884: a9 b8
	sta $45                      ; 9886: 85 45
	jsr $8281                    ; 9888: 20 81 82
loc_988b:
	jsr $824c                    ; 988b: 20 4c 82
loc_988e:
	jsr $82c0                    ; 988e: 20 c0 82
loc_9891:
	lda $01                      ; 9891: a5 01
	and.b #$0c                   ; 9893: 29 0c
	.db $f0, $09                 ; 9895: f0 09
loc_9897:
	lda $1b46                    ; 9897: ad 46 1b
	inc                          ; 989a: 1a
	and.b #$01                   ; 989b: 29 01
	sta $1b46                    ; 989d: 8d 46 1b
loc_98a0:
	lda $00                      ; 98a0: a5 00
	and.b #$80                   ; 98a2: 29 80
	.db $f0, $08                 ; 98a4: f0 08
loc_98a6:
	sec                          ; 98a6: 38
	lda $1b46                    ; 98a7: ad 46 1b
	.db $f0, $01                 ; 98aa: f0 01
loc_98ac:
	clc                          ; 98ac: 18
loc_98ad:
	rts                          ; 98ad: 60

; --- Block at $982c-$983b ---
loc_982c:
	ldy.b #$04                   ; 982c: a0 04
	jml [$0120]                  ; 982e: dc 20 01
	sta $a0,s                    ; 9831: 83 a0
	ora ($dc,s),y                ; 9833: 13 dc
	jsr $8301                    ; 9835: 20 01 83
loc_9838:
	lda $16a4                    ; 9838: ad a4 16

; --- Block at $98ae-$98b5 ---
loc_98ae:
	lda $01                      ; 98ae: a5 01
	and.b #$80                   ; 98b0: 29 80
	.db $f0, $02                 ; 98b2: f0 02
loc_98b4:
	clc                          ; 98b4: 18
	rts                          ; 98b5: 60

; --- Block at $98b6-$98b6 ---
loc_98b6:
	jmp $9877                    ; 98b6: 4c 77 98

; --- Block at $98b9-$98cc ---
loc_98b9:
	rep #$20                     ; 98b9: c2 20
	ldx.b #$28                   ; 98bb: a2 28
	inc $60a0,x                  ; 98bd: fe a0 60
	lda ($a9,x)                  ; 98c0: a1 a9
	sta $7e5400,x                ; 98c2: 9f 00 54 7e
	ror $20e2,x                  ; 98c6: 7e e2 20
	jsr $818a                    ; 98c9: 20 8a 81
loc_98cc:
	jmp $80b2                    ; 98cc: 4c b2 80

; --- Block at $98cf-$9909 ---
loc_98cf:
	lda.b #$30                   ; 98cf: a9 30
	sta $c1                      ; 98d1: 85 c1
	jsr $98b9                    ; 98d3: 20 b9 98
loc_98d6:
	jsr $8d6c                    ; 98d6: 20 6c 8d
loc_98d9:
	tdc                          ; 98d9: 7b
	sta $1d                      ; 98da: 85 1d
	tdc                          ; 98dc: 7b
	sta $1e                      ; 98dd: 85 1e
	lda $1a3c                    ; 98df: ad 3c 1a
	asl                          ; 98e2: 0a
	jsr $87b4                    ; 98e3: 20 b4 87
loc_98e6:
	rep #$20                     ; 98e6: c2 20
	lda $01990a,x                ; 98e8: bf 0a 99 01
	sta $1f                      ; 98ec: 85 1f
	sep #$20                     ; 98ee: e2 20
	lda.b #$05                   ; 98f0: a9 05
	sta $5a                      ; 98f2: 85 5a
	jsr $906a                    ; 98f4: 20 6a 90
loc_98f7:
	rep #$20                     ; 98f7: c2 20
	lda.w #$0018                 ; 98f9: a9 18 00
	clc                          ; 98fc: 18
	adc $1f                      ; 98fd: 65 1f
	sta $1f                      ; 98ff: 85 1f
	sep #$20                     ; 9901: e2 20
	inc $1d                      ; 9903: e6 1d
	dec $5a                      ; 9905: c6 5a
	.db $d0, $eb                 ; 9907: d0 eb
loc_9909:
	rts                          ; 9909: 60

; --- Block at $9914-$991d ---
loc_9914:
	jsr $9484                    ; 9914: 20 84 94
loc_9917:
	jsr $9b1d                    ; 9917: 20 1d 9b
loc_991a:
	jsr $d39b                    ; 991a: 20 9b d3

; --- Block at $991d-$992a ---
loc_991d:
	rep #$20                     ; 991d: c2 20
	lda.w #$1be4                 ; 991f: a9 e4 1b
	sta $17fe                    ; 9922: 8d fe 17
	sep #$20                     ; 9925: e2 20
	stz $17fb                    ; 9927: 9c fb 17

; --- Block at $992a-$9948 ---
loc_992a:
	rep #$20                     ; 992a: c2 20
	lda.w #$0100                 ; 992c: a9 00 01
	sta $1a37                    ; 992f: 8d 37 1a
	sta $16ae                    ; 9932: 8d ae 16
	lda.w #$0002                 ; 9935: a9 02 00
	sta $16b0                    ; 9938: 8d b0 16
	sta $1a39                    ; 993b: 8d 39 1a
	sep #$20                     ; 993e: e2 20
	lda.b #$00                   ; 9940: a9 00
	sta $1a3b                    ; 9942: 8d 3b 1a
	sta $16b2                    ; 9945: 8d b2 16
	rts                          ; 9948: 60

; --- Block at $9949-$994e ---
loc_9949:
	lda $1b47                    ; 9949: ad 47 1b
	.db $d0, $05                 ; 994c: d0 05

; --- Block at $994e-$9954 ---
loc_994e:
	lda $1a3c                    ; 994e: ad 3c 1a
	.db $d0, $02                 ; 9951: d0 02
loc_9953:
	sec                          ; 9953: 38
	rts                          ; 9954: 60

; --- Block at $9955-$9956 ---
loc_9955:
	dec                          ; 9955: 3a

; --- Block at $9956-$9972 ---
loc_9956:
	sta $51                      ; 9956: 85 51
	asl                          ; 9958: 0a
	asl                          ; 9959: 0a
	asl                          ; 995a: 0a
	sta $46                      ; 995b: 85 46
	stz $45                      ; 995d: 64 45
	ldx $45                      ; 995f: a6 45
	rep #$20                     ; 9961: c2 20
	lda $7007fe,x                ; 9963: bf fe 07 70
	tay                          ; 9967: a8
	sep #$20                     ; 9968: e2 20
	cpy.b #$e4                   ; 996a: c0 e4
	tcs                          ; 996c: 1b
	.db $f0, $04                 ; 996d: f0 04
loc_996f:
	sep #$20                     ; 996f: e2 20
	clc                          ; 9971: 18
	rts                          ; 9972: 60

; --- Block at $9973-$9987 ---
loc_9973:
	lda $51                      ; 9973: a5 51
	inc                          ; 9975: 1a
	jsr $cc34                    ; 9976: 20 34 cc
loc_9979:
	rep #$20                     ; 9979: c2 20
	txa                          ; 997b: 8a
	ldx $45                      ; 997c: a6 45
	cmp $7007fc,x                ; 997e: df fc 07 70
	.db $d0, $eb                 ; 9982: d0 eb
loc_9984:
	sep #$20                     ; 9984: e2 20
	sec                          ; 9986: 38
	rts                          ; 9987: 60

; --- Block at $9988-$99ac ---
loc_9988:
	jsr $97a1                    ; 9988: 20 a1 97
loc_998b:
	stz $48                      ; 998b: 64 48
	stz $49                      ; 998d: 64 49
	lda $48                      ; 998f: a5 48
	jsr $9956                    ; 9991: 20 56 99
loc_9994:
	.db $b0, $1e                 ; 9994: b0 1e
loc_9996:
	rep #$20                     ; 9996: c2 20
	phb                          ; 9998: 8b
	lda $48                      ; 9999: a5 48
	xba                          ; 999b: eb
	asl                          ; 999c: 0a
	asl                          ; 999d: 0a
	asl                          ; 999e: 0a
	tay                          ; 999f: a8
	phy                          ; 99a0: 5a
	ldx.b #$00                   ; 99a1: a2 00
	.db $10, $a9                 ; 99a3: 10 a9
loc_99a5:
	sbc $705407,x                ; 99a5: ff 07 54 70
	ror $a9fa,x                  ; 99a9: 7e fa a9
	brk #$20                     ; 99ac: 00 20

; --- Block at $99b4-$99bd ---
loc_99b4:
	lda $48                      ; 99b4: a5 48
	inc                          ; 99b6: 1a
	sta $48                      ; 99b7: 85 48
	cmp.b #$04                   ; 99b9: c9 04
	.db $d0, $d2                 ; 99bb: d0 d2
loc_99bd:
	rts                          ; 99bd: 60

; --- Block at $99be-$99c9 ---
loc_99be:
	lda $1b9a                    ; 99be: ad 9a 1b
	.db $f0, $09                 ; 99c1: f0 09
loc_99c3:
	jsr $9a24                    ; 99c3: 20 24 9a
loc_99c6:
	jsr $94aa                    ; 99c6: 20 aa 94
loc_99c9:
	jmp $946a                    ; 99c9: 4c 6a 94

; --- Block at $99cc-$99e1 ---
loc_99cc:
	inc $1b9a                    ; 99cc: ee 9a 1b
	tdc                          ; 99cf: 7b
	sta $88                      ; 99d0: 85 88
	ldx.b #$e8                   ; 99d2: a2 e8
	sbc $869386,x                ; 99d4: ff 86 93 86
	sta $9f86,y                  ; 99d8: 99 86 9f
	lda.b #$03                   ; 99db: a9 03
	sta $4e                      ; 99dd: 85 4e
	ldy.b #$30                   ; 99df: a0 30
	brk #$20                     ; 99e1: 00 20

; --- Block at $9a24-$9a38 ---
loc_9a24:
	lda.b #$b8                   ; 9a24: a9 b8
	sta $93                      ; 9a26: 85 93
	lda.b #$88                   ; 9a28: a9 88
	sta $99                      ; 9a2a: 85 99
	lda.b #$58                   ; 9a2c: a9 58
	sta $9f                      ; 9a2e: 85 9f
	lda.b #$ff                   ; 9a30: a9 ff
	sta $94                      ; 9a32: 85 94
	sta $9a                      ; 9a34: 85 9a
	sta $a0                      ; 9a36: 85 a0
	rts                          ; 9a38: 60

; --- Block at $9a39-$9a5d ---
loc_9a39:
	pha                          ; 9a39: 48
	sta $4b                      ; 9a3a: 85 4b
	asl                          ; 9a3c: 0a
	sta $48                      ; 9a3d: 85 48
	stz $49                      ; 9a3f: 64 49
	ldx.b #$e7                   ; 9a41: a2 e7
	txs                          ; 9a43: 9a
	lda $4b                      ; 9a44: a5 4b
	jsr $834b                    ; 9a46: 20 4b 83
loc_9a49:
	lda $4b                      ; 9a49: a5 4b
	.db $d0, $05                 ; 9a4b: d0 05
loc_9a4d:
	ldy.b #$c0                   ; 9a4d: a0 c0
	ldx $84                      ; 9a4f: a6 84
	and.b #$a0                   ; 9a51: 29 a0
	dec $db,x                    ; 9a53: d6 db
	jsr $80d9                    ; 9a55: 20 d9 80
loc_9a58:
	ldy.b #$69                   ; 9a58: a0 69
	cld                          ; 9a5a: d8
	ldx.b #$82                   ; 9a5b: a2 82
	brk #$20                     ; 9a5d: 00 20

; --- Block at $9a52-$9a55 ---
loc_9a52:
	ldy.b #$d6                   ; 9a52: a0 d6
	stp                          ; 9a54: db

; --- Block at $9aca-$9ad4 ---
loc_9aca:
	ora [$a0]                    ; 9aca: 07 a0
	and $dc                      ; 9acc: 25 dc
	jsr $8301                    ; 9ace: 20 01 83
loc_9ad1:
	plb                          ; 9ad1: ab
	pla                          ; 9ad2: 68
	inc                          ; 9ad3: 1a
	rts                          ; 9ad4: 60

; --- Block at $9aef-$9b18 ---
loc_9aef:
	rep #$20                     ; 9aef: c2 20
	lda.w #$1be4                 ; 9af1: a9 e4 1b
	cmp $7007fe                  ; 9af4: cf fe 07 70
	.db $f0, $1f                 ; 9af8: f0 1f
loc_9afa:
	cmp $700ffe                  ; 9afa: cf fe 0f 70
	.db $f0, $19                 ; 9afe: f0 19
loc_9b00:
	cmp $7017fe                  ; 9b00: cf fe 17 70
	.db $f0, $13                 ; 9b04: f0 13
loc_9b06:
	cmp $701ffe                  ; 9b06: cf fe 1f 70
	.db $f0, $0d                 ; 9b0a: f0 0d
loc_9b0c:
	sep #$20                     ; 9b0c: e2 20
	jsr $9b1d                    ; 9b0e: 20 1d 9b
loc_9b11:
	jsr $991d                    ; 9b11: 20 1d 99
loc_9b14:
	jsr $95d2                    ; 9b14: 20 d2 95
loc_9b17:
	sec                          ; 9b17: 38
	rts                          ; 9b18: 60

; --- Block at $9b15-$9b17 ---
loc_9b15:
	cmp ($95)                    ; 9b15: d2 95

; --- Block at $9b19-$9b1c ---
loc_9b19:
	sep #$20                     ; 9b19: e2 20
	clc                          ; 9b1b: 18
	rts                          ; 9b1c: 60

; --- Block at $9b1d-$9b21 ---
loc_9b1d:
	ldx.b #$40                   ; 9b1d: a2 40
	.db $10, $a9                 ; 9b1f: 10 a9
loc_9b21:
	brk #$9d                     ; 9b21: 00 9d

; --- Block at $9b2f-$9b3d ---
loc_9b2f:
	tax                          ; 9b2f: aa
	asl $20,x                    ; 9b30: 16 20
	eor.b #$87                   ; 9b32: 49 87
	rep #$20                     ; 9b34: c2 20
	lda.w #$0053                 ; 9b36: a9 53 00
loc_9b39:
	ldx.b #$10                   ; 9b39: a2 10
	lda [$a0]                    ; 9b3b: a7 a0
	brk #$15                     ; 9b3d: 00 15

; --- Block at $9b67-$9bb3 ---
loc_9b67:
	lda.l $001b49                ; 9b67: af 49 1b 00
	.db $d0, $25                 ; 9b6b: d0 25
loc_9b6d:
	jsr $8c7f                    ; 9b6d: 20 7f 8c
loc_9b70:
	jsr $9264                    ; 9b70: 20 64 92
loc_9b73:
	jsr $8488                    ; 9b73: 20 88 84
loc_9b76:
	ldy.b #$0e                   ; 9b76: a0 0e
	cld                          ; 9b78: d8
	jsr $80d9                    ; 9b79: 20 d9 80
loc_9b7c:
	ldy.b #$12                   ; 9b7c: a0 12
	cld                          ; 9b7e: d8
	jsr $80d9                    ; 9b7f: 20 d9 80
loc_9b82:
	ldy.b #$40                   ; 9b82: a0 40
	.db $10, $a9                 ; 9b84: 10 a9
loc_9b86:
	.db $30, $8d                 ; 9b86: 30 8d
loc_9b88:
	cmp ($01,x)                  ; 9b88: c1 01
	lda $1b18                    ; 9b8a: ad 18 1b
	jsr $8e70                    ; 9b8d: 20 70 8e
loc_9b90:
	.db $80, $06                 ; 9b90: 80 06
loc_9b92:
	ldy.b #$b2                   ; 9b92: a0 b2
	jml [$d920]                  ; 9b94: dc 20 d9
	.db $80, $a0                 ; 9b97: 80 a0
	inc                          ; 9b99: 1a
	cld                          ; 9b9a: d8
	jsr $80d9                    ; 9b9b: 20 d9 80
loc_9b9e:
	jsr $8470                    ; 9b9e: 20 70 84
loc_9ba1:
	ldy.b #$16                   ; 9ba1: a0 16
	cld                          ; 9ba3: d8
	jsr $80d9                    ; 9ba4: 20 d9 80
loc_9ba7:
	jsr $9e40                    ; 9ba7: 20 40 9e
loc_9baa:
	rep #$20                     ; 9baa: c2 20
	lda.w #$0800                 ; 9bac: a9 00 08
	ldx.b #$00                   ; 9baf: a2 00
	dec $a0,x                    ; 9bb1: d6 a0
	brk #$b6                     ; 9bb3: 00 b6

; --- Block at $9b98-$9b9a ---
loc_9b98:
	ldy.b #$1a                   ; 9b98: a0 1a

; --- Block at $9e40-$9e43 ---
loc_9e40:
	ldy.b #$ce                   ; 9e40: a0 ce
	cld                          ; 9e42: d8
	jmp $8301                    ; 9e43: 4c 01 83

; --- Block at $9fa5-$9fb7 ---
loc_9fa5:
	jsr $a79d                    ; 9fa5: 20 9d a7
loc_9fa8:
	ldx.b #$00                   ; 9fa8: a2 00
	pla                          ; 9faa: 68
	stx $1d                      ; 9fab: 86 1d
	ldx.b #$00                   ; 9fad: a2 00
	ldx $86                      ; 9faf: a6 86
	ora $857ea9,x                ; 9fb1: 1f a9 7e 85
	and ($a2,x)                  ; 9fb5: 21 a2
	rti                          ; 9fb7: 40

; --- Block at $a048-$a05a ---
loc_a048:
	ora.b #$90                   ; a048: 09 90
	eor $ad                      ; a04a: 45 ad
	inc                          ; a04c: 1a
	tcs                          ; a04d: 1b
	cmp.b #$0e                   ; a04e: c9 0e
	.db $f0, $42                 ; a050: f0 42
loc_a052:
	inc                          ; a052: 1a
	sta $1b1a                    ; a053: 8d 1a 1b
	rep #$20                     ; a056: c2 20
	ldy.b #$08                   ; a058: a0 08
	brk #$a5                     ; a05a: 00 a5

; --- Block at $a094-$a0d6 ---
loc_a094:
	lda $00                      ; a094: a5 00
	and.b #$80                   ; a096: 29 80
	.db $f0, $21                 ; a098: f0 21
loc_a09a:
	lda $1b19                    ; a09a: ad 19 1b
	.db $d0, $05                 ; a09d: d0 05
loc_a09f:
	jsr $a29b                    ; a09f: 20 9b a2
loc_a0a2:
	.db $80, $33                 ; a0a2: 80 33
loc_a0a4:
	jsr $a2e1                    ; a0a4: 20 e1 a2
loc_a0a7:
	jsr $84a2                    ; a0a7: 20 a2 84
loc_a0aa:
	jsr $a14a                    ; a0aa: 20 4a a1
loc_a0ad:
	stz $1b19                    ; a0ad: 9c 19 1b
	jsr $a2b1                    ; a0b0: 20 b1 a2
loc_a0b3:
	jsr $9433                    ; a0b3: 20 33 94
loc_a0b6:
	jsr $824f                    ; a0b6: 20 4f 82
loc_a0b9:
	.db $80, $1c                 ; a0b9: 80 1c
loc_a0bb:
	lda $01                      ; a0bb: a5 01
	and.b #$80                   ; a0bd: 29 80
	.db $f0, $16                 ; a0bf: f0 16
loc_a0c1:
	lda $1b19                    ; a0c1: ad 19 1b
	.db $f0, $08                 ; a0c4: f0 08
loc_a0c6:
	stz $1b19                    ; a0c6: 9c 19 1b
	jsr $a2b1                    ; a0c9: 20 b1 a2
loc_a0cc:
	.db $80, $09                 ; a0cc: 80 09
loc_a0ce:
	jsr $a2b1                    ; a0ce: 20 b1 a2
loc_a0d1:
	jsr $9264                    ; a0d1: 20 64 92
loc_a0d4:
	stz $86                      ; a0d4: 64 86
	rts                          ; a0d6: 60

; --- Block at $a0d7-$a0da ---
loc_a0d7:
	jsr $a0dd                    ; a0d7: 20 dd a0
loc_a0da:
	jmp $9fa5                    ; a0da: 4c a5 9f

; --- Block at $a0dd-$a133 ---
loc_a0dd:
	phy                          ; a0dd: 5a
	lda.b #$20                   ; a0de: a9 20
	sta $3f                      ; a0e0: 85 3f
	lda $1b23                    ; a0e2: ad 23 1b
	asl                          ; a0e5: 0a
	asl                          ; a0e6: 0a
	asl                          ; a0e7: 0a
	asl                          ; a0e8: 0a
	adc.b #$36                   ; a0e9: 69 36
	xba                          ; a0eb: eb
	lda $1b22                    ; a0ec: ad 22 1b
	.db $f0, $02                 ; a0ef: f0 02
loc_a0f1:
	lda.b #$6c                   ; a0f1: a9 6c
loc_a0f3:
	clc                          ; a0f3: 18
	adc.b #$04                   ; a0f4: 69 04
	tax                          ; a0f6: aa
	ldy.b #$00                   ; a0f7: a0 00
	ora $20,s                    ; a0f9: 03 20
	stx $82                      ; a0fb: 86 82
	lda $1b19                    ; a0fd: ad 19 1b
	.db $f0, $30                 ; a100: f0 30
loc_a102:
	lda $1b25                    ; a102: ad 25 1b
	sec                          ; a105: 38
	sbc $1b1a                    ; a106: ed 1a 1b
	cmp.b #$fc                   ; a109: c9 fc
	.db $b0, $08                 ; a10b: b0 08
loc_a10d:
	cmp.b #$00                   ; a10d: c9 00
	.db $30, $1e                 ; a10f: 30 1e
loc_a111:
	cmp.b #$0b                   ; a111: c9 0b
	.db $b0, $1a                 ; a113: b0 1a
loc_a115:
	asl                          ; a115: 0a
	asl                          ; a116: 0a
	asl                          ; a117: 0a
	asl                          ; a118: 0a
	adc.b #$36                   ; a119: 69 36
	xba                          ; a11b: eb
	lda $1b24                    ; a11c: ad 24 1b
	.db $f0, $02                 ; a11f: f0 02
loc_a121:
	lda.b #$70                   ; a121: a9 70
loc_a123:
	clc                          ; a123: 18
	adc.b #$08                   ; a124: 69 08
	tax                          ; a126: aa
	ldy.b #$10                   ; a127: a0 10
	ora $20,s                    ; a129: 03 20
	stx $82                      ; a12b: 86 82
	.db $80, $03                 ; a12d: 80 03
loc_a12f:
	jsr $a2b4                    ; a12f: 20 b4 a2
loc_a132:
	ply                          ; a132: 7a
	rts                          ; a133: 60

; --- Block at $a134-$a16c ---
loc_a134:
	ldx.b #$28                   ; a134: a2 28
	sbc $a95a86,x                ; a136: ff 86 5a a9
	php                          ; a13a: 08
	sta $e1                      ; a13b: 85 e1
	.db $80, $1a                 ; a13d: 80 1a
	ldx.b #$40                   ; a13f: a2 40
	ora ($86,s),y                ; a141: 13 86
	phy                          ; a143: 5a
	lda.b #$7e                   ; a144: a9 7e
	sta $e1                      ; a146: 85 e1
	.db $80, $0f                 ; a148: 80 0f
loc_a14a:
	ldy.b #$e0                   ; a14a: a0 e0
	cld                          ; a14c: d8
	jsr $80d9                    ; a14d: 20 d9 80
loc_a150:
	ldx.b #$40                   ; a150: a2 40
	trb $86                      ; a152: 14 86
	phy                          ; a154: 5a
	lda.b #$30                   ; a155: a9 30
	sta $e1                      ; a157: 85 e1
loc_a159:
	stz $5d                      ; a159: 64 5d
	stz $5e                      ; a15b: 64 5e
	lda ($5a)                    ; a15d: b2 5a
	.db $f0, $44                 ; a15f: f0 44
loc_a161:
	cmp.b #$ff                   ; a161: c9 ff
	.db $d0, $05                 ; a163: d0 05
loc_a165:
	jsr $a7f2                    ; a165: 20 f2 a7
loc_a168:
	.db $80, $3b                 ; a168: 80 3b
loc_a16a:
	ldy.b #$01                   ; a16a: a0 01
	brk #$b1                     ; a16c: 00 b1

; --- Block at $a1a5-$a1b5 ---
loc_a1a5:
	rep #$20                     ; a1a5: c2 20
	inc $5a                      ; a1a7: e6 5a
	inc $5a                      ; a1a9: e6 5a
	sep #$20                     ; a1ab: e2 20
	inc $5d                      ; a1ad: e6 5d
	lda $5d                      ; a1af: a5 5d
	cmp $e1                      ; a1b1: c5 e1
	.db $d0, $a8                 ; a1b3: d0 a8
loc_a1b5:
	rts                          ; a1b5: 60

; --- Block at $a235-$a275 ---
loc_a235:
	pha                          ; a235: 48
	pha                          ; a236: 48
	lda $1b1f                    ; a237: ad 1f 1b
	.db $f0, $08                 ; a23a: f0 08
loc_a23c:
	pla                          ; a23c: 68
	jsr $bf7d                    ; a23d: 20 7d bf
loc_a240:
	.db $90, $34                 ; a240: 90 34
loc_a242:
	.db $80, $2c                 ; a242: 80 2c
loc_a244:
	pla                          ; a244: 68
	cmp.b #$e2                   ; a245: c9 e2
	.db $f0, $04                 ; a247: f0 04
loc_a249:
	cmp.b #$e3                   ; a249: c9 e3
	.db $d0, $0f                 ; a24b: d0 0f
loc_a24d:
	pha                          ; a24d: 48
	lda $1bc9                    ; a24e: ad c9 1b
	.db $f0, $08                 ; a251: f0 08
loc_a253:
	pla                          ; a253: 68
	lda $1a02                    ; a254: ad 02 1a
	.db $f0, $29                 ; a257: f0 29
loc_a259:
	.db $80, $15                 ; a259: 80 15
loc_a25b:
	pla                          ; a25b: 68
loc_a25c:
	cmp.b #$19                   ; a25c: c9 19
	.db $f0, $16                 ; a25e: f0 16
loc_a260:
	cmp.b #$c8                   ; a260: c9 c8
	.db $f0, $12                 ; a262: f0 12
loc_a264:
	cmp $1b1d                    ; a264: cd 1d 1b
	.db $90, $0d                 ; a267: 90 0d
loc_a269:
	cmp $1b1e                    ; a269: cd 1e 1b
	.db $f0, $02                 ; a26c: f0 02
loc_a26e:
	.db $b0, $06                 ; a26e: b0 06
loc_a270:
	lda $34                      ; a270: a5 34
	sta $db                      ; a272: 85 db
	pla                          ; a274: 68
	rts                          ; a275: 60

; --- Block at $a276-$a289 ---
loc_a276:
	cmp.b #$19                   ; a276: c9 19
	.db $f0, $10                 ; a278: f0 10
loc_a27a:
	cmp.b #$c8                   ; a27a: c9 c8
	.db $f0, $0c                 ; a27c: f0 0c
loc_a27e:
	cmp.b #$ec                   ; a27e: c9 ec
	.db $b0, $08                 ; a280: b0 08
loc_a282:
	lda.b #$04                   ; a282: a9 04
	ora $34                      ; a284: 05 34
	sta $db                      ; a286: 85 db
	pla                          ; a288: 68
	rts                          ; a289: 60

; --- Block at $a28a-$a29a ---
loc_a28a:
	cmp.b #$fe                   ; a28a: c9 fe
	.db $f0, $f4                 ; a28c: f0 f4
loc_a28e:
	lda $1bc6                    ; a28e: ad c6 1b
	.db $f0, $ef                 ; a291: f0 ef
loc_a293:
	lda.b #$08                   ; a293: a9 08
	ora $34                      ; a295: 05 34
	sta $db                      ; a297: 85 db
	pla                          ; a299: 68
	rts                          ; a29a: 60

; --- Block at $a29b-$a2b0 ---
loc_a29b:
	lda $1b1a                    ; a29b: ad 1a 1b
	clc                          ; a29e: 18
	adc $1b23                    ; a29f: 6d 23 1b
	sta $1b25                    ; a2a2: 8d 25 1b
	lda $1b22                    ; a2a5: ad 22 1b
	sta $1b24                    ; a2a8: 8d 24 1b
	lda.b #$01                   ; a2ab: a9 01
	sta $1b19                    ; a2ad: 8d 19 1b
	rts                          ; a2b0: 60

; --- Block at $a2b1-$a2b4 ---
loc_a2b1:
	stz $1b19                    ; a2b1: 9c 19 1b

; --- Block at $a2b4-$a2c9 ---
loc_a2b4:
	ldy.b #$10                   ; a2b4: a0 10
	ora $a2,s                    ; a2b6: 03 a2
	tsb $00                      ; a2b8: 04 00
	lda.b #$ff                   ; a2ba: a9 ff
	sta.w $0000,y                ; a2bc: 99 00 00
	iny                          ; a2bf: c8
	lda.b #$f0                   ; a2c0: a9 f0
	sta.w $0000,y                ; a2c2: 99 00 00
	iny                          ; a2c5: c8
	dex                          ; a2c6: ca
	.db $d0, $f1                 ; a2c7: d0 f1
loc_a2c9:
	rts                          ; a2c9: 60

; --- Block at $a2ca-$a30f ---
loc_a2ca:
	ldy.b #$00                   ; a2ca: a0 00
	ora $80,s                    ; a2cc: 03 80
	inx                          ; a2ce: e8
	jsr $84ba                    ; a2cf: 20 ba 84
loc_a2d2:
	ldy.b #$e8                   ; a2d2: a0 e8
	cld                          ; a2d4: d8
	jsr $80d9                    ; a2d5: 20 d9 80
loc_a2d8:
	ldy.b #$3a                   ; a2d8: a0 3a
	cmp $0120,y                  ; a2da: d9 20 01
	sta $4c,s                    ; a2dd: 83 4c
	eor $ada3                    ; a2df: 4d a3 ad
	and $1b,s                    ; a2e2: 23 1b
	clc                          ; a2e4: 18
	adc $1b1a                    ; a2e5: 6d 1a 1b
	cmp $1b25                    ; a2e8: cd 25 1b
	.db $d0, $79                 ; a2eb: d0 79
loc_a2ed:
	lda $1b22                    ; a2ed: ad 22 1b
	cmp $1b24                    ; a2f0: cd 24 1b
	.db $d0, $71                 ; a2f3: d0 71
loc_a2f5:
	lda $1b25                    ; a2f5: ad 25 1b
	asl                          ; a2f8: 0a
	adc $1b24                    ; a2f9: 6d 24 1b
	asl                          ; a2fc: 0a
	sta $45                      ; a2fd: 85 45
	stz $46                      ; a2ff: 64 46
	ldx $45                      ; a301: a6 45
	lda $1441,x                  ; a303: bd 41 14
	.db $f0, $c7                 ; a306: f0 c7
loc_a308:
	lda $1440,x                  ; a308: bd 40 14
	cmp.b #$fe                   ; a30b: c9 fe
	.db $d0, $03                 ; a30d: d0 03
loc_a30f:
	jmp $a8fa                    ; a30f: 4c fa a8

; --- Block at $a2e1-$a2e4 ---
loc_a2e1:
	lda $1b23                    ; a2e1: ad 23 1b

; --- Block at $a312-$a330 ---
loc_a312:
	jsr $a235                    ; a312: 20 35 a2
loc_a315:
	lda $60                      ; a315: a5 60
	and.b #$08                   ; a317: 29 08
	.db $d0, $23                 ; a319: d0 23
loc_a31b:
	lda $1440,x                  ; a31b: bd 40 14
	sta $1b3b                    ; a31e: 8d 3b 1b
	stx $1b3c                    ; a321: 8e 3c 1b
	cmp.b #$ed                   ; a324: c9 ed
	.db $d0, $0b                 ; a326: d0 0b
loc_a328:
	dec $1441,x                  ; a328: de 41 14
	.db $d0, $03                 ; a32b: d0 03
loc_a32d:
	stz $1440,x                  ; a32d: 9e 40 14
loc_a330:
	jmp $cc88                    ; a330: 4c 88 cc

; --- Block at $a333-$a33b ---
loc_a333:
	cmp.b #$ce                   ; a333: c9 ce
	.db $90, $07                 ; a335: 90 07
loc_a337:
	cmp.b #$eb                   ; a337: c9 eb
	.db $b0, $03                 ; a339: b0 03
loc_a33b:
	jmp $a6de                    ; a33b: 4c de a6

; --- Block at $a33e-$a366 ---
loc_a33e:
	jsr $84ba                    ; a33e: 20 ba 84
loc_a341:
	ldy.b #$e8                   ; a341: a0 e8
	cld                          ; a343: d8
	jsr $80d9                    ; a344: 20 d9 80
loc_a347:
	ldy.b #$27                   ; a347: a0 27
	cmp $0120,y                  ; a349: d9 20 01
	sta $20,s                    ; a34c: 83 20
	rol $94                      ; a34e: 26 94
	jsr $8336                    ; a350: 20 36 83
loc_a353:
	jsr $a2b1                    ; a353: 20 b1 a2
loc_a356:
	jsr $84ba                    ; a356: 20 ba 84
loc_a359:
	ldy.b #$e4                   ; a359: a0 e4
	cld                          ; a35b: d8
	jsr $80d9                    ; a35c: 20 d9 80
loc_a35f:
	ldy.b #$0a                   ; a35f: a0 0a
	cmp $0120,y                  ; a361: d9 20 01
	sta $60,s                    ; a364: 83 60

; --- Block at $a366-$a3e2 ---
loc_a366:
	jsr $a2b1                    ; a366: 20 b1 a2
loc_a369:
	lda $1b23                    ; a369: ad 23 1b
	clc                          ; a36c: 18
	adc $1b1a                    ; a36d: 6d 1a 1b
	asl                          ; a370: 0a
	adc $1b22                    ; a371: 6d 22 1b
	asl                          ; a374: 0a
	sta $45                      ; a375: 85 45
	stz $46                      ; a377: 64 46
	ldy $45                      ; a379: a4 45
	lda $1b25                    ; a37b: ad 25 1b
	asl                          ; a37e: 0a
	adc $1b24                    ; a37f: 6d 24 1b
	asl                          ; a382: 0a
	sta $45                      ; a383: 85 45
	ldx $45                      ; a385: a6 45
	lda $1440,y                  ; a387: b9 40 14
	cmp.b #$ff                   ; a38a: c9 ff
	.db $d0, $24                 ; a38c: d0 24
loc_a38e:
	lda $1440,x                  ; a38e: bd 40 14
	.db $f0, $1f                 ; a391: f0 1f
loc_a393:
	cmp.b #$ed                   ; a393: c9 ed
	.db $f0, $11                 ; a395: f0 11
loc_a397:
	cmp.b #$19                   ; a397: c9 19
	.db $f0, $08                 ; a399: f0 08
loc_a39b:
	cmp.b #$c8                   ; a39b: c9 c8
	.db $f0, $04                 ; a39d: f0 04
loc_a39f:
	cmp.b #$ec                   ; a39f: c9 ec
	.db $90, $05                 ; a3a1: 90 05
loc_a3a3:
	jsr $8758                    ; a3a3: 20 58 87
loc_a3a6:
	.db $80, $2e                 ; a3a6: 80 2e
loc_a3a8:
	lda.b #$00                   ; a3a8: a9 00
	sta $1440,x                  ; a3aa: 9d 40 14
	sta $1441,x                  ; a3ad: 9d 41 14
	.db $80, $24                 ; a3b0: 80 24
loc_a3b2:
	lda $1440,x                  ; a3b2: bd 40 14
	cmp $1440,y                  ; a3b5: d9 40 14
	.db $f0, $29                 ; a3b8: f0 29
loc_a3ba:
	lda $1440,x                  ; a3ba: bd 40 14
	pha                          ; a3bd: 48
	lda $1441,x                  ; a3be: bd 41 14
	pha                          ; a3c1: 48
	lda $1440,y                  ; a3c2: b9 40 14
	sta $1440,x                  ; a3c5: 9d 40 14
	lda $1441,y                  ; a3c8: b9 41 14
	sta $1441,x                  ; a3cb: 9d 41 14
	pla                          ; a3ce: 68
	sta $1441,y                  ; a3cf: 99 41 14
	pla                          ; a3d2: 68
	sta $1440,y                  ; a3d3: 99 40 14
loc_a3d6:
	jsr $84a2                    ; a3d6: 20 a2 84
loc_a3d9:
	jsr $a14a                    ; a3d9: 20 4a a1
loc_a3dc:
	jsr $a2b1                    ; a3dc: 20 b1 a2
loc_a3df:
	jsr $84ba                    ; a3df: 20 ba 84
loc_a3e2:
	rts                          ; a3e2: 60

; --- Block at $a3e3-$a458 ---
loc_a3e3:
	lda $1441,y                  ; a3e3: b9 41 14
	clc                          ; a3e6: 18
	adc $1441,x                  ; a3e7: 7d 41 14
	cmp.b #$64                   ; a3ea: c9 64
	.db $b0, $cc                 ; a3ec: b0 cc
loc_a3ee:
	sta $1441,y                  ; a3ee: 99 41 14
	lda.b #$00                   ; a3f1: a9 00
	sta $1440,x                  ; a3f3: 9d 40 14
	sta $1441,x                  ; a3f6: 9d 41 14
	.db $80, $db                 ; a3f9: 80 db
	lda.b #$30                   ; a3fb: a9 30
	sta $3f                      ; a3fd: 85 3f
	jsr $94dd                    ; a3ff: 20 dd 94
loc_a402:
	jsr $818a                    ; a402: 20 8a 81
loc_a405:
	jsr $80b2                    ; a405: 20 b2 80
loc_a408:
	jsr $84ba                    ; a408: 20 ba 84
loc_a40b:
	ldy.b #$e8                   ; a40b: a0 e8
	cld                          ; a40d: d8
	jsr $80d9                    ; a40e: 20 d9 80
loc_a411:
	ldy.b #$1f                   ; a411: a0 1f
	cmp $0120,y                  ; a413: d9 20 01
	sta $ad,s                    ; a416: 83 ad
	jsl $07f01b                  ; a418: 22 1b f0 07
loc_a41c:
	lda.b #$05                   ; a41c: a9 05
	ldy.b #$4a                   ; a41e: a0 4a
	cmp $0580,y                  ; a420: d9 80 05
	lda.b #$00                   ; a423: a9 00
	ldy.b #$4e                   ; a425: a0 4e
	cmp $c18d,y                  ; a427: d9 8d c1
	tcs                          ; a42a: 1b
	jsr $80d9                    ; a42b: 20 d9 80
loc_a42e:
	stz $1bc3                    ; a42e: 9c c3 1b
	lda $1bc3                    ; a431: ad c3 1b
	jsr $9007                    ; a434: 20 07 90
loc_a437:
	txy                          ; a437: 9b
	lda $1bc1                    ; a438: ad c1 1b
	asl                          ; a43b: 0a
	jsr $87b4                    ; a43c: 20 b4 87
loc_a43f:
	rep #$20                     ; a43f: c2 20
	lda $1efd7d,x                ; a441: bf 7d fd 1e
	tax                          ; a445: aa
	sep #$20                     ; a446: e2 20
	jsr $a477                    ; a448: 20 77 a4
loc_a44b:
	inc $1bc1                    ; a44b: ee c1 1b
	inc $1bc3                    ; a44e: ee c3 1b
	lda $1bc3                    ; a451: ad c3 1b
	cmp.b #$05                   ; a454: c9 05
	.db $d0, $d9                 ; a456: d0 d9
loc_a458:
	rts                          ; a458: 60

; --- Block at $a459-$a473 ---
loc_a459:
	jsr $a3fb                    ; a459: 20 fb a3
loc_a45c:
	jsr $83e3                    ; a45c: 20 e3 83
loc_a45f:
	lda.b #$30                   ; a45f: a9 30
	sta $3f                      ; a461: 85 3f
	jsr $a519                    ; a463: 20 19 a5
loc_a466:
	lda.b #$20                   ; a466: a9 20
	sta $3f                      ; a468: 85 3f
	jsr $a2b1                    ; a46a: 20 b1 a2
loc_a46d:
	jsr $94ff                    ; a46d: 20 ff 94
loc_a470:
	jsr $9426                    ; a470: 20 26 94
loc_a473:
	jmp $80b2                    ; a473: 4c b2 80

; --- Block at $a476-$a476 ---
loc_a476:
	rts                          ; a476: 60

; --- Block at $a477-$a4f7 ---
loc_a477:
	lda.w $0000,y                ; a477: b9 00 00
	and.b #$3f                   ; a47a: 29 3f
	.db $f0, $f8                 ; a47c: f0 f8
loc_a47e:
	sty $48                      ; a47e: 84 48
	stx $4b                      ; a480: 86 4b
	phy                          ; a482: 5a
	txy                          ; a483: 9b
	phx                          ; a484: da
	jsr $83ab                    ; a485: 20 ab 83
loc_a488:
	plx                          ; a488: fa
	ply                          ; a489: 7a
	pha                          ; a48a: 48
	lda.w $0003,y                ; a48b: b9 03 00
	rol                          ; a48e: 2a
	rol                          ; a48f: 2a
	rol                          ; a490: 2a
	rol                          ; a491: 2a
	and.b #$04                   ; a492: 29 04
	ora $34                      ; a494: 05 34
	sta $45                      ; a496: 85 45
	lda.b #$0e                   ; a498: a9 0e
	jsr $8c49                    ; a49a: 20 49 8c
loc_a49d:
	jsr $8c49                    ; a49d: 20 49 8c
loc_a4a0:
	jsr $8c49                    ; a4a0: 20 49 8c
loc_a4a3:
	jsr $8c49                    ; a4a3: 20 49 8c
loc_a4a6:
	pla                          ; a4a6: 68
	rep #$20                     ; a4a7: c2 20
	lda $4b                      ; a4a9: a5 4b
	clc                          ; a4ab: 18
	adc $29                      ; a4ac: 65 29
	sta $4e                      ; a4ae: 85 4e
	clc                          ; a4b0: 18
	adc.w #$0040                 ; a4b1: 69 40 00
	sta $51                      ; a4b4: 85 51
	sep #$20                     ; a4b6: e2 20
	ldx $48                      ; a4b8: a6 48
	ldy $4b                      ; a4ba: a4 4b
	phx                          ; a4bc: da
	phy                          ; a4bd: 5a
	jsr $8b02                    ; a4be: 20 02 8b
loc_a4c1:
	ply                          ; a4c1: 7a
	plx                          ; a4c2: fa
	stx $48                      ; a4c3: 86 48
	sty $4b                      ; a4c5: 84 4b
	rep #$20                     ; a4c7: c2 20
	lda $51                      ; a4c9: a5 51
	clc                          ; a4cb: 18
	adc.w #$0042                 ; a4cc: 69 42 00
	tay                          ; a4cf: a8
	sep #$20                     ; a4d0: e2 20
	lda.b #$49                   ; a4d2: a9 49
	sta.w $0000,y                ; a4d4: 99 00 00
	lda.b #$51                   ; a4d7: a9 51
	sta.w $0002,y                ; a4d9: 99 02 00
	sta.w $0042,y                ; a4dc: 99 42 00
	lda.b #$4e                   ; a4df: a9 4e
	sta.w $0040,y                ; a4e1: 99 40 00
	lda.b #$c7                   ; a4e4: a9 c7
	sta.w $000e,y                ; a4e6: 99 0e 00
	sta.w $004e,y                ; a4e9: 99 4e 00
	rep #$20                     ; a4ec: c2 20
	ldx $51                      ; a4ee: a6 51
	inx                          ; a4f0: e8
	inx                          ; a4f1: e8
	lda.w #$0046                 ; a4f2: a9 46 00
	ldy.b #$07                   ; a4f5: a0 07
	brk #$20                     ; a4f7: 00 20

; --- Block at $a519-$a53a ---
loc_a519:
	jsr $a8e7                    ; a519: 20 e7 a8
loc_a51c:
	.db $d0, $0f                 ; a51c: d0 0f
loc_a51e:
	lda $1b3e                    ; a51e: ad 3e 1b
	inc                          ; a521: 1a
	cmp.b #$05                   ; a522: c9 05
	.db $d0, $02                 ; a524: d0 02
loc_a526:
	lda.b #$00                   ; a526: a9 00
loc_a528:
	sta $1b3e                    ; a528: 8d 3e 1b
	.db $80, $ec                 ; a52b: 80 ec
loc_a52d:
	lda $1b22                    ; a52d: ad 22 1b
	.db $d0, $04                 ; a530: d0 04
loc_a532:
	lda.b #$70                   ; a532: a9 70
	.db $80, $02                 ; a534: 80 02
loc_a536:
	lda.b #$08                   ; a536: a9 08
loc_a538:
	sta $5d                      ; a538: 85 5d

; --- Block at $a53a-$a580 ---
loc_a53a:
	jsr $824c                    ; a53a: 20 4c 82
loc_a53d:
	jsr $82c0                    ; a53d: 20 c0 82
loc_a540:
	lda $01                      ; a540: a5 01
	and.b #$08                   ; a542: 29 08
	.db $f0, $10                 ; a544: f0 10
loc_a546:
	lda $1b3e                    ; a546: ad 3e 1b
	dec                          ; a549: 3a
	.db $10, $02                 ; a54a: 10 02
loc_a54c:
	lda.b #$04                   ; a54c: a9 04
loc_a54e:
	sta $1b3e                    ; a54e: 8d 3e 1b
	jsr $a8e7                    ; a551: 20 e7 a8
loc_a554:
	.db $f0, $f0                 ; a554: f0 f0
loc_a556:
	lda $01                      ; a556: a5 01
	and.b #$04                   ; a558: 29 04
	.db $f0, $12                 ; a55a: f0 12
loc_a55c:
	lda $1b3e                    ; a55c: ad 3e 1b
	inc                          ; a55f: 1a
	cmp.b #$05                   ; a560: c9 05
	.db $90, $02                 ; a562: 90 02
loc_a564:
	lda.b #$00                   ; a564: a9 00
loc_a566:
	sta $1b3e                    ; a566: 8d 3e 1b
	jsr $a8e7                    ; a569: 20 e7 a8
loc_a56c:
	.db $f0, $ee                 ; a56c: f0 ee
loc_a56e:
	lda $00                      ; a56e: a5 00
	and.b #$80                   ; a570: 29 80
	.db $f0, $0d                 ; a572: f0 0d
loc_a574:
	lda $1b3e                    ; a574: ad 3e 1b
	jsr $87b4                    ; a577: 20 b4 87
loc_a57a:
	lda $14ff9d,x                ; a57a: bf 9d ff 14
	sta $e8                      ; a57e: 85 e8
	rts                          ; a580: 60

; --- Block at $a581-$a58b ---
loc_a581:
	lda $01                      ; a581: a5 01
	and.b #$80                   ; a583: 29 80
	.db $f0, $05                 ; a585: f0 05
loc_a587:
	lda.b #$ff                   ; a587: a9 ff
	sta $e8                      ; a589: 85 e8
	rts                          ; a58b: 60

; --- Block at $a58c-$a593 ---
loc_a58c:
	lda $1b3e                    ; a58c: ad 3e 1b
	asl                          ; a58f: 0a
	asl                          ; a590: 0a
	asl                          ; a591: 0a
	asl                          ; a592: 0a

; --- Block at $a593-$a5a2 ---
loc_a593:
	asl                          ; a593: 0a
	adc.b #$40                   ; a594: 69 40
	sta $5e                      ; a596: 85 5e
	lda.b #$00                   ; a598: a9 00
	ldx $5d                      ; a59a: a6 5d
	ldy.b #$00                   ; a59c: a0 00
	ora $20,s                    ; a59e: 03 20
	stx $82                      ; a5a0: 86 82
	jmp $a53a                    ; a5a2: 4c 3a a5

; --- Block at $a6de-$a735 ---
loc_a6de:
	cmp.b #$de                   ; a6de: c9 de
	.db $f0, $10                 ; a6e0: f0 10
loc_a6e2:
	cmp.b #$e2                   ; a6e2: c9 e2
	.db $b0, $0c                 ; a6e4: b0 0c
loc_a6e6:
	jsr $a459                    ; a6e6: 20 59 a4
loc_a6e9:
	lda $e8                      ; a6e9: a5 e8
	.db $30, $35                 ; a6eb: 30 35
loc_a6ed:
	jsr $9007                    ; a6ed: 20 07 90
loc_a6f0:
	stx $60                      ; a6f0: 86 60
loc_a6f2:
	ldx $1b3c                    ; a6f2: ae 3c 1b
	dec $1441,x                  ; a6f5: de 41 14
	.db $d0, $03                 ; a6f8: d0 03
loc_a6fa:
	stz $1440,x                  ; a6fa: 9e 40 14
loc_a6fd:
	lda $1b3b                    ; a6fd: ad 3b 1b
	sec                          ; a700: 38
	sbc.b #$ce                   ; a701: e9 ce
	ldx.b #$54                   ; a703: a2 54
	ldx $20                      ; a705: a6 20
	phk                          ; a707: 4b
	sta $ad,s                    ; a708: 83 ad
	tsc                          ; a70a: 3b
	tcs                          ; a70b: 1b
	cmp.b #$de                   ; a70c: c9 de
	.db $f0, $12                 ; a70e: f0 12
loc_a710:
	cmp.b #$e2                   ; a710: c9 e2
	.db $b0, $0e                 ; a712: b0 0e
loc_a714:
	lda $1a82                    ; a714: ad 82 1a
	.db $d0, $09                 ; a717: d0 09
loc_a719:
	jsr $a3fb                    ; a719: 20 fb a3
loc_a71c:
	jsr $9426                    ; a71c: 20 26 94
loc_a71f:
	jsr $8336                    ; a71f: 20 36 83
loc_a722:
	stz $1a82                    ; a722: 9c 82 1a
	jsr $84b7                    ; a725: 20 b7 84
loc_a728:
	ldy.b #$06                   ; a728: a0 06
	cmp $fb20,y                  ; a72a: d9 20 fb
	.db $82, $4c, $26            ; a72d: 82 4c 26
	sty $c2,x                    ; a730: 94 c2
	jsr $09a0                    ; a732: 20 a0 09
loc_a735:
	brk #$b1                     ; a735: 00 b1

; --- Block at $a79d-$a7e4 ---
loc_a79d:
	jsr $84ba                    ; a79d: 20 ba 84
loc_a7a0:
	lda $1b23                    ; a7a0: ad 23 1b
	clc                          ; a7a3: 18
	adc $1b1a                    ; a7a4: 6d 1a 1b
	asl                          ; a7a7: 0a
	adc $1b22                    ; a7a8: 6d 22 1b
	asl                          ; a7ab: 0a
	jsr $87b4                    ; a7ac: 20 b4 87
loc_a7af:
	lda $1440,x                  ; a7af: bd 40 14
	pha                          ; a7b2: 48
	ldy.b #$e8                   ; a7b3: a0 e8
	cld                          ; a7b5: d8
	jsr $80d9                    ; a7b6: 20 d9 80
loc_a7b9:
	pla                          ; a7b9: 68
	cmp.b #$ce                   ; a7ba: c9 ce
	.db $90, $2b                 ; a7bc: 90 2b
loc_a7be:
	cmp.b #$e7                   ; a7be: c9 e7
	.db $b0, $27                 ; a7c0: b0 27
loc_a7c2:
	sec                          ; a7c2: 38
	sbc.b #$ce                   ; a7c3: e9 ce
	jsr $87b4                    ; a7c5: 20 b4 87
loc_a7c8:
	lda $0fae00,x                ; a7c8: bf 00 ae 0f
	sta $45                      ; a7cc: 85 45
	ldx.b #$2a                   ; a7ce: a2 2a
	ldx $0cf0                    ; a7d0: ae f0 0c
	inx                          ; a7d3: e8
	lda $0f0000,x                ; a7d4: bf 00 00 0f
	.db $d0, $f7                 ; a7d8: d0 f7
loc_a7da:
	dec $45                      ; a7da: c6 45
	.db $d0, $f3                 ; a7dc: d0 f3
loc_a7de:
	inx                          ; a7de: e8
	txy                          ; a7df: 9b
	lda.b #$0f                   ; a7e0: a9 0f
	ldx.b #$54                   ; a7e2: a2 54
	brk #$20                     ; a7e4: 00 20

; --- Block at $a7d1-$a7d3 ---
loc_a7d1:
	.db $f0, $0c                 ; a7d1: f0 0c

; --- Block at $a7e9-$a7f4 ---
loc_a7e9:
	jsr $8d38                    ; a7e9: 20 38 8d
loc_a7ec:
	ldy.b #$06                   ; a7ec: a0 06
	cmp $fb4c,y                  ; a7ee: d9 4c fb
	.db $82, $c2, $20            ; a7f1: 82 c2 20

; --- Block at $a7f2-$a826 ---
loc_a7f2:
	rep #$20                     ; a7f2: c2 20
	lda $5d                      ; a7f4: a5 5d
	lsr                          ; a7f6: 4a
	asl                          ; a7f7: 0a
	asl                          ; a7f8: 0a
	asl                          ; a7f9: 0a
	asl                          ; a7fa: 0a
	asl                          ; a7fb: 0a
	asl                          ; a7fc: 0a
	asl                          ; a7fd: 0a
	sta $45                      ; a7fe: 85 45
	lda $5d                      ; a800: a5 5d
	and.w #$0001                 ; a802: 29 01 00
	.db $f0, $03                 ; a805: f0 03
loc_a807:
	lda.w #$0020                 ; a807: a9 20 00
loc_a80a:
	adc $45                      ; a80a: 65 45
	clc                          ; a80c: 18
	adc $29                      ; a80d: 65 29
	adc.w #$004a                 ; a80f: 69 4a 00
	tay                          ; a812: a8
	sep #$20                     ; a813: e2 20
	lda.b #$04                   ; a815: a9 04
	sta.w $0000,y                ; a817: 99 00 00
	inc                          ; a81a: 1a
	sta.w $0002,y                ; a81b: 99 02 00
	inc                          ; a81e: 1a
	sta.w $0040,y                ; a81f: 99 40 00
	inc                          ; a822: 1a
	sta.w $0042,y                ; a823: 99 42 00
	rts                          ; a826: 60

; --- Block at $a820-$a820 ---
loc_a820:
	rti                          ; a820: 40

; --- Block at $a8e7-$a8ea ---
loc_a8e7:
	lda $1b3e                    ; a8e7: ad 3e 1b

; --- Block at $a8ea-$a8f1 ---
loc_a8ea:
	jsr $87b4                    ; a8ea: 20 b4 87
loc_a8ed:
	lda $14ff9d,x                ; a8ed: bf 9d ff 14

; --- Block at $a8f1-$a8f9 ---
loc_a8f1:
	jsr $9007                    ; a8f1: 20 07 90
loc_a8f4:
	lda.w $0000,x                ; a8f4: bd 00 00
	and.b #$3f                   ; a8f7: 29 3f
	rts                          ; a8f9: 60

; --- Block at $a8fa-$a904 ---
loc_a8fa:
	lda.b #$63                   ; a8fa: a9 63
	sta $e3                      ; a8fc: 85 e3
	ldx.b #$40                   ; a8fe: a2 40
	trb $20                      ; a900: 14 20
	cop #$ae                     ; a902: 02 ae
	jmp $8760                    ; a904: 4c 60 87

; --- Block at $b093-$b0c2 ---
loc_b093:
	lda $1b87                    ; b093: ad 87 1b
	.db $d0, $14                 ; b096: d0 14
loc_b098:
	stz $1b93                    ; b098: 9c 93 1b
	lda $1b81                    ; b09b: ad 81 1b
	asl                          ; b09e: 0a
	asl                          ; b09f: 0a
	asl                          ; b0a0: 0a
	asl                          ; b0a1: 0a
	adc.b #$10                   ; b0a2: 69 10
	sta $46                      ; b0a4: 85 46
	lda.b #$08                   ; b0a6: a9 08
	sta $45                      ; b0a8: 85 45
	.db $80, $03                 ; b0aa: 80 03
loc_b0ac:
	jsr $b344                    ; b0ac: 20 44 b3
loc_b0af:
	jsr $8281                    ; b0af: 20 81 82
loc_b0b2:
	jsr $8488                    ; b0b2: 20 88 84
loc_b0b5:
	jsr $b3c3                    ; b0b5: 20 c3 b3
loc_b0b8:
	jsr $b3fd                    ; b0b8: 20 fd b3
loc_b0bb:
	sta $1b93                    ; b0bb: 8d 93 1b
	ldy.b #$1a                   ; b0be: a0 1a
	cop #$20                     ; b0c0: 02 20

; --- Block at $b0c2-$b138 ---
loc_b0c2:
	adc.b #$83                   ; b0c2: 69 83
	ldx.b #$0a                   ; b0c4: a2 0a
	cop #$a0                     ; b0c6: 02 a0
	sta $20d9                    ; b0c8: 8d d9 20
	tya                          ; b0cb: 98
	sta [$a9]                    ; b0cc: 87 a9
	cmp $8d,s                    ; b0ce: c3 8d
	clc                          ; b0d0: 18
	iny                          ; b0d1: c8
	jsr $824c                    ; b0d2: 20 4c 82
loc_b0d5:
	jsr $9443                    ; b0d5: 20 43 94
loc_b0d8:
	jsr $82c0                    ; b0d8: 20 c0 82
loc_b0db:
	lda $1b87                    ; b0db: ad 87 1b
	.db $d0, $5c                 ; b0de: d0 5c
loc_b0e0:
	lda $01                      ; b0e0: a5 01
	and.b #$08                   ; b0e2: 29 08
	.db $f0, $1e                 ; b0e4: f0 1e
loc_b0e6:
	lda $1b81                    ; b0e6: ad 81 1b
	sta $43                      ; b0e9: 85 43
	lda $43                      ; b0eb: a5 43
	dec                          ; b0ed: 3a
	.db $10, $02                 ; b0ee: 10 02
loc_b0f0:
	lda.b #$02                   ; b0f0: a9 02
loc_b0f2:
	jsr $87b4                    ; b0f2: 20 b4 87
loc_b0f5:
	lda $1b7e,x                  ; b0f5: bd 7e 1b
	.db $30, $f1                 ; b0f8: 30 f1
loc_b0fa:
	pha                          ; b0fa: 48
	lda $43                      ; b0fb: a5 43
	sta $1b81                    ; b0fd: 8d 81 1b
	pla                          ; b100: 68
	jsr $b223                    ; b101: 20 23 b2
loc_b104:
	lda $01                      ; b104: a5 01
	and.b #$04                   ; b106: 29 04
	.db $f0, $1f                 ; b108: f0 1f
loc_b10a:
	lda $1b81                    ; b10a: ad 81 1b
	sta $43                      ; b10d: 85 43
	lda $43                      ; b10f: a5 43
	inc                          ; b111: 1a
	cmp.b #$03                   ; b112: c9 03
	.db $d0, $01                 ; b114: d0 01
loc_b116:
	tdc                          ; b116: 7b
loc_b117:
	jsr $87b4                    ; b117: 20 b4 87
loc_b11a:
	lda $1b7e,x                  ; b11a: bd 7e 1b
	.db $30, $f0                 ; b11d: 30 f0
loc_b11f:
	pha                          ; b11f: 48
	lda $43                      ; b120: a5 43
	sta $1b81                    ; b122: 8d 81 1b
	pla                          ; b125: 68
	jsr $b223                    ; b126: 20 23 b2
loc_b129:
	lda $00                      ; b129: a5 00
	and.b #$80                   ; b12b: 29 80
	.db $f0, $03                 ; b12d: f0 03
loc_b12f:
	inc $1b87                    ; b12f: ee 87 1b
loc_b132:
	lda $01                      ; b132: a5 01
	and.b #$80                   ; b134: 29 80
	.db $f0, $01                 ; b136: f0 01
loc_b138:
	rts                          ; b138: 60

; --- Block at $b139-$b139 ---
loc_b139:
	jmp $b093                    ; b139: 4c 93 b0

; --- Block at $b13c-$b1e6 ---
loc_b13c:
	lda $01                      ; b13c: a5 01
	and.b #$08                   ; b13e: 29 08
	.db $f0, $0b                 ; b140: f0 0b
loc_b142:
	lda $1b83                    ; b142: ad 83 1b
	dec                          ; b145: 3a
	.db $10, $02                 ; b146: 10 02
loc_b148:
	lda.b #$07                   ; b148: a9 07
loc_b14a:
	sta $1b83                    ; b14a: 8d 83 1b
loc_b14d:
	lda $01                      ; b14d: a5 01
	and.b #$04                   ; b14f: 29 04
	.db $f0, $0c                 ; b151: f0 0c
loc_b153:
	lda $1b83                    ; b153: ad 83 1b
	inc                          ; b156: 1a
	cmp.b #$08                   ; b157: c9 08
	.db $d0, $01                 ; b159: d0 01
loc_b15b:
	tdc                          ; b15b: 7b
loc_b15c:
	sta $1b83                    ; b15c: 8d 83 1b
loc_b15f:
	lda $01                      ; b15f: a5 01
	and.b #$02                   ; b161: 29 02
	.db $f0, $0b                 ; b163: f0 0b
loc_b165:
	lda $1b84                    ; b165: ad 84 1b
	dec                          ; b168: 3a
	.db $10, $02                 ; b169: 10 02
loc_b16b:
	lda.b #$02                   ; b16b: a9 02
loc_b16d:
	sta $1b84                    ; b16d: 8d 84 1b
loc_b170:
	lda $01                      ; b170: a5 01
	and.b #$01                   ; b172: 29 01
	.db $f0, $0c                 ; b174: f0 0c
loc_b176:
	lda $1b84                    ; b176: ad 84 1b
	inc                          ; b179: 1a
	cmp.b #$03                   ; b17a: c9 03
	.db $d0, $01                 ; b17c: d0 01
loc_b17e:
	tdc                          ; b17e: 7b
loc_b17f:
	sta $1b84                    ; b17f: 8d 84 1b
loc_b182:
	lda $00                      ; b182: a5 00
	and.b #$80                   ; b184: 29 80
	.db $f0, $2a                 ; b186: f0 2a
loc_b188:
	lda $1b88                    ; b188: ad 88 1b
	.db $d0, $1d                 ; b18b: d0 1d
loc_b18d:
	inc $1b88                    ; b18d: ee 88 1b
	ldx $1b83                    ; b190: ae 83 1b
	stx $1b85                    ; b193: 8e 85 1b
	jsr $b344                    ; b196: 20 44 b3
loc_b199:
	rep #$20                     ; b199: c2 20
	lda $45                      ; b19b: a5 45
	clc                          ; b19d: 18
	adc.w #$0404                 ; b19e: 69 04 04
	sta $45                      ; b1a1: 85 45
	sep #$20                     ; b1a3: e2 20
	jsr $827c                    ; b1a5: 20 7c 82
loc_b1a8:
	.db $80, $17                 ; b1a8: 80 17
loc_b1aa:
	stz $1b88                    ; b1aa: 9c 88 1b
	jsr $b35e                    ; b1ad: 20 5e b3
loc_b1b0:
	.db $80, $0f                 ; b1b0: 80 0f
loc_b1b2:
	lda $01                      ; b1b2: a5 01
	and.b #$80                   ; b1b4: 29 80
	.db $f0, $09                 ; b1b6: f0 09
loc_b1b8:
	stz $1b87                    ; b1b8: 9c 87 1b
	stz $1b88                    ; b1bb: 9c 88 1b
	jsr $b4f6                    ; b1be: 20 f6 b4
loc_b1c1:
	lda $00                      ; b1c1: a5 00
	and.b #$40                   ; b1c3: 29 40
	.db $f0, $1f                 ; b1c5: f0 1f
loc_b1c7:
	lda $1b81                    ; b1c7: ad 81 1b
	sta $43                      ; b1ca: 85 43
	lda $43                      ; b1cc: a5 43
	inc                          ; b1ce: 1a
	cmp.b #$03                   ; b1cf: c9 03
	.db $d0, $01                 ; b1d1: d0 01
loc_b1d3:
	tdc                          ; b1d3: 7b
loc_b1d4:
	jsr $87b4                    ; b1d4: 20 b4 87
loc_b1d7:
	lda $1b7e,x                  ; b1d7: bd 7e 1b
	.db $30, $f0                 ; b1da: 30 f0
loc_b1dc:
	pha                          ; b1dc: 48
	lda $43                      ; b1dd: a5 43
	sta $1b81                    ; b1df: 8d 81 1b
	pla                          ; b1e2: 68
	jsr $b223                    ; b1e3: 20 23 b2
loc_b1e6:
	jmp $b093                    ; b1e6: 4c 93 b0

; --- Block at $b223-$b229 ---
loc_b223:
	jsr $84a2                    ; b223: 20 a2 84
loc_b226:
	jsr $b22c                    ; b226: 20 2c b2
loc_b229:
	jmp $9433                    ; b229: 4c 33 94

; --- Block at $b22c-$b27c ---
loc_b22c:
	sta $43                      ; b22c: 85 43
	jsr $84a2                    ; b22e: 20 a2 84
loc_b231:
	rep #$20                     ; b231: c2 20
	lda $43                      ; b233: a5 43
	asl                          ; b235: 0a
	asl                          ; b236: 0a
	asl                          ; b237: 0a
	sta $48                      ; b238: 85 48
	asl                          ; b23a: 0a
	adc $48                      ; b23b: 65 48
	adc.w #$1560                 ; b23d: 69 60 15
	sta $60                      ; b240: 85 60
	sep #$20                     ; b242: e2 20
	stz $5e                      ; b244: 64 5e
	stz $5b                      ; b246: 64 5b
	lda.b #$08                   ; b248: a9 08
	sta $5a                      ; b24a: 85 5a
	ldy $41                      ; b24c: a4 41
	lda.b #$03                   ; b24e: a9 03
	sta $5d                      ; b250: 85 5d
	rep #$20                     ; b252: c2 20
	lda $5d                      ; b254: a5 5d
	dec                          ; b256: 3a
	asl                          ; b257: 0a
	tax                          ; b258: aa
	lda.w #$0008                 ; b259: a9 08 00
	sec                          ; b25c: 38
	sbc $5a                      ; b25d: e5 5a
	xba                          ; b25f: eb
	and.w #$ff00                 ; b260: 29 00 ff
	lsr                          ; b263: 4a
	clc                          ; b264: 18
	adc $1efebd,x                ; b265: 7f bd fe 1e
	tax                          ; b269: aa
	sep #$20                     ; b26a: e2 20
	lda ($60),y                  ; b26c: b1 60
	jsr $b27d                    ; b26e: 20 7d b2
loc_b271:
	iny                          ; b271: c8
	dec $5d                      ; b272: c6 5d
	.db $d0, $dc                 ; b274: d0 dc
loc_b276:
	dec $5a                      ; b276: c6 5a
	.db $d0, $d4                 ; b278: d0 d4
loc_b27a:
	sep #$20                     ; b27a: e2 20
	rts                          ; b27c: 60

; --- Block at $b27d-$b343 ---
loc_b27d:
	pha                          ; b27d: 48
	phx                          ; b27e: da
	cmp.b #$0e                   ; b27f: c9 0e
	.db $90, $23                 ; b281: 90 23
loc_b283:
	cmp.b #$1c                   ; b283: c9 1c
	.db $b0, $1f                 ; b285: b0 1f
loc_b287:
	sta $1a87                    ; b287: 8d 87 1a
	phy                          ; b28a: 5a
	jsr $b413                    ; b28b: 20 13 b4
loc_b28e:
	ply                          ; b28e: 7a
	sta $1bc4                    ; b28f: 8d c4 1b
	stz $1bc5                    ; b292: 9c c5 1b
	lda $e8                      ; b295: a5 e8
	jsr $9007                    ; b297: 20 07 90
loc_b29a:
	rep #$20                     ; b29a: c2 20
	lda.w $000b,x                ; b29c: bd 0b 00
	cmp $1bc4                    ; b29f: cd c4 1b
	sep #$20                     ; b2a2: e2 20
	.db $b0, $0b                 ; b2a4: b0 0b
loc_b2a6:
	lda $1bc8                    ; b2a6: ad c8 1b
	.db $d0, $06                 ; b2a9: d0 06
loc_b2ab:
	lda $34                      ; b2ab: a5 34
	ora.b #$04                   ; b2ad: 09 04
	.db $80, $29                 ; b2af: 80 29
loc_b2b1:
	lda $1a87                    ; b2b1: ad 87 1a
	cmp.b #$12                   ; b2b4: c9 12
	.db $f0, $20                 ; b2b6: f0 20
loc_b2b8:
	lda $1a86                    ; b2b8: ad 86 1a
	and.b #$28                   ; b2bb: 29 28
	.db $f0, $19                 ; b2bd: f0 19
loc_b2bf:
	and.b #$20                   ; b2bf: 29 20
	.db $f0, $07                 ; b2c1: f0 07
loc_b2c3:
	lda $1a87                    ; b2c3: ad 87 1a
	cmp.b #$19                   ; b2c6: c9 19
	.db $f0, $0e                 ; b2c8: f0 0e
loc_b2ca:
	lda $1a86                    ; b2ca: ad 86 1a
	and.b #$08                   ; b2cd: 29 08
	.db $f0, $da                 ; b2cf: f0 da
loc_b2d1:
	lda $1a87                    ; b2d1: ad 87 1a
	cmp.b #$1a                   ; b2d4: c9 1a
	.db $d0, $d3                 ; b2d6: d0 d3
loc_b2d8:
	lda $34                      ; b2d8: a5 34
loc_b2da:
	sta $db                      ; b2da: 85 db
	plx                          ; b2dc: fa
	pla                          ; b2dd: 68
	pha                          ; b2de: 48
	rep #$20                     ; b2df: c2 20
	txa                          ; b2e1: 8a
	clc                          ; b2e2: 18
	adc $29                      ; b2e3: 65 29
	tax                          ; b2e5: aa
	sep #$20                     ; b2e6: e2 20
	pla                          ; b2e8: 68
	phb                          ; b2e9: 8b
	phx                          ; b2ea: da
	phy                          ; b2eb: 5a
	xba                          ; b2ec: eb
	lda.b #$00                   ; b2ed: a9 00
	xba                          ; b2ef: eb
	rep #$20                     ; b2f0: c2 20
	asl                          ; b2f2: 0a
	sta $45                      ; b2f3: 85 45
	asl                          ; b2f5: 0a
	adc $45                      ; b2f6: 65 45
	adc.w #$8900                 ; b2f8: 69 00 89
	tay                          ; b2fb: a8
	sep #$20                     ; b2fc: e2 20
	lda.b #$0f                   ; b2fe: a9 0f
	pha                          ; b300: 48
	plb                          ; b301: ab
	lda.w $0000,y                ; b302: b9 00 00
	iny                          ; b305: c8
	sta $7e0040,x                ; b306: 9f 40 00 7e
	lda.b #$ff                   ; b30a: a9 ff
	sta $7e0000,x                ; b30c: 9f 00 00 7e
	inx                          ; b310: e8
	lda $db                      ; b311: a5 db
	sta $7e0000,x                ; b313: 9f 00 00 7e
	sta $7e0040,x                ; b317: 9f 40 00 7e
	inx                          ; b31b: e8
	lda.b #$05                   ; b31c: a9 05
	sta $45                      ; b31e: 85 45
	lda.w $0000,y                ; b320: b9 00 00
	jsr $8e34                    ; b323: 20 34 8e
loc_b326:
	sta $7e0000,x                ; b326: 9f 00 00 7e
	xba                          ; b32a: eb
	sta $7e0040,x                ; b32b: 9f 40 00 7e
	inx                          ; b32f: e8
	lda $db                      ; b330: a5 db
	sta $7e0000,x                ; b332: 9f 00 00 7e
	sta $7e0040,x                ; b336: 9f 40 00 7e
	inx                          ; b33a: e8
	iny                          ; b33b: c8
	dec $45                      ; b33c: c6 45
	.db $d0, $e0                 ; b33e: d0 e0
loc_b340:
	ply                          ; b340: 7a
	plx                          ; b341: fa
	plb                          ; b342: ab
	rts                          ; b343: 60

; --- Block at $b344-$b35d ---
loc_b344:
	lda $1b83                    ; b344: ad 83 1b
	asl                          ; b347: 0a
	asl                          ; b348: 0a
	asl                          ; b349: 0a
	asl                          ; b34a: 0a
	adc.b #$56                   ; b34b: 69 56
	sta $46                      ; b34d: 85 46
	lda $1b84                    ; b34f: ad 84 1b
	sep #$10                     ; b352: e2 10
	tax                          ; b354: aa
	lda $01b1e9,x                ; b355: bf e9 b1 01
	rep #$10                     ; b359: c2 10
	sta $45                      ; b35b: 85 45
	rts                          ; b35d: 60

; --- Block at $b35e-$b366 ---
loc_b35e:
	ldx $1b83                    ; b35e: ae 83 1b
	cpx $1b85                    ; b361: ec 85 1b
	.db $d0, $03                 ; b364: d0 03
loc_b366:
	jmp $b514                    ; b366: 4c 14 b5

; --- Block at $b369-$b39c ---
loc_b369:
	stz $1b88                    ; b369: 9c 88 1b
	jsr $a2b4                    ; b36c: 20 b4 a2
loc_b36f:
	lda $1b83                    ; b36f: ad 83 1b
	asl                          ; b372: 0a
	adc $1b83                    ; b373: 6d 83 1b
	adc $1b84                    ; b376: 6d 84 1b
	jsr $b3a9                    ; b379: 20 a9 b3
loc_b37c:
	tay                          ; b37c: a8
	lda $1b85                    ; b37d: ad 85 1b
	asl                          ; b380: 0a
	adc $1b85                    ; b381: 6d 85 1b
	adc $1b86                    ; b384: 6d 86 1b
	jsr $b3a9                    ; b387: 20 a9 b3
loc_b38a:
	tax                          ; b38a: aa
	lda $1560,x                  ; b38b: bd 60 15
	pha                          ; b38e: 48
	lda $1560,y                  ; b38f: b9 60 15
	sta $1560,x                  ; b392: 9d 60 15
	pla                          ; b395: 68
	sta $1560,y                  ; b396: 99 60 15
	jsr $b39f                    ; b399: 20 9f b3
loc_b39c:
	jmp $b223                    ; b39c: 4c 23 b2

; --- Block at $b39f-$b3a8 ---
loc_b39f:
	lda $1b81                    ; b39f: ad 81 1b
	jsr $87b4                    ; b3a2: 20 b4 87
loc_b3a5:
	lda $1b7e,x                  ; b3a5: bd 7e 1b
	rts                          ; b3a8: 60

; --- Block at $b3a9-$b3c2 ---
loc_b3a9:
	sta $1d                      ; b3a9: 85 1d
	stz $1e                      ; b3ab: 64 1e
	jsr $b39f                    ; b3ad: 20 9f b3
loc_b3b0:
	xba                          ; b3b0: eb
	lda.b #$00                   ; b3b1: a9 00
	xba                          ; b3b3: eb
	rep #$20                     ; b3b4: c2 20
	asl                          ; b3b6: 0a
	asl                          ; b3b7: 0a
	asl                          ; b3b8: 0a
	sta $45                      ; b3b9: 85 45
	asl                          ; b3bb: 0a
	adc $45                      ; b3bc: 65 45
	adc $1d                      ; b3be: 65 1d
	sep #$20                     ; b3c0: e2 20
	rts                          ; b3c2: 60

; --- Block at $b3c3-$b3f2 ---
loc_b3c3:
	lda.b #$24                   ; b3c3: a9 24
	ldx.b #$30                   ; b3c5: a2 30
	ora ($20,x)                  ; b3c7: 01 20
	sbc $b0a2b3                  ; b3c9: ef b3 a2 b0
	ora ($20,x)                  ; b3cd: 01 20
	sbc $30a2b3                  ; b3cf: ef b3 a2 30
	cop #$20                     ; b3d3: 02 20
	sbc $81adb3                  ; b3d5: ef b3 ad 81
	tcs                          ; b3d9: 1b
	.db $d0, $05                 ; b3da: d0 05
loc_b3dc:
	ldx.b #$30                   ; b3dc: a2 30
	ora ($80,x)                  ; b3de: 01 80
	tsb $01c9                    ; b3e0: 0c c9 01
	.db $d0, $05                 ; b3e3: d0 05
loc_b3e5:
	ldx.b #$b0                   ; b3e5: a2 b0
	ora ($80,x)                  ; b3e7: 01 80
	ora $a2,s                    ; b3e9: 03 a2
	.db $30, $02                 ; b3eb: 30 02
loc_b3ed:
	lda.b #$20                   ; b3ed: a9 20
loc_b3ef:
	pha                          ; b3ef: 48
	ldy.b #$05                   ; b3f0: a0 05
	brk #$9d                     ; b3f2: 00 9d

; --- Block at $b3e1-$b3e3 ---
loc_b3e1:
	cmp.b #$01                   ; b3e1: c9 01

; --- Block at $b3ea-$b3fc ---
loc_b3ea:
	ldx.b #$30                   ; b3ea: a2 30
	cop #$a9                     ; b3ec: 02 a9
	jsr $a048                    ; b3ee: 20 48 a0
loc_b3f1:
	ora $00                      ; b3f1: 05 00
	sta $c601,x                  ; b3f3: 9d 01 c6
	inx                          ; b3f6: e8
	inx                          ; b3f7: e8
	dey                          ; b3f8: 88
	.db $d0, $f8                 ; b3f9: d0 f8
loc_b3fb:
	pla                          ; b3fb: 68
	rts                          ; b3fc: 60

; --- Block at $b3fd-$b42e ---
loc_b3fd:
	lda $1b87                    ; b3fd: ad 87 1b
	.db $f0, $29                 ; b400: f0 29
loc_b402:
	lda $1b83                    ; b402: ad 83 1b
	asl                          ; b405: 0a
	adc $1b83                    ; b406: 6d 83 1b
	adc $1b84                    ; b409: 6d 84 1b
	jsr $b3a9                    ; b40c: 20 a9 b3
loc_b40f:
	tay                          ; b40f: a8
	lda $1560,y                  ; b410: b9 60 15
	xba                          ; b413: eb
	lda.b #$00                   ; b414: a9 00
	xba                          ; b416: eb
	rep #$20                     ; b417: c2 20
	asl                          ; b419: 0a
	sta $45                      ; b41a: 85 45
	asl                          ; b41c: 0a
	adc $45                      ; b41d: 65 45
	tax                          ; b41f: aa
	sep #$20                     ; b420: e2 20
	lda $0f97a5,x                ; b422: bf a5 97 0f
	and.b #$7f                   ; b426: 29 7f
	sta $1b93                    ; b428: 8d 93 1b
loc_b42b:
	lda $1b93                    ; b42b: ad 93 1b
	rts                          ; b42e: 60

; --- Block at $b40d-$b40f ---
loc_b40d:
	lda.b #$b3                   ; b40d: a9 b3

; --- Block at $b438-$b480 ---
loc_b438:
	lda.b #$20                   ; b438: a9 20
	sta $c1                      ; b43a: 85 c1
	jsr $84a2                    ; b43c: 20 a2 84
loc_b43f:
	jsr $b4f6                    ; b43f: 20 f6 b4
loc_b442:
	stz $1b88                    ; b442: 9c 88 1b
	lda $1b83                    ; b445: ad 83 1b
	asl                          ; b448: 0a
	adc $1b83                    ; b449: 6d 83 1b
	adc $1b84                    ; b44c: 6d 84 1b
	jsr $b3a9                    ; b44f: 20 a9 b3
loc_b452:
	tay                          ; b452: a8
	lda $1560,y                  ; b453: b9 60 15
	sta $1b89                    ; b456: 8d 89 1b
	sec                          ; b459: 38
	sbc.b #$0e                   ; b45a: e9 0e
	jsr $87b4                    ; b45c: 20 b4 87
loc_b45f:
	lda $14fff2,x                ; b45f: bf f2 ff 14
	sta $1b90                    ; b463: 8d 90 1b
	ldy.b #$7f                   ; b466: a0 7f
	cmp $d920,y                  ; b468: d9 20 d9
	.db $80, $a0                 ; b46b: 80 a0
	sta $d9,s                    ; b46d: 83 d9
	jsr $80d9                    ; b46f: 20 d9 80
loc_b472:
	ldy.b #$87                   ; b472: a0 87
	cmp $d920,y                  ; b474: d9 20 d9
	.db $80, $20                 ; b477: 80 20
	ldx.b #$84                   ; b479: a2 84
	lda $1b89                    ; b47b: ad 89 1b
	ldx.b #$44                   ; b47e: a2 44
	brk #$20                     ; b480: 00 20

; --- Block at $b499-$b4a0 ---
loc_b499:
	jsr $8369                    ; b499: 20 69 83
loc_b49c:
	ldx.b #$e0                   ; b49c: a2 e0
	cop #$a0                     ; b49e: 02 a0
	brk #$10                     ; b4a0: 00 10

; --- Block at $b4f0-$b4f3 ---
loc_b4f0:
	jsr $b4f6                    ; b4f0: 20 f6 b4
loc_b4f3:
	jmp $8758                    ; b4f3: 4c 58 87

; --- Block at $b4f6-$b4f9 ---
loc_b4f6:
	jsr $a2b4                    ; b4f6: 20 b4 a2
loc_b4f9:
	jmp $a2ca                    ; b4f9: 4c ca a2

; --- Block at $b4fc-$b502 ---
loc_b4fc:
	stz $1b87                    ; b4fc: 9c 87 1b
	stz $1b88                    ; b4ff: 9c 88 1b
	jmp $b988                    ; b502: 4c 88 b9

; --- Block at $b505-$b517 ---
loc_b505:
	stz $1b87                    ; b505: 9c 87 1b
	stz $1b88                    ; b508: 9c 88 1b
	sec                          ; b50b: 38
	sbc.b #$16                   ; b50c: e9 16
	ldx.b #$47                   ; b50e: a2 47
	lda [$4c],y                  ; b510: b7 4c
	phk                          ; b512: 4b
	sta $9c,s                    ; b513: 83 9c
	sta [$1b]                    ; b515: 87 1b

; --- Block at $b514-$b56a ---
loc_b514:
	stz $1b87                    ; b514: 9c 87 1b
	jsr $84a2                    ; b517: 20 a2 84
loc_b51a:
	stz $1b88                    ; b51a: 9c 88 1b
	lda $1b83                    ; b51d: ad 83 1b
	asl                          ; b520: 0a
	adc $1b83                    ; b521: 6d 83 1b
	adc $1b84                    ; b524: 6d 84 1b
	jsr $b3a9                    ; b527: 20 a9 b3
loc_b52a:
	tay                          ; b52a: a8
	lda $1560,y                  ; b52b: b9 60 15
	cmp.b #$0e                   ; b52e: c9 0e
	.db $90, $be                 ; b530: 90 be
loc_b532:
	cmp.b #$1c                   ; b532: c9 1c
	.db $b0, $ba                 ; b534: b0 ba
loc_b536:
	sta $1b89                    ; b536: 8d 89 1b
	cmp.b #$12                   ; b539: c9 12
	.db $f0, $22                 ; b53b: f0 22
loc_b53d:
	jsr $958f                    ; b53d: 20 8f 95
loc_b540:
	and.b #$28                   ; b540: 29 28
	.db $f0, $1b                 ; b542: f0 1b
loc_b544:
	bit.b #$20                   ; b544: 89 20
	.db $f0, $07                 ; b546: f0 07
loc_b548:
	lda $1b89                    ; b548: ad 89 1b
	cmp.b #$19                   ; b54b: c9 19
	.db $f0, $10                 ; b54d: f0 10
loc_b54f:
	jsr $958f                    ; b54f: 20 8f 95
loc_b552:
	bit.b #$08                   ; b552: 89 08
	.db $f0, $07                 ; b554: f0 07
loc_b556:
	lda $1b89                    ; b556: ad 89 1b
	cmp.b #$1a                   ; b559: c9 1a
	.db $f0, $02                 ; b55b: f0 02
loc_b55d:
	.db $80, $91                 ; b55d: 80 91
loc_b55f:
	jsr $b9dc                    ; b55f: 20 dc b9
loc_b562:
	.db $10, $09                 ; b562: 10 09
loc_b564:
	jsr $b955                    ; b564: 20 55 b9
loc_b567:
	jsr $8758                    ; b567: 20 58 87
loc_b56a:
	jmp $b5ef                    ; b56a: 4c ef b5

; --- Block at $b56d-$b5e4 ---
loc_b56d:
	lda $1560,y                  ; b56d: b9 60 15
	cmp.b #$16                   ; b570: c9 16
	.db $f0, $91                 ; b572: f0 91
loc_b574:
	cmp.b #$17                   ; b574: c9 17
	.db $f0, $8d                 ; b576: f0 8d
loc_b578:
	cmp.b #$1b                   ; b578: c9 1b
	.db $f0, $80                 ; b57a: f0 80
loc_b57c:
	jsr $a2b4                    ; b57c: 20 b4 a2
loc_b57f:
	jsr $a2ca                    ; b57f: 20 ca a2
loc_b582:
	jsr $b955                    ; b582: 20 55 b9
loc_b585:
	jsr $8d6c                    ; b585: 20 6c 8d
loc_b588:
	jsr $824c                    ; b588: 20 4c 82
loc_b58b:
	jsr $b438                    ; b58b: 20 38 b4
loc_b58e:
	jsr $83e3                    ; b58e: 20 e3 83
loc_b591:
	jsr $824c                    ; b591: 20 4c 82
loc_b594:
	stz $1b8b                    ; b594: 9c 8b 1b
	stz $1b8c                    ; b597: 9c 8c 1b
	stz $1b8d                    ; b59a: 9c 8d 1b
	stz $1b8e                    ; b59d: 9c 8e 1b
	stz $1b8f                    ; b5a0: 9c 8f 1b
	stz $1bbb                    ; b5a3: 9c bb 1b
	lda $1b8a                    ; b5a6: ad 8a 1b
	jsr $a8ea                    ; b5a9: 20 ea a8
loc_b5ac:
	.db $d0, $0f                 ; b5ac: d0 0f
loc_b5ae:
	lda $1b8a                    ; b5ae: ad 8a 1b
	inc                          ; b5b1: 1a
	cmp.b #$05                   ; b5b2: c9 05
	.db $d0, $02                 ; b5b4: d0 02
loc_b5b6:
	lda.b #$00                   ; b5b6: a9 00
loc_b5b8:
	sta $1b8a                    ; b5b8: 8d 8a 1b
	.db $80, $e9                 ; b5bb: 80 e9
loc_b5bd:
	lda $1bbb                    ; b5bd: ad bb 1b
	.db $f0, $05                 ; b5c0: f0 05
loc_b5c2:
	jsr $a2ca                    ; b5c2: 20 ca a2
loc_b5c5:
	.db $80, $16                 ; b5c5: 80 16
loc_b5c7:
	lda $1b8a                    ; b5c7: ad 8a 1b
	asl                          ; b5ca: 0a
	asl                          ; b5cb: 0a
	adc $1b8a                    ; b5cc: 6d 8a 1b
	asl                          ; b5cf: 0a
	asl                          ; b5d0: 0a
	asl                          ; b5d1: 0a
	adc.b #$20                   ; b5d2: 69 20
	sta $46                      ; b5d4: 85 46
	lda.b #$40                   ; b5d6: a9 40
	sta $45                      ; b5d8: 85 45
	jsr $8281                    ; b5da: 20 81 82
loc_b5dd:
	ldy.b #$10                   ; b5dd: a0 10
	ora $20,s                    ; b5df: 03 20
	stz $20b6,x                  ; b5e1: 9e b6 20
	jmp $2082                    ; b5e4: 4c 82 20

; --- Block at $b5c8-$b5ca ---
loc_b5c8:
	txa                          ; b5c8: 8a
	tcs                          ; b5c9: 1b

; --- Block at $b5ef-$b611 ---
loc_b5ef:
	jsr $849f                    ; b5ef: 20 9f 84
loc_b5f2:
	ldy.b #$63                   ; b5f2: a0 63
	cmp $d920,y                  ; b5f4: d9 20 d9
	.db $80, $20                 ; b5f7: 80 20
	sta $2320b3,x                ; b5f9: 9f b3 20 23
	lda ($20)                    ; b5fd: b2 20
	ror $b9                      ; b5ff: 66 b9
	lda.b #$00                   ; b601: a9 00
	sta $c1                      ; b603: 85 c1
	jsr $a2b4                    ; b605: 20 b4 a2
loc_b608:
	jsr $a2ca                    ; b608: 20 ca a2
loc_b60b:
	jsr $84a2                    ; b60b: 20 a2 84
loc_b60e:
	jsr $824c                    ; b60e: 20 4c 82
loc_b611:
	jmp $9436                    ; b611: 4c 36 94

; --- Block at $b619-$b665 ---
loc_b619:
	.db $10, $ad                 ; b619: 10 ad
loc_b61b:
	txa                          ; b61b: 8a
	tcs                          ; b61c: 1b
	jsr $87b4                    ; b61d: 20 b4 87
loc_b620:
	lda.b #$ff                   ; b620: a9 ff
	sta $1b8b,x                  ; b622: 9d 8b 1b
	jsr $b6ee                    ; b625: 20 ee b6
loc_b628:
	.db $80, $c5                 ; b628: 80 c5
	lda $01                      ; b62a: a5 01
	and.b #$08                   ; b62c: 29 08
	.db $f0, $10                 ; b62e: f0 10
loc_b630:
	lda $1b8a                    ; b630: ad 8a 1b
	dec                          ; b633: 3a
	.db $10, $02                 ; b634: 10 02
loc_b636:
	lda.b #$04                   ; b636: a9 04
loc_b638:
	sta $1b8a                    ; b638: 8d 8a 1b
	jsr $a8ea                    ; b63b: 20 ea a8
loc_b63e:
	.db $f0, $f0                 ; b63e: f0 f0
loc_b640:
	lda $01                      ; b640: a5 01
	and.b #$04                   ; b642: 29 04
	.db $f0, $12                 ; b644: f0 12
loc_b646:
	lda $1b8a                    ; b646: ad 8a 1b
	inc                          ; b649: 1a
	cmp.b #$05                   ; b64a: c9 05
	.db $d0, $02                 ; b64c: d0 02
loc_b64e:
	lda.b #$00                   ; b64e: a9 00
loc_b650:
	sta $1b8a                    ; b650: 8d 8a 1b
	jsr $a8ea                    ; b653: 20 ea a8
loc_b656:
	.db $f0, $ee                 ; b656: f0 ee
loc_b658:
	lda $01                      ; b658: a5 01
	and.b #$03                   ; b65a: 29 03
	.db $f0, $27                 ; b65c: f0 27
loc_b65e:
	lda $1b90                    ; b65e: ad 90 1b
	.db $f0, $22                 ; b661: f0 22
loc_b663:
	ldy.b #$04                   ; b663: a0 04
	brk #$98                     ; b665: 00 98

; --- Block at $b685-$b685 ---
loc_b685:
	jmp $b5bd                    ; b685: 4c bd b5

; --- Block at $b6ee-$b734 ---
loc_b6ee:
	jsr $b9dc                    ; b6ee: 20 dc b9
loc_b6f1:
	rep #$20                     ; b6f1: c2 20
	sta.w $000b,x                ; b6f3: 9d 0b 00
	sep #$20                     ; b6f6: e2 20
	lda $1b89                    ; b6f8: ad 89 1b
	sec                          ; b6fb: 38
	sbc.b #$0e                   ; b6fc: e9 0e
	pha                          ; b6fe: 48
	jsl $1efd5b                  ; b6ff: 22 5b fd 1e
loc_b703:
	pla                          ; b703: 68
	ldx.b #$37                   ; b704: a2 37
	lda [$20],y                  ; b706: b7 20
	phk                          ; b708: 4b
	sta $20,s                    ; b709: 83 20
	sta $868d95                  ; b70b: 8f 95 8d 86
	inc                          ; b70f: 1a
	jsr $849f                    ; b710: 20 9f 84
loc_b713:
	ldy.b #$63                   ; b713: a0 63
	cmp $d920,y                  ; b715: d9 20 d9
	.db $80, $20                 ; b718: 80 20
	sta $2c20b3,x                ; b71a: 9f b3 20 2c
	lda ($20)                    ; b71e: b2 20
	and $ca20b4                  ; b720: 2f b4 20 ca
	ldx.b #$20                   ; b724: a2 20
	and ($94,s),y                ; b726: 33 94
	jsr $824f                    ; b728: 20 4f 82
loc_b72b:
	jsr $8336                    ; b72b: 20 36 83
loc_b72e:
	jsr $8470                    ; b72e: 20 70 84
loc_b731:
	jsr $88c8                    ; b731: 20 c8 88
loc_b734:
	jmp $944d                    ; b734: 4c 4d 94

; --- Block at $b73a-$b786 ---
loc_b73a:
	lda [$65],y                  ; b73a: b7 65
	lda [$6e],y                  ; b73c: b7 6e
	lda [$4a],y                  ; b73e: b7 4a
	clv                          ; b740: b8
	.db $70, $b8                 ; b741: 70 b8
loc_b743:
	ldy $b8,x                    ; b743: b4 b8
	phd                          ; b745: 0b
	lda $b993,y                  ; b746: b9 93 b9
	stz $bdb9,x                  ; b749: 9e b9 bd
	lda $b912,y                  ; b74c: b9 12 b9
	ora $88b9,y                  ; b74f: 19 b9 88
	lda $f5af,y                  ; b752: b9 af f5
	sta [$0f],y                  ; b755: 97 0f
	sta $1b91                    ; b757: 8d 91 1b
	.db $80, $4a                 ; b75a: 80 4a
	lda $0f97fb                  ; b75c: af fb 97 0f
	sta $1b91                    ; b760: 8d 91 1b
	.db $80, $41                 ; b763: 80 41
	lda $0f9801                  ; b765: af 01 98 0f
	sta $1b91                    ; b769: 8d 91 1b
	.db $80, $38                 ; b76c: 80 38
	lda $1bbb                    ; b76e: ad bb 1b
	.db $f0, $09                 ; b771: f0 09
loc_b773:
	lda $0f9807                  ; b773: af 07 98 0f
	sta $1b91                    ; b777: 8d 91 1b
	.db $80, $2a                 ; b77a: 80 2a
loc_b77c:
	lda.b #$00                   ; b77c: a9 00
	jsr $b787                    ; b77e: 20 87 b7
loc_b781:
	inc                          ; b781: 1a
	cmp.b #$05                   ; b782: c9 05
	.db $d0, $f8                 ; b784: d0 f8
loc_b786:
	rts                          ; b786: 60

; --- Block at $b787-$b7a5 ---
loc_b787:
	pha                          ; b787: 48
	jsr $87b4                    ; b788: 20 b4 87
loc_b78b:
	lda $1b8b,x                  ; b78b: bd 8b 1b
	.db $f0, $14                 ; b78e: f0 14
loc_b790:
	lda $43                      ; b790: a5 43
	jsr $b977                    ; b792: 20 77 b9
loc_b795:
	lda.w $0003,x                ; b795: bd 03 00
	.db $30, $0a                 ; b798: 30 0a
loc_b79a:
	rep #$20                     ; b79a: c2 20
	lda.w $0009,x                ; b79c: bd 09 00
	sta.w $0007,x                ; b79f: 9d 07 00
	sep #$20                     ; b7a2: e2 20
loc_b7a4:
	pla                          ; b7a4: 68
	rts                          ; b7a5: 60

; --- Block at $b7a6-$b810 ---
loc_b7a6:
	lda.b #$00                   ; b7a6: a9 00
	xba                          ; b7a8: eb
	lda $1b91                    ; b7a9: ad 91 1b
	rep #$20                     ; b7ac: c2 20
	asl                          ; b7ae: 0a
	asl                          ; b7af: 0a
	sta $1b91                    ; b7b0: 8d 91 1b
	sep #$20                     ; b7b3: e2 20
	lda $e8                      ; b7b5: a5 e8
	jsr $9007                    ; b7b7: 20 07 90
loc_b7ba:
	lda.w $0018,x                ; b7ba: bd 18 00
	lsr                          ; b7bd: 4a
	lsr                          ; b7be: 4a
	lsr                          ; b7bf: 4a
	inc                          ; b7c0: 1a
	sta $54                      ; b7c1: 85 54
	stz $55                      ; b7c3: 64 55
	lda.b #$00                   ; b7c5: a9 00
	xba                          ; b7c7: eb
	lda.w $0018,x                ; b7c8: bd 18 00
	lsr                          ; b7cb: 4a
	rep #$20                     ; b7cc: c2 20
	clc                          ; b7ce: 18
	adc $1b91                    ; b7cf: 6d 91 1b
	sta $57                      ; b7d2: 85 57
	clc                          ; b7d4: 18
	adc $57                      ; b7d5: 65 57
	dec $54                      ; b7d7: c6 54
	.db $d0, $f9                 ; b7d9: d0 f9
loc_b7db:
	sta $57                      ; b7db: 85 57
	sep #$20                     ; b7dd: e2 20
	sep #$10                     ; b7df: e2 10
	ldx $41                      ; b7e1: a6 41
	txy                          ; b7e3: 9b
	lda $1b8b,x                  ; b7e4: bd 8b 1b
	.db $f0, $01                 ; b7e7: f0 01
loc_b7e9:
	iny                          ; b7e9: c8
loc_b7ea:
	inx                          ; b7ea: e8
	cpx.b #$05                   ; b7eb: e0 05
	.db $d0, $f5                 ; b7ed: d0 f5
loc_b7ef:
	rep #$10                     ; b7ef: c2 10
	lda $1bbb                    ; b7f1: ad bb 1b
	.db $f0, $08                 ; b7f4: f0 08
loc_b7f6:
	rep #$20                     ; b7f6: c2 20
	lda $57                      ; b7f8: a5 57
	lsr                          ; b7fa: 4a
	lsr                          ; b7fb: 4a
	.db $80, $04                 ; b7fc: 80 04
loc_b7fe:
	rep #$20                     ; b7fe: c2 20
	lda $57                      ; b800: a5 57
loc_b802:
	sta $45                      ; b802: 85 45
	sep #$20                     ; b804: e2 20
	lda.b #$00                   ; b806: a9 00
	jsr $b811                    ; b808: 20 11 b8
loc_b80b:
	inc                          ; b80b: 1a
	cmp.b #$05                   ; b80c: c9 05
	.db $d0, $f8                 ; b80e: d0 f8
loc_b810:
	rts                          ; b810: 60

; --- Block at $b811-$b849 ---
loc_b811:
	pha                          ; b811: 48
	sta $1bbc                    ; b812: 8d bc 1b
	jsr $87b4                    ; b815: 20 b4 87
loc_b818:
	lda $1b8b,x                  ; b818: bd 8b 1b
	.db $f0, $2b                 ; b81b: f0 2b
loc_b81d:
	ldx $43                      ; b81d: a6 43
	lda $14ff9d,x                ; b81f: bf 9d ff 14
	jsr $9007                    ; b823: 20 07 90
loc_b826:
	lda.w $0003,x                ; b826: bd 03 00
	and.b #$c0                   ; b829: 29 c0
	.db $d0, $1b                 ; b82b: d0 1b
loc_b82d:
	lda $1bbc                    ; b82d: ad bc 1b
	jsr $b977                    ; b830: 20 77 b9
loc_b833:
	rep #$20                     ; b833: c2 20
	lda.w $0007,x                ; b835: bd 07 00
	clc                          ; b838: 18
	adc $45                      ; b839: 65 45
	cmp.w $0009,x                ; b83b: dd 09 00
	.db $90, $03                 ; b83e: 90 03
loc_b840:
	lda.w $0009,x                ; b840: bd 09 00
loc_b843:
	sta.w $0007,x                ; b843: 9d 07 00
	sep #$20                     ; b846: e2 20
loc_b848:
	pla                          ; b848: 68
	rts                          ; b849: 60

; --- Block at $b955-$b95e ---
loc_b955:
	rep #$20                     ; b955: c2 20
	lda.w #$0257                 ; b957: a9 57 02
	ldx.b #$00                   ; b95a: a2 00
	ora $a0,s                    ; b95c: 03 a0
	brk #$a2                     ; b95e: 00 a2

; --- Block at $b977-$b97f ---
loc_b977:
	sta $43                      ; b977: 85 43
	ldx $43                      ; b979: a6 43
	lda $14ff9d,x                ; b97b: bf 9d ff 14
	jmp $9007                    ; b97f: 4c 07 90

; --- Block at $b982-$b985 ---
loc_b982:
	jsr $b4f6                    ; b982: 20 f6 b4
loc_b985:
	jmp $8758                    ; b985: 4c 58 87

; --- Block at $b988-$b9bc ---
loc_b988:
	lda $1a04                    ; b988: ad 04 1a
	and.b #$10                   ; b98b: 29 10
	.db $f0, $f3                 ; b98d: f0 f3
loc_b98f:
	lda.b #$03                   ; b98f: a9 03
	.db $80, $14                 ; b991: 80 14
	lda $1a04                    ; b993: ad 04 1a
	and.b #$20                   ; b996: 29 20
	.db $f0, $e8                 ; b998: f0 e8
loc_b99a:
	lda.b #$04                   ; b99a: a9 04
	.db $80, $09                 ; b99c: 80 09
	lda $1a04                    ; b99e: ad 04 1a
	and.b #$40                   ; b9a1: 29 40
	.db $f0, $dd                 ; b9a3: f0 dd
loc_b9a5:
	lda.b #$05                   ; b9a5: a9 05
loc_b9a7:
	sta $1a03                    ; b9a7: 8d 03 1a
	jsr $b9dc                    ; b9aa: 20 dc b9
loc_b9ad:
	rep #$20                     ; b9ad: c2 20
	sta.w $000b,x                ; b9af: 9d 0b 00
	sep #$20                     ; b9b2: e2 20
	jsl $1efdb6                  ; b9b4: 22 b6 fd 1e
loc_b9b8:
	ldx $1a65                    ; b9b8: ae 65 1a
	txs                          ; b9bb: 9a
	rts                          ; b9bc: 60

; --- Block at $b9bf-$b9db ---
loc_b9bf:
	pha                          ; b9bf: 48
	jsr $87b4                    ; b9c0: 20 b4 87
loc_b9c3:
	lda $1b8b,x                  ; b9c3: bd 8b 1b
	.db $f0, $0d                 ; b9c6: f0 0d
loc_b9c8:
	pla                          ; b9c8: 68
	pha                          ; b9c9: 48
	jsr $b977                    ; b9ca: 20 77 b9
loc_b9cd:
	lda.w $0004,x                ; b9cd: bd 04 00
	ora.b #$40                   ; b9d0: 09 40
	sta.w $0004,x                ; b9d2: 9d 04 00
loc_b9d5:
	pla                          ; b9d5: 68
loc_b9d6:
	inc                          ; b9d6: 1a
	cmp.b #$05                   ; b9d7: c9 05
	.db $d0, $e4                 ; b9d9: d0 e4
loc_b9db:
	rts                          ; b9db: 60

; --- Block at $b9dc-$b9f0 ---
loc_b9dc:
	lda $e8                      ; b9dc: a5 e8
	jsr $9007                    ; b9de: 20 07 90
loc_b9e1:
	lda $1b93                    ; b9e1: ad 93 1b
	sta $43                      ; b9e4: 85 43
	rep #$20                     ; b9e6: c2 20
	lda.w $000b,x                ; b9e8: bd 0b 00
	sec                          ; b9eb: 38
	sbc $43                      ; b9ec: e5 43
	sep #$20                     ; b9ee: e2 20
	rts                          ; b9f0: 60

; --- Block at $b9f1-$ba04 ---
loc_b9f1:
	phb                          ; b9f1: 8b
	phd                          ; b9f2: 0b
	jsr $873a                    ; b9f3: 20 3a 87
loc_b9f6:
	jsr $ba05                    ; b9f6: 20 05 ba
loc_b9f9:
	jsr $873f                    ; b9f9: 20 3f 87
loc_b9fc:
	tdc                          ; b9fc: 7b
	sta.l $001b49                ; b9fd: 8f 49 1b 00
	xba                          ; ba01: eb
	pld                          ; ba02: 2b
	plb                          ; ba03: ab
	rts                          ; ba04: 60

; --- Block at $ba05-$ba58 ---
loc_ba05:
	jsr $8c7f                    ; ba05: 20 7f 8c
loc_ba08:
	lda.b #$7e                   ; ba08: a9 7e
	pha                          ; ba0a: 48
	plb                          ; ba0b: ab
	inc $1b49                    ; ba0c: ee 49 1b
	jsr $8488                    ; ba0f: 20 88 84
loc_ba12:
	jsr $8d2f                    ; ba12: 20 2f 8d
loc_ba15:
	jsr $8d6c                    ; ba15: 20 6c 8d
loc_ba18:
	ldy.b #$ae                   ; ba18: a0 ae
	jml [$d920]                  ; ba1a: dc 20 d9
	.db $80, $a0                 ; ba1d: 80 a0
	adc $dc                      ; ba1f: 65 dc
	jsr $82fb                    ; ba21: 20 fb 82
loc_ba24:
	ldx.b #$88                   ; ba24: a2 88
	ora ($a0,x)                  ; ba26: 01 a0
	tya                          ; ba28: 98
	jml [$9820]                  ; ba29: dc 20 98
	sta [$20]                    ; ba2c: 87 20
	ldx.b #$8d                   ; ba2e: a2 8d
	jsr $98cf                    ; ba30: 20 cf 98
loc_ba33:
	jsr $bab3                    ; ba33: 20 b3 ba
loc_ba36:
	lda.b #$ff                   ; ba36: a9 ff
	sta $1b4a                    ; ba38: 8d 4a 1b
	jsr $9443                    ; ba3b: 20 43 94
loc_ba3e:
	jsr $bbb6                    ; ba3e: 20 b6 bb
loc_ba41:
	jsr $824f                    ; ba41: 20 4f 82
loc_ba44:
	jsr $80b2                    ; ba44: 20 b2 80
loc_ba47:
	jsr $946a                    ; ba47: 20 6a 94
loc_ba4a:
	stz $1b48                    ; ba4a: 9c 48 1b
	lda $1b48                    ; ba4d: ad 48 1b
	.db $d0, $05                 ; ba50: d0 05
loc_ba52:
	ldx.b #$10                   ; ba52: a2 10
	.db $30, $80                 ; ba54: 30 80
loc_ba56:
	ora $a2,s                    ; ba56: 03 a2
	rti                          ; ba58: 40

; --- Block at $ba42-$ba4d ---
loc_ba42:
	eor $b22082                  ; ba42: 4f 82 20 b2
	.db $80, $20                 ; ba46: 80 20
	ror                          ; ba48: 6a
	sty $9c,x                    ; ba49: 94 9c
	pha                          ; ba4b: 48
	tcs                          ; ba4c: 1b

; --- Block at $ba57-$ba7c ---
loc_ba57:
	ldx.b #$40                   ; ba57: a2 40
	.db $30, $7b                 ; ba59: 30 7b
loc_ba5b:
	ldy.b #$00                   ; ba5b: a0 00
	ora $20,s                    ; ba5d: 03 20
	stx $82                      ; ba5f: 86 82
	jsr $bab3                    ; ba61: 20 b3 ba
loc_ba64:
	jsr $824c                    ; ba64: 20 4c 82
loc_ba67:
	jsr $9443                    ; ba67: 20 43 94
loc_ba6a:
	jsr $82c0                    ; ba6a: 20 c0 82
loc_ba6d:
	lda $00                      ; ba6d: a5 00
	and.b #$80                   ; ba6f: 29 80
	.db $f0, $0e                 ; ba71: f0 0e
loc_ba73:
	lda $1b48                    ; ba73: ad 48 1b
	.db $d0, $07                 ; ba76: d0 07
loc_ba78:
	stz $00                      ; ba78: 64 00
	stz $01                      ; ba7a: 64 01
	jmp $bad0                    ; ba7c: 4c d0 ba

; --- Block at $ba68-$ba6a ---
loc_ba68:
	eor $94,s                    ; ba68: 43 94

; --- Block at $ba7f-$ba81 ---
loc_ba7f:
	.db $80, $1a                 ; ba7f: 80 1a

; --- Block at $ba81-$ba98 ---
loc_ba81:
	lda $01                      ; ba81: a5 01
	and.b #$80                   ; ba83: 29 80
	.db $d0, $14                 ; ba85: d0 14
loc_ba87:
	lda $01                      ; ba87: a5 01
	and.b #$03                   ; ba89: 29 03
	.db $f0, $0b                 ; ba8b: f0 0b
loc_ba8d:
	inc $1b48                    ; ba8d: ee 48 1b
	lda $1b48                    ; ba90: ad 48 1b
	and.b #$01                   ; ba93: 29 01
	sta $1b48                    ; ba95: 8d 48 1b

; --- Block at $ba96-$ba98 ---
loc_ba96:
	pha                          ; ba96: 48
	tcs                          ; ba97: 1b
	jmp $ba4d                    ; ba98: 4c 4d ba

; --- Block at $ba9b-$bab0 ---
loc_ba9b:
	ldy.b #$ae                   ; ba9b: a0 ae
	jml [$d920]                  ; ba9d: dc 20 d9
	.db $80, $a0                 ; baa0: 80 a0
	lda ($dc,x)                  ; baa2: a1 dc
	jsr $8301                    ; baa4: 20 01 83
loc_baa7:
	jsr $818a                    ; baa7: 20 8a 81
loc_baaa:
	jsr $9443                    ; baaa: 20 43 94
loc_baad:
	jsr $8336                    ; baad: 20 36 83
loc_bab0:
	jmp $9484                    ; bab0: 4c 84 94

; --- Block at $bab3-$bb1b ---
loc_bab3:
	jsr $d103                    ; bab3: 20 03 d1
loc_bab6:
	lda $1b4a                    ; bab6: ad 4a 1b
	.db $30, $0f                 ; bab9: 30 0f
loc_babb:
	sta $43                      ; babb: 85 43
	rep #$20                     ; babd: c2 20
	lda $43                      ; babf: a5 43
	asl                          ; bac1: 0a
	tax                          ; bac2: aa
	sep #$20                     ; bac3: e2 20
	lda.b #$08                   ; bac5: a9 08
	sta $1b4b,x                  ; bac7: 9d 4b 1b
loc_baca:
	ldx.b #$88                   ; baca: a2 88
	and $4c                      ; bacc: 25 4c
	pla                          ; bace: 68
	sta ($64,s),y                ; bacf: 93 64
	eor $a5                      ; bad1: 45 a5
	eor $20                      ; bad3: 45 20
	sbc ($a8),y                  ; bad5: f1 a8
	.db $d0, $0c                 ; bad7: d0 0c
loc_bad9:
	inc $45                      ; bad9: e6 45
	lda $45                      ; badb: a5 45
	cmp.b #$05                   ; badd: c9 05
	.db $d0, $f1                 ; badf: d0 f1
loc_bae1:
	stz $45                      ; bae1: 64 45
	.db $80, $ed                 ; bae3: 80 ed
loc_bae5:
	lda $45                      ; bae5: a5 45
	sta $1b4a                    ; bae7: 8d 4a 1b
	lda.b #$01                   ; baea: a9 01
	sta $1a73                    ; baec: 8d 73 1a
	ldy.b #$ae                   ; baef: a0 ae
	jml [$d920]                  ; baf1: dc 20 d9
	.db $80, $a0                 ; baf4: 80 a0
	.db $82, $dc, $20            ; baf6: 82 dc 20
	ora ($83,x)                  ; baf9: 01 83
	ldy.b #$b2                   ; bafb: a0 b2
	jml [$d920]                  ; bafd: dc 20 d9
	.db $80, $20                 ; bb00: 80 20
	txa                          ; bb02: 8a
	sta ($20,x)                  ; bb03: 81 20
	eor $94,s                    ; bb05: 43 94
	jsr $bab3                    ; bb07: 20 b3 ba
loc_bb0a:
	lda $1b4a                    ; bb0a: ad 4a 1b
	jsr $9007                    ; bb0d: 20 07 90
loc_bb10:
	stx $60                      ; bb10: 86 60
	lda ($60)                    ; bb12: b2 60
	ldy.b #$52                   ; bb14: a0 52
	ora ($20,x)                  ; bb16: 01 20
	plb                          ; bb18: ab
	sta $20,s                    ; bb19: 83 20
	rti                          ; bb1b: 40

; --- Block at $bad0-$bad2 ---
loc_bad0:
	stz $45                      ; bad0: 64 45

; --- Block at $bad2-$bad7 ---
loc_bad2:
	lda $45                      ; bad2: a5 45
	jsr $a8f1                    ; bad4: 20 f1 a8

; --- Block at $bad6-$bad7 ---
loc_bad6:
	tay                          ; bad6: a8

; --- Block at $bb22-$bb6c ---
loc_bb22:
	.db $82, $a5, $01            ; bb22: 82 a5 01
	and.b #$01                   ; bb25: 29 01
	.db $f0, $1c                 ; bb27: f0 1c
loc_bb29:
	lda.b #$01                   ; bb29: a9 01
	sta $1a73                    ; bb2b: 8d 73 1a
	lda $1b4a                    ; bb2e: ad 4a 1b
	inc                          ; bb31: 1a
	cmp.b #$05                   ; bb32: c9 05
	.db $d0, $01                 ; bb34: d0 01
loc_bb36:
	tdc                          ; bb36: 7b
loc_bb37:
	sta $1b4a                    ; bb37: 8d 4a 1b
	jsr $9007                    ; bb3a: 20 07 90
loc_bb3d:
	stx $45                      ; bb3d: 86 45
	lda ($45)                    ; bb3f: b2 45
	and.b #$3f                   ; bb41: 29 3f
	.db $f0, $e4                 ; bb43: f0 e4
loc_bb45:
	lda $01                      ; bb45: a5 01
	and.b #$02                   ; bb47: 29 02
	.db $f0, $1b                 ; bb49: f0 1b
loc_bb4b:
	lda.b #$01                   ; bb4b: a9 01
	sta $1a73                    ; bb4d: 8d 73 1a
	lda $1b4a                    ; bb50: ad 4a 1b
	dec                          ; bb53: 3a
	.db $10, $02                 ; bb54: 10 02
loc_bb56:
	lda.b #$04                   ; bb56: a9 04
loc_bb58:
	sta $1b4a                    ; bb58: 8d 4a 1b
	jsr $9007                    ; bb5b: 20 07 90
loc_bb5e:
	stx $45                      ; bb5e: 86 45
	lda ($45)                    ; bb60: b2 45
	and.b #$3f                   ; bb62: 29 3f
	.db $f0, $e5                 ; bb64: f0 e5
loc_bb66:
	lda $00                      ; bb66: a5 00
	and.b #$80                   ; bb68: 29 80
	.db $f0, $03                 ; bb6a: f0 03
loc_bb6c:
	jmp $bb7b                    ; bb6c: 4c 7b bb

; --- Block at $bb6f-$bb75 ---
loc_bb6f:
	lda $01                      ; bb6f: a5 01
	and.b #$80                   ; bb71: 29 80
	.db $f0, $03                 ; bb73: f0 03
loc_bb75:
	jmp $ba9b                    ; bb75: 4c 9b ba

; --- Block at $bb78-$bb78 ---
loc_bb78:
	jmp $bb07                    ; bb78: 4c 07 bb

; --- Block at $bb7b-$bbb5 ---
loc_bb7b:
	lda $1b4a                    ; bb7b: ad 4a 1b
	jsr $a8f1                    ; bb7e: 20 f1 a8
loc_bb81:
	dec                          ; bb81: 3a
	jsr $87b4                    ; bb82: 20 b4 87
loc_bb85:
	lda $018457,x                ; bb85: bf 57 84 01
	sta $43                      ; bb89: 85 43
	rep #$20                     ; bb8b: c2 20
	lda $43                      ; bb8d: a5 43
	asl                          ; bb8f: 0a
	sta $45                      ; bb90: 85 45
	asl                          ; bb92: 0a
	adc $45                      ; bb93: 65 45
	adc.w #$1500                 ; bb95: 69 00 15
	tax                          ; bb98: aa
	lda.w #$0005                 ; bb99: a9 05 00
	ldy.b #$0a                   ; bb9c: a0 0a
	tcs                          ; bb9e: 1b
	phy                          ; bb9f: 5a
	phx                          ; bba0: da
	mvn $7e,$7e                  ; bba1: 54 7e 7e
	sep #$20                     ; bba4: e2 20
	jsr $9b67                    ; bba6: 20 67 9b
loc_bba9:
	ply                          ; bba9: 7a
	plx                          ; bbaa: fa
	rep #$20                     ; bbab: c2 20
	lda.w #$0005                 ; bbad: a9 05 00
	mvn $7e,$7e                  ; bbb0: 54 7e 7e
	sep #$20                     ; bbb3: e2 20
	rts                          ; bbb5: 60

; --- Block at $bbb6-$bbdc ---
loc_bbb6:
	rep #$20                     ; bbb6: c2 20
	lda.w #$000f                 ; bbb8: a9 0f 00
	ldx.b #$30                   ; bbbb: a2 30
	sta ($a0,x)                  ; bbbd: 81 a0
	jsr $54a1                    ; bbbf: 20 a1 54
loc_bbc2:
	ror $e20d,x                  ; bbc2: 7e 0d e2
	jsr $80a0                    ; bbc5: 20 a0 80
loc_bbc8:
	sbc ($4c,s),y                ; bbc8: f3 4c
	ror                          ; bbca: 6a
	.db $d0, $ee                 ; bbcb: d0 ee
loc_bbcd:
	ora $279c1b,x                ; bbcd: 1f 1b 9c 27
	tcs                          ; bbd1: 1b
	jsr $8a54                    ; bbd2: 20 54 8a
loc_bbd5:
	lda $e8                      ; bbd5: a5 e8
	.db $10, $04                 ; bbd7: 10 04
loc_bbd9:
	stz $1b1f                    ; bbd9: 9c 1f 1b
	rts                          ; bbdc: 60

; --- Block at $bbbc-$bbc2 ---
loc_bbbc:
	.db $30, $81                 ; bbbc: 30 81
loc_bbbe:
	ldy.b #$20                   ; bbbe: a0 20
	lda ($54,x)                  ; bbc0: a1 54

; --- Block at $bbc7-$bbc9 ---
loc_bbc7:
	.db $80, $f3                 ; bbc7: 80 f3
	jmp $d06a                    ; bbc9: 4c 6a d0

; --- Block at $bbdd-$bc62 ---
loc_bbdd:
	stz $1bad                    ; bbdd: 9c ad 1b
	jsr $8d6c                    ; bbe0: 20 6c 8d
loc_bbe3:
	jsr $94af                    ; bbe3: 20 af 94
loc_bbe6:
	lda.w #$8530                 ; bbe6: a9 30 85
	cmp ($85,x)                  ; bbe9: c1 85
	and $85e8a5,x                ; bbeb: 3f a5 e8 85
	cmp ($20,s),y                ; bbef: d3 20
	sta ($89)                    ; bbf1: 92 89
	jsr $824c                    ; bbf3: 20 4c 82
loc_bbf6:
	lda $e8                      ; bbf6: a5 e8
	jsr $8948                    ; bbf8: 20 48 89
loc_bbfb:
	rep #$20                     ; bbfb: c2 20
	tya                          ; bbfd: 98
	sep #$20                     ; bbfe: e2 20
	sta $ba                      ; bc00: 85 ba
	xba                          ; bc02: eb
	sta $bc                      ; bc03: 85 bc
	stz $b9                      ; bc05: 64 b9
	stz $bb                      ; bc07: 64 bb
	lda.b #$79                   ; bc09: a9 79
	sta.l $00210a                ; bc0b: 8f 0a 21 00 ; BG4SC
	lda.b #$82                   ; bc0f: a9 82
	sta $ae                      ; bc11: 85 ae
	lda.b #$28                   ; bc13: a9 28
	sta $c2                      ; bc15: 85 c2
	sta $d2                      ; bc17: 85 d2
	lda $e7                      ; bc19: a5 e7
	sta $b7                      ; bc1b: 85 b7
	sta $c0                      ; bc1d: 85 c0
	ldx.b #$34                   ; bc1f: a2 34
	sta $86,x                    ; bc21: 95 86
	.db $d0, $a2                 ; bc23: d0 a2
loc_bc25:
	eor $cd8682                  ; bc25: 4f 82 86 cd
	jsr $846d                    ; bc29: 20 6d 84
loc_bc2c:
	jsr $88bf                    ; bc2c: 20 bf 88
loc_bc2f:
	jsr $944d                    ; bc2f: 20 4d 94
loc_bc32:
	lda $e7                      ; bc32: a5 e7
	asl                          ; bc34: 0a
	sta $43                      ; bc35: 85 43
	ldx $43                      ; bc37: a6 43
	rep #$20                     ; bc39: c2 20
	lda $01d99d,x                ; bc3b: bf 9d d9 01
	tax                          ; bc3f: aa
	sep #$20                     ; bc40: e2 20
	ldy.b #$1e                   ; bc42: a0 1e
	cld                          ; bc44: d8
	phx                          ; bc45: da
	phy                          ; bc46: 5a
	jsr $84d0                    ; bc47: 20 d0 84
loc_bc4a:
	jsr $bcce                    ; bc4a: 20 ce bc
loc_bc4d:
	lda $e8                      ; bc4d: a5 e8
	jsl $038006                  ; bc4f: 22 06 80 03
loc_bc53:
	jsr $a2b4                    ; bc53: 20 b4 a2
loc_bc56:
	jsr $8d42                    ; bc56: 20 42 8d
loc_bc59:
	jsr $9440                    ; bc59: 20 40 94
loc_bc5c:
	rep #$20                     ; bc5c: c2 20
	ldx.b #$00                   ; bc5e: a2 00
	inc $a0,x                    ; bc60: f6 a0
	brk #$c6                     ; bc62: 00 c6

; --- Block at $bcca-$bccd ---
loc_bcca:
	stz $1b1f                    ; bcca: 9c 1f 1b
	rts                          ; bccd: 60

; --- Block at $bcce-$bcdc ---
loc_bcce:
	jsr $84b7                    ; bcce: 20 b7 84
loc_bcd1:
	lda $1bad                    ; bcd1: ad ad 1b
	.db $d0, $10                 ; bcd4: d0 10
loc_bcd6:
	rep #$20                     ; bcd6: c2 20
	ldx.b #$00                   ; bcd8: a2 00
	ldx $a0                      ; bcda: a6 a0
	brk #$f6                     ; bcdc: 00 f6

; --- Block at $bce6-$bcfb ---
loc_bce6:
	ldy.b #$bb                   ; bce6: a0 bb
	cmp $fb20,y                  ; bce8: d9 20 fb
	.db $82, $a5, $e8            ; bceb: 82 a5 e8
	jsr $9007                    ; bcee: 20 07 90
loc_bcf1:
	stx $60                      ; bcf1: 86 60
	lda $e8                      ; bcf3: a5 e8
	jsl $038006                  ; bcf5: 22 06 80 03
loc_bcf9:
	ldy.b #$1d                   ; bcf9: a0 1d
	brk #$b1                     ; bcfb: 00 b1

; --- Block at $bf7d-$bf8a ---
loc_bf7d:
	stz $01eb                    ; bf7d: 9c eb 01
	cmp.b #$b0                   ; bf80: c9 b0
	.db $b0, $05                 ; bf82: b0 05
loc_bf84:
	jsr $bff1                    ; bf84: 20 f1 bf
loc_bf87:
	.db $b0, $02                 ; bf87: b0 02
loc_bf89:
	clc                          ; bf89: 18
	rts                          ; bf8a: 60

; --- Block at $bf8b-$bf90 ---
loc_bf8b:
	jsr $c24c                    ; bf8b: 20 4c c2
loc_bf8e:
	.db $b0, $01                 ; bf8e: b0 01
loc_bf90:
	rts                          ; bf90: 60

; --- Block at $bf8c-$bf8c ---
loc_bf8c:
	jmp $b0c2                    ; bf8c: 4c c2 b0

; --- Block at $bf91-$bf98 ---
loc_bf91:
	lda $1b37                    ; bf91: ad 37 1b
	cmp.b #$02                   ; bf94: c9 02
	.db $90, $01                 ; bf96: 90 01
loc_bf98:
	rts                          ; bf98: 60

; --- Block at $bf99-$bfc7 ---
loc_bf99:
	lda ($e5)                    ; bf99: b2 e5
	and.b #$c0                   ; bf9b: 29 c0
	cmp.b #$c0                   ; bf9d: c9 c0
	.db $f0, $10                 ; bf9f: f0 10
loc_bfa1:
	clc                          ; bfa1: 18
	rol                          ; bfa2: 2a
	rol                          ; bfa3: 2a
	rol                          ; bfa4: 2a
	jsr $87b4                    ; bfa5: 20 b4 87
loc_bfa8:
	lda $01bfcd,x                ; bfa8: bf cd bf 01
	cmp $1b37                    ; bfac: cd 37 1b
	.db $d0, $09                 ; bfaf: d0 09
loc_bfb1:
	lda $1b39                    ; bfb1: ad 39 1b
	ldx.b #$00                   ; bfb4: a2 00
	eor $bfe14c,x                ; bfb6: 5f 4c e1 bf
loc_bfba:
	lda $1b39                    ; bfba: ad 39 1b
	ldx.b #$4d                   ; bfbd: a2 4d
	eor $bfe120,x                ; bfbf: 5f 20 e1 bf
	.db $b0, $06                 ; bfc3: b0 06
loc_bfc5:
	ldx.b #$61                   ; bfc5: a2 61
	jmp ($e14c)                  ; bfc7: 6c 4c e1

; --- Block at $bfcb-$bfcc ---
loc_bfcb:
	sec                          ; bfcb: 38
	rts                          ; bfcc: 60

; --- Block at $bfd1-$bfdf ---
loc_bfd1:
	ldx.b #$81                   ; bfd1: a2 81
	txy                          ; bfd3: 9b
	.db $80, $08                 ; bfd4: 80 08
loc_bfd6:
	ldx.b #$9c                   ; bfd6: a2 9c
	lda $a20380                  ; bfd8: af 80 03 a2
	adc $ad80                    ; bfdc: 6d 80 ad

; --- Block at $bfdb-$bfed ---
loc_bfdb:
	ldx.b #$6d                   ; bfdb: a2 6d
	.db $80, $ad                 ; bfdd: 80 ad
	and $861b,y                  ; bfdf: 39 1b 86
	eor $c5                      ; bfe2: 45 c5
	eor $90                      ; bfe4: 45 90
	php                          ; bfe6: 08
	cmp $46                      ; bfe7: c5 46
	.db $f0, $02                 ; bfe9: f0 02
loc_bfeb:
	.db $b0, $02                 ; bfeb: b0 02

; --- Block at $bfde-$bfe7 ---
loc_bfde:
	lda $1b39                    ; bfde: ad 39 1b
	stx $45                      ; bfe1: 86 45
	cmp $45                      ; bfe3: c5 45
	.db $90, $08                 ; bfe5: 90 08

; --- Block at $bfed-$bfee ---
loc_bfed:
	sec                          ; bfed: 38
	rts                          ; bfee: 60

; --- Block at $bfef-$bff0 ---
loc_bfef:
	clc                          ; bfef: 18
	rts                          ; bff0: 60

; --- Block at $bff1-$c029 ---
loc_bff1:
	sta $1b39                    ; bff1: 8d 39 1b
	.db $f0, $f7                 ; bff4: f0 f7
loc_bff6:
	lda $1b37                    ; bff6: ad 37 1b
	jsr $87b4                    ; bff9: 20 b4 87
loc_bffc:
	lda $01c0a8,x                ; bffc: bf a8 c0 01
	sta $1b3a                    ; c000: 8d 3a 1b
	cmp.b #$30                   ; c003: c9 30
	.db $f0, $d4                 ; c005: f0 d4
loc_c007:
	cmp.b #$31                   ; c007: c9 31
	.db $f0, $c6                 ; c009: f0 c6
loc_c00b:
	cmp.b #$32                   ; c00b: c9 32
	.db $f0, $c7                 ; c00d: f0 c7
loc_c00f:
	lda $1b39                    ; c00f: ad 39 1b
	lda $1b37                    ; c012: ad 37 1b
	.db $f0, $04                 ; c015: f0 04
loc_c017:
	lda.b #$33                   ; c017: a9 33
	.db $80, $02                 ; c019: 80 02
loc_c01b:
	lda.b #$35                   ; c01b: a9 35
loc_c01d:
	sta $43                      ; c01d: 85 43
	ldy $43                      ; c01f: a4 43
	lda ($e5),y                  ; c021: b1 e5
	sta $1b38                    ; c023: 8d 38 1b
	.db $d0, $02                 ; c026: d0 02
loc_c028:
	sec                          ; c028: 38
	rts                          ; c029: 60

; --- Block at $c02a-$c02c ---
loc_c02a:
	ldx.b #$44                   ; c02a: a2 44
	jmp $e120                    ; c02c: 4c 20 e1

; --- Block at $c20f-$c212 ---
loc_c20f:
	phy                          ; c20f: 5a
	ldy.b #$30                   ; c210: a0 30
	brk #$a6                     ; c212: 00 a6

; --- Block at $c24c-$c274 ---
loc_c24c:
	lda.w #$eb00                 ; c24c: a9 00 eb
	lda $1b39                    ; c24f: ad 39 1b
	cmp.w #$b0b0                 ; c252: c9 b0 b0
	dec                          ; c255: 3a
	rep #$20                     ; c256: c2 20
	asl                          ; c258: 0a
	asl                          ; c259: 0a
	asl                          ; c25a: 0a
	tax                          ; c25b: aa
	sep #$20                     ; c25c: e2 20
	lda $0f9106,x                ; c25e: bf 06 91 0f
	and.b #$1f                   ; c262: 29 1f
	asl                          ; c264: 0a
	jsr $87b4                    ; c265: 20 b4 87
loc_c268:
	rep #$20                     ; c268: c2 20
	lda $0fa550,x                ; c26a: bf 50 a5 0f
	sta $45                      ; c26e: 85 45
	sep #$20                     ; c270: e2 20
	ldy.b #$01                   ; c272: a0 01
	brk #$b1                     ; c274: 00 b1

; --- Block at $c296-$c2e2 ---
loc_c296:
	phb                          ; c296: 8b
	phd                          ; c297: 0b
	ldx.b #$00                   ; c298: a2 00
	ora ($da,x)                  ; c29a: 01 da
	pld                          ; c29c: 2b
	lda.b #$7e                   ; c29d: a9 7e
	pha                          ; c29f: 48
	plb                          ; c2a0: ab
	jsr $873a                    ; c2a1: 20 3a 87
loc_c2a4:
	jsr $8c7f                    ; c2a4: 20 7f 8c
loc_c2a7:
	ldx.b #$00                   ; c2a7: a2 00
	sbc $1d8e                    ; c2a9: ed 8e 1d
	tcs                          ; c2ac: 1b
	lda.b #$20                   ; c2ad: a9 20
	sta $c1                      ; c2af: 85 c1
	stz $1b79                    ; c2b1: 9c 79 1b
	stz $1b7a                    ; c2b4: 9c 7a 1b
	jsr $94aa                    ; c2b7: 20 aa 94
loc_c2ba:
	lda.b #$20                   ; c2ba: a9 20
	sta $3f                      ; c2bc: 85 3f
	stz $1b94                    ; c2be: 9c 94 1b
	jsr $8d2f                    ; c2c1: 20 2f 8d
loc_c2c4:
	jsr $8d6c                    ; c2c4: 20 6c 8d
loc_c2c7:
	jsr $9417                    ; c2c7: 20 17 94
loc_c2ca:
	jsr $824f                    ; c2ca: 20 4f 82
loc_c2cd:
	jsr $cad8                    ; c2cd: 20 d8 ca
loc_c2d0:
	lda.b #$0a                   ; c2d0: a9 0a
	sta $1b7c                    ; c2d2: 8d 7c 1b
	jsr $c334                    ; c2d5: 20 34 c3
loc_c2d8:
	jsr $9484                    ; c2d8: 20 84 94
loc_c2db:
	jsr $873f                    ; c2db: 20 3f 87
loc_c2de:
	tdc                          ; c2de: 7b
	xba                          ; c2df: eb
	pld                          ; c2e0: 2b
	plb                          ; c2e1: ab
	rts                          ; c2e2: 60

; --- Block at $c2e3-$c321 ---
loc_c2e3:
	jsr $8488                    ; c2e3: 20 88 84
loc_c2e6:
	ldx.b #$c0                   ; c2e6: a2 c0
	pha                          ; c2e8: 48
	stx $1a71                    ; c2e9: 8e 71 1a
	jsr $98b9                    ; c2ec: 20 b9 98
loc_c2ef:
	jsr $91d4                    ; c2ef: 20 d4 91
loc_c2f2:
	ldy.b #$c5                   ; c2f2: a0 c5
	phx                          ; c2f4: da
	jsr $80d9                    ; c2f5: 20 d9 80
loc_c2f8:
	jsr $c3c1                    ; c2f8: 20 c1 c3
loc_c2fb:
	ldy.b #$c9                   ; c2fb: a0 c9
	phx                          ; c2fd: da
	jsr $80d9                    ; c2fe: 20 d9 80
loc_c301:
	ldy.b #$cd                   ; c301: a0 cd
	phx                          ; c303: da
	jsr $80d9                    ; c304: 20 d9 80
loc_c307:
	ldy.b #$d1                   ; c307: a0 d1
	phx                          ; c309: da
	jsr $80d9                    ; c30a: 20 d9 80
loc_c30d:
	lda.b #$00                   ; c30d: a9 00
	xba                          ; c30f: eb
	lda $1a01                    ; c310: ad 01 1a
	asl                          ; c313: 0a
	asl                          ; c314: 0a
	asl                          ; c315: 0a
	rep #$20                     ; c316: c2 20
	clc                          ; c318: 18
	adc.w #$dadd                 ; c319: 69 dd da
	tay                          ; c31c: a8
	sep #$20                     ; c31d: e2 20
	ldx.b #$44                   ; c31f: a2 44
	brk #$20                     ; c321: 00 20

; --- Block at $c32b-$c331 ---
loc_c32b:
	jsr $c2e3                    ; c32b: 20 e3 c2
loc_c32e:
	ldy.b #$d9                   ; c32e: a0 d9
	phx                          ; c330: da
	jmp $80d9                    ; c331: 4c d9 80

; --- Block at $c334-$c3a8 ---
loc_c334:
	jsr $8da2                    ; c334: 20 a2 8d
loc_c337:
	jsr $c32b                    ; c337: 20 2b c3
loc_c33a:
	jsr $9440                    ; c33a: 20 40 94
loc_c33d:
	jsr $946a                    ; c33d: 20 6a 94
loc_c340:
	.db $80, $0f                 ; c340: 80 0f
	jsr $8d2f                    ; c342: 20 2f 8d
loc_c345:
	jsr $c32b                    ; c345: 20 2b c3
loc_c348:
	jsr $944d                    ; c348: 20 4d 94
loc_c34b:
	jsr $9433                    ; c34b: 20 33 94
loc_c34e:
	jsr $9440                    ; c34e: 20 40 94
loc_c351:
	lda $1b79                    ; c351: ad 79 1b
	asl                          ; c354: 0a
	asl                          ; c355: 0a
	asl                          ; c356: 0a
	sta $45                      ; c357: 85 45
	asl                          ; c359: 0a
	asl                          ; c35a: 0a
	adc $45                      ; c35b: 65 45
	adc.b #$08                   ; c35d: 69 08
	sta $45                      ; c35f: 85 45
	lda.b #$30                   ; c361: a9 30
	sta $46                      ; c363: 85 46
	jsr $8281                    ; c365: 20 81 82
loc_c368:
	jsr $9224                    ; c368: 20 24 92
loc_c36b:
	jsr $824c                    ; c36b: 20 4c 82
loc_c36e:
	jsr $9443                    ; c36e: 20 43 94
loc_c371:
	jsr $80b2                    ; c371: 20 b2 80
loc_c374:
	jsr $82c0                    ; c374: 20 c0 82
loc_c377:
	lda $01                      ; c377: a5 01
	and.b #$01                   ; c379: 29 01
	.db $f0, $0d                 ; c37b: f0 0d
loc_c37d:
	lda $1b79                    ; c37d: ad 79 1b
	inc                          ; c380: 1a
	cmp.b #$03                   ; c381: c9 03
	.db $d0, $02                 ; c383: d0 02
loc_c385:
	lda.b #$00                   ; c385: a9 00
loc_c387:
	sta $1b79                    ; c387: 8d 79 1b
loc_c38a:
	lda $01                      ; c38a: a5 01
	and.b #$02                   ; c38c: 29 02
	.db $f0, $0b                 ; c38e: f0 0b
loc_c390:
	lda $1b79                    ; c390: ad 79 1b
	dec                          ; c393: 3a
	.db $10, $02                 ; c394: 10 02
loc_c396:
	lda.b #$02                   ; c396: a9 02
loc_c398:
	sta $1b79                    ; c398: 8d 79 1b
loc_c39b:
	lda $00                      ; c39b: a5 00
	and.b #$80                   ; c39d: 29 80
	.db $f0, $16                 ; c39f: f0 16
loc_c3a1:
	lda $1b79                    ; c3a1: ad 79 1b
	cmp.b #$02                   ; c3a4: c9 02
	.db $d0, $01                 ; c3a6: d0 01
loc_c3a8:
	rts                          ; c3a8: 60

; --- Block at $c3a9-$c3b4 ---
loc_c3a9:
	pha                          ; c3a9: 48
	pla                          ; c3aa: 68
	ldx.b #$d6                   ; c3ab: a2 d6
	cmp $20,s                    ; c3ad: c3 20
	phk                          ; c3af: 4b
	sta $20,s                    ; c3b0: 83 20
	ldy $a2,x                    ; c3b2: b4 a2
	jmp $c342                    ; c3b4: 4c 42 c3

; --- Block at $c3b7-$c3bd ---
loc_c3b7:
	lda $01                      ; c3b7: a5 01
	and.b #$80                   ; c3b9: 29 80
	.db $f0, $01                 ; c3bb: f0 01
loc_c3bd:
	rts                          ; c3bd: 60

; --- Block at $c3be-$c3be ---
loc_c3be:
	jmp $c351                    ; c3be: 4c 51 c3

; --- Block at $c3c1-$c3d3 ---
loc_c3c1:
	ldy.b #$30                   ; c3c1: a0 30
	stp                          ; c3c3: db
	jsr $8301                    ; c3c4: 20 01 83
loc_c3c7:
	jsr $8488                    ; c3c7: 20 88 84
loc_c3ca:
	ldy.b #$a6                   ; c3ca: a0 a6
	ora ($ad,x)                  ; c3cc: 01 ad
	ldx.b #$16                   ; c3ce: a2 16
	ldx $16a0                    ; c3d0: ae a0 16
	jmp $8fa8                    ; c3d3: 4c a8 8f

; --- Block at $c81e-$c843 ---
loc_c81e:
	lda.b #$20                   ; c81e: a9 20
	sta $3f                      ; c820: 85 3f
	lda $1b94                    ; c822: ad 94 1b
	asl                          ; c825: 0a
	asl                          ; c826: 0a
	asl                          ; c827: 0a
	asl                          ; c828: 0a
	adc.b #$58                   ; c829: 69 58
	sta $46                      ; c82b: 85 46
	lda $1b95                    ; c82d: ad 95 1b
	.db $f0, $04                 ; c830: f0 04
loc_c832:
	lda.b #$78                   ; c832: a9 78
	.db $80, $02                 ; c834: 80 02
loc_c836:
	lda.b #$08                   ; c836: a9 08
loc_c838:
	sta $45                      ; c838: 85 45
	jsr $8281                    ; c83a: 20 81 82
loc_c83d:
	jsr $824c                    ; c83d: 20 4c 82
loc_c840:
	jsr $82c0                    ; c840: 20 c0 82

; --- Block at $c843-$c84a ---
loc_c843:
	lda $01                      ; c843: a5 01
	and.b #$80                   ; c845: 29 80
	.db $f0, $02                 ; c847: f0 02
loc_c849:
	clc                          ; c849: 18
	rts                          ; c84a: 60

; --- Block at $c84b-$c8b6 ---
loc_c84b:
	lda $00                      ; c84b: a5 00
	and.b #$80                   ; c84d: 29 80
	.db $f0, $27                 ; c84f: f0 27
loc_c851:
	jsr $c90b                    ; c851: 20 0b c9
loc_c854:
	.db $90, $15                 ; c854: 90 15
loc_c856:
	jsr $8d6c                    ; c856: 20 6c 8d
loc_c859:
	jsr $846d                    ; c859: 20 6d 84
loc_c85c:
	jsr $a14a                    ; c85c: 20 4a a1
loc_c85f:
	jsr $944d                    ; c85f: 20 4d 94
loc_c862:
	jsr $c3c7                    ; c862: 20 c7 c3
loc_c865:
	jsr $9440                    ; c865: 20 40 94
loc_c868:
	jsr $9423                    ; c868: 20 23 94
loc_c86b:
	lda.b #$20                   ; c86b: a9 20
	sta $3f                      ; c86d: 85 3f
	jsr $8488                    ; c86f: 20 88 84
loc_c872:
	ldy.b #$1c                   ; c872: a0 1c
	ora $20,s                    ; c874: 03 20
	lda [$a2],y                  ; c876: b7 a2
loc_c878:
	lda $01                      ; c878: a5 01
	and.b #$01                   ; c87a: 29 01
	.db $f0, $0b                 ; c87c: f0 0b
loc_c87e:
	lda $1b95                    ; c87e: ad 95 1b
	inc                          ; c881: 1a
	and.b #$01                   ; c882: 29 01
	sta $1b95                    ; c884: 8d 95 1b
	.db $f0, $4c                 ; c887: f0 4c
loc_c889:
	lda $01                      ; c889: a5 01
	and.b #$02                   ; c88b: 29 02
	.db $f0, $0b                 ; c88d: f0 0b
loc_c88f:
	lda $1b95                    ; c88f: ad 95 1b
	inc                          ; c892: 1a
	and.b #$01                   ; c893: 29 01
	sta $1b95                    ; c895: 8d 95 1b
	.db $d0, $06                 ; c898: d0 06
loc_c89a:
	lda $01                      ; c89a: a5 01
	and.b #$08                   ; c89c: 29 08
	.db $f0, $2f                 ; c89e: f0 2f
loc_c8a0:
	lda $1b94                    ; c8a0: ad 94 1b
	dec                          ; c8a3: 3a
	.db $30, $05                 ; c8a4: 30 05
loc_c8a6:
	sta $1b94                    ; c8a6: 8d 94 1b
	.db $80, $24                 ; c8a9: 80 24
loc_c8ab:
	lda $1b96                    ; c8ab: ad 96 1b
	dec                          ; c8ae: 3a
	.db $30, $1e                 ; c8af: 30 1e
loc_c8b1:
	sta $1b96                    ; c8b1: 8d 96 1b
	lda.b #$08                   ; c8b4: a9 08

; --- Block at $c8b6-$c8cc ---
loc_c8b6:
	sta $45                      ; c8b6: 85 45
	rep #$20                     ; c8b8: c2 20
	dec $9f                      ; c8ba: c6 9f
	dec $9f                      ; c8bc: c6 9f
	sep #$20                     ; c8be: e2 20
	jsr $94a7                    ; c8c0: 20 a7 94
loc_c8c3:
	dec $45                      ; c8c3: c6 45
	.db $d0, $f1                 ; c8c5: d0 f1
loc_c8c7:
	jsr $82a5                    ; c8c7: 20 a5 82
loc_c8ca:
	.db $b0, $03                 ; c8ca: b0 03
loc_c8cc:
	jmp $c843                    ; c8cc: 4c 43 c8

; --- Block at $c8cf-$c905 ---
loc_c8cf:
	lda $01                      ; c8cf: a5 01
	and.b #$04                   ; c8d1: 29 04
	.db $f0, $33                 ; c8d3: f0 33
loc_c8d5:
	lda $1b94                    ; c8d5: ad 94 1b
	inc                          ; c8d8: 1a
	cmp.b #$08                   ; c8d9: c9 08
	.db $f0, $05                 ; c8db: f0 05
loc_c8dd:
	sta $1b94                    ; c8dd: 8d 94 1b
	.db $80, $26                 ; c8e0: 80 26
loc_c8e2:
	lda $1b96                    ; c8e2: ad 96 1b
	inc                          ; c8e5: 1a
	cmp.b #$11                   ; c8e6: c9 11
	.db $f0, $1e                 ; c8e8: f0 1e
loc_c8ea:
	sta $1b96                    ; c8ea: 8d 96 1b
	lda.b #$08                   ; c8ed: a9 08
	sta $45                      ; c8ef: 85 45
	rep #$20                     ; c8f1: c2 20
	inc $9f                      ; c8f3: e6 9f
	inc $9f                      ; c8f5: e6 9f
	sep #$20                     ; c8f7: e2 20
	jsr $94a7                    ; c8f9: 20 a7 94
loc_c8fc:
	dec $45                      ; c8fc: c6 45
	.db $d0, $f1                 ; c8fe: d0 f1
loc_c900:
	jsr $82a5                    ; c900: 20 a5 82
loc_c903:
	.db $b0, $03                 ; c903: b0 03
loc_c905:
	jmp $c843                    ; c905: 4c 43 c8

; --- Block at $c908-$c908 ---
loc_c908:
	jmp $c81e                    ; c908: 4c 1e c8

; --- Block at $c90b-$c944 ---
loc_c90b:
	lda.b #$30                   ; c90b: a9 30
	sta $3f                      ; c90d: 85 3f
	lda $1b94                    ; c90f: ad 94 1b
	clc                          ; c912: 18
	adc $1b96                    ; c913: 6d 96 1b
	asl                          ; c916: 0a
	asl                          ; c917: 0a
	adc $1b95                    ; c918: 6d 95 1b
	adc $1b95                    ; c91b: 6d 95 1b
	jsr $87b4                    ; c91e: 20 b4 87
loc_c921:
	stx $1b98                    ; c921: 8e 98 1b
	lda $1440,x                  ; c924: bd 40 14
	cmp.b #$19                   ; c927: c9 19
	.db $f0, $18                 ; c929: f0 18
loc_c92b:
	cmp.b #$c8                   ; c92b: c9 c8
	.db $f0, $14                 ; c92d: f0 14
loc_c92f:
	cmp.b #$ee                   ; c92f: c9 ee
	.db $b0, $10                 ; c931: b0 10
loc_c933:
	phx                          ; c933: da
	jsr $84b7                    ; c934: 20 b7 84
loc_c937:
	ldy.b #$9a                   ; c937: a0 9a
	stp                          ; c939: db
	jsr $82fb                    ; c93a: 20 fb 82
loc_c93d:
	plx                          ; c93d: fa
	lda $1440,x                  ; c93e: bd 40 14
	.db $d0, $02                 ; c941: d0 02
loc_c943:
	clc                          ; c943: 18
	rts                          ; c944: 60

; --- Block at $c945-$ca11 ---
loc_c945:
	sta $5d                      ; c945: 85 5d
	sta $43                      ; c947: 85 43
	lda $1441,x                  ; c949: bd 41 14
	sta $5e                      ; c94c: 85 5e
	ldx $43                      ; c94e: a6 43
	lda $0fa450,x                ; c950: bf 50 a4 0f
	.db $30, $10                 ; c954: 30 10
loc_c956:
	sta $43                      ; c956: 85 43
	rep #$20                     ; c958: c2 20
	lda $43                      ; c95a: a5 43
	asl                          ; c95c: 0a
	asl                          ; c95d: 0a
	adc $43                      ; c95e: 65 43
	sta $5a                      ; c960: 85 5a
	sep #$20                     ; c962: e2 20
	.db $80, $17                 ; c964: 80 17
loc_c966:
	asl                          ; c966: 0a
	sta.l $004202                ; c967: 8f 02 42 00 ; WRMPYA
	lda.b #$fa                   ; c96b: a9 fa
	sta.l $004203                ; c96d: 8f 03 42 00 ; WRMPYB
	phx                          ; c971: da
	plx                          ; c972: fa
	rep #$20                     ; c973: c2 20
	lda.l $004216                ; c975: af 16 42 00 ; RDMPYL
	sta $5a                      ; c979: 85 5a
	sep #$20                     ; c97b: e2 20
loc_c97d:
	lda $5d                      ; c97d: a5 5d
	cmp.b #$d4                   ; c97f: c9 d4
	.db $b0, $0a                 ; c981: b0 0a
loc_c983:
	cmp.b #$d1                   ; c983: c9 d1
	.db $90, $06                 ; c985: 90 06
loc_c987:
	lda.b #$01                   ; c987: a9 01
	sta $5a                      ; c989: 85 5a
	stz $5b                      ; c98b: 64 5b
loc_c98d:
	lda $1b7a                    ; c98d: ad 7a 1b
	.db $f0, $04                 ; c990: f0 04
loc_c992:
	lda $1b7c                    ; c992: ad 7c 1b
	dec                          ; c995: 3a
loc_c996:
	inc                          ; c996: 1a
	cmp $5e                      ; c997: c5 5e
	.db $90, $02                 ; c999: 90 02
loc_c99b:
	lda $5e                      ; c99b: a5 5e
loc_c99d:
	sta $60                      ; c99d: 85 60
	sta $1b97                    ; c99f: 8d 97 1b
	stz $61                      ; c9a2: 64 61
	stz $37                      ; c9a4: 64 37
	stz $38                      ; c9a6: 64 38
	stz $39                      ; c9a8: 64 39
	stz $3a                      ; c9aa: 64 3a
	ldy.b #$9c                   ; c9ac: a0 9c
	ora $20,s                    ; c9ae: 03 20
	adc.b #$83                   ; c9b0: 69 83
	rep #$20                     ; c9b2: c2 20
	lda.w #$0000                 ; c9b4: a9 00 00
	clc                          ; c9b7: 18
	adc $5a                      ; c9b8: 65 5a
	.db $90, $02                 ; c9ba: 90 02
loc_c9bc:
	inc $39                      ; c9bc: e6 39
loc_c9be:
	dec $60                      ; c9be: c6 60
	.db $d0, $f5                 ; c9c0: d0 f5
loc_c9c2:
	sta $37                      ; c9c2: 85 37
	lda $39                      ; c9c4: a5 39
	ldx $37                      ; c9c6: a6 37
	ldy.b #$94                   ; c9c8: a0 94
	tsb $e2                      ; c9ca: 04 e2
	jsr $a820                    ; c9cc: 20 20 a8
loc_c9cf:
	sta $a5db64                  ; c9cf: 8f 64 db a5
	eor $d4a0,x                  ; c9d3: 5d a0 d4
	cop #$20                     ; c9d6: 02 20
	ror $90                      ; c9d8: 66 90
	lda $1b95                    ; c9da: ad 95 1b
	.db $d0, $06                 ; c9dd: d0 06
loc_c9df:
	ldy.b #$1c                   ; c9df: a0 1c
	ora $20,s                    ; c9e1: 03 20
	adc ($ca),y                  ; c9e3: 71 ca
loc_c9e5:
	stz $48                      ; c9e5: 64 48
	jsr $83e3                    ; c9e7: 20 e3 83
loc_c9ea:
	lda.w #$8530                 ; c9ea: a9 30 85
	and $85a0a9,x                ; c9ed: 3f a9 a0 85
	lsr $a5                      ; c9f1: 46 a5
	pha                          ; c9f3: 48
	.db $d0, $04                 ; c9f4: d0 04
loc_c9f6:
	lda.w #$8050                 ; c9f6: a9 50 80
	cop #$a9                     ; c9f9: 02 a9
	sei                          ; c9fb: 78
	sta $45                      ; c9fc: 85 45
	jsr $8281                    ; c9fe: 20 81 82
loc_ca01:
	jsr $824c                    ; ca01: 20 4c 82
loc_ca04:
	jsr $82c0                    ; ca04: 20 c0 82
loc_ca07:
	lda $01                      ; ca07: a5 01
	and.w #$f080                 ; ca09: 29 80 f0
	ora $20                      ; ca0c: 05 20
	and $94,s                    ; ca0e: 23 94
	clc                          ; ca10: 18
	rts                          ; ca11: 60

; --- Block at $c9fa-$ca01 ---
loc_c9fa:
	lda.w #$8578                 ; c9fa: a9 78 85
	eor $20                      ; c9fd: 45 20
	sta ($82,x)                  ; c9ff: 81 82

; --- Block at $cad8-$cae1 ---
loc_cad8:
	stz $1b7b                    ; cad8: 9c 7b 1b
	stz $1b94                    ; cadb: 9c 94 1b
	stz $1b96                    ; cade: 9c 96 1b
	rts                          ; cae1: 60

; --- Block at $cc34-$cc5a ---
loc_cc34:
	sta $4e                      ; cc34: 85 4e
	asl                          ; cc36: 0a
	adc $4e                      ; cc37: 65 4e
	jsr $87b4                    ; cc39: 20 b4 87
loc_cc3c:
	lda $01cc5b,x                ; cc3c: bf 5b cc 01
	sta $4e                      ; cc40: 85 4e
	rep #$20                     ; cc42: c2 20
	lda $01cc5c,x                ; cc44: bf 5c cc 01
	sta $4f                      ; cc48: 85 4f
	lda $41                      ; cc4a: a5 41
	ldy.b #$fa                   ; cc4c: a0 fa
	ora [$18]                    ; cc4e: 07 18
	adc [$4e]                    ; cc50: 67 4e
	inc $4e                      ; cc52: e6 4e
	dey                          ; cc54: 88
	.db $d0, $f9                 ; cc55: d0 f9
loc_cc57:
	tax                          ; cc57: aa
	sep #$20                     ; cc58: e2 20
	rts                          ; cc5a: 60

; --- Block at $cc6a-$cc87 ---
loc_cc6a:
	php                          ; cc6a: 08
	phb                          ; cc6b: 8b
	phd                          ; cc6c: 0b
	ldx.b #$00                   ; cc6d: a2 00
	ora ($da,x)                  ; cc6f: 01 da
	pld                          ; cc71: 2b
	lda.b #$7e                   ; cc72: a9 7e
	pha                          ; cc74: 48
	plb                          ; cc75: ab
	jsr $873a                    ; cc76: 20 3a 87
loc_cc79:
	stz $1a88                    ; cc79: 9c 88 1a
	jsr $ccd3                    ; cc7c: 20 d3 cc
loc_cc7f:
	tdc                          ; cc7f: 7b
	xba                          ; cc80: eb
	jsr $873f                    ; cc81: 20 3f 87
loc_cc84:
	pld                          ; cc84: 2b
	plb                          ; cc85: ab
	plp                          ; cc86: 28
	rts                          ; cc87: 60

; --- Block at $cc88-$ccc5 ---
loc_cc88:
	lda $1e05                    ; cc88: ad 05 1e
	pha                          ; cc8b: 48
	stz $1b19                    ; cc8c: 9c 19 1b
	lda.b #$01                   ; cc8f: a9 01
	sta $1a88                    ; cc91: 8d 88 1a
	ldx $93                      ; cc94: a6 93
	stx $1ba5                    ; cc96: 8e a5 1b
	lda.b #$85                   ; cc99: a9 85
	sta $1e00                    ; cc9b: 8d 00 1e
	jsl $048004                  ; cc9e: 22 04 80 04
loc_cca2:
	jsr $9484                    ; cca2: 20 84 94
loc_cca5:
	lda.b #$4c                   ; cca5: a9 4c
	jsr $8762                    ; cca7: 20 62 87
loc_ccaa:
	lda.b #$f0                   ; ccaa: a9 f0
	jsr $818a                    ; ccac: 20 8a 81
loc_ccaf:
	dec                          ; ccaf: 3a
	.db $d0, $fa                 ; ccb0: d0 fa
loc_ccb2:
	lda.b #$30                   ; ccb2: a9 30
	jsr $ccc6                    ; ccb4: 20 c6 cc
loc_ccb7:
	jsr $ccd3                    ; ccb7: 20 d3 cc
loc_ccba:
	pla                          ; ccba: 68
	jsr $ccc6                    ; ccbb: 20 c6 cc
loc_ccbe:
	lda.b #$00                   ; ccbe: a9 00
	xba                          ; ccc0: eb
	ldx $1a65                    ; ccc1: ae 65 1a
	txs                          ; ccc4: 9a
	rts                          ; ccc5: 60

; --- Block at $ccc6-$ccd2 ---
loc_ccc6:
	sta $1e01                    ; ccc6: 8d 01 1e
	lda.b #$01                   ; ccc9: a9 01
	sta $1e00                    ; cccb: 8d 00 1e
	jsl $048004                  ; ccce: 22 04 80 04
loc_ccd2:
	rts                          ; ccd2: 60

; --- Block at $ccd3-$cd3d ---
loc_ccd3:
	jsr $8c7f                    ; ccd3: 20 7f 8c
loc_ccd6:
	jsr $8da2                    ; ccd6: 20 a2 8d
loc_ccd9:
	lda.b #$01                   ; ccd9: a9 01
	sta $1a73                    ; ccdb: 8d 73 1a
	rep #$20                     ; ccde: c2 20
	lda.l $000204                ; cce0: af 04 02 00
	pha                          ; cce4: 48
	lda.l $000206                ; cce5: af 06 02 00
	pha                          ; cce9: 48
	sep #$20                     ; ccea: e2 20
	sei                          ; ccec: 78
	lda.b #$01                   ; cced: a9 01
	sta.l $000205                ; ccef: 8f 05 02 00
	lda.b #$ce                   ; ccf3: a9 ce
	sta.l $000206                ; ccf5: 8f 06 02 00
	lda.b #$01                   ; ccf9: a9 01
	sta.l $000207                ; ccfb: 8f 07 02 00
	lda.b #$21                   ; ccff: a9 21
	sta.l $004200                ; cd01: 8f 00 42 00 ; NMITIMEN
	lda.l $004211                ; cd05: af 11 42 00 ; TIMEUP
	cli                          ; cd09: 58
	inc $1b49                    ; cd0a: ee 49 1b
	jsr $8d2f                    ; cd0d: 20 2f 8d
loc_cd10:
	jsr $8d6c                    ; cd10: 20 6c 8d
loc_cd13:
	jsr $9417                    ; cd13: 20 17 94
loc_cd16:
	jsr $cd3e                    ; cd16: 20 3e cd
loc_cd19:
	jsr $d057                    ; cd19: 20 57 d0
loc_cd1c:
	jsr $824f                    ; cd1c: 20 4f 82
loc_cd1f:
	jsr $80b2                    ; cd1f: 20 b2 80
loc_cd22:
	jsr $946a                    ; cd22: 20 6a 94
loc_cd25:
	jsr $cd5b                    ; cd25: 20 5b cd
loc_cd28:
	stz $1b49                    ; cd28: 9c 49 1b
	jsr $9484                    ; cd2b: 20 84 94
loc_cd2e:
	sei                          ; cd2e: 78
	rep #$20                     ; cd2f: c2 20
	pla                          ; cd31: 68
	sta.l $000206                ; cd32: 8f 06 02 00
	pla                          ; cd36: 68
	sta.l $000204                ; cd37: 8f 04 02 00
	sep #$20                     ; cd3b: e2 20
	rts                          ; cd3d: 60

; --- Block at $ccf6-$ccf8 ---
loc_ccf6:
	asl $02                      ; ccf6: 06 02
	brk #$a9                     ; ccf8: 00 a9

; --- Block at $cd3e-$cd8a ---
loc_cd3e:
	ldx.b #$c0                   ; cd3e: a2 c0
	pha                          ; cd40: 48
	stx $1a71                    ; cd41: 8e 71 1a
	jsr $98b9                    ; cd44: 20 b9 98
loc_cd47:
	jsr $91d4                    ; cd47: 20 d4 91
loc_cd4a:
	stz $e0                      ; cd4a: 64 e0
	jsr $8470                    ; cd4c: 20 70 84
loc_cd4f:
	ldy.b #$b6                   ; cd4f: a0 b6
	jml [$d920]                  ; cd51: dc 20 d9
	.db $80, $a0                 ; cd54: 80 a0
	ldx $4cdc,y                  ; cd56: be dc 4c
	xce                          ; cd59: fb
	.db $82, $20, $ae            ; cd5a: 82 20 ae
	.db $d0, $20                 ; cd5d: d0 20
loc_cd5f:
	.db $70, $84                 ; cd5f: 70 84
loc_cd61:
	lda $1a88                    ; cd61: ad 88 1a
	.db $f0, $0a                 ; cd64: f0 0a
loc_cd66:
	lda $1a02                    ; cd66: ad 02 1a
	.db $d0, $05                 ; cd69: d0 05
loc_cd6b:
	ldy.b #$e3                   ; cd6b: a0 e3
	jml [$0380]                  ; cd6d: dc 80 03
loc_cd70:
	ldy.b #$cf                   ; cd70: a0 cf
	jml [$0120]                  ; cd72: dc 20 01
	sta $9c,s                    ; cd75: 83 9c
	dey                          ; cd77: 88
	inc                          ; cd78: 1a
	jsr $944d                    ; cd79: 20 4d 94
loc_cd7c:
	lda.b #$17                   ; cd7c: a9 17
	sta.l $00212c                ; cd7e: 8f 2c 21 00 ; TM
	cli                          ; cd82: 58
	lda $1baf                    ; cd83: ad af 1b
	.db $f0, $05                 ; cd86: f0 05
loc_cd88:
	ldx.b #$40                   ; cd88: a2 40
	rti                          ; cd8a: 40

; --- Block at $cd5b-$cd61 ---
loc_cd5b:
	jsr $d0ae                    ; cd5b: 20 ae d0
loc_cd5e:
	jsr $8470                    ; cd5e: 20 70 84

; --- Block at $cd7f-$cd82 ---
loc_cd7f:
	bit.w $0021                  ; cd7f: 2c 21 00

; --- Block at $cd8d-$cd8f ---
loc_cd8d:
	ldx.b #$10                   ; cd8d: a2 10
	rti                          ; cd8f: 40

; --- Block at $cf7b-$cf8b ---
loc_cf7b:
	lda $1bb2                    ; cf7b: ad b2 1b
	clc                          ; cf7e: 18
	adc $1bb0                    ; cf7f: 6d b0 1b
	asl                          ; cf82: 0a
	adc $1bb1                    ; cf83: 6d b1 1b
	asl                          ; cf86: 0a
	sta $43                      ; cf87: 85 43
	ldx $43                      ; cf89: a6 43
	rts                          ; cf8b: 60

; --- Block at $d057-$d07a ---
loc_d057:
	rep #$20                     ; d057: c2 20
	lda.w #$000f                 ; d059: a9 0f 00
	ldx.b #$10                   ; d05c: a2 10
	sta ($a0,x)                  ; d05e: 81 a0
	jsr $54a1                    ; d060: 20 a1 54
loc_d063:
	ror $e20d,x                  ; d063: 7e 0d e2
	jsr.w $00a0                  ; d066: 20 a0 00
loc_d069:
	sbc ($8b)                    ; d069: f2 8b
	phd                          ; d06b: 0b
	lda.w #$481b                 ; d06c: a9 1b 48
	plb                          ; d06f: ab
	ldx.b #$00                   ; d070: a2 00
	and ($da,x)                  ; d072: 21 da
	pld                          ; d074: 2b
	lda.w #$8580                 ; d075: a9 80 85
	ora $a2,x                    ; d078: 15 a2
	brk #$46                     ; d07a: 00 46

; --- Block at $d06a-$d06b ---
loc_d06a:
	phb                          ; d06a: 8b

; --- Block at $d0ae-$d0d4 ---
loc_d0ae:
	rep #$20                     ; d0ae: c2 20
	lda.w #$003f                 ; d0b0: a9 3f 00
	ldx.b #$7d                   ; d0b3: a2 7d
	jsr ($80a0,x)                ; d0b5: fc a0 80
	tsb $54                      ; d0b8: 04 54
	ror $e21e,x                  ; d0ba: 7e 1e e2
	jsr $2060                    ; d0bd: 20 60 20
loc_d0c0:
	ora $d1,s                    ; d0c0: 03 d1
	jsr $cf7b                    ; d0c2: 20 7b cf
loc_d0c5:
	lda $1baf                    ; d0c5: ad af 1b
	.db $f0, $05                 ; d0c8: f0 05
loc_d0ca:
	lda $1340,x                  ; d0ca: bd 40 13
	.db $80, $03                 ; d0cd: 80 03
loc_d0cf:
	lda $1440,x                  ; d0cf: bd 40 14
loc_d0d2:
	.db $d0, $01                 ; d0d2: d0 01
loc_d0d4:
	rts                          ; d0d4: 60

; --- Block at $d0d5-$d0e5 ---
loc_d0d5:
	cmp.w #$b0ce                 ; d0d5: c9 ce b0
	xce                          ; d0d8: fb
	sta $1b39                    ; d0d9: 8d 39 1b
	tdc                          ; d0dc: 7b
	jsr $d0e6                    ; d0dd: 20 e6 d0
loc_d0e0:
	inc                          ; d0e0: 1a
	cmp.w #$d005                 ; d0e1: c9 05 d0
	sed                          ; d0e4: f8
	rts                          ; d0e5: 60

; --- Block at $d0e6-$d102 ---
loc_d0e6:
	pha                          ; d0e6: 48
	sta $57                      ; d0e7: 85 57
	jsr $a8f1                    ; d0e9: 20 f1 a8
loc_d0ec:
	.db $f0, $13                 ; d0ec: f0 13
loc_d0ee:
	stx $e5                      ; d0ee: 86 e5
	jsr $c24c                    ; d0f0: 20 4c c2
loc_d0f3:
	.db $90, $0c                 ; d0f3: 90 0c
loc_d0f5:
	lda $57                      ; d0f5: a5 57
	asl                          ; d0f7: 0a
	sta $43                      ; d0f8: 85 43
	ldx $43                      ; d0fa: a6 43
	lda.w #$9d08                 ; d0fc: a9 08 9d
	phk                          ; d0ff: 4b
	tcs                          ; d100: 1b
loc_d101:
	pla                          ; d101: 68
	rts                          ; d102: 60

; --- Block at $d103-$d116 ---
loc_d103:
	rep #$20                     ; d103: c2 20
	stz $1b4b                    ; d105: 9c 4b 1b
	stz $1b4d                    ; d108: 9c 4d 1b
	stz $1b4f                    ; d10b: 9c 4f 1b
	stz $1b51                    ; d10e: 9c 51 1b
	stz $1b53                    ; d111: 9c 53 1b
	sep #$20                     ; d114: e2 20
	rts                          ; d116: 60

; --- Block at $d39b-$d3ac ---
loc_d39b:
	lda.b #$90                   ; d39b: a9 90
	sta $1e00                    ; d39d: 8d 00 1e
	lda $16b6                    ; d3a0: ad b6 16
	and.b #$01                   ; d3a3: 29 01
	sta $1e01                    ; d3a5: 8d 01 1e
	jsl $048004                  ; d3a8: 22 04 80 04
loc_d3ac:
	rts                          ; d3ac: 60

; --- Block at $d434-$d446 ---
loc_d434:
	ldx $16ae                    ; d434: ae ae 16
	stx $1a37                    ; d437: 8e 37 1a
	ldx $16b0                    ; d43a: ae b0 16
	stx $1a39                    ; d43d: 8e 39 1a
	lda $16b2                    ; d440: ad b2 16
	sta $1a3b                    ; d443: 8d 3b 1a
	jmp $82bb                    ; d446: 4c bb 82

; --- Block at $d44f-$d4ae ---
loc_d44f:
	phb                          ; d44f: 8b
	phd                          ; d450: 0b
	jsr $873a                    ; d451: 20 3a 87
loc_d454:
	jsr $8c7f                    ; d454: 20 7f 8c
loc_d457:
	stz $1a83                    ; d457: 9c 83 1a
	ldx $41                      ; d45a: a6 41
	txa                          ; d45c: 8a
	stx $1bb3                    ; d45d: 8e b3 1b
	stx $1bb5                    ; d460: 8e b5 1b
	sta $1bb7                    ; d463: 8d b7 1b
	lda.b #$08                   ; d466: a9 08
	sta $45                      ; d468: 85 45
	ldx $41                      ; d46a: a6 41
	txy                          ; d46c: 9b
	lda $1804,x                  ; d46d: bd 04 18
	.db $f0, $1c                 ; d470: f0 1c
loc_d472:
	cmp.b #$54                   ; d472: c9 54
	.db $90, $0e                 ; d474: 90 0e
loc_d476:
	cmp.b #$60                   ; d476: c9 60
	.db $b0, $0a                 ; d478: b0 0a
loc_d47a:
	sta $ff28,y                  ; d47a: 99 28 ff
	lda.b #$0a                   ; d47d: a9 0a
	sta $ff29,y                  ; d47f: 99 29 ff
	.db $80, $12                 ; d482: 80 12
loc_d484:
	sta $ff28,y                  ; d484: 99 28 ff
	lda.b #$01                   ; d487: a9 01
	sta $ff29,y                  ; d489: 99 29 ff
	.db $80, $08                 ; d48c: 80 08
loc_d48e:
	lda.b #$00                   ; d48e: a9 00
	sta $ff28,y                  ; d490: 99 28 ff
	sta $ff29,y                  ; d493: 99 29 ff
loc_d496:
	iny                          ; d496: c8
	iny                          ; d497: c8
	inx                          ; d498: e8
	dec $45                      ; d499: c6 45
	.db $d0, $d0                 ; d49b: d0 d0
loc_d49d:
	jsr $d4af                    ; d49d: 20 af d4
loc_d4a0:
	jsr $9484                    ; d4a0: 20 84 94
loc_d4a3:
	stz $1bc6                    ; d4a3: 9c c6 1b
	jsr $873f                    ; d4a6: 20 3f 87
loc_d4a9:
	lda.b #$00                   ; d4a9: a9 00
	xba                          ; d4ab: eb
	pld                          ; d4ac: 2b
	plb                          ; d4ad: ab
	rts                          ; d4ae: 60

; --- Block at $d45e-$d460 ---
loc_d45e:
	lda ($1b,s),y                ; d45e: b3 1b

; --- Block at $d4af-$d4f4 ---
loc_d4af:
	ldx.b #$e0                   ; d4af: a2 e0
	sbc $a29386,x                ; d4b1: ff 86 93 a2
	dey                          ; d4b5: 88
	sbc $209f86,x                ; d4b6: ff 86 9f 20
	tsx                          ; d4ba: ba
	sty $20                      ; d4bb: 84 20
	sbc $20d7,x                  ; d4bd: fd d7 20
	ldx.b #$84                   ; d4c0: a2 84
	ldx.b #$00                   ; d4c2: a2 00
	sbc $1d8e                    ; d4c4: ed 8e 1d
	tcs                          ; d4c7: 1b
	inc $1bc6                    ; d4c8: ee c6 1b
	jsr $a134                    ; d4cb: 20 34 a1
loc_d4ce:
	jsr $8488                    ; d4ce: 20 88 84
loc_d4d1:
	ldy.b #$cd                   ; d4d1: a0 cd
	cmp $d920,x                  ; d4d3: dd 20 d9
	.db $80, $20                 ; d4d6: 80 20
	.db $70, $84                 ; d4d8: 70 84
loc_d4da:
	jsr $a14a                    ; d4da: 20 4a a1
loc_d4dd:
	jsr $9417                    ; d4dd: 20 17 94
loc_d4e0:
	jsr $94aa                    ; d4e0: 20 aa 94
loc_d4e3:
	stz $60                      ; d4e3: 64 60
	jsr $946a                    ; d4e5: 20 6a 94
loc_d4e8:
	jsr $d4f7                    ; d4e8: 20 f7 d4
loc_d4eb:
	lda $60                      ; d4eb: a5 60
	.db $f0, $06                 ; d4ed: f0 06
loc_d4ef:
	jsr $d7ce                    ; d4ef: 20 ce d7
loc_d4f2:
	.db $b0, $f4                 ; d4f2: b0 f4
loc_d4f4:
	rts                          ; d4f4: 60

; --- Block at $d4f5-$d4f7 ---
loc_d4f5:
	.db $80, $60                 ; d4f5: 80 60

; --- Block at $d4f7-$d504 ---
loc_d4f7:
	jsr $84ba                    ; d4f7: 20 ba 84
loc_d4fa:
	ldy.b #$e7                   ; d4fa: a0 e7
	cmp $0120,x                  ; d4fc: dd 20 01
	sta $20,s                    ; d4ff: 83 20
	mvp $d5,$20                  ; d501: 44 d5 20
	jmp $2082                    ; d504: 4c 82 20

; --- Block at $d4f8-$d524 ---
loc_d4f8:
	tsx                          ; d4f8: ba
	sty $a0                      ; d4f9: 84 a0
	sbc [$dd]                    ; d4fb: e7 dd
	jsr $8301                    ; d4fd: 20 01 83
loc_d500:
	jsr $d544                    ; d500: 20 44 d5
loc_d503:
	jsr $824c                    ; d503: 20 4c 82
loc_d506:
	jsr $9429                    ; d506: 20 29 94
loc_d509:
	jsr $82c0                    ; d509: 20 c0 82
loc_d50c:
	lda $01                      ; d50c: a5 01
	and.b #$03                   ; d50e: 29 03
	.db $f0, $06                 ; d510: f0 06
loc_d512:
	lda $60                      ; d512: a5 60
	eor.b #$ff                   ; d514: 49 ff
	sta $60                      ; d516: 85 60
loc_d518:
	lda $01                      ; d518: a5 01
	and.b #$80                   ; d51a: 29 80
	.db $f0, $0b                 ; d51c: f0 0b
loc_d51e:
	lda $60                      ; d51e: a5 60
	cmp.b #$ff                   ; d520: c9 ff
	.db $d0, $01                 ; d522: d0 01
loc_d524:
	rts                          ; d524: 60

; --- Block at $d525-$d529 ---
loc_d525:
	lda.b #$ff                   ; d525: a9 ff
	sta $60                      ; d527: 85 60

; --- Block at $d529-$d52f ---
loc_d529:
	lda $00                      ; d529: a5 00
	and.b #$80                   ; d52b: 29 80
	.db $f0, $01                 ; d52d: f0 01
loc_d52f:
	rts                          ; d52f: 60

; --- Block at $d530-$d53e ---
loc_d530:
	lda $01                      ; d530: a5 01
	and.b #$04                   ; d532: 29 04
	.db $f0, $0b                 ; d534: f0 0b
loc_d536:
	stz $60                      ; d536: 64 60
	jsr $d544                    ; d538: 20 44 d5
loc_d53b:
	inc $1a83                    ; d53b: ee 83 1a
	jmp $d5fb                    ; d53e: 4c fb d5

; --- Block at $d541-$d541 ---
loc_d541:
	jmp $d4f7                    ; d541: 4c f7 d4

; --- Block at $d544-$d554 ---
loc_d544:
	lda $60                      ; d544: a5 60
	.db $d0, $04                 ; d546: d0 04
loc_d548:
	lda.b #$58                   ; d548: a9 58
	.db $80, $02                 ; d54a: 80 02
loc_d54c:
	lda.b #$b8                   ; d54c: a9 b8
loc_d54e:
	sta $45                      ; d54e: 85 45
	lda.b #$0e                   ; d550: a9 0e
	sta $46                      ; d552: 85 46
	jmp $8281                    ; d554: 4c 81 82

; --- Block at $d557-$d5c1 ---
loc_d557:
	ldy $41                      ; d557: a4 41
	lda.b #$08                   ; d559: a9 08
	sta $48                      ; d55b: 85 48
	lda $ff28,y                  ; d55d: b9 28 ff
	.db $f0, $2c                 ; d560: f0 2c
loc_d562:
	lda.b #$30                   ; d562: a9 30
	sta $45                      ; d564: 85 45
	ldx $41                      ; d566: a6 41
	lda $ff28,y                  ; d568: b9 28 ff
	cmp $1440,x                  ; d56b: dd 40 14
	.db $d0, $18                 ; d56e: d0 18
loc_d570:
	lda $ff29,y                  ; d570: b9 29 ff
	clc                          ; d573: 18
	adc $1441,x                  ; d574: 7d 41 14
	cmp.b #$64                   ; d577: c9 64
	.db $b0, $0d                 ; d579: b0 0d
loc_d57b:
	sta $1441,x                  ; d57b: 9d 41 14
	lda.b #$00                   ; d57e: a9 00
	sta $ff28,y                  ; d580: 99 28 ff
	sta $ff29,y                  ; d583: 99 29 ff
	.db $80, $06                 ; d586: 80 06
loc_d588:
	inx                          ; d588: e8
	inx                          ; d589: e8
	dec $45                      ; d58a: c6 45
	.db $d0, $da                 ; d58c: d0 da
loc_d58e:
	iny                          ; d58e: c8
	iny                          ; d58f: c8
	dec $48                      ; d590: c6 48
	.db $d0, $c9                 ; d592: d0 c9
loc_d594:
	lda.b #$08                   ; d594: a9 08
	sta $45                      ; d596: 85 45
	ldy $41                      ; d598: a4 41
	lda $ff28,y                  ; d59a: b9 28 ff
	.db $f0, $1a                 ; d59d: f0 1a
loc_d59f:
	lda.b #$00                   ; d59f: a9 00
	phy                          ; d5a1: 5a
	jsr $c20f                    ; d5a2: 20 0f c2
loc_d5a5:
	ply                          ; d5a5: 7a
	cmp.b #$00                   ; d5a6: c9 00
	.db $d0, $0f                 ; d5a8: d0 0f
loc_d5aa:
	rep #$20                     ; d5aa: c2 20
	lda $ff28,y                  ; d5ac: b9 28 ff
	sta $1440,x                  ; d5af: 9d 40 14
	lda $41                      ; d5b2: a5 41
	sta $ff28,y                  ; d5b4: 99 28 ff
	sep #$20                     ; d5b7: e2 20
loc_d5b9:
	iny                          ; d5b9: c8
	iny                          ; d5ba: c8
	dec $45                      ; d5bb: c6 45
	.db $d0, $db                 ; d5bd: d0 db
loc_d5bf:
	ldy.b #$08                   ; d5bf: a0 08
	brk #$a6                     ; d5c1: 00 a6

; --- Block at $d5e6-$d5fa ---
loc_d5e6:
	pha                          ; d5e6: 48
	jsr $849f                    ; d5e7: 20 9f 84
loc_d5ea:
	jsr $a134                    ; d5ea: 20 34 a1
loc_d5ed:
	jsr $8470                    ; d5ed: 20 70 84
loc_d5f0:
	jsr $a14a                    ; d5f0: 20 4a a1
loc_d5f3:
	jsr $9433                    ; d5f3: 20 33 94
loc_d5f6:
	jsr $944d                    ; d5f6: 20 4d 94
loc_d5f9:
	pla                          ; d5f9: 68
	rts                          ; d5fa: 60

; --- Block at $d5fb-$d60f ---
loc_d5fb:
	lda $1a83                    ; d5fb: ad 83 1a
	stz $1a83                    ; d5fe: 9c 83 1a
	.db $d0, $10                 ; d601: d0 10
loc_d603:
	jsr $d4f7                    ; d603: 20 f7 d4
loc_d606:
	lda $60                      ; d606: a5 60
	.db $f0, $06                 ; d608: f0 06
loc_d60a:
	jsr $d7ce                    ; d60a: 20 ce d7
loc_d60d:
	.db $b0, $f4                 ; d60d: b0 f4
loc_d60f:
	rts                          ; d60f: 60

; --- Block at $d610-$d610 ---
loc_d610:
	jmp $d557                    ; d610: 4c 57 d5

; --- Block at $d613-$d6a4 ---
loc_d613:
	jsr $d618                    ; d613: 20 18 d6
loc_d616:
	.db $80, $eb                 ; d616: 80 eb
loc_d618:
	jsr $84ba                    ; d618: 20 ba 84
loc_d61b:
	ldy.b #$f2                   ; d61b: a0 f2
	cmp $0120,x                  ; d61d: dd 20 01
	sta $20,s                    ; d620: 83 20
	rol $94                      ; d622: 26 94
	lda $1bb3                    ; d624: ad b3 1b
	asl                          ; d627: 0a
	asl                          ; d628: 0a
	asl                          ; d629: 0a
	asl                          ; d62a: 0a
	adc.b #$30                   ; d62b: 69 30
	sta $5b                      ; d62d: 85 5b
	lda $1bb4                    ; d62f: ad b4 1b
	.db $f0, $04                 ; d632: f0 04
loc_d634:
	lda.b #$70                   ; d634: a9 70
	.db $80, $02                 ; d636: 80 02
loc_d638:
	lda.b #$00                   ; d638: a9 00
loc_d63a:
	sta $5a                      ; d63a: 85 5a
	ldx $5a                      ; d63c: a6 5a
	ldy.b #$04                   ; d63e: a0 04
	ora $7b,s                    ; d640: 03 7b
	jsr $8286                    ; d642: 20 86 82
loc_d645:
	jsr $824c                    ; d645: 20 4c 82
loc_d648:
	jsr $82c0                    ; d648: 20 c0 82
loc_d64b:
	lda $01                      ; d64b: a5 01
	and.b #$80                   ; d64d: 29 80
	.db $f0, $08                 ; d64f: f0 08
loc_d651:
	stz $60                      ; d651: 64 60
	ldy.b #$04                   ; d653: a0 04
	ora $4c,s                    ; d655: 03 4c
	lda [$a2],y                  ; d657: b7 a2
loc_d659:
	lda $00                      ; d659: a5 00
	and.b #$80                   ; d65b: 29 80
	.db $f0, $03                 ; d65d: f0 03
loc_d65f:
	jsr $d6a7                    ; d65f: 20 a7 d6
loc_d662:
	lda $01                      ; d662: a5 01
	and.b #$01                   ; d664: 29 01
	.db $f0, $0b                 ; d666: f0 0b
loc_d668:
	lda $1bb4                    ; d668: ad b4 1b
	inc                          ; d66b: 1a
	and.b #$01                   ; d66c: 29 01
	sta $1bb4                    ; d66e: 8d b4 1b
	.db $f0, $26                 ; d671: f0 26
loc_d673:
	lda $01                      ; d673: a5 01
	and.b #$02                   ; d675: 29 02
	.db $f0, $0b                 ; d677: f0 0b
loc_d679:
	lda $1bb4                    ; d679: ad b4 1b
	inc                          ; d67c: 1a
	and.b #$01                   ; d67d: 29 01
	sta $1bb4                    ; d67f: 8d b4 1b
	.db $d0, $06                 ; d682: d0 06
loc_d684:
	lda $01                      ; d684: a5 01
	and.b #$08                   ; d686: 29 08
	.db $f0, $09                 ; d688: f0 09
loc_d68a:
	lda $1bb3                    ; d68a: ad b3 1b
	dec                          ; d68d: 3a
	.db $30, $03                 ; d68e: 30 03
loc_d690:
	sta $1bb3                    ; d690: 8d b3 1b
loc_d693:
	lda $01                      ; d693: a5 01
	and.b #$04                   ; d695: 29 04
	.db $f0, $0b                 ; d697: f0 0b
loc_d699:
	lda $1bb3                    ; d699: ad b3 1b
	inc                          ; d69c: 1a
	cmp.b #$04                   ; d69d: c9 04
	.db $f0, $03                 ; d69f: f0 03
loc_d6a1:
	sta $1bb3                    ; d6a1: 8d b3 1b
loc_d6a4:
	jmp $d624                    ; d6a4: 4c 24 d6

; --- Block at $d6a7-$d6ce ---
loc_d6a7:
	lda $1bb5                    ; d6a7: ad b5 1b
	asl                          ; d6aa: 0a
	asl                          ; d6ab: 0a
	asl                          ; d6ac: 0a
	asl                          ; d6ad: 0a
	adc.b #$86                   ; d6ae: 69 86
	sta $46                      ; d6b0: 85 46
	lda $1bb6                    ; d6b2: ad b6 1b
	.db $f0, $04                 ; d6b5: f0 04
loc_d6b7:
	lda.b #$70                   ; d6b7: a9 70
	.db $80, $02                 ; d6b9: 80 02
loc_d6bb:
	lda.b #$00                   ; d6bb: a9 00
loc_d6bd:
	sta $45                      ; d6bd: 85 45
	jsr $8281                    ; d6bf: 20 81 82
loc_d6c2:
	jsr $824c                    ; d6c2: 20 4c 82
loc_d6c5:
	jsr $82c0                    ; d6c5: 20 c0 82
loc_d6c8:
	lda $01                      ; d6c8: a5 01
	and.b #$80                   ; d6ca: 29 80
	.db $f0, $03                 ; d6cc: f0 03
loc_d6ce:
	jmp $a2ca                    ; d6ce: 4c ca a2

; --- Block at $d6d1-$d6da ---
loc_d6d1:
	lda $00                      ; d6d1: a5 00
	and.b #$80                   ; d6d3: 29 80
	.db $f0, $06                 ; d6d5: f0 06
loc_d6d7:
	jsr $a2ca                    ; d6d7: 20 ca a2
loc_d6da:
	jmp $d769                    ; d6da: 4c 69 d7

; --- Block at $d6dd-$d760 ---
loc_d6dd:
	lda $01                      ; d6dd: a5 01
	and.b #$01                   ; d6df: 29 01
	.db $f0, $0b                 ; d6e1: f0 0b
loc_d6e3:
	lda $1bb6                    ; d6e3: ad b6 1b
	inc                          ; d6e6: 1a
	and.b #$01                   ; d6e7: 29 01
	sta $1bb6                    ; d6e9: 8d b6 1b
	.db $f0, $48                 ; d6ec: f0 48
loc_d6ee:
	lda $01                      ; d6ee: a5 01
	and.b #$02                   ; d6f0: 29 02
	.db $f0, $0b                 ; d6f2: f0 0b
loc_d6f4:
	lda $1bb6                    ; d6f4: ad b6 1b
	inc                          ; d6f7: 1a
	and.b #$01                   ; d6f8: 29 01
	sta $1bb6                    ; d6fa: 8d b6 1b
	.db $d0, $06                 ; d6fd: d0 06
loc_d6ff:
	lda $01                      ; d6ff: a5 01
	and.b #$08                   ; d701: 29 08
	.db $f0, $2b                 ; d703: f0 2b
loc_d705:
	lda $1bb5                    ; d705: ad b5 1b
	dec                          ; d708: 3a
	.db $10, $22                 ; d709: 10 22
loc_d70b:
	lda $1bb7                    ; d70b: ad b7 1b
	dec                          ; d70e: 3a
	.db $30, $1f                 ; d70f: 30 1f
loc_d711:
	sta $1bb7                    ; d711: 8d b7 1b
	lda.b #$08                   ; d714: a9 08
	rep #$20                     ; d716: c2 20
	dec $9f                      ; d718: c6 9f
	dec $9f                      ; d71a: c6 9f
	sep #$20                     ; d71c: e2 20
	jsr $94a7                    ; d71e: 20 a7 94
loc_d721:
	dec                          ; d721: 3a
	.db $d0, $f2                 ; d722: d0 f2
loc_d724:
	jsr $82c0                    ; d724: 20 c0 82
loc_d727:
	ldx $02                      ; d727: a6 02
	stx $00                      ; d729: 86 00
	.db $80, $9b                 ; d72b: 80 9b
loc_d72d:
	sta $1bb5                    ; d72d: 8d b5 1b
loc_d730:
	lda $01                      ; d730: a5 01
	and.b #$04                   ; d732: 29 04
	.db $f0, $30                 ; d734: f0 30
loc_d736:
	lda $1bb5                    ; d736: ad b5 1b
	inc                          ; d739: 1a
	cmp.b #$05                   ; d73a: c9 05
	.db $d0, $25                 ; d73c: d0 25
loc_d73e:
	lda $1bb7                    ; d73e: ad b7 1b
	inc                          ; d741: 1a
	cmp.b #$14                   ; d742: c9 14
	.db $f0, $20                 ; d744: f0 20
loc_d746:
	sta $1bb7                    ; d746: 8d b7 1b
	lda.b #$08                   ; d749: a9 08
	rep #$20                     ; d74b: c2 20
	inc $9f                      ; d74d: e6 9f
	inc $9f                      ; d74f: e6 9f
	sep #$20                     ; d751: e2 20
	jsr $94a7                    ; d753: 20 a7 94
loc_d756:
	dec                          ; d756: 3a
	.db $d0, $f2                 ; d757: d0 f2
loc_d759:
	jsr $82c0                    ; d759: 20 c0 82
loc_d75c:
	ldx $02                      ; d75c: a6 02
	stx $00                      ; d75e: 86 00
	jmp $d6c8                    ; d760: 4c c8 d6

; --- Block at $d763-$d766 ---
loc_d763:
	sta $1bb5                    ; d763: 8d b5 1b

; --- Block at $d766-$d766 ---
loc_d766:
	jmp $d6a7                    ; d766: 4c a7 d6

; --- Block at $d769-$d7a4 ---
loc_d769:
	lda $1bb3                    ; d769: ad b3 1b
	asl                          ; d76c: 0a
	adc $1bb4                    ; d76d: 6d b4 1b
	asl                          ; d770: 0a
	jsr $87b4                    ; d771: 20 b4 87
loc_d774:
	lda $1bb5                    ; d774: ad b5 1b
	clc                          ; d777: 18
	adc $1bb7                    ; d778: 6d b7 1b
	asl                          ; d77b: 0a
	adc $1bb6                    ; d77c: 6d b6 1b
	asl                          ; d77f: 0a
	sta $43                      ; d780: 85 43
	ldy $43                      ; d782: a4 43
	lda $1440,y                  ; d784: b9 40 14
	cmp.b #$19                   ; d787: c9 19
	.db $f0, $35                 ; d789: f0 35
loc_d78b:
	cmp.b #$c8                   ; d78b: c9 c8
	.db $f0, $31                 ; d78d: f0 31
loc_d78f:
	cmp.b #$ee                   ; d78f: c9 ee
	.db $b0, $2d                 ; d791: b0 2d
loc_d793:
	lda $1440,y                  ; d793: b9 40 14
	cmp $ff28,x                  ; d796: dd 28 ff
	.db $d0, $13                 ; d799: d0 13
loc_d79b:
	lda $ff29,x                  ; d79b: bd 29 ff
	clc                          ; d79e: 18
	adc $1441,y                  ; d79f: 79 41 14
	cmp.b #$64                   ; d7a2: c9 64

; --- Block at $d7a4-$d7c0 ---
loc_d7a4:
	.db $b0, $1a                 ; d7a4: b0 1a
loc_d7a6:
	sta $1441,y                  ; d7a6: 99 41 14
	stz $ff29,x                  ; d7a9: 9e 29 ff
	.db $80, $12                 ; d7ac: 80 12
	rep #$20                     ; d7ae: c2 20
	lda $1440,y                  ; d7b0: b9 40 14
	pha                          ; d7b3: 48
	lda $ff28,x                  ; d7b4: bd 28 ff
	sta $1440,y                  ; d7b7: 99 40 14
	pla                          ; d7ba: 68
	sta $ff28,x                  ; d7bb: 9d 28 ff
	sep #$20                     ; d7be: e2 20
loc_d7c0:
	jmp $d5e6                    ; d7c0: 4c e6 d5

; --- Block at $d7ce-$d7e3 ---
loc_d7ce:
	ldx $41                      ; d7ce: a6 41
	lda $ff28,x                  ; d7d0: bd 28 ff
	cmp.b #$19                   ; d7d3: c9 19
	.db $f0, $11                 ; d7d5: f0 11
loc_d7d7:
	cmp.b #$c8                   ; d7d7: c9 c8
	.db $f0, $0d                 ; d7d9: f0 0d
loc_d7db:
	cmp.b #$ee                   ; d7db: c9 ee
	.db $b0, $09                 ; d7dd: b0 09
loc_d7df:
	inx                          ; d7df: e8
	inx                          ; d7e0: e8
	cpx.b #$10                   ; d7e1: e0 10
	brk #$d0                     ; d7e3: 00 d0

; --- Block at $d7e8-$d80d ---
loc_d7e8:
	jsr $84ba                    ; d7e8: 20 ba 84
loc_d7eb:
	ldy.b #$fd                   ; d7eb: a0 fd
	cmp $fb20,x                  ; d7ed: dd 20 fb
	.db $82, $20, $26            ; d7f0: 82 20 26
	sty $20,x                    ; d7f3: 94 20
	cli                          ; d7f5: 58
	sta [$20]                    ; d7f6: 87 20
	rol $83,x                    ; d7f8: 36 83
	jsr $8d38                    ; d7fa: 20 38 8d
loc_d7fd:
	ldy.b #$c9                   ; d7fd: a0 c9
	cmp $d920,x                  ; d7ff: dd 20 d9
	.db $80, $a0                 ; d802: 80 a0
	cmp ($dd),y                  ; d804: d1 dd
	jsr $82fb                    ; d806: 20 fb 82
loc_d809:
	jsr $9426                    ; d809: 20 26 94
loc_d80c:
	sec                          ; d80c: 38
	rts                          ; d80d: 60

; --- Block at $dbd5-$dbd5 ---
loc_dbd5:
	brk #$00                     ; dbd5: 00 00

; --- Block at $e120-$e34d ---
loc_e120:
	sbc $ffffff,x                ; e120: ff ff ff ff
	sbc $ffffff,x                ; e124: ff ff ff ff
	sbc $ffffff,x                ; e128: ff ff ff ff
	sbc $ffffff,x                ; e12c: ff ff ff ff
	sbc $ffffff,x                ; e130: ff ff ff ff
	sbc $ffffff,x                ; e134: ff ff ff ff
	sbc $ffffff,x                ; e138: ff ff ff ff
	sbc $ffffff,x                ; e13c: ff ff ff ff
	sbc $ffffff,x                ; e140: ff ff ff ff
	sbc $ffffff,x                ; e144: ff ff ff ff
	sbc $ffffff,x                ; e148: ff ff ff ff
	sbc $ffffff,x                ; e14c: ff ff ff ff
	sbc $ffffff,x                ; e150: ff ff ff ff
	sbc $ffffff,x                ; e154: ff ff ff ff
	sbc $ffffff,x                ; e158: ff ff ff ff
	sbc $ffffff,x                ; e15c: ff ff ff ff
	sbc $ffffff,x                ; e160: ff ff ff ff
	sbc $ffffff,x                ; e164: ff ff ff ff
	sbc $ffffff,x                ; e168: ff ff ff ff
	sbc $ffffff,x                ; e16c: ff ff ff ff
	sbc $ffffff,x                ; e170: ff ff ff ff
	sbc $ffffff,x                ; e174: ff ff ff ff
	sbc $ffffff,x                ; e178: ff ff ff ff
	sbc $ffffff,x                ; e17c: ff ff ff ff
	sbc $ffffff,x                ; e180: ff ff ff ff
	sbc $ffffff,x                ; e184: ff ff ff ff
	sbc $ffffff,x                ; e188: ff ff ff ff
	sbc $ffffff,x                ; e18c: ff ff ff ff
	sbc $ffffff,x                ; e190: ff ff ff ff
	sbc $ffffff,x                ; e194: ff ff ff ff
	sbc $ffffff,x                ; e198: ff ff ff ff
	sbc $ffffff,x                ; e19c: ff ff ff ff
	sbc $ffffff,x                ; e1a0: ff ff ff ff
	sbc $ffffff,x                ; e1a4: ff ff ff ff
	sbc $ffffff,x                ; e1a8: ff ff ff ff
	sbc $ffffff,x                ; e1ac: ff ff ff ff
	sbc $ffffff,x                ; e1b0: ff ff ff ff
	sbc $ffffff,x                ; e1b4: ff ff ff ff
	sbc $ffffff,x                ; e1b8: ff ff ff ff
	sbc $ffffff,x                ; e1bc: ff ff ff ff
	sbc $ffffff,x                ; e1c0: ff ff ff ff
	sbc $ffffff,x                ; e1c4: ff ff ff ff
	sbc $ffffff,x                ; e1c8: ff ff ff ff
	sbc $ffffff,x                ; e1cc: ff ff ff ff
	sbc $ffffff,x                ; e1d0: ff ff ff ff
	sbc $ffffff,x                ; e1d4: ff ff ff ff
	sbc $ffffff,x                ; e1d8: ff ff ff ff
	sbc $ffffff,x                ; e1dc: ff ff ff ff
	sbc $ffffff,x                ; e1e0: ff ff ff ff
	sbc $ffffff,x                ; e1e4: ff ff ff ff
	sbc $ffffff,x                ; e1e8: ff ff ff ff
	sbc $ffffff,x                ; e1ec: ff ff ff ff
	sbc $ffffff,x                ; e1f0: ff ff ff ff
	sbc $ffffff,x                ; e1f4: ff ff ff ff
	sbc $ffffff,x                ; e1f8: ff ff ff ff
	sbc $ffffff,x                ; e1fc: ff ff ff ff
	sbc $ffffff,x                ; e200: ff ff ff ff
	sbc $ffffff,x                ; e204: ff ff ff ff
	sbc $ffffff,x                ; e208: ff ff ff ff
	sbc $ffffff,x                ; e20c: ff ff ff ff
	sbc $ffffff,x                ; e210: ff ff ff ff
	sbc $ffffff,x                ; e214: ff ff ff ff
	sbc $ffffff,x                ; e218: ff ff ff ff
	sbc $ffffff,x                ; e21c: ff ff ff ff
	sbc $ffffff,x                ; e220: ff ff ff ff
	sbc $ffffff,x                ; e224: ff ff ff ff
	sbc $ffffff,x                ; e228: ff ff ff ff
	sbc $ffffff,x                ; e22c: ff ff ff ff
	sbc $ffffff,x                ; e230: ff ff ff ff
	sbc $ffffff,x                ; e234: ff ff ff ff
	sbc $ffffff,x                ; e238: ff ff ff ff
	sbc $ffffff,x                ; e23c: ff ff ff ff
	sbc $ffffff,x                ; e240: ff ff ff ff
	sbc $ffffff,x                ; e244: ff ff ff ff
	sbc $ffffff,x                ; e248: ff ff ff ff
	sbc $ffffff,x                ; e24c: ff ff ff ff
	sbc $ffffff,x                ; e250: ff ff ff ff
	sbc $ffffff,x                ; e254: ff ff ff ff
	sbc $ffffff,x                ; e258: ff ff ff ff
	sbc $ffffff,x                ; e25c: ff ff ff ff
	sbc $ffffff,x                ; e260: ff ff ff ff
	sbc $ffffff,x                ; e264: ff ff ff ff
	sbc $ffffff,x                ; e268: ff ff ff ff
	sbc $ffffff,x                ; e26c: ff ff ff ff
	sbc $ffffff,x                ; e270: ff ff ff ff
	sbc $ffffff,x                ; e274: ff ff ff ff
	sbc $ffffff,x                ; e278: ff ff ff ff
	sbc $ffffff,x                ; e27c: ff ff ff ff
	sbc $ffffff,x                ; e280: ff ff ff ff
	sbc $ffffff,x                ; e284: ff ff ff ff
	sbc $ffffff,x                ; e288: ff ff ff ff
	sbc $ffffff,x                ; e28c: ff ff ff ff
	sbc $ffffff,x                ; e290: ff ff ff ff
	sbc $ffffff,x                ; e294: ff ff ff ff
	sbc $ffffff,x                ; e298: ff ff ff ff
	sbc $ffffff,x                ; e29c: ff ff ff ff
	sbc $ffffff,x                ; e2a0: ff ff ff ff
	sbc $ffffff,x                ; e2a4: ff ff ff ff
	sbc $ffffff,x                ; e2a8: ff ff ff ff
	sbc $ffffff,x                ; e2ac: ff ff ff ff
	sbc $ffffff,x                ; e2b0: ff ff ff ff
	sbc $ffffff,x                ; e2b4: ff ff ff ff
	sbc $ffffff,x                ; e2b8: ff ff ff ff
	sbc $ffffff,x                ; e2bc: ff ff ff ff
	sbc $ffffff,x                ; e2c0: ff ff ff ff
	sbc $ffffff,x                ; e2c4: ff ff ff ff
	sbc $ffffff,x                ; e2c8: ff ff ff ff
	sbc $ffffff,x                ; e2cc: ff ff ff ff
	sbc $ffffff,x                ; e2d0: ff ff ff ff
	sbc $ffffff,x                ; e2d4: ff ff ff ff
	sbc $ffffff,x                ; e2d8: ff ff ff ff
	sbc $ffffff,x                ; e2dc: ff ff ff ff
	sbc $ffffff,x                ; e2e0: ff ff ff ff
	sbc $ffffff,x                ; e2e4: ff ff ff ff
	sbc $ffffff,x                ; e2e8: ff ff ff ff
	sbc $ffffff,x                ; e2ec: ff ff ff ff
	sbc $ffffff,x                ; e2f0: ff ff ff ff
	sbc $ffffff,x                ; e2f4: ff ff ff ff
	sbc $ffffff,x                ; e2f8: ff ff ff ff
	sbc $ffffff,x                ; e2fc: ff ff ff ff
	cmp.b #$01                   ; e300: c9 01
	.db $f0, $05                 ; e302: f0 05
loc_e304:
	cmp.b #$02                   ; e304: c9 02
	.db $f0, $17                 ; e306: f0 17
loc_e308:
	rtl                          ; e308: 6b
loc_e309:
	lda.b #$07                   ; e309: a9 07
	sta $f11b                    ; e30b: 8d 1b f1
	lda.b #$05                   ; e30e: a9 05
	sta $f11c                    ; e310: 8d 1c f1
	lda.b #$14                   ; e313: a9 14
	sta $f118                    ; e315: 8d 18 f1
	stz $f116                    ; e318: 9c 16 f1
	lda.b #$ae                   ; e31b: a9 ae
	.db $80, $16                 ; e31d: 80 16
loc_e31f:
	lda.b #$03                   ; e31f: a9 03
	sta $f11b                    ; e321: 8d 1b f1
	lda.b #$08                   ; e324: a9 08
	sta $f11c                    ; e326: 8d 1c f1
	lda.b #$08                   ; e329: a9 08
	sta $f116                    ; e32b: 8d 16 f1
	lda.b #$ff                   ; e32e: a9 ff
	sta $f118                    ; e330: 8d 18 f1
	lda.b #$9e                   ; e333: a9 9e
loc_e335:
	jsl $02f623                  ; e335: 22 23 f6 02
loc_e339:
	jsr $e41c                    ; e339: 20 1c e4
loc_e33c:
	jsl $02e740                  ; e33c: 22 40 e7 02
loc_e340:
	tdc                          ; e340: 7b
	tax                          ; e341: aa
	pha                          ; e342: 48
	jsr $f996                    ; e343: 20 96 f9
loc_e346:
	pla                          ; e346: 68
	clc                          ; e347: 18
	adc.b #$20                   ; e348: 69 20
	inx                          ; e34a: e8
	cpx.b #$08                   ; e34b: e0 08
	brk #$d0                     ; e34d: 00 d0

; --- Block at $e41c-$e420 ---
loc_e41c:
	jsl $02e700                  ; e41c: 22 00 e7 02
loc_e420:
	rts                          ; e420: 60

; --- Block at $e7a5-$e7bc ---
loc_e7a5:
	tax                          ; e7a5: aa
	lda $16ffee,x                ; e7a6: bf ee ff 16
	sta $f1b3,x                  ; e7aa: 9d b3 f1
	lda $16fff2,x                ; e7ad: bf f2 ff 16
	sta $f1f3,x                  ; e7b1: 9d f3 f1
	lda.w #$20fc                 ; e7b4: a9 fc 20
	stx $f9,y                    ; e7b7: 96 f9
	inx                          ; e7b9: e8
	cpx.b #$04                   ; e7ba: e0 04
	brk #$d0                     ; e7bc: 00 d0

; --- Block at $eef9-$ef02 ---
loc_eef9:
	tdc                          ; eef9: 7b
	tax                          ; eefa: aa
	dec                          ; eefb: 3a
	sta $f2b4,x                  ; eefc: 9d b4 f2
	inx                          ; eeff: e8
	cpx.b #$08                   ; ef00: e0 08
	brk #$d0                     ; ef02: 00 d0

; --- Block at $f058-$f07b ---
loc_f058:
	pha                          ; f058: 48
	and.b #$0f                   ; f059: 29 0f
	sta $26                      ; f05b: 85 26
	lda.b #$40                   ; f05d: a9 40
	sta $28                      ; f05f: 85 28
	jsl $02855c                  ; f061: 22 5c 85 02
loc_f065:
	pla                          ; f065: 68
	lsr                          ; f066: 4a
	lsr                          ; f067: 4a
	lsr                          ; f068: 4a
	lsr                          ; f069: 4a
	clc                          ; f06a: 18
	adc.b #$06                   ; f06b: 69 06
	rep #$20                     ; f06d: c2 20
	asl                          ; f06f: 0a
	clc                          ; f070: 18
	adc $2a                      ; f071: 65 2a
	clc                          ; f073: 18
	adc.w #$6cfd                 ; f074: 69 fd 6c
	tax                          ; f077: aa
	tdc                          ; f078: 7b
	sep #$20                     ; f079: e2 20
	rts                          ; f07b: 60

; --- Block at $f07c-$f080 ---
loc_f07c:
	stx $00                      ; f07c: 86 00
	ldy.b #$00                   ; f07e: a0 00
	brk #$20                     ; f080: 00 20

; --- Block at $f996-$f9a6 ---
loc_f996:
	pha                          ; f996: 48
	clc                          ; f997: 18
	adc $f173,x                  ; f998: 7d 73 f1
	sta $f173,x                  ; f99b: 9d 73 f1
	pla                          ; f99e: 68
	clc                          ; f99f: 18
	adc $f133,x                  ; f9a0: 7d 33 f1
	sta $f133,x                  ; f9a3: 9d 33 f1
	rts                          ; f9a6: 60

; --- Block at $fe13-$fec6 ---
loc_fe13:
	sbc ($f0,s),y                ; fe13: f3 f0
	ora $ee,s                    ; fe15: 03 ee
	rol $f3                      ; fe17: 26 f3
	lda $f326                    ; fe19: ad 26 f3
	lsr                          ; fe1c: 4a
	lsr                          ; fe1d: 4a
	lsr                          ; fe1e: 4a
	and.b #$03                   ; fe1f: 29 03
	sta $0e                      ; fe21: 85 0e
	lda $f325                    ; fe23: ad 25 f3
	asl                          ; fe26: 0a
	asl                          ; fe27: 0a
	clc                          ; fe28: 18
	adc $0e                      ; fe29: 65 0e
	tax                          ; fe2b: aa
	lda $13fa9d,x                ; fe2c: bf 9d fa 13
	sta $f328                    ; fe30: 8d 28 f3
	tdc                          ; fe33: 7b
	tax                          ; fe34: aa
	stx $f32e                    ; fe35: 8e 2e f3
	lda $f32c                    ; fe38: ad 2c f3
	.db $f0, $2e                 ; fe3b: f0 2e
loc_fe3d:
	lda $f1b3                    ; fe3d: ad b3 f1
	asl                          ; fe40: 0a
	sta $1e                      ; fe41: 85 1e
	lda $f133                    ; fe43: ad 33 f1
	clc                          ; fe46: 18
	adc $f32d                    ; fe47: 6d 2d f3
	sta $f133                    ; fe4a: 8d 33 f1
	jsl $02e011                  ; fe4d: 22 11 e0 02
loc_fe51:
	sta $f32f                    ; fe51: 8d 2f f3
	lda $f1f3                    ; fe54: ad f3 f1
	asl                          ; fe57: 0a
	sta $1e                      ; fe58: 85 1e
	lda $f173                    ; fe5a: ad 73 f1
	clc                          ; fe5d: 18
	adc $f32d                    ; fe5e: 6d 2d f3
	sta $f173                    ; fe61: 8d 73 f1
	jsl $02e011                  ; fe64: 22 11 e0 02
loc_fe68:
	sta $f32e                    ; fe68: 8d 2e f3
loc_fe6b:
	lda $f328                    ; fe6b: ad 28 f3
	asl                          ; fe6e: 0a
	tax                          ; fe6f: aa
	lda $0df660,x                ; fe70: bf 60 f6 0d
	sta $1c                      ; fe74: 85 1c
	lda $0df661,x                ; fe76: bf 61 f6 0d
	sta $1d                      ; fe7a: 85 1d
	lda.b #$0d                   ; fe7c: a9 0d
	sta $1e                      ; fe7e: 85 1e
	lda $f322                    ; fe80: ad 22 f3
	clc                          ; fe83: 18
	adc $f32f                    ; fe84: 6d 2f f3
	sta $23                      ; fe87: 85 23
	lda $f324                    ; fe89: ad 24 f3
	sta $21                      ; fe8c: 85 21
	stz $0e                      ; fe8e: 64 0e
	ldy.b #$60                   ; fe90: a0 60
	ora ($ad,x)                  ; fe92: 01 ad
	and $f3,s                    ; fe94: 23 f3
	sta $20                      ; fe96: 85 20
	lda $f321                    ; fe98: ad 21 f3
	clc                          ; fe9b: 18
	adc $f32e                    ; fe9c: 6d 2e f3
	sta $22                      ; fe9f: 85 22
	lda $f329                    ; fea1: ad 29 f3
	sta $f32a                    ; fea4: 8d 2a f3
	jsl $03f7e8                  ; fea7: 22 e8 f7 03
loc_feab:
	.db $90, $34                 ; feab: 90 34
loc_fead:
	sta $0302,y                  ; fead: 99 02 03
	asl $f32a                    ; feb0: 0e 2a f3
	.db $b0, $2c                 ; feb3: b0 2c
loc_feb5:
	lda $6cc0                    ; feb5: ad c0 6c
	.db $d0, $0f                 ; feb8: d0 0f
loc_feba:
	lda $22                      ; feba: a5 22
	sta $0300,y                  ; febc: 99 00 03
	lda $10                      ; febf: a5 10
	eor.b #$40                   ; fec1: 49 40
	sta $0303,y                  ; fec3: 99 03 03
	jmp $fed8                    ; fec6: 4c d8 fe

; --- Block at $fe93-$fe96 ---
loc_fe93:
	lda $f323                    ; fe93: ad 23 f3

; --- Block at $fec9-$fee1 ---
loc_fec9:
	lda $22                      ; fec9: a5 22
	eor.b #$ff                   ; fecb: 49 ff
	sec                          ; fecd: 38
	sbc.b #$10                   ; fece: e9 10
	sta $0300,y                  ; fed0: 99 00 03
	lda $10                      ; fed3: a5 10
	sta $0303,y                  ; fed5: 99 03 03
loc_fed8:
	lda $23                      ; fed8: a5 23
	sta $0301,y                  ; feda: 99 01 03
	iny                          ; fedd: c8
	iny                          ; fede: c8
	iny                          ; fedf: c8
	iny                          ; fee0: c8

; --- Block at $fee1-$fef7 ---
loc_fee1:
	lda $22                      ; fee1: a5 22
	clc                          ; fee3: 18
	adc.b #$10                   ; fee4: 69 10
	sta $22                      ; fee6: 85 22
	dec $20                      ; fee8: c6 20
	.db $d0, $bb                 ; feea: d0 bb
loc_feec:
	lda $23                      ; feec: a5 23
	clc                          ; feee: 18
	adc.b #$10                   ; feef: 69 10
	sta $23                      ; fef1: 85 23
	dec $21                      ; fef3: c6 21
	.db $d0, $9c                 ; fef5: d0 9c
loc_fef7:
	rts                          ; fef7: 60

; --- Block at $18000-$1800c ---
loc_18000:
	jsr $802c                    ; 18000: 20 2c 80
loc_18003:
	rtl                          ; 18003: 6b
	jsr $b9f1                    ; 18004: 20 f1 b9
loc_18007:
	rtl                          ; 18007: 6b
	jsr $c296                    ; 18008: 20 96 c2
loc_1800b:
	rtl                          ; 1800b: 6b

; --- Block at $1800c-$1801c ---
loc_1800c:
	jsr $9598                    ; 1800c: 20 98 95
loc_1800f:
	rtl                          ; 1800f: 6b
	jsr $805e                    ; 18010: 20 5e 80
loc_18013:
	rtl                          ; 18013: 6b
	jsr $cc6a                    ; 18014: 20 6a cc
loc_18017:
	rtl                          ; 18017: 6b
	jsr $b9f1                    ; 18018: 20 f1 b9
loc_1801b:
	rtl                          ; 1801b: 6b

; --- Block at $1801c-$18044 ---
loc_1801c:
	jsr $82bb                    ; 1801c: 20 bb 82
loc_1801f:
	rtl                          ; 1801f: 6b
	jsr $d44f                    ; 18020: 20 4f d4
loc_18023:
	rtl                          ; 18023: 6b
	jsr $cc6a                    ; 18024: 20 6a cc
loc_18027:
	rtl                          ; 18027: 6b
	jsr $806e                    ; 18028: 20 6e 80
loc_1802b:
	rtl                          ; 1802b: 6b
	phb                          ; 1802c: 8b
	phd                          ; 1802d: 0b
	tdc                          ; 1802e: 7b
	sta.l $004100                ; 1802f: 8f 00 41 00
	lda.b #$7e                   ; 18033: a9 7e
	pha                          ; 18035: 48
	plb                          ; 18036: ab
	jsr $8045                    ; 18037: 20 45 80
loc_1803a:
	lda.b #$80                   ; 1803a: a9 80
	sta.l $002100                ; 1803c: 8f 00 21 00 ; INIDISP
	tdc                          ; 18040: 7b
	xba                          ; 18041: eb
	pld                          ; 18042: 2b
	plb                          ; 18043: ab
	rts                          ; 18044: 60

; --- Block at $1875c-$18778 ---
loc_1875c:
	jsr $8762                    ; 1875c: 20 62 87
loc_1875f:
	rtl                          ; 1875f: 6b
	lda.b #$58                   ; 18760: a9 58
	sta $1e01                    ; 18762: 8d 01 1e
	lda.b #$02                   ; 18765: a9 02
	sta $1e00                    ; 18767: 8d 00 1e
	lda.b #$80                   ; 1876a: a9 80
	sta $1e02                    ; 1876c: 8d 02 1e
	lda.b #$ff                   ; 1876f: a9 ff
	sta $1e03                    ; 18771: 8d 03 1e
	jsl $048004                  ; 18774: 22 04 80 04
loc_18778:
	rts                          ; 18778: 60

; --- Block at $1e9e1-$1e9e3 ---
loc_1e9e1:
	ldx.b #$fd                   ; 1e9e1: a2 fd
	jmp.w ($0086)                ; 1e9e3: 6c 86 00

; --- Block at $1ed70-$1eda1 ---
loc_1ed70:
	phx                          ; 1ed70: da
	rep #$20                     ; 1ed71: c2 20
	lda $f408                    ; 1ed73: ad 08 f4
	sta $02                      ; 1ed76: 85 02
	lda $f406                    ; 1ed78: ad 06 f4
	sta $00                      ; 1ed7b: 85 00
	tdc                          ; 1ed7d: 7b
	tax                          ; 1ed7e: aa
	lda $00                      ; 1ed7f: a5 00
	sta $7612,x                  ; 1ed81: 9d 12 76
	sta $769e,x                  ; 1ed84: 9d 9e 76
	sta $772a,x                  ; 1ed87: 9d 2a 77
	sta $77b6,x                  ; 1ed8a: 9d b6 77
	lda $02                      ; 1ed8d: a5 02
	sta $7614,x                  ; 1ed8f: 9d 14 76
	sta $76a0,x                  ; 1ed92: 9d a0 76
	sta $772c,x                  ; 1ed95: 9d 2c 77
	sta $77b8,x                  ; 1ed98: 9d b8 77
	inx                          ; 1ed9b: e8
	inx                          ; 1ed9c: e8
	inx                          ; 1ed9d: e8
	inx                          ; 1ed9e: e8
	cpx.b #$8c                   ; 1ed9f: e0 8c
	brk #$d0                     ; 1eda1: 00 d0

; --- Block at $1eeb5-$1eeb9 ---
loc_1eeb5:
	lda.b #$60                   ; 1eeb5: a9 60
	.db $80, $0e                 ; 1eeb7: 80 0e

; --- Block at $1eeb9-$1eef8 ---
loc_1eeb9:
	lda.b #$20                   ; 1eeb9: a9 20
	.db $80, $0a                 ; 1eebb: 80 0a
	lda.b #$40                   ; 1eebd: a9 40
	.db $80, $06                 ; 1eebf: 80 06
	lda.b #$80                   ; 1eec1: a9 80
	.db $80, $02                 ; 1eec3: 80 02
loc_1eec5:
	lda.b #$e0                   ; 1eec5: a9 e0
loc_1eec7:
	sta $ef88                    ; 1eec7: 8d 88 ef
	lda.b #$1f                   ; 1eeca: a9 1f
	sta $f433                    ; 1eecc: 8d 33 f4
	sta $f435                    ; 1eecf: 8d 35 f4
	sta $f434                    ; 1eed2: 8d 34 f4
	lda.b #$01                   ; 1eed5: a9 01
	sta $ef87                    ; 1eed7: 8d 87 ef
	stz $ef89                    ; 1eeda: 9c 89 ef
	stz $ef8a                    ; 1eedd: 9c 8a ef
	rtl                          ; 1eee0: 6b
	jsr $eef9                    ; 1eee1: 20 f9 ee
loc_1eee4:
	jsl $028d2b                  ; 1eee4: 22 2b 8d 02
loc_1eee8:
	jsl $01e9e1                  ; 1eee8: 22 e1 e9 01
loc_1eeec:
	lda.b #$59                   ; 1eeec: a9 59
	jsl $02f5d4                  ; 1eeee: 22 d4 f5 02
loc_1eef2:
	lda.b #$02                   ; 1eef2: a9 02
	jsl $02cc96                  ; 1eef4: 22 96 cc 02
loc_1eef8:
	rts                          ; 1eef8: 60

; --- Block at $1f02f-$1f07b ---
loc_1f02f:
	lda $f44c                    ; 1f02f: ad 4c f4
	.db $f0, $23                 ; 1f032: f0 23
loc_1f034:
	lda $f41a                    ; 1f034: ad 1a f4
	.db $f0, $0f                 ; 1f037: f0 0f
loc_1f039:
	lda $f422                    ; 1f039: ad 22 f4
	jsr $f058                    ; 1f03c: 20 58 f0
loc_1f03f:
	lda.b #$76                   ; 1f03f: a9 76
	sta $02                      ; 1f041: 85 02
	lda.b #$88                   ; 1f043: a9 88
	jsr $f07c                    ; 1f045: 20 7c f0
loc_1f048:
	lda $f421                    ; 1f048: ad 21 f4
	jsr $f058                    ; 1f04b: 20 58 f0
loc_1f04e:
	lda.b #$72                   ; 1f04e: a9 72
	sta $02                      ; 1f050: 85 02
	lda.b #$80                   ; 1f052: a9 80
	jsr $f07c                    ; 1f054: 20 7c f0
loc_1f057:
	rtl                          ; 1f057: 6b
	pha                          ; 1f058: 48
	and.b #$0f                   ; 1f059: 29 0f
	sta $26                      ; 1f05b: 85 26
	lda.b #$40                   ; 1f05d: a9 40
	sta $28                      ; 1f05f: 85 28
	jsl $02855c                  ; 1f061: 22 5c 85 02
loc_1f065:
	pla                          ; 1f065: 68
	lsr                          ; 1f066: 4a
	lsr                          ; 1f067: 4a
	lsr                          ; 1f068: 4a
	lsr                          ; 1f069: 4a
	clc                          ; 1f06a: 18
	adc.b #$06                   ; 1f06b: 69 06
	rep #$20                     ; 1f06d: c2 20
	asl                          ; 1f06f: 0a
	clc                          ; 1f070: 18
	adc $2a                      ; 1f071: 65 2a
	clc                          ; 1f073: 18
	adc.w #$6cfd                 ; 1f074: 69 fd 6c
	tax                          ; 1f077: aa
	tdc                          ; 1f078: 7b
	sep #$20                     ; 1f079: e2 20
	rts                          ; 1f07b: 60

; --- Block at $1f2b8-$1f2da ---
loc_1f2b8:
	lda $f40e                    ; 1f2b8: ad 0e f4
	.db $f0, $06                 ; 1f2bb: f0 06
loc_1f2bd:
	lda $07                      ; 1f2bd: a5 07
	eor.b #$40                   ; 1f2bf: 49 40
	sta $07                      ; 1f2c1: 85 07
loc_1f2c3:
	lda $f404                    ; 1f2c3: ad 04 f4
	asl                          ; 1f2c6: 0a
	tax                          ; 1f2c7: aa
	lda $0dfd6d,x                ; 1f2c8: bf 6d fd 0d
	sta $00                      ; 1f2cc: 85 00
	lda $0dfd6e,x                ; 1f2ce: bf 6e fd 0d
	sta $01                      ; 1f2d2: 85 01
	lda.b #$0d                   ; 1f2d4: a9 0d
	sta $02                      ; 1f2d6: 85 02
	ldy.b #$00                   ; 1f2d8: a0 00
	brk #$20                     ; 1f2da: 00 20

