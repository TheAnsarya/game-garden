; Disassembled by Peony
; Platform: SNES
; Mapper: FINAL FANTASY 2
; MapMode: LoRom
; RomSize: 1024K
; Banks: 32
; CopierHeader: False

.snes

; --- Block at $8000-$8000 ---
bank3_start:
	jmp $8009                    ; 8000: 4c 09 80

; --- Block at $8009-$8071 ---
loc_8009:
	php                          ; 8009: 08
	rep #$30                     ; 800a: c2 30
	phb                          ; 800c: 8b
	phd                          ; 800d: 0b
	pha                          ; 800e: 48
	phx                          ; 800f: da
	phy                          ; 8010: 5a
	lda.w #$0000                 ; 8011: a9 00 00
	sep #$20                     ; 8014: e2 20
	rep #$10                     ; 8016: c2 10
	jsr $808a                    ; 8018: 20 8a 80
loc_801b:
	lda.b #$00                   ; 801b: a9 00
	sta.l $002100                ; 801d: 8f 00 21 00 ; INIDISP
	sta.l $00420c                ; 8021: 8f 0c 42 00 ; HDMAEN
	sta.l $00420b                ; 8025: 8f 0b 42 00 ; MDMAEN
	sta.l $004200                ; 8029: 8f 00 42 00 ; NMITIMEN
	rep #$30                     ; 802d: c2 30
	ply                          ; 802f: 7a
	plx                          ; 8030: fa
	pla                          ; 8031: 68
	pld                          ; 8032: 2b
	plb                          ; 8033: ab
	plp                          ; 8034: 28
	rtl                          ; 8035: 6b
	sta $7e3975                  ; 8036: 8f 75 39 7e
	php                          ; 803a: 08
	rep #$30                     ; 803b: c2 30
	phb                          ; 803d: 8b
	phd                          ; 803e: 0b
	pha                          ; 803f: 48
	phx                          ; 8040: da
	phy                          ; 8041: 5a
	sei                          ; 8042: 78
	lda.w #$0000                 ; 8043: a9 00 00
	sep #$20                     ; 8046: e2 20
	rep #$10                     ; 8048: c2 10
	ldx.w #$0000                 ; 804a: a2 00 00
	phx                          ; 804d: da
	pld                          ; 804e: 2b
	lda.b #$7e                   ; 804f: a9 7e
	pha                          ; 8051: 48
	plb                          ; 8052: ab
	jsr $9807                    ; 8053: 20 07 98
loc_8056:
	rep #$30                     ; 8056: c2 30
	ply                          ; 8058: 7a
	plx                          ; 8059: fa
	pla                          ; 805a: 68
	pld                          ; 805b: 2b
	plb                          ; 805c: ab
	plp                          ; 805d: 28
	rtl                          ; 805e: 6b
	lda $353e                    ; 805f: ad 3e 35
	eor.w #$8d01                 ; 8062: 49 01 8d
	rol $d035,x                  ; 8065: 3e 35 d0
	tcs                          ; 8068: 1b
	lda $353f                    ; 8069: ad 3f 35
	cmp.w #$d002                 ; 806c: c9 02 d0
	ora $a9                      ; 806f: 05 a9
	brk #$8d                     ; 8071: 00 8d

; --- Block at $8085-$8089 ---
loc_8085:
	jsl $028003                  ; 8085: 22 03 80 02
loc_8089:
	rts                          ; 8089: 60

; --- Block at $808a-$8232 ---
loc_808a:
	jsr $82cb                    ; 808a: 20 cb 82
loc_808d:
	ldx.w #$00ff                 ; 808d: a2 ff 00
	lda $14ee00,x                ; 8090: bf 00 ee 14
	sta $1900,x                  ; 8094: 9d 00 19
	dex                          ; 8097: ca
	.db $10, $f6                 ; 8098: 10 f6
loc_809a:
	jsr $8235                    ; 809a: 20 35 82
loc_809d:
	ldx.w #$007f                 ; 809d: a2 7f 00
	tdc                          ; 80a0: 7b
	clc                          ; 80a1: 18
	adc $0600,x                  ; 80a2: 7d 00 06
	dex                          ; 80a5: ca
	.db $10, $fa                 ; 80a6: 10 fa
loc_80a8:
	sta $97                      ; 80a8: 85 97
	jsr $b30d                    ; 80aa: 20 0d b3
loc_80ad:
	lda $1802                    ; 80ad: ad 02 18
	pha                          ; 80b0: 48
	pha                          ; 80b1: 48
	and.b #$80                   ; 80b2: 29 80
	sta $352c                    ; 80b4: 8d 2c 35
	pla                          ; 80b7: 68
	and.b #$40                   ; 80b8: 29 40
	sta $a9                      ; 80ba: 85 a9
	pla                          ; 80bc: 68
	and.b #$3f                   ; 80bd: 29 3f
	sta $1802                    ; 80bf: 8d 02 18
	lda $a9                      ; 80c2: a5 a9
	.db $f0, $05                 ; 80c4: f0 05
loc_80c6:
	lda.b #$07                   ; 80c6: a9 07
	sta $1802                    ; 80c8: 8d 02 18
loc_80cb:
	lda $1801                    ; 80cb: ad 01 18
	and.b #$80                   ; 80ce: 29 80
	sta $38ef                    ; 80d0: 8d ef 38
	lda $1801                    ; 80d3: ad 01 18
	and.b #$7f                   ; 80d6: 29 7f
	sta $1801                    ; 80d8: 8d 01 18
	rep #$20                     ; 80db: c2 20
	lda $1800                    ; 80dd: ad 00 18
	cmp.w #$0100                 ; 80e0: c9 00 01
	.db $90, $07                 ; 80e3: 90 07
loc_80e5:
	sec                          ; 80e5: 38
	sbc.w #$0000                 ; 80e6: e9 00 00
	sta $1800                    ; 80e9: 8d 00 18
loc_80ec:
	lda $1800                    ; 80ec: ad 00 18
	sta $393d                    ; 80ef: 8d 3d 39
	lda.w #$0008                 ; 80f2: a9 08 00
	sta $393f                    ; 80f5: 8d 3f 39
	jsr $83b9                    ; 80f8: 20 b9 83
loc_80fb:
	tdc                          ; 80fb: 7b
	sep #$20                     ; 80fc: e2 20
	ldx $3941                    ; 80fe: ae 41 39
	tdc                          ; 8101: 7b
	tay                          ; 8102: a8
	lda $0e8000,x                ; 8103: bf 00 80 0e
	sta $299c,y                  ; 8107: 99 9c 29
	iny                          ; 810a: c8
	inx                          ; 810b: e8
	cpy.w #$0008                 ; 810c: c0 08 00
	.db $d0, $f2                 ; 810f: d0 f2
loc_8111:
	lda $299c                    ; 8111: ad 9c 29
	sta $29a4                    ; 8114: 8d a4 29
	and.b #$08                   ; 8117: 29 08
	sta $3581                    ; 8119: 8d 81 35
	ldx.w #$0003                 ; 811c: a2 03 00
	txy                          ; 811f: 9b
	dey                          ; 8120: 88
	lda $299c,x                  ; 8121: bd 9c 29
	sta $29ad,y                  ; 8124: 99 ad 29
	sta $29b1,y                  ; 8127: 99 b1 29
	dex                          ; 812a: ca
	dey                          ; 812b: 88
	.db $10, $f3                 ; 812c: 10 f3
loc_812e:
	lda.b #$ff                   ; 812e: a9 ff
	sta $29b0                    ; 8130: 8d b0 29
	sta $29b4                    ; 8133: 8d b4 29
	tdc                          ; 8136: 7b
	tax                          ; 8137: aa
	lda $29a0                    ; 8138: ad a0 29
	sta $ab                      ; 813b: 85 ab
	stz $29ca,x                  ; 813d: 9e ca 29
	asl $ab                      ; 8140: 06 ab
	rol $29ca,x                  ; 8142: 3e ca 29
	asl $ab                      ; 8145: 06 ab
	rol $29ca,x                  ; 8147: 3e ca 29
	inx                          ; 814a: e8
	cpx.w #$0003                 ; 814b: e0 03 00
	.db $d0, $ed                 ; 814e: d0 ed
loc_8150:
	tdc                          ; 8150: 7b
	tax                          ; 8151: aa
	txy                          ; 8152: 9b
	iny                          ; 8153: c8
	lda $29ad,x                  ; 8154: bd ad 29
	cmp.b #$ff                   ; 8157: c9 ff
	.db $f0, $1d                 ; 8159: f0 1d
loc_815b:
	cmp $29ad,y                  ; 815b: d9 ad 29
	.db $d0, $12                 ; 815e: d0 12
loc_8160:
	clc                          ; 8160: 18
	lda $29ca,x                  ; 8161: bd ca 29
	adc $29ca,y                  ; 8164: 79 ca 29
	sta $29ca,x                  ; 8167: 9d ca 29
	tdc                          ; 816a: 7b
	sta $29ca,y                  ; 816b: 99 ca 29
	dec                          ; 816e: 3a
	sta $29ad,y                  ; 816f: 99 ad 29
loc_8172:
	iny                          ; 8172: c8
	cpy.w #$0003                 ; 8173: c0 03 00
	.db $d0, $dc                 ; 8176: d0 dc
loc_8178:
	inx                          ; 8178: e8
	cpx.w #$0002                 ; 8179: e0 02 00
	.db $d0, $d4                 ; 817c: d0 d4
loc_817e:
	lda.b #$ff                   ; 817e: a9 ff
	ldy.w #$0007                 ; 8180: a0 07 00
	sta $29b5,y                  ; 8183: 99 b5 29
	sta $29bd,y                  ; 8186: 99 bd 29
	dey                          ; 8189: 88
	.db $10, $f7                 ; 818a: 10 f7
loc_818c:
	iny                          ; 818c: c8
	tyx                          ; 818d: bb
	lda $29ca,x                  ; 818e: bd ca 29
	sta $ab                      ; 8191: 85 ab
	.db $f0, $0e                 ; 8193: f0 0e
loc_8195:
	txa                          ; 8195: 8a
	sta $29b5,y                  ; 8196: 99 b5 29
	sta $29bd,y                  ; 8199: 99 bd 29
	iny                          ; 819c: c8
	dec $ab                      ; 819d: c6 ab
	lda $ab                      ; 819f: a5 ab
	.db $d0, $f2                 ; 81a1: d0 f2
loc_81a3:
	inx                          ; 81a3: e8
	cpx.w #$0003                 ; 81a4: e0 03 00
	.db $d0, $e5                 ; 81a7: d0 e5
loc_81a9:
	lda $29a1                    ; 81a9: ad a1 29
	sta $df                      ; 81ac: 85 df
	lda.b #$08                   ; 81ae: a9 08
	sta $e1                      ; 81b0: 85 e1
	jsr $83e0                    ; 81b2: 20 e0 83
loc_81b5:
	ldx $e3                      ; 81b5: a6 e3
	tdc                          ; 81b7: 7b
	tay                          ; 81b8: a8
	lda $0e9000,x                ; 81b9: bf 00 90 0e
	sta $29a5,y                  ; 81bd: 99 a5 29
	inx                          ; 81c0: e8
	iny                          ; 81c1: c8
	cpy.w #$0008                 ; 81c2: c0 08 00
	.db $d0, $f2                 ; 81c5: d0 f2
loc_81c7:
	clc                          ; 81c7: 18
	lda $29ca                    ; 81c8: ad ca 29
	adc $29cb                    ; 81cb: 6d cb 29
	adc $29cc                    ; 81ce: 6d cc 29
	sta $29cd                    ; 81d1: 8d cd 29
	lda $29ca                    ; 81d4: ad ca 29
	sta $38f0                    ; 81d7: 8d f0 38
	lda $29cb                    ; 81da: ad cb 29
	sta $38f1                    ; 81dd: 8d f1 38
	lda $29cc                    ; 81e0: ad cc 29
	sta $38f2                    ; 81e3: 8d f2 38
	lda $29a3                    ; 81e6: ad a3 29
	sta $df                      ; 81e9: 85 df
	lda.b #$10                   ; 81eb: a9 10
	sta $e1                      ; 81ed: 85 e1
	jsr $83e0                    ; 81ef: 20 e0 83
loc_81f2:
	ldx $e3                      ; 81f2: a6 e3
	tdc                          ; 81f4: 7b
	tay                          ; 81f5: a8
	lda $0ebac0,x                ; 81f6: bf c0 ba 0e
	sta $29cf,y                  ; 81fa: 99 cf 29
	inx                          ; 81fd: e8
	iny                          ; 81fe: c8
	cpy.w #$0010                 ; 81ff: c0 10 00
	.db $d0, $f2                 ; 8202: d0 f2
loc_8204:
	jsr $8929                    ; 8204: 20 29 89
loc_8207:
	lda $2282                    ; 8207: ad 82 22
	cmp.b #$61                   ; 820a: c9 61
	.db $90, $0b                 ; 820c: 90 0b
loc_820e:
	sec                          ; 820e: 38
	sbc.b #$61                   ; 820f: e9 61
	tax                          ; 8211: aa
	lda $13ff0f,x                ; 8212: bf 0f ff 13
	sta $38d6                    ; 8216: 8d d6 38
loc_8219:
	lda $38e5                    ; 8219: ad e5 38
	and.b #$0c                   ; 821c: 29 0c
	lsr                          ; 821e: 4a
	lsr                          ; 821f: 4a
	cmp.b #$03                   ; 8220: c9 03
	.db $f0, $09                 ; 8222: f0 09
loc_8224:
	tax                          ; 8224: aa
	lda $13ff0c,x                ; 8225: bf 0c ff 13
	jsl $13ff12                  ; 8229: 22 12 ff 13
loc_822d:
	lda.b #$03                   ; 822d: a9 03
	jsr $8085                    ; 822f: 20 85 80
loc_8232:
	jmp $85d9                    ; 8232: 4c d9 85

; --- Block at $8235-$82ca ---
loc_8235:
	ldx.w #$007f                 ; 8235: a2 7f 00
	stz $80,x                    ; 8238: 74 80
	dex                          ; 823a: ca
	.db $10, $fb                 ; 823b: 10 fb
loc_823d:
	ldx.w #$197d                 ; 823d: a2 7d 19
	stz $2000,x                  ; 8240: 9e 00 20
	dex                          ; 8243: ca
	.db $10, $fa                 ; 8244: 10 fa
loc_8246:
	ldx.w #$0007                 ; 8246: a2 07 00
	stz $1804,x                  ; 8249: 9e 04 18
	dex                          ; 824c: ca
	.db $10, $fa                 ; 824d: 10 fa
loc_824f:
	ldx.w #$0710                 ; 824f: a2 10 07
	lda.b #$80                   ; 8252: a9 80
	sta $2c7a,x                  ; 8254: 9d 7a 2c
	dex                          ; 8257: ca
	dex                          ; 8258: ca
	dex                          ; 8259: ca
	dex                          ; 825a: ca
	.db $10, $f7                 ; 825b: 10 f7
loc_825d:
	ldx.w #$333f                 ; 825d: a2 3f 33
	lda.b #$ff                   ; 8260: a9 ff
	sta $397f,x                  ; 8262: 9d 7f 39
	dex                          ; 8265: ca
	.db $10, $fa                 ; 8266: 10 fa
loc_8268:
	ldx.w #$0005                 ; 8268: a2 05 00
	sta $3929,x                  ; 826b: 9d 29 39
	dex                          ; 826e: ca
	.db $10, $fa                 ; 826f: 10 fa
loc_8271:
	ldx.w #$0007                 ; 8271: a2 07 00
	sta $35f7,x                  ; 8274: 9d f7 35
	dex                          ; 8277: ca
	.db $10, $fa                 ; 8278: 10 fa
loc_827a:
	sta $d0                      ; 827a: 85 d0
	sta $357b                    ; 827c: 8d 7b 35
	sta $357c                    ; 827f: 8d 7c 35
	sta $3583                    ; 8282: 8d 83 35
	sta $355e                    ; 8285: 8d 5e 35
	sta $3601                    ; 8288: 8d 01 36
	sta $3602                    ; 828b: 8d 02 36
	sta $38d6                    ; 828e: 8d d6 38
	lda.b #$1a                   ; 8291: a9 1a
	sta $3317                    ; 8293: 8d 17 33
	sta $3333                    ; 8296: 8d 33 33
	sta $334f                    ; 8299: 8d 4f 33
	sta $336b                    ; 829c: 8d 6b 33
	sta $3387                    ; 829f: 8d 87 33
	inc                          ; 82a2: 1a
	sta $331b                    ; 82a3: 8d 1b 33
	sta $3337                    ; 82a6: 8d 37 33
	sta $3353                    ; 82a9: 8d 53 33
	sta $336f                    ; 82ac: 8d 6f 33
	sta $338b                    ; 82af: 8d 8b 33
	lda $16ac                    ; 82b2: ad ac 16
	sta $3538                    ; 82b5: 8d 38 35
	sta $38ee                    ; 82b8: 8d ee 38
	ldx.w #$0018                 ; 82bb: a2 18 00
	lda.b #$02                   ; 82be: a9 02
	sta $35a4,x                  ; 82c0: 9d a4 35
	stz $35a5,x                  ; 82c3: 9e a5 35
	dex                          ; 82c6: ca
	dex                          ; 82c7: ca
	.db $10, $f6                 ; 82c8: 10 f6
loc_82ca:
	rts                          ; 82ca: 60

; --- Block at $82cb-$8378 ---
loc_82cb:
	lda.b #$00                   ; 82cb: a9 00
	pha                          ; 82cd: 48
	plb                          ; 82ce: ab
	sta $4200                    ; 82cf: 8d 00 42 ; NMITIMEN
	ldx.w #$0000                 ; 82d2: a2 00 00
	phx                          ; 82d5: da
	pld                          ; 82d6: 2b
	lda.b #$80                   ; 82d7: a9 80
	sta $2100                    ; 82d9: 8d 00 21 ; INIDISP
	lda.b #$09                   ; 82dc: a9 09
	sta $2105                    ; 82de: 8d 05 21 ; BGMODE
	ldx.w #$0000                 ; 82e1: a2 00 00
	stx $2102                    ; 82e4: 8e 02 21 ; OAMADDL
	txa                          ; 82e7: 8a
	sta $2101                    ; 82e8: 8d 01 21 ; OBSEL
	lda.b #$22                   ; 82eb: a9 22
	sta $210b                    ; 82ed: 8d 0b 21 ; BG12NBA
	lda.b #$55                   ; 82f0: a9 55
	sta $210c                    ; 82f2: 8d 0c 21 ; BG34NBA
	lda.b #$63                   ; 82f5: a9 63
	sta $2107                    ; 82f7: 8d 07 21 ; BG1SC
	lda.b #$59                   ; 82fa: a9 59
	sta $2108                    ; 82fc: 8d 08 21 ; BG2SC
	lda.b #$73                   ; 82ff: a9 73
	sta $2109                    ; 8301: 8d 09 21 ; BG3SC
	sta $210a                    ; 8304: 8d 0a 21 ; BG4SC
	lda.b #$80                   ; 8307: a9 80
	sta $2115                    ; 8309: 8d 15 21 ; VMAIN
	tdc                          ; 830c: 7b
	tax                          ; 830d: aa
	sta $2106                    ; 830e: 8d 06 21 ; MOSAIC
	sta $210d                    ; 8311: 8d 0d 21 ; BG1HOFS
	sta $210d                    ; 8314: 8d 0d 21 ; BG1HOFS
	sta $210e                    ; 8317: 8d 0e 21 ; BG1VOFS
	sta $210e                    ; 831a: 8d 0e 21 ; BG1VOFS
	sta $210f                    ; 831d: 8d 0f 21 ; BG2HOFS
	sta $210f                    ; 8320: 8d 0f 21 ; BG2HOFS
	sta $2110                    ; 8323: 8d 10 21 ; BG2VOFS
	sta $2110                    ; 8326: 8d 10 21 ; BG2VOFS
	sta $2111                    ; 8329: 8d 11 21 ; BG3HOFS
	sta $2111                    ; 832c: 8d 11 21 ; BG3HOFS
	sta $2112                    ; 832f: 8d 12 21 ; BG3VOFS
	sta $2112                    ; 8332: 8d 12 21 ; BG3VOFS
	sta $2113                    ; 8335: 8d 13 21 ; BG4HOFS
	sta $2113                    ; 8338: 8d 13 21 ; BG4HOFS
	sta $2114                    ; 833b: 8d 14 21 ; BG4VOFS
	sta $2114                    ; 833e: 8d 14 21 ; BG4VOFS
	sta $2123                    ; 8341: 8d 23 21 ; W12SEL
	sta $2124                    ; 8344: 8d 24 21 ; W34SEL
	sta $2125                    ; 8347: 8d 25 21 ; WOBJSEL
	sta $2126                    ; 834a: 8d 26 21 ; WH0
	sta $2127                    ; 834d: 8d 27 21 ; WH1
	sta $2128                    ; 8350: 8d 28 21 ; WH2
	sta $2129                    ; 8353: 8d 29 21 ; WH3
	stx $212a                    ; 8356: 8e 2a 21 ; WBGLOG
	sta $212c                    ; 8359: 8d 2c 21 ; TM
	sta $212d                    ; 835c: 8d 2d 21 ; TS
	sta $212e                    ; 835f: 8d 2e 21 ; TMW
	sta $212f                    ; 8362: 8d 2f 21 ; TSW
	sta $420b                    ; 8365: 8d 0b 42 ; MDMAEN
	sta $420c                    ; 8368: 8d 0c 42 ; HDMAEN
	sta $2131                    ; 836b: 8d 31 21 ; CGADSUB
	sta $2133                    ; 836e: 8d 33 21 ; SETINI
	sta $2130                    ; 8371: 8d 30 21 ; CGWSEL
	lda.b #$7e                   ; 8374: a9 7e
	pha                          ; 8376: 48
	plb                          ; 8377: ab
	rts                          ; 8378: 60

; --- Block at $8379-$83b8 ---
loc_8379:
	sep #$10                     ; 8379: e2 10
	stx $96                      ; 837b: 86 96
	cpx.b #$ff                   ; 837d: e0 ff
	.db $d0, $02                 ; 837f: d0 02
loc_8381:
	.db $80, $33                 ; 8381: 80 33
loc_8383:
	cmp.b #$00                   ; 8383: c9 00
	.db $f0, $2f                 ; 8385: f0 2f
loc_8387:
	cmp $96                      ; 8387: c5 96
	.db $f0, $2b                 ; 8389: f0 2b
loc_838b:
	ldx $97                      ; 838b: a6 97
	sec                          ; 838d: 38
	sbc $96                      ; 838e: e5 96
	cmp.b #$ff                   ; 8390: c9 ff
	.db $d0, $05                 ; 8392: d0 05
loc_8394:
	lda $1900,x                  ; 8394: bd 00 19
	.db $80, $1d                 ; 8397: 80 1d
loc_8399:
	inc                          ; 8399: 1a
	sta $3947                    ; 839a: 8d 47 39
	stz $3948                    ; 839d: 9c 48 39
	lda $1900,x                  ; 83a0: bd 00 19
	tax                          ; 83a3: aa
	stx $3945                    ; 83a4: 8e 45 39
	rep #$10                     ; 83a7: c2 10
	jsr $8407                    ; 83a9: 20 07 84
loc_83ac:
	sep #$10                     ; 83ac: e2 10
	clc                          ; 83ae: 18
	lda $394b                    ; 83af: ad 4b 39
	adc $96                      ; 83b2: 65 96
	inc $97                      ; 83b4: e6 97
loc_83b6:
	rep #$10                     ; 83b6: c2 10
	rts                          ; 83b8: 60

; --- Block at $83b9-$83df ---
loc_83b9:
	rep #$20                     ; 83b9: c2 20
	ldx.w #$0010                 ; 83bb: a2 10 00
	stz $3941                    ; 83be: 9c 41 39
	stz $3943                    ; 83c1: 9c 43 39
	ror $393f                    ; 83c4: 6e 3f 39
	.db $90, $0a                 ; 83c7: 90 0a
loc_83c9:
	clc                          ; 83c9: 18
	lda $393d                    ; 83ca: ad 3d 39
	adc $3943                    ; 83cd: 6d 43 39
	sta $3943                    ; 83d0: 8d 43 39
loc_83d3:
	ror $3943                    ; 83d3: 6e 43 39
	ror $3941                    ; 83d6: 6e 41 39
	dex                          ; 83d9: ca
	.db $d0, $e8                 ; 83da: d0 e8
loc_83dc:
	tdc                          ; 83dc: 7b
	sep #$20                     ; 83dd: e2 20
	rts                          ; 83df: 60

; --- Block at $83e0-$8406 ---
loc_83e0:
	stz $e0                      ; 83e0: 64 e0
	stz $e2                      ; 83e2: 64 e2
	rep #$20                     ; 83e4: c2 20
	ldx.w #$0010                 ; 83e6: a2 10 00
	stz $e3                      ; 83e9: 64 e3
	stz $394d                    ; 83eb: 9c 4d 39
	ror $e1                      ; 83ee: 66 e1
	.db $90, $09                 ; 83f0: 90 09
loc_83f2:
	clc                          ; 83f2: 18
	lda $df                      ; 83f3: a5 df
	adc $394d                    ; 83f5: 6d 4d 39
	sta $394d                    ; 83f8: 8d 4d 39
loc_83fb:
	ror $394d                    ; 83fb: 6e 4d 39
	ror $e3                      ; 83fe: 66 e3
	dex                          ; 8400: ca
	.db $d0, $eb                 ; 8401: d0 eb
loc_8403:
	tdc                          ; 8403: 7b
	sep #$20                     ; 8404: e2 20
	rts                          ; 8406: 60

; --- Block at $8407-$8442 ---
loc_8407:
	rep #$20                     ; 8407: c2 20
	stz $3949                    ; 8409: 9c 49 39
	stz $394b                    ; 840c: 9c 4b 39
	lda $3945                    ; 840f: ad 45 39
	.db $f0, $2b                 ; 8412: f0 2b
loc_8414:
	lda $3947                    ; 8414: ad 47 39
	.db $f0, $26                 ; 8417: f0 26
loc_8419:
	clc                          ; 8419: 18
	ldx.w #$0010                 ; 841a: a2 10 00
	rol $3945                    ; 841d: 2e 45 39
	rol $394b                    ; 8420: 2e 4b 39
	sec                          ; 8423: 38
	lda $394b                    ; 8424: ad 4b 39
	sbc $3947                    ; 8427: ed 47 39
	sta $394b                    ; 842a: 8d 4b 39
	.db $b0, $0a                 ; 842d: b0 0a
loc_842f:
	lda $394b                    ; 842f: ad 4b 39
	adc $3947                    ; 8432: 6d 47 39
	sta $394b                    ; 8435: 8d 4b 39
	clc                          ; 8438: 18
loc_8439:
	rol $3949                    ; 8439: 2e 49 39
	dex                          ; 843c: ca
	.db $d0, $de                 ; 843d: d0 de
loc_843f:
	tdc                          ; 843f: 7b
	sep #$20                     ; 8440: e2 20
	rts                          ; 8442: 60

; --- Block at $8443-$845d ---
loc_8443:
	sta $82                      ; 8443: 85 82
	sty $80                      ; 8445: 84 80
	tdc                          ; 8447: 7b
	tay                          ; 8448: a8
	lda $e5                      ; 8449: a5 e5
	.db $f0, $10                 ; 844b: f0 10
loc_844d:
	lda [$80],y                  ; 844d: b7 80
	cmp.b #$ff                   ; 844f: c9 ff
	.db $d0, $06                 ; 8451: d0 06
loc_8453:
	dec $e5                      ; 8453: c6 e5
	lda $e5                      ; 8455: a5 e5
	.db $f0, $03                 ; 8457: f0 03
loc_8459:
	iny                          ; 8459: c8
	.db $80, $f1                 ; 845a: 80 f1
loc_845c:
	iny                          ; 845c: c8
loc_845d:
	rts                          ; 845d: 60

; --- Block at $845e-$847a ---
loc_845e:
	sta $e1                      ; 845e: 85 e1
	lda $e5                      ; 8460: a5 e5
	sta $df                      ; 8462: 85 df
	lda $e1                      ; 8464: a5 e1
	sta $e5                      ; 8466: 85 e5
	jsr $83e0                    ; 8468: 20 e0 83
loc_846b:
	ldy $e3                      ; 846b: a4 e3
	tdc                          ; 846d: 7b
	tax                          ; 846e: aa
	lda [$80],y                  ; 846f: b7 80
	sta $289c,x                  ; 8471: 9d 9c 28
	iny                          ; 8474: c8
	inx                          ; 8475: e8
	cpx $e5                      ; 8476: e4 e5
	.db $d0, $f5                 ; 8478: d0 f5
loc_847a:
	rts                          ; 847a: 60

; --- Block at $847c-$847d ---
loc_847c:
	asl                          ; 847c: 0a

; --- Block at $847d-$847e ---
loc_847d:
	asl                          ; 847d: 0a

; --- Block at $847e-$8481 ---
loc_847e:
	asl                          ; 847e: 0a
	asl                          ; 847f: 0a
	asl                          ; 8480: 0a
	rts                          ; 8481: 60

; --- Block at $8483-$8484 ---
loc_8483:
	lsr                          ; 8483: 4a

; --- Block at $8484-$8488 ---
loc_8484:
	lsr                          ; 8484: 4a
loc_8485:
	lsr                          ; 8485: 4a
loc_8486:
	lsr                          ; 8486: 4a
	lsr                          ; 8487: 4a
	rts                          ; 8488: 60

; --- Block at $8489-$84e2 ---
loc_8489:
	sta $352f                    ; 8489: 8d 2f 35
	sta $df                      ; 848c: 85 df
	lda.b #$80                   ; 848e: a9 80
	sta $e1                      ; 8490: 85 e1
	jsr $83e0                    ; 8492: 20 e0 83
loc_8495:
	ldx $e3                      ; 8495: a6 e3
	stx $a6                      ; 8497: 86 a6
	lda $352f                    ; 8499: ad 2f 35
	sta $df                      ; 849c: 85 df
	lda.b #$15                   ; 849e: a9 15
	sta $e1                      ; 84a0: 85 e1
	jsr $83e0                    ; 84a2: 20 e0 83
loc_84a5:
	ldx $e3                      ; 84a5: a6 e3
	stx $3530                    ; 84a7: 8e 30 35
	lda $352f                    ; 84aa: ad 2f 35
	sta $df                      ; 84ad: 85 df
	lda.b #$37                   ; 84af: a9 37
	sta $e1                      ; 84b1: 85 e1
	jsr $83e0                    ; 84b3: 20 e0 83
loc_84b6:
	ldx $e3                      ; 84b6: a6 e3
	stx $3532                    ; 84b8: 8e 32 35
	lda $352f                    ; 84bb: ad 2f 35
	sta $df                      ; 84be: 85 df
	lda.b #$1c                   ; 84c0: a9 1c
	sta $e1                      ; 84c2: 85 e1
	jsr $83e0                    ; 84c4: 20 e0 83
loc_84c7:
	ldx $e3                      ; 84c7: a6 e3
	stx $3534                    ; 84c9: 8e 34 35
	lda $352f                    ; 84cc: ad 2f 35
	tax                          ; 84cf: aa
	stx $393d                    ; 84d0: 8e 3d 39
	ldx.w #$0120                 ; 84d3: a2 20 01
	stx $393f                    ; 84d6: 8e 3f 39
	jsr $83b9                    ; 84d9: 20 b9 83
loc_84dc:
	ldx $3941                    ; 84dc: ae 41 39
	stx $3536                    ; 84df: 8e 36 35
	rts                          ; 84e2: 60

; --- Block at $84e3-$84fb ---
loc_84e3:
	rep #$20                     ; 84e3: c2 20
	clc                          ; 84e5: 18
	lda $3956                    ; 84e6: ad 56 39
	adc $3958                    ; 84e9: 6d 58 39
	sta $395a                    ; 84ec: 8d 5a 39
	lda.w #$0000                 ; 84ef: a9 00 00
	adc.w #$0000                 ; 84f2: 69 00 00
	sta $395c                    ; 84f5: 8d 5c 39
	tdc                          ; 84f8: 7b
	sep #$20                     ; 84f9: e2 20
	rts                          ; 84fb: 60

; --- Block at $850c-$8519 ---
loc_850c:
	ldx.w #$0000                 ; 850c: a2 00 00
	ldy.w #$0008                 ; 850f: a0 08 00
	asl                          ; 8512: 0a
	.db $90, $01                 ; 8513: 90 01
loc_8515:
	inx                          ; 8515: e8
loc_8516:
	dey                          ; 8516: 88
	.db $d0, $f9                 ; 8517: d0 f9
loc_8519:
	rts                          ; 8519: 60

; --- Block at $855a-$855e ---
loc_855a:
	and $13fef6,x                ; 855a: 3f f6 fe 13
	rts                          ; 855e: 60

; --- Block at $855f-$8563 ---
loc_855f:
	ora $13fefe,x                ; 855f: 1f fe fe 13
	rts                          ; 8563: 60

; --- Block at $8564-$8568 ---
loc_8564:
	and $13fefe,x                ; 8564: 3f fe fe 13
	rts                          ; 8568: 60

; --- Block at $8569-$8578 ---
loc_8569:
	clc                          ; 8569: 18
	adc $3530                    ; 856a: 6d 30 35
	sta $3598                    ; 856d: 8d 98 35
	lda $3531                    ; 8570: ad 31 35
	adc.b #$00                   ; 8573: 69 00
	sta $3599                    ; 8575: 8d 99 35
	rts                          ; 8578: 60

; --- Block at $8579-$8581 ---
loc_8579:
	ldx.w #$0000                 ; 8579: a2 00 00
	lda.b #$07                   ; 857c: a9 07
	jsr $8379                    ; 857e: 20 79 83
loc_8581:
	rts                          ; 8581: 60

; --- Block at $8582-$858a ---
loc_8582:
	ldx.w #$0000                 ; 8582: a2 00 00
	lda.b #$04                   ; 8585: a9 04
	jsr $8379                    ; 8587: 20 79 83
loc_858a:
	rts                          ; 858a: 60

; --- Block at $858b-$8592 ---
loc_858b:
	tdc                          ; 858b: 7b
	tax                          ; 858c: aa
	lda.b #$62                   ; 858d: a9 62
	jsr $8379                    ; 858f: 20 79 83
loc_8592:
	rts                          ; 8592: 60

; --- Block at $8593-$859a ---
loc_8593:
	tdc                          ; 8593: 7b
	tax                          ; 8594: aa
	lda.b #$ff                   ; 8595: a9 ff
	jsr $8379                    ; 8597: 20 79 83
loc_859a:
	rts                          ; 859a: 60

; --- Block at $859b-$85a5 ---
loc_859b:
	lda.b #$f8                   ; 859b: a9 f8
	sta $33c2                    ; 859d: 8d c2 33
	lda.b #$03                   ; 85a0: a9 03
	sta $33c3                    ; 85a2: 8d c3 33
	rts                          ; 85a5: 60

; --- Block at $85bc-$85c7 ---
loc_85bc:
	rep #$20                     ; 85bc: c2 20
	txa                          ; 85be: 8a
	clc                          ; 85bf: 18
	adc.w #$0080                 ; 85c0: 69 80 00
	tax                          ; 85c3: aa
	tdc                          ; 85c4: 7b
	sep #$20                     ; 85c5: e2 20
	rts                          ; 85c7: 60

; --- Block at $85c8-$85d8 ---
loc_85c8:
	jsr $8569                    ; 85c8: 20 69 85
loc_85cb:
	ldx $3598                    ; 85cb: ae 98 35
	lda $d4                      ; 85ce: a5 d4
	sta $2a04,x                  ; 85d0: 9d 04 2a
	lda $d5                      ; 85d3: a5 d5
	sta $2a05,x                  ; 85d5: 9d 05 2a
	rts                          ; 85d8: 60

; --- Block at $85d9-$8684 ---
loc_85d9:
	lda $16ac                    ; 85d9: ad ac 16
	tax                          ; 85dc: aa
	lda $13ff06,x                ; 85dd: bf 06 ff 13
	inc                          ; 85e1: 1a
	sta $3538                    ; 85e2: 8d 38 35
	stz $38e6                    ; 85e5: 9c e6 38
	lda.b #$02                   ; 85e8: a9 02
	jsr $8085                    ; 85ea: 20 85 80
loc_85ed:
	lda $38d9                    ; 85ed: ad d9 38
	ora $38da                    ; 85f0: 0d da 38
	.db $d0, $f3                 ; 85f3: d0 f3
loc_85f5:
	dec $3538                    ; 85f5: ce 38 35
	lda $3538                    ; 85f8: ad 38 35
	.db $d0, $eb                 ; 85fb: d0 eb
loc_85fd:
	lda $38d7                    ; 85fd: ad d7 38
	.db $d0, $07                 ; 8600: d0 07
loc_8602:
	lda $3581                    ; 8602: ad 81 35
	and.b #$08                   ; 8605: 29 08
	.db $f0, $2f                 ; 8607: f0 2f
loc_8609:
	lda $3581                    ; 8609: ad 81 35
	and.b #$08                   ; 860c: 29 08
	.db $f0, $04                 ; 860e: f0 04
loc_8610:
	lda.b #$04                   ; 8610: a9 04
	.db $80, $0b                 ; 8612: 80 0b
loc_8614:
	lda $38d7                    ; 8614: ad d7 38
	.db $30, $04                 ; 8617: 30 04
loc_8619:
	lda.b #$02                   ; 8619: a9 02
	.db $80, $02                 ; 861b: 80 02
loc_861d:
	lda.b #$03                   ; 861d: a9 03
loc_861f:
	sta $34ca                    ; 861f: 8d ca 34
	lda.b #$ff                   ; 8622: a9 ff
	sta $34cb                    ; 8624: 8d cb 34
	sta $33c4                    ; 8627: 8d c4 33
	jsr $859b                    ; 862a: 20 9b 85
loc_862d:
	lda.b #$05                   ; 862d: a9 05
	jsr $8085                    ; 862f: 20 85 80
loc_8632:
	stz $38d7                    ; 8632: 9c d7 38
	stz $3581                    ; 8635: 9c 81 35
loc_8638:
	lda $2282                    ; 8638: ad 82 22
	cmp.b #$63                   ; 863b: c9 63
	.db $d0, $0a                 ; 863d: d0 0a
loc_863f:
	lda $352d                    ; 863f: ad 2d 35
	.db $d0, $05                 ; 8642: d0 05
loc_8644:
	lda.b #$0f                   ; 8644: a9 0f
	sta $38d6                    ; 8646: 8d d6 38
loc_8649:
	jsr $9681                    ; 8649: 20 81 96
loc_864c:
	lda $3601                    ; 864c: ad 01 36
	cmp.b #$ff                   ; 864f: c9 ff
	.db $d0, $06                 ; 8651: d0 06
loc_8653:
	jsr $805f                    ; 8653: 20 5f 80
loc_8656:
	jsr $aa0f                    ; 8656: 20 0f aa
loc_8659:
	jsr $a01f                    ; 8659: 20 1f a0
loc_865c:
	lda $a8                      ; 865c: a5 a8
	.db $d0, $3f                 ; 865e: d0 3f
loc_8660:
	lda $3601                    ; 8660: ad 01 36
	cmp.b #$ff                   ; 8663: c9 ff
	.db $d0, $06                 ; 8665: d0 06
loc_8667:
	jsr $aaf2                    ; 8667: 20 f2 aa
loc_866a:
	jsr $a3ed                    ; 866a: 20 ed a3
loc_866d:
	jsr $974b                    ; 866d: 20 4b 97
loc_8670:
	lda $d1                      ; 8670: a5 d1
	.db $f0, $10                 ; 8672: f0 10
loc_8674:
	jsr $97bd                    ; 8674: 20 bd 97
loc_8677:
	jsr $8687                    ; 8677: 20 87 86
loc_867a:
	lda $352e                    ; 867a: ad 2e 35
	cmp.b #$02                   ; 867d: c9 02
	.db $d0, $03                 ; 867f: d0 03
loc_8681:
	jsr $c17c                    ; 8681: 20 7c c1
loc_8684:
	jmp $85d9                    ; 8684: 4c d9 85

; --- Block at $8687-$869f ---
loc_8687:
	lda $352e                    ; 8687: ad 2e 35
	asl                          ; 868a: 0a
	tax                          ; 868b: aa
	lda $038921,x                ; 868c: bf 21 89 03
	sta $80                      ; 8690: 85 80
	lda $038922,x                ; 8692: bf 22 89 03
	sta $81                      ; 8696: 85 81
	lda.b #$03                   ; 8698: a9 03
	sta $82                      ; 869a: 85 82
	jml.w [$0080]                ; 869c: dc 80 00

; --- Block at $869f-$86cb ---
loc_869f:
	jsl $13ff3a                  ; 869f: 22 3a ff 13
loc_86a3:
	lda.b #$85                   ; 86a3: a9 85
	sta $35f3                    ; 86a5: 8d f3 35
	lda $d7                      ; 86a8: a5 d7
	.db $f0, $05                 ; 86aa: f0 05
loc_86ac:
	lda.b #$01                   ; 86ac: a9 01
	jsr $8085                    ; 86ae: 20 85 80
loc_86b1:
	lda $a8                      ; 86b1: a5 a8
	sta $1803                    ; 86b3: 8d 03 18
	and.b #$60                   ; 86b6: 29 60
	.db $d0, $55                 ; 86b8: d0 55
loc_86ba:
	lda $a8                      ; 86ba: a5 a8
	and.b #$04                   ; 86bc: 29 04
	.db $f0, $0e                 ; 86be: f0 0e
loc_86c0:
	lda.b #$15                   ; 86c0: a9 15
	jsr $8085                    ; 86c2: 20 85 80
loc_86c5:
	jsr $880f                    ; 86c5: 20 0f 88
loc_86c8:
	jsr $f186                    ; 86c8: 20 86 f1
loc_86cb:
	jmp $8766                    ; 86cb: 4c 66 87

; --- Block at $86ce-$870f ---
loc_86ce:
	lda $38e5                    ; 86ce: ad e5 38
	and.b #$0c                   ; 86d1: 29 0c
	cmp.b #$0c                   ; 86d3: c9 0c
	.db $f0, $05                 ; 86d5: f0 05
loc_86d7:
	lda.b #$8b                   ; 86d7: a9 8b
	sta $35f3                    ; 86d9: 8d f3 35
loc_86dc:
	lda.b #$0c                   ; 86dc: a9 0c
	jsr $8085                    ; 86de: 20 85 80
loc_86e1:
	lda.b #$02                   ; 86e1: a9 02
	jsr $8085                    ; 86e3: 20 85 80
loc_86e6:
	lda.b #$15                   ; 86e6: a9 15
	jsr $8085                    ; 86e8: 20 85 80
loc_86eb:
	jsr $859b                    ; 86eb: 20 9b 85
loc_86ee:
	lda.b #$24                   ; 86ee: a9 24
	sta $34ca                    ; 86f0: 8d ca 34
	lda.b #$ff                   ; 86f3: a9 ff
	sta $34cb                    ; 86f5: 8d cb 34
	sta $33c4                    ; 86f8: 8d c4 33
	stz $359a                    ; 86fb: 9c 9a 35
	lda.b #$40                   ; 86fe: a9 40
	sta $34c2                    ; 8700: 8d c2 34
	lda $388b                    ; 8703: ad 8b 38
	.db $d0, $05                 ; 8706: d0 05
loc_8708:
	lda.b #$05                   ; 8708: a9 05
	jsr $8085                    ; 870a: 20 85 80
loc_870d:
	.db $80, $57                 ; 870d: 80 57

; --- Block at $870f-$87d7 ---
loc_870f:
	and.b #$40                   ; 870f: 29 40
	.db $f0, $15                 ; 8711: f0 15
loc_8713:
	lda.b #$13                   ; 8713: a9 13
	jsr $8085                    ; 8715: 20 85 80
loc_8718:
	jsr $880f                    ; 8718: 20 0f 88
loc_871b:
	jsr $f186                    ; 871b: 20 86 f1
loc_871e:
	lda $38f3                    ; 871e: ad f3 38
	.db $d0, $43                 ; 8721: d0 43
loc_8723:
	jsr $8840                    ; 8723: 20 40 88
loc_8726:
	.db $80, $3e                 ; 8726: 80 3e
loc_8728:
	jsr $87d8                    ; 8728: 20 d8 87
loc_872b:
	lda $a9                      ; 872b: a5 a9
	.db $d0, $09                 ; 872d: d0 09
loc_872f:
	lda $38e5                    ; 872f: ad e5 38
	and.b #$0c                   ; 8732: 29 0c
	cmp.b #$0c                   ; 8734: c9 0c
	.db $f0, $08                 ; 8736: f0 08
loc_8738:
	lda.b #$08                   ; 8738: a9 08
	sta $38be                    ; 873a: 8d be 38
	inc $38bd                    ; 873d: ee bd 38
loc_8740:
	jsr $880f                    ; 8740: 20 0f 88
loc_8743:
	lda.b #$02                   ; 8743: a9 02
	jsr $8085                    ; 8745: 20 85 80
loc_8748:
	jsr $8803                    ; 8748: 20 03 88
loc_874b:
	lda $a9                      ; 874b: a5 a9
	.db $d0, $05                 ; 874d: d0 05
loc_874f:
	lda.b #$12                   ; 874f: a9 12
	jsr $8085                    ; 8751: 20 85 80
loc_8754:
	jsr $f186                    ; 8754: 20 86 f1
loc_8757:
	lda $a8                      ; 8757: a5 a8
	and.b #$10                   ; 8759: 29 10
	.db $f0, $09                 ; 875b: f0 09
loc_875d:
	jsr $ec6d                    ; 875d: 20 6d ec
loc_8760:
	jsr $880f                    ; 8760: 20 0f 88
loc_8763:
	jsr $f186                    ; 8763: 20 86 f1
loc_8766:
	tdc                          ; 8766: 7b
	tax                          ; 8767: aa
	dex                          ; 8768: ca
	.db $d0, $fd                 ; 8769: d0 fd
loc_876b:
	stz $ab                      ; 876b: 64 ab
	ldx $1800                    ; 876d: ae 00 18
	cpx.w #$01c0                 ; 8770: e0 c0 01
	.db $90, $02                 ; 8773: 90 02
loc_8775:
	inc $ab                      ; 8775: e6 ab
loc_8777:
	ldx.w #$0007                 ; 8777: a2 07 00
	lda $1804,x                  ; 877a: bd 04 18
	ora $ab                      ; 877d: 05 ab
	sta $ab                      ; 877f: 85 ab
	dex                          ; 8781: ca
	.db $10, $f6                 ; 8782: 10 f6
loc_8784:
	inx                          ; 8784: e8
	dex                          ; 8785: ca
	.db $d0, $fd                 ; 8786: d0 fd
loc_8788:
	lda $38e5                    ; 8788: ad e5 38
	and.b #$0c                   ; 878b: 29 0c
	cmp.b #$0c                   ; 878d: c9 0c
	.db $f0, $1a                 ; 878f: f0 1a
loc_8791:
	lda $ab                      ; 8791: a5 ab
	.db $d0, $16                 ; 8793: d0 16
loc_8795:
	lda $1800                    ; 8795: ad 00 18
	cmp.b #$b7                   ; 8798: c9 b7
	.db $d0, $05                 ; 879a: d0 05
loc_879c:
	lda $1801                    ; 879c: ad 01 18
	.db $d0, $0a                 ; 879f: d0 0a
loc_87a1:
	lda $35f3                    ; 87a1: ad f3 35
	sta $1e00                    ; 87a4: 8d 00 1e
	jsl $048004                  ; 87a7: 22 04 80 04
loc_87ab:
	lda.b #$ff                   ; 87ab: a9 ff
	sta $a9                      ; 87ad: 85 a9
	lda.b #$10                   ; 87af: a9 10
	sta $aa                      ; 87b1: 85 aa
	inc $a9                      ; 87b3: e6 a9
	dec $aa                      ; 87b5: c6 aa
	lda $aa                      ; 87b7: a5 aa
	.db $f0, $16                 ; 87b9: f0 16
loc_87bb:
	lda $a9                      ; 87bb: a5 a9
	jsr $847e                    ; 87bd: 20 7e 84
loc_87c0:
	ora.b #$03                   ; 87c0: 09 03
	sta $6cc2                    ; 87c2: 8d c2 6c
	lda $aa                      ; 87c5: a5 aa
	sta $6cc1                    ; 87c7: 8d c1 6c
	lda.b #$02                   ; 87ca: a9 02
	jsr $8085                    ; 87cc: 20 85 80
loc_87cf:
	.db $80, $e2                 ; 87cf: 80 e2
loc_87d1:
	lda.b #$00                   ; 87d1: a9 00
	sta.l $002106                ; 87d3: 8f 06 21 00 ; MOSAIC
	rts                          ; 87d7: 60

; --- Block at $87d8-$87e1 ---
loc_87d8:
	ldx.w #$fe67                 ; 87d8: a2 67 fe
	stx $ab                      ; 87db: 86 ab
	lda.b #$13                   ; 87dd: a9 13
	sta $ad                      ; 87df: 85 ad
	jmp $87e4                    ; 87e1: 4c e4 87

; --- Block at $87e4-$87fd ---
loc_87e4:
	stz $a9                      ; 87e4: 64 a9
	tdc                          ; 87e6: 7b
	tay                          ; 87e7: a8
	lda [$ab],y                  ; 87e8: b7 ab
	cmp.b #$ff                   ; 87ea: c9 ff
	.db $f0, $14                 ; 87ec: f0 14
loc_87ee:
	cmp $1800                    ; 87ee: cd 00 18
	.db $d0, $0b                 ; 87f1: d0 0b
loc_87f3:
	iny                          ; 87f3: c8
	lda [$ab],y                  ; 87f4: b7 ab
	cmp $1801                    ; 87f6: cd 01 18
	.db $d0, $04                 ; 87f9: d0 04
loc_87fb:
	inc $a9                      ; 87fb: e6 a9
	rts                          ; 87fd: 60

; --- Block at $87fe-$8802 ---
loc_87fe:
	iny                          ; 87fe: c8
loc_87ff:
	iny                          ; 87ff: c8
	.db $80, $e6                 ; 8800: 80 e6

; --- Block at $8802-$8802 ---
loc_8802:
	rts                          ; 8802: 60

; --- Block at $8803-$880c ---
loc_8803:
	ldx.w #$fe76                 ; 8803: a2 76 fe
	stx $ab                      ; 8806: 86 ab
	lda.b #$13                   ; 8808: a9 13
	sta $ad                      ; 880a: 85 ad
	jmp $87e4                    ; 880c: 4c e4 87

; --- Block at $880f-$883f ---
loc_880f:
	tdc                          ; 880f: 7b
	tax                          ; 8810: aa
	tay                          ; 8811: a8
	lda $2003,x                  ; 8812: bd 03 20
	sta $38bf,y                  ; 8815: 99 bf 38
	and.b #$f8                   ; 8818: 29 f8
	sta $2003,x                  ; 881a: 9d 03 20
	lda $2004,x                  ; 881d: bd 04 20
	sta $38c0,y                  ; 8820: 99 c0 38
	and.b #$40                   ; 8823: 29 40
	sta $2004,x                  ; 8825: 9d 04 20
	stz $2005,x                  ; 8828: 9e 05 20
	lda $2006,x                  ; 882b: bd 06 20
	sta $38c1,y                  ; 882e: 99 c1 38
	stz $2006,x                  ; 8831: 9e 06 20
	jsr $85bc                    ; 8834: 20 bc 85
loc_8837:
	iny                          ; 8837: c8
	iny                          ; 8838: c8
	iny                          ; 8839: c8
	cpy.w #$000f                 ; 883a: c0 0f 00
	.db $d0, $d3                 ; 883d: d0 d3
loc_883f:
	rts                          ; 883f: 60

; --- Block at $8840-$8847 ---
loc_8840:
	jsr $858b                    ; 8840: 20 8b 85
loc_8843:
	cmp.b #$32                   ; 8843: c9 32
	.db $b0, $03                 ; 8845: b0 03
loc_8847:
	jmp $8920                    ; 8847: 4c 20 89

; --- Block at $884a-$8920 ---
loc_884a:
	ldy.w #$0000                 ; 884a: a0 00 00
	sty $ab                      ; 884d: 84 ab
	sty $289c                    ; 884f: 8c 9c 28
	sty $289e                    ; 8852: 8c 9e 28
	ldy $ab                      ; 8855: a4 ab
	lda $3588,y                  ; 8857: b9 88 35
	tax                          ; 885a: aa
	stx $a9                      ; 885b: 86 a9
	asl $a9                      ; 885d: 06 a9
	rol $aa                      ; 885f: 26 aa
	ldx $a9                      ; 8861: a6 a9
	lda $0ea000,x                ; 8863: bf 00 a0 0e
	sta $393d                    ; 8867: 8d 3d 39
	lda $0ea001,x                ; 886a: bf 01 a0 0e
	sta $393e                    ; 886e: 8d 3e 39
	lda $38f0,y                  ; 8871: b9 f0 38
	tax                          ; 8874: aa
	stx $393f                    ; 8875: 8e 3f 39
	jsr $83b9                    ; 8878: 20 b9 83
loc_887b:
	clc                          ; 887b: 18
	lda $3941                    ; 887c: ad 41 39
	adc $289c                    ; 887f: 6d 9c 28
	sta $289c                    ; 8882: 8d 9c 28
	lda $3942                    ; 8885: ad 42 39
	adc $289d                    ; 8888: 6d 9d 28
	sta $289d                    ; 888b: 8d 9d 28
	lda $3943                    ; 888e: ad 43 39
	adc $289e                    ; 8891: 6d 9e 28
	sta $289e                    ; 8894: 8d 9e 28
	inc $ab                      ; 8897: e6 ab
	lda $ab                      ; 8899: a5 ab
	cmp.b #$03                   ; 889b: c9 03
	.db $d0, $b6                 ; 889d: d0 b6
loc_889f:
	lsr $289e                    ; 889f: 4e 9e 28
	ror $289d                    ; 88a2: 6e 9d 28
	ror $289c                    ; 88a5: 6e 9c 28
	lsr $289e                    ; 88a8: 4e 9e 28
	ror $289d                    ; 88ab: 6e 9d 28
	ror $289c                    ; 88ae: 6e 9c 28
	lda $289c                    ; 88b1: ad 9c 28
	ora $289d                    ; 88b4: 0d 9d 28
	.db $f0, $67                 ; 88b7: f0 67
loc_88b9:
	lda $16a0                    ; 88b9: ad a0 16
	ora $16a1                    ; 88bc: 0d a1 16
	ora $16a2                    ; 88bf: 0d a2 16
	.db $f0, $5c                 ; 88c2: f0 5c
loc_88c4:
	lda $16a0                    ; 88c4: ad a0 16
	sta $a9                      ; 88c7: 85 a9
	lda $16a1                    ; 88c9: ad a1 16
	sta $aa                      ; 88cc: 85 aa
	sec                          ; 88ce: 38
	lda $16a0                    ; 88cf: ad a0 16
	sbc $289c                    ; 88d2: ed 9c 28
	sta $16a0                    ; 88d5: 8d a0 16
	lda $16a1                    ; 88d8: ad a1 16
	sbc $289d                    ; 88db: ed 9d 28
	sta $16a1                    ; 88de: 8d a1 16
	lda $16a2                    ; 88e1: ad a2 16
	sbc $289e                    ; 88e4: ed 9e 28
	sta $16a2                    ; 88e7: 8d a2 16
	.db $b0, $13                 ; 88ea: b0 13
loc_88ec:
	lda $a9                      ; 88ec: a5 a9
	sta $289c                    ; 88ee: 8d 9c 28
	lda $aa                      ; 88f1: a5 aa
	sta $289d                    ; 88f3: 8d 9d 28
	stz $16a0                    ; 88f6: 9c a0 16
	stz $16a1                    ; 88f9: 9c a1 16
	stz $16a2                    ; 88fc: 9c a2 16
loc_88ff:
	lda $289c                    ; 88ff: ad 9c 28
	sta $359a                    ; 8902: 8d 9a 35
	lda $289d                    ; 8905: ad 9d 28
	sta $359b                    ; 8908: 8d 9b 35
	stz $359c                    ; 890b: 9c 9c 35
	lda.b #$37                   ; 890e: a9 37
	sta $34ca                    ; 8910: 8d ca 34
	jsr $859b                    ; 8913: 20 9b 85
loc_8916:
	lda.b #$ff                   ; 8916: a9 ff
	sta $34cc                    ; 8918: 8d cc 34
	lda.b #$05                   ; 891b: a9 05
	jsr $8085                    ; 891d: 20 85 80
loc_8920:
	rts                          ; 8920: 60

; --- Block at $8929-$8a32 ---
loc_8929:
	lda $1800                    ; 8929: ad 00 18
	cmp.b #$b6                   ; 892c: c9 b6
	.db $f0, $04                 ; 892e: f0 04
loc_8930:
	cmp.b #$b7                   ; 8930: c9 b7
	.db $d0, $08                 ; 8932: d0 08
loc_8934:
	lda $1801                    ; 8934: ad 01 18
	.db $f0, $03                 ; 8937: f0 03
loc_8939:
	inc $3881                    ; 8939: ee 81 38
loc_893c:
	jsr $94b2                    ; 893c: 20 b2 94
loc_893f:
	jsr $962f                    ; 893f: 20 2f 96
loc_8942:
	jsr $95d8                    ; 8942: 20 d8 95
loc_8945:
	lda $29a2                    ; 8945: ad a2 29
	sta $38e5                    ; 8948: 8d e5 38
	and.b #$20                   ; 894b: 29 20
	sta $388b                    ; 894d: 8d 8b 38
	.db $f0, $5d                 ; 8950: f0 5d
loc_8952:
	tdc                          ; 8952: 7b
	tax                          ; 8953: aa
	lda $13fe0d,x                ; 8954: bf 0d fe 13
	cmp $1800                    ; 8958: cd 00 18
	.db $f0, $09                 ; 895b: f0 09
loc_895d:
	inx                          ; 895d: e8
	inx                          ; 895e: e8
	cpx.w #$0010                 ; 895f: e0 10 00
	.db $d0, $f0                 ; 8962: d0 f0
loc_8964:
	.db $80, $49                 ; 8964: 80 49
loc_8966:
	stx $84                      ; 8966: 86 84
	lda $13fe0e,x                ; 8968: bf 0e fe 13
	cmp $1801                    ; 896c: cd 01 18
	.db $d0, $3e                 ; 896f: d0 3e
loc_8971:
	txa                          ; 8971: 8a
	lda $13fe1d,x                ; 8972: bf 1d fe 13
	sta $80                      ; 8976: 85 80
	lda $13fe1e,x                ; 8978: bf 1e fe 13
	sta $81                      ; 897c: 85 81
	lda.b #$13                   ; 897e: a9 13
	sta $82                      ; 8980: 85 82
	tdc                          ; 8982: 7b
	tay                          ; 8983: a8
	tax                          ; 8984: aa
	lda [$80],y                  ; 8985: b7 80
	sta $388c,x                  ; 8987: 9d 8c 38
	iny                          ; 898a: c8
	inx                          ; 898b: e8
	cmp.b #$ff                   ; 898c: c9 ff
	.db $d0, $f5                 ; 898e: d0 f5
loc_8990:
	lda $84                      ; 8990: a5 84
	cmp.b #$0c                   ; 8992: c9 0c
	.db $f0, $04                 ; 8994: f0 04
loc_8996:
	cmp.b #$0e                   ; 8996: c9 0e
	.db $d0, $15                 ; 8998: d0 15
loc_899a:
	tdc                          ; 899a: 7b
	tax                          ; 899b: aa
	lda [$80],y                  ; 899c: b7 80
	sta $389a,x                  ; 899e: 9d 9a 38
	iny                          ; 89a1: c8
	inx                          ; 89a2: e8
	cmp.b #$ff                   ; 89a3: c9 ff
	.db $d0, $f5                 ; 89a5: d0 f5
loc_89a7:
	lda.b #$63                   ; 89a7: a9 63
	sta $2190                    ; 89a9: 8d 90 21
	sta $2210                    ; 89ac: 8d 10 22
loc_89af:
	jsr $8ed6                    ; 89af: 20 d6 8e
loc_89b2:
	stz $3975                    ; 89b2: 9c 75 39
	lda $3975                    ; 89b5: ad 75 39
	tax                          ; 89b8: aa
	lda $3540,x                  ; 89b9: bd 40 35
	.db $d0, $03                 ; 89bc: d0 03
loc_89be:
	jsr $9841                    ; 89be: 20 41 98
loc_89c1:
	inc $3975                    ; 89c1: ee 75 39
	lda $3975                    ; 89c4: ad 75 39
	cmp.b #$05                   ; 89c7: c9 05
	.db $d0, $ea                 ; 89c9: d0 ea
loc_89cb:
	tdc                          ; 89cb: 7b
	tax                          ; 89cc: aa
	tay                          ; 89cd: a8
	stx $a9                      ; 89ce: 86 a9
	sty $ab                      ; 89d0: 84 ab
	lda $a9                      ; 89d2: a5 a9
	jsr $8489                    ; 89d4: 20 89 84
loc_89d7:
	ldx $a6                      ; 89d7: a6 a6
	lda $2001,x                  ; 89d9: bd 01 20
	and.b #$0f                   ; 89dc: 29 0f
	sta $b7                      ; 89de: 85 b7
	asl                          ; 89e0: 0a
	clc                          ; 89e1: 18
	adc $b7                      ; 89e2: 65 b7
	sta $b7                      ; 89e4: 85 b7
	stz $b8                      ; 89e6: 64 b8
	stz $b5                      ; 89e8: 64 b5
	ldx $b7                      ; 89ea: a6 b7
	lda $13fddd,x                ; 89ec: bf dd fd 13
	cmp.b #$ff                   ; 89f0: c9 ff
	.db $d0, $0f                 ; 89f2: d0 0f
loc_89f4:
	clc                          ; 89f4: 18
	lda $ab                      ; 89f5: a5 ab
	adc.b #$60                   ; 89f7: 69 60
	sta $ab                      ; 89f9: 85 ab
	lda $ac                      ; 89fb: a5 ac
	adc.b #$00                   ; 89fd: 69 00
	sta $ac                      ; 89ff: 85 ac
	.db $80, $25                 ; 8a01: 80 25
loc_8a03:
	sta $df                      ; 8a03: 85 df
	lda.b #$18                   ; 8a05: a9 18
	sta $e1                      ; 8a07: 85 e1
	jsr $83e0                    ; 8a09: 20 e0 83
loc_8a0c:
	ldx $e3                      ; 8a0c: a6 e3
	stz $ad                      ; 8a0e: 64 ad
	ldy $ab                      ; 8a10: a4 ab
	lda.l $001560,x              ; 8a12: bf 60 15 00
	sta $2c7b,y                  ; 8a16: 99 7b 2c
	iny                          ; 8a19: c8
	iny                          ; 8a1a: c8
	iny                          ; 8a1b: c8
	iny                          ; 8a1c: c8
	inx                          ; 8a1d: e8
	inc $ad                      ; 8a1e: e6 ad
	lda $ad                      ; 8a20: a5 ad
	cmp.b #$18                   ; 8a22: c9 18
	.db $d0, $ec                 ; 8a24: d0 ec
loc_8a26:
	sty $ab                      ; 8a26: 84 ab
loc_8a28:
	inc $b7                      ; 8a28: e6 b7
	inc $b5                      ; 8a2a: e6 b5
	lda $b5                      ; 8a2c: a5 b5
	cmp.b #$03                   ; 8a2e: c9 03
	.db $f0, $03                 ; 8a30: f0 03
loc_8a32:
	jmp $89ea                    ; 8a32: 4c ea 89

; --- Block at $8a35-$8a3d ---
loc_8a35:
	inc $a9                      ; 8a35: e6 a9
	lda $a9                      ; 8a37: a5 a9
	cmp.b #$05                   ; 8a39: c9 05
	.db $f0, $03                 ; 8a3b: f0 03
loc_8a3d:
	jmp $89d2                    ; 8a3d: 4c d2 89

; --- Block at $8a40-$8b29 ---
loc_8a40:
	tdc                          ; 8a40: 7b
	tax                          ; 8a41: aa
	stx $a9                      ; 8a42: 86 a9
	ldx $a9                      ; 8a44: a6 a9
	lda $2c7b,x                  ; 8a46: bd 7b 2c
	.db $f0, $24                 ; 8a49: f0 24
loc_8a4b:
	tax                          ; 8a4b: aa
	stx $e5                      ; 8a4c: 86 e5
	ldx.w #$97a0                 ; 8a4e: a2 a0 97
	stx $80                      ; 8a51: 86 80
	lda.b #$0f                   ; 8a53: a9 0f
	sta $82                      ; 8a55: 85 82
	lda.b #$06                   ; 8a57: a9 06
	jsr $845e                    ; 8a59: 20 5e 84
loc_8a5c:
	ldx $a9                      ; 8a5c: a6 a9
	lda $289c                    ; 8a5e: ad 9c 28
	and.b #$e0                   ; 8a61: 29 e0
	lsr                          ; 8a63: 4a
	sta $2c7a,x                  ; 8a64: 9d 7a 2c
	lda $28a1                    ; 8a67: ad a1 28
	and.b #$7f                   ; 8a6a: 29 7f
	sta $2c7d,x                  ; 8a6c: 9d 7d 2c
loc_8a6f:
	inx                          ; 8a6f: e8
	inx                          ; 8a70: e8
	inx                          ; 8a71: e8
	inx                          ; 8a72: e8
	stx $a9                      ; 8a73: 86 a9
	cpx.w #$05a0                 ; 8a75: e0 a0 05
	.db $d0, $ca                 ; 8a78: d0 ca
loc_8a7a:
	tdc                          ; 8a7a: 7b
	tax                          ; 8a7b: aa
	tay                          ; 8a7c: a8
	lda $1440,x                  ; 8a7d: bd 40 14
	sta $321b,y                  ; 8a80: 99 1b 32
	lda $1441,x                  ; 8a83: bd 41 14
	.db $d0, $08                 ; 8a86: d0 08
loc_8a88:
	sta $1440,x                  ; 8a88: 9d 40 14
	sta $321b,y                  ; 8a8b: 99 1b 32
	.db $80, $03                 ; 8a8e: 80 03
loc_8a90:
	sta $321c,y                  ; 8a90: 99 1c 32
loc_8a93:
	inx                          ; 8a93: e8
	inx                          ; 8a94: e8
	iny                          ; 8a95: c8
	iny                          ; 8a96: c8
	iny                          ; 8a97: c8
	iny                          ; 8a98: c8
	cpx.w #$0060                 ; 8a99: e0 60 00
	.db $d0, $df                 ; 8a9c: d0 df
loc_8a9e:
	tdc                          ; 8a9e: 7b
	tax                          ; 8a9f: aa
	stx $a9                      ; 8aa0: 86 a9
	stz $c7                      ; 8aa2: 64 c7
	ldx $a9                      ; 8aa4: a6 a9
	lda $321b,x                  ; 8aa6: bd 1b 32
	.db $f0, $73                 ; 8aa9: f0 73
loc_8aab:
	cmp.b #$de                   ; 8aab: c9 de
	.db $b0, $6f                 ; 8aad: b0 6f
loc_8aaf:
	cmp.b #$b0                   ; 8aaf: c9 b0
	.db $b0, $44                 ; 8ab1: b0 44
loc_8ab3:
	cmp.b #$6d                   ; 8ab3: c9 6d
	.db $b0, $67                 ; 8ab5: b0 67
loc_8ab7:
	cmp.b #$61                   ; 8ab7: c9 61
	.db $90, $04                 ; 8ab9: 90 04
loc_8abb:
	lda.b #$00                   ; 8abb: a9 00
	.db $f0, $5c                 ; 8abd: f0 5c
loc_8abf:
	tax                          ; 8abf: aa
	stx $e5                      ; 8ac0: 86 e5
	ldx.w #$9100                 ; 8ac2: a2 00 91
	stx $80                      ; 8ac5: 86 80
	lda.b #$0f                   ; 8ac7: a9 0f
	sta $82                      ; 8ac9: 85 82
	lda.b #$08                   ; 8acb: a9 08
	jsr $845e                    ; 8acd: 20 5e 84
loc_8ad0:
	lda $289c                    ; 8ad0: ad 9c 28
	jsr $8485                    ; 8ad3: 20 85 84
loc_8ad6:
	and.b #$08                   ; 8ad6: 29 08
	sta $c7                      ; 8ad8: 85 c7
	lda $289f                    ; 8ada: ad 9f 28
	pha                          ; 8add: 48
	tax                          ; 8ade: aa
	stx $e5                      ; 8adf: 86 e5
	ldx.w #$97a0                 ; 8ae1: a2 a0 97
	stx $80                      ; 8ae4: 86 80
	lda.b #$0f                   ; 8ae6: a9 0f
	sta $82                      ; 8ae8: 85 82
	lda.b #$06                   ; 8aea: a9 06
	jsr $845e                    ; 8aec: 20 5e 84
loc_8aef:
	ldx $a9                      ; 8aef: a6 a9
	pla                          ; 8af1: 68
	sta $321d,x                  ; 8af2: 9d 1d 32
	.db $80, $1c                 ; 8af5: 80 1c
loc_8af7:
	sec                          ; 8af7: 38
	sbc.b #$b0                   ; 8af8: e9 b0
	tax                          ; 8afa: aa
	stx $e5                      ; 8afb: 86 e5
	ldx.w #$9680                 ; 8afd: a2 80 96
	stx $80                      ; 8b00: 86 80
	lda.b #$0f                   ; 8b02: a9 0f
	sta $82                      ; 8b04: 85 82
	lda.b #$06                   ; 8b06: a9 06
	jsr $845e                    ; 8b08: 20 5e 84
loc_8b0b:
	ldx $a9                      ; 8b0b: a6 a9
	lda $289f                    ; 8b0d: ad 9f 28
	sta $321d,x                  ; 8b10: 9d 1d 32
loc_8b13:
	lda $289c                    ; 8b13: ad 9c 28
	and.b #$e0                   ; 8b16: 29 e0
	ora $c7                      ; 8b18: 05 c7
	lsr                          ; 8b1a: 4a
loc_8b1b:
	sta $321a,x                  ; 8b1b: 9d 1a 32
loc_8b1e:
	inx                          ; 8b1e: e8
	inx                          ; 8b1f: e8
	inx                          ; 8b20: e8
	inx                          ; 8b21: e8
	stx $a9                      ; 8b22: 86 a9
	cpx.w #$00c0                 ; 8b24: e0 c0 00
	.db $f0, $03                 ; 8b27: f0 03
loc_8b29:
	jmp $8aa2                    ; 8b29: 4c a2 8a

; --- Block at $8b2c-$8c7c ---
loc_8b2c:
	tdc                          ; 8b2c: 7b
	tax                          ; 8b2d: aa
	stx $a9                      ; 8b2e: 86 a9
	stz $c7                      ; 8b30: 64 c7
	ldx $a9                      ; 8b32: a6 a9
	lda $32db,x                  ; 8b34: bd db 32
	.db $f0, $41                 ; 8b37: f0 41
loc_8b39:
	tax                          ; 8b39: aa
	stx $e5                      ; 8b3a: 86 e5
	ldx.w #$9100                 ; 8b3c: a2 00 91
	stx $80                      ; 8b3f: 86 80
	lda.b #$0f                   ; 8b41: a9 0f
	sta $82                      ; 8b43: 85 82
	lda.b #$08                   ; 8b45: a9 08
	jsr $845e                    ; 8b47: 20 5e 84
loc_8b4a:
	lda $289c                    ; 8b4a: ad 9c 28
	jsr $8485                    ; 8b4d: 20 85 84
loc_8b50:
	and.b #$08                   ; 8b50: 29 08
	sta $c7                      ; 8b52: 85 c7
	ldx $a9                      ; 8b54: a6 a9
	lda $289f                    ; 8b56: ad 9f 28
	sta $32dd,x                  ; 8b59: 9d dd 32
	tax                          ; 8b5c: aa
	stx $e5                      ; 8b5d: 86 e5
	ldx.w #$97a0                 ; 8b5f: a2 a0 97
	stx $80                      ; 8b62: 86 80
	lda.b #$0f                   ; 8b64: a9 0f
	sta $82                      ; 8b66: 85 82
	lda.b #$06                   ; 8b68: a9 06
	jsr $845e                    ; 8b6a: 20 5e 84
loc_8b6d:
	ldx $a9                      ; 8b6d: a6 a9
	lda $289c                    ; 8b6f: ad 9c 28
	and.b #$e0                   ; 8b72: 29 e0
	ora $c7                      ; 8b74: 05 c7
	lsr                          ; 8b76: 4a
	sta $32da,x                  ; 8b77: 9d da 32
loc_8b7a:
	inx                          ; 8b7a: e8
	inx                          ; 8b7b: e8
	inx                          ; 8b7c: e8
	inx                          ; 8b7d: e8
	stx $a9                      ; 8b7e: 86 a9
	cpx.w #$0028                 ; 8b80: e0 28 00
	.db $d0, $ab                 ; 8b83: d0 ab
loc_8b85:
	tdc                          ; 8b85: 7b
	tay                          ; 8b86: a8
	sty $a9                      ; 8b87: 84 a9
	ldx $a9                      ; 8b89: a6 a9
	lda $2000,x                  ; 8b8b: bd 00 20
	and.b #$1f                   ; 8b8e: 29 1f
	.db $d0, $01                 ; 8b90: d0 01
loc_8b92:
	inc                          ; 8b92: 1a
loc_8b93:
	dec                          ; 8b93: 3a
	sta $df                      ; 8b94: 85 df
	lda.b #$05                   ; 8b96: a9 05
	sta $e1                      ; 8b98: 85 e1
	jsr $83e0                    ; 8b9a: 20 e0 83
loc_8b9d:
	lda.b #$05                   ; 8b9d: a9 05
	sta $ab                      ; 8b9f: 85 ab
	ldx $e3                      ; 8ba1: a6 e3
	lda $13fd55,x                ; 8ba3: bf 55 fd 13
	sta $3303,y                  ; 8ba7: 99 03 33
	cmp.b #$ff                   ; 8baa: c9 ff
	.db $d0, $03                 ; 8bac: d0 03
loc_8bae:
	phx                          ; 8bae: da
	.db $80, $06                 ; 8baf: 80 06
loc_8bb1:
	phx                          ; 8bb1: da
	tax                          ; 8bb2: aa
	lda $13fdc3,x                ; 8bb3: bf c3 fd 13
loc_8bb7:
	sta $3302,y                  ; 8bb7: 99 02 33
	plx                          ; 8bba: fa
	inx                          ; 8bbb: e8
	iny                          ; 8bbc: c8
	iny                          ; 8bbd: c8
	iny                          ; 8bbe: c8
	iny                          ; 8bbf: c8
	dec $ab                      ; 8bc0: c6 ab
	lda $ab                      ; 8bc2: a5 ab
	.db $d0, $dd                 ; 8bc4: d0 dd
loc_8bc6:
	lda.b #$1a                   ; 8bc6: a9 1a
	sta $3303,y                  ; 8bc8: 99 03 33
	iny                          ; 8bcb: c8
	iny                          ; 8bcc: c8
	iny                          ; 8bcd: c8
	iny                          ; 8bce: c8
	lda.b #$1b                   ; 8bcf: a9 1b
	sta $3303,y                  ; 8bd1: 99 03 33
	iny                          ; 8bd4: c8
	iny                          ; 8bd5: c8
	iny                          ; 8bd6: c8
	iny                          ; 8bd7: c8
	php                          ; 8bd8: 08
	rep #$20                     ; 8bd9: c2 20
	clc                          ; 8bdb: 18
	lda $a9                      ; 8bdc: a5 a9
	adc.w #$0080                 ; 8bde: 69 80 00
	sta $a9                      ; 8be1: 85 a9
	tdc                          ; 8be3: 7b
	plp                          ; 8be4: 28
	cpy.w #$008c                 ; 8be5: c0 8c 00
	.db $d0, $9f                 ; 8be8: d0 9f
loc_8bea:
	tdc                          ; 8bea: 7b
	tax                          ; 8beb: aa
	stx $b9                      ; 8bec: 86 b9
	stz $bd                      ; 8bee: 64 bd
	ldx $b9                      ; 8bf0: a6 b9
	lda $29b5,x                  ; 8bf2: bd b5 29
	cmp.w #$d0ff                 ; 8bf5: c9 ff d0
	asl                          ; 8bf8: 0a
	txa                          ; 8bf9: 8a
	clc                          ; 8bfa: 18
	adc.w #$aa05                 ; 8bfb: 69 05 aa
	inc $3540,x                  ; 8bfe: fe 40 35
	.db $80, $15                 ; 8c01: 80 15
	tax                          ; 8c03: aa
	lda $299c                    ; 8c04: ad 9c 29
	jsr $8564                    ; 8c07: 20 64 85
loc_8c0a:
	.db $f0, $02                 ; 8c0a: f0 02
loc_8c0c:
	inc $bd                      ; 8c0c: e6 bd
loc_8c0e:
	lda $29ad,x                  ; 8c0e: bd ad 29
	sta $bb                      ; 8c11: 85 bb
	stz $bc                      ; 8c13: 64 bc
	jsr $8fd4                    ; 8c15: 20 d4 8f
loc_8c18:
	inc $b9                      ; 8c18: e6 b9
	lda $b9                      ; 8c1a: a5 b9
	cmp.w #$d008                 ; 8c1c: c9 08 d0
	dec $a0ad                    ; 8c1f: ce ad a0
	and.w #$0329                 ; 8c22: 29 29 03
	.db $f0, $49                 ; 8c25: f0 49
loc_8c27:
	cmp.w #$d001                 ; 8c27: c9 01 d0
	ora ($7b),y                  ; 8c2a: 11 7b
	tax                          ; 8c2c: aa
	lda $29b5,x                  ; 8c2d: bd b5 29
	cmp.w #$f001                 ; 8c30: c9 01 f0
	ora $e8,s                    ; 8c33: 03 e8
	.db $80, $f6                 ; 8c35: 80 f6
	jsr $8ea3                    ; 8c37: 20 a3 8e
loc_8c3a:
	.db $80, $34                 ; 8c3a: 80 34
	cmp.w #$d002                 ; 8c3c: c9 02 d0
	asl $7b,x                    ; 8c3f: 16 7b
	tax                          ; 8c41: aa
	stx $c7                      ; 8c42: 86 c7
	ldx $c7                      ; 8c44: a6 c7
	lda $29b5,x                  ; 8c46: bd b5 29
	.db $f0, $07                 ; 8c49: f0 07
loc_8c4b:
	cmp.w #$f0ff                 ; 8c4b: c9 ff f0
	and ($20,x)                  ; 8c4e: 21 20
	lda $8e,s                    ; 8c50: a3 8e
loc_8c52:
	inc $c7                      ; 8c52: e6 c7
	.db $80, $ee                 ; 8c54: 80 ee
	tdc                          ; 8c56: 7b
	tax                          ; 8c57: aa
	stx $c7                      ; 8c58: 86 c7
	ldx $c7                      ; 8c5a: a6 c7
	lda $29b5,x                  ; 8c5c: bd b5 29
	cmp.w #$f0ff                 ; 8c5f: c9 ff f0
	ora $02c9                    ; 8c62: 0d c9 02
	.db $d0, $05                 ; 8c65: d0 05
loc_8c67:
	.db $f0, $00                 ; 8c67: f0 00
loc_8c69:
	jsr $8ea3                    ; 8c69: 20 a3 8e
loc_8c6c:
	inc $c7                      ; 8c6c: e6 c7
	.db $80, $ea                 ; 8c6e: 80 ea
loc_8c70:
	lda $3581                    ; 8c70: ad 81 35
	and.w #$f008                 ; 8c73: 29 08 f0
	php                          ; 8c76: 08
	lda.w #$8d80                 ; 8c77: a9 80 8d
	cld                          ; 8c7a: d8
	sec                          ; 8c7b: 38
	jmp $8d4e                    ; 8c7c: 4c 4e 8d

; --- Block at $8d4e-$8ea2 ---
loc_8d4e:
	tdc                          ; 8d4e: 7b
	tax                          ; 8d4f: aa
	tay                          ; 8d50: a8
	stx $c7                      ; 8d51: 86 c7
	lda $3540,y                  ; 8d53: b9 40 35
	.db $d0, $11                 ; 8d56: d0 11
loc_8d58:
	lda $c7                      ; 8d58: a5 c7
	.db $d0, $28                 ; 8d5a: d0 28
loc_8d5c:
	lda $2000,x                  ; 8d5c: bd 00 20
	and.w #$c91f                 ; 8d5f: 29 1f c9
	ora ($f0,x)                  ; 8d62: 01 f0
	ora $f00bc9,x                ; 8d64: 1f c9 0b f0
	clc                          ; 8d68: 18
loc_8d69:
	rep #$20                     ; 8d69: c2 20
	txa                          ; 8d6b: 8a
	clc                          ; 8d6c: 18
	adc.w #$0080                 ; 8d6d: 69 80 00
	tax                          ; 8d70: aa
	tdc                          ; 8d71: 7b
	sep #$20                     ; 8d72: e2 20
	iny                          ; 8d74: c8
	cpy.w #$0005                 ; 8d75: c0 05 00
	.db $d0, $d9                 ; 8d78: d0 d9
loc_8d7a:
	inc $c7                      ; 8d7a: e6 c7
	tdc                          ; 8d7c: 7b
	tax                          ; 8d7d: aa
	tay                          ; 8d7e: a8
	.db $80, $d2                 ; 8d7f: 80 d2
	sty $355e                    ; 8d81: 8c 5e 35
loc_8d84:
	lda $2015,x                  ; 8d84: bd 15 20
	tax                          ; 8d87: aa
	stx $393d                    ; 8d88: 8e 3d 39
	ldx.w #$0032                 ; 8d8b: a2 32 00
	stx $393f                    ; 8d8e: 8e 3f 39
	jsr $83b9                    ; 8d91: 20 b9 83
loc_8d94:
	ldx $3941                    ; 8d94: ae 41 39
	stx $cb                      ; 8d97: 86 cb
	tdc                          ; 8d99: 7b
	tax                          ; 8d9a: aa
	stx $c7                      ; 8d9b: 86 c7
	stx $c9                      ; 8d9d: 86 c9
	ldx $c9                      ; 8d9f: a6 c9
	lda $3540,x                  ; 8da1: bd 40 35
	.db $d0, $31                 ; 8da4: d0 31
loc_8da6:
	ldx $c7                      ; 8da6: a6 c7
	lda $2015,x                  ; 8da8: bd 15 20
	sta $df                      ; 8dab: 85 df
	lda.b #$0a                   ; 8dad: a9 0a
	sta $e1                      ; 8daf: 85 e1
	jsr $83e0                    ; 8db1: 20 e0 83
loc_8db4:
	ldx $cb                      ; 8db4: a6 cb
	stx $3945                    ; 8db6: 8e 45 39
	ldx $e3                      ; 8db9: a6 e3
	stx $3947                    ; 8dbb: 8e 47 39
	jsr $8407                    ; 8dbe: 20 07 84
loc_8dc1:
	ldx $3949                    ; 8dc1: ae 49 39
	.db $d0, $03                 ; 8dc4: d0 03
loc_8dc6:
	inc $3949                    ; 8dc6: ee 49 39
loc_8dc9:
	ldx $c7                      ; 8dc9: a6 c7
	lda $3949                    ; 8dcb: ad 49 39
	sta $2060,x                  ; 8dce: 9d 60 20
	lda $394a                    ; 8dd1: ad 4a 39
	sta $2061,x                  ; 8dd4: 9d 61 20
loc_8dd7:
	rep #$20                     ; 8dd7: c2 20
	clc                          ; 8dd9: 18
	lda $c7                      ; 8dda: a5 c7
	adc.w #$0080                 ; 8ddc: 69 80 00
	sta $c7                      ; 8ddf: 85 c7
	tdc                          ; 8de1: 7b
	sep #$20                     ; 8de2: e2 20
	inc $c9                      ; 8de4: e6 c9
	lda $c9                      ; 8de6: a5 c9
	cmp.b #$0d                   ; 8de8: c9 0d
	.db $d0, $b3                 ; 8dea: d0 b3
loc_8dec:
	tdc                          ; 8dec: 7b
	tax                          ; 8ded: aa
	stx $c7                      ; 8dee: 86 c7
	ldx $c7                      ; 8df0: a6 c7
	lda $3540,x                  ; 8df2: bd 40 35
	.db $d0, $66                 ; 8df5: d0 66
loc_8df7:
	txa                          ; 8df7: 8a
	sta $df                      ; 8df8: 85 df
	lda.b #$80                   ; 8dfa: a9 80
	sta $e1                      ; 8dfc: 85 e1
	jsr $83e0                    ; 8dfe: 20 e0 83
loc_8e01:
	ldx $e3                      ; 8e01: a6 e3
	lda $2003,x                  ; 8e03: bd 03 20
	.db $30, $55                 ; 8e06: 30 55
loc_8e08:
	lda $c7                      ; 8e08: a5 c7
	cmp.b #$05                   ; 8e0a: c9 05
	.db $b0, $19                 ; 8e0c: b0 19
loc_8e0e:
	lda $3581                    ; 8e0e: ad 81 35
	and.b #$08                   ; 8e11: 29 08
	.db $f0, $12                 ; 8e13: f0 12
loc_8e15:
	lda $2001,x                  ; 8e15: bd 01 20
	pha                          ; 8e18: 48
	and.b #$7f                   ; 8e19: 29 7f
	sta $a9                      ; 8e1b: 85 a9
	pla                          ; 8e1d: 68
	and.b #$80                   ; 8e1e: 29 80
	eor.b #$80                   ; 8e20: 49 80
	ora $a9                      ; 8e22: 05 a9
	sta $2001,x                  ; 8e24: 9d 01 20
loc_8e27:
	stz $d6                      ; 8e27: 64 d6
	ldx $c7                      ; 8e29: a6 c7
	txa                          ; 8e2b: 8a
	jsr $9e36                    ; 8e2c: 20 36 9e
loc_8e2f:
	lda $38d8                    ; 8e2f: ad d8 38
	.db $f0, $24                 ; 8e32: f0 24
loc_8e34:
	.db $30, $16                 ; 8e34: 30 16
loc_8e36:
	lda $c7                      ; 8e36: a5 c7
	cmp.b #$05                   ; 8e38: c9 05
	.db $90, $16                 ; 8e3a: 90 16
loc_8e3c:
	asl $d4                      ; 8e3c: 06 d4
	rol $d5                      ; 8e3e: 26 d5
	lda $d4                      ; 8e40: a5 d4
	ora $d5                      ; 8e42: 05 d5
	.db $d0, $12                 ; 8e44: d0 12
loc_8e46:
	inc                          ; 8e46: 1a
	inc                          ; 8e47: 1a
	sta $d4                      ; 8e48: 85 d4
	.db $80, $0c                 ; 8e4a: 80 0c
loc_8e4c:
	lda $c7                      ; 8e4c: a5 c7
	cmp.b #$05                   ; 8e4e: c9 05
	.db $90, $ea                 ; 8e50: 90 ea
loc_8e52:
	lda.b #$01                   ; 8e52: a9 01
	sta $d4                      ; 8e54: 85 d4
	stz $d5                      ; 8e56: 64 d5
loc_8e58:
	lda.b #$03                   ; 8e58: a9 03
	jsr $85c8                    ; 8e5a: 20 c8 85
loc_8e5d:
	inc $c7                      ; 8e5d: e6 c7
	lda $c7                      ; 8e5f: a5 c7
	cmp.b #$0d                   ; 8e61: c9 0d
	.db $d0, $8b                 ; 8e63: d0 8b
loc_8e65:
	rep #$20                     ; 8e65: c2 20
	lda.w #$ffff                 ; 8e67: a9 ff ff
	sta $a9                      ; 8e6a: 85 a9
	ldy.w #$000d                 ; 8e6c: a0 0d 00
	tdc                          ; 8e6f: 7b
	tax                          ; 8e70: aa
	lda $2a07,x                  ; 8e71: bd 07 2a
	.db $f0, $06                 ; 8e74: f0 06
loc_8e76:
	cmp $a9                      ; 8e76: c5 a9
	.db $b0, $02                 ; 8e78: b0 02
loc_8e7a:
	sta $a9                      ; 8e7a: 85 a9
loc_8e7c:
	txa                          ; 8e7c: 8a
	clc                          ; 8e7d: 18
	adc.w #$0015                 ; 8e7e: 69 15 00
	tax                          ; 8e81: aa
	dey                          ; 8e82: 88
	.db $d0, $ec                 ; 8e83: d0 ec
loc_8e85:
	dec $a9                      ; 8e85: c6 a9
	tyx                          ; 8e87: bb
	sec                          ; 8e88: 38
	lda $2a07,x                  ; 8e89: bd 07 2a
	.db $f0, $05                 ; 8e8c: f0 05
loc_8e8e:
	sbc $a9                      ; 8e8e: e5 a9
	sta $2a07,x                  ; 8e90: 9d 07 2a
loc_8e93:
	txa                          ; 8e93: 8a
	clc                          ; 8e94: 18
	adc.w #$0015                 ; 8e95: 69 15 00
	tax                          ; 8e98: aa
	iny                          ; 8e99: c8
	cpy.w #$000d                 ; 8e9a: c0 0d 00
	.db $d0, $e9                 ; 8e9d: d0 e9
loc_8e9f:
	tdc                          ; 8e9f: 7b
	sep #$20                     ; 8ea0: e2 20
	rts                          ; 8ea2: 60

; --- Block at $8e69-$8e70 ---
loc_8e69:
	sbc $a0a985,x                ; 8e69: ff 85 a9 a0
	ora $7b00                    ; 8e6d: 0d 00 7b

; --- Block at $8ea3-$8ed5 ---
loc_8ea3:
	txa                          ; 8ea3: 8a
	clc                          ; 8ea4: 18
	adc.w #$8505                 ; 8ea5: 69 05 85
	txa                          ; 8ea8: 8a
	lda $29b5,x                  ; 8ea9: bd b5 29
	sta $a9                      ; 8eac: 85 a9
	lda.w #$9dff                 ; 8eae: a9 ff 9d
	lda $29,x                    ; 8eb1: b5 29
	lda $a9                      ; 8eb3: a5 a9
	tax                          ; 8eb5: aa
	dec $29ca,x                  ; 8eb6: de ca 29
	dec $29cd                    ; 8eb9: ce cd 29
	lda $8a                      ; 8ebc: a5 8a
	sta $df                      ; 8ebe: 85 df
	lda.w #$8580                 ; 8ec0: a9 80 85
	sbc ($20,x)                  ; 8ec3: e1 20
	cpx.w #$a683                 ; 8ec5: e0 83 a6
	sbc $a9,s                    ; 8ec8: e3 a9
	.db $80, $9d                 ; 8eca: 80 9d
	ora $20,s                    ; 8ecc: 03 20
	lda $8a                      ; 8ece: a5 8a
	asl                          ; 8ed0: 0a
	tax                          ; 8ed1: aa
	stz $29eb,x                  ; 8ed2: 9e eb 29
	rts                          ; 8ed5: 60

; --- Block at $8ed6-$8fd0 ---
loc_8ed6:
	ldy.w #$2030                 ; 8ed6: a0 30 20
	sty $86                      ; 8ed9: 84 86
	ldy.w #$2780                 ; 8edb: a0 80 27
	sty $84                      ; 8ede: 84 84
	stz $a9                      ; 8ee0: 64 a9
	tdc                          ; 8ee2: 7b
	tax                          ; 8ee3: aa
	stx $ab                      ; 8ee4: 86 ab
	txy                          ; 8ee6: 9b
	lda ($86),y                  ; 8ee7: b1 86
	.db $d0, $02                 ; 8ee9: d0 02
loc_8eeb:
	lda.b #$60                   ; 8eeb: a9 60
loc_8eed:
	sta $ad,x                    ; 8eed: 95 ad
	iny                          ; 8eef: c8
	inx                          ; 8ef0: e8
	cpx.w #$0003                 ; 8ef1: e0 03 00
	.db $d0, $f1                 ; 8ef4: d0 f1
loc_8ef6:
	lda ($86),y                  ; 8ef6: b1 86
	sta $ad,x                    ; 8ef8: 95 ad
	iny                          ; 8efa: c8
	inx                          ; 8efb: e8
	cpx.w #$0007                 ; 8efc: e0 07 00
	.db $d0, $f5                 ; 8eff: d0 f5
loc_8f01:
	lda $a9                      ; 8f01: a5 a9
	jsr $847e                    ; 8f03: 20 7e 84
loc_8f06:
	tax                          ; 8f06: aa
	lda $b0                      ; 8f07: a5 b0
	sta $32db,x                  ; 8f09: 9d db 32
	lda $b1                      ; 8f0c: a5 b1
	sta $32dc,x                  ; 8f0e: 9d dc 32
	lda $b2                      ; 8f11: a5 b2
	sta $32df,x                  ; 8f13: 9d df 32
	lda $b3                      ; 8f16: a5 b3
	sta $32e0,x                  ; 8f18: 9d e0 32
	lda $b2                      ; 8f1b: a5 b2
	sta $b1                      ; 8f1d: 85 b1
	stz $b7                      ; 8f1f: 64 b7
	stz $b8                      ; 8f21: 64 b8
	lda $b0                      ; 8f23: a5 b0
	.db $f0, $16                 ; 8f25: f0 16
loc_8f27:
	cmp.b #$4d                   ; 8f27: c9 4d
	.db $90, $12                 ; 8f29: 90 12
loc_8f2b:
	cmp.b #$54                   ; 8f2b: c9 54
	.db $b0, $06                 ; 8f2d: b0 06
loc_8f2f:
	lda.b #$80                   ; 8f2f: a9 80
	sta $b7                      ; 8f31: 85 b7
	.db $80, $08                 ; 8f33: 80 08
loc_8f35:
	cmp.b #$61                   ; 8f35: c9 61
	.db $b0, $04                 ; 8f37: b0 04
loc_8f39:
	lda.b #$40                   ; 8f39: a9 40
	sta $b7                      ; 8f3b: 85 b7
loc_8f3d:
	lda $b1                      ; 8f3d: a5 b1
	.db $f0, $16                 ; 8f3f: f0 16
loc_8f41:
	cmp.b #$4d                   ; 8f41: c9 4d
	.db $90, $12                 ; 8f43: 90 12
loc_8f45:
	cmp.b #$54                   ; 8f45: c9 54
	.db $b0, $06                 ; 8f47: b0 06
loc_8f49:
	lda.b #$80                   ; 8f49: a9 80
	sta $b8                      ; 8f4b: 85 b8
	.db $80, $08                 ; 8f4d: 80 08
loc_8f4f:
	cmp.b #$61                   ; 8f4f: c9 61
	.db $b0, $04                 ; 8f51: b0 04
loc_8f53:
	lda.b #$40                   ; 8f53: a9 40
	sta $b8                      ; 8f55: 85 b8
loc_8f57:
	lda $b7                      ; 8f57: a5 b7
	ora $b8                      ; 8f59: 05 b8
	.db $f0, $08                 ; 8f5b: f0 08
loc_8f5d:
	eor.b #$c0                   ; 8f5d: 49 c0
	.db $f0, $04                 ; 8f5f: f0 04
loc_8f61:
	stz $b0                      ; 8f61: 64 b0
	stz $b1                      ; 8f63: 64 b1
loc_8f65:
	ldx $ab                      ; 8f65: a6 ab
	lda $ad,x                    ; 8f67: b5 ad
	tax                          ; 8f69: aa
	stx $e5                      ; 8f6a: 86 e5
	ldx.w #$9100                 ; 8f6c: a2 00 91
	stx $80                      ; 8f6f: 86 80
	lda.b #$0f                   ; 8f71: a9 0f
	sta $82                      ; 8f73: 85 82
	lda.b #$08                   ; 8f75: a9 08
	jsr $845e                    ; 8f77: 20 5e 84
loc_8f7a:
	tdc                          ; 8f7a: 7b
	tax                          ; 8f7b: aa
	tay                          ; 8f7c: a8
	lda $289c,x                  ; 8f7d: bd 9c 28
	sta ($84),y                  ; 8f80: 91 84
	iny                          ; 8f82: c8
	inx                          ; 8f83: e8
	cpx.w #$0008                 ; 8f84: e0 08 00
	.db $d0, $f4                 ; 8f87: d0 f4
loc_8f89:
	lda $28a0                    ; 8f89: ad a0 28
	and.b #$7f                   ; 8f8c: 29 7f
	sta $df                      ; 8f8e: 85 df
	lda.b #$03                   ; 8f90: a9 03
	sta $e1                      ; 8f92: 85 e1
	jsr $83e0                    ; 8f94: 20 e0 83
loc_8f97:
	ldx $e3                      ; 8f97: a6 e3
	lda $0fa590,x                ; 8f99: bf 90 a5 0f
	sta ($84),y                  ; 8f9d: 91 84
	iny                          ; 8f9f: c8
	inx                          ; 8fa0: e8
	cpy.w #$000b                 ; 8fa1: c0 0b 00
	.db $d0, $f3                 ; 8fa4: d0 f3
loc_8fa6:
	clc                          ; 8fa6: 18
	lda $84                      ; 8fa7: a5 84
	adc.b #$0b                   ; 8fa9: 69 0b
	sta $84                      ; 8fab: 85 84
	lda $85                      ; 8fad: a5 85
	adc.b #$00                   ; 8faf: 69 00
	sta $85                      ; 8fb1: 85 85
	inc $ab                      ; 8fb3: e6 ab
	lda $ab                      ; 8fb5: a5 ab
	cmp.b #$05                   ; 8fb7: c9 05
	.db $d0, $aa                 ; 8fb9: d0 aa
loc_8fbb:
	clc                          ; 8fbb: 18
	lda $86                      ; 8fbc: a5 86
	adc.b #$80                   ; 8fbe: 69 80
	sta $86                      ; 8fc0: 85 86
	lda $87                      ; 8fc2: a5 87
	adc.b #$00                   ; 8fc4: 69 00
	sta $87                      ; 8fc6: 85 87
	inc $a9                      ; 8fc8: e6 a9
	lda $a9                      ; 8fca: a5 a9
	cmp.b #$05                   ; 8fcc: c9 05
	.db $f0, $03                 ; 8fce: f0 03
loc_8fd0:
	jmp $8ee2                    ; 8fd0: 4c e2 8e

; --- Block at $8fd3-$8fd3 ---
loc_8fd3:
	rts                          ; 8fd3: 60

; --- Block at $8fd4-$90fd ---
loc_8fd4:
	lda $b9                      ; 8fd4: a5 b9
	sta $35a0                    ; 8fd6: 8d a0 35
	asl                          ; 8fd9: 0a
	clc                          ; 8fda: 18
	adc.w #$aa0a                 ; 8fdb: 69 0a aa
	lda.w #$9d40                 ; 8fde: a9 40 9d
	xba                          ; 8fe1: eb
	and.w #$20c2                 ; 8fe2: 29 c2 20
	lda $bb                      ; 8fe5: a5 bb
	asl                          ; 8fe7: 0a
	tax                          ; 8fe8: aa
	sec                          ; 8fe9: 38
	lda $0ea6a0,x                ; 8fea: bf a0 a6 0e
	sbc.w #$a860                 ; 8fee: e9 60 a8
	tax                          ; 8ff1: aa
	tdc                          ; 8ff2: 7b
	sep #$20                     ; 8ff3: e2 20
	tdc                          ; 8ff5: 7b
	tay                          ; 8ff6: a8
	lda $0ea860,x                ; 8ff7: bf 60 a8 0e
	sta $289c,y                  ; 8ffb: 99 9c 28
	inx                          ; 8ffe: e8
	iny                          ; 8fff: c8
	cpy.w #$0014                 ; 9000: c0 14 00
	.db $d0, $f2                 ; 9003: d0 f2
loc_9005:
	clc                          ; 9005: 18
	lda $35a0                    ; 9006: ad a0 35
	adc.b #$05                   ; 9009: 69 05
	jsr $8489                    ; 900b: 20 89 84
loc_900e:
	ldx $a6                      ; 900e: a6 a6
	lda $bd                      ; 9010: a5 bd
	.db $f0, $14                 ; 9012: f0 14
loc_9014:
	lda.b #$20                   ; 9014: a9 20
	sta $2005,x                  ; 9016: 9d 05 20
	phx                          ; 9019: da
	lda $35a0                    ; 901a: ad a0 35
	tax                          ; 901d: aa
	lda $29b5,x                  ; 901e: bd b5 29
	tax                          ; 9021: aa
	lda.b #$01                   ; 9022: a9 01
	sta $38d0,x                  ; 9024: 9d d0 38
	plx                          ; 9027: fa
loc_9028:
	lda $289c                    ; 9028: ad 9c 28
	sta $2070,x                  ; 902b: 9d 70 20
	.db $10, $03                 ; 902e: 10 03
loc_9030:
	inc $3582                    ; 9030: ee 82 35
loc_9033:
	and.b #$7f                   ; 9033: 29 7f
	sta $2002,x                  ; 9035: 9d 02 20
	clc                          ; 9038: 18
	adc.b #$0a                   ; 9039: 69 0a
	sta $202f,x                  ; 903b: 9d 2f 20
	lda $289d                    ; 903e: ad 9d 28
	sta $2007,x                  ; 9041: 9d 07 20
	sta $2009,x                  ; 9044: 9d 09 20
	lda $289e                    ; 9047: ad 9e 28
	sta $2008,x                  ; 904a: 9d 08 20
	sta $200a,x                  ; 904d: 9d 0a 20
	rep #$20                     ; 9050: c2 20
	lda $289d                    ; 9052: ad 9d 28
	jsr $8484                    ; 9055: 20 84 84
loc_9058:
	sta $200b,x                  ; 9058: 9d 0b 20
	sta $200d,x                  ; 905b: 9d 0d 20
	tdc                          ; 905e: 7b
	sep #$20                     ; 905f: e2 20
	phx                          ; 9061: da
	lda $28a2                    ; 9062: ad a2 28
	and.b #$3f                   ; 9065: 29 3f
	asl                          ; 9067: 0a
	tax                          ; 9068: aa
	lda $0ea621,x                ; 9069: bf 21 a6 0e
	sta $a9                      ; 906d: 85 a9
	lda $0ea620,x                ; 906f: bf 20 a6 0e
	tax                          ; 9073: aa
	lda $a9                      ; 9074: a5 a9
	jsr $8379                    ; 9076: 20 79 83
loc_9079:
	plx                          ; 9079: fa
	sta $2015,x                  ; 907a: 9d 15 20
	lda $29a2                    ; 907d: ad a2 29
	and.b #$20                   ; 9080: 29 20
	.db $f0, $07                 ; 9082: f0 07
loc_9084:
	lda.b #$01                   ; 9084: a9 01
	sta $203b,x                  ; 9086: 9d 3b 20
	.db $80, $05                 ; 9089: 80 05
loc_908b:
	lda.b #$10                   ; 908b: a9 10
	sta $203b,x                  ; 908d: 9d 3b 20
loc_9090:
	lda $28a4                    ; 9090: ad a4 28
	sta $35a1                    ; 9093: 8d a1 35
	phx                          ; 9096: da
	lda $b9                      ; 9097: a5 b9
	tax                          ; 9099: aa
	lda $29b5,x                  ; 909a: bd b5 29
	tax                          ; 909d: aa
	lda $bb                      ; 909e: a5 bb
	sta $358b,x                  ; 90a0: 9d 8b 35
	sta $3588,x                  ; 90a3: 9d 88 35
	lda $28a3                    ; 90a6: ad a3 28
	sta $358e,x                  ; 90a9: 9d 8e 35
	plx                          ; 90ac: fa
	sta $2073,x                  ; 90ad: 9d 73 20
	lda $289f                    ; 90b0: ad 9f 28
	jsr $9493                    ; 90b3: 20 93 94
loc_90b6:
	lda $291c                    ; 90b6: ad 1c 29
	sta $201b,x                  ; 90b9: 9d 1b 20
	lda $291d                    ; 90bc: ad 1d 29
	sta $201c,x                  ; 90bf: 9d 1c 20
	lda $291e                    ; 90c2: ad 1e 29
	sta $201d,x                  ; 90c5: 9d 1d 20
	lda $28a0                    ; 90c8: ad a0 28
	jsr $9493                    ; 90cb: 20 93 94
loc_90ce:
	lda $291c                    ; 90ce: ad 1c 29
	sta $2028,x                  ; 90d1: 9d 28 20
	lda $291d                    ; 90d4: ad 1d 29
	sta $202a,x                  ; 90d7: 9d 2a 20
	lda $291e                    ; 90da: ad 1e 29
	sta $202a,x                  ; 90dd: 9d 2a 20
	lda $28a1                    ; 90e0: ad a1 28
	jsr $9493                    ; 90e3: 20 93 94
loc_90e6:
	lda $291c                    ; 90e6: ad 1c 29
	sta $2022,x                  ; 90e9: 9d 22 20
	lda $291d                    ; 90ec: ad 1d 29
	sta $2024,x                  ; 90ef: 9d 24 20
	lda $291e                    ; 90f2: ad 1e 29
	sta $2024,x                  ; 90f5: 9d 24 20
	lda $28a5                    ; 90f8: ad a5 28
	.db $d0, $03                 ; 90fb: d0 03
loc_90fd:
	jmp $92ef                    ; 90fd: 4c ef 92

; --- Block at $9100-$9189 ---
loc_9100:
	tdc                          ; 9100: 7b
	tay                          ; 9101: a8
	lda $28a5                    ; 9102: ad a5 28
	and.b #$80                   ; 9105: 29 80
	.db $f0, $15                 ; 9107: f0 15
loc_9109:
	lda $28a6,y                  ; 9109: b9 a6 28
	sta $2019,x                  ; 910c: 9d 19 20
	iny                          ; 910f: c8
	lda $28a6,y                  ; 9110: b9 a6 28
	sta $201e,x                  ; 9113: 9d 1e 20
	iny                          ; 9116: c8
	lda $28a6,y                  ; 9117: b9 a6 28
	sta $201f,x                  ; 911a: 9d 1f 20
	iny                          ; 911d: c8
loc_911e:
	lda $28a5                    ; 911e: ad a5 28
	and.b #$40                   ; 9121: 29 40
	.db $f0, $1c                 ; 9123: f0 1c
loc_9125:
	lda $28a6,y                  ; 9125: b9 a6 28
	.db $10, $05                 ; 9128: 10 05
loc_912a:
	sta $2026,x                  ; 912a: 9d 26 20
	.db $80, $03                 ; 912d: 80 03
loc_912f:
	sta $2025,x                  ; 912f: 9d 25 20
loc_9132:
	iny                          ; 9132: c8
	lda $28a6,y                  ; 9133: b9 a6 28
	sta $202b,x                  ; 9136: 9d 2b 20
	iny                          ; 9139: c8
	lda $28a6,y                  ; 913a: b9 a6 28
	sta $202c,x                  ; 913d: 9d 2c 20
	iny                          ; 9140: c8
loc_9141:
	lda $28a5                    ; 9141: ad a5 28
	and.b #$20                   ; 9144: 29 20
	.db $f0, $15                 ; 9146: f0 15
loc_9148:
	lda $28a6,y                  ; 9148: b9 a6 28
	.db $10, $03                 ; 914b: 10 03
loc_914d:
	sta $2021,x                  ; 914d: 9d 21 20
loc_9150:
	sta $2020,x                  ; 9150: 9d 20 20
	iny                          ; 9153: c8
	and.b #$20                   ; 9154: 29 20
	.db $f0, $05                 ; 9156: f0 05
loc_9158:
	lda.b #$40                   ; 9158: a9 40
	sta $2004,x                  ; 915a: 9d 04 20
loc_915d:
	lda $28a5                    ; 915d: ad a5 28
	and.b #$10                   ; 9160: 29 10
	.db $f0, $10                 ; 9162: f0 10
loc_9164:
	lda $28a6,y                  ; 9164: b9 a6 28
	sta $2012,x                  ; 9167: 9d 12 20
	sta $2013,x                  ; 916a: 9d 13 20
	sta $2017,x                  ; 916d: 9d 17 20
	sta $2018,x                  ; 9170: 9d 18 20
	iny                          ; 9173: c8
loc_9174:
	lda $28a5                    ; 9174: ad a5 28
	and.b #$08                   ; 9177: 29 08
	.db $f0, $07                 ; 9179: f0 07
loc_917b:
	lda $28a6,y                  ; 917b: b9 a6 28
	sta $2040,x                  ; 917e: 9d 40 20
	iny                          ; 9181: c8
loc_9182:
	lda $28a5                    ; 9182: ad a5 28
	and.b #$04                   ; 9185: 29 04
	.db $d0, $03                 ; 9187: d0 03
loc_9189:
	jmp $92ef                    ; 9189: 4c ef 92

; --- Block at $918c-$92ef ---
loc_918c:
	lda $35a0                    ; 918c: ad a0 35
	tax                          ; 918f: aa
	inc $38aa,x                  ; 9190: fe aa 38
	lda $28a6,y                  ; 9193: b9 a6 28
	sta $35a2                    ; 9196: 8d a2 35
	lda $35a0                    ; 9199: ad a0 35
	sta $df                      ; 919c: 85 df
	lda.b #$14                   ; 919e: a9 14
	sta $e1                      ; 91a0: 85 e1
	jsr $83e0                    ; 91a2: 20 e0 83
loc_91a5:
	lda $35a2                    ; 91a5: ad a2 35
	sta $e5                      ; 91a8: 85 e5
	ldy.w #$e030                 ; 91aa: a0 30 e0
	lda.b #$0e                   ; 91ad: a9 0e
	jsr $8443                    ; 91af: 20 43 84
loc_91b2:
	tyx                          ; 91b2: bb
	ldy $e3                      ; 91b3: a4 e3
	sty $98                      ; 91b5: 84 98
	sty $9c                      ; 91b7: 84 9c
	lda $0ee030,x                ; 91b9: bf 30 e0 0e
	sta $531f,y                  ; 91bd: 99 1f 53
	inx                          ; 91c0: e8
	iny                          ; 91c1: c8
	cmp.b #$ff                   ; 91c2: c9 ff
	.db $d0, $f3                 ; 91c4: d0 f3
loc_91c6:
	lda $35a0                    ; 91c6: ad a0 35
	sta $df                      ; 91c9: 85 df
	lda.b #$28                   ; 91cb: a9 28
	sta $e1                      ; 91cd: 85 e1
	jsr $83e0                    ; 91cf: 20 e0 83
loc_91d2:
	ldy $e3                      ; 91d2: a4 e3
	sty $9a                      ; 91d4: 84 9a
	sty $9e                      ; 91d6: 84 9e
	ldx $98                      ; 91d8: a6 98
	lda $531f,x                  ; 91da: bd 1f 53
	cmp.b #$ff                   ; 91dd: c9 ff
	.db $f0, $35                 ; 91df: f0 35
loc_91e1:
	sta $e5                      ; 91e1: 85 e5
	ldy.w #$e600                 ; 91e3: a0 00 e6
	lda.b #$0e                   ; 91e6: a9 0e
	jsr $8443                    ; 91e8: 20 43 84
loc_91eb:
	tyx                          ; 91eb: bb
	ldy $9a                      ; 91ec: a4 9a
	lda.b #$04                   ; 91ee: a9 04
	sta $a9                      ; 91f0: 85 a9
	lda $0ee600,x                ; 91f2: bf 00 e6 0e
	sta $53bf,y                  ; 91f6: 99 bf 53
	cmp.b #$ff                   ; 91f9: c9 ff
	.db $f0, $01                 ; 91fb: f0 01
loc_91fd:
	inx                          ; 91fd: e8
loc_91fe:
	iny                          ; 91fe: c8
	dec $a9                      ; 91ff: c6 a9
	lda $a9                      ; 9201: a5 a9
	.db $d0, $ed                 ; 9203: d0 ed
loc_9205:
	sty $9a                      ; 9205: 84 9a
	clc                          ; 9207: 18
	lda $98                      ; 9208: a5 98
	adc.b #$02                   ; 920a: 69 02
	sta $98                      ; 920c: 85 98
	lda $99                      ; 920e: a5 99
	adc.b #$00                   ; 9210: 69 00
	sta $99                      ; 9212: 85 99
	.db $80, $c2                 ; 9214: 80 c2
loc_9216:
	lda $35a0                    ; 9216: ad a0 35
	sta $df                      ; 9219: 85 df
	lda.b #$a0                   ; 921b: a9 a0
	sta $e1                      ; 921d: 85 e1
	jsr $83e0                    ; 921f: 20 e0 83
loc_9222:
	ldy $e3                      ; 9222: a4 e3
	sty $9a                      ; 9224: 84 9a
	lda.b #$0a                   ; 9226: a9 0a
	sta $ab                      ; 9228: 85 ab
	lda.b #$04                   ; 922a: a9 04
	sta $a9                      ; 922c: 85 a9
	ldx $9e                      ; 922e: a6 9e
	lda $53bf,x                  ; 9230: bd bf 53
	cmp.b #$ff                   ; 9233: c9 ff
	.db $f0, $20                 ; 9235: f0 20
loc_9237:
	sta $df                      ; 9237: 85 df
	lda.b #$04                   ; 9239: a9 04
	sta $e1                      ; 923b: 85 e1
	jsr $83e0                    ; 923d: 20 e0 83
loc_9240:
	ldx $e3                      ; 9240: a6 e3
	ldy $9a                      ; 9242: a4 9a
	lda.b #$04                   ; 9244: a9 04
	sta $aa                      ; 9246: 85 aa
	lda $0ee700,x                ; 9248: bf 00 e7 0e
	sta $54ff,y                  ; 924c: 99 ff 54
	inx                          ; 924f: e8
	iny                          ; 9250: c8
	dec $aa                      ; 9251: c6 aa
	lda $aa                      ; 9253: a5 aa
	.db $d0, $f1                 ; 9255: d0 f1
loc_9257:
	clc                          ; 9257: 18
	lda $9a                      ; 9258: a5 9a
	adc.b #$04                   ; 925a: 69 04
	sta $9a                      ; 925c: 85 9a
	lda $9b                      ; 925e: a5 9b
	adc.b #$00                   ; 9260: 69 00
	sta $9b                      ; 9262: 85 9b
	clc                          ; 9264: 18
	lda $9e                      ; 9265: a5 9e
	adc.b #$01                   ; 9267: 69 01
	sta $9e                      ; 9269: 85 9e
	lda $9f                      ; 926b: a5 9f
	adc.b #$00                   ; 926d: 69 00
	sta $9f                      ; 926f: 85 9f
	dec $a9                      ; 9271: c6 a9
	lda $a9                      ; 9273: a5 a9
	.db $d0, $b7                 ; 9275: d0 b7
loc_9277:
	dec $ab                      ; 9277: c6 ab
	lda $ab                      ; 9279: a5 ab
	.db $d0, $ad                 ; 927b: d0 ad
loc_927d:
	lda $35a0                    ; 927d: ad a0 35
	tax                          ; 9280: aa
	stx $393d                    ; 9281: 8e 3d 39
	ldx.w #$0258                 ; 9284: a2 58 02
	stx $393f                    ; 9287: 8e 3f 39
	jsr $83b9                    ; 928a: 20 b9 83
loc_928d:
	ldy $3941                    ; 928d: ac 41 39
	sty $9a                      ; 9290: 84 9a
	ldx $9c                      ; 9292: a6 9c
	lda $531f,x                  ; 9294: bd 1f 53
	cmp.b #$ff                   ; 9297: c9 ff
	.db $f0, $54                 ; 9299: f0 54
loc_929b:
	inx                          ; 929b: e8
	lda $531f,x                  ; 929c: bd 1f 53
	sta $e5                      ; 929f: 85 e5
	ldy.w #$e900                 ; 92a1: a0 00 e9
	lda $38ef                    ; 92a4: ad ef 38
	.db $f0, $03                 ; 92a7: f0 03
loc_92a9:
	ldy.w #$b6c0                 ; 92a9: a0 c0 b6
loc_92ac:
	lda.b #$0e                   ; 92ac: a9 0e
	jsr $8443                    ; 92ae: 20 43 84
loc_92b1:
	lda $38ef                    ; 92b1: ad ef 38
	.db $d0, $12                 ; 92b4: d0 12
loc_92b6:
	tyx                          ; 92b6: bb
	ldy $9a                      ; 92b7: a4 9a
	lda $0ee900,x                ; 92b9: bf 00 e9 0e
	sta $59ff,y                  ; 92bd: 99 ff 59
	inx                          ; 92c0: e8
	iny                          ; 92c1: c8
	cmp.b #$ff                   ; 92c2: c9 ff
	.db $d0, $f3                 ; 92c4: d0 f3
loc_92c6:
	.db $80, $10                 ; 92c6: 80 10
loc_92c8:
	tyx                          ; 92c8: bb
	ldy $9a                      ; 92c9: a4 9a
	lda $0eb6c0,x                ; 92cb: bf c0 b6 0e
	sta $59ff,y                  ; 92cf: 99 ff 59
	inx                          ; 92d2: e8
	iny                          ; 92d3: c8
	cmp.b #$ff                   ; 92d4: c9 ff
	.db $d0, $f3                 ; 92d6: d0 f3
loc_92d8:
	rep #$20                     ; 92d8: c2 20
	clc                          ; 92da: 18
	lda $9a                      ; 92db: a5 9a
	adc.w #$003c                 ; 92dd: 69 3c 00
	sta $9a                      ; 92e0: 85 9a
	clc                          ; 92e2: 18
	lda $9c                      ; 92e3: a5 9c
	adc.w #$0002                 ; 92e5: 69 02 00
	sta $9c                      ; 92e8: 85 9c
	tdc                          ; 92ea: 7b
	sep #$20                     ; 92eb: e2 20
	.db $80, $a3                 ; 92ed: 80 a3

; --- Block at $92ef-$9492 ---
loc_92ef:
	lda $35a0                    ; 92ef: ad a0 35
	sta $df                      ; 92f2: 85 df
	lda.b #$14                   ; 92f4: a9 14
	sta $e1                      ; 92f6: 85 e1
	jsr $83e0                    ; 92f8: 20 e0 83
loc_92fb:
	lda $35a1                    ; 92fb: ad a1 35
	sta $e5                      ; 92fe: 85 e5
	ldy.w #$e030                 ; 9300: a0 30 e0
	lda.b #$0e                   ; 9303: a9 0e
	jsr $8443                    ; 9305: 20 43 84
loc_9308:
	tyx                          ; 9308: bb
	ldy $e3                      ; 9309: a4 e3
	sty $98                      ; 930b: 84 98
	sty $9c                      ; 930d: 84 9c
	lda $0ee030,x                ; 930f: bf 30 e0 0e
	sta $397f,y                  ; 9313: 99 7f 39
	inx                          ; 9316: e8
	iny                          ; 9317: c8
	cmp.b #$ff                   ; 9318: c9 ff
	.db $d0, $f3                 ; 931a: d0 f3
loc_931c:
	lda $35a0                    ; 931c: ad a0 35
	sta $df                      ; 931f: 85 df
	lda.b #$28                   ; 9321: a9 28
	sta $e1                      ; 9323: 85 e1
	jsr $83e0                    ; 9325: 20 e0 83
loc_9328:
	ldy $e3                      ; 9328: a4 e3
	sty $9a                      ; 932a: 84 9a
	sty $9e                      ; 932c: 84 9e
	ldx $98                      ; 932e: a6 98
	lda $397f,x                  ; 9330: bd 7f 39
	cmp.b #$ff                   ; 9333: c9 ff
	.db $f0, $35                 ; 9335: f0 35
loc_9337:
	sta $e5                      ; 9337: 85 e5
	ldy.w #$e600                 ; 9339: a0 00 e6
	lda.b #$0e                   ; 933c: a9 0e
	jsr $8443                    ; 933e: 20 43 84
loc_9341:
	tyx                          ; 9341: bb
	ldy $9a                      ; 9342: a4 9a
	lda.b #$04                   ; 9344: a9 04
	sta $a9                      ; 9346: 85 a9
	lda $0ee600,x                ; 9348: bf 00 e6 0e
	sta $3a1f,y                  ; 934c: 99 1f 3a
	cmp.b #$ff                   ; 934f: c9 ff
	.db $f0, $01                 ; 9351: f0 01
loc_9353:
	inx                          ; 9353: e8
loc_9354:
	iny                          ; 9354: c8
	dec $a9                      ; 9355: c6 a9
	lda $a9                      ; 9357: a5 a9
	.db $d0, $ed                 ; 9359: d0 ed
loc_935b:
	sty $9a                      ; 935b: 84 9a
	clc                          ; 935d: 18
	lda $98                      ; 935e: a5 98
	adc.b #$02                   ; 9360: 69 02
	sta $98                      ; 9362: 85 98
	lda $99                      ; 9364: a5 99
	adc.b #$00                   ; 9366: 69 00
	sta $99                      ; 9368: 85 99
	.db $80, $c2                 ; 936a: 80 c2
loc_936c:
	lda $35a0                    ; 936c: ad a0 35
	sta $df                      ; 936f: 85 df
	lda.b #$a0                   ; 9371: a9 a0
	sta $e1                      ; 9373: 85 e1
	jsr $83e0                    ; 9375: 20 e0 83
loc_9378:
	ldy $e3                      ; 9378: a4 e3
	sty $9a                      ; 937a: 84 9a
	lda.b #$0a                   ; 937c: a9 0a
	sta $ab                      ; 937e: 85 ab
	lda.b #$04                   ; 9380: a9 04
	sta $a9                      ; 9382: 85 a9
	ldx $9e                      ; 9384: a6 9e
	lda $3a1f,x                  ; 9386: bd 1f 3a
	cmp.b #$ff                   ; 9389: c9 ff
	.db $f0, $20                 ; 938b: f0 20
loc_938d:
	sta $df                      ; 938d: 85 df
	lda.b #$04                   ; 938f: a9 04
	sta $e1                      ; 9391: 85 e1
	jsr $83e0                    ; 9393: 20 e0 83
loc_9396:
	ldx $e3                      ; 9396: a6 e3
	ldy $9a                      ; 9398: a4 9a
	lda.b #$04                   ; 939a: a9 04
	sta $aa                      ; 939c: 85 aa
	lda $0ee700,x                ; 939e: bf 00 e7 0e
	sta $3b5f,y                  ; 93a2: 99 5f 3b
	inx                          ; 93a5: e8
	iny                          ; 93a6: c8
	dec $aa                      ; 93a7: c6 aa
	lda $aa                      ; 93a9: a5 aa
	.db $d0, $f1                 ; 93ab: d0 f1
loc_93ad:
	clc                          ; 93ad: 18
	lda $9a                      ; 93ae: a5 9a
	adc.b #$04                   ; 93b0: 69 04
	sta $9a                      ; 93b2: 85 9a
	lda $9b                      ; 93b4: a5 9b
	adc.b #$00                   ; 93b6: 69 00
	sta $9b                      ; 93b8: 85 9b
	clc                          ; 93ba: 18
	lda $9e                      ; 93bb: a5 9e
	adc.b #$01                   ; 93bd: 69 01
	sta $9e                      ; 93bf: 85 9e
	lda $9f                      ; 93c1: a5 9f
	adc.b #$00                   ; 93c3: 69 00
	sta $9f                      ; 93c5: 85 9f
	dec $a9                      ; 93c7: c6 a9
	lda $a9                      ; 93c9: a5 a9
	.db $d0, $b7                 ; 93cb: d0 b7
loc_93cd:
	dec $ab                      ; 93cd: c6 ab
	lda $ab                      ; 93cf: a5 ab
	.db $d0, $ad                 ; 93d1: d0 ad
loc_93d3:
	lda $35a0                    ; 93d3: ad a0 35
	tax                          ; 93d6: aa
	stx $393d                    ; 93d7: 8e 3d 39
	ldx.w #$0258                 ; 93da: a2 58 02
	stx $393f                    ; 93dd: 8e 3f 39
	jsr $83b9                    ; 93e0: 20 b9 83
loc_93e3:
	ldy $3941                    ; 93e3: ac 41 39
	sty $9a                      ; 93e6: 84 9a
	sty $2896                    ; 93e8: 8c 96 28
	ldx $9c                      ; 93eb: a6 9c
	lda $397f,x                  ; 93ed: bd 7f 39
	cmp.b #$ff                   ; 93f0: c9 ff
	.db $f0, $54                 ; 93f2: f0 54
loc_93f4:
	inx                          ; 93f4: e8
	lda $397f,x                  ; 93f5: bd 7f 39
	sta $e5                      ; 93f8: 85 e5
	ldy.w #$e900                 ; 93fa: a0 00 e9
	lda $38ef                    ; 93fd: ad ef 38
	.db $f0, $03                 ; 9400: f0 03
loc_9402:
	ldy.w #$b6c0                 ; 9402: a0 c0 b6
loc_9405:
	lda.b #$0e                   ; 9405: a9 0e
	jsr $8443                    ; 9407: 20 43 84
loc_940a:
	lda $38ef                    ; 940a: ad ef 38
	.db $d0, $12                 ; 940d: d0 12
loc_940f:
	tyx                          ; 940f: bb
	ldy $9a                      ; 9410: a4 9a
	lda $0ee900,x                ; 9412: bf 00 e9 0e
	sta $405f,y                  ; 9416: 99 5f 40
	inx                          ; 9419: e8
	iny                          ; 941a: c8
	cmp.b #$ff                   ; 941b: c9 ff
	.db $d0, $f3                 ; 941d: d0 f3
loc_941f:
	.db $80, $10                 ; 941f: 80 10
loc_9421:
	tyx                          ; 9421: bb
	ldy $9a                      ; 9422: a4 9a
	lda $0eb6c0,x                ; 9424: bf c0 b6 0e
	sta $405f,y                  ; 9428: 99 5f 40
	inx                          ; 942b: e8
	iny                          ; 942c: c8
	cmp.b #$ff                   ; 942d: c9 ff
	.db $d0, $f3                 ; 942f: d0 f3
loc_9431:
	rep #$20                     ; 9431: c2 20
	clc                          ; 9433: 18
	lda $9a                      ; 9434: a5 9a
	adc.w #$003c                 ; 9436: 69 3c 00
	sta $9a                      ; 9439: 85 9a
	clc                          ; 943b: 18
	lda $9c                      ; 943c: a5 9c
	adc.w #$0002                 ; 943e: 69 02 00
	sta $9c                      ; 9441: 85 9c
	tdc                          ; 9443: 7b
	sep #$20                     ; 9444: e2 20
	.db $80, $a3                 ; 9446: 80 a3
loc_9448:
	lda $35a0                    ; 9448: ad a0 35
	sta $df                      ; 944b: 85 df
	lda.b #$14                   ; 944d: a9 14
	sta $e1                      ; 944f: 85 e1
	jsr $83e0                    ; 9451: 20 e0 83
loc_9454:
	ldx $e3                      ; 9454: a6 e3
	tdc                          ; 9456: 7b
	tay                          ; 9457: a8
	sty $a9                      ; 9458: 84 a9
	lda $397f,x                  ; 945a: bd 7f 39
	.db $f0, $08                 ; 945d: f0 08
loc_945f:
	inx                          ; 945f: e8
	inx                          ; 9460: e8
	inc $a9                      ; 9461: e6 a9
	inc $a9                      ; 9463: e6 a9
	.db $80, $f3                 ; 9465: 80 f3
loc_9467:
	lda $a9                      ; 9467: a5 a9
	lsr                          ; 9469: 4a
	pha                          ; 946a: 48
	lda $35a0                    ; 946b: ad a0 35
	tax                          ; 946e: aa
	pla                          ; 946f: 68
	sta $3604,x                  ; 9470: 9d 04 36
	sta $df                      ; 9473: 85 df
	lda.b #$3c                   ; 9475: a9 3c
	sta $e1                      ; 9477: 85 e1
	jsr $83e0                    ; 9479: 20 e0 83
loc_947c:
	lda $35a0                    ; 947c: ad a0 35
	asl                          ; 947f: 0a
	tax                          ; 9480: aa
	clc                          ; 9481: 18
	lda $2896                    ; 9482: ad 96 28
	adc $e3                      ; 9485: 65 e3
	sta $360c,x                  ; 9487: 9d 0c 36
	lda $2897                    ; 948a: ad 97 28
	adc $e4                      ; 948d: 65 e4
	sta $360d,x                  ; 948f: 9d 0d 36
	rts                          ; 9492: 60

; --- Block at $9493-$94b1 ---
loc_9493:
	phx                          ; 9493: da
	sta $df                      ; 9494: 85 df
	lda.b #$03                   ; 9496: a9 03
	sta $e1                      ; 9498: 85 e1
	jsr $83e0                    ; 949a: 20 e0 83
loc_949d:
	ldx $e3                      ; 949d: a6 e3
	ldy.w #$0080                 ; 949f: a0 80 00
	lda $0ea380,x                ; 94a2: bf 80 a3 0e
	sta $289c,y                  ; 94a6: 99 9c 28
	inx                          ; 94a9: e8
	iny                          ; 94aa: c8
	cpy.w #$0083                 ; 94ab: c0 83 00
	.db $d0, $f2                 ; 94ae: d0 f2
loc_94b0:
	plx                          ; 94b0: fa
	rts                          ; 94b1: 60

; --- Block at $94b2-$94e7 ---
loc_94b2:
	ldx.w #$2000                 ; 94b2: a2 00 20
	stx $80                      ; 94b5: 86 80
	tdc                          ; 94b7: 7b
	tax                          ; 94b8: aa
	stz $a9                      ; 94b9: 64 a9
	tdc                          ; 94bb: 7b
	tay                          ; 94bc: a8
	lda $1000,x                  ; 94bd: bd 00 10
	sta ($80),y                  ; 94c0: 91 80
	inx                          ; 94c2: e8
	iny                          ; 94c3: c8
	cpy.w #$0040                 ; 94c4: c0 40 00
	.db $d0, $f4                 ; 94c7: d0 f4
loc_94c9:
	phx                          ; 94c9: da
	tdc                          ; 94ca: 7b
	tay                          ; 94cb: a8
	lda ($80),y                  ; 94cc: b1 80
	and.b #$1f                   ; 94ce: 29 1f
	.db $d0, $18                 ; 94d0: d0 18
loc_94d2:
	lda $a9                      ; 94d2: a5 a9
	tax                          ; 94d4: aa
	inc $3540,x                  ; 94d5: fe 40 35
	ldy.w #$0003                 ; 94d8: a0 03 00
	tdc                          ; 94db: 7b
	sta ($80),y                  ; 94dc: 91 80
	iny                          ; 94de: c8
	sta ($80),y                  ; 94df: 91 80
	iny                          ; 94e1: c8
	sta ($80),y                  ; 94e2: 91 80
	iny                          ; 94e4: c8
	sta ($80),y                  ; 94e5: 91 80
	jmp $9570                    ; 94e7: 4c 70 95

; --- Block at $94ea-$959b ---
loc_94ea:
	ldy.w #$0003                 ; 94ea: a0 03 00
	lda ($80),y                  ; 94ed: b1 80
	and.b #$c0                   ; 94ef: 29 c0
	.db $d0, $7d                 ; 94f1: d0 7d
loc_94f3:
	lda $a9                      ; 94f3: a5 a9
	asl                          ; 94f5: 0a
	tax                          ; 94f6: aa
	lda.b #$40                   ; 94f7: a9 40
	sta $29eb,x                  ; 94f9: 9d eb 29
	rep #$20                     ; 94fc: c2 20
	ldy.w #$0009                 ; 94fe: a0 09 00
	lda ($80),y                  ; 9501: b1 80
	jsr $8486                    ; 9503: 20 86 84
loc_9506:
	ldy.w #$0007                 ; 9506: a0 07 00
	cmp ($80),y                  ; 9509: d1 80
	.db $90, $0c                 ; 950b: 90 0c
loc_950d:
	ldy.w #$0005                 ; 950d: a0 05 00
	lda ($80),y                  ; 9510: b1 80
	ora.w #$0100                 ; 9512: 09 00 01
	sta ($80),y                  ; 9515: 91 80
	.db $80, $0a                 ; 9517: 80 0a
loc_9519:
	ldy.w #$0005                 ; 9519: a0 05 00
	lda ($80),y                  ; 951c: b1 80
	and.w #$feff                 ; 951e: 29 ff fe
	sta ($80),y                  ; 9521: 91 80
loc_9523:
	tdc                          ; 9523: 7b
	sep #$20                     ; 9524: e2 20
	ldy.w #$003b                 ; 9526: a0 3b 00
	lda.b #$10                   ; 9529: a9 10
	sta ($80),y                  ; 952b: 91 80
	lda $29a2                    ; 952d: ad a2 29
	and.b #$20                   ; 9530: 29 20
	.db $f0, $04                 ; 9532: f0 04
loc_9534:
	lda.b #$01                   ; 9534: a9 01
	sta ($80),y                  ; 9536: 91 80
loc_9538:
	ldy.w #$002d                 ; 9538: a0 2d 00
	lda ($80),y                  ; 953b: b1 80
	ldy.w #$0041                 ; 953d: a0 41 00
	sta ($80),y                  ; 9540: 91 80
	ldy.w #$002e                 ; 9542: a0 2e 00
	lda ($80),y                  ; 9545: b1 80
	ldy.w #$0042                 ; 9547: a0 42 00
	sta ($80),y                  ; 954a: 91 80
	ldy.w #$0004                 ; 954c: a0 04 00
	lda ($80),y                  ; 954f: b1 80
	and.b #$40                   ; 9551: 29 40
	sta ($80),y                  ; 9553: 91 80
	iny                          ; 9555: c8
	lda ($80),y                  ; 9556: b1 80
	and.b #$82                   ; 9558: 29 82
	sta ($80),y                  ; 955a: 91 80
	iny                          ; 955c: c8
	lda ($80),y                  ; 955d: b1 80
	and.b #$01                   ; 955f: 29 01
	sta ($80),y                  ; 9561: 91 80
	ldy.w #$0002                 ; 9563: a0 02 00
	lda ($80),y                  ; 9566: b1 80
	cmp $3583                    ; 9568: cd 83 35
	.db $b0, $03                 ; 956b: b0 03
loc_956d:
	sta $3583                    ; 956d: 8d 83 35
loc_9570:
	plx                          ; 9570: fa
	ldy.w #$0007                 ; 9571: a0 07 00
	lda ($80),y                  ; 9574: b1 80
	ldy.w #$0008                 ; 9576: a0 08 00
	ora ($80),y                  ; 9579: 11 80
	.db $d0, $09                 ; 957b: d0 09
loc_957d:
	ldy.w #$0003                 ; 957d: a0 03 00
	lda ($80),y                  ; 9580: b1 80
	ora.b #$80                   ; 9582: 09 80
	sta ($80),y                  ; 9584: 91 80
loc_9586:
	clc                          ; 9586: 18
	lda $80                      ; 9587: a5 80
	adc.b #$80                   ; 9589: 69 80
	sta $80                      ; 958b: 85 80
	lda $81                      ; 958d: a5 81
	adc.b #$00                   ; 958f: 69 00
	sta $81                      ; 9591: 85 81
	inc $a9                      ; 9593: e6 a9
	lda $a9                      ; 9595: a5 a9
	cmp.b #$05                   ; 9597: c9 05
	.db $f0, $03                 ; 9599: f0 03
loc_959b:
	jmp $94bb                    ; 959b: 4c bb 94

; --- Block at $959e-$95d7 ---
loc_959e:
	ldx.w #$2000                 ; 959e: a2 00 20
	stx $80                      ; 95a1: 86 80
	tdc                          ; 95a3: 7b
	tay                          ; 95a4: a8
	tax                          ; 95a5: aa
	sty $a9                      ; 95a6: 84 a9
	lda ($80),y                  ; 95a8: b1 80
	and.b #$1f                   ; 95aa: 29 1f
	cmp.b #$08                   ; 95ac: c9 08
	.db $f0, $0c                 ; 95ae: f0 0c
loc_95b0:
	cmp.b #$09                   ; 95b0: c9 09
	.db $f0, $08                 ; 95b2: f0 08
loc_95b4:
	cmp.b #$13                   ; 95b4: c9 13
	.db $f0, $04                 ; 95b6: f0 04
loc_95b8:
	cmp.b #$15                   ; 95b8: c9 15
	.db $d0, $06                 ; 95ba: d0 06
loc_95bc:
	lda $a9                      ; 95bc: a5 a9
	sta $3539,x                  ; 95be: 9d 39 35
	inx                          ; 95c1: e8
loc_95c2:
	rep #$20                     ; 95c2: c2 20
	clc                          ; 95c4: 18
	lda $80                      ; 95c5: a5 80
	adc.w #$0080                 ; 95c7: 69 80 00
	sta $80                      ; 95ca: 85 80
	tdc                          ; 95cc: 7b
	sep #$20                     ; 95cd: e2 20
	inc $a9                      ; 95cf: e6 a9
	lda $a9                      ; 95d1: a5 a9
	cmp.b #$05                   ; 95d3: c9 05
	.db $d0, $d1                 ; 95d5: d0 d1
loc_95d7:
	rts                          ; 95d7: 60

; --- Block at $95d8-$9605 ---
loc_95d8:
	lda $16a8                    ; 95d8: ad a8 16
	.db $d0, $29                 ; 95db: d0 29
loc_95dd:
	lda $2001                    ; 95dd: ad 01 20
	and.b #$7f                   ; 95e0: 29 7f
	sta $2001                    ; 95e2: 8d 01 20
	lda $2081                    ; 95e5: ad 81 20
	and.b #$7f                   ; 95e8: 29 7f
	sta $2081                    ; 95ea: 8d 81 20
	lda $2101                    ; 95ed: ad 01 21 ; OBSEL
	and.b #$7f                   ; 95f0: 29 7f
	sta $2101                    ; 95f2: 8d 01 21 ; OBSEL
	lda $2181                    ; 95f5: ad 81 21 ; WMADDL
	ora.b #$80                   ; 95f8: 09 80
	sta $2181                    ; 95fa: 8d 81 21 ; WMADDL
	lda $2201                    ; 95fd: ad 01 22
	ora.b #$80                   ; 9600: 09 80
	sta $2201                    ; 9602: 8d 01 22
	rts                          ; 9605: 60

; --- Block at $9606-$962e ---
loc_9606:
	lda $2001                    ; 9606: ad 01 20
	ora.b #$80                   ; 9609: 09 80
	sta $2001                    ; 960b: 8d 01 20
	lda $2081                    ; 960e: ad 81 20
	ora.b #$80                   ; 9611: 09 80
	sta $2081                    ; 9613: 8d 81 20
	lda $2101                    ; 9616: ad 01 21 ; OBSEL
	ora.b #$80                   ; 9619: 09 80
	sta $2101                    ; 961b: 8d 01 21 ; OBSEL
	lda $2181                    ; 961e: ad 81 21 ; WMADDL
	and.b #$7f                   ; 9621: 29 7f
	sta $2181                    ; 9623: 8d 81 21 ; WMADDL
	lda $2201                    ; 9626: ad 01 22
	and.b #$7f                   ; 9629: 29 7f
	sta $2201                    ; 962b: 8d 01 22
	rts                          ; 962e: 60

; --- Block at $962f-$9680 ---
loc_962f:
	tdc                          ; 962f: 7b
	tax                          ; 9630: aa
	stx $cd                      ; 9631: 86 cd
	ldx $cd                      ; 9633: a6 cd
	lda $3540,x                  ; 9635: bd 40 35
	.db $d0, $3e                 ; 9638: d0 3e
loc_963a:
	ldx $cd                      ; 963a: a6 cd
	stx $df                      ; 963c: 86 df
	ldx.w #$0080                 ; 963e: a2 80 00
	stx $e1                      ; 9641: 86 e1
	jsr $83e0                    ; 9643: 20 e0 83
loc_9646:
	ldx $e3                      ; 9646: a6 e3
	lda $2003,x                  ; 9648: bd 03 20
	and.b #$01                   ; 964b: 29 01
	.db $f0, $29                 ; 964d: f0 29
loc_964f:
	lda.b #$06                   ; 964f: a9 06
	sta $d6                      ; 9651: 85 d6
	lda $cd                      ; 9653: a5 cd
	jsr $9e36                    ; 9655: 20 36 9e
loc_9658:
	lda.b #$09                   ; 9658: a9 09
	jsr $85c8                    ; 965a: 20 c8 85
loc_965d:
	lda.b #$40                   ; 965d: a9 40
	sta $2a06,x                  ; 965f: 9d 06 2a
	lda $cd                      ; 9662: a5 cd
	asl                          ; 9664: 0a
	tax                          ; 9665: aa
	lda $29eb,x                  ; 9666: bd eb 29
	ora.b #$10                   ; 9669: 09 10
	sta $29eb,x                  ; 966b: 9d eb 29
	lda $d4                      ; 966e: a5 d4
	sta $2b2a,x                  ; 9670: 9d 2a 2b
	lda $d5                      ; 9673: a5 d5
	sta $2b2b,x                  ; 9675: 9d 2b 2b
loc_9678:
	inc $cd                      ; 9678: e6 cd
	lda $cd                      ; 967a: a5 cd
	cmp.b #$05                   ; 967c: c9 05
	.db $d0, $b3                 ; 967e: d0 b3
loc_9680:
	rts                          ; 9680: 60

; --- Block at $9681-$968c ---
loc_9681:
	stz $38ee                    ; 9681: 9c ee 38
	lda $38ee                    ; 9684: ad ee 38
	.db $f0, $06                 ; 9687: f0 06
loc_9689:
	dec $38ee                    ; 9689: ce ee 38
	jmp $974a                    ; 968c: 4c 4a 97

; --- Block at $968f-$9744 ---
loc_968f:
	lda $16ac                    ; 968f: ad ac 16
	sta $38ee                    ; 9692: 8d ee 38
	rep #$20                     ; 9695: c2 20
	tdc                          ; 9697: 7b
	tax                          ; 9698: aa
	tay                          ; 9699: a8
	lda $3601                    ; 969a: ad 01 36
	cmp.w #$ffff                 ; 969d: c9 ff ff
	.db $f0, $0a                 ; 96a0: f0 0a
loc_96a2:
	sta $80                      ; 96a2: 85 80
	tya                          ; 96a4: 98
	lsr                          ; 96a5: 4a
	cmp $80                      ; 96a6: c5 80
	.db $f0, $02                 ; 96a8: f0 02
loc_96aa:
	.db $80, $2c                 ; 96aa: 80 2c
loc_96ac:
	lda $29ea,y                  ; 96ac: b9 ea 29
	sta $2896                    ; 96af: 8d 96 28
	asl $2896                    ; 96b2: 0e 96 28
	.db $90, $29                 ; 96b5: 90 29
loc_96b7:
	tdc                          ; 96b7: 7b
	sep #$20                     ; 96b8: e2 20
	lda $2a06,x                  ; 96ba: bd 06 2a
	and.b #$01                   ; 96bd: 29 01
	rep #$20                     ; 96bf: c2 20
	.db $d0, $1d                 ; 96c1: d0 1d
loc_96c3:
	dec $2a04,x                  ; 96c3: de 04 2a
	lda $2a04,x                  ; 96c6: bd 04 2a
	.db $d0, $0d                 ; 96c9: d0 0d
loc_96cb:
	tdc                          ; 96cb: 7b
	sep #$20                     ; 96cc: e2 20
	lda $2a06,x                  ; 96ce: bd 06 2a
	ora.b #$01                   ; 96d1: 09 01
	sta $2a06,x                  ; 96d3: 9d 06 2a
	rep #$20                     ; 96d6: c2 20
loc_96d8:
	txa                          ; 96d8: 8a
	clc                          ; 96d9: 18
	adc.w #$0015                 ; 96da: 69 15 00
	tax                          ; 96dd: aa
	.db $80, $5d                 ; 96de: 80 5d
loc_96e0:
	inx                          ; 96e0: e8
	inx                          ; 96e1: e8
	inx                          ; 96e2: e8
	lda.w #$0006                 ; 96e3: a9 06 00
	sta $289a                    ; 96e6: 8d 9a 28
	asl $2896                    ; 96e9: 0e 96 28
	.db $90, $44                 ; 96ec: 90 44
loc_96ee:
	tdc                          ; 96ee: 7b
	sep #$20                     ; 96ef: e2 20
	lda $2a06,x                  ; 96f1: bd 06 2a
	and.b #$81                   ; 96f4: 29 81
	rep #$20                     ; 96f6: c2 20
	.db $d0, $38                 ; 96f8: d0 38
loc_96fa:
	lda $289a                    ; 96fa: ad 9a 28
	cmp.w #$0001                 ; 96fd: c9 01 00
	.db $d0, $16                 ; 9700: d0 16
loc_9702:
	phx                          ; 9702: da
	tya                          ; 9703: 98
	asl                          ; 9704: 0a
	tax                          ; 9705: aa
	dec $35a4,x                  ; 9706: de a4 35
	lda $35a4,x                  ; 9709: bd a4 35
	.db $f0, $03                 ; 970c: f0 03
loc_970e:
	plx                          ; 970e: fa
	.db $80, $21                 ; 970f: 80 21
loc_9711:
	lda.w #$0002                 ; 9711: a9 02 00
	sta $35a4,x                  ; 9714: 9d a4 35
	plx                          ; 9717: fa
loc_9718:
	lda $2a04,x                  ; 9718: bd 04 2a
	.db $f0, $08                 ; 971b: f0 08
loc_971d:
	dec $2a04,x                  ; 971d: de 04 2a
	lda $2a04,x                  ; 9720: bd 04 2a
	.db $d0, $0d                 ; 9723: d0 0d
loc_9725:
	tdc                          ; 9725: 7b
	sep #$20                     ; 9726: e2 20
	lda $2a06,x                  ; 9728: bd 06 2a
	ora.b #$81                   ; 972b: 09 81
	sta $2a06,x                  ; 972d: 9d 06 2a
	rep #$20                     ; 9730: c2 20
loc_9732:
	inx                          ; 9732: e8
	inx                          ; 9733: e8
	inx                          ; 9734: e8
	dec $289a                    ; 9735: ce 9a 28
	lda $289a                    ; 9738: ad 9a 28
	.db $d0, $ac                 ; 973b: d0 ac
loc_973d:
	iny                          ; 973d: c8
	iny                          ; 973e: c8
	cpy.w #$001a                 ; 973f: c0 1a 00
	.db $f0, $03                 ; 9742: f0 03
loc_9744:
	jmp $969a                    ; 9744: 4c 9a 96

; --- Block at $9747-$974a ---
loc_9747:
	tdc                          ; 9747: 7b
	sep #$20                     ; 9748: e2 20

; --- Block at $974a-$974a ---
loc_974a:
	rts                          ; 974a: 60

; --- Block at $974b-$9791 ---
loc_974b:
	stz $d1                      ; 974b: 64 d1
	stz $00                      ; 974d: 64 00
	lda $38f6                    ; 974f: ad f6 38
	sta $a9                      ; 9752: 85 a9
	lda $3601                    ; 9754: ad 01 36
	cmp.b #$ff                   ; 9757: c9 ff
	.db $f0, $04                 ; 9759: f0 04
loc_975b:
	cmp $a9                      ; 975b: c5 a9
	.db $d0, $20                 ; 975d: d0 20
loc_975f:
	stz $ad                      ; 975f: 64 ad
	stz $ae                      ; 9761: 64 ae
	lda $a9                      ; 9763: a5 a9
	asl                          ; 9765: 0a
	tax                          ; 9766: aa
	lda $29eb,x                  ; 9767: bd eb 29
	sta $ab                      ; 976a: 85 ab
	asl $ab                      ; 976c: 06 ab
	.db $90, $07                 ; 976e: 90 07
loc_9770:
	jsr $9792                    ; 9770: 20 92 97
loc_9773:
	lda $d1                      ; 9773: a5 d1
	.db $d0, $1a                 ; 9775: d0 1a
loc_9777:
	inc $ad                      ; 9777: e6 ad
	lda $ad                      ; 9779: a5 ad
	cmp.b #$07                   ; 977b: c9 07
	.db $d0, $ed                 ; 977d: d0 ed
loc_977f:
	inc $a9                      ; 977f: e6 a9
	lda $a9                      ; 9781: a5 a9
	cmp.b #$0d                   ; 9783: c9 0d
	.db $d0, $02                 ; 9785: d0 02
loc_9787:
	stz $a9                      ; 9787: 64 a9
loc_9789:
	inc $00                      ; 9789: e6 00
	lda $00                      ; 978b: a5 00
	cmp.b #$0d                   ; 978d: c9 0d
	.db $d0, $c3                 ; 978f: d0 c3
loc_9791:
	rts                          ; 9791: 60

; --- Block at $9792-$97bc ---
loc_9792:
	lda $a9                      ; 9792: a5 a9
	sta $d2                      ; 9794: 85 d2
	jsr $8489                    ; 9796: 20 89 84
loc_9799:
	lda $ad                      ; 9799: a5 ad
	sta $d3                      ; 979b: 85 d3
	asl                          ; 979d: 0a
	clc                          ; 979e: 18
	adc $ad                      ; 979f: 65 ad
	sta $af                      ; 97a1: 85 af
	lda $af                      ; 97a3: a5 af
	jsr $8569                    ; 97a5: 20 69 85
loc_97a8:
	ldx $3598                    ; 97a8: ae 98 35
	lda $2a04,x                  ; 97ab: bd 04 2a
	ora $2a05,x                  ; 97ae: 1d 05 2a
	.db $d0, $09                 ; 97b1: d0 09
loc_97b3:
	lda $2a06,x                  ; 97b3: bd 06 2a
	and.b #$01                   ; 97b6: 29 01
	.db $f0, $02                 ; 97b8: f0 02
loc_97ba:
	inc $d1                      ; 97ba: e6 d1
loc_97bc:
	rts                          ; 97bc: 60

; --- Block at $97bd-$9806 ---
loc_97bd:
	lda $d2                      ; 97bd: a5 d2
	sta $38f6                    ; 97bf: 8d f6 38
	jsr $8489                    ; 97c2: 20 89 84
loc_97c5:
	inc $38f6                    ; 97c5: ee f6 38
	lda $38f6                    ; 97c8: ad f6 38
	cmp.b #$0d                   ; 97cb: c9 0d
	.db $d0, $03                 ; 97cd: d0 03
loc_97cf:
	stz $38f6                    ; 97cf: 9c f6 38
loc_97d2:
	lda $d3                      ; 97d2: a5 d3
	asl                          ; 97d4: 0a
	clc                          ; 97d5: 18
	adc $d3                      ; 97d6: 65 d3
	sta $a9                      ; 97d8: 85 a9
	lda $a9                      ; 97da: a5 a9
	jsr $8569                    ; 97dc: 20 69 85
loc_97df:
	ldx $3598                    ; 97df: ae 98 35
	lda $2a06,x                  ; 97e2: bd 06 2a
	and.b #$7e                   ; 97e5: 29 7e
	.db $d0, $0e                 ; 97e7: d0 0e
loc_97e9:
	lda $d2                      ; 97e9: a5 d2
	cmp.b #$05                   ; 97eb: c9 05
	.db $90, $04                 ; 97ed: 90 04
loc_97ef:
	lda.b #$01                   ; 97ef: a9 01
	.db $80, $0e                 ; 97f1: 80 0e
loc_97f3:
	lda.b #$00                   ; 97f3: a9 00
	.db $80, $0a                 ; 97f5: 80 0a
loc_97f7:
	and.b #$08                   ; 97f7: 29 08
	.db $f0, $04                 ; 97f9: f0 04
loc_97fb:
	lda.b #$02                   ; 97fb: a9 02
	.db $80, $02                 ; 97fd: 80 02
loc_97ff:
	lda.b #$03                   ; 97ff: a9 03
loc_9801:
	sta $352e                    ; 9801: 8d 2e 35
	stz $d1                      ; 9804: 64 d1
	rts                          ; 9806: 60

; --- Block at $9807-$9840 ---
loc_9807:
	lda $3975                    ; 9807: ad 75 39
	pha                          ; 980a: 48
	jsr $8235                    ; 980b: 20 35 82
loc_980e:
	pla                          ; 980e: 68
	sta $3975                    ; 980f: 8d 75 39
	jsr $94b2                    ; 9812: 20 b2 94
loc_9815:
	jsr $8ed6                    ; 9815: 20 d6 8e
loc_9818:
	jsr $9841                    ; 9818: 20 41 98
loc_981b:
	lsr $a7                      ; 981b: 46 a7
	ror $a6                      ; 981d: 66 a6
	ldx $a6                      ; 981f: a6 a6
	tdc                          ; 9821: 7b
	tay                          ; 9822: a8
	lda ($80),y                  ; 9823: b1 80
	sta $1000,x                  ; 9825: 9d 00 10
	inx                          ; 9828: e8
	iny                          ; 9829: c8
	cpy.w #$0040                 ; 982a: c0 40 00
	.db $d0, $f4                 ; 982d: d0 f4
loc_982f:
	ldy.w #$0041                 ; 982f: a0 41 00
	lda ($80),y                  ; 9832: b1 80
	ldx $a6                      ; 9834: a6 a6
	sta $102d,x                  ; 9836: 9d 2d 10
	iny                          ; 9839: c8
	inx                          ; 983a: e8
	lda ($80),y                  ; 983b: b1 80
	sta $102d,x                  ; 983d: 9d 2d 10
	rts                          ; 9840: 60

; --- Block at $9841-$9da7 ---
loc_9841:
	lda $3975                    ; 9841: ad 75 39
	jsr $8489                    ; 9844: 20 89 84
loc_9847:
	clc                          ; 9847: 18
	lda $a6                      ; 9848: a5 a6
	adc.b #$00                   ; 984a: 69 00
	sta $80                      ; 984c: 85 80
	lda $a7                      ; 984e: a5 a7
	adc.b #$20                   ; 9850: 69 20
	sta $81                      ; 9852: 85 81
	rep #$20                     ; 9854: c2 20
	clc                          ; 9856: 18
	lda $3532                    ; 9857: ad 32 35
	adc.w #$2780                 ; 985a: 69 80 27
	sta $82                      ; 985d: 85 82
	tdc                          ; 985f: 7b
	sep #$20                     ; 9860: e2 20
	lda $352c                    ; 9862: ad 2c 35
	.db $f0, $26                 ; 9865: f0 26
loc_9867:
	tdc                          ; 9867: 7b
	tay                          ; 9868: a8
	sty $a9                      ; 9869: 84 a9
	sty $ab                      ; 986b: 84 ab
	lda ($82),y                  ; 986d: b1 82
	.db $10, $04                 ; 986f: 10 04
loc_9871:
	inc $a9                      ; 9871: e6 a9
	.db $80, $0d                 ; 9873: 80 0d
loc_9875:
	tya                          ; 9875: 98
	clc                          ; 9876: 18
	adc.b #$0b                   ; 9877: 69 0b
	tay                          ; 9879: a8
	inc $ab                      ; 987a: e6 ab
	lda $ab                      ; 987c: a5 ab
	cmp.b #$05                   ; 987e: c9 05
	.db $d0, $eb                 ; 9880: d0 eb
loc_9882:
	lda $a9                      ; 9882: a5 a9
	.db $f0, $07                 ; 9884: f0 07
loc_9886:
	ldy.w #$0005                 ; 9886: a0 05 00
	lda.b #$80                   ; 9889: a9 80
	sta ($80),y                  ; 988b: 91 80
loc_988d:
	ldy.w #$0014                 ; 988d: a0 14 00
	tdc                          ; 9890: 7b
	sta ($80),y                  ; 9891: 91 80
	iny                          ; 9893: c8
	cpy.w #$0019                 ; 9894: c0 19 00
	.db $d0, $f8                 ; 9897: d0 f8
loc_9899:
	stz $af                      ; 9899: 64 af
	ldy.w #$0007                 ; 989b: a0 07 00
	lda ($82),y                  ; 989e: b1 82
	pha                          ; 98a0: 48
	and.b #$f8                   ; 98a1: 29 f8
	sta $a9                      ; 98a3: 85 a9
	pla                          ; 98a5: 68
	and.b #$07                   ; 98a6: 29 07
	asl                          ; 98a8: 0a
	tax                          ; 98a9: aa
	lda $13feac,x                ; 98aa: bf ac fe 13
	sta $ab                      ; 98ae: 85 ab
	inx                          ; 98b0: e8
	lda $13feac,x                ; 98b1: bf ac fe 13
	sta $ac                      ; 98b5: 85 ac
	phy                          ; 98b7: 5a
	ldy.w #$0014                 ; 98b8: a0 14 00
	asl $a9                      ; 98bb: 06 a9
	.db $90, $07                 ; 98bd: 90 07
loc_98bf:
	clc                          ; 98bf: 18
	lda ($80),y                  ; 98c0: b1 80
	adc $ab                      ; 98c2: 65 ab
	.db $80, $05                 ; 98c4: 80 05
loc_98c6:
	clc                          ; 98c6: 18
	lda ($80),y                  ; 98c7: b1 80
	adc $ac                      ; 98c9: 65 ac
loc_98cb:
	sta ($80),y                  ; 98cb: 91 80
	iny                          ; 98cd: c8
	cpy.w #$0019                 ; 98ce: c0 19 00
	.db $d0, $e8                 ; 98d1: d0 e8
loc_98d3:
	ply                          ; 98d3: 7a
	tya                          ; 98d4: 98
	clc                          ; 98d5: 18
	adc.b #$0b                   ; 98d6: 69 0b
	tay                          ; 98d8: a8
	inc $af                      ; 98d9: e6 af
	lda $af                      ; 98db: a5 af
	cmp.b #$05                   ; 98dd: c9 05
	.db $d0, $bd                 ; 98df: d0 bd
loc_98e1:
	ldy.w #$000f                 ; 98e1: a0 0f 00
	sty $a9                      ; 98e4: 84 a9
	ldy.w #$0014                 ; 98e6: a0 14 00
	sty $ab                      ; 98e9: 84 ab
	ldy $a9                      ; 98eb: a4 a9
	clc                          ; 98ed: 18
	lda ($80),y                  ; 98ee: b1 80
	ldy $ab                      ; 98f0: a4 ab
	adc ($80),y                  ; 98f2: 71 80
	cmp.b #$b6                   ; 98f4: c9 b6
	.db $b0, $08                 ; 98f6: b0 08
loc_98f8:
	cmp.b #$63                   ; 98f8: c9 63
	.db $90, $06                 ; 98fa: 90 06
loc_98fc:
	lda.b #$63                   ; 98fc: a9 63
	.db $80, $02                 ; 98fe: 80 02
loc_9900:
	lda.b #$01                   ; 9900: a9 01
loc_9902:
	sta ($80),y                  ; 9902: 91 80
	inc $a9                      ; 9904: e6 a9
	inc $ab                      ; 9906: e6 ab
	lda $a9                      ; 9908: a5 a9
	cmp.b #$14                   ; 990a: c9 14
	.db $d0, $dd                 ; 990c: d0 dd
loc_990e:
	ldy.w #$0002                 ; 990e: a0 02 00
	lda ($80),y                  ; 9911: b1 80
	sta $3965                    ; 9913: 8d 65 39
	tdc                          ; 9916: 7b
	tax                          ; 9917: aa
	ldy.w #$0014                 ; 9918: a0 14 00
	lda ($80),y                  ; 991b: b1 80
	sta $3966,x                  ; 991d: 9d 66 39
	iny                          ; 9920: c8
	inx                          ; 9921: e8
	cpx.w #$0005                 ; 9922: e0 05 00
	.db $d0, $f4                 ; 9925: d0 f4
loc_9927:
	stz $396b                    ; 9927: 9c 6b 39
	stz $396c                    ; 992a: 9c 6c 39
	stz $396d                    ; 992d: 9c 6d 39
	stz $396e                    ; 9930: 9c 6e 39
	stz $396f                    ; 9933: 9c 6f 39
	stz $3970                    ; 9936: 9c 70 39
	stz $3971                    ; 9939: 9c 71 39
	stz $3972                    ; 993c: 9c 72 39
	stz $3973                    ; 993f: 9c 73 39
	stz $3974                    ; 9942: 9c 74 39
	ldy.w #$0025                 ; 9945: a0 25 00
	lda ($82),y                  ; 9948: b1 82
	.db $10, $0c                 ; 994a: 10 0c
loc_994c:
	ldy.w #$0021                 ; 994c: a0 21 00
	jsr $9db5                    ; 994f: 20 b5 9d
loc_9952:
	lda $396d                    ; 9952: ad 6d 39
	sta $396e                    ; 9955: 8d 6e 39
loc_9958:
	ldy.w #$0030                 ; 9958: a0 30 00
	lda ($82),y                  ; 995b: b1 82
	.db $10, $06                 ; 995d: 10 06
loc_995f:
	ldy.w #$002c                 ; 995f: a0 2c 00
	jsr $9db5                    ; 9962: 20 b5 9d
loc_9965:
	tdc                          ; 9965: 7b
	tax                          ; 9966: aa
	stx $a9                      ; 9967: 86 a9
	ldy.w #$0008                 ; 9969: a0 08 00
	lda ($82),y                  ; 996c: b1 82
	sta $ad,x                    ; 996e: 95 ad
	tya                          ; 9970: 98
	clc                          ; 9971: 18
	adc.b #$0b                   ; 9972: 69 0b
	tay                          ; 9974: a8
	inx                          ; 9975: e8
	cpx.w #$0003                 ; 9976: e0 03 00
	.db $d0, $f1                 ; 9979: d0 f1
loc_997b:
	lda $396d                    ; 997b: ad 6d 39
	sta $b0                      ; 997e: 85 b0
	lda $396e                    ; 9980: ad 6e 39
	sta $b1                      ; 9983: 85 b1
	tdc                          ; 9985: 7b
	tax                          ; 9986: aa
	lda $ad,x                    ; 9987: b5 ad
	.db $30, $06                 ; 9989: 30 06
loc_998b:
	ora $a9                      ; 998b: 05 a9
	sta $a9                      ; 998d: 85 a9
	.db $80, $04                 ; 998f: 80 04
loc_9991:
	ora $aa                      ; 9991: 05 aa
	sta $aa                      ; 9993: 85 aa
loc_9995:
	inx                          ; 9995: e8
	cpx.w #$0005                 ; 9996: e0 05 00
	.db $d0, $ec                 ; 9999: d0 ec
loc_999b:
	ldy.w #$0025                 ; 999b: a0 25 00
	lda $a9                      ; 999e: a5 a9
	sta ($80),y                  ; 99a0: 91 80
	iny                          ; 99a2: c8
	lda $aa                      ; 99a3: a5 aa
	sta ($80),y                  ; 99a5: 91 80
	ldy.w #$0005                 ; 99a7: a0 05 00
	tdc                          ; 99aa: 7b
	tax                          ; 99ab: aa
	stz $a9                      ; 99ac: 64 a9
	lda ($82),y                  ; 99ae: b1 82
	ora $a9                      ; 99b0: 05 a9
	sta $a9                      ; 99b2: 85 a9
	tya                          ; 99b4: 98
	clc                          ; 99b5: 18
	adc.b #$0b                   ; 99b6: 69 0b
	tay                          ; 99b8: a8
	inx                          ; 99b9: e8
	cpx.w #$0003                 ; 99ba: e0 03 00
	.db $d0, $ef                 ; 99bd: d0 ef
loc_99bf:
	ldy.w #$0027                 ; 99bf: a0 27 00
	lda $a9                      ; 99c2: a5 a9
	ora $3974                    ; 99c4: 0d 74 39
	sta ($80),y                  ; 99c7: 91 80
	ldy.w #$0028                 ; 99c9: a0 28 00
	lda $3965                    ; 99cc: ad 65 39
	jsr $8484                    ; 99cf: 20 84 84
loc_99d2:
	sta $df                      ; 99d2: 85 df
	lda $396b                    ; 99d4: ad 6b 39
	sta $e1                      ; 99d7: 85 e1
	jsr $83e0                    ; 99d9: 20 e0 83
loc_99dc:
	lda $3967                    ; 99dc: ad 67 39
	jsr $8485                    ; 99df: 20 85 84
loc_99e2:
	clc                          ; 99e2: 18
	adc $e3                      ; 99e3: 65 e3
	sta ($80),y                  ; 99e5: 91 80
	ldy.w #$0002                 ; 99e7: a0 02 00
	tdc                          ; 99ea: 7b
	tax                          ; 99eb: aa
	clc                          ; 99ec: 18
	lda ($82),y                  ; 99ed: b1 82
	and.b #$7f                   ; 99ef: 29 7f
	adc $aa                      ; 99f1: 65 aa
	sta $aa                      ; 99f3: 85 aa
	tya                          ; 99f5: 98
	clc                          ; 99f6: 18
	adc.b #$0b                   ; 99f7: 69 0b
	tay                          ; 99f9: a8
	inx                          ; 99fa: e8
	cpx.w #$0003                 ; 99fb: e0 03 00
	.db $d0, $ec                 ; 99fe: d0 ec
loc_9a00:
	ldy.w #$0029                 ; 9a00: a0 29 00
	clc                          ; 9a03: 18
	lda $aa                      ; 9a04: a5 aa
	adc $396c                    ; 9a06: 6d 6c 39
	jsr $9e2a                    ; 9a09: 20 2a 9e
loc_9a0c:
	sta ($80),y                  ; 9a0c: 91 80
	lda $3968                    ; 9a0e: ad 68 39
	lsr                          ; 9a11: 4a
	sta $a9                      ; 9a12: 85 a9
	tdc                          ; 9a14: 7b
	tax                          ; 9a15: aa
	tay                          ; 9a16: a8
	iny                          ; 9a17: c8
	clc                          ; 9a18: 18
	lda ($82),y                  ; 9a19: b1 82
	adc $a9                      ; 9a1b: 65 a9
	sta $a9                      ; 9a1d: 85 a9
	tya                          ; 9a1f: 98
	clc                          ; 9a20: 18
	adc.b #$0b                   ; 9a21: 69 0b
	tay                          ; 9a23: a8
	inx                          ; 9a24: e8
	cpx.w #$0003                 ; 9a25: e0 03 00
	.db $d0, $ee                 ; 9a28: d0 ee
loc_9a2a:
	ldy.w #$002a                 ; 9a2a: a0 2a 00
	clc                          ; 9a2d: 18
	lda $a9                      ; 9a2e: a5 a9
	adc $396f                    ; 9a30: 6d 6f 39
	jsr $9e31                    ; 9a33: 20 31 9e
loc_9a36:
	sta ($80),y                  ; 9a36: 91 80
	tdc                          ; 9a38: 7b
	tax                          ; 9a39: aa
	stx $a9                      ; 9a3a: 86 a9
	ldy.w #$0009                 ; 9a3c: a0 09 00
	lda ($82),y                  ; 9a3f: b1 82
	ora $a9                      ; 9a41: 05 a9
	sta $a9                      ; 9a43: 85 a9
	iny                          ; 9a45: c8
	lda ($82),y                  ; 9a46: b1 82
	ora $aa                      ; 9a48: 05 aa
	sta $aa                      ; 9a4a: 85 aa
	tya                          ; 9a4c: 98
	clc                          ; 9a4d: 18
	adc.b #$0a                   ; 9a4e: 69 0a
	tay                          ; 9a50: a8
	inx                          ; 9a51: e8
	cpx.w #$0003                 ; 9a52: e0 03 00
	.db $d0, $e8                 ; 9a55: d0 e8
loc_9a57:
	ldy.w #$002b                 ; 9a57: a0 2b 00
	lda $a9                      ; 9a5a: a5 a9
	ora $3970                    ; 9a5c: 0d 70 39
	sta ($80),y                  ; 9a5f: 91 80
	iny                          ; 9a61: c8
	lda $aa                      ; 9a62: a5 aa
	ora $3971                    ; 9a64: 0d 71 39
	sta ($80),y                  ; 9a67: 91 80
	ldy.w #$0025                 ; 9a69: a0 25 00
	lda ($80),y                  ; 9a6c: b1 80
	sta $a9                      ; 9a6e: 85 a9
	jsr $9da8                    ; 9a70: 20 a8 9d
loc_9a73:
	ldy.w #$0020                 ; 9a73: a0 20 00
	sta ($80),y                  ; 9a76: 91 80
	ldy.w #$0026                 ; 9a78: a0 26 00
	lda ($80),y                  ; 9a7b: b1 80
	sta $a9                      ; 9a7d: 85 a9
	jsr $9da8                    ; 9a7f: 20 a8 9d
loc_9a82:
	.db $f0, $07                 ; 9a82: f0 07
loc_9a84:
	ldy.w #$0021                 ; 9a84: a0 21 00
	ora.b #$80                   ; 9a87: 09 80
	sta ($80),y                  ; 9a89: 91 80
loc_9a8b:
	ldy.w #$0022                 ; 9a8b: a0 22 00
	clc                          ; 9a8e: 18
	lda $3969                    ; 9a8f: ad 69 39
	adc $396a                    ; 9a92: 6d 6a 39
	sta $aa                      ; 9a95: 85 aa
	jsr $8483                    ; 9a97: 20 83 84
loc_9a9a:
	sta $a9                      ; 9a9a: 85 a9
	lda $3967                    ; 9a9c: ad 67 39
	jsr $8483                    ; 9a9f: 20 83 84
loc_9aa2:
	clc                          ; 9aa2: 18
	adc $a9                      ; 9aa3: 65 a9
	sta ($80),y                  ; 9aa5: 91 80
	lda $aa                      ; 9aa7: a5 aa
	jsr $8485                    ; 9aa9: 20 85 84
loc_9aac:
	sta $a9                      ; 9aac: 85 a9
	tdc                          ; 9aae: 7b
	tay                          ; 9aaf: a8
	tax                          ; 9ab0: aa
	clc                          ; 9ab1: 18
	lda ($82),y                  ; 9ab2: b1 82
	and.b #$7f                   ; 9ab4: 29 7f
	adc $a9                      ; 9ab6: 65 a9
	sta $a9                      ; 9ab8: 85 a9
	tya                          ; 9aba: 98
	clc                          ; 9abb: 18
	adc.b #$0b                   ; 9abc: 69 0b
	tay                          ; 9abe: a8
	inx                          ; 9abf: e8
	cpx.w #$0003                 ; 9ac0: e0 03 00
	.db $d0, $ec                 ; 9ac3: d0 ec
loc_9ac5:
	ldy.w #$0023                 ; 9ac5: a0 23 00
	clc                          ; 9ac8: 18
	lda $a9                      ; 9ac9: a5 a9
	adc $3972                    ; 9acb: 6d 72 39
	jsr $9e2a                    ; 9ace: 20 2a 9e
loc_9ad1:
	sta ($80),y                  ; 9ad1: 91 80
	ldy.w #$0003                 ; 9ad3: a0 03 00
	tdc                          ; 9ad6: 7b
	tax                          ; 9ad7: aa
	stx $a9                      ; 9ad8: 86 a9
	clc                          ; 9ada: 18
	lda ($82),y                  ; 9adb: b1 82
	adc $a9                      ; 9add: 65 a9
	sta $a9                      ; 9adf: 85 a9
	tya                          ; 9ae1: 98
	clc                          ; 9ae2: 18
	adc.b #$0b                   ; 9ae3: 69 0b
	tay                          ; 9ae5: a8
	inx                          ; 9ae6: e8
	cpx.w #$0003                 ; 9ae7: e0 03 00
	.db $d0, $ee                 ; 9aea: d0 ee
loc_9aec:
	ldy.w #$0024                 ; 9aec: a0 24 00
	clc                          ; 9aef: 18
	lda $a9                      ; 9af0: a5 a9
	adc $3973                    ; 9af2: 6d 73 39
	jsr $9e31                    ; 9af5: 20 31 9e
loc_9af8:
	sta ($80),y                  ; 9af8: 91 80
	ldx.w #$0015                 ; 9afa: a2 15 00
	stz $289c,x                  ; 9afd: 9e 9c 28
	dex                          ; 9b00: ca
	.db $10, $fa                 ; 9b01: 10 fa
loc_9b03:
	stz $3977                    ; 9b03: 9c 77 39
	ldy.w #$0001                 ; 9b06: a0 01 00
	lda ($80),y                  ; 9b09: b1 80
	and.b #$0f                   ; 9b0b: 29 0f
	cmp.b #$06                   ; 9b0d: c9 06
	.db $d0, $03                 ; 9b0f: d0 03
loc_9b11:
	inc $3977                    ; 9b11: ee 77 39
loc_9b14:
	ldy.w #$0033                 ; 9b14: a0 33 00
	lda ($80),y                  ; 9b17: b1 80
	.db $f0, $20                 ; 9b19: f0 20
loc_9b1b:
	ldy.w #$0025                 ; 9b1b: a0 25 00
	lda ($82),y                  ; 9b1e: b1 82
	.db $30, $19                 ; 9b20: 30 19
loc_9b22:
	lda $3977                    ; 9b22: ad 77 39
	ora.b #$80                   ; 9b25: 09 80
	sta $3977                    ; 9b27: 8d 77 39
	ldy.w #$0021                 ; 9b2a: a0 21 00
	tdc                          ; 9b2d: 7b
	tax                          ; 9b2e: aa
	lda ($82),y                  ; 9b2f: b1 82
	sta $289c,x                  ; 9b31: 9d 9c 28
	iny                          ; 9b34: c8
	inx                          ; 9b35: e8
	cpx.w #$000b                 ; 9b36: e0 0b 00
	.db $d0, $f4                 ; 9b39: d0 f4
loc_9b3b:
	ldy.w #$0035                 ; 9b3b: a0 35 00
	lda ($80),y                  ; 9b3e: b1 80
	.db $f0, $21                 ; 9b40: f0 21
loc_9b42:
	ldy.w #$0030                 ; 9b42: a0 30 00
	lda ($82),y                  ; 9b45: b1 82
	.db $30, $1a                 ; 9b47: 30 1a
loc_9b49:
	lda $3977                    ; 9b49: ad 77 39
	ora.b #$40                   ; 9b4c: 09 40
	sta $3977                    ; 9b4e: 8d 77 39
	ldy.w #$002c                 ; 9b51: a0 2c 00
	ldx.w #$000b                 ; 9b54: a2 0b 00
	lda ($82),y                  ; 9b57: b1 82
	sta $289c,x                  ; 9b59: 9d 9c 28
	iny                          ; 9b5c: c8
	inx                          ; 9b5d: e8
	cpx.w #$0016                 ; 9b5e: e0 16 00
	.db $d0, $f4                 ; 9b61: d0 f4
loc_9b63:
	lda $3977                    ; 9b63: ad 77 39
	and.b #$c0                   ; 9b66: 29 c0
	.db $f0, $09                 ; 9b68: f0 09
loc_9b6a:
	eor.b #$c0                   ; 9b6a: 49 c0
	.db $d0, $55                 ; 9b6c: d0 55
loc_9b6e:
	lda $28a2                    ; 9b6e: ad a2 28
	and.b #$c0                   ; 9b71: 29 c0
loc_9b73:
	.db $f0, $4c                 ; 9b73: f0 4c
loc_9b75:
	lda.b #$80                   ; 9b75: a9 80
	sta $3978                    ; 9b77: 8d 78 39
	lda $28a2                    ; 9b7a: ad a2 28
	and.b #$80                   ; 9b7d: 29 80
	.db $d0, $36                 ; 9b7f: d0 36
loc_9b81:
	lda.b #$40                   ; 9b81: a9 40
	sta $3978                    ; 9b83: 8d 78 39
	tdc                          ; 9b86: 7b
	tax                          ; 9b87: aa
	ldy.w #$0016                 ; 9b88: a0 16 00
	lda $289c,x                  ; 9b8b: bd 9c 28
	sta $289c,y                  ; 9b8e: 99 9c 28
	inx                          ; 9b91: e8
	iny                          ; 9b92: c8
	cpx.w #$000b                 ; 9b93: e0 0b 00
	.db $d0, $f3                 ; 9b96: d0 f3
loc_9b98:
	tdc                          ; 9b98: 7b
	tay                          ; 9b99: a8
	lda $289c,x                  ; 9b9a: bd 9c 28
	sta $289c,y                  ; 9b9d: 99 9c 28
	inx                          ; 9ba0: e8
	iny                          ; 9ba1: c8
	cpx.w #$0016                 ; 9ba2: e0 16 00
	.db $d0, $f3                 ; 9ba5: d0 f3
loc_9ba7:
	ldy.w #$000b                 ; 9ba7: a0 0b 00
	lda $289c,x                  ; 9baa: bd 9c 28
	sta $289c,y                  ; 9bad: 99 9c 28
	inx                          ; 9bb0: e8
	iny                          ; 9bb1: c8
	cpy.w #$0016                 ; 9bb2: c0 16 00
	.db $d0, $f3                 ; 9bb5: d0 f3
loc_9bb7:
	lda $3977                    ; 9bb7: ad 77 39
	and.b #$3f                   ; 9bba: 29 3f
	ora.b #$a0                   ; 9bbc: 09 a0
	sta $3977                    ; 9bbe: 8d 77 39
loc_9bc1:
	.db $80, $2b                 ; 9bc1: 80 2b
loc_9bc3:
	lda $3977                    ; 9bc3: ad 77 39
	.db $30, $26                 ; 9bc6: 30 26
loc_9bc8:
	ldx.w #$000b                 ; 9bc8: a2 0b 00
	tdc                          ; 9bcb: 7b
	tay                          ; 9bcc: a8
	lda $289c,x                  ; 9bcd: bd 9c 28
	sta $289c,y                  ; 9bd0: 99 9c 28
	inx                          ; 9bd3: e8
	iny                          ; 9bd4: c8
	cpy.w #$000b                 ; 9bd5: c0 0b 00
	.db $d0, $f3                 ; 9bd8: d0 f3
loc_9bda:
	tyx                          ; 9bda: bb
	stz $289c,x                  ; 9bdb: 9e 9c 28
	inx                          ; 9bde: e8
	cpx.w #$0016                 ; 9bdf: e0 16 00
	.db $d0, $f7                 ; 9be2: d0 f7
loc_9be4:
	lda $3977                    ; 9be4: ad 77 39
	and.b #$3f                   ; 9be7: 29 3f
	ora.b #$80                   ; 9be9: 09 80
	sta $3977                    ; 9beb: 8d 77 39
loc_9bee:
	tdc                          ; 9bee: 7b
	tax                          ; 9bef: aa
	stx $a9                      ; 9bf0: 86 a9
	lda $28a0                    ; 9bf2: ad a0 28
	.db $30, $05                 ; 9bf5: 30 05
loc_9bf7:
	lda $28a4                    ; 9bf7: ad a4 28
	sta $a9                      ; 9bfa: 85 a9
loc_9bfc:
	lda $28ab                    ; 9bfc: ad ab 28
	.db $30, $05                 ; 9bff: 30 05
loc_9c01:
	lda $28af                    ; 9c01: ad af 28
	sta $aa                      ; 9c04: 85 aa
loc_9c06:
	lda $a9                      ; 9c06: a5 a9
	ora $aa                      ; 9c08: 05 aa
	ldy.w #$0019                 ; 9c0a: a0 19 00
	sta ($80),y                  ; 9c0d: 91 80
	tdc                          ; 9c0f: 7b
	tax                          ; 9c10: aa
	stx $a9                      ; 9c11: 86 a9
	lda $28a0                    ; 9c13: ad a0 28
	.db $30, $05                 ; 9c16: 30 05
loc_9c18:
	lda $28a1                    ; 9c18: ad a1 28
	sta $a9                      ; 9c1b: 85 a9
loc_9c1d:
	lda $28ab                    ; 9c1d: ad ab 28
	.db $30, $05                 ; 9c20: 30 05
loc_9c22:
	lda $28ac                    ; 9c22: ad ac 28
	sta $aa                      ; 9c25: 85 aa
loc_9c27:
	lda $a9                      ; 9c27: a5 a9
	ora $aa                      ; 9c29: 05 aa
	ldy.w #$001a                 ; 9c2b: a0 1a 00
	sta ($80),y                  ; 9c2e: 91 80
	lda $3966                    ; 9c30: ad 66 39
	jsr $8485                    ; 9c33: 20 85 84
loc_9c36:
	sta $a9                      ; 9c36: 85 a9
	lda $3967                    ; 9c38: ad 67 39
	jsr $8484                    ; 9c3b: 20 84 84
loc_9c3e:
	clc                          ; 9c3e: 18
	adc $a9                      ; 9c3f: 65 a9
	inc                          ; 9c41: 1a
	ldy.w #$001b                 ; 9c42: a0 1b 00
	sta ($80),y                  ; 9c45: 91 80
	lda $3965                    ; 9c47: ad 65 39
	jsr $8486                    ; 9c4a: 20 86 84
loc_9c4d:
	sta $a9                      ; 9c4d: 85 a9
	lda $3977                    ; 9c4f: ad 77 39
	and.b #$c0                   ; 9c52: 29 c0
	.db $f0, $21                 ; 9c54: f0 21
loc_9c56:
	eor.b #$c0                   ; 9c56: 49 c0
	.db $d0, $26                 ; 9c58: d0 26
loc_9c5a:
	clc                          ; 9c5a: 18
	lda $289e                    ; 9c5b: ad 9e 28
	and.b #$7f                   ; 9c5e: 29 7f
	adc $a9                      ; 9c60: 65 a9
	sta $aa                      ; 9c62: 85 aa
	clc                          ; 9c64: 18
	lda $28a9                    ; 9c65: ad a9 28
	and.b #$7f                   ; 9c68: 29 7f
	adc $a9                      ; 9c6a: 65 a9
	adc $aa                      ; 9c6c: 65 aa
	lsr                          ; 9c6e: 4a
	cmp.b #$63                   ; 9c6f: c9 63
	.db $90, $18                 ; 9c71: 90 18
loc_9c73:
	lda.b #$63                   ; 9c73: a9 63
	.db $80, $14                 ; 9c75: 80 14
loc_9c77:
	clc                          ; 9c77: 18
	lda $0f9102                  ; 9c78: af 02 91 0f
	adc $a9                      ; 9c7c: 65 a9
	.db $80, $08                 ; 9c7e: 80 08
loc_9c80:
	clc                          ; 9c80: 18
	lda $289e                    ; 9c81: ad 9e 28
	and.b #$7f                   ; 9c84: 29 7f
	adc $a9                      ; 9c86: 65 a9
loc_9c88:
	jsr $9e2a                    ; 9c88: 20 2a 9e
loc_9c8b:
	ldy.w #$001c                 ; 9c8b: a0 1c 00
	sta ($80),y                  ; 9c8e: 91 80
	lda $3966                    ; 9c90: ad 66 39
	jsr $8486                    ; 9c93: 20 86 84
loc_9c96:
	sta $aa                      ; 9c96: 85 aa
	lda $3977                    ; 9c98: ad 77 39
	and.b #$01                   ; 9c9b: 29 01
	.db $f0, $0b                 ; 9c9d: f0 0b
loc_9c9f:
	lda $3965                    ; 9c9f: ad 65 39
	asl                          ; 9ca2: 0a
	clc                          ; 9ca3: 18
	adc $aa                      ; 9ca4: 65 aa
	adc.b #$02                   ; 9ca6: 69 02
	.db $80, $66                 ; 9ca8: 80 66
loc_9caa:
	lda $3977                    ; 9caa: ad 77 39
	and.b #$c0                   ; 9cad: 29 c0
	.db $f0, $57                 ; 9caf: f0 57
loc_9cb1:
	eor.b #$c0                   ; 9cb1: 49 c0
	.db $d0, $17                 ; 9cb3: d0 17
loc_9cb5:
	clc                          ; 9cb5: 18
	lda $289d                    ; 9cb6: ad 9d 28
	adc $a9                      ; 9cb9: 65 a9
	adc $aa                      ; 9cbb: 65 aa
	sta $ab                      ; 9cbd: 85 ab
	clc                          ; 9cbf: 18
	lda $28a8                    ; 9cc0: ad a8 28
	adc $a9                      ; 9cc3: 65 a9
	adc $aa                      ; 9cc5: 65 aa
	clc                          ; 9cc7: 18
	adc $ab                      ; 9cc8: 65 ab
	.db $80, $44                 ; 9cca: 80 44
loc_9ccc:
	lda $3977                    ; 9ccc: ad 77 39
	and.b #$20                   ; 9ccf: 29 20
	.db $f0, $35                 ; 9cd1: f0 35
loc_9cd3:
	lda $289d                    ; 9cd3: ad 9d 28
	lsr                          ; 9cd6: 4a
	clc                          ; 9cd7: 18
	adc $28a8                    ; 9cd8: 6d a8 28
	adc $aa                      ; 9cdb: 65 aa
	sta $bf                      ; 9cdd: 85 bf
	ldy.w #$0000                 ; 9cdf: a0 00 00
	lda ($80),y                  ; 9ce2: b1 80
	and.b #$c0                   ; 9ce4: 29 c0
	and $3978                    ; 9ce6: 2d 78 39
	.db $f0, $19                 ; 9ce9: f0 19
loc_9ceb:
	lda $bf                      ; 9ceb: a5 bf
	tax                          ; 9ced: aa
	stx $3945                    ; 9cee: 8e 45 39
	ldx.w #$0005                 ; 9cf1: a2 05 00
	stx $3947                    ; 9cf4: 8e 47 39
	jsr $8407                    ; 9cf7: 20 07 84
loc_9cfa:
	sec                          ; 9cfa: 38
	lda $bf                      ; 9cfb: a5 bf
	sbc $3949                    ; 9cfd: ed 49 39
	sta $bf                      ; 9d00: 85 bf
	.db $80, $0f                 ; 9d02: 80 0f
loc_9d04:
	lda $bf                      ; 9d04: a5 bf
	.db $80, $0b                 ; 9d06: 80 0b
loc_9d08:
	clc                          ; 9d08: 18
	lda $289d                    ; 9d09: ad 9d 28
	adc $a9                      ; 9d0c: 65 a9
	adc $aa                      ; 9d0e: 65 aa
loc_9d10:
	jsr $9e31                    ; 9d10: 20 31 9e
loc_9d13:
	ldy.w #$001d                 ; 9d13: a0 1d 00
	sta ($80),y                  ; 9d16: 91 80
	lda $28a5                    ; 9d18: ad a5 28
	ora $28b0                    ; 9d1b: 0d b0 28
	ldy.w #$001e                 ; 9d1e: a0 1e 00
	sta ($80),y                  ; 9d21: 91 80
	lda $28a6                    ; 9d23: ad a6 28
	ora $28b1                    ; 9d26: 0d b1 28
	iny                          ; 9d29: c8
	sta ($80),y                  ; 9d2a: 91 80
	ldy.w #$0041                 ; 9d2c: a0 41 00
	lda ($80),y                  ; 9d2f: b1 80
	sta $a9                      ; 9d31: 85 a9
	iny                          ; 9d33: c8
	lda ($80),y                  ; 9d34: b1 80
	sta $aa                      ; 9d36: 85 aa
	lda $3977                    ; 9d38: ad 77 39
	and.b #$c0                   ; 9d3b: 29 c0
	.db $f0, $51                 ; 9d3d: f0 51
loc_9d3f:
	eor.b #$c0                   ; 9d3f: 49 c0
	.db $f0, $4d                 ; 9d41: f0 4d
loc_9d43:
	lda $3977                    ; 9d43: ad 77 39
	and.b #$20                   ; 9d46: 29 20
	.db $f0, $22                 ; 9d48: f0 22
loc_9d4a:
	lda $a9                      ; 9d4a: a5 a9
	cmp.b #$21                   ; 9d4c: c9 21
	.db $90, $02                 ; 9d4e: 90 02
loc_9d50:
	lda.b #$21                   ; 9d50: a9 21
loc_9d52:
	sta $df                      ; 9d52: 85 df
	lda.b #$03                   ; 9d54: a9 03
	sta $e1                      ; 9d56: 85 e1
	jsr $83e0                    ; 9d58: 20 e0 83
loc_9d5b:
	lda $e3                      ; 9d5b: a5 e3
	sta $a9                      ; 9d5d: 85 a9
	clc                          ; 9d5f: 18
	lda $aa                      ; 9d60: a5 aa
	adc $28a8                    ; 9d62: 6d a8 28
	jsr $9e31                    ; 9d65: 20 31 9e
loc_9d68:
	sta $aa                      ; 9d68: 85 aa
	.db $80, $18                 ; 9d6a: 80 18
loc_9d6c:
	asl $a9                      ; 9d6c: 06 a9
	.db $90, $04                 ; 9d6e: 90 04
loc_9d70:
	lda.b #$63                   ; 9d70: a9 63
	.db $80, $02                 ; 9d72: 80 02
loc_9d74:
	lda $a9                      ; 9d74: a5 a9
loc_9d76:
	sta $a9                      ; 9d76: 85 a9
	lda $289d                    ; 9d78: ad 9d 28
	lsr                          ; 9d7b: 4a
	clc                          ; 9d7c: 18
	adc $aa                      ; 9d7d: 65 aa
	jsr $9e31                    ; 9d7f: 20 31 9e
loc_9d82:
	sta $aa                      ; 9d82: 85 aa
loc_9d84:
	ldy.w #$002d                 ; 9d84: a0 2d 00
	lda $a9                      ; 9d87: a5 a9
	sta ($80),y                  ; 9d89: 91 80
	iny                          ; 9d8b: c8
	lda $aa                      ; 9d8c: a5 aa
	sta ($80),y                  ; 9d8e: 91 80
loc_9d90:
	lda $3977                    ; 9d90: ad 77 39
	and.b #$20                   ; 9d93: 29 20
	.db $d0, $07                 ; 9d95: d0 07
loc_9d97:
	lda $289c                    ; 9d97: ad 9c 28
	and.b #$20                   ; 9d9a: 29 20
	.db $f0, $09                 ; 9d9c: f0 09
loc_9d9e:
	ldy.w #$0001                 ; 9d9e: a0 01 00
	lda ($80),y                  ; 9da1: b1 80
	ora.b #$20                   ; 9da3: 09 20
	sta ($80),y                  ; 9da5: 91 80
loc_9da7:
	rts                          ; 9da7: 60

; --- Block at $9da8-$9db4 ---
loc_9da8:
	and.b #$12                   ; 9da8: 29 12
	lsr                          ; 9daa: 4a
	sta $aa                      ; 9dab: 85 aa
	lda $a9                      ; 9dad: a5 a9
	and.b #$09                   ; 9daf: 29 09
	asl                          ; 9db1: 0a
	ora $aa                      ; 9db2: 05 aa
	rts                          ; 9db4: 60

; --- Block at $9db5-$9e07 ---
loc_9db5:
	inc $396b                    ; 9db5: ee 6b 39
	clc                          ; 9db8: 18
	lda ($82),y                  ; 9db9: b1 82
	and.b #$7f                   ; 9dbb: 29 7f
	adc $3972                    ; 9dbd: 6d 72 39
	sta $3972                    ; 9dc0: 8d 72 39
	iny                          ; 9dc3: c8
	clc                          ; 9dc4: 18
	lda ($82),y                  ; 9dc5: b1 82
	adc $396f                    ; 9dc7: 6d 6f 39
	sta $396f                    ; 9dca: 8d 6f 39
	iny                          ; 9dcd: c8
	clc                          ; 9dce: 18
	lda ($82),y                  ; 9dcf: b1 82
	and.b #$7f                   ; 9dd1: 29 7f
	adc $396c                    ; 9dd3: 6d 6c 39
	sta $396c                    ; 9dd6: 8d 6c 39
	iny                          ; 9dd9: c8
	clc                          ; 9dda: 18
	lda ($82),y                  ; 9ddb: b1 82
	adc $3973                    ; 9ddd: 6d 73 39
	sta $3973                    ; 9de0: 8d 73 39
	iny                          ; 9de3: c8
	iny                          ; 9de4: c8
	lda ($82),y                  ; 9de5: b1 82
	ora $3974                    ; 9de7: 0d 74 39
	sta $3974                    ; 9dea: 8d 74 39
	iny                          ; 9ded: c8
	iny                          ; 9dee: c8
	iny                          ; 9def: c8
	lda ($82),y                  ; 9df0: b1 82
	sta $396d                    ; 9df2: 8d 6d 39
	iny                          ; 9df5: c8
	lda ($82),y                  ; 9df6: b1 82
	ora $3970                    ; 9df8: 0d 70 39
	sta $3970                    ; 9dfb: 8d 70 39
	iny                          ; 9dfe: c8
	lda ($82),y                  ; 9dff: b1 82
	ora $3971                    ; 9e01: 0d 71 39
	sta $3971                    ; 9e04: 8d 71 39
	rts                          ; 9e07: 60

; --- Block at $9e08-$9e29 ---
loc_9e08:
	lda $3975                    ; 9e08: ad 75 39
	jsr $847e                    ; 9e0b: 20 7e 84
loc_9e0e:
	tay                          ; 9e0e: a8
	ldx $a6                      ; 9e0f: a6 a6
	lda $32db,y                  ; 9e11: b9 db 32
	sta $2033,x                  ; 9e14: 9d 33 20
	lda $32dc,y                  ; 9e17: b9 dc 32
	sta $2034,x                  ; 9e1a: 9d 34 20
	lda $32df,y                  ; 9e1d: b9 df 32
	sta $2035,x                  ; 9e20: 9d 35 20
	lda $32e0,y                  ; 9e23: b9 e0 32
	sta $2036,x                  ; 9e26: 9d 36 20
	rts                          ; 9e29: 60

; --- Block at $9e2a-$9e30 ---
loc_9e2a:
	cmp.b #$63                   ; 9e2a: c9 63
	.db $90, $02                 ; 9e2c: 90 02
loc_9e2e:
	lda.b #$63                   ; 9e2e: a9 63
loc_9e30:
	rts                          ; 9e30: 60

; --- Block at $9e31-$9e35 ---
loc_9e31:
	.db $90, $02                 ; 9e31: 90 02
loc_9e33:
	lda.b #$ff                   ; 9e33: a9 ff
loc_9e35:
	rts                          ; 9e35: 60

; --- Block at $9e36-$9e78 ---
loc_9e36:
	stz $3558                    ; 9e36: 9c 58 35
	cmp.b #$05                   ; 9e39: c9 05
	.db $90, $03                 ; 9e3b: 90 03
loc_9e3d:
	inc $3558                    ; 9e3d: ee 58 35
loc_9e40:
	jsr $8489                    ; 9e40: 20 89 84
loc_9e43:
	ldx $a6                      ; 9e43: a6 a6
	lda $2060,x                  ; 9e45: bd 60 20
	sta $a9                      ; 9e48: 85 a9
	lda $2061,x                  ; 9e4a: bd 61 20
	sta $aa                      ; 9e4d: 85 aa
	lda $203b,x                  ; 9e4f: bd 3b 20
	tay                          ; 9e52: a8
	sty $3979                    ; 9e53: 8c 79 39
	phx                          ; 9e56: da
	lda $d6                      ; 9e57: a5 d6
	asl                          ; 9e59: 0a
	tax                          ; 9e5a: aa
	lda $03a005,x                ; 9e5b: bf 05 a0 03
	sta $80                      ; 9e5f: 85 80
	lda $03a006,x                ; 9e61: bf 06 a0 03
	sta $81                      ; 9e65: 85 81
	lda.b #$03                   ; 9e67: a9 03
	sta $82                      ; 9e69: 85 82
	plx                          ; 9e6b: fa
	jml.w [$0080]                ; 9e6c: dc 80 00
	jsr $9fe2                    ; 9e6f: 20 e2 9f
loc_9e72:
	ldy $ab                      ; 9e72: a4 ab
	.db $d0, $02                 ; 9e74: d0 02
loc_9e76:
	inc $ab                      ; 9e76: e6 ab
loc_9e78:
	jmp $9fd9                    ; 9e78: 4c d9 9f

; --- Block at $9fd9-$9fe1 ---
loc_9fd9:
	ldy $ab                      ; 9fd9: a4 ab
	.db $10, $02                 ; 9fdb: 10 02
loc_9fdd:
	tdc                          ; 9fdd: 7b
	tay                          ; 9fde: a8
loc_9fdf:
	sty $d4                      ; 9fdf: 84 d4
	rts                          ; 9fe1: 60

; --- Block at $9fe2-$a004 ---
loc_9fe2:
	ldx $a9                      ; 9fe2: a6 a9
	stx $393d                    ; 9fe4: 8e 3d 39
	ldx $3979                    ; 9fe7: ae 79 39
	stx $393f                    ; 9fea: 8e 3f 39
	jsr $83b9                    ; 9fed: 20 b9 83
loc_9ff0:
	ldx $3941                    ; 9ff0: ae 41 39
	stx $3945                    ; 9ff3: 8e 45 39
	ldx.w #$0010                 ; 9ff6: a2 10 00
	stx $3947                    ; 9ff9: 8e 47 39
	jsr $8407                    ; 9ffc: 20 07 84
loc_9fff:
	ldx $3949                    ; 9fff: ae 49 39
	stx $ab                      ; a002: 86 ab
	rts                          ; a004: 60

; --- Block at $a01f-$a058 ---
loc_a01f:
	lda.w $00a8                  ; a01f: ad a8 00
	.db $d0, $63                 ; a022: d0 63
loc_a024:
	ldx.w #$0004                 ; a024: a2 04 00
	stx $a9                      ; a027: 86 a9
	ldx $a9                      ; a029: a6 a9
	lda $3540,x                  ; a02b: bd 40 35
	.db $d0, $13                 ; a02e: d0 13
loc_a030:
	lda $a9                      ; a030: a5 a9
	jsr $8489                    ; a032: 20 89 84
loc_a035:
	ldx $a6                      ; a035: a6 a6
	lda $2003,x                  ; a037: bd 03 20
	and.b #$c0                   ; a03a: 29 c0
	.db $d0, $05                 ; a03c: d0 05
loc_a03e:
	lda $2005,x                  ; a03e: bd 05 20
	.db $10, $18                 ; a041: 10 18
loc_a043:
	dec $a9                      ; a043: c6 a9
	lda $a9                      ; a045: a5 a9
	.db $10, $e0                 ; a047: 10 e0
loc_a049:
	lda $38e5                    ; a049: ad e5 38
	and.b #$02                   ; a04c: 29 02
	.db $f0, $04                 ; a04e: f0 04
loc_a050:
	lda.b #$08                   ; a050: a9 08
	.db $80, $02                 ; a052: 80 02
loc_a054:
	lda.b #$80                   ; a054: a9 80
loc_a056:
	sta $a8                      ; a056: 85 a8
	jmp $a100                    ; a058: 4c 00 a1

; --- Block at $a05b-$a082 ---
loc_a05b:
	lda $29cd                    ; a05b: ad cd 29
	.db $d0, $28                 ; a05e: d0 28
loc_a060:
	lda.b #$30                   ; a060: a9 30
	sta $a8                      ; a062: 85 a8
	tdc                          ; a064: 7b
	tax                          ; a065: aa
	lda $13fd00,x                ; a066: bf 00 fd 13
	cmp.b #$ff                   ; a06a: c9 ff
	.db $f0, $19                 ; a06c: f0 19
loc_a06e:
	cmp $1800                    ; a06e: cd 00 18
	.db $d0, $10                 ; a071: d0 10
loc_a073:
	lda $13fd01,x                ; a073: bf 01 fd 13
	cmp $1801                    ; a077: cd 01 18
	.db $d0, $07                 ; a07a: d0 07
loc_a07c:
	lda $a8                      ; a07c: a5 a8
	and.b #$ef                   ; a07e: 29 ef
	sta $a8                      ; a080: 85 a8
	rts                          ; a082: 60

; --- Block at $a083-$a087 ---
loc_a083:
	inx                          ; a083: e8
	inx                          ; a084: e8
	.db $80, $df                 ; a085: 80 df

; --- Block at $a087-$a087 ---
loc_a087:
	rts                          ; a087: 60

; --- Block at $a088-$a0df ---
loc_a088:
	lda $388b                    ; a088: ad 8b 38
	.db $d0, $73                 ; a08b: d0 73
loc_a08d:
	lda $38d3                    ; a08d: ad d3 38
	.db $d0, $05                 ; a090: d0 05
loc_a092:
	lda $352d                    ; a092: ad 2d 35
	.db $f0, $69                 ; a095: f0 69
loc_a097:
	lda $38d6                    ; a097: ad d6 38
	cmp.b #$ff                   ; a09a: c9 ff
	.db $f0, $62                 ; a09c: f0 62
loc_a09e:
	lda $38d6                    ; a09e: ad d6 38
	.db $f0, $0a                 ; a0a1: f0 0a
loc_a0a3:
	lda $38f3                    ; a0a3: ad f3 38
	.db $d0, $05                 ; a0a6: d0 05
loc_a0a8:
	dec $38d6                    ; a0a8: ce d6 38
	.db $80, $53                 ; a0ab: 80 53
loc_a0ad:
	lda $38e5                    ; a0ad: ad e5 38
	and.b #$01                   ; a0b0: 29 01
	.db $d0, $34                 ; a0b2: d0 34
loc_a0b4:
	tdc                          ; a0b4: 7b
	tax                          ; a0b5: aa
	stx $a9                      ; a0b6: 86 a9
	ldx $a9                      ; a0b8: a6 a9
	lda $3540,x                  ; a0ba: bd 40 35
	.db $d0, $21                 ; a0bd: d0 21
loc_a0bf:
	lda $a9                      ; a0bf: a5 a9
	jsr $8489                    ; a0c1: 20 89 84
loc_a0c4:
	ldx $a6                      ; a0c4: a6 a6
	lda $2003,x                  ; a0c6: bd 03 20
	and.b #$c0                   ; a0c9: 29 c0
	.db $d0, $13                 ; a0cb: d0 13
loc_a0cd:
	lda $2004,x                  ; a0cd: bd 04 20
	and.b #$30                   ; a0d0: 29 30
	.db $d0, $0c                 ; a0d2: d0 0c
loc_a0d4:
	lda $2005,x                  ; a0d4: bd 05 20
	and.b #$c2                   ; a0d7: 29 c2
	.db $d0, $05                 ; a0d9: d0 05
loc_a0db:
	lda.b #$40                   ; a0db: a9 40
	sta $a8                      ; a0dd: 85 a8
	rts                          ; a0df: 60

; --- Block at $a0e0-$a0e8 ---
loc_a0e0:
	inc $a9                      ; a0e0: e6 a9
	lda $a9                      ; a0e2: a5 a9
	cmp.b #$05                   ; a0e4: c9 05
	.db $d0, $d0                 ; a0e6: d0 d0

; --- Block at $a0e8-$a100 ---
loc_a0e8:
	stz $352d                    ; a0e8: 9c 2d 35
	jsr $859b                    ; a0eb: 20 9b 85
loc_a0ee:
	lda.b #$ff                   ; a0ee: a9 ff
	sta $33c4                    ; a0f0: 8d c4 33
	lda.b #$22                   ; a0f3: a9 22
	sta $34ca                    ; a0f5: 8d ca 34
	lda.b #$05                   ; a0f8: a9 05
	jsr $8085                    ; a0fa: 20 85 80
loc_a0fd:
	jsr $b30d                    ; a0fd: 20 0d b3

; --- Block at $a100-$a100 ---
loc_a100:
	rts                          ; a100: 60

; --- Block at $a101-$a161 ---
loc_a101:
	stz $a9                      ; a101: 64 a9
	stz $aa                      ; a103: 64 aa
	lda $1822                    ; a105: ad 22 18
	jsr $8489                    ; a108: 20 89 84
loc_a10b:
	ldx $a6                      ; a10b: a6 a6
	lda $2001,x                  ; a10d: bd 01 20
	and.b #$0f                   ; a110: 29 0f
	tay                          ; a112: a8
	iny                          ; a113: c8
	sec                          ; a114: 38
	rol $a9                      ; a115: 26 a9
	rol $aa                      ; a117: 26 aa
	dey                          ; a119: 88
	.db $d0, $f9                 ; a11a: d0 f9
loc_a11c:
	tdc                          ; a11c: 7b
	tax                          ; a11d: aa
	stx $af                      ; a11e: 86 af
	ldx $af                      ; a120: a6 af
	lda $321b,x                  ; a122: bd 1b 32
	.db $f0, $2f                 ; a125: f0 2f
loc_a127:
	cmp.b #$c8                   ; a127: c9 c8
	.db $d0, $0d                 ; a129: d0 0d
loc_a12b:
	ldx $a6                      ; a12b: a6 a6
	lda $2000,x                  ; a12d: bd 00 20
	and.b #$1f                   ; a130: 29 1f
	cmp.b #$0b                   ; a132: c9 0b
	.db $d0, $0a                 ; a134: d0 0a
loc_a136:
	.db $f0, $14                 ; a136: f0 14
loc_a138:
	jsr $a162                    ; a138: 20 62 a1
loc_a13b:
	lda $353d                    ; a13b: ad 3d 35
	.db $f0, $0c                 ; a13e: f0 0c
loc_a140:
	ldx $af                      ; a140: a6 af
	lda $321a,x                  ; a142: bd 1a 32
	ora.b #$80                   ; a145: 09 80
	sta $321a,x                  ; a147: 9d 1a 32
	.db $80, $0a                 ; a14a: 80 0a
loc_a14c:
	ldx $af                      ; a14c: a6 af
	lda $321a,x                  ; a14e: bd 1a 32
	and.b #$7f                   ; a151: 29 7f
	sta $321a,x                  ; a153: 9d 1a 32
loc_a156:
	clc                          ; a156: 18
	lda $af                      ; a157: a5 af
	adc.b #$04                   ; a159: 69 04
	sta $af                      ; a15b: 85 af
	cmp.b #$c0                   ; a15d: c9 c0
	.db $d0, $bf                 ; a15f: d0 bf
loc_a161:
	rts                          ; a161: 60

; --- Block at $a162-$a1a9 ---
loc_a162:
	stz $353d                    ; a162: 9c 3d 35
	cmp.b #$6d                   ; a165: c9 6d
	.db $90, $0a                 ; a167: 90 0a
loc_a169:
	cmp.b #$de                   ; a169: c9 de
	.db $b0, $34                 ; a16b: b0 34
loc_a16d:
	cmp.b #$b0                   ; a16d: c9 b0
	.db $90, $30                 ; a16f: 90 30
loc_a171:
	.db $b0, $31                 ; a171: b0 31
loc_a173:
	tax                          ; a173: aa
	stx $e5                      ; a174: 86 e5
	ldx.w #$9100                 ; a176: a2 00 91
	stx $80                      ; a179: 86 80
	lda.b #$0f                   ; a17b: a9 0f
	sta $82                      ; a17d: 85 82
	lda.b #$08                   ; a17f: a9 08
	jsr $845e                    ; a181: 20 5e 84
loc_a184:
	lda $28a2                    ; a184: ad a2 28
	and.b #$1f                   ; a187: 29 1f
	asl                          ; a189: 0a
	tax                          ; a18a: aa
	lda $0fa550,x                ; a18b: bf 50 a5 0f
	sta $ab                      ; a18f: 85 ab
	lda $0fa551,x                ; a191: bf 51 a5 0f
	sta $ac                      ; a195: 85 ac
	rep #$20                     ; a197: c2 20
	lda $ab                      ; a199: a5 ab
	and $a9                      ; a19b: 25 a9
	sep #$20                     ; a19d: e2 20
	.db $d0, $03                 ; a19f: d0 03
loc_a1a1:
	inc $353d                    ; a1a1: ee 3d 35
loc_a1a4:
	rep #$20                     ; a1a4: c2 20
	tdc                          ; a1a6: 7b
	sep #$20                     ; a1a7: e2 20
	rts                          ; a1a9: 60

; --- Block at $a1aa-$a27a ---
loc_a1aa:
	stz $a9                      ; a1aa: 64 a9
	stz $aa                      ; a1ac: 64 aa
	stz $ab                      ; a1ae: 64 ab
	stz $ac                      ; a1b0: 64 ac
	ldx $a6                      ; a1b2: a6 a6
	lda $2003,x                  ; a1b4: bd 03 20
	and.b #$04                   ; a1b7: 29 04
	.db $f0, $04                 ; a1b9: f0 04
loc_a1bb:
	lda.b #$80                   ; a1bb: a9 80
	sta $a9                      ; a1bd: 85 a9
loc_a1bf:
	lda $2003,x                  ; a1bf: bd 03 20
	and.b #$20                   ; a1c2: 29 20
	.db $f0, $04                 ; a1c4: f0 04
loc_a1c6:
	lda.b #$80                   ; a1c6: a9 80
	sta $ab                      ; a1c8: 85 ab
loc_a1ca:
	lda $2003,x                  ; a1ca: bd 03 20
	and.b #$08                   ; a1cd: 29 08
	.db $f0, $04                 ; a1cf: f0 04
loc_a1d1:
	lda.b #$80                   ; a1d1: a9 80
	sta $ac                      ; a1d3: 85 ac
loc_a1d5:
	lda $200b,x                  ; a1d5: bd 0b 20
	sta $ad                      ; a1d8: 85 ad
	lda $200c,x                  ; a1da: bd 0c 20
	.db $f0, $04                 ; a1dd: f0 04
loc_a1df:
	lda.b #$ff                   ; a1df: a9 ff
	sta $ad                      ; a1e1: 85 ad
loc_a1e3:
	ldx $a6                      ; a1e3: a6 a6
	lda $2006,x                  ; a1e5: bd 06 20
	.db $30, $17                 ; a1e8: 30 17
loc_a1ea:
	ldy.w #$0005                 ; a1ea: a0 05 00
	ldx $3534                    ; a1ed: ae 34 35
	lda $3303,x                  ; a1f0: bd 03 33
	cmp.b #$ff                   ; a1f3: c9 ff
	.db $f0, $03                 ; a1f5: f0 03
loc_a1f7:
	jsr $a288                    ; a1f7: 20 88 a2
loc_a1fa:
	inx                          ; a1fa: e8
	inx                          ; a1fb: e8
	inx                          ; a1fc: e8
	inx                          ; a1fd: e8
	dey                          ; a1fe: 88
	.db $d0, $ef                 ; a1ff: d0 ef
loc_a201:
	lda $aa                      ; a201: a5 aa
	.db $f0, $0a                 ; a203: f0 0a
loc_a205:
	lda $1822                    ; a205: ad 22 18
	sta $00                      ; a208: 85 00
	lda.b #$09                   ; a20a: a9 09
	jsr $8085                    ; a20c: 20 85 80
loc_a20f:
	ldx $3536                    ; a20f: ae 36 35
	stx $af                      ; a212: 86 af
	tdc                          ; a214: 7b
	tax                          ; a215: aa
	stx $b1                      ; a216: 86 b1
	ldx $af                      ; a218: a6 af
	lda $2c7b,x                  ; a21a: bd 7b 2c
	.db $f0, $4b                 ; a21d: f0 4b
loc_a21f:
	lda $2c7a,x                  ; a21f: bd 7a 2c
	and.b #$7f                   ; a222: 29 7f
	ora $a9                      ; a224: 05 a9
	ora $ab                      ; a226: 05 ab
	ora $ac                      ; a228: 05 ac
	sta $2c7a,x                  ; a22a: 9d 7a 2c
	lda $a9                      ; a22d: a5 a9
	.db $d0, $28                 ; a22f: d0 28
loc_a231:
	lda $ab                      ; a231: a5 ab
	.db $10, $11                 ; a233: 10 11
loc_a235:
	lda $2c7b,x                  ; a235: bd 7b 2c
	cmp.b #$19                   ; a238: c9 19
	.db $d0, $1d                 ; a23a: d0 1d
loc_a23c:
	lda $2c7a,x                  ; a23c: bd 7a 2c
	and.b #$7f                   ; a23f: 29 7f
	sta $2c7a,x                  ; a241: 9d 7a 2c
	.db $80, $13                 ; a244: 80 13
loc_a246:
	lda $ac                      ; a246: a5 ac
	.db $10, $0f                 ; a248: 10 0f
loc_a24a:
	lda $2c7b,x                  ; a24a: bd 7b 2c
	cmp.b #$1a                   ; a24d: c9 1a
	.db $d0, $08                 ; a24f: d0 08
loc_a251:
	lda $2c7a,x                  ; a251: bd 7a 2c
	and.b #$7f                   ; a254: 29 7f
	sta $2c7a,x                  ; a256: 9d 7a 2c
loc_a259:
	lda $2c7d,x                  ; a259: bd 7d 2c
	cmp $ad                      ; a25c: c5 ad
	.db $f0, $0a                 ; a25e: f0 0a
loc_a260:
	.db $90, $08                 ; a260: 90 08
loc_a262:
	lda $2c7a,x                  ; a262: bd 7a 2c
	ora.b #$80                   ; a265: 09 80
	sta $2c7a,x                  ; a267: 9d 7a 2c
loc_a26a:
	ldx $af                      ; a26a: a6 af
	inx                          ; a26c: e8
	inx                          ; a26d: e8
	inx                          ; a26e: e8
	inx                          ; a26f: e8
	stx $af                      ; a270: 86 af
	inc $b1                      ; a272: e6 b1
	lda $b1                      ; a274: a5 b1
	cmp.b #$48                   ; a276: c9 48
	.db $f0, $03                 ; a278: f0 03
loc_a27a:
	jmp $a218                    ; a27a: 4c 18 a2

; --- Block at $a27d-$a287 ---
loc_a27d:
	lda $1822                    ; a27d: ad 22 18
	sta $00                      ; a280: 85 00
	lda.b #$0e                   ; a282: a9 0e
	jsr $8085                    ; a284: 20 85 80
loc_a287:
	rts                          ; a287: 60

; --- Block at $a288-$a2e2 ---
loc_a288:
	stz $b5                      ; a288: 64 b5
	phx                          ; a28a: da
	lda $3303,x                  ; a28b: bd 03 33
	cmp.b #$05                   ; a28e: c9 05
	.db $f0, $0c                 ; a290: f0 0c
loc_a292:
	cmp.b #$08                   ; a292: c9 08
	.db $f0, $08                 ; a294: f0 08
loc_a296:
	cmp.b #$0c                   ; a296: c9 0c
	.db $f0, $04                 ; a298: f0 04
loc_a29a:
	cmp.b #$10                   ; a29a: c9 10
	.db $d0, $07                 ; a29c: d0 07
loc_a29e:
	jsr $a2e3                    ; a29e: 20 e3 a2
loc_a2a1:
	lda $b3                      ; a2a1: a5 b3
	.db $d0, $23                 ; a2a3: d0 23
loc_a2a5:
	plx                          ; a2a5: fa
	phx                          ; a2a6: da
	lda $3303,x                  ; a2a7: bd 03 33
	asl                          ; a2aa: 0a
	tax                          ; a2ab: aa
	lda $13fd19,x                ; a2ac: bf 19 fd 13
	sta $b3                      ; a2b0: 85 b3
	lda $13fd1a,x                ; a2b2: bf 1a fd 13
	sta $b4                      ; a2b6: 85 b4
	ldx $a6                      ; a2b8: a6 a6
	lda $2003,x                  ; a2ba: bd 03 20
	and $b3                      ; a2bd: 25 b3
	.db $d0, $07                 ; a2bf: d0 07
loc_a2c1:
	lda $2004,x                  ; a2c1: bd 04 20
	and $b4                      ; a2c4: 25 b4
	.db $f0, $04                 ; a2c6: f0 04
loc_a2c8:
	lda.b #$80                   ; a2c8: a9 80
	sta $b5                      ; a2ca: 85 b5
loc_a2cc:
	plx                          ; a2cc: fa
	lda $3302,x                  ; a2cd: bd 02 33
	pha                          ; a2d0: 48
	and.b #$7f                   ; a2d1: 29 7f
	ora $b5                      ; a2d3: 05 b5
	sta $3302,x                  ; a2d5: 9d 02 33
	pla                          ; a2d8: 68
	cmp $3302,x                  ; a2d9: dd 02 33
	.db $f0, $04                 ; a2dc: f0 04
loc_a2de:
	lda.b #$01                   ; a2de: a9 01
	sta $aa                      ; a2e0: 85 aa
loc_a2e2:
	rts                          ; a2e2: 60

; --- Block at $a2e3-$a2fc ---
loc_a2e3:
	ldx $a6                      ; a2e3: a6 a6
	stz $b3                      ; a2e5: 64 b3
	cmp.b #$08                   ; a2e7: c9 08
	.db $f0, $1e                 ; a2e9: f0 1e
loc_a2eb:
	cmp.b #$0c                   ; a2eb: c9 0c
	.db $f0, $36                 ; a2ed: f0 36
loc_a2ef:
	cmp.b #$10                   ; a2ef: c9 10
	.db $f0, $46                 ; a2f1: f0 46
loc_a2f3:
	lda $2033,x                  ; a2f3: bd 33 20
	.db $f0, $07                 ; a2f6: f0 07
loc_a2f8:
	cmp.b #$61                   ; a2f8: c9 61
	.db $b0, $03                 ; a2fa: b0 03
loc_a2fc:
	jmp $a37a                    ; a2fc: 4c 7a a3

; --- Block at $a2ff-$a308 ---
loc_a2ff:
	lda $2035,x                  ; a2ff: bd 35 20
	.db $f0, $74                 ; a302: f0 74
loc_a304:
	cmp.b #$61                   ; a304: c9 61
	.db $b0, $70                 ; a306: b0 70
loc_a308:
	rts                          ; a308: 60

; --- Block at $a309-$a316 ---
loc_a309:
	lda $2033,x                  ; a309: bd 33 20
	.db $f0, $09                 ; a30c: f0 09
loc_a30e:
	cmp.b #$44                   ; a30e: c9 44
	.db $90, $66                 ; a310: 90 66
loc_a312:
	cmp.b #$4d                   ; a312: c9 4d
	.db $b0, $62                 ; a314: b0 62
loc_a316:
	rts                          ; a316: 60

; --- Block at $a317-$a324 ---
loc_a317:
	lda $2035,x                  ; a317: bd 35 20
	.db $f0, $5c                 ; a31a: f0 5c
loc_a31c:
	cmp.b #$44                   ; a31c: c9 44
	.db $90, $58                 ; a31e: 90 58
loc_a320:
	cmp.b #$4d                   ; a320: c9 4d
	.db $b0, $54                 ; a322: b0 54
loc_a324:
	rts                          ; a324: 60

; --- Block at $a325-$a37a ---
loc_a325:
	lda $2033,x                  ; a325: bd 33 20
	.db $f0, $4e                 ; a328: f0 4e
loc_a32a:
	cmp.b #$4d                   ; a32a: c9 4d
	.db $90, $4a                 ; a32c: 90 4a
loc_a32e:
	cmp.b #$61                   ; a32e: c9 61
	.db $b0, $46                 ; a330: b0 46
loc_a332:
	lda $2035,x                  ; a332: bd 35 20
	.db $f0, $41                 ; a335: f0 41
loc_a337:
	.db $d0, $41                 ; a337: d0 41
loc_a339:
	phx                          ; a339: da
	ldx $3536                    ; a33a: ae 36 35
	phx                          ; a33d: da
	ldx $a6                      ; a33e: a6 a6
	lda $2003,x                  ; a340: bd 03 20
	and.b #$3c                   ; a343: 29 3c
	.db $d0, $2a                 ; a345: d0 2a
loc_a347:
	ldx.w #$0001                 ; a347: a2 01 00
	lda $d0                      ; a34a: a5 d0
	cmp $3539                    ; a34c: cd 39 35
	.db $f0, $01                 ; a34f: f0 01
loc_a351:
	dex                          ; a351: ca
loc_a352:
	lda $3539,x                  ; a352: bd 39 35
	jsr $8489                    ; a355: 20 89 84
loc_a358:
	ldx $a6                      ; a358: a6 a6
	lda $2003,x                  ; a35a: bd 03 20
	and.b #$fc                   ; a35d: 29 fc
	.db $d0, $10                 ; a35f: d0 10
loc_a361:
	lda $2004,x                  ; a361: bd 04 20
	and.b #$3c                   ; a364: 29 3c
	.db $d0, $09                 ; a366: d0 09
loc_a368:
	lda $2005,x                  ; a368: bd 05 20
	and.b #$40                   ; a36b: 29 40
	.db $d0, $02                 ; a36d: d0 02
loc_a36f:
	dec $b3                      ; a36f: c6 b3
loc_a371:
	plx                          ; a371: fa
	stx $3536                    ; a372: 8e 36 35
	plx                          ; a375: fa
	stx $a6                      ; a376: 86 a6
loc_a378:
	inc $b3                      ; a378: e6 b3
loc_a37a:
	rts                          ; a37a: 60

; --- Block at $a3ed-$a442 ---
loc_a3ed:
	lda $d7                      ; a3ed: a5 d7
	.db $f0, $52                 ; a3ef: f0 52
loc_a3f1:
	lda $d0                      ; a3f1: a5 d0
	cmp.b #$ff                   ; a3f3: c9 ff
	.db $f0, $4b                 ; a3f5: f0 4b
loc_a3f7:
	jsr $a59d                    ; a3f7: 20 9d a5
loc_a3fa:
	lda $d0                      ; a3fa: a5 d0
	cmp.b #$ff                   ; a3fc: c9 ff
	.db $f0, $39                 ; a3fe: f0 39
loc_a400:
	ldx $a6                      ; a400: a6 a6
	lda $2000,x                  ; a402: bd 00 20
	and.b #$1f                   ; a405: 29 1f
	cmp.b #$05                   ; a407: c9 05
	.db $d0, $14                 ; a409: d0 14
loc_a40b:
	lda $3582                    ; a40b: ad 82 35
	.db $d0, $0f                 ; a40e: d0 0f
loc_a410:
	lda $38db                    ; a410: ad db 38
	dec                          ; a413: 3a
	.db $f0, $09                 ; a414: f0 09
loc_a416:
	lda $2006,x                  ; a416: bd 06 20
	.db $30, $04                 ; a419: 30 04
loc_a41b:
	and.b #$01                   ; a41b: 29 01
	.db $d0, $1a                 ; a41d: d0 1a
loc_a41f:
	jsr $a1aa                    ; a41f: 20 aa a1
loc_a422:
	lda $d0                      ; a422: a5 d0
	jsr $847e                    ; a424: 20 7e 84
loc_a427:
	tax                          ; a427: aa
	lda $32db,x                  ; a428: bd db 32
	cmp.b #$4c                   ; a42b: c9 4c
	.db $f0, $07                 ; a42d: f0 07
loc_a42f:
	lda $32df,x                  ; a42f: bd df 32
	cmp.b #$4c                   ; a432: c9 4c
	.db $d0, $0c                 ; a434: d0 0c
loc_a436:
	jsr $a4d8                    ; a436: 20 d8 a4
loc_a439:
	lda.b #$ff                   ; a439: a9 ff
	sta $d0                      ; a43b: 85 d0
	lda.b #$01                   ; a43d: a9 01
	jsr $8085                    ; a43f: 20 85 80
loc_a442:
	rts                          ; a442: 60

; --- Block at $a443-$a46c ---
loc_a443:
	lda $d0                      ; a443: a5 d0
	cmp.b #$ff                   ; a445: c9 ff
	.db $f0, $24                 ; a447: f0 24
loc_a449:
	jsr $a59d                    ; a449: 20 9d a5
loc_a44c:
	lda $d0                      ; a44c: a5 d0
	cmp.b #$ff                   ; a44e: c9 ff
	.db $f0, $1a                 ; a450: f0 1a
loc_a452:
	lda $388b                    ; a452: ad 8b 38
	.db $f0, $03                 ; a455: f0 03
loc_a457:
	jsr $a4e9                    ; a457: 20 e9 a4
loc_a45a:
	ldx.w #$0005                 ; a45a: a2 05 00
	lda $d7,x                    ; a45d: b5 d7
	sta $3937,x                  ; a45f: 9d 37 39
	dex                          ; a462: ca
	.db $10, $f8                 ; a463: 10 f8
loc_a465:
	jsr $a5c2                    ; a465: 20 c2 a5
loc_a468:
	lda.b #$ff                   ; a468: a9 ff
	sta $d0                      ; a46a: 85 d0
loc_a46c:
	rts                          ; a46c: 60

; --- Block at $a46d-$a4c8 ---
loc_a46d:
	lda $352d                    ; a46d: ad 2d 35
	.db $d0, $65                 ; a470: d0 65
loc_a472:
	lda $3929                    ; a472: ad 29 39
	cmp.b #$ff                   ; a475: c9 ff
	.db $f0, $5e                 ; a477: f0 5e
loc_a479:
	pha                          ; a479: 48
	tdc                          ; a47a: 7b
	tax                          ; a47b: aa
	lda $392a,x                  ; a47c: bd 2a 39
	sta $3929,x                  ; a47f: 9d 29 39
	inx                          ; a482: e8
	cpx.w #$0005                 ; a483: e0 05 00
	.db $d0, $f4                 ; a486: d0 f4
loc_a488:
	dec $392f                    ; a488: ce 2f 39
	pla                          ; a48b: 68
	sta $1822                    ; a48c: 8d 22 18
	sta $d0                      ; a48f: 85 d0
	jsr $a82b                    ; a491: 20 2b a8
loc_a494:
	jsr $a59d                    ; a494: 20 9d a5
loc_a497:
	lda $d0                      ; a497: a5 d0
	cmp.b #$ff                   ; a499: c9 ff
	.db $f0, $3a                 ; a49b: f0 3a
loc_a49d:
	jsr $a101                    ; a49d: 20 01 a1
loc_a4a0:
	jsr $a1aa                    ; a4a0: 20 aa a1
loc_a4a3:
	ldx $a6                      ; a4a3: a6 a6
	lda $2005,x                  ; a4a5: bd 05 20
	and.b #$ef                   ; a4a8: 29 ef
	sta $2005,x                  ; a4aa: 9d 05 20
	lda $357b                    ; a4ad: ad 7b 35
	cmp $d0                      ; a4b0: c5 d0
	.db $d0, $06                 ; a4b2: d0 06
loc_a4b4:
	lda.b #$ff                   ; a4b4: a9 ff
	sta $d0                      ; a4b6: 85 d0
	.db $80, $1d                 ; a4b8: 80 1d
loc_a4ba:
	lda $2033,x                  ; a4ba: bd 33 20
	cmp.b #$4c                   ; a4bd: c9 4c
	.db $f0, $07                 ; a4bf: f0 07
loc_a4c1:
	lda $2035,x                  ; a4c1: bd 35 20
	cmp.b #$4c                   ; a4c4: c9 4c
	.db $d0, $03                 ; a4c6: d0 03
loc_a4c8:
	jmp $a4d8                    ; a4c8: 4c d8 a4

; --- Block at $a4cb-$a4d2 ---
loc_a4cb:
	lda $388b                    ; a4cb: ad 8b 38
	.db $f0, $03                 ; a4ce: f0 03
loc_a4d0:
	stz $d7                      ; a4d0: 64 d7
	rts                          ; a4d2: 60

; --- Block at $a4d3-$a4d7 ---
loc_a4d3:
	tdc                          ; a4d3: 7b
	jsr $8085                    ; a4d4: 20 85 80

; --- Block at $a4d7-$a4d7 ---
loc_a4d7:
	rts                          ; a4d7: 60

; --- Block at $a4d8-$a4e8 ---
loc_a4d8:
	ldx $a6                      ; a4d8: a6 a6
	lda $2004,x                  ; a4da: bd 04 20
	ora.b #$04                   ; a4dd: 09 04
	sta $2004,x                  ; a4df: 9d 04 20
	lda $d0                      ; a4e2: a5 d0
	tax                          ; a4e4: aa
	stz $3560,x                  ; a4e5: 9e 60 35
	rts                          ; a4e8: 60

; --- Block at $a4e9-$a59c ---
loc_a4e9:
	lda $38e8                    ; a4e9: ad e8 38
	.db $d0, $fb                 ; a4ec: d0 fb
loc_a4ee:
	stz $db                      ; a4ee: 64 db
	stz $d9                      ; a4f0: 64 d9
	lda $d0                      ; a4f2: a5 d0
	sta $38e9                    ; a4f4: 8d e9 38
	jsr $8489                    ; a4f7: 20 89 84
loc_a4fa:
	ldx $a6                      ; a4fa: a6 a6
	lda $2000,x                  ; a4fc: bd 00 20
	and.b #$1f                   ; a4ff: 29 1f
	cmp.b #$15                   ; a501: c9 15
	.db $d0, $1d                 ; a503: d0 1d
loc_a505:
	lda $38a9                    ; a505: ad a9 38
	asl                          ; a508: 0a
	tax                          ; a509: aa
	lda $389a,x                  ; a50a: bd 9a 38
	cmp.b #$ff                   ; a50d: c9 ff
	.db $f0, $0c                 ; a50f: f0 0c
loc_a511:
	sta $a9                      ; a511: 85 a9
	lda $389b,x                  ; a513: bd 9b 38
	sta $aa                      ; a516: 85 aa
	inc $38a9                    ; a518: ee a9 38
	.db $80, $22                 ; a51b: 80 22
loc_a51d:
	stz $38a9                    ; a51d: 9c a9 38
	.db $80, $e3                 ; a520: 80 e3
loc_a522:
	lda $38a8                    ; a522: ad a8 38
	asl                          ; a525: 0a
	tax                          ; a526: aa
	lda $388c,x                  ; a527: bd 8c 38
	cmp.b #$ff                   ; a52a: c9 ff
	.db $f0, $0c                 ; a52c: f0 0c
loc_a52e:
	sta $a9                      ; a52e: 85 a9
	lda $388d,x                  ; a530: bd 8d 38
	sta $aa                      ; a533: 85 aa
	inc $38a8                    ; a535: ee a8 38
	.db $80, $05                 ; a538: 80 05
loc_a53a:
	stz $38a8                    ; a53a: 9c a8 38
	.db $80, $e3                 ; a53d: 80 e3
loc_a53f:
	lda $a9                      ; a53f: a5 a9
	cmp.b #$c0                   ; a541: c9 c0
	.db $90, $31                 ; a543: 90 31
loc_a545:
	sec                          ; a545: 38
	sbc.b #$c0                   ; a546: e9 c0
	sta $dc                      ; a548: 85 dc
	sta $38ea                    ; a54a: 8d ea 38
	lda $a9                      ; a54d: a5 a9
	cmp.b #$ce                   ; a54f: c9 ce
	.db $d0, $06                 ; a551: d0 06
loc_a553:
	lda.b #$ff                   ; a553: a9 ff
	sta $da                      ; a555: 85 da
	.db $80, $17                 ; a557: 80 17
loc_a559:
	jsr $8579                    ; a559: 20 79 85
loc_a55c:
	sta $a9                      ; a55c: 85 a9
	clc                          ; a55e: 18
	adc.b #$05                   ; a55f: 69 05
	tax                          ; a561: aa
	lda $3540,x                  ; a562: bd 40 35
	.db $d0, $f2                 ; a565: d0 f2
loc_a567:
	lda $a9                      ; a567: a5 a9
	tax                          ; a569: aa
	tdc                          ; a56a: 7b
	jsr $855f                    ; a56b: 20 5f 85
loc_a56e:
	sta $da                      ; a56e: 85 da
loc_a570:
	lda.b #$80                   ; a570: a9 80
	sta $d8                      ; a572: 85 d8
	.db $80, $23                 ; a574: 80 23
loc_a576:
	cmp.b #$01                   ; a576: c9 01
	.db $f0, $13                 ; a578: f0 13
loc_a57a:
	lda.b #$02                   ; a57a: a9 02
	sta $38ea                    ; a57c: 8d ea 38
	lda $aa                      ; a57f: a5 aa
	sta $dc                      ; a581: 85 dc
	lda.b #$20                   ; a583: a9 20
	sta $d8                      ; a585: 85 d8
	lda.b #$ff                   ; a587: a9 ff
	sta $da                      ; a589: 85 da
	.db $80, $0c                 ; a58b: 80 0c
loc_a58d:
	lda $aa                      ; a58d: a5 aa
	sta $dc                      ; a58f: 85 dc
	lda.b #$40                   ; a591: a9 40
	sta $d8                      ; a593: 85 d8
	lda.b #$ff                   ; a595: a9 ff
	sta $da                      ; a597: 85 da
loc_a599:
	inc $38e8                    ; a599: ee e8 38
	rts                          ; a59c: 60

; --- Block at $a59d-$a5c1 ---
loc_a59d:
	lda $d0                      ; a59d: a5 d0
	cmp.b #$ff                   ; a59f: c9 ff
	.db $f0, $1a                 ; a5a1: f0 1a
loc_a5a3:
	jsr $8489                    ; a5a3: 20 89 84
loc_a5a6:
	ldx $a6                      ; a5a6: a6 a6
	lda $2003,x                  ; a5a8: bd 03 20
	and.b #$c0                   ; a5ab: 29 c0
	.db $d0, $0e                 ; a5ad: d0 0e
loc_a5af:
	lda $2004,x                  ; a5af: bd 04 20
	and.b #$3c                   ; a5b2: 29 3c
	.db $d0, $07                 ; a5b4: d0 07
loc_a5b6:
	lda $2005,x                  ; a5b6: bd 05 20
	and.b #$c6                   ; a5b9: 29 c6
	.db $f0, $04                 ; a5bb: f0 04
loc_a5bd:
	lda.b #$ff                   ; a5bd: a9 ff
	sta $d0                      ; a5bf: 85 d0
loc_a5c1:
	rts                          ; a5c1: 60

; --- Block at $a5c2-$a66e ---
loc_a5c2:
	lda $d0                      ; a5c2: a5 d0
	sta $3975                    ; a5c4: 8d 75 39
	jsr $8489                    ; a5c7: 20 89 84
loc_a5ca:
	lda $352b                    ; a5ca: ad 2b 35
	.db $f0, $0c                 ; a5cd: f0 0c
loc_a5cf:
	jsr $9e08                    ; a5cf: 20 08 9e
loc_a5d2:
	jsr $8ed6                    ; a5d2: 20 d6 8e
loc_a5d5:
	jsr $9841                    ; a5d5: 20 41 98
loc_a5d8:
	stz $352b                    ; a5d8: 9c 2b 35
loc_a5db:
	lda $393a                    ; a5db: ad 3a 39
	ora $393b                    ; a5de: 0d 3b 39
	.db $d0, $0a                 ; a5e1: d0 0a
loc_a5e3:
	lda $d0                      ; a5e3: a5 d0
	tax                          ; a5e5: aa
	tdc                          ; a5e6: 7b
	jsr $855f                    ; a5e7: 20 5f 85
loc_a5ea:
	sta $393b                    ; a5ea: 8d 3b 39
loc_a5ed:
	ldx $a6                      ; a5ed: a6 a6
	stz $2052,x                  ; a5ef: 9e 52 20
	lda $3938                    ; a5f2: ad 38 39
	sta $2050,x                  ; a5f5: 9d 50 20
	.db $10, $44                 ; a5f8: 10 44
loc_a5fa:
	ldx.w #$001c                 ; a5fa: a2 1c 00
	stx $ab                      ; a5fd: 86 ab
	ldx.w #$3302                 ; a5ff: a2 02 33
	stx $ad                      ; a602: 86 ad
	jsr $a788                    ; a604: 20 88 a7
loc_a607:
	lda $388b                    ; a607: ad 8b 38
	.db $f0, $04                 ; a60a: f0 04
loc_a60c:
	lda $dc                      ; a60c: a5 dc
	.db $80, $05                 ; a60e: 80 05
loc_a610:
	ldy.w #$0001                 ; a610: a0 01 00
	lda ($80),y                  ; a613: b1 80
loc_a615:
	sta $397b                    ; a615: 8d 7b 39
	pha                          ; a618: 48
	cmp.b #$10                   ; a619: c9 10
	.db $d0, $13                 ; a61b: d0 13
loc_a61d:
	ldx.w #$0001                 ; a61d: a2 01 00
	lda $d0                      ; a620: a5 d0
	cmp $3539                    ; a622: cd 39 35
	.db $f0, $01                 ; a625: f0 01
loc_a627:
	dex                          ; a627: ca
loc_a628:
	lda $3539,x                  ; a628: bd 39 35
	sta $357b                    ; a62b: 8d 7b 35
	.db $80, $07                 ; a62e: 80 07
loc_a630:
	cmp.b #$0a                   ; a630: c9 0a
	.db $d0, $03                 ; a632: d0 03
loc_a634:
	jsr $a7e6                    ; a634: 20 e6 a7
loc_a637:
	lda.b #$0c                   ; a637: a9 0c
	sta $d6                      ; a639: 85 d6
	pla                          ; a63b: 68
	.db $80, $71                 ; a63c: 80 71
loc_a63e:
	and.b #$40                   ; a63e: 29 40
	.db $f0, $6f                 ; a640: f0 6f
loc_a642:
	tdc                          ; a642: 7b
	tax                          ; a643: aa
	stx $ab                      ; a644: 86 ab
	ldx.w #$321a                 ; a646: a2 1a 32
	stx $ad                      ; a649: 86 ad
	jsr $a788                    ; a64b: 20 88 a7
loc_a64e:
	ldx $a6                      ; a64e: a6 a6
	lda $2050,x                  ; a650: bd 50 20
	and.b #$08                   ; a653: 29 08
	.db $f0, $1a                 ; a655: f0 1a
loc_a657:
	lda.b #$02                   ; a657: a9 02
	sta $d6                      ; a659: 85 d6
	ldy.w #$0001                 ; a65b: a0 01 00
	lda ($80),y                  ; a65e: b1 80
	sta $2052,x                  ; a660: 9d 52 20
	iny                          ; a663: c8
	lda ($80),y                  ; a664: b1 80
	dec                          ; a666: 3a
	sta ($80),y                  ; a667: 91 80
	jsr $a7d1                    ; a669: 20 d1 a7
loc_a66c:
	lda.b #$16                   ; a66c: a9 16
	jmp $a700                    ; a66e: 4c 00 a7

; --- Block at $a671-$a6af ---
loc_a671:
	lda $388b                    ; a671: ad 8b 38
	.db $f0, $04                 ; a674: f0 04
loc_a676:
	lda $dc                      ; a676: a5 dc
	.db $80, $05                 ; a678: 80 05
loc_a67a:
	ldy.w #$0001                 ; a67a: a0 01 00
	lda ($80),y                  ; a67d: b1 80
loc_a67f:
	cmp.b #$b0                   ; a67f: c9 b0
	.db $b0, $09                 ; a681: b0 09
loc_a683:
	sta $2052,x                  ; a683: 9d 52 20
	lda.b #$02                   ; a686: a9 02
	sta $d6                      ; a688: 85 d6
	.db $80, $21                 ; a68a: 80 21
loc_a68c:
	sta $2052,x                  ; a68c: 9d 52 20
	sta $397b                    ; a68f: 8d 7b 39
	lda.b #$0b                   ; a692: a9 0b
	sta $d6                      ; a694: 85 d6
	lda $388b                    ; a696: ad 8b 38
	.db $d0, $12                 ; a699: d0 12
loc_a69b:
	lda $397b                    ; a69b: ad 7b 39
	cmp.b #$c8                   ; a69e: c9 c8
	.db $f0, $0b                 ; a6a0: f0 0b
loc_a6a2:
	ldy.w #$0002                 ; a6a2: a0 02 00
	lda ($80),y                  ; a6a5: b1 80
	dec                          ; a6a7: 3a
	sta ($80),y                  ; a6a8: 91 80
	jsr $a7d1                    ; a6aa: 20 d1 a7
loc_a6ad:
	lda.b #$01                   ; a6ad: a9 01

; --- Block at $a6af-$a723 ---
loc_a6af:
	.db $80, $4f                 ; a6af: 80 4f
loc_a6b1:
	lda $3938                    ; a6b1: ad 38 39
	and.b #$20                   ; a6b4: 29 20
	.db $f0, $2b                 ; a6b6: f0 2b
loc_a6b8:
	lda.b #$03                   ; a6b8: a9 03
	sta $d6                      ; a6ba: 85 d6
	ldx.w #$0120                 ; a6bc: a2 20 01
	stx $ab                      ; a6bf: 86 ab
	ldx.w #$2c7a                 ; a6c1: a2 7a 2c
	stx $ad                      ; a6c4: 86 ad
	jsr $a788                    ; a6c6: 20 88 a7
loc_a6c9:
	ldx $a6                      ; a6c9: a6 a6
	lda $388b                    ; a6cb: ad 8b 38
	.db $f0, $04                 ; a6ce: f0 04
loc_a6d0:
	lda $dc                      ; a6d0: a5 dc
	.db $80, $05                 ; a6d2: 80 05
loc_a6d4:
	ldy.w #$0001                 ; a6d4: a0 01 00
	lda ($80),y                  ; a6d7: b1 80
loc_a6d9:
	sta $397b                    ; a6d9: 8d 7b 39
	sta $2052,x                  ; a6dc: 9d 52 20
	lda.b #$02                   ; a6df: a9 02
	.db $80, $1d                 ; a6e1: 80 1d
loc_a6e3:
	lda.b #$02                   ; a6e3: a9 02
	sta $d6                      ; a6e5: 85 d6
	ldx.w #$0008                 ; a6e7: a2 08 00
	stx $ab                      ; a6ea: 86 ab
	ldx.w #$32da                 ; a6ec: a2 da 32
	stx $ad                      ; a6ef: 86 ad
	jsr $a788                    ; a6f1: 20 88 a7
loc_a6f4:
	ldx $a6                      ; a6f4: a6 a6
	ldy.w #$0001                 ; a6f6: a0 01 00
	lda ($80),y                  ; a6f9: b1 80
	sta $2052,x                  ; a6fb: 9d 52 20
	lda.b #$01                   ; a6fe: a9 01
loc_a700:
	ldx $a6                      ; a700: a6 a6
	sta $2051,x                  ; a702: 9d 51 20
	jsr $a724                    ; a705: 20 24 a7
loc_a708:
	lda $393a                    ; a708: ad 3a 39
	sta $2053,x                  ; a70b: 9d 53 20
	lda $393b                    ; a70e: ad 3b 39
	sta $2054,x                  ; a711: 9d 54 20
	lda $d0                      ; a714: a5 d0
	jsr $9e36                    ; a716: 20 36 9e
loc_a719:
	lda.b #$03                   ; a719: a9 03
	jsr $85c8                    ; a71b: 20 c8 85
loc_a71e:
	lda.b #$08                   ; a71e: a9 08
	sta $2a06,x                  ; a720: 9d 06 2a
	rts                          ; a723: 60

; --- Block at $a724-$a75c ---
loc_a724:
	phx                          ; a724: da
	lda $393b                    ; a725: ad 3b 39
	ora $393a                    ; a728: 0d 3a 39
	jsr $850c                    ; a72b: 20 0c 85
loc_a72e:
	dex                          ; a72e: ca
	.db $f0, $2a                 ; a72f: f0 2a
loc_a731:
	tdc                          ; a731: 7b
	tay                          ; a732: a8
	lda $393b                    ; a733: ad 3b 39
	sta $a9                      ; a736: 85 a9
	sta $ad                      ; a738: 85 ad
	ldx.w #$0005                 ; a73a: a2 05 00
	stx $ab                      ; a73d: 86 ab
	jsr $a75d                    ; a73f: 20 5d a7
loc_a742:
	lda $ad                      ; a742: a5 ad
	sta $393b                    ; a744: 8d 3b 39
	lda $393a                    ; a747: ad 3a 39
	sta $a9                      ; a74a: 85 a9
	sta $ad                      ; a74c: 85 ad
	ldx.w #$000d                 ; a74e: a2 0d 00
	stx $ab                      ; a751: 86 ab
	jsr $a75d                    ; a753: 20 5d a7
loc_a756:
	lda $ad                      ; a756: a5 ad
	sta $393a                    ; a758: 8d 3a 39
loc_a75b:
	plx                          ; a75b: fa
	rts                          ; a75c: 60

; --- Block at $a75d-$a787 ---
loc_a75d:
	stz $aa                      ; a75d: 64 aa
	asl $a9                      ; a75f: 06 a9
	.db $90, $11                 ; a761: 90 11
loc_a763:
	lda $2003,y                  ; a763: b9 03 20
	and.b #$c0                   ; a766: 29 c0
	.db $f0, $0a                 ; a768: f0 0a
loc_a76a:
	lda $aa                      ; a76a: a5 aa
	tax                          ; a76c: aa
	lda $ad                      ; a76d: a5 ad
	jsr $855a                    ; a76f: 20 5a 85
loc_a772:
	sta $ad                      ; a772: 85 ad
loc_a774:
	rep #$20                     ; a774: c2 20
	tya                          ; a776: 98
	clc                          ; a777: 18
	adc.w #$0080                 ; a778: 69 80 00
	tay                          ; a77b: a8
	tdc                          ; a77c: 7b
	sep #$20                     ; a77d: e2 20
	inc $aa                      ; a77f: e6 aa
	lda $aa                      ; a781: a5 aa
	cmp $ab                      ; a783: c5 ab
	.db $d0, $d8                 ; a785: d0 d8
loc_a787:
	rts                          ; a787: 60

; --- Block at $a788-$a7d0 ---
loc_a788:
	lda $d0                      ; a788: a5 d0
	tax                          ; a78a: aa
	stx $393d                    ; a78b: 8e 3d 39
	ldx $ab                      ; a78e: a6 ab
	stx $393f                    ; a790: 8e 3f 39
	jsr $83b9                    ; a793: 20 b9 83
loc_a796:
	ldx $3941                    ; a796: ae 41 39
	stx $3956                    ; a799: 8e 56 39
	ldx $ad                      ; a79c: a6 ad
	stx $3958                    ; a79e: 8e 58 39
	jsr $84e3                    ; a7a1: 20 e3 84
loc_a7a4:
	lda $3939                    ; a7a4: ad 39 39
	sta $df                      ; a7a7: 85 df
	lda.b #$04                   ; a7a9: a9 04
	sta $e1                      ; a7ab: 85 e1
	jsr $83e0                    ; a7ad: 20 e0 83
loc_a7b0:
	ldx $e3                      ; a7b0: a6 e3
	stx $3956                    ; a7b2: 8e 56 39
	ldx $395a                    ; a7b5: ae 5a 39
	stx $3958                    ; a7b8: 8e 58 39
	jsr $84e3                    ; a7bb: 20 e3 84
loc_a7be:
	ldx $a6                      ; a7be: a6 a6
	lda $395a                    ; a7c0: ad 5a 39
	sta $2055,x                  ; a7c3: 9d 55 20
	sta $80                      ; a7c6: 85 80
	lda $395b                    ; a7c8: ad 5b 39
	sta $2056,x                  ; a7cb: 9d 56 20
	sta $81                      ; a7ce: 85 81
	rts                          ; a7d0: 60

; --- Block at $a7d1-$a7e3 ---
loc_a7d1:
	.db $d0, $09                 ; a7d1: d0 09
loc_a7d3:
	dey                          ; a7d3: 88
	tdc                          ; a7d4: 7b
	sta ($80),y                  ; a7d5: 91 80
	dey                          ; a7d7: 88
	lda.b #$80                   ; a7d8: a9 80
	sta ($80),y                  ; a7da: 91 80
loc_a7dc:
	lda $3939                    ; a7dc: ad 39 39
	sta $01                      ; a7df: 85 01
	lda.b #$06                   ; a7e1: a9 06
	jmp $8085                    ; a7e3: 4c 85 80

; --- Block at $a7e6-$a7fa ---
loc_a7e6:
	tdc                          ; a7e6: 7b
	tax                          ; a7e7: aa
	tay                          ; a7e8: a8
	lda $321b,x                  ; a7e9: bd 1b 32
	cmp.b #$ce                   ; a7ec: c9 ce
	.db $f0, $0b                 ; a7ee: f0 0b
loc_a7f0:
	iny                          ; a7f0: c8
	inx                          ; a7f1: e8
	inx                          ; a7f2: e8
	inx                          ; a7f3: e8
	inx                          ; a7f4: e8
	cpx.w #$00c0                 ; a7f5: e0 c0 00
	.db $d0, $ef                 ; a7f8: d0 ef
loc_a7fa:
	rts                          ; a7fa: 60

; --- Block at $a7fb-$a82a ---
loc_a7fb:
	lda $321c,x                  ; a7fb: bd 1c 32
	cmp.b #$01                   ; a7fe: c9 01
	.db $90, $28                 ; a800: 90 28
loc_a802:
	sec                          ; a802: 38
	lda $321c,x                  ; a803: bd 1c 32
	pha                          ; a806: 48
	phx                          ; a807: da
	sbc.b #$01                   ; a808: e9 01
	sta $321c,x                  ; a80a: 9d 1c 32
	.db $d0, $0e                 ; a80d: d0 0e
loc_a80f:
	stz $321c,x                  ; a80f: 9e 1c 32
	stz $321b,x                  ; a812: 9e 1b 32
	lda $321a,x                  ; a815: bd 1a 32
	ora.b #$80                   ; a818: 09 80
	sta $321a,x                  ; a81a: 9d 1a 32
loc_a81d:
	tya                          ; a81d: 98
	sta $01                      ; a81e: 85 01
	lda.b #$06                   ; a820: a9 06
	jsr $8085                    ; a822: 20 85 80
loc_a825:
	plx                          ; a825: fa
	pla                          ; a826: 68
	sta $321c,x                  ; a827: 9d 1c 32
loc_a82a:
	rts                          ; a82a: 60

; --- Block at $a82b-$a865 ---
loc_a82b:
	lda $1822                    ; a82b: ad 22 18
	tay                          ; a82e: a8
	lda $38dc,y                  ; a82f: b9 dc 38
	.db $f0, $31                 ; a832: f0 31
loc_a834:
	lda $1822                    ; a834: ad 22 18
	sta $3975                    ; a837: 8d 75 39
	jsr $847e                    ; a83a: 20 7e 84
loc_a83d:
	tax                          ; a83d: aa
	lda $38dc,y                  ; a83e: b9 dc 38
	.db $10, $04                 ; a841: 10 04
loc_a843:
	inx                          ; a843: e8
	inx                          ; a844: e8
	inx                          ; a845: e8
	inx                          ; a846: e8
loc_a847:
	tdc                          ; a847: 7b
	sta $38dc,y                  ; a848: 99 dc 38
	stz $32db,x                  ; a84b: 9e db 32
	stz $32dc,x                  ; a84e: 9e dc 32
	lda.b #$80                   ; a851: a9 80
	sta $32da,x                  ; a853: 9d da 32
	lda $3975                    ; a856: ad 75 39
	jsr $8489                    ; a859: 20 89 84
loc_a85c:
	jsr $9e08                    ; a85c: 20 08 9e
loc_a85f:
	jsr $8ed6                    ; a85f: 20 d6 8e
loc_a862:
	jsr $9841                    ; a862: 20 41 98
loc_a865:
	rts                          ; a865: 60

; --- Block at $aa0f-$aaef ---
loc_aa0f:
	inc $3557                    ; aa0f: ee 57 35
	lda $3557                    ; aa12: ad 57 35
	cmp.b #$01                   ; aa15: c9 01
	.db $d0, $7c                 ; aa17: d0 7c
loc_aa19:
	stz $3557                    ; aa19: 9c 57 35
	jsr $b30d                    ; aa1c: 20 0d b3
loc_aa1f:
	lda.b #$00                   ; aa1f: a9 00
	sta $8a                      ; aa21: 85 8a
	lda $8a                      ; aa23: a5 8a
	tax                          ; aa25: aa
	lda $3540,x                  ; aa26: bd 40 35
	.db $d0, $31                 ; aa29: d0 31
loc_aa2b:
	lda $8a                      ; aa2b: a5 8a
	asl                          ; aa2d: 0a
	tax                          ; aa2e: aa
	lda $29eb,x                  ; aa2f: bd eb 29
	and.b #$20                   ; aa32: 29 20
	.db $f0, $26                 ; aa34: f0 26
loc_aa36:
	lda $8a                      ; aa36: a5 8a
	jsr $8489                    ; aa38: 20 89 84
loc_aa3b:
	ldx $a6                      ; aa3b: a6 a6
	lda $2003,x                  ; aa3d: bd 03 20
	and.b #$c0                   ; aa40: 29 c0
	.db $d0, $18                 ; aa42: d0 18
loc_aa44:
	lda $2005,x                  ; aa44: bd 05 20
	and.b #$42                   ; aa47: 29 42
	.db $d0, $11                 ; aa49: d0 11
loc_aa4b:
	lda $2006,x                  ; aa4b: bd 06 20
	.db $30, $0c                 ; aa4e: 30 0c
loc_aa50:
	lda $8a                      ; aa50: a5 8a
	asl                          ; aa52: 0a
	tax                          ; aa53: aa
	lda.b #$02                   ; aa54: a9 02
	sta $34d4,x                  ; aa56: 9d d4 34
	stz $34d5,x                  ; aa59: 9e d5 34
loc_aa5c:
	inc $8a                      ; aa5c: e6 8a
	lda $8a                      ; aa5e: a5 8a
	cmp.b #$0d                   ; aa60: c9 0d
	.db $d0, $bf                 ; aa62: d0 bf
loc_aa64:
	stz $3907                    ; aa64: 9c 07 39
	jsr $ca7e                    ; aa67: 20 7e ca
loc_aa6a:
	lda.b #$ff                   ; aa6a: a9 ff
	sta $33c2                    ; aa6c: 8d c2 33
	lda $3907                    ; aa6f: ad 07 39
	.db $f0, $21                 ; aa72: f0 21
loc_aa74:
	lda.b #$f8                   ; aa74: a9 f8
	sta $33c2                    ; aa76: 8d c2 33
	lda.b #$03                   ; aa79: a9 03
	sta $33c3                    ; aa7b: 8d c3 33
	lda.b #$38                   ; aa7e: a9 38
	sta $34ca                    ; aa80: 8d ca 34
	lda.b #$05                   ; aa83: a9 05
	jsr $8085                    ; aa85: 20 85 80
loc_aa88:
	jsr $b1b0                    ; aa88: 20 b0 b1
loc_aa8b:
	lda.b #$10                   ; aa8b: a9 10
	jsr $8085                    ; aa8d: 20 85 80
loc_aa90:
	lda.b #$02                   ; aa90: a9 02
	jsr $8085                    ; aa92: 20 85 80
loc_aa95:
	jsr $b30d                    ; aa95: 20 0d b3
loc_aa98:
	jsl $13ffb4                  ; aa98: 22 b4 ff 13
loc_aa9c:
	lda $357c                    ; aa9c: ad 7c 35
	cmp.b #$ff                   ; aa9f: c9 ff
	.db $f0, $45                 ; aaa1: f0 45
loc_aaa3:
	inc $357c                    ; aaa3: ee 7c 35
	cmp.b #$05                   ; aaa6: c9 05
	.db $d0, $3e                 ; aaa8: d0 3e
loc_aaaa:
	stz $357c                    ; aaaa: 9c 7c 35
	jsr $b30d                    ; aaad: 20 0d b3
loc_aab0:
	tdc                          ; aab0: 7b
	tax                          ; aab1: aa
	txy                          ; aab2: 9b
	lda $3540                    ; aab3: ad 40 35
	.db $d0, $19                 ; aab6: d0 19
loc_aab8:
	lda $2003,x                  ; aab8: bd 03 20
	and.b #$c0                   ; aabb: 29 c0
	.db $d0, $12                 ; aabd: d0 12
loc_aabf:
	phx                          ; aabf: da
	phy                          ; aac0: 5a
	tya                          ; aac1: 98
	asl                          ; aac2: 0a
	tax                          ; aac3: aa
	lda $357d                    ; aac4: ad 7d 35
	sta $34d4,x                  ; aac7: 9d d4 34
	lda.b #$80                   ; aaca: a9 80
	sta $34d5,x                  ; aacc: 9d d5 34
	ply                          ; aacf: 7a
	plx                          ; aad0: fa
loc_aad1:
	rep #$20                     ; aad1: c2 20
	txa                          ; aad3: 8a
	clc                          ; aad4: 18
	adc.w #$0080                 ; aad5: 69 80 00
	tax                          ; aad8: aa
	tdc                          ; aad9: 7b
	sep #$20                     ; aada: e2 20
	iny                          ; aadc: c8
	cpy.w #$0005                 ; aadd: c0 05 00
	.db $d0, $d1                 ; aae0: d0 d1
loc_aae2:
	jsr $ca7e                    ; aae2: 20 7e ca
loc_aae5:
	jsr $b1b0                    ; aae5: 20 b0 b1
loc_aae8:
	lda.b #$11                   ; aae8: a9 11
	jsr $8085                    ; aaea: 20 85 80
loc_aaed:
	lda.b #$0c                   ; aaed: a9 0c
	jmp $8085                    ; aaef: 4c 85 80

; --- Block at $aaf2-$ab02 ---
loc_aaf2:
	tdc                          ; aaf2: 7b
	tax                          ; aaf3: aa
	stx $8e                      ; aaf4: 86 8e
	ldx $8e                      ; aaf6: a6 8e
	lda $3540,x                  ; aaf8: bd 40 35
	.db $d0, $05                 ; aafb: d0 05
loc_aafd:
	lda $3560,x                  ; aafd: bd 60 35
	.db $f0, $03                 ; ab00: f0 03
loc_ab02:
	jmp $aba1                    ; ab02: 4c a1 ab

; --- Block at $ab05-$ab20 ---
loc_ab05:
	txa                          ; ab05: 8a
	jsr $8489                    ; ab06: 20 89 84
loc_ab09:
	ldx $a6                      ; ab09: a6 a6
	lda $2003,x                  ; ab0b: bd 03 20
	and.b #$c0                   ; ab0e: 29 c0
	.db $d0, $05                 ; ab10: d0 05
loc_ab12:
	lda $2004,x                  ; ab12: bd 04 20
	and.b #$30                   ; ab15: 29 30
loc_ab17:
	.db $d0, $07                 ; ab17: d0 07
loc_ab19:
	lda $2005,x                  ; ab19: bd 05 20
	and.b #$42                   ; ab1c: 29 42
	.db $f0, $03                 ; ab1e: f0 03
loc_ab20:
	jmp $aba1                    ; ab20: 4c a1 ab

; --- Block at $ab23-$aba1 ---
loc_ab23:
	lda $2004,x                  ; ab23: bd 04 20
	and.b #$0c                   ; ab26: 29 0c
	.db $f0, $20                 ; ab28: f0 20
loc_ab2a:
	lda $2005,x                  ; ab2a: bd 05 20
	and.b #$fb                   ; ab2d: 29 fb
	sta $2005,x                  ; ab2f: 9d 05 20
	lda $2004,x                  ; ab32: bd 04 20
	and.b #$04                   ; ab35: 29 04
	.db $f0, $05                 ; ab37: f0 05
loc_ab39:
	jsr $ac9c                    ; ab39: 20 9c ac
loc_ab3c:
	.db $80, $4d                 ; ab3c: 80 4d
loc_ab3e:
	lda $2004,x                  ; ab3e: bd 04 20
	and.b #$08                   ; ab41: 29 08
	.db $f0, $05                 ; ab43: f0 05
loc_ab45:
	jsr $abad                    ; ab45: 20 ad ab
loc_ab48:
	.db $80, $41                 ; ab48: 80 41
loc_ab4a:
	lda $2006,x                  ; ab4a: bd 06 20
	and.b #$01                   ; ab4d: 29 01
	.db $f0, $50                 ; ab4f: f0 50
loc_ab51:
	lda $2000,x                  ; ab51: bd 00 20
	and.b #$1f                   ; ab54: 29 1f
	cmp.b #$05                   ; ab56: c9 05
	.db $d0, $47                 ; ab58: d0 47
loc_ab5a:
	lda $3582                    ; ab5a: ad 82 35
	.db $d0, $42                 ; ab5d: d0 42
loc_ab5f:
	lda.b #$03                   ; ab5f: a9 03
	jsr $8569                    ; ab61: 20 69 85
loc_ab64:
	ldx $3598                    ; ab64: ae 98 35
	lda $2a06,x                  ; ab67: bd 06 2a
	and.b #$08                   ; ab6a: 29 08
	.db $d0, $33                 ; ab6c: d0 33
loc_ab6e:
	ldx $a6                      ; ab6e: a6 a6
	lda $2006,x                  ; ab70: bd 06 20
	.db $10, $0b                 ; ab73: 10 0b
loc_ab75:
	jsr $ad33                    ; ab75: 20 33 ad
loc_ab78:
	dec                          ; ab78: 3a
	.db $d0, $26                 ; ab79: d0 26
loc_ab7b:
	jsr $ad12                    ; ab7b: 20 12 ad
loc_ab7e:
	.db $80, $12                 ; ab7e: 80 12
loc_ab80:
	jsr $ad33                    ; ab80: 20 33 ad
loc_ab83:
	dec                          ; ab83: 3a
	.db $f0, $1b                 ; ab84: f0 1b
loc_ab86:
	jsr $ad09                    ; ab86: 20 09 ad
loc_ab89:
	.db $80, $07                 ; ab89: 80 07
loc_ab8b:
	stz $d6                      ; ab8b: 64 d6
	lda $8e                      ; ab8d: a5 8e
	jsr $9e36                    ; ab8f: 20 36 9e
loc_ab92:
	lda.b #$03                   ; ab92: a9 03
	jsr $85c8                    ; ab94: 20 c8 85
loc_ab97:
	lda.b #$08                   ; ab97: a9 08
	sta $2a06,x                  ; ab99: 9d 06 2a
	ldx $8e                      ; ab9c: a6 8e
	inc $3560,x                  ; ab9e: fe 60 35

; --- Block at $aba1-$aba9 ---
loc_aba1:
	inc $8e                      ; aba1: e6 8e
	lda $8e                      ; aba3: a5 8e
	cmp.b #$05                   ; aba5: c9 05
	.db $f0, $03                 ; aba7: f0 03
loc_aba9:
	jmp $aaf6                    ; aba9: 4c f6 aa

; --- Block at $abac-$abac ---
loc_abac:
	rts                          ; abac: 60

; --- Block at $abad-$abdf ---
loc_abad:
	ldx $a6                      ; abad: a6 a6
	stz $2053,x                  ; abaf: 9e 53 20
	stz $2054,x                  ; abb2: 9e 54 20
	jsr $858b                    ; abb5: 20 8b 85
loc_abb8:
	cmp.b #$46                   ; abb8: c9 46
	.db $b0, $24                 ; abba: b0 24
loc_abbc:
	ldx $3534                    ; abbc: ae 34 35
	ldy.w #$0005                 ; abbf: a0 05 00
	lda $3303,x                  ; abc2: bd 03 33
	cmp.b #$02                   ; abc5: c9 02
	.db $f0, $0d                 ; abc7: f0 0d
loc_abc9:
	cmp.b #$03                   ; abc9: c9 03
	.db $f0, $09                 ; abcb: f0 09
loc_abcd:
	inx                          ; abcd: e8
	inx                          ; abce: e8
	inx                          ; abcf: e8
	inx                          ; abd0: e8
	dey                          ; abd1: 88
	.db $d0, $ee                 ; abd2: d0 ee
loc_abd4:
	.db $80, $0a                 ; abd4: 80 0a
loc_abd6:
	stz $90                      ; abd6: 64 90
	jsr $abfd                    ; abd8: 20 fd ab
loc_abdb:
	lda $90                      ; abdb: a5 90
	.db $d0, $01                 ; abdd: d0 01
loc_abdf:
	rts                          ; abdf: 60

; --- Block at $abe0-$abfc ---
loc_abe0:
	ldx $a6                      ; abe0: a6 a6
	lda.b #$80                   ; abe2: a9 80
	sta $2050,x                  ; abe4: 9d 50 20
	stz $2051,x                  ; abe7: 9e 51 20
	jsr $8582                    ; abea: 20 82 85
loc_abed:
	tax                          ; abed: aa
	lda $3540,x                  ; abee: bd 40 35
	.db $d0, $f7                 ; abf1: d0 f7
loc_abf3:
	tdc                          ; abf3: 7b
	jsr $855f                    ; abf4: 20 5f 85
loc_abf7:
	ldx $a6                      ; abf7: a6 a6
	sta $2054,x                  ; abf9: 9d 54 20
	rts                          ; abfc: 60

; --- Block at $abfd-$ac13 ---
loc_abfd:
	ldx $3536                    ; abfd: ae 36 35
	stx $a9                      ; ac00: 86 a9
	ldy.w #$0030                 ; ac02: a0 30 00
	lda $2c7a,x                  ; ac05: bd 7a 2c
	.db $10, $0c                 ; ac08: 10 0c
loc_ac0a:
	inx                          ; ac0a: e8
	inx                          ; ac0b: e8
	inx                          ; ac0c: e8
	inx                          ; ac0d: e8
	dey                          ; ac0e: 88
	.db $d0, $f4                 ; ac0f: d0 f4
loc_ac11:
	inc $90                      ; ac11: e6 90
	jmp $ac9b                    ; ac13: 4c 9b ac

; --- Block at $ac16-$ac7e ---
loc_ac16:
	tdc                          ; ac16: 7b
	tax                          ; ac17: aa
	lda.b #$2f                   ; ac18: a9 2f
	jsr $8379                    ; ac1a: 20 79 83
loc_ac1d:
	tax                          ; ac1d: aa
	stx $393d                    ; ac1e: 8e 3d 39
	ldx.w #$0004                 ; ac21: a2 04 00
	stx $393f                    ; ac24: 8e 3f 39
	jsr $83b9                    ; ac27: 20 b9 83
loc_ac2a:
	clc                          ; ac2a: 18
	lda $a9                      ; ac2b: a5 a9
	adc $3941                    ; ac2d: 6d 41 39
	sta $ab                      ; ac30: 85 ab
	lda $aa                      ; ac32: a5 aa
	adc $3942                    ; ac34: 6d 42 39
	sta $ac                      ; ac37: 85 ac
	ldx $ab                      ; ac39: a6 ab
	lda $2c7a,x                  ; ac3b: bd 7a 2c
	sta $ad                      ; ac3e: 85 ad
	.db $30, $d4                 ; ac40: 30 d4
loc_ac42:
	lda $2c7b,x                  ; ac42: bd 7b 2c
	ldx $a6                      ; ac45: a6 a6
	sta $2052,x                  ; ac47: 9d 52 20
	lda.b #$20                   ; ac4a: a9 20
	sta $2050,x                  ; ac4c: 9d 50 20
	lda.b #$02                   ; ac4f: a9 02
	sta $2051,x                  ; ac51: 9d 51 20
	lda $ad                      ; ac54: a5 ad
	and.b #$40                   ; ac56: 29 40
	.db $d0, $25                 ; ac58: d0 25
loc_ac5a:
	lda $ad                      ; ac5a: a5 ad
	and.b #$10                   ; ac5c: 29 10
	.db $f0, $17                 ; ac5e: f0 17
loc_ac60:
	jsr $8579                    ; ac60: 20 79 85
loc_ac63:
	sta $ab                      ; ac63: 85 ab
	clc                          ; ac65: 18
	adc.b #$05                   ; ac66: 69 05
	tax                          ; ac68: aa
	lda $3540,x                  ; ac69: bd 40 35
	.db $d0, $f2                 ; ac6c: d0 f2
loc_ac6e:
	lda $ab                      ; ac6e: a5 ab
	tax                          ; ac70: aa
	tdc                          ; ac71: 7b
	jsr $855f                    ; ac72: 20 5f 85
loc_ac75:
	.db $80, $02                 ; ac75: 80 02
loc_ac77:
	lda.b #$ff                   ; ac77: a9 ff
loc_ac79:
	ldx $a6                      ; ac79: a6 a6
	sta $2053,x                  ; ac7b: 9d 53 20
	rts                          ; ac7e: 60

; --- Block at $ac7f-$ac9b ---
loc_ac7f:
	lda $ad                      ; ac7f: a5 ad
	and.b #$10                   ; ac81: 29 10
	.db $f0, $0f                 ; ac83: f0 0f
loc_ac85:
	jsr $8582                    ; ac85: 20 82 85
loc_ac88:
	tax                          ; ac88: aa
	lda $3540,x                  ; ac89: bd 40 35
	.db $d0, $f7                 ; ac8c: d0 f7
loc_ac8e:
	tdc                          ; ac8e: 7b
	jsr $855f                    ; ac8f: 20 5f 85
loc_ac92:
	.db $80, $02                 ; ac92: 80 02
loc_ac94:
	lda.b #$f8                   ; ac94: a9 f8
loc_ac96:
	ldx $a6                      ; ac96: a6 a6
	sta $2054,x                  ; ac98: 9d 54 20

; --- Block at $ac9b-$ac9b ---
loc_ac9b:
	rts                          ; ac9b: 60

; --- Block at $ac9c-$aced ---
loc_ac9c:
	ldx $a6                      ; ac9c: a6 a6
	lda.b #$80                   ; ac9e: a9 80
	sta $2050,x                  ; aca0: 9d 50 20
	stz $2051,x                  ; aca3: 9e 51 20
	stz $2054,x                  ; aca6: 9e 54 20
	stz $2053,x                  ; aca9: 9e 53 20
	lda $2004,x                  ; acac: bd 04 20
	and.b #$08                   ; acaf: 29 08
	.db $f0, $3b                 ; acb1: f0 3b
loc_acb3:
	ldx.w #$0000                 ; acb3: a2 00 00
	lda.b #$04                   ; acb6: a9 04
	jsr $8379                    ; acb8: 20 79 83
loc_acbb:
	sta $a9                      ; acbb: 85 a9
	sta $df                      ; acbd: 85 df
	tax                          ; acbf: aa
	lda $3540,x                  ; acc0: bd 40 35
	.db $d0, $ee                 ; acc3: d0 ee
loc_acc5:
	lda.b #$80                   ; acc5: a9 80
	sta $ab                      ; acc7: 85 ab
	jsr $83e0                    ; acc9: 20 e0 83
loc_accc:
	ldx $e3                      ; accc: a6 e3
	lda $2003,x                  ; acce: bd 03 20
	and.b #$c0                   ; acd1: 29 c0
	.db $d0, $de                 ; acd3: d0 de
loc_acd5:
	lda $2005,x                  ; acd5: bd 05 20
	and.b #$82                   ; acd8: 29 82
	.db $d0, $d7                 ; acda: d0 d7
loc_acdc:
	lda $2006,x                  ; acdc: bd 06 20
	.db $30, $d2                 ; acdf: 30 d2
loc_ace1:
	lda $a9                      ; ace1: a5 a9
	tax                          ; ace3: aa
	tdc                          ; ace4: 7b
	jsr $855f                    ; ace5: 20 5f 85
loc_ace8:
	ldx $a6                      ; ace8: a6 a6
	sta $2054,x                  ; acea: 9d 54 20
	rts                          ; aced: 60

; --- Block at $acee-$ad08 ---
loc_acee:
	jsr $8579                    ; acee: 20 79 85
loc_acf1:
	sta $a9                      ; acf1: 85 a9
	clc                          ; acf3: 18
	adc.b #$05                   ; acf4: 69 05
	tax                          ; acf6: aa
	lda $3540,x                  ; acf7: bd 40 35
	.db $d0, $f2                 ; acfa: d0 f2
loc_acfc:
	lda $a9                      ; acfc: a5 a9
	tax                          ; acfe: aa
	tdc                          ; acff: 7b
	jsr $855f                    ; ad00: 20 5f 85
loc_ad03:
	ldx $a6                      ; ad03: a6 a6
	sta $2053,x                  ; ad05: 9d 53 20
	rts                          ; ad08: 60

; --- Block at $ad09-$ad12 ---
loc_ad09:
	ldx $a6                      ; ad09: a6 a6
	lda.b #$09                   ; ad0b: a9 09
	sta $2051,x                  ; ad0d: 9d 51 20
	.db $80, $07                 ; ad10: 80 07

; --- Block at $ad12-$ad32 ---
loc_ad12:
	ldx $a6                      ; ad12: a6 a6
	lda.b #$1c                   ; ad14: a9 1c
	sta $2051,x                  ; ad16: 9d 51 20
	lda.b #$80                   ; ad19: a9 80
	sta $2050,x                  ; ad1b: 9d 50 20
	stz $2053,x                  ; ad1e: 9e 53 20
	lda $8e                      ; ad21: a5 8e
	tax                          ; ad23: aa
	tdc                          ; ad24: 7b
	jsr $855f                    ; ad25: 20 5f 85
loc_ad28:
	ldx $a6                      ; ad28: a6 a6
	sta $2054,x                  ; ad2a: 9d 54 20
	ldx.w #$0001                 ; ad2d: a2 01 00
	stx $d4                      ; ad30: 86 d4
	rts                          ; ad32: 60

; --- Block at $ad33-$ad58 ---
loc_ad33:
	phx                          ; ad33: da
	phy                          ; ad34: 5a
	tdc                          ; ad35: 7b
	tax                          ; ad36: aa
	txy                          ; ad37: 9b
	stx $a9                      ; ad38: 86 a9
	lda $3540,y                  ; ad3a: b9 40 35
	.db $d0, $09                 ; ad3d: d0 09
loc_ad3f:
	lda $2003,x                  ; ad3f: bd 03 20
	and.b #$c0                   ; ad42: 29 c0
	.db $d0, $02                 ; ad44: d0 02
loc_ad46:
	inc $a9                      ; ad46: e6 a9
loc_ad48:
	jsr $85bc                    ; ad48: 20 bc 85
loc_ad4b:
	iny                          ; ad4b: c8
	cpy.w #$0005                 ; ad4c: c0 05 00
	.db $d0, $e9                 ; ad4f: d0 e9
loc_ad51:
	ply                          ; ad51: 7a
	plx                          ; ad52: fa
	lda $a9                      ; ad53: a5 a9
	sta $38db                    ; ad55: 8d db 38
	rts                          ; ad58: 60

; --- Block at $ad88-$ae8b ---
loc_ad88:
	stz $38e7                    ; ad88: 9c e7 38
	stz $3907                    ; ad8b: 9c 07 39
	stz $355b                    ; ad8e: 9c 5b 35
	stz $355c                    ; ad91: 9c 5c 35
	stz $3553                    ; ad94: 9c 53 35
	stz $355d                    ; ad97: 9c 5d 35
	stz $352a                    ; ad9a: 9c 2a 35
	stz $3584                    ; ad9d: 9c 84 35
	stz $38e2                    ; ada0: 9c e2 38
	stz $38eb                    ; ada3: 9c eb 38
	stz $38ed                    ; ada6: 9c ed 38
	lda.b #$04                   ; ada9: a9 04
	sta $2c78                    ; adab: 8d 78 2c
	stz $2c79                    ; adae: 9c 79 2c
	lda $d2                      ; adb1: a5 d2
	jsr $8489                    ; adb3: 20 89 84
loc_adb6:
	jsr $b30d                    ; adb6: 20 0d b3
loc_adb9:
	lda $d2                      ; adb9: a5 d2
	cmp.b #$05                   ; adbb: c9 05
	.db $90, $26                 ; adbd: 90 26
loc_adbf:
	sec                          ; adbf: 38
	lda $d2                      ; adc0: a5 d2
	sbc.b #$05                   ; adc2: e9 05
	sta $df                      ; adc4: 85 df
	lda.b #$3c                   ; adc6: a9 3c
	sta $e1                      ; adc8: 85 e1
	jsr $83e0                    ; adca: 20 e0 83
loc_adcd:
	tdc                          ; adcd: 7b
	tay                          ; adce: a8
	ldx $e3                      ; adcf: a6 e3
	lda $3659,x                  ; add1: bd 59 36
	sta $33c2,y                  ; add4: 99 c2 33
	inx                          ; add7: e8
	iny                          ; add8: c8
	cpy.w #$003c                 ; add9: c0 3c 00
	.db $d0, $f3                 ; addc: d0 f3
loc_adde:
	lda $d2                      ; adde: a5 d2
	sec                          ; ade0: 38
	sbc.b #$05                   ; ade1: e9 05
	ora.b #$80                   ; ade3: 09 80
loc_ade5:
	sta $cd                      ; ade5: 85 cd
	pha                          ; ade7: 48
	pha                          ; ade8: 48
	and.b #$7f                   ; ade9: 29 7f
	sta $34c3                    ; adeb: 8d c3 34
	pla                          ; adee: 68
	and.b #$80                   ; adef: 29 80
	sta $34c2                    ; adf1: 8d c2 34
	pla                          ; adf4: 68
	jsr $b173                    ; adf5: 20 73 b1
loc_adf8:
	ldy.w #$007f                 ; adf8: a0 7f 00
	lda ($80),y                  ; adfb: b1 80
	sta $2680,y                  ; adfd: 99 80 26
	dey                          ; ae00: 88
	.db $10, $f8                 ; ae01: 10 f8
loc_ae03:
	tdc                          ; ae03: 7b
	tax                          ; ae04: aa
	lda $3540,x                  ; ae05: bd 40 35
	sta $289c,x                  ; ae08: 9d 9c 28
	inx                          ; ae0b: e8
	cpx.w #$000d                 ; ae0c: e0 0d 00
	.db $d0, $f4                 ; ae0f: d0 f4
loc_ae11:
	ldx $a6                      ; ae11: a6 a6
	lda $2053,x                  ; ae13: bd 53 20
	ora $2054,x                  ; ae16: 1d 54 20
	sta $8a                      ; ae19: 85 8a
	.db $d0, $25                 ; ae1b: d0 25
loc_ae1d:
	lda.b #$21                   ; ae1d: a9 21
	sta $2051,x                  ; ae1f: 9d 51 20
	lda $cd                      ; ae22: a5 cd
	sta $ce                      ; ae24: 85 ce
	.db $10, $4b                 ; ae26: 10 4b
loc_ae28:
	jsr $b358                    ; ae28: 20 58 b3
loc_ae2b:
	lda $a9                      ; ae2b: a5 a9
	.db $d0, $0f                 ; ae2d: d0 0f
loc_ae2f:
	ldx $a6                      ; ae2f: a6 a6
	lda.b #$e1                   ; ae31: a9 e1
	sta $2051,x                  ; ae33: 9d 51 20
	sta $33c2                    ; ae36: 8d c2 33
	lda.b #$ff                   ; ae39: a9 ff
	sta $33c3                    ; ae3b: 8d c3 33
loc_ae3e:
	lda $cd                      ; ae3e: a5 cd
	.db $80, $31                 ; ae40: 80 31
loc_ae42:
	ldx.w #$0000                 ; ae42: a2 00 00
	asl                          ; ae45: 0a
	.db $b0, $03                 ; ae46: b0 03
loc_ae48:
	inx                          ; ae48: e8
	.db $d0, $fa                 ; ae49: d0 fa
loc_ae4b:
	txa                          ; ae4b: 8a
	sta $ce                      ; ae4c: 85 ce
	ldx $a6                      ; ae4e: a6 a6
	lda $2053,x                  ; ae50: bd 53 20
	.db $f0, $13                 ; ae53: f0 13
loc_ae55:
	lda.b #$80                   ; ae55: a9 80
	sta $34c4                    ; ae57: 8d c4 34
	lda $2053,x                  ; ae5a: bd 53 20
	jsr $b19e                    ; ae5d: 20 9e b1
loc_ae60:
	lda $ce                      ; ae60: a5 ce
	ora.b #$80                   ; ae62: 09 80
	sta $ce                      ; ae64: 85 ce
	.db $80, $0b                 ; ae66: 80 0b
loc_ae68:
	stz $34c4                    ; ae68: 9c c4 34
	lda $2054,x                  ; ae6b: bd 54 20
	jsr $b19e                    ; ae6e: 20 9e b1
loc_ae71:
	lda $ce                      ; ae71: a5 ce
loc_ae73:
	jsr $b173                    ; ae73: 20 73 b1
loc_ae76:
	ldy.w #$007f                 ; ae76: a0 7f 00
	lda ($80),y                  ; ae79: b1 80
	sta $2700,y                  ; ae7b: 99 00 27
	dey                          ; ae7e: 88
	.db $10, $f8                 ; ae7f: 10 f8
loc_ae81:
	lda $26d2                    ; ae81: ad d2 26
	cmp.b #$ba                   ; ae84: c9 ba
	.db $d0, $06                 ; ae86: d0 06
loc_ae88:
	inc $38e7                    ; ae88: ee e7 38
	jmp $af7f                    ; ae8b: 4c 7f af

; --- Block at $ae8e-$ae96 ---
loc_ae8e:
	lda $8a                      ; ae8e: a5 8a
	jsr $850c                    ; ae90: 20 0c 85
loc_ae93:
	dex                          ; ae93: ca
	.db $f0, $03                 ; ae94: f0 03
loc_ae96:
	jmp $affb                    ; ae96: 4c fb af

; --- Block at $ae99-$aeea ---
loc_ae99:
	lda $cd                      ; ae99: a5 cd
	.db $30, $0f                 ; ae9b: 30 0f
loc_ae9d:
	lda $26d1                    ; ae9d: ad d1 26
	sta $a9                      ; aea0: 85 a9
	lda $ce                      ; aea2: a5 ce
	.db $30, $0e                 ; aea4: 30 0e
loc_aea6:
	lda $a9                      ; aea6: a5 a9
	.db $d0, $3d                 ; aea8: d0 3d
loc_aeaa:
	.db $80, $08                 ; aeaa: 80 08
loc_aeac:
	sec                          ; aeac: 38
	lda $26d1                    ; aead: ad d1 26
	sbc.b #$c0                   ; aeb0: e9 c0
	sta $a9                      ; aeb2: 85 a9
loc_aeb4:
	lda $2703                    ; aeb4: ad 03 27
	and.b #$80                   ; aeb7: 29 80
	.db $f0, $32                 ; aeb9: f0 32
loc_aebb:
	lda $a9                      ; aebb: a5 a9
	.db $f0, $63                 ; aebd: f0 63
loc_aebf:
	cmp.b #$03                   ; aebf: c9 03
	.db $b0, $5f                 ; aec1: b0 5f
loc_aec3:
	cmp.b #$02                   ; aec3: c9 02
	.db $d0, $19                 ; aec5: d0 19
loc_aec7:
	lda $26d2                    ; aec7: ad d2 26
	cmp.b #$13                   ; aeca: c9 13
	.db $f0, $19                 ; aecc: f0 19
loc_aece:
	cmp.b #$14                   ; aece: c9 14
	.db $f0, $15                 ; aed0: f0 15
loc_aed2:
	cmp.b #$ab                   ; aed2: c9 ab
	.db $f0, $11                 ; aed4: f0 11
loc_aed6:
	cmp.b #$ac                   ; aed6: c9 ac
	.db $f0, $0d                 ; aed8: f0 0d
loc_aeda:
	cmp.b #$8f                   ; aeda: c9 8f
	.db $f0, $09                 ; aedc: f0 09
loc_aede:
	.db $80, $42                 ; aede: 80 42
loc_aee0:
	lda $26d2                    ; aee0: ad d2 26
	cmp.b #$d4                   ; aee3: c9 d4
	.db $d0, $3b                 ; aee5: d0 3b
loc_aee7:
	inc $38e7                    ; aee7: ee e7 38
	jmp $af7f                    ; aeea: 4c 7f af

; --- Block at $aeed-$af7c ---
loc_aeed:
	lda $2703                    ; aeed: ad 03 27
	and.b #$40                   ; aef0: 29 40
	.db $f0, $22                 ; aef2: f0 22
loc_aef4:
	lda $a9                      ; aef4: a5 a9
	.db $f0, $2a                 ; aef6: f0 2a
loc_aef8:
	cmp.b #$03                   ; aef8: c9 03
	.db $b0, $26                 ; aefa: b0 26
loc_aefc:
	cmp.b #$02                   ; aefc: c9 02
	.db $d0, $09                 ; aefe: d0 09
loc_af00:
	lda $26d2                    ; af00: ad d2 26
	cmp.b #$12                   ; af03: c9 12
	.db $f0, $78                 ; af05: f0 78
loc_af07:
	.db $80, $19                 ; af07: 80 19
loc_af09:
	lda $26d2                    ; af09: ad d2 26
	cmp.b #$d5                   ; af0c: c9 d5
	.db $f0, $6f                 ; af0e: f0 6f
loc_af10:
	cmp.b #$dd                   ; af10: c9 dd
	.db $f0, $6b                 ; af12: f0 6b
loc_af14:
	.db $80, $0c                 ; af14: 80 0c
loc_af16:
	lda $2705                    ; af16: ad 05 27
	and.b #$02                   ; af19: 29 02
	.db $d0, $05                 ; af1b: d0 05
loc_af1d:
	lda $2706                    ; af1d: ad 06 27
	.db $10, $5d                 ; af20: 10 5d
loc_af22:
	lda $ce                      ; af22: a5 ce
	.db $10, $10                 ; af24: 10 10
loc_af26:
	ldx.w #$0005                 ; af26: a2 05 00
	lda $289c,x                  ; af29: bd 9c 28
	.db $f0, $41                 ; af2c: f0 41
loc_af2e:
	inx                          ; af2e: e8
	cpx.w #$000d                 ; af2f: e0 0d 00
	.db $d0, $f5                 ; af32: d0 f5
loc_af34:
	.db $80, $0d                 ; af34: 80 0d
loc_af36:
	tdc                          ; af36: 7b
	tax                          ; af37: aa
	lda $289c,x                  ; af38: bd 9c 28
	.db $f0, $32                 ; af3b: f0 32
loc_af3d:
	inx                          ; af3d: e8
	cpx.w #$0005                 ; af3e: e0 05 00
	.db $d0, $f5                 ; af41: d0 f5
loc_af43:
	ldx $a6                      ; af43: a6 a6
	cpx.w #$0280                 ; af45: e0 80 02
	.db $90, $14                 ; af48: 90 14
loc_af4a:
	jsr $b358                    ; af4a: 20 58 b3
loc_af4d:
	lda $a9                      ; af4d: a5 a9
	.db $f0, $09                 ; af4f: f0 09
loc_af51:
	ldx $a6                      ; af51: a6 a6
	lda.b #$e1                   ; af53: a9 e1
	sta $2051,x                  ; af55: 9d 51 20
	.db $80, $25                 ; af58: 80 25
loc_af5a:
	lda.b #$e1                   ; af5a: a9 e1
	.db $80, $02                 ; af5c: 80 02
loc_af5e:
	lda.b #$21                   ; af5e: a9 21
loc_af60:
	ldx $a6                      ; af60: a6 a6
	sta $2051,x                  ; af62: 9d 51 20
	sta $33c2                    ; af65: 8d c2 33
	lda.b #$ff                   ; af68: a9 ff
	sta $33c3                    ; af6a: 8d c3 33
	.db $80, $10                 ; af6d: 80 10
loc_af6f:
	jsr $b0ae                    ; af6f: 20 ae b0
loc_af72:
	pha                          ; af72: 48
	lda $8b                      ; af73: a5 8b
	tax                          ; af75: aa
	lda.b #$01                   ; af76: a9 01
	sta $289c,x                  ; af78: 9d 9c 28
	pla                          ; af7b: 68
	jmp $ae42                    ; af7c: 4c 42 ae

; --- Block at $af7f-$b0ad ---
loc_af7f:
	lda $ce                      ; af7f: a5 ce
	.db $30, $78                 ; af81: 30 78
loc_af83:
	lda $2706                    ; af83: ad 06 27
	and.b #$02                   ; af86: 29 02
	.db $d0, $07                 ; af88: d0 07
loc_af8a:
	lda $2706                    ; af8a: ad 06 27
	and.b #$01                   ; af8d: 29 01
	.db $f0, $6a                 ; af8f: f0 6a
loc_af91:
	lda $26d1                    ; af91: ad d1 26
	cmp.b #$c0                   ; af94: c9 c0
	.db $d0, $63                 ; af96: d0 63
loc_af98:
	lda $355e                    ; af98: ad 5e 35
	.db $30, $5e                 ; af9b: 30 5e
loc_af9d:
	lda $cd                      ; af9d: a5 cd
	cmp $ce                      ; af9f: c5 ce
	.db $f0, $58                 ; afa1: f0 58
loc_afa3:
	cmp $355e                    ; afa3: cd 5e 35
	.db $f0, $53                 ; afa6: f0 53
loc_afa8:
	lda $355e                    ; afa8: ad 5e 35
	cmp $ce                      ; afab: c5 ce
	.db $f0, $4c                 ; afad: f0 4c
loc_afaf:
	lda $355e                    ; afaf: ad 5e 35
	jsr $8489                    ; afb2: 20 89 84
loc_afb5:
	ldx $a6                      ; afb5: a6 a6
	lda $2003,x                  ; afb7: bd 03 20
	and.b #$c0                   ; afba: 29 c0
	.db $d0, $38                 ; afbc: d0 38
loc_afbe:
	lda $2004,x                  ; afbe: bd 04 20
	and.b #$3c                   ; afc1: 29 3c
	.db $d0, $31                 ; afc3: d0 31
loc_afc5:
	lda $2005,x                  ; afc5: bd 05 20
	and.b #$50                   ; afc8: 29 50
	.db $d0, $2a                 ; afca: d0 2a
loc_afcc:
	lda $2006,x                  ; afcc: bd 06 20
	and.b #$01                   ; afcf: 29 01
	.db $d0, $23                 ; afd1: d0 23
loc_afd3:
	lda $34c5                    ; afd3: ad c5 34
	sta $34c6                    ; afd6: 8d c6 34
	ldx $355e                    ; afd9: ae 5e 35
	txa                          ; afdc: 8a
	sta $ce                      ; afdd: 85 ce
	tdc                          ; afdf: 7b
	jsr $855f                    ; afe0: 20 5f 85
loc_afe3:
	sta $34c5                    ; afe3: 8d c5 34
	lda $ce                      ; afe6: a5 ce
	jsr $b173                    ; afe8: 20 73 b1
loc_afeb:
	ldy.w #$007f                 ; afeb: a0 7f 00
	lda ($80),y                  ; afee: b1 80
	sta $2700,y                  ; aff0: 99 00 27
	dey                          ; aff3: 88
	.db $10, $f8                 ; aff4: 10 f8
loc_aff6:
	lda $d2                      ; aff6: a5 d2
	jsr $8489                    ; aff8: 20 89 84
loc_affb:
	lda $cd                      ; affb: a5 cd
	.db $10, $05                 ; affd: 10 05
loc_afff:
	and.b #$7f                   ; afff: 29 7f
	clc                          ; b001: 18
	adc.b #$05                   ; b002: 69 05
loc_b004:
	tax                          ; b004: aa
	stz $3560,x                  ; b005: 9e 60 35
	lda $d2                      ; b008: a5 d2
	jsr $8489                    ; b00a: 20 89 84
loc_b00d:
	ldx $a6                      ; b00d: a6 a6
	lda $2003,x                  ; b00f: bd 03 20
	and.b #$c0                   ; b012: 29 c0
	.db $d0, $07                 ; b014: d0 07
loc_b016:
	lda $2004,x                  ; b016: bd 04 20
	and.b #$30                   ; b019: 29 30
	.db $f0, $0f                 ; b01b: f0 0f
loc_b01d:
	lda $d2                      ; b01d: a5 d2
	cmp.b #$05                   ; b01f: c9 05
	.db $90, $04                 ; b021: 90 04
loc_b023:
	lda.b #$e1                   ; b023: a9 e1
	.db $80, $02                 ; b025: 80 02
loc_b027:
	lda.b #$21                   ; b027: a9 21
loc_b029:
	sta $2051,x                  ; b029: 9d 51 20
loc_b02c:
	jsr $b10f                    ; b02c: 20 0f b1
loc_b02f:
	tdc                          ; b02f: 7b
	lda $38b3                    ; b030: ad b3 38
	.db $d0, $1d                 ; b033: d0 1d
loc_b035:
	lda.w $00cd                  ; b035: ad cd 00
	.db $10, $18                 ; b038: 10 18
loc_b03a:
	tdc                          ; b03a: 7b
	tax                          ; b03b: aa
	lda $33c2,x                  ; b03c: bd c2 33
	cmp.b #$ff                   ; b03f: c9 ff
	.db $f0, $0f                 ; b041: f0 0f
loc_b043:
	cmp.b #$fc                   ; b043: c9 fc
	.db $f0, $03                 ; b045: f0 03
loc_b047:
	inx                          ; b047: e8
	.db $80, $f2                 ; b048: 80 f2
loc_b04a:
	lda.b #$ff                   ; b04a: a9 ff
	sta $3601                    ; b04c: 8d 01 36
	sta $3602                    ; b04f: 8d 02 36
loc_b052:
	lda $38e4                    ; b052: ad e4 38
	.db $d0, $03                 ; b055: d0 03
loc_b057:
	jsr $b298                    ; b057: 20 98 b2
loc_b05a:
	jsr $b1b0                    ; b05a: 20 b0 b1
loc_b05d:
	stz $38e4                    ; b05d: 9c e4 38
	tdc                          ; b060: 7b
	tax                          ; b061: aa
	lda $33c2,x                  ; b062: bd c2 33
	sta $289c,x                  ; b065: 9d 9c 28
	cmp.b #$ff                   ; b068: c9 ff
	.db $f0, $03                 ; b06a: f0 03
loc_b06c:
	inx                          ; b06c: e8
	.db $80, $f3                 ; b06d: 80 f3
loc_b06f:
	lda.b #$05                   ; b06f: a9 05
	jsr $8085                    ; b071: 20 85 80
loc_b074:
	lda.b #$0c                   ; b074: a9 0c
	jsr $8085                    ; b076: 20 85 80
loc_b079:
	lda.b #$0b                   ; b079: a9 0b
	jsr $8085                    ; b07b: 20 85 80
loc_b07e:
	lda $390a                    ; b07e: ad 0a 39
	.db $d0, $2a                 ; b081: d0 2a
loc_b083:
	stz $d6                      ; b083: 64 d6
	lda $cd                      ; b085: a5 cd
	.db $10, $05                 ; b087: 10 05
loc_b089:
	and.b #$7f                   ; b089: 29 7f
	clc                          ; b08b: 18
	adc.b #$05                   ; b08c: 69 05
loc_b08e:
	jsr $9e36                    ; b08e: 20 36 9e
loc_b091:
	ldx $3530                    ; b091: ae 30 35
	lda $2a09,x                  ; b094: bd 09 2a
	and.b #$76                   ; b097: 29 76
	sta $2a09,x                  ; b099: 9d 09 2a
	ldx $a6                      ; b09c: a6 a6
	lda $2004,x                  ; b09e: bd 04 20
	and.b #$30                   ; b0a1: 29 30
	.db $d0, $08                 ; b0a3: d0 08
loc_b0a5:
	lda.b #$03                   ; b0a5: a9 03
	jsr $85c8                    ; b0a7: 20 c8 85
loc_b0aa:
	stz $2a06,x                  ; b0aa: 9e 06 2a
loc_b0ad:
	rts                          ; b0ad: 60

; --- Block at $b0ae-$b106 ---
loc_b0ae:
	ldx.w #$0004                 ; b0ae: a2 04 00
	lda $ce                      ; b0b1: a5 ce
	.db $10, $03                 ; b0b3: 10 03
loc_b0b5:
	ldx.w #$0007                 ; b0b5: a2 07 00
loc_b0b8:
	txa                          ; b0b8: 8a
	ldx.w #$0000                 ; b0b9: a2 00 00
	jsr $8379                    ; b0bc: 20 79 83
loc_b0bf:
	sta $aa                      ; b0bf: 85 aa
	sta $8b                      ; b0c1: 85 8b
	lda $ce                      ; b0c3: a5 ce
	.db $10, $07                 ; b0c5: 10 07
loc_b0c7:
	clc                          ; b0c7: 18
	lda $8b                      ; b0c8: a5 8b
	adc.b #$05                   ; b0ca: 69 05
	sta $8b                      ; b0cc: 85 8b
loc_b0ce:
	lda $8b                      ; b0ce: a5 8b
	tax                          ; b0d0: aa
	lda $3540,x                  ; b0d1: bd 40 35
	.db $d0, $d8                 ; b0d4: d0 d8
loc_b0d6:
	lda $ce                      ; b0d6: a5 ce
	.db $10, $12                 ; b0d8: 10 12
loc_b0da:
	lda $8b                      ; b0da: a5 8b
	sta $df                      ; b0dc: 85 df
	lda.b #$80                   ; b0de: a9 80
	sta $e1                      ; b0e0: 85 e1
	jsr $83e0                    ; b0e2: 20 e0 83
loc_b0e5:
	ldx $e3                      ; b0e5: a6 e3
	lda $2001,x                  ; b0e7: bd 01 20
	.db $30, $c2                 ; b0ea: 30 c2
loc_b0ec:
	lda $aa                      ; b0ec: a5 aa
	tax                          ; b0ee: aa
	tdc                          ; b0ef: 7b
	jsr $855f                    ; b0f0: 20 5f 85
loc_b0f3:
	pha                          ; b0f3: 48
	lda $d2                      ; b0f4: a5 d2
	jsr $8489                    ; b0f6: 20 89 84
loc_b0f9:
	ldx $a6                      ; b0f9: a6 a6
	lda $ce                      ; b0fb: a5 ce
	.db $30, $08                 ; b0fd: 30 08
loc_b0ff:
	pla                          ; b0ff: 68
	sta $2054,x                  ; b100: 9d 54 20
	sta $26d4                    ; b103: 8d d4 26
	rts                          ; b106: 60

; --- Block at $b107-$b10e ---
loc_b107:
	pla                          ; b107: 68
	sta $2053,x                  ; b108: 9d 53 20
	sta $26d3                    ; b10b: 8d d3 26
	rts                          ; b10e: 60

; --- Block at $b10f-$b173 ---
loc_b10f:
	lda $d2                      ; b10f: a5 d2
	cmp.b #$05                   ; b111: c9 05
	.db $90, $17                 ; b113: 90 17
loc_b115:
	ldx $a6                      ; b115: a6 a6
	lda $2051,x                  ; b117: bd 51 20
	cmp.b #$c0                   ; b11a: c9 c0
	.db $90, $04                 ; b11c: 90 04
loc_b11e:
	cmp.b #$e1                   ; b11e: c9 e1
	.db $90, $02                 ; b120: 90 02
loc_b122:
	lda.b #$e1                   ; b122: a9 e1
loc_b124:
	sta $35ff                    ; b124: 8d ff 35
	sec                          ; b127: 38
	sbc.b #$c0                   ; b128: e9 c0
	.db $80, $32                 ; b12a: 80 32
loc_b12c:
	lda.b #$f8                   ; b12c: a9 f8
	sta $33c2                    ; b12e: 8d c2 33
	lda.b #$02                   ; b131: a9 02
	sta $33c3                    ; b133: 8d c3 33
	ldx $a6                      ; b136: a6 a6
	lda $2051,x                  ; b138: bd 51 20
	cmp.b #$02                   ; b13b: c9 02
	.db $f0, $08                 ; b13d: f0 08
loc_b13f:
	cmp.b #$07                   ; b13f: c9 07
	.db $f0, $04                 ; b141: f0 04
loc_b143:
	cmp.b #$20                   ; b143: c9 20
	.db $d0, $03                 ; b145: d0 03
loc_b147:
	inc $355d                    ; b147: ee 5d 35
loc_b14a:
	pha                          ; b14a: 48
	clc                          ; b14b: 18
	adc.b #$c0                   ; b14c: 69 c0
	sta $33c4                    ; b14e: 8d c4 33
	cmp.b #$c1                   ; b151: c9 c1
	.db $d0, $02                 ; b153: d0 02
loc_b155:
	lda.b #$c2                   ; b155: a9 c2
loc_b157:
	sta $35ff                    ; b157: 8d ff 35
	stz $33c5                    ; b15a: 9c c5 33
	pla                          ; b15d: 68
loc_b15e:
	asl                          ; b15e: 0a
	tax                          ; b15f: aa
	lda $03b37c,x                ; b160: bf 7c b3 03
	sta $80                      ; b164: 85 80
	lda $03b37d,x                ; b166: bf 7d b3 03
	sta $81                      ; b16a: 85 81
	lda.b #$03                   ; b16c: a9 03
	sta $82                      ; b16e: 85 82
	jml.w [$0080]                ; b170: dc 80 00

; --- Block at $b173-$b18f ---
loc_b173:
	pha                          ; b173: 48
	and.b #$7f                   ; b174: 29 7f
	sta $df                      ; b176: 85 df
	lda.b #$80                   ; b178: a9 80
	sta $e1                      ; b17a: 85 e1
	jsr $83e0                    ; b17c: 20 e0 83
loc_b17f:
	pla                          ; b17f: 68
	.db $30, $0e                 ; b180: 30 0e
loc_b182:
	clc                          ; b182: 18
	lda $e3                      ; b183: a5 e3
	adc.b #$00                   ; b185: 69 00
	sta $80                      ; b187: 85 80
	lda $e4                      ; b189: a5 e4
	adc.b #$20                   ; b18b: 69 20
	sta $81                      ; b18d: 85 81
	rts                          ; b18f: 60

; --- Block at $b190-$b19d ---
loc_b190:
	clc                          ; b190: 18
	lda $e3                      ; b191: a5 e3
	adc.b #$80                   ; b193: 69 80
	sta $80                      ; b195: 85 80
	lda $e4                      ; b197: a5 e4
	adc.b #$22                   ; b199: 69 22
	sta $81                      ; b19b: 85 81
	rts                          ; b19d: 60

; --- Block at $b19e-$b1af ---
loc_b19e:
	sta $34c5                    ; b19e: 8d c5 34
	jsr $850c                    ; b1a1: 20 0c 85
loc_b1a4:
	dex                          ; b1a4: ca
	.db $f0, $08                 ; b1a5: f0 08
loc_b1a7:
	lda $34c4                    ; b1a7: ad c4 34
	ora.b #$40                   ; b1aa: 09 40
	sta $34c4                    ; b1ac: 8d c4 34
loc_b1af:
	rts                          ; b1af: 60

; --- Block at $b1b0-$b291 ---
loc_b1b0:
	tdc                          ; b1b0: 7b
	tax                          ; b1b1: aa
	stx $a9                      ; b1b2: 86 a9
	lda $a9                      ; b1b4: a5 a9
	jsr $8489                    ; b1b6: 20 89 84
loc_b1b9:
	ldx $a6                      ; b1b9: a6 a6
	lda $a9                      ; b1bb: a5 a9
	jsr $847f                    ; b1bd: 20 7f 84
loc_b1c0:
	tay                          ; b1c0: a8
	lda $338e,y                  ; b1c1: b9 8e 33
	ora $2003,x                  ; b1c4: 1d 03 20
	sta $2003,x                  ; b1c7: 9d 03 20
	and.b #$c0                   ; b1ca: 29 c0
	.db $f0, $76                 ; b1cc: f0 76
loc_b1ce:
	and.b #$80                   ; b1ce: 29 80
	.db $f0, $06                 ; b1d0: f0 06
loc_b1d2:
	stz $2007,x                  ; b1d2: 9e 07 20
	stz $2008,x                  ; b1d5: 9e 08 20
loc_b1d8:
	phx                          ; b1d8: da
	lda $a9                      ; b1d9: a5 a9
	asl                          ; b1db: 0a
	tax                          ; b1dc: aa
	tdc                          ; b1dd: 7b
	sta $29eb,x                  ; b1de: 9d eb 29
	lda $a9                      ; b1e1: a5 a9
	cmp.b #$05                   ; b1e3: c9 05
	.db $90, $4f                 ; b1e5: 90 4f
loc_b1e7:
	sec                          ; b1e7: 38
	sbc.b #$05                   ; b1e8: e9 05
	tax                          ; b1ea: aa
	lda $29bd,x                  ; b1eb: bd bd 29
	sta $aa                      ; b1ee: 85 aa
	lda $29b5,x                  ; b1f0: bd b5 29
	.db $30, $34                 ; b1f3: 30 34
loc_b1f5:
	lda.b #$ff                   ; b1f5: a9 ff
	sta $29b5,x                  ; b1f7: 9d b5 29
	lda $aa                      ; b1fa: a5 aa
	tax                          ; b1fc: aa
	lda $29ca,x                  ; b1fd: bd ca 29
	.db $f0, $03                 ; b200: f0 03
loc_b202:
	dec $29ca,x                  ; b202: de ca 29
loc_b205:
	plx                          ; b205: fa
	phx                          ; b206: da
	lda $2051,x                  ; b207: bd 51 20
	cmp.b #$e4                   ; b20a: c9 e4
	.db $f0, $0b                 ; b20c: f0 0b
loc_b20e:
	lda $3882                    ; b20e: ad 82 38
	.db $d0, $06                 ; b211: d0 06
loc_b213:
	lda $aa                      ; b213: a5 aa
	tax                          ; b215: aa
	inc $3585,x                  ; b216: fe 85 35
loc_b219:
	lda $aa                      ; b219: a5 aa
	tax                          ; b21b: aa
	lda $29ca,x                  ; b21c: bd ca 29
	.db $d0, $08                 ; b21f: d0 08
loc_b221:
	lda $aa                      ; b221: a5 aa
	tax                          ; b223: aa
	lda.b #$ff                   ; b224: a9 ff
	sta $29ad,x                  ; b226: 9d ad 29
loc_b229:
	clc                          ; b229: 18
	lda $29ca                    ; b22a: ad ca 29
	adc $29cb                    ; b22d: 6d cb 29
	adc $29cc                    ; b230: 6d cc 29
	sta $29cd                    ; b233: 8d cd 29
loc_b236:
	plx                          ; b236: fa
	lda $2003,x                  ; b237: bd 03 20
	and.b #$80                   ; b23a: 29 80
	.db $f0, $06                 ; b23c: f0 06
loc_b23e:
	stz $2007,x                  ; b23e: 9e 07 20
	stz $2008,x                  ; b241: 9e 08 20
loc_b244:
	iny                          ; b244: c8
	lda $338e,y                  ; b245: b9 8e 33
	ora $2004,x                  ; b248: 1d 04 20
	sta $2004,x                  ; b24b: 9d 04 20
	iny                          ; b24e: c8
	lda $338e,y                  ; b24f: b9 8e 33
	ora $2005,x                  ; b252: 1d 05 20
	sta $2005,x                  ; b255: 9d 05 20
	iny                          ; b258: c8
	lda $338e,y                  ; b259: b9 8e 33
	ora $2006,x                  ; b25c: 1d 06 20
	sta $2006,x                  ; b25f: 9d 06 20
	lda $2003,x                  ; b262: bd 03 20
	and.b #$c0                   ; b265: 29 c0
	.db $f0, $20                 ; b267: f0 20
loc_b269:
	lda $2003,x                  ; b269: bd 03 20
	and.b #$fe                   ; b26c: 29 fe
	sta $2003,x                  ; b26e: 9d 03 20
	lda $2004,x                  ; b271: bd 04 20
	and.b #$c0                   ; b274: 29 c0
	sta $2004,x                  ; b276: 9d 04 20
	lda $2005,x                  ; b279: bd 05 20
	and.b #$a2                   ; b27c: 29 a2
	sta $2005,x                  ; b27e: 9d 05 20
	lda $2006,x                  ; b281: bd 06 20
	and.b #$80                   ; b284: 29 80
	sta $2006,x                  ; b286: 9d 06 20
loc_b289:
	inc $a9                      ; b289: e6 a9
	lda $a9                      ; b28b: a5 a9
	cmp.b #$0d                   ; b28d: c9 0d
	.db $f0, $03                 ; b28f: f0 03
loc_b291:
	jmp $b1b4                    ; b291: 4c b4 b1

; --- Block at $b294-$b297 ---
loc_b294:
	stz $3882                    ; b294: 9c 82 38
	rts                          ; b297: 60

; --- Block at $b298-$b2e6 ---
loc_b298:
	lda $34c4                    ; b298: ad c4 34
	.db $10, $49                 ; b29b: 10 49
loc_b29d:
	lda $34c5                    ; b29d: ad c5 34
	sta $a9                      ; b2a0: 85 a9
	tdc                          ; b2a2: 7b
	tax                          ; b2a3: aa
	asl $a9                      ; b2a4: 06 a9
	.db $90, $38                 ; b2a6: 90 38
loc_b2a8:
	txa                          ; b2a8: 8a
	jsr $847c                    ; b2a9: 20 7c 84
loc_b2ac:
	tay                          ; b2ac: a8
	sty $ab                      ; b2ad: 84 ab
	lda $35f7,x                  ; b2af: bd f7 35
	inc                          ; b2b2: 1a
	cmp.b #$04                   ; b2b3: c9 04
	.db $d0, $07                 ; b2b5: d0 07
loc_b2b7:
	phx                          ; b2b7: da
	jsr $b2e7                    ; b2b8: 20 e7 b2
loc_b2bb:
	plx                          ; b2bb: fa
	lda.b #$03                   ; b2bc: a9 03
loc_b2be:
	sta $35f7,x                  ; b2be: 9d f7 35
	jsr $847f                    ; b2c1: 20 7f 84
loc_b2c4:
	clc                          ; b2c4: 18
	adc $ab                      ; b2c5: 65 ab
	tay                          ; b2c7: a8
	lda $cd                      ; b2c8: a5 cd
	sta $2b78,y                  ; b2ca: 99 78 2b
	lda $35ff                    ; b2cd: ad ff 35
	sta $2b79,y                  ; b2d0: 99 79 2b
	tdc                          ; b2d3: 7b
	sta $2b7a,y                  ; b2d4: 99 7a 2b
	lda $3600                    ; b2d7: ad 00 36
	sta $2b7b,y                  ; b2da: 99 7b 2b
	stz $3600                    ; b2dd: 9c 00 36
loc_b2e0:
	inx                          ; b2e0: e8
	cpx.w #$0008                 ; b2e1: e0 08 00
	.db $d0, $be                 ; b2e4: d0 be
loc_b2e6:
	rts                          ; b2e6: 60

; --- Block at $b2e7-$b30c ---
loc_b2e7:
	phx                          ; b2e7: da
	tdc                          ; b2e8: 7b
	tay                          ; b2e9: a8
	ldx $ab                      ; b2ea: a6 ab
	lda $2b78,x                  ; b2ec: bd 78 2b
	sta $289c,y                  ; b2ef: 99 9c 28
	inx                          ; b2f2: e8
	iny                          ; b2f3: c8
	cpy.w #$0020                 ; b2f4: c0 20 00
	.db $d0, $f3                 ; b2f7: d0 f3
loc_b2f9:
	ldy.w #$0004                 ; b2f9: a0 04 00
	ldx $ab                      ; b2fc: a6 ab
	lda $289c,y                  ; b2fe: b9 9c 28
	sta $2b78,x                  ; b301: 9d 78 2b
	inx                          ; b304: e8
	iny                          ; b305: c8
	cpy.w #$0024                 ; b306: c0 24 00
	.db $d0, $f3                 ; b309: d0 f3
loc_b30b:
	plx                          ; b30b: fa
	rts                          ; b30c: 60

; --- Block at $b30d-$b34e ---
loc_b30d:
	lda.b #$ff                   ; b30d: a9 ff
	ldx.w #$00ff                 ; b30f: a2 ff 00
	sta $33c2,x                  ; b312: 9d c2 33
	dex                          ; b315: ca
	.db $10, $fa                 ; b316: 10 fa
loc_b318:
	ldx.w #$0011                 ; b318: a2 11 00
	stz $34c2,x                  ; b31b: 9e c2 34
	dex                          ; b31e: ca
	.db $10, $fa                 ; b31f: 10 fa
loc_b321:
	stz $3528                    ; b321: 9c 28 35
	stz $3529                    ; b324: 9c 29 35
	stz $352a                    ; b327: 9c 2a 35
	ldx.w #$0033                 ; b32a: a2 33 00
	stz $338e,x                  ; b32d: 9e 8e 33
	dex                          ; b330: ca
	.db $10, $fa                 ; b331: 10 fa
loc_b333:
	lda.b #$ff                   ; b333: a9 ff
	ldx.w #$0009                 ; b335: a2 09 00
	sta $34ca,x                  ; b338: 9d ca 34
	dex                          ; b33b: ca
	.db $10, $fa                 ; b33c: 10 fa
loc_b33e:
	lda $3601                    ; b33e: ad 01 36
	cmp.b #$ff                   ; b341: c9 ff
	.db $d0, $09                 ; b343: d0 09
loc_b345:
	ldx.w #$004d                 ; b345: a2 4d 00
	stz $34d4,x                  ; b348: 9e d4 34
	dex                          ; b34b: ca
	.db $10, $fa                 ; b34c: 10 fa
loc_b34e:
	rts                          ; b34e: 60

; --- Block at $b358-$b37b ---
loc_b358:
	tdc                          ; b358: 7b
	tax                          ; b359: aa
	stx $a9                      ; b35a: 86 a9
	lda $33c2,x                  ; b35c: bd c2 33
	cmp.b #$ff                   ; b35f: c9 ff
	.db $f0, $18                 ; b361: f0 18
loc_b363:
	cmp.b #$fc                   ; b363: c9 fc
	.db $f0, $03                 ; b365: f0 03
loc_b367:
	inx                          ; b367: e8
	.db $80, $f2                 ; b368: 80 f2
loc_b36a:
	inc $a9                      ; b36a: e6 a9
	lda.b #$e1                   ; b36c: a9 e1
	sta $33c2                    ; b36e: 8d c2 33
	lda.b #$fc                   ; b371: a9 fc
	sta $33c3                    ; b373: 8d c3 33
	lda.b #$ff                   ; b376: a9 ff
	sta $33c4                    ; b378: 8d c4 33
loc_b37b:
	rts                          ; b37b: 60

; --- Block at $b69f-$b6b3 ---
loc_b69f:
	lda $361c                    ; b69f: ad 1c 36
	tax                          ; b6a2: aa
	lda $3883,x                  ; b6a3: bd 83 38
	.db $f0, $0e                 ; b6a6: f0 0e
loc_b6a8:
	stz $3883,x                  ; b6a8: 9e 83 38
	ldx $a6                      ; b6ab: a6 a6
	sta $2054,x                  ; b6ad: 9d 54 20
	stz $2053,x                  ; b6b0: 9e 53 20
	jmp $b75b                    ; b6b3: 4c 5b b7

; --- Block at $b6b6-$b6bf ---
loc_b6b6:
	lda $361c                    ; b6b6: ad 1c 36
	tax                          ; b6b9: aa
	lda $3879,x                  ; b6ba: bd 79 38
	.db $f0, $03                 ; b6bd: f0 03
loc_b6bf:
	jmp $b75b                    ; b6bf: 4c 5b b7

; --- Block at $b6c2-$b6cb ---
loc_b6c2:
	ldx $a6                      ; b6c2: a6 a6
	lda $2051,x                  ; b6c4: bd 51 20
	cmp.b #$c2                   ; b6c7: c9 c2
	.db $f0, $03                 ; b6c9: f0 03
loc_b6cb:
	jmp $b754                    ; b6cb: 4c 54 b7

; --- Block at $b6ce-$b6eb ---
loc_b6ce:
	lda $2052,x                  ; b6ce: bd 52 20
	cmp.b #$31                   ; b6d1: c9 31
	.db $b0, $1d                 ; b6d3: b0 1d
loc_b6d5:
	tax                          ; b6d5: aa
	stx $e5                      ; b6d6: 86 e5
	ldx.w #$97a0                 ; b6d8: a2 a0 97
	stx $80                      ; b6db: 86 80
	lda.b #$0f                   ; b6dd: a9 0f
	sta $82                      ; b6df: 85 82
	lda.b #$06                   ; b6e1: a9 06
	jsr $845e                    ; b6e3: 20 5e 84
loc_b6e6:
	lda $289c                    ; b6e6: ad 9c 28
	.db $10, $03                 ; b6e9: 10 03
loc_b6eb:
	jmp $b754                    ; b6eb: 4c 54 b7

; --- Block at $b6ee-$b6f2 ---
loc_b6ee:
	lda.b #$08                   ; b6ee: a9 08
	.db $80, $64                 ; b6f0: 80 64

; --- Block at $b6f2-$b751 ---
loc_b6f2:
	cmp.b #$5f                   ; b6f2: c9 5f
	.db $b0, $30                 ; b6f4: b0 30
loc_b6f6:
	sec                          ; b6f6: 38
	sbc.b #$30                   ; b6f7: e9 30
	ldx $a6                      ; b6f9: a6 a6
	sta $2052,x                  ; b6fb: 9d 52 20
	tax                          ; b6fe: aa
	stx $e5                      ; b6ff: 86 e5
	ldx.w #$97a0                 ; b701: a2 a0 97
	stx $80                      ; b704: 86 80
	lda.b #$0f                   ; b706: a9 0f
	sta $82                      ; b708: 85 82
	lda.b #$06                   ; b70a: a9 06
	jsr $845e                    ; b70c: 20 5e 84
loc_b70f:
	ldx $a6                      ; b70f: a6 a6
	lda $289c                    ; b711: ad 9c 28
	.db $30, $07                 ; b714: 30 07
loc_b716:
	lda.b #$ff                   ; b716: a9 ff
	sta $2053,x                  ; b718: 9d 53 20
	.db $80, $3e                 ; b71b: 80 3e
loc_b71d:
	lda.b #$f8                   ; b71d: a9 f8
	ldx $a6                      ; b71f: a6 a6
	sta $2054,x                  ; b721: 9d 54 20
	.db $80, $35                 ; b724: 80 35
loc_b726:
	tax                          ; b726: aa
	stx $e5                      ; b727: 86 e5
	ldx.w #$97a0                 ; b729: a2 a0 97
	stx $80                      ; b72c: 86 80
	lda.b #$0f                   ; b72e: a9 0f
	sta $82                      ; b730: 85 82
	lda.b #$06                   ; b732: a9 06
	jsr $845e                    ; b734: 20 5e 84
loc_b737:
	lda $289c                    ; b737: ad 9c 28
	and.b #$e0                   ; b73a: 29 e0
	.db $d0, $0f                 ; b73c: d0 0f
loc_b73e:
	lda $361c                    ; b73e: ad 1c 36
	tax                          ; b741: aa
	tdc                          ; b742: 7b
	jsr $855f                    ; b743: 20 5f 85
loc_b746:
	ldx $a6                      ; b746: a6 a6
	sta $2053,x                  ; b748: 9d 53 20
	.db $80, $0e                 ; b74b: 80 0e
loc_b74d:
	and.b #$40                   ; b74d: 29 40
	.db $d0, $be                 ; b74f: d0 be
loc_b751:
	jmp $b6e6                    ; b751: 4c e6 b6

; --- Block at $b754-$b75b ---
loc_b754:
	lda.b #$05                   ; b754: a9 05
	sta $ab                      ; b756: 85 ab
	jsr $bc41                    ; b758: 20 41 bc

; --- Block at $b75b-$b75b ---
loc_b75b:
	rts                          ; b75b: 60

; --- Block at $b77f-$b78a ---
loc_b77f:
	ldx $a6                      ; b77f: a6 a6
	cmp.b #$e8                   ; b781: c9 e8
	.db $d0, $08                 ; b783: d0 08
loc_b785:
	lda $a9                      ; b785: a5 a9
	sta $2040,x                  ; b787: 9d 40 20
	jmp $b80e                    ; b78a: 4c 0e b8

; --- Block at $b78d-$b7a8 ---
loc_b78d:
	cmp.b #$e9                   ; b78d: c9 e9
	.db $d0, $18                 ; b78f: d0 18
loc_b791:
	lda $a9                      ; b791: a5 a9
	jsr $9493                    ; b793: 20 93 94
loc_b796:
	lda $291c                    ; b796: ad 1c 29
	sta $201b,x                  ; b799: 9d 1b 20
	lda $291d                    ; b79c: ad 1d 29
	sta $201c,x                  ; b79f: 9d 1c 20
	lda $291e                    ; b7a2: ad 1e 29
	sta $201d,x                  ; b7a5: 9d 1d 20
	rts                          ; b7a8: 60

; --- Block at $b7a9-$b7c4 ---
loc_b7a9:
	cmp.b #$ea                   ; b7a9: c9 ea
	.db $d0, $18                 ; b7ab: d0 18
loc_b7ad:
	lda $a9                      ; b7ad: a5 a9
	jsr $9493                    ; b7af: 20 93 94
loc_b7b2:
	lda $291c                    ; b7b2: ad 1c 29
	sta $2028,x                  ; b7b5: 9d 28 20
	lda $291d                    ; b7b8: ad 1d 29
	sta $2029,x                  ; b7bb: 9d 29 20
	lda $291e                    ; b7be: ad 1e 29
	sta $202a,x                  ; b7c1: 9d 2a 20
	rts                          ; b7c4: 60

; --- Block at $b7c5-$b7e0 ---
loc_b7c5:
	cmp.b #$eb                   ; b7c5: c9 eb
	.db $d0, $18                 ; b7c7: d0 18
loc_b7c9:
	lda $a9                      ; b7c9: a5 a9
	jsr $9493                    ; b7cb: 20 93 94
loc_b7ce:
	lda $291c                    ; b7ce: ad 1c 29
	sta $2022,x                  ; b7d1: 9d 22 20
	lda $291d                    ; b7d4: ad 1d 29
	sta $2024,x                  ; b7d7: 9d 24 20
	lda $291e                    ; b7da: ad 1e 29
	sta $2024,x                  ; b7dd: 9d 24 20
	rts                          ; b7e0: 60

; --- Block at $b7e1-$b7e5 ---
loc_b7e1:
	cmp.b #$ec                   ; b7e1: c9 ec
	.db $d0, $03                 ; b7e3: d0 03
loc_b7e5:
	jmp $b80f                    ; b7e5: 4c 0f b8

; --- Block at $b7e8-$b7f9 ---
loc_b7e8:
	cmp.b #$ed                   ; b7e8: c9 ed
	.db $d0, $0e                 ; b7ea: d0 0e
loc_b7ec:
	lda $a9                      ; b7ec: a5 a9
	sta $2025,x                  ; b7ee: 9d 25 20
	.db $10, $1b                 ; b7f1: 10 1b
loc_b7f3:
	sta $2026,x                  ; b7f3: 9d 26 20
	stz $2025,x                  ; b7f6: 9e 25 20
	rts                          ; b7f9: 60

; --- Block at $b7fa-$b803 ---
loc_b7fa:
	cmp.b #$ee                   ; b7fa: c9 ee
	.db $d0, $06                 ; b7fc: d0 06
loc_b7fe:
	lda $a9                      ; b7fe: a5 a9
	sta $2017,x                  ; b800: 9d 17 20
	rts                          ; b803: 60

; --- Block at $b804-$b80e ---
loc_b804:
	lda $a9                      ; b804: a5 a9
	.db $10, $03                 ; b806: 10 03
loc_b808:
	sta $2021,x                  ; b808: 9d 21 20
loc_b80b:
	sta $2020,x                  ; b80b: 9d 20 20

; --- Block at $b80e-$b80e ---
loc_b80e:
	rts                          ; b80e: 60

; --- Block at $b80f-$b868 ---
loc_b80f:
	phx                          ; b80f: da
	lda $a9                      ; b810: a5 a9
	sta $393d                    ; b812: 8d 3d 39
	stz $393e                    ; b815: 9c 3e 39
	lda $2060,x                  ; b818: bd 60 20
	sta $393f                    ; b81b: 8d 3f 39
	lda $2061,x                  ; b81e: bd 61 20
	sta $3940                    ; b821: 8d 40 39
	jsr $83b9                    ; b824: 20 b9 83
loc_b827:
	ldx $3941                    ; b827: ae 41 39
	stx $393d                    ; b82a: 8e 3d 39
	ldx.w #$0064                 ; b82d: a2 64 00
	stx $393f                    ; b830: 8e 3f 39
	jsr $83b9                    ; b833: 20 b9 83
loc_b836:
	ldx $3941                    ; b836: ae 41 39
	stx $3945                    ; b839: 8e 45 39
	ldx.w #$03e8                 ; b83c: a2 e8 03
	stx $3947                    ; b83f: 8e 47 39
	jsr $8407                    ; b842: 20 07 84
loc_b845:
	lda $3949                    ; b845: ad 49 39
	ora $394a                    ; b848: 0d 4a 39
	.db $d0, $03                 ; b84b: d0 03
loc_b84d:
	inc $3949                    ; b84d: ee 49 39
loc_b850:
	plx                          ; b850: fa
	lda $a9                      ; b851: a5 a9
	.db $30, $14                 ; b853: 30 14
loc_b855:
	clc                          ; b855: 18
	lda $2060,x                  ; b856: bd 60 20
	adc $3949                    ; b859: 6d 49 39
	sta $2060,x                  ; b85c: 9d 60 20
	lda $2061,x                  ; b85f: bd 61 20
	adc $394a                    ; b862: 6d 4a 39
	sta $2061,x                  ; b865: 9d 61 20
	rts                          ; b868: 60

; --- Block at $b869-$b886 ---
loc_b869:
	sec                          ; b869: 38
	lda $2060,x                  ; b86a: bd 60 20
	sbc $3949                    ; b86d: ed 49 39
	sta $2060,x                  ; b870: 9d 60 20
	lda $2061,x                  ; b873: bd 61 20
	sbc $394a                    ; b876: ed 4a 39
	sta $2061,x                  ; b879: 9d 61 20
	.db $b0, $08                 ; b87c: b0 08
loc_b87e:
	lda.b #$01                   ; b87e: a9 01
	sta $2060,x                  ; b880: 9d 60 20
	stz $2061,x                  ; b883: 9e 61 20
loc_b886:
	rts                          ; b886: 60

; --- Block at $b887-$b8b0 ---
loc_b887:
	sec                          ; b887: 38
	sbc.b #$f4                   ; b888: e9 f4
	tay                          ; b88a: a8
	lda $a9                      ; b88b: a5 a9
	pha                          ; b88d: 48
	and.b #$3f                   ; b88e: 29 3f
	sta $a9                      ; b890: 85 a9
	pla                          ; b892: 68
	and.b #$c0                   ; b893: 29 c0
	.db $d0, $08                 ; b895: d0 08
loc_b897:
	clc                          ; b897: 18
	lda $a9                      ; b898: a5 a9
	adc $35f3,y                  ; b89a: 79 f3 35
	.db $80, $0e                 ; b89d: 80 0e
loc_b89f:
	and.b #$80                   ; b89f: 29 80
	.db $d0, $08                 ; b8a1: d0 08
loc_b8a3:
	sec                          ; b8a3: 38
	lda $35f3,y                  ; b8a4: b9 f3 35
	sbc $a9                      ; b8a7: e5 a9
	.db $80, $02                 ; b8a9: 80 02
loc_b8ab:
	lda $a9                      ; b8ab: a5 a9
loc_b8ad:
	sta $35f3,y                  ; b8ad: 99 f3 35
	rts                          ; b8b0: 60

; --- Block at $b8b1-$b90d ---
loc_b8b1:
	stx $88                      ; b8b1: 86 88
	lda $361c                    ; b8b3: ad 1c 36
	tax                          ; b8b6: aa
	inc $3879,x                  ; b8b7: fe 79 38
	ldx $a6                      ; b8ba: a6 a6
	stz $2053,x                  ; b8bc: 9e 53 20
	stz $2054,x                  ; b8bf: 9e 54 20
	lda $a9                      ; b8c2: a5 a9
	cmp.b #$16                   ; b8c4: c9 16
	.db $90, $18                 ; b8c6: 90 18
loc_b8c8:
	sec                          ; b8c8: 38
	sbc.b #$16                   ; b8c9: e9 16
	asl                          ; b8cb: 0a
	tax                          ; b8cc: aa
	lda $03bbc6,x                ; b8cd: bf c6 bb 03
	sta $a9                      ; b8d1: 85 a9
	lda $03bbc7,x                ; b8d3: bf c7 bb 03
	sta $aa                      ; b8d7: 85 aa
	lda.b #$03                   ; b8d9: a9 03
	sta $ab                      ; b8db: 85 ab
	jml.w [$00a9]                ; b8dd: dc a9 00
loc_b8e0:
	tdc                          ; b8e0: 7b
	tax                          ; b8e1: aa
	tay                          ; b8e2: a8
	lda $3540,y                  ; b8e3: b9 40 35
	.db $d0, $1c                 ; b8e6: d0 1c
loc_b8e8:
	lda $2000,x                  ; b8e8: bd 00 20
	and.b #$1f                   ; b8eb: 29 1f
	cmp $a9                      ; b8ed: c5 a9
	.db $d0, $13                 ; b8ef: d0 13
loc_b8f1:
	lda $2003,x                  ; b8f1: bd 03 20
	and.b #$c0                   ; b8f4: 29 c0
	.db $d0, $15                 ; b8f6: d0 15
loc_b8f8:
	lda $2005,x                  ; b8f8: bd 05 20
	and.b #$82                   ; b8fb: 29 82
	.db $d0, $0e                 ; b8fd: d0 0e
loc_b8ff:
	lda $2006,x                  ; b8ff: bd 06 20
	.db $10, $0c                 ; b902: 10 0c
loc_b904:
	jsr $85bc                    ; b904: 20 bc 85
loc_b907:
	iny                          ; b907: c8
	cpy.w #$0005                 ; b908: c0 05 00
	.db $d0, $d6                 ; b90b: d0 d6
loc_b90d:
	jmp $bb89                    ; b90d: 4c 89 bb

; --- Block at $b910-$b919 ---
loc_b910:
	ldx $a6                      ; b910: a6 a6
	sec                          ; b912: 38
	ror $2054,x                  ; b913: 7e 54 20
	dey                          ; b916: 88
	.db $10, $fa                 ; b917: 10 fa
loc_b919:
	rts                          ; b919: 60

; --- Block at $bb89-$bbc5 ---
loc_bb89:
	lda $38b3                    ; bb89: ad b3 38
	.db $f0, $19                 ; bb8c: f0 19
loc_bb8e:
	jsr $c441                    ; bb8e: 20 41 c4
loc_bb91:
	lda $a9                      ; bb91: a5 a9
	.db $d0, $29                 ; bb93: d0 29
loc_bb95:
	ldx $38bb                    ; bb95: ae bb 38
	lda.b #$e1                   ; bb98: a9 e1
	sta $3659,x                  ; bb9a: 9d 59 36
	tdc                          ; bb9d: 7b
	sta $365a,x                  ; bb9e: 9d 5a 36
	dec                          ; bba1: 3a
	sta $365b,x                  ; bba2: 9d 5b 36
	.db $80, $17                 ; bba5: 80 17
loc_bba7:
	ldx $88                      ; bba7: a6 88
	inx                          ; bba9: e8
	jsr $c46e                    ; bbaa: 20 6e c4
loc_bbad:
	lda $a9                      ; bbad: a5 a9
	.db $d0, $0d                 ; bbaf: d0 0d
loc_bbb1:
	lda.b #$e1                   ; bbb1: a9 e1
	sta $3839,x                  ; bbb3: 9d 39 38
	tdc                          ; bbb6: 7b
	sta $383a,x                  ; bbb7: 9d 3a 38
	dec                          ; bbba: 3a
	sta $383b,x                  ; bbbb: 9d 3b 38
loc_bbbe:
	lda.b #$e1                   ; bbbe: a9 e1
	ldx $a6                      ; bbc0: a6 a6
	sta $2051,x                  ; bbc2: 9d 51 20
	rts                          ; bbc5: 60

; --- Block at $bc02-$bc21 ---
loc_bc02:
	sec                          ; bc02: 38
	lda $d2                      ; bc03: a5 d2
	sbc.b #$05                   ; bc05: e9 05
	sta $df                      ; bc07: 85 df
	lda.b #$3c                   ; bc09: a9 3c
	sta $e1                      ; bc0b: 85 e1
	jsr $83e0                    ; bc0d: 20 e0 83
loc_bc10:
	ldy.w #$003c                 ; bc10: a0 3c 00
	ldx $e3                      ; bc13: a6 e3
	stx $38bb                    ; bc15: 8e bb 38
	lda.b #$ff                   ; bc18: a9 ff
	sta $3659,x                  ; bc1a: 9d 59 36
	inx                          ; bc1d: e8
	dey                          ; bc1e: 88
	.db $d0, $f9                 ; bc1f: d0 f9
loc_bc21:
	rts                          ; bc21: 60

; --- Block at $bc41-$bc92 ---
loc_bc41:
	lda $ab                      ; bc41: a5 ab
	cmp.b #$08                   ; bc43: c9 08
	.db $f0, $4c                 ; bc45: f0 4c
loc_bc47:
	tdc                          ; bc47: 7b
	tax                          ; bc48: aa
	tay                          ; bc49: a8
	stx $a9                      ; bc4a: 86 a9
	lda $3540,y                  ; bc4c: b9 40 35
	.db $d0, $17                 ; bc4f: d0 17
loc_bc51:
	lda $2003,x                  ; bc51: bd 03 20
	and.b #$c0                   ; bc54: 29 c0
	.db $d0, $10                 ; bc56: d0 10
loc_bc58:
	lda $2005,x                  ; bc58: bd 05 20
	and.b #$82                   ; bc5b: 29 82
	.db $d0, $09                 ; bc5d: d0 09
loc_bc5f:
	lda $2006,x                  ; bc5f: bd 06 20
	.db $30, $04                 ; bc62: 30 04
loc_bc64:
	inc $a9                      ; bc64: e6 a9
	.db $80, $09                 ; bc66: 80 09
loc_bc68:
	jsr $85bc                    ; bc68: 20 bc 85
loc_bc6b:
	iny                          ; bc6b: c8
	cpy.w #$0005                 ; bc6c: c0 05 00
	.db $d0, $db                 ; bc6f: d0 db
loc_bc71:
	lda $a9                      ; bc71: a5 a9
	.db $d0, $1e                 ; bc73: d0 1e
loc_bc75:
	tdc                          ; bc75: 7b
	tax                          ; bc76: aa
	jsr $c46e                    ; bc77: 20 6e c4
loc_bc7a:
	lda $a9                      ; bc7a: a5 a9
	.db $d0, $14                 ; bc7c: d0 14
loc_bc7e:
	lda.b #$e1                   ; bc7e: a9 e1
	sta $3839                    ; bc80: 8d 39 38
	tdc                          ; bc83: 7b
	sta $383a                    ; bc84: 8d 3a 38
	dec                          ; bc87: 3a
	sta $383b                    ; bc88: 8d 3b 38
	lda.b #$e1                   ; bc8b: a9 e1
	ldx $a6                      ; bc8d: a6 a6
	sta $2051,x                  ; bc8f: 9d 51 20
loc_bc92:
	rts                          ; bc92: 60

; --- Block at $bc93-$bcd5 ---
loc_bc93:
	stz $ad                      ; bc93: 64 ad
	lda $ab                      ; bc95: a5 ab
	cmp.b #$08                   ; bc97: c9 08
	.db $d0, $02                 ; bc99: d0 02
loc_bc9b:
	inc $ad                      ; bc9b: e6 ad
loc_bc9d:
	ldx.w #$0001                 ; bc9d: a2 01 00
	lda $ab                      ; bca0: a5 ab
	jsr $8379                    ; bca2: 20 79 83
loc_bca5:
	dec                          ; bca5: 3a
	sta $a9                      ; bca6: 85 a9
	lda $ad                      ; bca8: a5 ad
	.db $f0, $07                 ; bcaa: f0 07
loc_bcac:
	clc                          ; bcac: 18
	lda $a9                      ; bcad: a5 a9
	adc.b #$05                   ; bcaf: 69 05
	.db $80, $02                 ; bcb1: 80 02
loc_bcb3:
	lda $a9                      ; bcb3: a5 a9
loc_bcb5:
	asl                          ; bcb5: 0a
	tay                          ; bcb6: a8
	lda $29eb,y                  ; bcb7: b9 eb 29
	.db $f0, $e1                 ; bcba: f0 e1
loc_bcbc:
	lda $a9                      ; bcbc: a5 a9
	tay                          ; bcbe: a8
	iny                          ; bcbf: c8
	ldx $a6                      ; bcc0: a6 a6
	stz $2054,x                  ; bcc2: 9e 54 20
	stz $2053,x                  ; bcc5: 9e 53 20
	lda $ab                      ; bcc8: a5 ab
	cmp.b #$08                   ; bcca: c9 08
	.db $f0, $08                 ; bccc: f0 08
loc_bcce:
	sec                          ; bcce: 38
	ror $2054,x                  ; bccf: 7e 54 20
	dey                          ; bcd2: 88
	.db $d0, $fa                 ; bcd3: d0 fa
loc_bcd5:
	rts                          ; bcd5: 60

; --- Block at $bcd6-$bcdd ---
loc_bcd6:
	sec                          ; bcd6: 38
	ror $2053,x                  ; bcd7: 7e 53 20
	dey                          ; bcda: 88
	.db $d0, $fa                 ; bcdb: d0 fa
loc_bcdd:
	rts                          ; bcdd: 60

; --- Block at $bcde-$bd2e ---
loc_bcde:
	stz $de                      ; bcde: 64 de
	lda $289c                    ; bce0: ad 9c 28
	asl                          ; bce3: 0a
	tax                          ; bce4: aa
	lda $03c104,x                ; bce5: bf 04 c1 03
	sta $80                      ; bce9: 85 80
	lda $03c105,x                ; bceb: bf 05 c1 03
	sta $81                      ; bcef: 85 81
	lda.b #$03                   ; bcf1: a9 03
	sta $82                      ; bcf3: 85 82
	jml.w [$0080]                ; bcf5: dc 80 00
	jsr $bf1f                    ; bcf8: 20 1f bf
loc_bcfb:
	lda $dd                      ; bcfb: a5 dd
	.db $f0, $4d                 ; bcfd: f0 4d
loc_bcff:
	clc                          ; bcff: 18
	lda.b #$03                   ; bd00: a9 03
	adc $289e                    ; bd02: 6d 9e 28
	sta $80                      ; bd05: 85 80
	lda.b #$20                   ; bd07: a9 20
	adc.b #$00                   ; bd09: 69 00
	sta $81                      ; bd0b: 85 81
	tdc                          ; bd0d: 7b
	tax                          ; bd0e: aa
	lda $35d0,x                  ; bd0f: bd d0 35
	sta $a9                      ; bd12: 85 a9
	lda $35d1,x                  ; bd14: bd d1 35
	sta $aa                      ; bd17: 85 aa
	ldy $a9                      ; bd19: a4 a9
	cpy.w #$ffff                 ; bd1b: c0 ff ff
	.db $f0, $18                 ; bd1e: f0 18
loc_bd20:
	lda ($80)                    ; bd20: b2 80
	and $289f                    ; bd22: 2d 9f 28
	.db $d0, $08                 ; bd25: d0 08
loc_bd27:
	lda $289d                    ; bd27: ad 9d 28
	.db $10, $0c                 ; bd2a: 10 0c
loc_bd2c:
	stz $de                      ; bd2c: 64 de
	rts                          ; bd2e: 60

; --- Block at $bd2f-$bd38 ---
loc_bd2f:
	lda.b #$01                   ; bd2f: a9 01
	sta $de                      ; bd31: 85 de
	lda $289d                    ; bd33: ad 9d 28
	.db $10, $14                 ; bd36: 10 14

; --- Block at $bd38-$bd4c ---
loc_bd38:
	rep #$20                     ; bd38: c2 20
	clc                          ; bd3a: 18
	lda $80                      ; bd3b: a5 80
	adc.w #$0080                 ; bd3d: 69 80 00
	sta $80                      ; bd40: 85 80
	tdc                          ; bd42: 7b
	sep #$20                     ; bd43: e2 20
	inx                          ; bd45: e8
	inx                          ; bd46: e8
	cpx.w #$001a                 ; bd47: e0 1a 00
	.db $d0, $c3                 ; bd4a: d0 c3

; --- Block at $bd4c-$bd4c ---
loc_bd4c:
	rts                          ; bd4c: 60

; --- Block at $bf1f-$bf88 ---
loc_bf1f:
	stz $dd                      ; bf1f: 64 dd
	ldx.w #$0019                 ; bf21: a2 19 00
	lda.b #$ff                   ; bf24: a9 ff
	sta $35d0,x                  ; bf26: 9d d0 35
	dex                          ; bf29: ca
	.db $10, $fa                 ; bf2a: 10 fa
loc_bf2c:
	lda $289d                    ; bf2c: ad 9d 28
	and.b #$7f                   ; bf2f: 29 7f
	asl                          ; bf31: 0a
	tax                          ; bf32: aa
	lda $03c11c,x                ; bf33: bf 1c c1 03
	sta $80                      ; bf37: 85 80
	lda $03c11d,x                ; bf39: bf 1d c1 03
	sta $81                      ; bf3d: 85 81
	lda.b #$03                   ; bf3f: a9 03
	sta $82                      ; bf41: 85 82
	jml.w [$0080]                ; bf43: dc 80 00
	lda $289d                    ; bf46: ad 9d 28
	sta $ab                      ; bf49: 85 ab
	tdc                          ; bf4b: 7b
	tax                          ; bf4c: aa
	stx $a9                      ; bf4d: 86 a9
	lda $a9                      ; bf4f: a5 a9
	tay                          ; bf51: a8
	lda $3540,y                  ; bf52: b9 40 35
	.db $d0, $26                 ; bf55: d0 26
loc_bf57:
	lda $2000,x                  ; bf57: bd 00 20
	and.b #$1f                   ; bf5a: 29 1f
	cmp $ab                      ; bf5c: c5 ab
	.db $d0, $1d                 ; bf5e: d0 1d
loc_bf60:
	jsr $c0ea                    ; bf60: 20 ea c0
loc_bf63:
	lda $35ea                    ; bf63: ad ea 35
	.db $d0, $15                 ; bf66: d0 15
loc_bf68:
	stx.w $00ab                  ; bf68: 8e ab 00
	lda $a9                      ; bf6b: a5 a9
	asl                          ; bf6d: 0a
	tax                          ; bf6e: aa
	lda $ab                      ; bf6f: a5 ab
	sta $35d0,x                  ; bf71: 9d d0 35
	lda $ac                      ; bf74: a5 ac
	sta $35d1,x                  ; bf76: 9d d1 35
	inc $dd                      ; bf79: e6 dd
	.db $80, $0b                 ; bf7b: 80 0b
loc_bf7d:
	jsr $85bc                    ; bf7d: 20 bc 85
loc_bf80:
	inc $a9                      ; bf80: e6 a9
	lda $a9                      ; bf82: a5 a9
	cmp.b #$05                   ; bf84: c9 05
	.db $d0, $c7                 ; bf86: d0 c7
loc_bf88:
	rts                          ; bf88: 60

; --- Block at $c0ea-$c103 ---
loc_c0ea:
	stz $35ea                    ; c0ea: 9c ea 35
	lda $2003,x                  ; c0ed: bd 03 20
	and.b #$c0                   ; c0f0: 29 c0
	.db $d0, $0c                 ; c0f2: d0 0c
loc_c0f4:
	lda $2005,x                  ; c0f4: bd 05 20
	and.b #$82                   ; c0f7: 29 82
	.db $d0, $05                 ; c0f9: d0 05
loc_c0fb:
	lda $2006,x                  ; c0fb: bd 06 20
	.db $10, $03                 ; c0fe: 10 03
loc_c100:
	inc $35ea                    ; c100: ee ea 35
loc_c103:
	rts                          ; c103: 60

; --- Block at $c17c-$c181 ---
loc_c17c:
	lda $34c4                    ; c17c: ad c4 34
	.db $30, $01                 ; c17f: 30 01
loc_c181:
	rts                          ; c181: 60

; --- Block at $c182-$c197 ---
loc_c182:
	lda.b #$02                   ; c182: a9 02
	jsr $8085                    ; c184: 20 85 80
loc_c187:
	lda $34c5                    ; c187: ad c5 34
	sta $38b2                    ; c18a: 8d b2 38
	lda $3877                    ; c18d: ad 77 38
	.db $d0, $05                 ; c190: d0 05
loc_c192:
	lda $38b2                    ; c192: ad b2 38
	.db $d0, $03                 ; c195: d0 03
loc_c197:
	jmp $c411                    ; c197: 4c 11 c4

; --- Block at $c19a-$c30d ---
loc_c19a:
	jsr $c418                    ; c19a: 20 18 c4
loc_c19d:
	lda $a9                      ; c19d: a5 a9
	.db $d0, $f6                 ; c19f: d0 f6
loc_c1a1:
	lda.b #$01                   ; c1a1: a9 01
	sta $390a                    ; c1a3: 8d 0a 39
	sta $38b3                    ; c1a6: 8d b3 38
	ldx.w #$0005                 ; c1a9: a2 05 00
	lda $38b2                    ; c1ac: ad b2 38
	asl                          ; c1af: 0a
	.db $b0, $03                 ; c1b0: b0 03
loc_c1b2:
	inx                          ; c1b2: e8
	.db $80, $fa                 ; c1b3: 80 fa
loc_c1b5:
	txa                          ; c1b5: 8a
	sta $d2                      ; c1b6: 85 d2
	sec                          ; c1b8: 38
	sbc.b #$05                   ; c1b9: e9 05
	tax                          ; c1bb: aa
	lda $38b2                    ; c1bc: ad b2 38
	jsr $855a                    ; c1bf: 20 5a 85
loc_c1c2:
	sta $38b2                    ; c1c2: 8d b2 38
	lda $38aa,x                  ; c1c5: bd aa 38
	.db $f0, $1e                 ; c1c8: f0 1e
loc_c1ca:
	lda $d2                      ; c1ca: a5 d2
	jsr $8489                    ; c1cc: 20 89 84
loc_c1cf:
	tdc                          ; c1cf: 7b
	tay                          ; c1d0: a8
	ldx $a6                      ; c1d1: a6 a6
	lda $2003,x                  ; c1d3: bd 03 20
	and.b #$c0                   ; c1d6: 29 c0
	.db $d0, $0e                 ; c1d8: d0 0e
loc_c1da:
	lda $2004,x                  ; c1da: bd 04 20
	and.b #$3c                   ; c1dd: 29 3c
	.db $d0, $07                 ; c1df: d0 07
loc_c1e1:
	lda $2005,x                  ; c1e1: bd 05 20
	and.b #$40                   ; c1e4: 29 40
	.db $f0, $08                 ; c1e6: f0 08
loc_c1e8:
	stz $390a                    ; c1e8: 9c 0a 39
	stz $38b3                    ; c1eb: 9c b3 38
	.db $80, $9d                 ; c1ee: 80 9d
loc_c1f0:
	lda $2050,x                  ; c1f0: bd 50 20
	sta $38b4,y                  ; c1f3: 99 b4 38
	inx                          ; c1f6: e8
	iny                          ; c1f7: c8
	cpy.w #$0007                 ; c1f8: c0 07 00
	.db $d0, $f3                 ; c1fb: d0 f3
loc_c1fd:
	tdc                          ; c1fd: 7b
	tay                          ; c1fe: a8
	ldx $a6                      ; c1ff: a6 a6
	stz $2050,x                  ; c201: 9e 50 20
	inx                          ; c204: e8
	iny                          ; c205: c8
	cpy.w #$0007                 ; c206: c0 07 00
	.db $d0, $f6                 ; c209: d0 f6
loc_c20b:
	sec                          ; c20b: 38
	lda $d2                      ; c20c: a5 d2
	sbc.b #$05                   ; c20e: e9 05
	sta $361c                    ; c210: 8d 1c 36
	sta $df                      ; c213: 85 df
	lda.b #$3c                   ; c215: a9 3c
	sta $e1                      ; c217: 85 e1
	jsr $83e0                    ; c219: 20 e0 83
loc_c21c:
	ldx $e3                      ; c21c: a6 e3
	tdc                          ; c21e: 7b
	tay                          ; c21f: a8
	lda $3659,x                  ; c220: bd 59 36
	sta $3839,y                  ; c223: 99 39 38
	inx                          ; c226: e8
	iny                          ; c227: c8
	cpy.w #$003c                 ; c228: c0 3c 00
	.db $d0, $f3                 ; c22b: d0 f3
loc_c22d:
	jsr $bc02                    ; c22d: 20 02 bc
loc_c230:
	stz $35be                    ; c230: 9c be 35
	lda $361c                    ; c233: ad 1c 36
	sta $df                      ; c236: 85 df
	lda.b #$14                   ; c238: a9 14
	sta $e1                      ; c23a: 85 e1
	jsr $83e0                    ; c23c: 20 e0 83
loc_c23f:
	ldx $e3                      ; c23f: a6 e3
	stx $35c3                    ; c241: 8e c3 35
	stx $35c5                    ; c244: 8e c5 35
	lda $361c                    ; c247: ad 1c 36
	tax                          ; c24a: aa
	stx $393d                    ; c24b: 8e 3d 39
	ldx.w #$0258                 ; c24e: a2 58 02
	stx $393f                    ; c251: 8e 3f 39
	jsr $83b9                    ; c254: 20 b9 83
loc_c257:
	ldx $3941                    ; c257: ae 41 39
	stx $35bf                    ; c25a: 8e bf 35
	stx $35c1                    ; c25d: 8e c1 35
	lda $361c                    ; c260: ad 1c 36
	sta $df                      ; c263: 85 df
	lda.b #$28                   ; c265: a9 28
	sta $e1                      ; c267: 85 e1
	jsr $83e0                    ; c269: 20 e0 83
loc_c26c:
	ldx $e3                      ; c26c: a6 e3
	stx $35c8                    ; c26e: 8e c8 35
	lda $361c                    ; c271: ad 1c 36
	tax                          ; c274: aa
	stx $393d                    ; c275: 8e 3d 39
	ldx.w #$00a0                 ; c278: a2 a0 00
	stx $393f                    ; c27b: 8e 3f 39
	jsr $83b9                    ; c27e: 20 b9 83
loc_c281:
	ldx $3941                    ; c281: ae 41 39
	stx $35cc                    ; c284: 8e cc 35
	lda $35be                    ; c287: ad be 35
	jsr $847f                    ; c28a: 20 7f 84
loc_c28d:
	clc                          ; c28d: 18
	adc $35c8                    ; c28e: 6d c8 35
	sta $35ca                    ; c291: 8d ca 35
	lda $35c9                    ; c294: ad c9 35
	adc.b #$00                   ; c297: 69 00
	sta $35cb                    ; c299: 8d cb 35
	lda $35be                    ; c29c: ad be 35
	tax                          ; c29f: aa
	rep #$20                     ; c2a0: c2 20
	txa                          ; c2a2: 8a
	jsr $847d                    ; c2a3: 20 7d 84
loc_c2a6:
	clc                          ; c2a6: 18
	adc $35cc                    ; c2a7: 6d cc 35
	sta $35ce                    ; c2aa: 8d ce 35
	tdc                          ; c2ad: 7b
	sep #$20                     ; c2ae: e2 20
	ldx $35c5                    ; c2b0: ae c5 35
	lda $531f,x                  ; c2b3: bd 1f 53
	cmp.b #$ff                   ; c2b6: c9 ff
	.db $f0, $46                 ; c2b8: f0 46
loc_c2ba:
	stz $35c7                    ; c2ba: 9c c7 35
	ldx $35ca                    ; c2bd: ae ca 35
	lda $53bf,x                  ; c2c0: bd bf 53
	cmp.b #$ff                   ; c2c3: c9 ff
	.db $f0, $29                 ; c2c5: f0 29
loc_c2c7:
	tdc                          ; c2c7: 7b
	tay                          ; c2c8: a8
	ldx $35ce                    ; c2c9: ae ce 35
	lda $54ff,x                  ; c2cc: bd ff 54
	sta $289c,y                  ; c2cf: 99 9c 28
	inx                          ; c2d2: e8
	iny                          ; c2d3: c8
	cpy.w #$0004                 ; c2d4: c0 04 00
	.db $d0, $f3                 ; c2d7: d0 f3
loc_c2d9:
	stx $35ce                    ; c2d9: 8e ce 35
	jsr $bcde                    ; c2dc: 20 de bc
loc_c2df:
	lda $de                      ; c2df: a5 de
	.db $f0, $12                 ; c2e1: f0 12
loc_c2e3:
	inc $35ca                    ; c2e3: ee ca 35
	inc $35c7                    ; c2e6: ee c7 35
	lda $35c7                    ; c2e9: ad c7 35
	cmp.b #$04                   ; c2ec: c9 04
	.db $d0, $cd                 ; c2ee: d0 cd
loc_c2f0:
	inc $35be                    ; c2f0: ee be 35
	.db $80, $0b                 ; c2f3: 80 0b
loc_c2f5:
	inc $35c5                    ; c2f5: ee c5 35
	inc $35c5                    ; c2f8: ee c5 35
	inc $35be                    ; c2fb: ee be 35
	.db $80, $87                 ; c2fe: 80 87
loc_c300:
	lda $de                      ; c300: a5 de
	.db $f0, $09                 ; c302: f0 09
loc_c304:
	lda $35be                    ; c304: ad be 35
	dec                          ; c307: 3a
	sta $35be                    ; c308: 8d be 35
	.db $80, $03                 ; c30b: 80 03
loc_c30d:
	jmp $c3e6                    ; c30d: 4c e6 c3

; --- Block at $c310-$c40e ---
loc_c310:
	lda $361c                    ; c310: ad 1c 36
	tax                          ; c313: aa
	stx $393d                    ; c314: 8e 3d 39
	ldx.w #$0258                 ; c317: a2 58 02
	stx $393f                    ; c31a: 8e 3f 39
	jsr $83b9                    ; c31d: 20 b9 83
loc_c320:
	lda $35be                    ; c320: ad be 35
	sta $df                      ; c323: 85 df
	lda.b #$3c                   ; c325: a9 3c
	sta $e1                      ; c327: 85 e1
	jsr $83e0                    ; c329: 20 e0 83
loc_c32c:
	clc                          ; c32c: 18
	lda $3941                    ; c32d: ad 41 39
	adc $e3                      ; c330: 65 e3
	sta $e3                      ; c332: 85 e3
	lda $3942                    ; c334: ad 42 39
	adc $e4                      ; c337: 65 e4
	sta $e4                      ; c339: 85 e4
	ldx $e3                      ; c33b: a6 e3
	tdc                          ; c33d: 7b
	tay                          ; c33e: a8
	lda $7e59ff,x                ; c33f: bf ff 59 7e
	sta $289c,y                  ; c343: 99 9c 28
	cmp.b #$ff                   ; c346: c9 ff
	.db $f0, $04                 ; c348: f0 04
loc_c34a:
	inx                          ; c34a: e8
	iny                          ; c34b: c8
	.db $80, $f1                 ; c34c: 80 f1
loc_c34e:
	tdc                          ; c34e: 7b
	tax                          ; c34f: aa
	ldy $38bb                    ; c350: ac bb 38
	lda $289c,x                  ; c353: bd 9c 28
	sta $3659,y                  ; c356: 99 59 36
	cmp.b #$ff                   ; c359: c9 ff
	.db $f0, $31                 ; c35b: f0 31
loc_c35d:
	cmp.b #$c0                   ; c35d: c9 c0
	.db $b0, $10                 ; c35f: b0 10
loc_c361:
	sta $365a,y                  ; c361: 99 5a 36
	phx                          ; c364: da
	ldx $a6                      ; c365: a6 a6
	sta $2052,x                  ; c367: 9d 52 20
	plx                          ; c36a: fa
	lda.b #$c2                   ; c36b: a9 c2
	sta $3659,y                  ; c36d: 99 59 36
	iny                          ; c370: c8
loc_c371:
	cmp.b #$e8                   ; c371: c9 e8
	.db $90, $0e                 ; c373: 90 0e
loc_c375:
	cmp.b #$fa                   ; c375: c9 fa
	.db $b0, $11                 ; c377: b0 11
loc_c379:
	inx                          ; c379: e8
	iny                          ; c37a: c8
	lda $289c,x                  ; c37b: bd 9c 28
	sta $3659,y                  ; c37e: 99 59 36
	.db $80, $07                 ; c381: 80 07
loc_c383:
	phx                          ; c383: da
	ldx $a6                      ; c384: a6 a6
	sta $2051,x                  ; c386: 9d 51 20
	plx                          ; c389: fa
loc_c38a:
	inx                          ; c38a: e8
	iny                          ; c38b: c8
	.db $80, $c5                 ; c38c: 80 c5
loc_c38e:
	ldx $38bb                    ; c38e: ae bb 38
	lda $3659,x                  ; c391: bd 59 36
	cmp.b #$ff                   ; c394: c9 ff
	.db $f0, $41                 ; c396: f0 41
loc_c398:
	cmp.b #$f9                   ; c398: c9 f9
	.db $f0, $2e                 ; c39a: f0 2e
loc_c39c:
	cmp.b #$e8                   ; c39c: c9 e8
	.db $90, $36                 ; c39e: 90 36
loc_c3a0:
	cmp.b #$f0                   ; c3a0: c9 f0
	.db $90, $17                 ; c3a2: 90 17
loc_c3a4:
	cmp.b #$f4                   ; c3a4: c9 f4
	.db $90, $2d                 ; c3a6: 90 2d
loc_c3a8:
	cmp.b #$f8                   ; c3a8: c9 f8
	.db $b0, $2a                 ; c3aa: b0 2a
loc_c3ac:
	phx                          ; c3ac: da
	pha                          ; c3ad: 48
	inx                          ; c3ae: e8
	lda $3659,x                  ; c3af: bd 59 36
	sta $a9                      ; c3b2: 85 a9
	pla                          ; c3b4: 68
	jsr $b887                    ; c3b5: 20 87 b8
loc_c3b8:
	plx                          ; c3b8: fa
	.db $80, $1a                 ; c3b9: 80 1a
loc_c3bb:
	phx                          ; c3bb: da
	pha                          ; c3bc: 48
	inx                          ; c3bd: e8
	lda $3659,x                  ; c3be: bd 59 36
	sta $a9                      ; c3c1: 85 a9
	pla                          ; c3c3: 68
	jsr $b77f                    ; c3c4: 20 7f b7
loc_c3c7:
	plx                          ; c3c7: fa
	.db $80, $0b                 ; c3c8: 80 0b
loc_c3ca:
	phx                          ; c3ca: da
	inx                          ; c3cb: e8
	lda $3659,x                  ; c3cc: bd 59 36
	sta $a9                      ; c3cf: 85 a9
	jsr $b8b1                    ; c3d1: 20 b1 b8
loc_c3d4:
	plx                          ; c3d4: fa
loc_c3d5:
	inx                          ; c3d5: e8
loc_c3d6:
	inx                          ; c3d6: e8
	.db $80, $b8                 ; c3d7: 80 b8
loc_c3d9:
	jsr $b69f                    ; c3d9: 20 9f b6
loc_c3dc:
	lda $361c                    ; c3dc: ad 1c 36
	tax                          ; c3df: aa
	stz $3879,x                  ; c3e0: 9e 79 38
	jsr $ad88                    ; c3e3: 20 88 ad
loc_c3e6:
	lda $d2                      ; c3e6: a5 d2
	jsr $8489                    ; c3e8: 20 89 84
loc_c3eb:
	tdc                          ; c3eb: 7b
	tay                          ; c3ec: a8
	ldx $a6                      ; c3ed: a6 a6
	lda $38b4,y                  ; c3ef: b9 b4 38
	sta $2050,x                  ; c3f2: 9d 50 20
	inx                          ; c3f5: e8
	iny                          ; c3f6: c8
	cpy.w #$0007                 ; c3f7: c0 07 00
	.db $d0, $f3                 ; c3fa: d0 f3
loc_c3fc:
	ldx $38bb                    ; c3fc: ae bb 38
	tdc                          ; c3ff: 7b
	tay                          ; c400: a8
	lda $3839,y                  ; c401: b9 39 38
	sta $3659,x                  ; c404: 9d 59 36
	inx                          ; c407: e8
	iny                          ; c408: c8
	cpy.w #$003c                 ; c409: c0 3c 00
	.db $d0, $f3                 ; c40c: d0 f3
loc_c40e:
	jmp $c18d                    ; c40e: 4c 8d c1

; --- Block at $c411-$c417 ---
loc_c411:
	stz $390a                    ; c411: 9c 0a 39
	stz $38b3                    ; c414: 9c b3 38
	rts                          ; c417: 60

; --- Block at $c418-$c440 ---
loc_c418:
	tdc                          ; c418: 7b
	tax                          ; c419: aa
	tay                          ; c41a: a8
	sty $a9                      ; c41b: 84 a9
	lda $3540,y                  ; c41d: b9 40 35
	.db $d0, $13                 ; c420: d0 13
loc_c422:
	lda $2003,x                  ; c422: bd 03 20
	and.b #$c0                   ; c425: 29 c0
	.db $d0, $0c                 ; c427: d0 0c
loc_c429:
	lda $2005,x                  ; c429: bd 05 20
	and.b #$82                   ; c42c: 29 82
	.db $d0, $05                 ; c42e: d0 05
loc_c430:
	lda $2006,x                  ; c430: bd 06 20
	.db $10, $0b                 ; c433: 10 0b
loc_c435:
	jsr $85bc                    ; c435: 20 bc 85
loc_c438:
	iny                          ; c438: c8
	cpy.w #$0005                 ; c439: c0 05 00
	.db $d0, $df                 ; c43c: d0 df
loc_c43e:
	inc $a9                      ; c43e: e6 a9
loc_c440:
	rts                          ; c440: 60

; --- Block at $c441-$c46d ---
loc_c441:
	tdc                          ; c441: 7b
	tay                          ; c442: a8
	sty $a9                      ; c443: 84 a9
	ldx $38bb                    ; c445: ae bb 38
	lda $3659,x                  ; c448: bd 59 36
	cmp.b #$ff                   ; c44b: c9 ff
	.db $f0, $1e                 ; c44d: f0 1e
loc_c44f:
	cmp.b #$fc                   ; c44f: c9 fc
	.db $f0, $03                 ; c451: f0 03
loc_c453:
	inx                          ; c453: e8
	.db $80, $f2                 ; c454: 80 f2
loc_c456:
	inc $a9                      ; c456: e6 a9
	ldx $38bb                    ; c458: ae bb 38
	lda.b #$e1                   ; c45b: a9 e1
	sta $3659,x                  ; c45d: 9d 59 36
	tdc                          ; c460: 7b
	sta $365a,x                  ; c461: 9d 5a 36
	dec                          ; c464: 3a
	sta $365b,x                  ; c465: 9d 5b 36
	lda.b #$fc                   ; c468: a9 fc
	sta $365b,x                  ; c46a: 9d 5b 36
loc_c46d:
	rts                          ; c46d: 60

; --- Block at $c46e-$c496 ---
loc_c46e:
	tdc                          ; c46e: 7b
	tay                          ; c46f: a8
	sty $a9                      ; c470: 84 a9
	phx                          ; c472: da
	lda $3839,x                  ; c473: bd 39 38
	cmp.b #$ff                   ; c476: c9 ff
	.db $f0, $1d                 ; c478: f0 1d
loc_c47a:
	cmp.b #$fc                   ; c47a: c9 fc
	.db $f0, $03                 ; c47c: f0 03
loc_c47e:
	inx                          ; c47e: e8
	.db $80, $f2                 ; c47f: 80 f2
loc_c481:
	inc $a9                      ; c481: e6 a9
	plx                          ; c483: fa
	lda.b #$e1                   ; c484: a9 e1
	sta $3659,x                  ; c486: 9d 59 36
	tdc                          ; c489: 7b
	sta $365a,x                  ; c48a: 9d 5a 36
	dec                          ; c48d: 3a
	sta $365c,x                  ; c48e: 9d 5c 36
	lda.b #$fc                   ; c491: a9 fc
	sta $365b,x                  ; c493: 9d 5b 36
	rts                          ; c496: 60

; --- Block at $c497-$c498 ---
loc_c497:
	plx                          ; c497: fa
	rts                          ; c498: 60

; --- Block at $ca7e-$ca90 ---
loc_ca7e:
	rep #$20                     ; ca7e: c2 20
	tdc                          ; ca80: 7b
	tax                          ; ca81: aa
	stx $a9                      ; ca82: 86 a9
	tay                          ; ca84: a8
	tya                          ; ca85: 98
	lsr                          ; ca86: 4a
	tax                          ; ca87: aa
	lda $3540,x                  ; ca88: bd 40 35
	and.w #$00ff                 ; ca8b: 29 ff 00
	.db $f0, $03                 ; ca8e: f0 03
loc_ca90:
	jmp $cb32                    ; ca90: 4c 32 cb

; --- Block at $ca93-$caab ---
loc_ca93:
	ldx $a9                      ; ca93: a6 a9
	lda $34d4,y                  ; ca95: b9 d4 34
	and.w #$4000                 ; ca98: 29 00 40
	.db $f0, $11                 ; ca9b: f0 11
loc_ca9d:
	lda $355b                    ; ca9d: ad 5b 35
	.db $f0, $0c                 ; caa0: f0 0c
loc_caa2:
	lda $34d4,y                  ; caa2: b9 d4 34
	and.w #$bfff                 ; caa5: 29 ff bf
	sta $34d4,y                  ; caa8: 99 d4 34
	jmp $cb32                    ; caab: 4c 32 cb

; --- Block at $caae-$cb32 ---
loc_caae:
	lda $34d4,y                  ; caae: b9 d4 34
	.db $10, $11                 ; cab1: 10 11
loc_cab3:
	clc                          ; cab3: 18
	lda $34d4,y                  ; cab4: b9 d4 34
	and.w #$3fff                 ; cab7: 29 ff 3f
	adc $2007,x                  ; caba: 7d 07 20
	.db $90, $37                 ; cabd: 90 37
loc_cabf:
	lda.w #$ffff                 ; cabf: a9 ff ff
	.db $80, $32                 ; cac2: 80 32
loc_cac4:
	lda $34d4,y                  ; cac4: b9 d4 34
	and.w #$bfff                 ; cac7: 29 ff bf
	sta $2898                    ; caca: 8d 98 28
	sec                          ; cacd: 38
	lda $2007,x                  ; cace: bd 07 20
	.db $f0, $0e                 ; cad1: f0 0e
loc_cad3:
	sbc $2898                    ; cad3: ed 98 28
	.db $f0, $02                 ; cad6: f0 02
loc_cad8:
	.db $b0, $1c                 ; cad8: b0 1c
loc_cada:
	sep #$20                     ; cada: e2 20
	inc $3907                    ; cadc: ee 07 39
	rep #$20                     ; cadf: c2 20
loc_cae1:
	tya                          ; cae1: 98
	asl                          ; cae2: 0a
	tax                          ; cae3: aa
	tdc                          ; cae4: 7b
	sep #$20                     ; cae5: e2 20
	lda $338e,x                  ; cae7: bd 8e 33
	and.b #$fe                   ; caea: 29 fe
	ora.b #$80                   ; caec: 09 80
	sta $338e,x                  ; caee: 9d 8e 33
	rep #$20                     ; caf1: c2 20
	tdc                          ; caf3: 7b
	ldx $a9                      ; caf4: a6 a9
loc_caf6:
	sta $2007,x                  ; caf6: 9d 07 20
	cmp $2009,x                  ; caf9: dd 09 20
	.db $90, $08                 ; cafc: 90 08
loc_cafe:
	lda $2009,x                  ; cafe: bd 09 20
	sta $2007,x                  ; cb01: 9d 07 20
	.db $80, $1d                 ; cb04: 80 1d
loc_cb06:
	lda $2009,x                  ; cb06: bd 09 20
	jsr $8486                    ; cb09: 20 86 84
loc_cb0c:
	cmp $2007,x                  ; cb0c: dd 07 20
	.db $90, $12                 ; cb0f: 90 12
loc_cb11:
	tya                          ; cb11: 98
	asl                          ; cb12: 0a
	tax                          ; cb13: aa
	tdc                          ; cb14: 7b
	sep #$20                     ; cb15: e2 20
	lda $3391,x                  ; cb17: bd 91 33
	ora.b #$01                   ; cb1a: 09 01
	sta $3391,x                  ; cb1c: 9d 91 33
	rep #$20                     ; cb1f: c2 20
	.db $80, $0f                 ; cb21: 80 0f
loc_cb23:
	tdc                          ; cb23: 7b
	sep #$20                     ; cb24: e2 20
	ldx $a9                      ; cb26: a6 a9
	lda $2006,x                  ; cb28: bd 06 20
	and.b #$fe                   ; cb2b: 29 fe
	sta $2006,x                  ; cb2d: 9d 06 20
	rep #$20                     ; cb30: c2 20

; --- Block at $cb32-$cb43 ---
loc_cb32:
	ldx $a9                      ; cb32: a6 a9
	txa                          ; cb34: 8a
	clc                          ; cb35: 18
	adc.w #$0080                 ; cb36: 69 80 00
	tax                          ; cb39: aa
	stx $a9                      ; cb3a: 86 a9
	iny                          ; cb3c: c8
	iny                          ; cb3d: c8
	cpy.w #$001a                 ; cb3e: c0 1a 00
	.db $f0, $03                 ; cb41: f0 03
loc_cb43:
	jmp $ca85                    ; cb43: 4c 85 ca

; --- Block at $cb46-$cb49 ---
loc_cb46:
	tdc                          ; cb46: 7b
	sep #$20                     ; cb47: e2 20
	rts                          ; cb49: 60

; --- Block at $ec6d-$ec88 ---
loc_ec6d:
	tdc                          ; ec6d: 7b
	tax                          ; ec6e: aa
	stx $3591                    ; ec6f: 8e 91 35
	stx $3593                    ; ec72: 8e 93 35
	stx $3594                    ; ec75: 8e 94 35
	stx $3595                    ; ec78: 8e 95 35
	stx $b5                      ; ec7b: 86 b5
	stx $b7                      ; ec7d: 86 b7
	ldx $b7                      ; ec7f: a6 b7
	lda $3585,x                  ; ec81: bd 85 35
	sta $b1                      ; ec84: 85 b1
	.db $d0, $03                 ; ec86: d0 03
loc_ec88:
	jmp $ed63                    ; ec88: 4c 63 ed

; --- Block at $ec8b-$ed60 ---
loc_ec8b:
	ldx $b7                      ; ec8b: a6 b7
	lda $358b,x                  ; ec8d: bd 8b 35
	sta $af                      ; ec90: 85 af
	stz $b0                      ; ec92: 64 b0
	asl $af                      ; ec94: 06 af
	rol $b0                      ; ec96: 26 b0
	ldx $af                      ; ec98: a6 af
	clc                          ; ec9a: 18
	lda $0ea1c0,x                ; ec9b: bf c0 a1 0e
	adc $3591                    ; ec9f: 6d 91 35
	sta $3591                    ; eca2: 8d 91 35
	lda $0ea1c1,x                ; eca5: bf c1 a1 0e
	adc $3592                    ; eca9: 6d 92 35
	sta $3592                    ; ecac: 8d 92 35
	lda $3593                    ; ecaf: ad 93 35
	adc.b #$00                   ; ecb2: 69 00
	sta $3593                    ; ecb4: 8d 93 35
	ldx $b7                      ; ecb7: a6 b7
	lda $3588,x                  ; ecb9: bd 88 35
	sta $af                      ; ecbc: 85 af
	stz $b0                      ; ecbe: 64 b0
	asl $af                      ; ecc0: 06 af
	rol $b0                      ; ecc2: 26 b0
	ldx $af                      ; ecc4: a6 af
	clc                          ; ecc6: 18
	lda $0ea000,x                ; ecc7: bf 00 a0 0e
	adc $3594                    ; eccb: 6d 94 35
	sta $3594                    ; ecce: 8d 94 35
	lda $0ea001,x                ; ecd1: bf 01 a0 0e
	adc $3595                    ; ecd5: 6d 95 35
	sta $3595                    ; ecd8: 8d 95 35
	lda $3596                    ; ecdb: ad 96 35
	adc.b #$00                   ; ecde: 69 00
	sta $3596                    ; ece0: 8d 96 35
	ldx $b7                      ; ece3: a6 b7
	lda $358e,x                  ; ece5: bd 8e 35
	sta $b3                      ; ece8: 85 b3
	lda $358e,x                  ; ecea: bd 8e 35
	and.b #$c0                   ; eced: 29 c0
	cmp.b #$c0                   ; ecef: c9 c0
	.db $f0, $17                 ; ecf1: f0 17
loc_ecf3:
	cmp.b #$40                   ; ecf3: c9 40
	.db $d0, $04                 ; ecf5: d0 04
loc_ecf7:
	lda.b #$05                   ; ecf7: a9 05
	.db $80, $06                 ; ecf9: 80 06
loc_ecfb:
	cmp.b #$80                   ; ecfb: c9 80
	.db $d0, $5b                 ; ecfd: d0 5b
loc_ecff:
	lda.b #$19                   ; ecff: a9 19
loc_ed01:
	sta $b4                      ; ed01: 85 b4
	jsr $858b                    ; ed03: 20 8b 85
loc_ed06:
	cmp $b4                      ; ed06: c5 b4
	.db $b0, $50                 ; ed08: b0 50
loc_ed0a:
	asl $b3                      ; ed0a: 06 b3
	asl $b3                      ; ed0c: 06 b3
	lda $b3                      ; ed0e: a5 b3
	tax                          ; ed10: aa
	tdc                          ; ed11: 7b
	tay                          ; ed12: a8
	sty $a9                      ; ed13: 84 a9
	lda $0e9f00,x                ; ed15: bf 00 9f 0e
	sta $289c,y                  ; ed19: 99 9c 28
	inx                          ; ed1c: e8
	iny                          ; ed1d: c8
	inc $a9                      ; ed1e: e6 a9
	lda $a9                      ; ed20: a5 a9
	cmp.b #$04                   ; ed22: c9 04
	.db $d0, $ef                 ; ed24: d0 ef
loc_ed26:
	lda $16a3                    ; ed26: ad a3 16
	adc $97                      ; ed29: 65 97
	sta $97                      ; ed2b: 85 97
	jsr $8593                    ; ed2d: 20 93 85
loc_ed30:
	cmp.b #$80                   ; ed30: c9 80
	.db $b0, $04                 ; ed32: b0 04
loc_ed34:
	lda.b #$00                   ; ed34: a9 00
	.db $80, $12                 ; ed36: 80 12
loc_ed38:
	cmp.b #$d0                   ; ed38: c9 d0
	.db $b0, $04                 ; ed3a: b0 04
loc_ed3c:
	lda.b #$01                   ; ed3c: a9 01
	.db $80, $0a                 ; ed3e: 80 0a
loc_ed40:
	cmp.b #$fc                   ; ed40: c9 fc
	.db $b0, $04                 ; ed42: b0 04
loc_ed44:
	lda.b #$02                   ; ed44: a9 02
	.db $80, $02                 ; ed46: 80 02
loc_ed48:
	lda.b #$03                   ; ed48: a9 03
loc_ed4a:
	tax                          ; ed4a: aa
	lda $289c,x                  ; ed4b: bd 9c 28
	ldx $b5                      ; ed4e: a6 b5
	cpx.w #$0008                 ; ed50: e0 08 00
	.db $f0, $05                 ; ed53: f0 05
loc_ed55:
	sta $1804,x                  ; ed55: 9d 04 18
	inc $b5                      ; ed58: e6 b5
loc_ed5a:
	dec $b1                      ; ed5a: c6 b1
	lda $b1                      ; ed5c: a5 b1
	.db $f0, $03                 ; ed5e: f0 03
loc_ed60:
	jmp $ec8b                    ; ed60: 4c 8b ec

; --- Block at $ed63-$ed6b ---
loc_ed63:
	inc $b7                      ; ed63: e6 b7
	lda $b7                      ; ed65: a5 b7
	cmp.b #$03                   ; ed67: c9 03
	.db $f0, $03                 ; ed69: f0 03
loc_ed6b:
	jmp $ec7f                    ; ed6b: 4c 7f ec

; --- Block at $ed6e-$eefe ---
loc_ed6e:
	clc                          ; ed6e: 18
	lda $16a0                    ; ed6f: ad a0 16
	adc $3594                    ; ed72: 6d 94 35
	sta $16a0                    ; ed75: 8d a0 16
	lda $16a1                    ; ed78: ad a1 16
	adc $3595                    ; ed7b: 6d 95 35
	sta $16a1                    ; ed7e: 8d a1 16
	lda $16a2                    ; ed81: ad a2 16
	adc $3596                    ; ed84: 6d 96 35
	sta $16a2                    ; ed87: 8d a2 16
	sec                          ; ed8a: 38
	lda $16a0                    ; ed8b: ad a0 16
	sbc.b #$7f                   ; ed8e: e9 7f
	lda $16a1                    ; ed90: ad a1 16
	sbc.b #$96                   ; ed93: e9 96
	lda $16a2                    ; ed95: ad a2 16
	sbc.b #$98                   ; ed98: e9 98
	.db $90, $0f                 ; ed9a: 90 0f
loc_ed9c:
	lda.b #$7f                   ; ed9c: a9 7f
	sta $16a0                    ; ed9e: 8d a0 16
	lda.b #$96                   ; eda1: a9 96
	sta $16a1                    ; eda3: 8d a1 16
	lda.b #$98                   ; eda6: a9 98
	sta $16a2                    ; eda8: 8d a2 16
loc_edab:
	tdc                          ; edab: 7b
	tax                          ; edac: aa
	stx $a9                      ; edad: 86 a9
	stx $ab                      ; edaf: 86 ab
	stx $ad                      ; edb1: 86 ad
	stx $405f                    ; edb3: 8e 5f 40
	stx $4061                    ; edb6: 8e 61 40
	stx $4063                    ; edb9: 8e 63 40
	stx $4065                    ; edbc: 8e 65 40
	stx $4067                    ; edbf: 8e 67 40
	ldx $a9                      ; edc2: a6 a9
	cpx.w #$0005                 ; edc4: e0 05 00
	.db $b0, $05                 ; edc7: b0 05
loc_edc9:
	lda $3540,x                  ; edc9: bd 40 35
	.db $d0, $1c                 ; edcc: d0 1c
loc_edce:
	ldx $ad                      ; edce: a6 ad
	lda $1000,x                  ; edd0: bd 00 10
	and.b #$1f                   ; edd3: 29 1f
	.db $f0, $13                 ; edd5: f0 13
loc_edd7:
	lda $1003,x                  ; edd7: bd 03 10
	and.b #$c0                   ; edda: 29 c0
	.db $d0, $0c                 ; eddc: d0 0c
loc_edde:
	ldx $a9                      ; edde: a6 a9
	inc $405f,x                  ; ede0: fe 5f 40
	cpx.w #$0005                 ; ede3: e0 05 00
	.db $b0, $02                 ; ede6: b0 02
loc_ede8:
	inc $ab                      ; ede8: e6 ab
loc_edea:
	rep #$20                     ; edea: c2 20
	clc                          ; edec: 18
	lda $ad                      ; eded: a5 ad
	adc.w #$0040                 ; edef: 69 40 00
	sta $ad                      ; edf2: 85 ad
	tdc                          ; edf4: 7b
	sep #$20                     ; edf5: e2 20
	inc $a9                      ; edf7: e6 a9
	lda $a9                      ; edf9: a5 a9
	cmp.b #$0a                   ; edfb: c9 0a
	.db $d0, $c3                 ; edfd: d0 c3
loc_edff:
	lda $3591                    ; edff: ad 91 35
	ora $3592                    ; ee02: 0d 92 35
	ora $3593                    ; ee05: 0d 93 35
	.db $f0, $31                 ; ee08: f0 31
loc_ee0a:
	tdc                          ; ee0a: 7b
	tax                          ; ee0b: aa
	stx $ad                      ; ee0c: 86 ad
	stx $af                      ; ee0e: 86 af
	lda $3591                    ; ee10: ad 91 35
	ora $3592                    ; ee13: 0d 92 35
	ora $3593                    ; ee16: 0d 93 35
	.db $d0, $08                 ; ee19: d0 08
loc_ee1b:
	stz $ad                      ; ee1b: 64 ad
	stz $ae                      ; ee1d: 64 ae
	stz $af                      ; ee1f: 64 af
	.db $80, $04                 ; ee21: 80 04
loc_ee23:
	jsl $13ff5f                  ; ee23: 22 5f ff 13
loc_ee27:
	lda $ad                      ; ee27: a5 ad
	ora $ae                      ; ee29: 05 ae
	ora $af                      ; ee2b: 05 af
	.db $d0, $02                 ; ee2d: d0 02
loc_ee2f:
	inc $ad                      ; ee2f: e6 ad
loc_ee31:
	ldx $ad                      ; ee31: a6 ad
	stx $3591                    ; ee33: 8e 91 35
	lda $af                      ; ee36: a5 af
	sta $3593                    ; ee38: 8d 93 35
loc_ee3b:
	jsr $b30d                    ; ee3b: 20 0d b3
loc_ee3e:
	jsr $859b                    ; ee3e: 20 9b 85
loc_ee41:
	lda $3594                    ; ee41: ad 94 35
	sta $359a                    ; ee44: 8d 9a 35
	lda $3595                    ; ee47: ad 95 35
	sta $359b                    ; ee4a: 8d 9b 35
	lda $3596                    ; ee4d: ad 96 35
	sta $359c                    ; ee50: 8d 9c 35
	lda $3591                    ; ee53: ad 91 35
	sta $359d                    ; ee56: 8d 9d 35
	lda $3592                    ; ee59: ad 92 35
	sta $359e                    ; ee5c: 8d 9e 35
	lda $3593                    ; ee5f: ad 93 35
	sta $359f                    ; ee62: 8d 9f 35
	tdc                          ; ee65: 7b
	tax                          ; ee66: aa
	lda $3594                    ; ee67: ad 94 35
	ora $3595                    ; ee6a: 0d 95 35
	.db $f0, $06                 ; ee6d: f0 06
loc_ee6f:
	lda.b #$1f                   ; ee6f: a9 1f
	sta $34ca                    ; ee71: 8d ca 34
	inx                          ; ee74: e8
loc_ee75:
	lda $3591                    ; ee75: ad 91 35
	ora $3592                    ; ee78: 0d 92 35
	.db $f0, $06                 ; ee7b: f0 06
loc_ee7d:
	lda.b #$20                   ; ee7d: a9 20
	sta $34ca,x                  ; ee7f: 9d ca 34
	inx                          ; ee82: e8
loc_ee83:
	txa                          ; ee83: 8a
	.db $f0, $05                 ; ee84: f0 05
loc_ee86:
	lda.b #$05                   ; ee86: a9 05
	jsr $8085                    ; ee88: 20 85 80
loc_ee8b:
	lda.b #$ff                   ; ee8b: a9 ff
	sta $34cb                    ; ee8d: 8d cb 34
	tdc                          ; ee90: 7b
	tax                          ; ee91: aa
	stx $a9                      ; ee92: 86 a9
	stx $ab                      ; ee94: 86 ab
	ldx $a9                      ; ee96: a6 a9
	lda $405f,x                  ; ee98: bd 5f 40
	.db $f0, $3f                 ; ee9b: f0 3f
loc_ee9d:
	ldx $ab                      ; ee9d: a6 ab
	clc                          ; ee9f: 18
	lda $1037,x                  ; eea0: bd 37 10
	adc $3591                    ; eea3: 6d 91 35
	sta $1037,x                  ; eea6: 9d 37 10
	lda $1038,x                  ; eea9: bd 38 10
	adc $3592                    ; eeac: 6d 92 35
	sta $1038,x                  ; eeaf: 9d 38 10
	lda $1039,x                  ; eeb2: bd 39 10
	adc $3593                    ; eeb5: 6d 93 35
	sta $1039,x                  ; eeb8: 9d 39 10
	sec                          ; eebb: 38
	lda $1037,x                  ; eebc: bd 37 10
	sbc.b #$7f                   ; eebf: e9 7f
	lda $1038,x                  ; eec1: bd 38 10
	sbc.b #$96                   ; eec4: e9 96
	lda $1039,x                  ; eec6: bd 39 10
	sbc.b #$98                   ; eec9: e9 98
	.db $90, $0f                 ; eecb: 90 0f
loc_eecd:
	lda.b #$7f                   ; eecd: a9 7f
	sta $1037,x                  ; eecf: 9d 37 10
	lda.b #$96                   ; eed2: a9 96
	sta $1038,x                  ; eed4: 9d 38 10
	lda.b #$98                   ; eed7: a9 98
	sta $1039,x                  ; eed9: 9d 39 10
loc_eedc:
	rep #$20                     ; eedc: c2 20
	clc                          ; eede: 18
	lda $ab                      ; eedf: a5 ab
	adc.w #$0040                 ; eee1: 69 40 00
	sta $ab                      ; eee4: 85 ab
	tdc                          ; eee6: 7b
	sep #$20                     ; eee7: e2 20
	inc $a9                      ; eee9: e6 a9
	lda $a9                      ; eeeb: a5 a9
	cmp.b #$0a                   ; eeed: c9 0a
	.db $d0, $a5                 ; eeef: d0 a5
loc_eef1:
	tdc                          ; eef1: 7b
	tax                          ; eef2: aa
	stx $98                      ; eef3: 86 98
	stx $a6                      ; eef5: 86 a6
	ldx $98                      ; eef7: a6 98
	lda $405f,x                  ; eef9: bd 5f 40
	.db $d0, $03                 ; eefc: d0 03
loc_eefe:
	jmp $eff1                    ; eefe: 4c f1 ef

; --- Block at $ef01-$efee ---
loc_ef01:
	ldx $a6                      ; ef01: a6 a6
	lda $1000,x                  ; ef03: bd 00 10
	and.b #$1f                   ; ef06: 29 1f
	dec                          ; ef08: 3a
	asl                          ; ef09: 0a
	tax                          ; ef0a: aa
	lda $0fb500,x                ; ef0b: bf 00 b5 0f
	sta $80                      ; ef0f: 85 80
	lda $0fb501,x                ; ef11: bf 01 b5 0f
	sta $81                      ; ef15: 85 81
	lda.b #$0f                   ; ef17: a9 0f
	sta $82                      ; ef19: 85 82
	ldx $a6                      ; ef1b: a6 a6
	lda $1002,x                  ; ef1d: bd 02 10
	cmp.b #$46                   ; ef20: c9 46
	.db $90, $02                 ; ef22: 90 02
loc_ef24:
	lda.b #$45                   ; ef24: a9 45
loc_ef26:
	dec                          ; ef26: 3a
	sta $df                      ; ef27: 85 df
	lda.b #$05                   ; ef29: a9 05
	sta $e1                      ; ef2b: 85 e1
	jsr $83e0                    ; ef2d: 20 e0 83
loc_ef30:
	ldy $e3                      ; ef30: a4 e3
	tdc                          ; ef32: 7b
	tax                          ; ef33: aa
	lda [$80],y                  ; ef34: b7 80
	sta $289c,x                  ; ef36: 9d 9c 28
	iny                          ; ef39: c8
	inx                          ; ef3a: e8
	cpx.w #$0005                 ; ef3b: e0 05 00
	.db $d0, $f4                 ; ef3e: d0 f4
loc_ef40:
	ldx $a6                      ; ef40: a6 a6
	lda $1002,x                  ; ef42: bd 02 10
	cmp.b #$46                   ; ef45: c9 46
	.db $90, $1c                 ; ef47: 90 1c
loc_ef49:
	phy                          ; ef49: 5a
	ldx.w #$0000                 ; ef4a: a2 00 00
	lda.b #$07                   ; ef4d: a9 07
	jsr $8379                    ; ef4f: 20 79 83
loc_ef52:
	tax                          ; ef52: aa
	stx $ad                      ; ef53: 86 ad
	ply                          ; ef55: 7a
	rep #$20                     ; ef56: c2 20
	tya                          ; ef58: 98
	clc                          ; ef59: 18
	adc $ad                      ; ef5a: 65 ad
	tay                          ; ef5c: a8
	tdc                          ; ef5d: 7b
	sep #$20                     ; ef5e: e2 20
	lda [$80],y                  ; ef60: b7 80
	sta $289c                    ; ef62: 8d 9c 28
loc_ef65:
	lda $289f                    ; ef65: ad 9f 28
	sta $ad                      ; ef68: 85 ad
	lda $28a0                    ; ef6a: ad a0 28
	sta $ae                      ; ef6d: 85 ae
	lda $289e                    ; ef6f: ad 9e 28
	jsr $8483                    ; ef72: 20 83 84
loc_ef75:
	sta $af                      ; ef75: 85 af
	ldx $a6                      ; ef77: a6 a6
	clc                          ; ef79: 18
	lda $103d,x                  ; ef7a: bd 3d 10
	adc $ad                      ; ef7d: 65 ad
	sta $ad                      ; ef7f: 85 ad
	lda $103e,x                  ; ef81: bd 3e 10
	adc $ae                      ; ef84: 65 ae
	sta $ae                      ; ef86: 85 ae
	lda $103f,x                  ; ef88: bd 3f 10
	adc $af                      ; ef8b: 65 af
	sta $af                      ; ef8d: 85 af
	sec                          ; ef8f: 38
	lda $1037,x                  ; ef90: bd 37 10
	sbc $ad                      ; ef93: e5 ad
	lda $1038,x                  ; ef95: bd 38 10
	sbc $ae                      ; ef98: e5 ae
	lda $1039,x                  ; ef9a: bd 39 10
	sbc $af                      ; ef9d: e5 af
	.db $90, $50                 ; ef9f: 90 50
loc_efa1:
	lda $ad                      ; efa1: a5 ad
	sta $103d,x                  ; efa3: 9d 3d 10
	lda $ae                      ; efa6: a5 ae
	sta $103e,x                  ; efa8: 9d 3e 10
	lda $af                      ; efab: a5 af
	sta $103f,x                  ; efad: 9d 3f 10
	lda $1002,x                  ; efb0: bd 02 10
	cmp.b #$63                   ; efb3: c9 63
	.db $b0, $3a                 ; efb5: b0 3a
loc_efb7:
	inc $1002,x                  ; efb7: fe 02 10
	jsr $f029                    ; efba: 20 29 f0
loc_efbd:
	lda $98                      ; efbd: a5 98
	cmp.b #$05                   ; efbf: c9 05
	.db $b0, $2b                 ; efc1: b0 2b
loc_efc3:
	sta $359a                    ; efc3: 8d 9a 35
	lda.b #$21                   ; efc6: a9 21
	sta $34ca                    ; efc8: 8d ca 34
	lda.b #$05                   ; efcb: a9 05
	jsr $8085                    ; efcd: 20 85 80
loc_efd0:
	lda.b #$23                   ; efd0: a9 23
	sta $34ca                    ; efd2: 8d ca 34
	tdc                          ; efd5: 7b
	tax                          ; efd6: aa
	stx $af                      ; efd7: 86 af
	ldx $af                      ; efd9: a6 af
	lda $291c,x                  ; efdb: bd 1c 29
	cmp.b #$ff                   ; efde: c9 ff
	.db $f0, $0c                 ; efe0: f0 0c
loc_efe2:
	sta $359a                    ; efe2: 8d 9a 35
	lda.b #$05                   ; efe5: a9 05
	jsr $8085                    ; efe7: 20 85 80
loc_efea:
	inc $af                      ; efea: e6 af
	.db $80, $eb                 ; efec: 80 eb
loc_efee:
	jmp $ef01                    ; efee: 4c 01 ef

; --- Block at $eff1-$f006 ---
loc_eff1:
	rep #$20                     ; eff1: c2 20
	clc                          ; eff3: 18
	lda $a6                      ; eff4: a5 a6
	adc.w #$0040                 ; eff6: 69 40 00
	sta $a6                      ; eff9: 85 a6
	tdc                          ; effb: 7b
	sep #$20                     ; effc: e2 20
	inc $98                      ; effe: e6 98
	lda $98                      ; f000: a5 98
	cmp.b #$0a                   ; f002: c9 0a
	.db $f0, $03                 ; f004: f0 03
loc_f006:
	jmp $eef7                    ; f006: 4c f7 ee

; --- Block at $f009-$f028 ---
loc_f009:
	jsr $94b2                    ; f009: 20 b2 94
loc_f00c:
	jsr $8ed6                    ; f00c: 20 d6 8e
loc_f00f:
	stz $3975                    ; f00f: 9c 75 39
	lda $3975                    ; f012: ad 75 39
	tax                          ; f015: aa
	lda $3540,x                  ; f016: bd 40 35
	.db $d0, $03                 ; f019: d0 03
loc_f01b:
	jsr $9841                    ; f01b: 20 41 98
loc_f01e:
	inc $3975                    ; f01e: ee 75 39
	lda $3975                    ; f021: ad 75 39
	cmp.b #$05                   ; f024: c9 05
	.db $d0, $ea                 ; f026: d0 ea
loc_f028:
	rts                          ; f028: 60

; --- Block at $f029-$f0c7 ---
loc_f029:
	lda $289c                    ; f029: ad 9c 28
	and.b #$07                   ; f02c: 29 07
	sta $af                      ; f02e: 85 af
	rep #$20                     ; f030: c2 20
	lda $a6                      ; f032: a5 a6
	adc.w #$000f                 ; f034: 69 0f 00
	tax                          ; f037: aa
	tdc                          ; f038: 7b
	sep #$20                     ; f039: e2 20
	ldy.w #$0005                 ; f03b: a0 05 00
	asl $289c                    ; f03e: 0e 9c 28
	.db $90, $23                 ; f041: 90 23
loc_f043:
	lda $af                      ; f043: a5 af
	cmp.b #$07                   ; f045: c9 07
	.db $d0, $0e                 ; f047: d0 0e
loc_f049:
	sec                          ; f049: 38
	lda $1000,x                  ; f04a: bd 00 10
	sbc.b #$01                   ; f04d: e9 01
	cmp.b #$01                   ; f04f: c9 01
	.db $b0, $10                 ; f051: b0 10
loc_f053:
	lda.b #$01                   ; f053: a9 01
	.db $80, $0c                 ; f055: 80 0c
loc_f057:
	clc                          ; f057: 18
	lda $1000,x                  ; f058: bd 00 10
	adc $af                      ; f05b: 65 af
	cmp.b #$63                   ; f05d: c9 63
	.db $90, $02                 ; f05f: 90 02
loc_f061:
	lda.b #$63                   ; f061: a9 63
loc_f063:
	sta $1000,x                  ; f063: 9d 00 10
loc_f066:
	inx                          ; f066: e8
	dey                          ; f067: 88
	.db $d0, $d4                 ; f068: d0 d4
loc_f06a:
	lda $289d                    ; f06a: ad 9d 28
	sta $b1                      ; f06d: 85 b1
	ldx.w #$270f                 ; f06f: a2 0f 27
	stx $b3                      ; f072: 86 b3
	lda.b #$09                   ; f074: a9 09
	jsr $f0c8                    ; f076: 20 c8 f0
loc_f079:
	lda $289e                    ; f079: ad 9e 28
	and.b #$1f                   ; f07c: 29 1f
	sta $b1                      ; f07e: 85 b1
	ldx.w #$03e7                 ; f080: a2 e7 03
	stx $b3                      ; f083: 86 b3
	lda.b #$0d                   ; f085: a9 0d
	jsr $f0c8                    ; f087: 20 c8 f0
loc_f08a:
	ldx.w #$007f                 ; f08a: a2 7f 00
	lda.b #$ff                   ; f08d: a9 ff
	sta $291c,x                  ; f08f: 9d 1c 29
	dex                          ; f092: ca
	.db $10, $fa                 ; f093: 10 fa
loc_f095:
	ldx $a6                      ; f095: a6 a6
	lda $1002,x                  ; f097: bd 02 10
	sta $b5                      ; f09a: 85 b5
	lda $1001,x                  ; f09c: bd 01 10
	and.b #$0f                   ; f09f: 29 0f
	sta $af                      ; f0a1: 85 af
	asl                          ; f0a3: 0a
	clc                          ; f0a4: 18
	adc $af                      ; f0a5: 65 af
	tax                          ; f0a7: aa
	stx $b1                      ; f0a8: 86 b1
	stz $b3                      ; f0aa: 64 b3
	stz $9a                      ; f0ac: 64 9a
	stz $9b                      ; f0ae: 64 9b
	ldx $b1                      ; f0b0: a6 b1
	lda $13fddd,x                ; f0b2: bf dd fd 13
	cmp.b #$ff                   ; f0b6: c9 ff
	.db $f0, $03                 ; f0b8: f0 03
loc_f0ba:
	jsr $f103                    ; f0ba: 20 03 f1
loc_f0bd:
	inc $b1                      ; f0bd: e6 b1
	inc $b3                      ; f0bf: e6 b3
	lda $b3                      ; f0c1: a5 b3
	cmp.b #$03                   ; f0c3: c9 03
	.db $d0, $e9                 ; f0c5: d0 e9
loc_f0c7:
	rts                          ; f0c7: 60

; --- Block at $f0c8-$f102 ---
loc_f0c8:
	sta $b5                      ; f0c8: 85 b5
	stz $b6                      ; f0ca: 64 b6
	rep #$20                     ; f0cc: c2 20
	clc                          ; f0ce: 18
	lda $a6                      ; f0cf: a5 a6
	adc $b5                      ; f0d1: 65 b5
	sta $b5                      ; f0d3: 85 b5
	tdc                          ; f0d5: 7b
	sep #$20                     ; f0d6: e2 20
	tdc                          ; f0d8: 7b
	tax                          ; f0d9: aa
	lda $b1                      ; f0da: a5 b1
	jsr $8485                    ; f0dc: 20 85 84
loc_f0df:
	jsr $8379                    ; f0df: 20 79 83
loc_f0e2:
	clc                          ; f0e2: 18
	adc $b1                      ; f0e3: 65 b1
	sta $af                      ; f0e5: 85 af
	lda.b #$00                   ; f0e7: a9 00
	adc.b #$00                   ; f0e9: 69 00
	sta $b0                      ; f0eb: 85 b0
	rep #$20                     ; f0ed: c2 20
	ldx $b5                      ; f0ef: a6 b5
	lda $1000,x                  ; f0f1: bd 00 10
	adc $af                      ; f0f4: 65 af
	cmp $b3                      ; f0f6: c5 b3
	.db $90, $02                 ; f0f8: 90 02
loc_f0fa:
	lda $b3                      ; f0fa: a5 b3
loc_f0fc:
	sta $1000,x                  ; f0fc: 9d 00 10
	tdc                          ; f0ff: 7b
	sep #$20                     ; f100: e2 20
	rts                          ; f102: 60

; --- Block at $f103-$f185 ---
loc_f103:
	pha                          ; f103: 48
	sta $e5                      ; f104: 85 e5
	ldy.w #$c700                 ; f106: a0 00 c7
	lda.b #$0f                   ; f109: a9 0f
	jsr $8443                    ; f10b: 20 43 84
loc_f10e:
	tyx                          ; f10e: bb
	tdc                          ; f10f: 7b
	tay                          ; f110: a8
	lda $0fc700,x                ; f111: bf 00 c7 0f
	sta $289c,y                  ; f115: 99 9c 28
	inx                          ; f118: e8
	iny                          ; f119: c8
	cmp.b #$ff                   ; f11a: c9 ff
	.db $d0, $f3                 ; f11c: d0 f3
loc_f11e:
	tdc                          ; f11e: 7b
	tax                          ; f11f: aa
	lda $289c,x                  ; f120: bd 9c 28
	cmp.b #$ff                   ; f123: c9 ff
	.db $f0, $12                 ; f125: f0 12
loc_f127:
	cmp $b5                      ; f127: c5 b5
	.db $d0, $0a                 ; f129: d0 0a
loc_f12b:
	ldy $9a                      ; f12b: a4 9a
	lda $289d,x                  ; f12d: bd 9d 28
	sta $291c,y                  ; f130: 99 1c 29
	inc $9a                      ; f133: e6 9a
loc_f135:
	inx                          ; f135: e8
	inx                          ; f136: e8
	.db $80, $e7                 ; f137: 80 e7
loc_f139:
	pla                          ; f139: 68
	sta $df                      ; f13a: 85 df
	lda.b #$18                   ; f13c: a9 18
	sta $e1                      ; f13e: 85 e1
	jsr $83e0                    ; f140: 20 e0 83
loc_f143:
	ldx $e3                      ; f143: a6 e3
	tdc                          ; f145: 7b
	tay                          ; f146: a8
	sty $b7                      ; f147: 84 b7
	lda $1560,x                  ; f149: bd 60 15
	.db $d0, $2e                 ; f14c: d0 2e
loc_f14e:
	lda $291c,y                  ; f14e: b9 1c 29
	sta $b9                      ; f151: 85 b9
	cmp.b #$ff                   ; f153: c9 ff
	.db $f0, $2e                 ; f155: f0 2e
loc_f157:
	cmp.b #$19                   ; f157: c9 19
	.db $b0, $06                 ; f159: b0 06
loc_f15b:
	lda $b3                      ; f15b: a5 b3
	.db $d0, $1d                 ; f15d: d0 1d
loc_f15f:
	.db $80, $15                 ; f15f: 80 15
loc_f161:
	cmp.b #$31                   ; f161: c9 31
	.db $b0, $07                 ; f163: b0 07
loc_f165:
	lda $b3                      ; f165: a5 b3
	dec                          ; f167: 3a
	.db $d0, $12                 ; f168: d0 12
loc_f16a:
	.db $80, $0a                 ; f16a: 80 0a
loc_f16c:
	cmp.b #$42                   ; f16c: c9 42
	.db $b0, $f5                 ; f16e: b0 f5
loc_f170:
	lda $b3                      ; f170: a5 b3
	cmp.b #$02                   ; f172: c9 02
	.db $d0, $06                 ; f174: d0 06
loc_f176:
	lda $b9                      ; f176: a5 b9
	sta $1560,x                  ; f178: 9d 60 15
	iny                          ; f17b: c8
loc_f17c:
	inx                          ; f17c: e8
	inc $b7                      ; f17d: e6 b7
	lda $b7                      ; f17f: a5 b7
	cmp.b #$18                   ; f181: c9 18
	.db $d0, $c4                 ; f183: d0 c4
loc_f185:
	rts                          ; f185: 60

; --- Block at $f186-$f20d ---
loc_f186:
	tdc                          ; f186: 7b
	tax                          ; f187: aa
	tay                          ; f188: a8
	lda $2041,x                  ; f189: bd 41 20
	sta $202d,x                  ; f18c: 9d 2d 20
	lda $2042,x                  ; f18f: bd 42 20
	sta $202e,x                  ; f192: 9d 2e 20
	lda $38bf,y                  ; f195: b9 bf 38
	sta $2003,x                  ; f198: 9d 03 20
	lda $38c0,y                  ; f19b: b9 c0 38
	sta $2004,x                  ; f19e: 9d 04 20
	lda $38c1,y                  ; f1a1: b9 c1 38
	sta $2006,x                  ; f1a4: 9d 06 20
	jsr $85bc                    ; f1a7: 20 bc 85
loc_f1aa:
	iny                          ; f1aa: c8
	iny                          ; f1ab: c8
	iny                          ; f1ac: c8
	cpy.w #$000f                 ; f1ad: c0 0f 00
	.db $d0, $d7                 ; f1b0: d0 d7
loc_f1b2:
	tdc                          ; f1b2: 7b
	tax                          ; f1b3: aa
	tay                          ; f1b4: a8
	stz $a9                      ; f1b5: 64 a9
	stz $ab                      ; f1b7: 64 ab
	lda $2000,x                  ; f1b9: bd 00 20
	sta $1000,y                  ; f1bc: 99 00 10
	inx                          ; f1bf: e8
	iny                          ; f1c0: c8
	inc $ab                      ; f1c1: e6 ab
	lda $ab                      ; f1c3: a5 ab
	cmp.b #$40                   ; f1c5: c9 40
	.db $d0, $f0                 ; f1c7: d0 f0
loc_f1c9:
	rep #$20                     ; f1c9: c2 20
	txa                          ; f1cb: 8a
	clc                          ; f1cc: 18
	adc.w #$0040                 ; f1cd: 69 40 00
	tax                          ; f1d0: aa
	tdc                          ; f1d1: 7b
	sep #$20                     ; f1d2: e2 20
	inc $a9                      ; f1d4: e6 a9
	lda $a9                      ; f1d6: a5 a9
	cmp.b #$05                   ; f1d8: c9 05
	.db $d0, $db                 ; f1da: d0 db
loc_f1dc:
	tdc                          ; f1dc: 7b
	tax                          ; f1dd: aa
	tay                          ; f1de: a8
	stx $a9                      ; f1df: 86 a9
	lda $321b,x                  ; f1e1: bd 1b 32
	sta $1440,y                  ; f1e4: 99 40 14
	.db $f0, $04                 ; f1e7: f0 04
loc_f1e9:
	cmp.b #$60                   ; f1e9: c9 60
	.db $d0, $06                 ; f1eb: d0 06
loc_f1ed:
	tdc                          ; f1ed: 7b
	sta $1440,y                  ; f1ee: 99 40 14
	.db $80, $03                 ; f1f1: 80 03
loc_f1f3:
	lda $321c,x                  ; f1f3: bd 1c 32
loc_f1f6:
	sta $1441,y                  ; f1f6: 99 41 14
	.db $d0, $04                 ; f1f9: d0 04
loc_f1fb:
	tdc                          ; f1fb: 7b
	sta $1440,y                  ; f1fc: 99 40 14
loc_f1ff:
	inx                          ; f1ff: e8
	inx                          ; f200: e8
	inx                          ; f201: e8
	inx                          ; f202: e8
	iny                          ; f203: c8
	iny                          ; f204: c8
	inc $a9                      ; f205: e6 a9
	lda $a9                      ; f207: a5 a9
	cmp.b #$30                   ; f209: c9 30
	.db $d0, $d4                 ; f20b: d0 d4
loc_f20d:
	jmp $95d8                    ; f20d: 4c d8 95

; --- Block at $f864-$f866 ---
loc_f864:
	ldx.b #$08                   ; f864: a2 08
	brk #$22                     ; f866: 00 22

; --- Block at $fae5-$fb20 ---
loc_fae5:
	tdc                          ; fae5: 7b
	tay                          ; fae6: a8
	lda $4e                      ; fae7: a5 4e
	asl                          ; fae9: 0a
	tax                          ; faea: aa
	lda $13f99d,x                ; faeb: bf 9d f9 13
	sta $01                      ; faef: 85 01
	lda $13f99e,x                ; faf1: bf 9e f9 13
	sta $00                      ; faf5: 85 00
	inx                          ; faf7: e8
	inx                          ; faf8: e8
	rep #$20                     ; faf9: c2 20
	asl $00                      ; fafb: 06 00
	rol $02                      ; fafd: 26 02
	tdc                          ; faff: 7b
	sep #$20                     ; fb00: e2 20
	lda $02                      ; fb02: a5 02
	and.b #$01                   ; fb04: 29 01
	eor.b #$01                   ; fb06: 49 01
	sta $7613,y                  ; fb08: 99 13 76
	sta $7693,y                  ; fb0b: 99 93 76
	sta $7713,y                  ; fb0e: 99 13 77
	sta $7793,y                  ; fb11: 99 93 77
	sta $7813,y                  ; fb14: 99 13 78
	sta $7893,y                  ; fb17: 99 93 78
	iny                          ; fb1a: c8
	iny                          ; fb1b: c8
	iny                          ; fb1c: c8
	iny                          ; fb1d: c8
	cpy.b #$40                   ; fb1e: c0 40
	brk #$d0                     ; fb20: 00 d0

; --- Block at $fd48-$fd52 ---
loc_fd48:
	sta.l $002131                ; fd48: 8f 31 21 00 ; CGADSUB
	sta $f43d                    ; fd4c: 8d 3d f4
	sta $f43f                    ; fd4f: 8d 3f f4
	rts                          ; fd52: 60

; --- Block at $38000-$38000 ---
loc_38000:
	jmp $8009                    ; 38000: 4c 09 80

; --- Block at $38006-$38006 ---
loc_38006:
	jmp $8036                    ; 38006: 4c 36 80

; --- Block at $3f7e8-$3f866 ---
loc_3f7e8:
	lda $0e                      ; 3f7e8: a5 0e
	.db $f0, $0a                 ; 3f7ea: f0 0a
loc_3f7ec:
	dec $0e                      ; 3f7ec: c6 0e
	lda.b #$31                   ; 3f7ee: a9 31
	sta $10                      ; 3f7f0: 85 10
	lda.b #$ff                   ; 3f7f2: a9 ff
	clc                          ; 3f7f4: 18
	rtl                          ; 3f7f5: 6b
loc_3f7f6:
	lda [$1c]                    ; 3f7f6: a7 1c
	cmp.b #$fe                   ; 3f7f8: c9 fe
	.db $f0, $12                 ; 3f7fa: f0 12
loc_3f7fc:
	cmp.b #$ff                   ; 3f7fc: c9 ff
	.db $f0, $18                 ; 3f7fe: f0 18
loc_3f800:
	ldx $1c                      ; 3f800: a6 1c
	inx                          ; 3f802: e8
	stx $1c                      ; 3f803: 86 1c
	pha                          ; 3f805: 48
	lda $f330                    ; 3f806: ad 30 f3
	sta $10                      ; 3f809: 85 10
	pla                          ; 3f80b: 68
	sec                          ; 3f80c: 38
	rtl                          ; 3f80d: 6b
loc_3f80e:
	ldx $1c                      ; 3f80e: a6 1c
	inx                          ; 3f810: e8
	stx $1c                      ; 3f811: 86 1c
	lda [$1c]                    ; 3f813: a7 1c
	dec                          ; 3f815: 3a
	sta $0e                      ; 3f816: 85 0e
loc_3f818:
	lda.b #$31                   ; 3f818: a9 31
	sta $10                      ; 3f81a: 85 10
	lda.b #$ff                   ; 3f81c: a9 ff
	ldx $1c                      ; 3f81e: a6 1c
	inx                          ; 3f820: e8
	stx $1c                      ; 3f821: 86 1c
	clc                          ; 3f823: 18
	rtl                          ; 3f824: 6b
	lda.b #$40                   ; 3f825: a9 40
	jsr $fd48                    ; 3f827: 20 48 fd
loc_3f82a:
	lda.b #$1f                   ; 3f82a: a9 1f
	sta $f433                    ; 3f82c: 8d 33 f4
	sta $f435                    ; 3f82f: 8d 35 f4
	sta $f434                    ; 3f832: 8d 34 f4
	lda.b #$e0                   ; 3f835: a9 e0
	sta $ef88                    ; 3f837: 8d 88 ef
	lda.b #$10                   ; 3f83a: a9 10
	sta $f49b                    ; 3f83c: 8d 9b f4
	lda.b #$05                   ; 3f83f: a9 05
	sta $ef87                    ; 3f841: 8d 87 ef
	rtl                          ; 3f844: 6b
	lda.b #$24                   ; 3f845: a9 24
	jsl $02f5d4                  ; 3f847: 22 d4 f5 02
loc_3f84b:
	jsl $01eeb9                  ; 3f84b: 22 b9 ee 01
loc_3f84f:
	jsr $f864                    ; 3f84f: 20 64 f8
loc_3f852:
	jsl $01eeb5                  ; 3f852: 22 b5 ee 01
loc_3f856:
	jsr $f864                    ; 3f856: 20 64 f8
loc_3f859:
	jsl $01eec5                  ; 3f859: 22 c5 ee 01
loc_3f85d:
	jsr $f864                    ; 3f85d: 20 64 f8
loc_3f860:
	stz $ef87                    ; 3f860: 9c 87 ef
	rtl                          ; 3f863: 6b
	ldx.b #$08                   ; 3f864: a2 08
	brk #$22                     ; 3f866: 00 22

; --- Block at $3f980-$3f9c0 ---
loc_3f980:
	stz $4e                      ; 3f980: 64 4e
	tdc                          ; 3f982: 7b
	tax                          ; 3f983: aa
	stx $f406                    ; 3f984: 8e 06 f4
	stx $f408                    ; 3f987: 8e 08 f4
	jsl $028006                  ; 3f98a: 22 06 80 02
loc_3f98e:
	jsl $01ed70                  ; 3f98e: 22 70 ed 01
loc_3f992:
	lda $4e                      ; 3f992: a5 4e
	and.b #$07                   ; 3f994: 29 07
	asl                          ; 3f996: 0a
	tax                          ; 3f997: aa
	rep #$20                     ; 3f998: c2 20
	lda $13fcc5,x                ; 3f99a: bf c5 fc 13
	sta $f406                    ; 3f99e: 8d 06 f4
	tdc                          ; 3f9a1: 7b
	sep #$20                     ; 3f9a2: e2 20
	inc $4e                      ; 3f9a4: e6 4e
	lda $4e                      ; 3f9a6: a5 4e
	cmp.b #$40                   ; 3f9a8: c9 40
	.db $d0, $de                 ; 3f9aa: d0 de
loc_3f9ac:
	tdc                          ; 3f9ac: 7b
	tax                          ; 3f9ad: aa
	stx $f406                    ; 3f9ae: 8e 06 f4
	jsl $01ed70                  ; 3f9b1: 22 70 ed 01
loc_3f9b5:
	rtl                          ; 3f9b5: 6b
	phx                          ; 3f9b6: da
	inc $97                      ; 3f9b7: e6 97
	lda $97                      ; 3f9b9: a5 97
	tax                          ; 3f9bb: aa
	lda $1900,x                  ; 3f9bc: bd 00 19
	plx                          ; 3f9bf: fa
	rts                          ; 3f9c0: 60

; --- Block at $3fac8-$3fb20 ---
loc_3fac8:
	lda $38e6                    ; 3fac8: ad e6 38
	.db $d0, $04                 ; 3facb: d0 04
loc_3facd:
	jsr $fae5                    ; 3facd: 20 e5 fa
loc_3fad0:
	rtl                          ; 3fad0: 6b
loc_3fad1:
	cmp.b #$01                   ; 3fad1: c9 01
	.db $d0, $04                 ; 3fad3: d0 04
loc_3fad5:
	jsr $fae5                    ; 3fad5: 20 e5 fa
loc_3fad8:
	rtl                          ; 3fad8: 6b
loc_3fad9:
	cmp.b #$02                   ; 3fad9: c9 02
	.db $d0, $04                 ; 3fadb: d0 04
loc_3fadd:
	jsr $fae5                    ; 3fadd: 20 e5 fa
loc_3fae0:
	rtl                          ; 3fae0: 6b
loc_3fae1:
	jsr $fae5                    ; 3fae1: 20 e5 fa
loc_3fae4:
	rtl                          ; 3fae4: 6b
	tdc                          ; 3fae5: 7b
	tay                          ; 3fae6: a8
	lda $4e                      ; 3fae7: a5 4e
	asl                          ; 3fae9: 0a
	tax                          ; 3faea: aa
	lda $13f99d,x                ; 3faeb: bf 9d f9 13
	sta $01                      ; 3faef: 85 01
	lda $13f99e,x                ; 3faf1: bf 9e f9 13
	sta $00                      ; 3faf5: 85 00
	inx                          ; 3faf7: e8
	inx                          ; 3faf8: e8
	rep #$20                     ; 3faf9: c2 20
	asl $00                      ; 3fafb: 06 00
	rol $02                      ; 3fafd: 26 02
	tdc                          ; 3faff: 7b
	sep #$20                     ; 3fb00: e2 20
	lda $02                      ; 3fb02: a5 02
	and.b #$01                   ; 3fb04: 29 01
	eor.b #$01                   ; 3fb06: 49 01
	sta $7613,y                  ; 3fb08: 99 13 76
	sta $7693,y                  ; 3fb0b: 99 93 76
	sta $7713,y                  ; 3fb0e: 99 13 77
	sta $7793,y                  ; 3fb11: 99 93 77
	sta $7813,y                  ; 3fb14: 99 13 78
	sta $7893,y                  ; 3fb17: 99 93 78
	iny                          ; 3fb1a: c8
	iny                          ; 3fb1b: c8
	iny                          ; 3fb1c: c8
	iny                          ; 3fb1d: c8
	cpy.b #$40                   ; 3fb1e: c0 40
	brk #$d0                     ; 3fb20: 00 d0

