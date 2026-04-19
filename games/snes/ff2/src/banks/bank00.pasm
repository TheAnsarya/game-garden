; Disassembled by Peony
; Platform: SNES
; Mapper: FINAL FANTASY 2
; MapMode: LoRom
; RomSize: 1024K
; Banks: 32
; CopierHeader: False

.snes

; --- Block at $8000-$8088 ---
bank0_start:
	sei                          ; 8000: 78
	clc                          ; 8001: 18
	xce                          ; 8002: fb
	rep #$10                     ; 8003: c2 10
	sep #$20                     ; 8005: e2 20
	stz $420d                    ; 8007: 9c 0d 42 ; MEMSEL
	stz $420b                    ; 800a: 9c 0b 42 ; MDMAEN
	stz $420c                    ; 800d: 9c 0c 42 ; HDMAEN
	lda.b #$8f                   ; 8010: a9 8f
	sta $2100                    ; 8012: 8d 00 21 ; INIDISP
	lda.b #$00                   ; 8015: a9 00
	sta $4200                    ; 8017: 8d 00 42 ; NMITIMEN
	lda.b #$00                   ; 801a: a9 00
	xba                          ; 801c: eb
	lda.b #$00                   ; 801d: a9 00
	pha                          ; 801f: 48
	plb                          ; 8020: ab
	ldx.w #$0600                 ; 8021: a2 00 06
	phx                          ; 8024: da
	pld                          ; 8025: 2b
	ldx.w #$02ff                 ; 8026: a2 ff 02
	txs                          ; 8029: 9a
	jsr $87cf                    ; 802a: 20 cf 87
loc_802d:
	jsl $15c8e5                  ; 802d: 22 e5 c8 15
loc_8031:
	jsl $15c9b0                  ; 8031: 22 b0 c9 15
loc_8035:
	jsl $048000                  ; 8035: 22 00 80 04
loc_8039:
	jsl $01801c                  ; 8039: 22 1c 80 01
loc_803d:
	jsr $85fa                    ; 803d: 20 fa 85
loc_8040:
	jsl $01800c                  ; 8040: 22 0c 80 01
loc_8044:
	lda $17ef                    ; 8044: ad ef 17
	clc                          ; 8047: 18
	adc $0fff                    ; 8048: 6d ff 0f
	sta $17ef                    ; 804b: 8d ef 17
	asl                          ; 804e: 0a
	sta $17ee                    ; 804f: 8d ee 17
	lda $17fb                    ; 8052: ad fb 17
	cmp.b #$00                   ; 8055: c9 00
	.db $d0, $32                 ; 8057: d0 32
loc_8059:
	jsr $8290                    ; 8059: 20 90 82
loc_805c:
	jsr $92d0                    ; 805c: 20 d0 92
loc_805f:
	jsl $15c23e                  ; 805f: 22 3e c2 15
loc_8063:
	jsl $15c8e5                  ; 8063: 22 e5 c8 15
loc_8067:
	jsr $8302                    ; 8067: 20 02 83
loc_806a:
	jsr $f1aa                    ; 806a: 20 aa f1
loc_806d:
	lda.b #$01                   ; 806d: a9 01
	sta $b1                      ; 806f: 85 b1
	lda.b #$01                   ; 8071: a9 01
	sta $7d                      ; 8073: 85 7d
	lda.b #$0f                   ; 8075: a9 0f
	sta $80                      ; 8077: 85 80
	lda.b #$81                   ; 8079: a9 81
	sta $4200                    ; 807b: 8d 00 42 ; NMITIMEN
	cli                          ; 807e: 58
	stz $ab                      ; 807f: 64 ab
	lda.b #$10                   ; 8081: a9 10
	jsr $df63                    ; 8083: 20 63 df
loc_8086:
	stz $b1                      ; 8086: 64 b1
	jmp $80af                    ; 8088: 4c af 80

; --- Block at $808b-$809d ---
loc_808b:
	jsr $f1aa                    ; 808b: 20 aa f1
loc_808e:
	jsl $15c8e5                  ; 808e: 22 e5 c8 15
loc_8092:
	jsr $8302                    ; 8092: 20 02 83
loc_8095:
	lda.b #$01                   ; 8095: a9 01
	sta $7d                      ; 8097: 85 7d
	stz $df                      ; 8099: 64 df
	stz $b1                      ; 809b: 64 b1
	jmp $8313                    ; 809d: 4c 13 83

; --- Block at $80a0-$80af ---
loc_80a0:
	stz $79                      ; 80a0: 64 79
	stz $7a                      ; 80a2: 64 7a
	stz $7b                      ; 80a4: 64 7b
	lda.b #$81                   ; 80a6: a9 81
	sta $4200                    ; 80a8: 8d 00 42 ; NMITIMEN
	jsr $8f2d                    ; 80ab: 20 2d 8f
loc_80ae:
	cli                          ; 80ae: 58

; --- Block at $80af-$80bf ---
loc_80af:
	jsr $8f0f                    ; 80af: 20 0f 8f
loc_80b2:
	stz $e0                      ; 80b2: 64 e0
	jsl $15ca23                  ; 80b4: 22 23 ca 15
loc_80b8:
	jsr $81f4                    ; 80b8: 20 f4 81
loc_80bb:
	lda $e0                      ; 80bb: a5 e0
	.db $f0, $03                 ; 80bd: f0 03
loc_80bf:
	jmp $80af                    ; 80bf: 4c af 80

; --- Block at $80c2-$80c9 ---
loc_80c2:
	lda $1700                    ; 80c2: ad 00 17
	cmp.b #$03                   ; 80c5: c9 03
	.db $d0, $03                 ; 80c7: d0 03
loc_80c9:
	jmp $8138                    ; 80c9: 4c 38 81

; --- Block at $80cc-$80d8 ---
loc_80cc:
	lda.b #$07                   ; 80cc: a9 07
	sta $2105                    ; 80ce: 8d 05 21 ; BGMODE
	jsr $9b16                    ; 80d1: 20 16 9b
loc_80d4:
	lda $e0                      ; 80d4: a5 e0
	.db $f0, $03                 ; 80d6: f0 03
loc_80d8:
	jmp $80af                    ; 80d8: 4c af 80

; --- Block at $80db-$80df ---
loc_80db:
	lda $cd                      ; 80db: a5 cd
	.db $f0, $03                 ; 80dd: f0 03
loc_80df:
	jmp $8313                    ; 80df: 4c 13 83

; --- Block at $80e2-$80ec ---
loc_80e2:
	jsr $891e                    ; 80e2: 20 1e 89
loc_80e5:
	lda $85                      ; 80e5: a5 85
	.db $f0, $06                 ; 80e7: f0 06
loc_80e9:
	jsr $86cb                    ; 80e9: 20 cb 86
loc_80ec:
	jmp $808e                    ; 80ec: 4c 8e 80

; --- Block at $80ef-$80f3 ---
loc_80ef:
	lda $e0                      ; 80ef: a5 e0
	.db $f0, $03                 ; 80f1: f0 03
loc_80f3:
	jmp $80af                    ; 80f3: 4c af 80

; --- Block at $80f6-$8100 ---
loc_80f6:
	jsr $a966                    ; 80f6: 20 66 a9
loc_80f9:
	lda $e0                      ; 80f9: a5 e0
	.db $f0, $06                 ; 80fb: f0 06
loc_80fd:
	stz $06ab                    ; 80fd: 9c ab 06
	jmp $80af                    ; 8100: 4c af 80

; --- Block at $8103-$8117 ---
loc_8103:
	jsr $a653                    ; 8103: 20 53 a6
loc_8106:
	jsr $8f59                    ; 8106: 20 59 8f
loc_8109:
	jsr $92a2                    ; 8109: 20 a2 92
loc_810c:
	jsr $8c29                    ; 810c: 20 29 8c
loc_810f:
	jsl $15c852                  ; 810f: 22 52 c8 15
loc_8113:
	lda $ce                      ; 8113: a5 ce
	.db $d0, $03                 ; 8115: d0 03
loc_8117:
	jmp $80af                    ; 8117: 4c af 80

; --- Block at $811a-$8124 ---
loc_811a:
	stz $ce                      ; 811a: 64 ce
	lda $1700                    ; 811c: ad 00 17
	.db $d0, $06                 ; 811f: d0 06
loc_8121:
	jsr $9315                    ; 8121: 20 15 93
loc_8124:
	jmp $80a0                    ; 8124: 4c a0 80

; --- Block at $8127-$812e ---
loc_8127:
	cmp.b #$01                   ; 8127: c9 01
	.db $d0, $06                 ; 8129: d0 06
loc_812b:
	jsr $9409                    ; 812b: 20 09 94
loc_812e:
	jmp $80a0                    ; 812e: 4c a0 80

; --- Block at $8131-$8135 ---
loc_8131:
	cmp.b #$02                   ; 8131: c9 02
	.db $d0, $00                 ; 8133: d0 00
loc_8135:
	jmp $80af                    ; 8135: 4c af 80

; --- Block at $8138-$813f ---
loc_8138:
	jsr $99b1                    ; 8138: 20 b1 99
loc_813b:
	lda $cd                      ; 813b: a5 cd
	.db $f0, $03                 ; 813d: f0 03
loc_813f:
	jmp $8313                    ; 813f: 4c 13 83

; --- Block at $8142-$814c ---
loc_8142:
	jsr $891e                    ; 8142: 20 1e 89
loc_8145:
	lda $85                      ; 8145: a5 85
	.db $f0, $06                 ; 8147: f0 06
loc_8149:
	jsr $86f8                    ; 8149: 20 f8 86
loc_814c:
	jmp $808e                    ; 814c: 4c 8e 80

; --- Block at $814f-$8159 ---
loc_814f:
	jsr $962e                    ; 814f: 20 2e 96
loc_8152:
	lda $85                      ; 8152: a5 85
	.db $f0, $06                 ; 8154: f0 06
loc_8156:
	jsr $86f8                    ; 8156: 20 f8 86
loc_8159:
	jmp $808e                    ; 8159: 4c 8e 80

; --- Block at $815c-$8160 ---
loc_815c:
	lda $e0                      ; 815c: a5 e0
	.db $f0, $03                 ; 815e: f0 03
loc_8160:
	jmp $80af                    ; 8160: 4c af 80

; --- Block at $8163-$81c1 ---
loc_8163:
	jsr $a723                    ; 8163: 20 23 a7
loc_8166:
	jsr $bb56                    ; 8166: 20 56 bb
loc_8169:
	jsr $a653                    ; 8169: 20 53 a6
loc_816c:
	jsr $bd54                    ; 816c: 20 54 bd
loc_816f:
	jsr $8f59                    ; 816f: 20 59 8f
loc_8172:
	jsl $15b1e0                  ; 8172: 22 e0 b1 15
loc_8176:
	jsr $b8b0                    ; 8176: 20 b0 b8
loc_8179:
	jsl $15c852                  ; 8179: 22 52 c8 15
loc_817d:
	jsr $88a6                    ; 817d: 20 a6 88
loc_8180:
	lda $d1                      ; 8180: a5 d1
	.db $f0, $6d                 ; 8182: f0 6d
loc_8184:
	ldx $172c                    ; 8184: ae 2c 17
	dex                          ; 8187: ca
	dex                          ; 8188: ca
	dex                          ; 8189: ca
	stx $172c                    ; 818a: 8e 2c 17
	lda $172e,x                  ; 818d: bd 2e 17
	cmp.b #$fb                   ; 8190: c9 fb
	.db $90, $03                 ; 8192: 90 03
loc_8194:
	jsr $8b2b                    ; 8194: 20 2b 8b
loc_8197:
	jsr $9021                    ; 8197: 20 21 90
loc_819a:
	stz $d6                      ; 819a: 64 d6
	lda $172e,x                  ; 819c: bd 2e 17
	sec                          ; 819f: 38
	sbc.b #$fb                   ; 81a0: e9 fb
	.db $90, $20                 ; 81a2: 90 20
loc_81a4:
	sta $1700                    ; 81a4: 8d 00 17
	lda $172f,x                  ; 81a7: bd 2f 17
	sta $1706                    ; 81aa: 8d 06 17
	lda.b #$02                   ; 81ad: a9 02
	sta $1705                    ; 81af: 8d 05 17
	lda $1730,x                  ; 81b2: bd 30 17
	sta $1707                    ; 81b5: 8d 07 17
	ldx.w #$0000                 ; 81b8: a2 00 00
	stx $172c                    ; 81bb: 8e 2c 17
	jsr $8b2b                    ; 81be: 20 2b 8b
loc_81c1:
	jmp $8313                    ; 81c1: 4c 13 83

; --- Block at $81c4-$81ee ---
loc_81c4:
	lda.b #$03                   ; 81c4: a9 03
	sta $1700                    ; 81c6: 8d 00 17
	lda $172e,x                  ; 81c9: bd 2e 17
	sta $1702                    ; 81cc: 8d 02 17
	lda $172f,x                  ; 81cf: bd 2f 17
	and.b #$3f                   ; 81d2: 29 3f
	sta $1706                    ; 81d4: 8d 06 17
	lda $172f,x                  ; 81d7: bd 2f 17
	lsr                          ; 81da: 4a
	lsr                          ; 81db: 4a
	lsr                          ; 81dc: 4a
	lsr                          ; 81dd: 4a
	lsr                          ; 81de: 4a
	lsr                          ; 81df: 4a
	clc                          ; 81e0: 18
	adc.b #$02                   ; 81e1: 69 02
	and.b #$03                   ; 81e3: 29 03
	sta $1705                    ; 81e5: 8d 05 17
	lda $1730,x                  ; 81e8: bd 30 17
	sta $1707                    ; 81eb: 8d 07 17
	jmp $8313                    ; 81ee: 4c 13 83

; --- Block at $81f1-$81f1 ---
loc_81f1:
	jmp $80af                    ; 81f1: 4c af 80

; --- Block at $81f4-$81f8 ---
loc_81f4:
	lda $d5                      ; 81f4: a5 d5
	.db $d0, $01                 ; 81f6: d0 01
loc_81f8:
	rts                          ; 81f8: 60

; --- Block at $81f9-$81fd ---
loc_81f9:
	lda $50                      ; 81f9: a5 50
	.db $f0, $03                 ; 81fb: f0 03
loc_81fd:
	jmp $828f                    ; 81fd: 4c 8f 82

; --- Block at $8200-$8206 ---
loc_8200:
	lda $02                      ; 8200: a5 02
	and.b #$40                   ; 8202: 29 40
	.db $d0, $03                 ; 8204: d0 03
loc_8206:
	jmp $828f                    ; 8206: 4c 8f 82

; --- Block at $8209-$821b ---
loc_8209:
	lda.b #$01                   ; 8209: a9 01
	sta $50                      ; 820b: 85 50
	lda $1700                    ; 820d: ad 00 17
	cmp.b #$03                   ; 8210: c9 03
	.db $d0, $0a                 ; 8212: d0 0a
loc_8214:
	lda $0fdb                    ; 8214: ad db 0f
	and.b #$30                   ; 8217: 29 30
	ora.b #$80                   ; 8219: 09 80
	jmp $822a                    ; 821b: 4c 2a 82

; --- Block at $821e-$8225 ---
loc_821e:
	lda $1704                    ; 821e: ad 04 17
	.db $d0, $05                 ; 8221: d0 05
loc_8223:
	lda.b #$40                   ; 8223: a9 40
	jmp $822a                    ; 8225: 4c 2a 82

; --- Block at $8228-$822a ---
loc_8228:
	lda.b #$00                   ; 8228: a9 00

; --- Block at $822a-$825c ---
loc_822a:
	sta $1a04                    ; 822a: 8d 04 1a
	jsr $87ea                    ; 822d: 20 ea 87
loc_8230:
	jsl $018000                  ; 8230: 22 00 80 01
loc_8234:
	lda $1700                    ; 8234: ad 00 17
	cmp.b #$03                   ; 8237: c9 03
	.db $d0, $06                 ; 8239: d0 06
loc_823b:
	ldx $16aa                    ; 823b: ae aa 16
	stx $0cdd                    ; 823e: 8e dd 0c
loc_8241:
	jsr $87f3                    ; 8241: 20 f3 87
loc_8244:
	lda $1a03                    ; 8244: ad 03 1a
	.db $f0, $46                 ; 8247: f0 46
loc_8249:
	lda.b #$01                   ; 8249: a9 01
	sta $b1                      ; 824b: 85 b1
	stz $ab                      ; 824d: 64 ab
	lda $1a03                    ; 824f: ad 03 1a
	cmp.b #$03                   ; 8252: c9 03
	.db $b0, $09                 ; 8254: b0 09
loc_8256:
	lda $1a03                    ; 8256: ad 03 1a
	clc                          ; 8259: 18
	adc.b #$76                   ; 825a: 69 76
	jmp $8287                    ; 825c: 4c 87 82

; --- Block at $825f-$8265 ---
loc_825f:
	cmp.b #$03                   ; 825f: c9 03
	.db $d0, $05                 ; 8261: d0 05
loc_8263:
	lda.b #$87                   ; 8263: a9 87
	jmp $8287                    ; 8265: 4c 87 82

; --- Block at $8268-$826e ---
loc_8268:
	cmp.b #$04                   ; 8268: c9 04
	.db $d0, $05                 ; 826a: d0 05
loc_826c:
	lda.b #$86                   ; 826c: a9 86
	jmp $8287                    ; 826e: 4c 87 82

; --- Block at $8271-$8277 ---
loc_8271:
	cmp.b #$05                   ; 8271: c9 05
	.db $d0, $05                 ; 8273: d0 05
loc_8275:
	lda.b #$fb                   ; 8275: a9 fb
	jmp $8287                    ; 8277: 4c 87 82

; --- Block at $827a-$8282 ---
loc_827a:
	cmp.b #$06                   ; 827a: c9 06
	.db $d0, $07                 ; 827c: d0 07
loc_827e:
	lda.b #$01                   ; 827e: a9 01
	sta $c0                      ; 8280: 85 c0
	jmp $828a                    ; 8282: 4c 8a 82

; --- Block at $8285-$8287 ---
loc_8285:
	lda.b #$db                   ; 8285: a9 db

; --- Block at $8287-$828f ---
loc_8287:
	jsr $df63                    ; 8287: 20 63 df
loc_828a:
	stz $b1                      ; 828a: 64 b1
	jsr $8b3f                    ; 828c: 20 3f 8b

; --- Block at $828f-$828f ---
loc_828f:
	rts                          ; 828f: 60

; --- Block at $8290-$8301 ---
loc_8290:
	stz $1700                    ; 8290: 9c 00 17
	stz $1701                    ; 8293: 9c 01 17
	stz $1703                    ; 8296: 9c 03 17
	stz $170f                    ; 8299: 9c 0f 17
	stz $1712                    ; 829c: 9c 12 17
	stz $1718                    ; 829f: 9c 18 17
	stz $171c                    ; 82a2: 9c 1c 17
	stz $1720                    ; 82a5: 9c 20 17
	stz $1724                    ; 82a8: 9c 24 17
	stz $1728                    ; 82ab: 9c 28 17
	stz $172b                    ; 82ae: 9c 2b 17
	stz $171b                    ; 82b1: 9c 1b 17
	stz $171f                    ; 82b4: 9c 1f 17
	stz $1723                    ; 82b7: 9c 23 17
	stz $1727                    ; 82ba: 9c 27 17
	ldx.w #$0000                 ; 82bd: a2 00 00
	stx $172c                    ; 82c0: 8e 2c 17
	ldx.w #$0000                 ; 82c3: a2 00 00
	lda $12f200,x                ; 82c6: bf 00 f2 12
	sta $12e0,x                  ; 82ca: 9d e0 12
	inx                          ; 82cd: e8
	cpx.w #$0040                 ; 82ce: e0 40 00
	.db $d0, $f3                 ; 82d1: d0 f3
loc_82d3:
	ldx.w #$0000                 ; 82d3: a2 00 00
	lda $12f240,x                ; 82d6: bf 40 f2 12
	sta $1280,x                  ; 82da: 9d 80 12
	inx                          ; 82dd: e8
	cpx.w #$0020                 ; 82de: e0 20 00
	.db $d0, $f3                 ; 82e1: d0 f3
loc_82e3:
	ldx.w #$0000                 ; 82e3: a2 00 00
	stz $12a0,x                  ; 82e6: 9e a0 12
	inx                          ; 82e9: e8
	cpx.w #$0020                 ; 82ea: e0 20 00
	.db $d0, $f7                 ; 82ed: d0 f7
loc_82ef:
	lda.b #$fe                   ; 82ef: a9 fe
	sta $149c                    ; 82f1: 8d 9c 14
	lda.b #$ff                   ; 82f4: a9 ff
	sta $149e                    ; 82f6: 8d 9e 14
	lda.b #$01                   ; 82f9: a9 01
	sta $149d                    ; 82fb: 8d 9d 14
	sta $149f                    ; 82fe: 8d 9f 14
	rts                          ; 8301: 60

; --- Block at $8302-$830b ---
loc_8302:
	lda $1704                    ; 8302: ad 04 17
	tax                          ; 8305: aa
	lda $830c,x                  ; 8306: bd 0c 83
	sta $ac                      ; 8309: 85 ac
	rts                          ; 830b: 60

; --- Block at $8313-$831e ---
loc_8313:
	lda $1700                    ; 8313: ad 00 17
	.db $d0, $09                 ; 8316: d0 09
loc_8318:
	jsr $8502                    ; 8318: 20 02 85
loc_831b:
	jsr $904b                    ; 831b: 20 4b 90
loc_831e:
	jmp $80a0                    ; 831e: 4c a0 80

; --- Block at $8321-$832b ---
loc_8321:
	cmp.b #$01                   ; 8321: c9 01
	.db $d0, $09                 ; 8323: d0 09
loc_8325:
	jsr $853c                    ; 8325: 20 3c 85
loc_8328:
	jsr $904b                    ; 8328: 20 4b 90
loc_832b:
	jmp $80a0                    ; 832b: 4c a0 80

; --- Block at $832e-$8338 ---
loc_832e:
	cmp.b #$02                   ; 832e: c9 02
	.db $d0, $09                 ; 8330: d0 09
loc_8332:
	jsr $8574                    ; 8332: 20 74 85
loc_8335:
	jsr $904b                    ; 8335: 20 4b 90
loc_8338:
	jmp $80a0                    ; 8338: 4c a0 80

; --- Block at $833b-$8342 ---
loc_833b:
	lda $85                      ; 833b: a5 85
	.db $f0, $06                 ; 833d: f0 06
loc_833f:
	jsr $8452                    ; 833f: 20 52 84
loc_8342:
	jmp $8348                    ; 8342: 4c 48 83

; --- Block at $8345-$834b ---
loc_8345:
	jsr $83a4                    ; 8345: 20 a4 83
loc_8348:
	jsr $904b                    ; 8348: 20 4b 90
loc_834b:
	jmp $80a0                    ; 834b: 4c a0 80

; --- Block at $834e-$83a3 ---
loc_834e:
	lda.b #$80                   ; 834e: a9 80
	sta $2100                    ; 8350: 8d 00 21 ; INIDISP
	stz $420c                    ; 8353: 9c 0c 42 ; HDMAEN
	stz $4200                    ; 8356: 9c 00 42 ; NMITIMEN
	sei                          ; 8359: 78
	jsr $8f59                    ; 835a: 20 59 8f
loc_835d:
	stz $7a                      ; 835d: 64 7a
	stz $94                      ; 835f: 64 94
	stz $eb                      ; 8361: 64 eb
	stz $e9                      ; 8363: 64 e9
	stz $eb                      ; 8365: 64 eb
	stz $ec                      ; 8367: 64 ec
	stz $ed                      ; 8369: 64 ed
	stz $ea                      ; 836b: 64 ea
	stz $e7                      ; 836d: 64 e7
	stz $e8                      ; 836f: 64 e8
	stz $d4                      ; 8371: 64 d4
	stz $ab                      ; 8373: 64 ab
	stz $cf                      ; 8375: 64 cf
	stz $da                      ; 8377: 64 da
	stz $c9                      ; 8379: 64 c9
	stz $c4                      ; 837b: 64 c4
	stz $c1                      ; 837d: 64 c1
	lda.b #$01                   ; 837f: a9 01
	sta $54                      ; 8381: 85 54
	sta $55                      ; 8383: 85 55
	sta $50                      ; 8385: 85 50
	sta $51                      ; 8387: 85 51
	sta $52                      ; 8389: 85 52
	sta $53                      ; 838b: 85 53
	sta $56                      ; 838d: 85 56
	sta $57                      ; 838f: 85 57
	stz $66                      ; 8391: 64 66
	stz $67                      ; 8393: 64 67
	stz $68                      ; 8395: 64 68
	stz $69                      ; 8397: 64 69
	lda.b #$10                   ; 8399: a9 10
	sta $ad                      ; 839b: 85 ad
	ldx.w #$0000                 ; 839d: a2 00 00
	stx $06fb                    ; 83a0: 8e fb 06
	rts                          ; 83a3: 60

; --- Block at $83a4-$8452 ---
loc_83a4:
	jsr $834e                    ; 83a4: 20 4e 83
loc_83a7:
	jsr $85db                    ; 83a7: 20 db 85
loc_83aa:
	stz $ac                      ; 83aa: 64 ac
	lda $1702                    ; 83ac: ad 02 17
	sta $18                      ; 83af: 85 18
	stz $19                      ; 83b1: 64 19
	lda $1701                    ; 83b3: ad 01 17
	.db $f0, $02                 ; 83b6: f0 02
loc_83b8:
	inc $19                      ; 83b8: e6 19
loc_83ba:
	asl $18                      ; 83ba: 06 18
	rol $19                      ; 83bc: 26 19
	asl $18                      ; 83be: 06 18
	rol $19                      ; 83c0: 26 19
	ldx $18                      ; 83c2: a6 18
	stx $1a                      ; 83c4: 86 1a
	asl $18                      ; 83c6: 06 18
	rol $19                      ; 83c8: 26 19
	lda $18                      ; 83ca: a5 18
	clc                          ; 83cc: 18
	adc $1a                      ; 83cd: 65 1a
	sta $18                      ; 83cf: 85 18
	lda $19                      ; 83d1: a5 19
	adc $1b                      ; 83d3: 65 1b
	sta $19                      ; 83d5: 85 19
	lda $18                      ; 83d7: a5 18
	clc                          ; 83d9: 18
	adc $1702                    ; 83da: 6d 02 17
	sta $18                      ; 83dd: 85 18
	lda $1701                    ; 83df: ad 01 17
	.db $f0, $02                 ; 83e2: f0 02
loc_83e4:
	lda.b #$01                   ; 83e4: a9 01
loc_83e6:
	adc $19                      ; 83e6: 65 19
	sta $19                      ; 83e8: 85 19
	ldx $18                      ; 83ea: a6 18
	ldy.w #$0000                 ; 83ec: a0 00 00
	lda $159c84,x                ; 83ef: bf 84 9c 15
	sta $0fdb,y                  ; 83f3: 99 db 0f
	inx                          ; 83f6: e8
	iny                          ; 83f7: c8
	cpy.w #$000d                 ; 83f8: c0 0d 00
	.db $d0, $f2                 ; 83fb: d0 f2
loc_83fd:
	lda $159c90,x                ; 83fd: bf 90 9c 15
	sec                          ; 8401: 38
	sbc $0fe7                    ; 8402: ed e7 0f
	sta $0711                    ; 8405: 8d 11 07
	lda $0fdc                    ; 8408: ad dc 0f
	sta $06f9                    ; 840b: 8d f9 06
	lda $0fdd                    ; 840e: ad dd 0f
	sta $19                      ; 8411: 85 19
	stz $18                      ; 8413: 64 18
	ldx $18                      ; 8415: a6 18
	ldy.w #$0000                 ; 8417: a0 00 00
	lda $148e00,x                ; 841a: bf 00 8e 14
	sta $0edb,y                  ; 841e: 99 db 0e
	inx                          ; 8421: e8
	iny                          ; 8422: c8
	cpy.w #$0100                 ; 8423: c0 00 01
	.db $d0, $f2                 ; 8426: d0 f2
loc_8428:
	lda $0fdd                    ; 8428: ad dd 0f
	asl                          ; 842b: 0a
	asl                          ; 842c: 0a
	sta $19                      ; 842d: 85 19
	stz $18                      ; 842f: 64 18
	ldx $18                      ; 8431: a6 18
	lda.b #$7f                   ; 8433: a9 7f
	pha                          ; 8435: 48
	plb                          ; 8436: ab
	ldy.w #$0000                 ; 8437: a0 00 00
	lda $149e00,x                ; 843a: bf 00 9e 14
	sta $4800,y                  ; 843e: 99 00 48
	inx                          ; 8441: e8
	iny                          ; 8442: c8
	cpy.w #$0400                 ; 8443: c0 00 04
	.db $d0, $f2                 ; 8446: d0 f2
loc_8448:
	lda.b #$00                   ; 8448: a9 00
	pha                          ; 844a: 48
	plb                          ; 844b: ab
	jsr $f80c                    ; 844c: 20 0c f8
loc_844f:
	jsr $be89                    ; 844f: 20 89 be

; --- Block at $8452-$84cd ---
loc_8452:
	jsr $834e                    ; 8452: 20 4e 83
loc_8455:
	lda.b #$17                   ; 8455: a9 17
	sta $212c                    ; 8457: 8d 2c 21 ; TM
	lda.b #$09                   ; 845a: a9 09
	sta $2105                    ; 845c: 8d 05 21 ; BGMODE
	jsl $15c226                  ; 845f: 22 26 c2 15
loc_8463:
	ldx.w #$2000                 ; 8463: a2 00 20
	stx $47                      ; 8466: 86 47
	ldx.w #$1000                 ; 8468: a2 00 10
	stx $45                      ; 846b: 86 45
	lda.b #$0a                   ; 846d: a9 0a
	sta $3c                      ; 846f: 85 3c
	ldx.w #$f000                 ; 8471: a2 00 f0
	stx $3d                      ; 8474: 86 3d
	jsl $15ca8b                  ; 8476: 22 8b ca 15
loc_847a:
	ldx.w #$2800                 ; 847a: a2 00 28
	stx $47                      ; 847d: 86 47
	ldx.w #$1000                 ; 847f: a2 00 10
	stx $45                      ; 8482: 86 45
	stz $76                      ; 8484: 64 76
	jsl $15cab7                  ; 8486: 22 b7 ca 15
loc_848a:
	jsl $15b088                  ; 848a: 22 88 b0 15
loc_848e:
	lda $0fdf                    ; 848e: ad df 0f
	and.b #$7f                   ; 8491: 29 7f
	jsr $f39d                    ; 8493: 20 9d f3
loc_8496:
	jsl $15c1f9                  ; 8496: 22 f9 c1 15
loc_849a:
	jsl $15c6db                  ; 849a: 22 db c6 15
loc_849e:
	lda $85                      ; 849e: a5 85
	.db $d0, $07                 ; 84a0: d0 07
loc_84a2:
	lda $b1                      ; 84a2: a5 b1
	.db $d0, $03                 ; 84a4: d0 03
loc_84a6:
	jsr $b618                    ; 84a6: 20 18 b6
loc_84a9:
	stz $d1                      ; 84a9: 64 d1
	stz $85                      ; 84ab: 64 85
	lda $b1                      ; 84ad: a5 b1
	.db $d0, $03                 ; 84af: d0 03
loc_84b1:
	jsr $8b3f                    ; 84b1: 20 3f 8b
loc_84b4:
	lda $81                      ; 84b4: a5 81
	.db $d0, $21                 ; 84b6: d0 21
loc_84b8:
	lda.b #$11                   ; 84b8: a9 11
	sta $212d                    ; 84ba: 8d 2d 21 ; TS
	lda $0fe4                    ; 84bd: ad e4 0f
	lsr                          ; 84c0: 4a
	.db $90, $0d                 ; 84c1: 90 0d
loc_84c3:
	lda.b #$02                   ; 84c3: a9 02
	sta $2130                    ; 84c5: 8d 30 21 ; CGWSEL
	lda.b #$43                   ; 84c8: a9 43
	sta $2131                    ; 84ca: 8d 31 21 ; CGADSUB
	jmp $84ea                    ; 84cd: 4c ea 84

; --- Block at $84d0-$84d6 ---
loc_84d0:
	stz $2130                    ; 84d0: 9c 30 21 ; CGWSEL
	stz $2131                    ; 84d3: 9c 31 21 ; CGADSUB
	jmp $84ea                    ; 84d6: 4c ea 84

; --- Block at $84d9-$8501 ---
loc_84d9:
	stz $212d                    ; 84d9: 9c 2d 21 ; TS
	lda.b #$83                   ; 84dc: a9 83
	sta $2131                    ; 84de: 8d 31 21 ; CGADSUB
	lda $83                      ; 84e1: a5 83
	and.b #$e0                   ; 84e3: 29 e0
	ora $81                      ; 84e5: 05 81
	sta $2132                    ; 84e7: 8d 32 21 ; COLDATA
loc_84ea:
	jsr $f8c1                    ; 84ea: 20 c1 f8
loc_84ed:
	jsr $f80c                    ; 84ed: 20 0c f8
loc_84f0:
	jsl $15cb07                  ; 84f0: 22 07 cb 15
loc_84f4:
	jsr $8840                    ; 84f4: 20 40 88
loc_84f7:
	jsl $15cb65                  ; 84f7: 22 65 cb 15
loc_84fb:
	jsr $9584                    ; 84fb: 20 84 95
loc_84fe:
	jsr $f2ab                    ; 84fe: 20 ab f2
loc_8501:
	rts                          ; 8501: 60

; --- Block at $8502-$853b ---
loc_8502:
	jsr $834e                    ; 8502: 20 4e 83
loc_8505:
	jsr $85ab                    ; 8505: 20 ab 85
loc_8508:
	stz $1701                    ; 8508: 9c 01 17
	stz $06fa                    ; 850b: 9c fa 06
	jsr $8d4b                    ; 850e: 20 4b 8d
loc_8511:
	lda.b #$14                   ; 8511: a9 14
	ldx.w #$8900                 ; 8513: a2 00 89
	jsr $8f95                    ; 8516: 20 95 8f
loc_8519:
	lda.b #$14                   ; 8519: a9 14
	ldy.w #RESET                 ; 851b: a0 00 80
	jsr $f385                    ; 851e: 20 85 f3
loc_8521:
	ldx.w #$0000                 ; 8521: a2 00 00
	lda $148a80,x                ; 8524: bf 80 8a 14
	sta $0edb,x                  ; 8528: 9d db 0e
	inx                          ; 852b: e8
	cpx.w #$0100                 ; 852c: e0 00 01
	.db $d0, $f3                 ; 852f: d0 f3
loc_8531:
	jsr $9574                    ; 8531: 20 74 95
loc_8534:
	jsr $f6e9                    ; 8534: 20 e9 f6
loc_8537:
	jsl $15c163                  ; 8537: 22 63 c1 15
loc_853b:
	rts                          ; 853b: 60

; --- Block at $853c-$8573 ---
loc_853c:
	jsr $834e                    ; 853c: 20 4e 83
loc_853f:
	jsr $85ab                    ; 853f: 20 ab 85
loc_8542:
	lda.b #$01                   ; 8542: a9 01
	sta $1701                    ; 8544: 8d 01 17
	stz $06fa                    ; 8547: 9c fa 06
	jsr $8ca6                    ; 854a: 20 a6 8c
loc_854d:
	lda.b #$14                   ; 854d: a9 14
	ldx.w #$8980                 ; 854f: a2 80 89
	jsr $8f95                    ; 8552: 20 95 8f
loc_8555:
	lda.b #$14                   ; 8555: a9 14
	ldy.w #$8200                 ; 8557: a0 00 82
	jsr $f385                    ; 855a: 20 85 f3
loc_855d:
	ldx.w #$0000                 ; 855d: a2 00 00
	lda $148b80,x                ; 8560: bf 80 8b 14
	sta $0edb,x                  ; 8564: 9d db 0e
	inx                          ; 8567: e8
	cpx.w #$0100                 ; 8568: e0 00 01
	.db $d0, $f3                 ; 856b: d0 f3
loc_856d:
	jsr $9574                    ; 856d: 20 74 95
loc_8570:
	jsr $f6e9                    ; 8570: 20 e9 f6
loc_8573:
	rts                          ; 8573: 60

; --- Block at $8574-$85aa ---
loc_8574:
	jsr $834e                    ; 8574: 20 4e 83
loc_8577:
	jsr $85ab                    ; 8577: 20 ab 85
loc_857a:
	lda.b #$02                   ; 857a: a9 02
	sta $1701                    ; 857c: 8d 01 17
	lda.b #$02                   ; 857f: a9 02
	sta $06fa                    ; 8581: 8d fa 06
	lda.b #$14                   ; 8584: a9 14
	ldx.w #$8a00                 ; 8586: a2 00 8a
	jsr $8f95                    ; 8589: 20 95 8f
loc_858c:
	lda.b #$14                   ; 858c: a9 14
	ldy.w #$8400                 ; 858e: a0 00 84
	jsr $f385                    ; 8591: 20 85 f3
loc_8594:
	ldx.w #$0000                 ; 8594: a2 00 00
	lda $148c80,x                ; 8597: bf 80 8c 14
	sta $0edb,x                  ; 859b: 9d db 0e
	inx                          ; 859e: e8
	cpx.w #$0100                 ; 859f: e0 00 01
	.db $d0, $f3                 ; 85a2: d0 f3
loc_85a4:
	jsr $9574                    ; 85a4: 20 74 95
loc_85a7:
	jsr $f6e9                    ; 85a7: 20 e9 f6
loc_85aa:
	rts                          ; 85aa: 60

; --- Block at $85ab-$85da ---
loc_85ab:
	jsr $85db                    ; 85ab: 20 db 85
loc_85ae:
	stz $d1                      ; 85ae: 64 d1
	lda $85                      ; 85b0: a5 85
	.db $d0, $05                 ; 85b2: d0 05
loc_85b4:
	lda.b #$02                   ; 85b4: a9 02
	sta $1705                    ; 85b6: 8d 05 17
loc_85b9:
	stz $85                      ; 85b9: 64 85
	lda.b #$07                   ; 85bb: a9 07
	sta $2105                    ; 85bd: 8d 05 21 ; BGMODE
	lda.b #$11                   ; 85c0: a9 11
	sta $212c                    ; 85c2: 8d 2c 21 ; TM
	stz $2130                    ; 85c5: 9c 30 21 ; CGWSEL
	stz $2131                    ; 85c8: 9c 31 21 ; CGADSUB
	lda $b1                      ; 85cb: a5 b1
	.db $d0, $03                 ; 85cd: d0 03
loc_85cf:
	jsr $8b3f                    ; 85cf: 20 3f 8b
loc_85d2:
	jsl $15b181                  ; 85d2: 22 81 b1 15
loc_85d6:
	jsl $15c6db                  ; 85d6: 22 db c6 15
loc_85da:
	rts                          ; 85da: 60

; --- Block at $85db-$85ee ---
loc_85db:
	ldx.w #$0000                 ; 85db: a2 00 00
	lda $1004,x                  ; 85de: bd 04 10
	and.b #$bf                   ; 85e1: 29 bf
	sta $1004,x                  ; 85e3: 9d 04 10
	jsr $e530                    ; 85e6: 20 30 e5
loc_85e9:
	cpx.w #$0140                 ; 85e9: e0 40 01
	.db $d0, $f0                 ; 85ec: d0 f0
loc_85ee:
	rts                          ; 85ee: 60

; --- Block at $85ef-$85f9 ---
loc_85ef:
	lda.b #$80                   ; 85ef: a9 80
	sta $2100                    ; 85f1: 8d 00 21 ; INIDISP
	lda.b #$00                   ; 85f4: a9 00
	sta $4200                    ; 85f6: 8d 00 42 ; NMITIMEN
	rts                          ; 85f9: 60

; --- Block at $85fa-$8680 ---
loc_85fa:
	jsr $85ef                    ; 85fa: 20 ef 85
loc_85fd:
	stz $420b                    ; 85fd: 9c 0b 42 ; MDMAEN
	stz $420c                    ; 8600: 9c 0c 42 ; HDMAEN
	lda.b #$01                   ; 8603: a9 01
	sta $1e00                    ; 8605: 8d 00 1e
	lda.b #$15                   ; 8608: a9 15
	sta $1e01                    ; 860a: 8d 01 1e
	jsl $048004                  ; 860d: 22 04 80 04
loc_8611:
	jsl $15c8e5                  ; 8611: 22 e5 c8 15
loc_8615:
	lda.b #$03                   ; 8615: a9 03
	sta $1700                    ; 8617: 8d 00 17
	lda.b #$01                   ; 861a: a9 01
	sta $212c                    ; 861c: 8d 2c 21 ; TM
	lda.b #$01                   ; 861f: a9 01
	sta $212d                    ; 8621: 8d 2d 21 ; TS
	lda.b #$00                   ; 8624: a9 00
	sta $2130                    ; 8626: 8d 30 21 ; CGWSEL
	sta $2131                    ; 8629: 8d 31 21 ; CGADSUB
	lda.b #$01                   ; 862c: a9 01
	sta $2105                    ; 862e: 8d 05 21 ; BGMODE
	jsr $8f59                    ; 8631: 20 59 8f
loc_8634:
	jsr $8690                    ; 8634: 20 90 86
loc_8637:
	ldx.w #$1800                 ; 8637: a2 00 18
	stx $47                      ; 863a: 86 47
	ldx.w #$0800                 ; 863c: a2 00 08
	stx $45                      ; 863f: 86 45
	ldx.w #$e000                 ; 8641: a2 00 e0
	stx $3d                      ; 8644: 86 3d
	jsl $15ca8b                  ; 8646: 22 8b ca 15
loc_864a:
	ldx.w #$0000                 ; 864a: a2 00 00
	lda $08e800,x                ; 864d: bf 00 e8 08
	sta $0cdb,x                  ; 8651: 9d db 0c
	inx                          ; 8654: e8
	cpx.w #$0100                 ; 8655: e0 00 01
	.db $d0, $f3                 ; 8658: d0 f3
loc_865a:
	lda.b #$00                   ; 865a: a9 00
	sta $2100                    ; 865c: 8d 00 21 ; INIDISP
	lda.b #$81                   ; 865f: a9 81
	sta $4200                    ; 8661: 8d 00 42 ; NMITIMEN
	lda.b #$01                   ; 8664: a9 01
	jsr $8b92                    ; 8666: 20 92 8b
loc_8669:
	lda.b #$01                   ; 8669: a9 01
	sta $54                      ; 866b: 85 54
	stz $7a                      ; 866d: 64 7a
	lda.b #$01                   ; 866f: a9 01
	sta $7e                      ; 8671: 85 7e
	jsr $8f1e                    ; 8673: 20 1e 8f
loc_8676:
	inc $7e                      ; 8676: e6 7e
	lda $02                      ; 8678: a5 02
	and.b #$80                   ; 867a: 29 80
	.db $d0, $05                 ; 867c: d0 05
loc_867e:
	stz $54                      ; 867e: 64 54
	jmp $8673                    ; 8680: 4c 73 86

; --- Block at $8683-$868f ---
loc_8683:
	lda $54                      ; 8683: a5 54
	.db $d0, $ec                 ; 8685: d0 ec
loc_8687:
	lda.b #$01                   ; 8687: a9 01
	jsr $8bb3                    ; 8689: 20 b3 8b
loc_868c:
	jsr $85ef                    ; 868c: 20 ef 85
loc_868f:
	rts                          ; 868f: 60

; --- Block at $8690-$86a7 ---
loc_8690:
	ldx.w #$0000                 ; 8690: a2 00 00
	stx $47                      ; 8693: 86 47
	ldx.w #$2000                 ; 8695: a2 00 20
	stx $45                      ; 8698: 86 45
	lda.b #$08                   ; 869a: a9 08
	sta $3c                      ; 869c: 85 3c
	ldx.w #$c000                 ; 869e: a2 00 c0
	stx $3d                      ; 86a1: 86 3d
	jsl $15ca8b                  ; 86a3: 22 8b ca 15
loc_86a7:
	rts                          ; 86a7: 60

; --- Block at $86c2-$86ca ---
loc_86c2:
	inx                          ; 86c2: e8
	inx                          ; 86c3: e8
	inx                          ; 86c4: e8
	inx                          ; 86c5: e8
	iny                          ; 86c6: c8
	iny                          ; 86c7: c8
	iny                          ; 86c8: c8
	iny                          ; 86c9: c8
	rts                          ; 86ca: 60

; --- Block at $86cb-$86f7 ---
loc_86cb:
	lda.b #$3f                   ; 86cb: a9 3f
	jsr $8b7b                    ; 86cd: 20 7b 8b
loc_86d0:
	lda.b #$01                   ; 86d0: a9 01
	sta $212c                    ; 86d2: 8d 2c 21 ; TM
	stz $79                      ; 86d5: 64 79
	jsr $8f1e                    ; 86d7: 20 1e 8f
loc_86da:
	stz $420c                    ; 86da: 9c 0c 42 ; HDMAEN
	lda $79                      ; 86dd: a5 79
	tax                          ; 86df: aa
	lda $14fb5e,x                ; 86e0: bf 5e fb 14
	sta $ad                      ; 86e4: 85 ad
	jsr $8e9c                    ; 86e6: 20 9c 8e
loc_86e9:
	jsr $8ee6                    ; 86e9: 20 e6 8e
loc_86ec:
	inc $79                      ; 86ec: e6 79
	lda $79                      ; 86ee: a5 79
	cmp.b #$28                   ; 86f0: c9 28
	.db $d0, $e3                 ; 86f2: d0 e3
loc_86f4:
	jsr $8739                    ; 86f4: 20 39 87
loc_86f7:
	rts                          ; 86f7: 60

; --- Block at $86f8-$8723 ---
loc_86f8:
	lda.b #$3f                   ; 86f8: a9 3f
	jsr $8b7b                    ; 86fa: 20 7b 8b
loc_86fd:
	lda.b #$03                   ; 86fd: a9 03
	sta $212c                    ; 86ff: 8d 2c 21 ; TM
	stz $79                      ; 8702: 64 79
	jsr $8f1e                    ; 8704: 20 1e 8f
loc_8707:
	lda $79                      ; 8707: a5 79
	lsr                          ; 8709: 4a
	tax                          ; 870a: aa
	lda $8724,x                  ; 870b: bd 24 87
	sta $2106                    ; 870e: 8d 06 21 ; MOSAIC
	inc $79                      ; 8711: e6 79
	lda $79                      ; 8713: a5 79
	cmp.b #$2a                   ; 8715: c9 2a
	.db $d0, $eb                 ; 8717: d0 eb
loc_8719:
	lda $c6                      ; 8719: a5 c6
	.db $d0, $03                 ; 871b: d0 03
loc_871d:
	jsr $8a97                    ; 871d: 20 97 8a
loc_8720:
	jsr $8739                    ; 8720: 20 39 87
loc_8723:
	rts                          ; 8723: 60

; --- Block at $8739-$8762 ---
loc_8739:
	ldx $1800                    ; 8739: ae 00 18
	cpx.w #$01b7                 ; 873c: e0 b7 01
	.db $90, $0a                 ; 873f: 90 0a
loc_8741:
	cpx.w #$01b9                 ; 8741: e0 b9 01
	.db $b0, $05                 ; 8744: b0 05
loc_8746:
	lda.b #$10                   ; 8746: a9 10
	sta $1802                    ; 8748: 8d 02 18
loc_874b:
	lda $1700                    ; 874b: ad 00 17
	cmp.b #$03                   ; 874e: c9 03
	.db $d0, $23                 ; 8750: d0 23
loc_8752:
	lda $1701                    ; 8752: ad 01 17
	.db $f0, $1e                 ; 8755: f0 1e
loc_8757:
	lda $1702                    ; 8757: ad 02 17
	cmp.b #$5a                   ; 875a: c9 5a
	.db $90, $07                 ; 875c: 90 07
loc_875e:
	cmp.b #$5d                   ; 875e: c9 5d
	.db $b0, $03                 ; 8760: b0 03
loc_8762:
	jmp $876d                    ; 8762: 4c 6d 87

; --- Block at $8765-$8775 ---
loc_8765:
	cmp.b #$67                   ; 8765: c9 67
	.db $90, $0c                 ; 8767: 90 0c
loc_8769:
	cmp.b #$7f                   ; 8769: c9 7f
	.db $b0, $08                 ; 876b: b0 08
loc_876d:
	lda $1801                    ; 876d: ad 01 18
	ora.b #$80                   ; 8770: 09 80
	sta $1801                    ; 8772: 8d 01 18

; --- Block at $8775-$878f ---
loc_8775:
	jsr $85ef                    ; 8775: 20 ef 85
loc_8778:
	php                          ; 8778: 08
	sei                          ; 8779: 78
	jsl $038000                  ; 877a: 22 00 80 03
loc_877e:
	jsr $87cf                    ; 877e: 20 cf 87
loc_8781:
	plp                          ; 8781: 28
	lda $1803                    ; 8782: ad 03 18
	.db $10, $0b                 ; 8785: 10 0b
loc_8787:
	jsl $15c9b0                  ; 8787: 22 b0 c9 15
loc_878b:
	ldx.w #$02ff                 ; 878b: a2 ff 02
	txs                          ; 878e: 9a
	jmp $8040                    ; 878f: 4c 40 80

; --- Block at $8792-$879b ---
loc_8792:
	lda $c6                      ; 8792: a5 c6
	.db $f0, $08                 ; 8794: f0 08
loc_8796:
	sta $1804                    ; 8796: 8d 04 18
	stz $c6                      ; 8799: 64 c6
	jmp $87b8                    ; 879b: 4c b8 87

; --- Block at $879e-$87ce ---
loc_879e:
	lda $1804                    ; 879e: ad 04 18
	ora $1805                    ; 87a1: 0d 05 18
	ora $1806                    ; 87a4: 0d 06 18
	ora $1807                    ; 87a7: 0d 07 18
	ora $1808                    ; 87aa: 0d 08 18
	ora $1809                    ; 87ad: 0d 09 18
	ora $180a                    ; 87b0: 0d 0a 18
	ora $180b                    ; 87b3: 0d 0b 18
	.db $f0, $07                 ; 87b6: f0 07
loc_87b8:
	jsl $018020                  ; 87b8: 22 20 80 01
loc_87bc:
	jsr $87cf                    ; 87bc: 20 cf 87
loc_87bf:
	lda.b #$80                   ; 87bf: a9 80
	sta $2100                    ; 87c1: 8d 00 21 ; INIDISP
	lda $1700                    ; 87c4: ad 00 17
	cmp.b #$03                   ; 87c7: c9 03
	.db $d0, $03                 ; 87c9: d0 03
loc_87cb:
	jsr $be67                    ; 87cb: 20 67 be
loc_87ce:
	rts                          ; 87ce: 60

; --- Block at $87cf-$87e9 ---
loc_87cf:
	lda.b #$5c                   ; 87cf: a9 5c
	sta $0200                    ; 87d1: 8d 00 02
	sta $0204                    ; 87d4: 8d 04 02
	ldx.w #$9085                 ; 87d7: a2 85 90
	stx $0201                    ; 87da: 8e 01 02
	stz $0203                    ; 87dd: 9c 03 02
	ldx.w #$9260                 ; 87e0: a2 60 92
	stx $0205                    ; 87e3: 8e 05 02
	stz $0207                    ; 87e6: 9c 07 02
	rts                          ; 87e9: 60

; --- Block at $87ea-$87f2 ---
loc_87ea:
	lda.b #$00                   ; 87ea: a9 00
	jsr $8bb3                    ; 87ec: 20 b3 8b
loc_87ef:
	jsr $85ef                    ; 87ef: 20 ef 85
loc_87f2:
	rts                          ; 87f2: 60

; --- Block at $87f3-$8802 ---
loc_87f3:
	lda $1700                    ; 87f3: ad 00 17
	cmp.b #$03                   ; 87f6: c9 03
	.db $f0, $0b                 ; 87f8: f0 0b
loc_87fa:
	lda.b #$07                   ; 87fa: a9 07
	sta $2105                    ; 87fc: 8d 05 21 ; BGMODE
	jsr $9574                    ; 87ff: 20 74 95
loc_8802:
	jmp $8820                    ; 8802: 4c 20 88

; --- Block at $8805-$883f ---
loc_8805:
	lda.b #$09                   ; 8805: a9 09
	sta $2105                    ; 8807: 8d 05 21 ; BGMODE
	jsr $9584                    ; 880a: 20 84 95
loc_880d:
	jsr $be67                    ; 880d: 20 67 be
loc_8810:
	lda $0fe4                    ; 8810: ad e4 0f
	lsr                          ; 8813: 4a
	.db $90, $0a                 ; 8814: 90 0a
loc_8816:
	lda.b #$03                   ; 8816: a9 03
	sta $2130                    ; 8818: 8d 30 21 ; CGWSEL
	lda.b #$43                   ; 881b: a9 43
	sta $2131                    ; 881d: 8d 31 21 ; CGADSUB
loc_8820:
	jsl $15c8e5                  ; 8820: 22 e5 c8 15
loc_8824:
	jsl $15c881                  ; 8824: 22 81 c8 15
loc_8828:
	lda $1000,x                  ; 8828: bd 00 10
	.db $d0, $04                 ; 882b: d0 04
loc_882d:
	jsl $15c864                  ; 882d: 22 64 c8 15
loc_8831:
	jsr $8f59                    ; 8831: 20 59 8f
loc_8834:
	lda.b #$81                   ; 8834: a9 81
	sta $4200                    ; 8836: 8d 00 42 ; NMITIMEN
	lda.b #$00                   ; 8839: a9 00
	jsr $8b92                    ; 883b: 20 92 8b
loc_883e:
	cli                          ; 883e: 58
	rts                          ; 883f: 60

; --- Block at $8840-$8875 ---
loc_8840:
	lda.b #$7f                   ; 8840: a9 7f
	pha                          ; 8842: 48
	plb                          ; 8843: ab
	ldx.w #$0000                 ; 8844: a2 00 00
	ldy.w #$0000                 ; 8847: a0 00 00
	lda $1feed0,x                ; 884a: bf d0 ee 1f
	sta $5800,y                  ; 884e: 99 00 58
	inx                          ; 8851: e8
	iny                          ; 8852: c8
	tya                          ; 8853: 98
	and.b #$0f                   ; 8854: 29 0f
	.db $d0, $f2                 ; 8856: d0 f2
loc_8858:
	lda $1feed0,x                ; 8858: bf d0 ee 1f
	sta $5800,y                  ; 885c: 99 00 58
	inx                          ; 885f: e8
	iny                          ; 8860: c8
	lda.b #$00                   ; 8861: a9 00
	sta $5800,y                  ; 8863: 99 00 58
	iny                          ; 8866: c8
	tya                          ; 8867: 98
	and.b #$0f                   ; 8868: 29 0f
	.db $d0, $ec                 ; 886a: d0 ec
loc_886c:
	cpy.w #$0100                 ; 886c: c0 00 01
	.db $d0, $d9                 ; 886f: d0 d9
loc_8871:
	lda.b #$00                   ; 8871: a9 00
	pha                          ; 8873: 48
	plb                          ; 8874: ab
	rts                          ; 8875: 60

; --- Block at $88a6-$88ac ---
loc_88a6:
	lda $7a                      ; 88a6: a5 7a
	and.b #$01                   ; 88a8: 29 01
	.db $f0, $01                 ; 88aa: f0 01
loc_88ac:
	rts                          ; 88ac: 60

; --- Block at $88ad-$88fe ---
loc_88ad:
	lda $7a                      ; 88ad: a5 7a
	and.b #$1e                   ; 88af: 29 1e
	lsr                          ; 88b1: 4a
	tax                          ; 88b2: aa
	lda $14fc66,x                ; 88b3: bf 66 fc 14
	asl                          ; 88b7: 0a
	tax                          ; 88b8: aa
	lda $7f5800,x                ; 88b9: bf 00 58 7f
	sta $08                      ; 88bd: 85 08
	lda $7f5820,x                ; 88bf: bf 20 58 7f
	jsr $88ff                    ; 88c3: 20 ff 88
loc_88c6:
	sta $7f5800,x                ; 88c6: 9f 00 58 7f
	lda $07                      ; 88ca: a5 07
	sta $7f5820,x                ; 88cc: 9f 20 58 7f
	lda $7f5801,x                ; 88d0: bf 01 58 7f
	sta $08                      ; 88d4: 85 08
	lda $7f5821,x                ; 88d6: bf 21 58 7f
	jsr $88ff                    ; 88da: 20 ff 88
loc_88dd:
	sta $7f5801,x                ; 88dd: 9f 01 58 7f
	lda $07                      ; 88e1: a5 07
	sta $7f5821,x                ; 88e3: 9f 21 58 7f
	lda $7f5810,x                ; 88e7: bf 10 58 7f
	sta $08                      ; 88eb: 85 08
	lda $7f5830,x                ; 88ed: bf 30 58 7f
	jsr $88ff                    ; 88f1: 20 ff 88
loc_88f4:
	sta $7f5810,x                ; 88f4: 9f 10 58 7f
	lda $07                      ; 88f8: a5 07
	sta $7f5830,x                ; 88fa: 9f 30 58 7f
	rts                          ; 88fe: 60

; --- Block at $88ff-$890b ---
loc_88ff:
	sta $09                      ; 88ff: 85 09
	sta $07                      ; 8901: 85 07
	ror $09                      ; 8903: 66 09
	ror $08                      ; 8905: 66 08
	ror $07                      ; 8907: 66 07
	lda $08                      ; 8909: a5 08
	rts                          ; 890b: 60

; --- Block at $890c-$8917 ---
loc_890c:
	stz $420b                    ; 890c: 9c 0b 42 ; MDMAEN
	lda.b #$18                   ; 890f: a9 18
	sta $4301                    ; 8911: 8d 01 43 ; BBAD0
	stz $4304                    ; 8914: 9c 04 43 ; A1B0
	rts                          ; 8917: 60

; --- Block at $8918-$891d ---
loc_8918:
	lda.b #$01                   ; 8918: a9 01
	sta $420b                    ; 891a: 8d 0b 42 ; MDMAEN
	rts                          ; 891d: 60

; --- Block at $891e-$8935 ---
loc_891e:
	lda $1704                    ; 891e: ad 04 17
	.db $d0, $15                 ; 8921: d0 15
loc_8923:
	lda $a2                      ; 8923: a5 a2
	and.b #$40                   ; 8925: 29 40
	.db $f0, $0f                 ; 8927: f0 0f
loc_8929:
	lda $c0                      ; 8929: a5 c0
	.db $d0, $20                 ; 892b: d0 20
loc_892d:
	lda $ab                      ; 892d: a5 ab
	.db $f0, $07                 ; 892f: f0 07
loc_8931:
	lda $d5                      ; 8931: a5 d5
	.db $f0, $03                 ; 8933: f0 03
loc_8935:
	jmp $894d                    ; 8935: 4c 4d 89

; --- Block at $8938-$894c ---
loc_8938:
	lda $c0                      ; 8938: a5 c0
	.db $f0, $10                 ; 893a: f0 10
loc_893c:
	stz $c0                      ; 893c: 64 c0
	lda.b #$02                   ; 893e: a9 02
	sta $1e00                    ; 8940: 8d 00 1e
	lda.b #$01                   ; 8943: a9 01
	sta $1e01                    ; 8945: 8d 01 1e
	jsl $048004                  ; 8948: 22 04 80 04
loc_894c:
	rts                          ; 894c: 60

; --- Block at $894d-$8993 ---
loc_894d:
	inc $88                      ; 894d: e6 88
	inc $86                      ; 894f: e6 86
	.db $d0, $09                 ; 8951: d0 09
loc_8953:
	lda $17ef                    ; 8953: ad ef 17
	clc                          ; 8956: 18
	adc.b #$11                   ; 8957: 69 11
	sta $17ef                    ; 8959: 8d ef 17
loc_895c:
	lda $1700                    ; 895c: ad 00 17
	cmp.b #$00                   ; 895f: c9 00
	.db $d0, $3a                 ; 8961: d0 3a
loc_8963:
	lda $1707                    ; 8963: ad 07 17
	lsr                          ; 8966: 4a
	lsr                          ; 8967: 4a
	and.b #$f8                   ; 8968: 29 f8
	sta $06                      ; 896a: 85 06
	lda $1706                    ; 896c: ad 06 17
	lsr                          ; 896f: 4a
	lsr                          ; 8970: 4a
	lsr                          ; 8971: 4a
	lsr                          ; 8972: 4a
	lsr                          ; 8973: 4a
	clc                          ; 8974: 18
	adc $06                      ; 8975: 65 06
	tax                          ; 8977: aa
	lda $0ec300,x                ; 8978: bf 00 c3 0e
	sta $06                      ; 897c: 85 06
	phx                          ; 897e: da
	ply                          ; 897f: 7a
	lda $c0                      ; 8980: a5 c0
	.db $d0, $10                 ; 8982: d0 10
loc_8984:
	lda $86                      ; 8984: a5 86
	tax                          ; 8986: aa
	lda $14ee00,x                ; 8987: bf 00 ee 14
	clc                          ; 898b: 18
	adc $17ef                    ; 898c: 6d ef 17
	cmp $06                      ; 898f: c5 06
	.db $90, $01                 ; 8991: 90 01
loc_8993:
	rts                          ; 8993: 60

; --- Block at $8994-$899a ---
loc_8994:
	phy                          ; 8994: 5a
	plx                          ; 8995: fa
	lda $0ec542,x                ; 8996: bf 42 c5 0e
	jmp $8a0b                    ; 899a: 4c 0b 8a

; --- Block at $899d-$89b6 ---
loc_899d:
	cmp.b #$01                   ; 899d: c9 01
	.db $d0, $33                 ; 899f: d0 33
loc_89a1:
	lda $c0                      ; 89a1: a5 c0
	.db $d0, $12                 ; 89a3: d0 12
loc_89a5:
	lda $86                      ; 89a5: a5 86
	tax                          ; 89a7: aa
	lda $14ee00,x                ; 89a8: bf 00 ee 14
	clc                          ; 89ac: 18
	adc $17ef                    ; 89ad: 6d ef 17
	cmp $0ec340                  ; 89b0: cf 40 c3 0e
	.db $90, $01                 ; 89b4: 90 01
loc_89b6:
	rts                          ; 89b6: 60

; --- Block at $89b7-$89d1 ---
loc_89b7:
	lda $1707                    ; 89b7: ad 07 17
	lsr                          ; 89ba: 4a
	lsr                          ; 89bb: 4a
	lsr                          ; 89bc: 4a
	and.b #$fc                   ; 89bd: 29 fc
	sta $06                      ; 89bf: 85 06
	lda $1706                    ; 89c1: ad 06 17
	lsr                          ; 89c4: 4a
	lsr                          ; 89c5: 4a
	lsr                          ; 89c6: 4a
	lsr                          ; 89c7: 4a
	lsr                          ; 89c8: 4a
	clc                          ; 89c9: 18
	adc $06                      ; 89ca: 65 06
	tax                          ; 89cc: aa
	lda $0ec582,x                ; 89cd: bf 82 c5 0e
	jmp $8a0b                    ; 89d1: 4c 0b 8a

; --- Block at $89d4-$89ed ---
loc_89d4:
	cmp.b #$02                   ; 89d4: c9 02
	.db $d0, $5d                 ; 89d6: d0 5d
loc_89d8:
	lda $c0                      ; 89d8: a5 c0
	.db $d0, $12                 ; 89da: d0 12
loc_89dc:
	lda $86                      ; 89dc: a5 86
	tax                          ; 89de: aa
	lda $14ee00,x                ; 89df: bf 00 ee 14
	clc                          ; 89e3: 18
	adc $17ef                    ; 89e4: 6d ef 17
	cmp $0ec341                  ; 89e7: cf 41 c3 0e
	.db $90, $01                 ; 89eb: 90 01
loc_89ed:
	rts                          ; 89ed: 60

; --- Block at $89ee-$8a0b ---
loc_89ee:
	stz $06                      ; 89ee: 64 06
	lda $1707                    ; 89f0: ad 07 17
	cmp.b #$20                   ; 89f3: c9 20
	.db $90, $04                 ; 89f5: 90 04
loc_89f7:
	lda.b #$02                   ; 89f7: a9 02
	sta $06                      ; 89f9: 85 06
loc_89fb:
	lda $1706                    ; 89fb: ad 06 17
	cmp.b #$20                   ; 89fe: c9 20
	.db $90, $02                 ; 8a00: 90 02
loc_8a02:
	inc $06                      ; 8a02: e6 06
loc_8a04:
	lda $06                      ; 8a04: a5 06
	tax                          ; 8a06: aa
	lda $0ec592,x                ; 8a07: bf 92 c5 0e

; --- Block at $8a0b-$8a34 ---
loc_8a0b:
	jsr $8ad2                    ; 8a0b: 20 d2 8a
loc_8a0e:
	stz $3e                      ; 8a0e: 64 3e
	ldx $3d                      ; 8a10: a6 3d
	lda $0ec796,x                ; 8a12: bf 96 c7 0e
	sta $1800                    ; 8a16: 8d 00 18
	lda $1701                    ; 8a19: ad 01 17
	.db $f0, $02                 ; 8a1c: f0 02
loc_8a1e:
	lda.b #$01                   ; 8a1e: a9 01
loc_8a20:
	sta $1801                    ; 8a20: 8d 01 18
	lda $a2                      ; 8a23: a5 a2
	and.b #$07                   ; 8a25: 29 07
	tay                          ; 8a27: a8
	lda $8a91,y                  ; 8a28: b9 91 8a
	sta $1802                    ; 8a2b: 8d 02 18
	stz $c0                      ; 8a2e: 64 c0
	lda.b #$01                   ; 8a30: a9 01
	sta $85                      ; 8a32: 85 85
	rts                          ; 8a34: 60

; --- Block at $8a35-$8a72 ---
loc_8a35:
	lda $1702                    ; 8a35: ad 02 17
	sta $3d                      ; 8a38: 85 3d
	lda $1701                    ; 8a3a: ad 01 17
	.db $f0, $02                 ; 8a3d: f0 02
loc_8a3f:
	lda.b #$01                   ; 8a3f: a9 01
loc_8a41:
	sta $3e                      ; 8a41: 85 3e
	ldx $3d                      ; 8a43: a6 3d
	lda $0ec342,x                ; 8a45: bf 42 c3 0e
	.db $f0, $15                 ; 8a49: f0 15
loc_8a4b:
	sta $06                      ; 8a4b: 85 06
	lda $c0                      ; 8a4d: a5 c0
	.db $d0, $22                 ; 8a4f: d0 22
loc_8a51:
	lda $86                      ; 8a51: a5 86
	tax                          ; 8a53: aa
	lda $14ee00,x                ; 8a54: bf 00 ee 14
	clc                          ; 8a58: 18
	adc $17ef                    ; 8a59: 6d ef 17
	cmp $06                      ; 8a5c: c5 06
	.db $90, $13                 ; 8a5e: 90 13
loc_8a60:
	lda $c0                      ; 8a60: a5 c0
	.db $f0, $0e                 ; 8a62: f0 0e
loc_8a64:
	stz $c0                      ; 8a64: 64 c0
	lda.b #$02                   ; 8a66: a9 02
	sta $1e00                    ; 8a68: 8d 00 1e
	stz $1e01                    ; 8a6b: 9c 01 1e
	jsl $048004                  ; 8a6e: 22 04 80 04
loc_8a72:
	rts                          ; 8a72: 60

; --- Block at $8a73-$8a90 ---
loc_8a73:
	ldx $3d                      ; 8a73: a6 3d
	lda $0ec596,x                ; 8a75: bf 96 c5 0e
	jsr $8ad2                    ; 8a79: 20 d2 8a
loc_8a7c:
	ldx $3d                      ; 8a7c: a6 3d
	lda $0ec816,x                ; 8a7e: bf 16 c8 0e
	sta $1800                    ; 8a82: 8d 00 18
	jsr $8a97                    ; 8a85: 20 97 8a
loc_8a88:
	stz $c0                      ; 8a88: 64 c0
	lda.b #$01                   ; 8a8a: a9 01
	sta $85                      ; 8a8c: 85 85
	stz $88                      ; 8a8e: 64 88
	rts                          ; 8a90: 60

; --- Block at $8a97-$8ab5 ---
loc_8a97:
	lda $1701                    ; 8a97: ad 01 17
	.db $f0, $02                 ; 8a9a: f0 02
loc_8a9c:
	lda.b #$01                   ; 8a9c: a9 01
loc_8a9e:
	sta $1801                    ; 8a9e: 8d 01 18
	jsr $8ab6                    ; 8aa1: 20 b6 8a
loc_8aa4:
	lda.b #$e1                   ; 8aa4: a9 e1
	jsr $f165                    ; 8aa6: 20 65 f1
loc_8aa9:
	cmp.b #$00                   ; 8aa9: c9 00
	.db $d0, $08                 ; 8aab: d0 08
loc_8aad:
	lda $1802                    ; 8aad: ad 02 18
	and.b #$7f                   ; 8ab0: 29 7f
	sta $1802                    ; 8ab2: 8d 02 18
loc_8ab5:
	rts                          ; 8ab5: 60

; --- Block at $8ab6-$8ad1 ---
loc_8ab6:
	lda $a2                      ; 8ab6: a5 a2
	and.b #$20                   ; 8ab8: 29 20
	asl                          ; 8aba: 0a
	sta $06                      ; 8abb: 85 06
	lda $0fdb                    ; 8abd: ad db 0f
	and.b #$40                   ; 8ac0: 29 40
	lsr                          ; 8ac2: 4a
	ora $06                      ; 8ac3: 05 06
	sta $06                      ; 8ac5: 85 06
	lda $0fdb                    ; 8ac7: ad db 0f
	and.b #$8f                   ; 8aca: 29 8f
	ora $06                      ; 8acc: 05 06
	sta $1802                    ; 8ace: 8d 02 18
	rts                          ; 8ad1: 60

; --- Block at $8ad2-$8afe ---
loc_8ad2:
	sta $3d                      ; 8ad2: 85 3d
	stz $3e                      ; 8ad4: 64 3e
	asl $3d                      ; 8ad6: 06 3d
	rol $3e                      ; 8ad8: 26 3e
	asl $3d                      ; 8ada: 06 3d
	rol $3e                      ; 8adc: 26 3e
	asl $3d                      ; 8ade: 06 3d
	rol $3e                      ; 8ae0: 26 3e
	lda $c0                      ; 8ae2: a5 c0
	.db $d0, $1b                 ; 8ae4: d0 1b
loc_8ae6:
	lda $87                      ; 8ae6: a5 87
	tax                          ; 8ae8: aa
	lda $14ee00,x                ; 8ae9: bf 00 ee 14
	clc                          ; 8aed: 18
	adc $17ee                    ; 8aee: 6d ee 17
	inc $87                      ; 8af1: e6 87
	.db $d0, $0e                 ; 8af3: d0 0e
loc_8af5:
	lda $17ee                    ; 8af5: ad ee 17
	clc                          ; 8af8: 18
	adc.b #$11                   ; 8af9: 69 11
	sta $17ee                    ; 8afb: 8d ee 17
	jmp $8b03                    ; 8afe: 4c 03 8b

; --- Block at $8b01-$8b2a ---
loc_8b01:
	lda.b #$ff                   ; 8b01: a9 ff
loc_8b03:
	ldx $3d                      ; 8b03: a6 3d
	cmp.b #$2b                   ; 8b05: c9 2b
	.db $90, $1f                 ; 8b07: 90 1f
loc_8b09:
	inx                          ; 8b09: e8
	cmp.b #$56                   ; 8b0a: c9 56
	.db $90, $1a                 ; 8b0c: 90 1a
loc_8b0e:
	inx                          ; 8b0e: e8
	cmp.b #$81                   ; 8b0f: c9 81
	.db $90, $15                 ; 8b11: 90 15
loc_8b13:
	inx                          ; 8b13: e8
	cmp.b #$ac                   ; 8b14: c9 ac
	.db $90, $10                 ; 8b16: 90 10
loc_8b18:
	inx                          ; 8b18: e8
	cmp.b #$cc                   ; 8b19: c9 cc
	.db $90, $0b                 ; 8b1b: 90 0b
loc_8b1d:
	inx                          ; 8b1d: e8
	cmp.b #$ec                   ; 8b1e: c9 ec
	.db $90, $06                 ; 8b20: 90 06
loc_8b22:
	inx                          ; 8b22: e8
	cmp.b #$fc                   ; 8b23: c9 fc
	.db $90, $01                 ; 8b25: 90 01
loc_8b27:
	inx                          ; 8b27: e8
loc_8b28:
	stx $3d                      ; 8b28: 86 3d
	rts                          ; 8b2a: 60

; --- Block at $8b2b-$8b34 ---
loc_8b2b:
	lda.b #$86                   ; 8b2b: a9 86
	sta $1e00                    ; 8b2d: 8d 00 1e
	jsl $048004                  ; 8b30: 22 04 80 04
loc_8b34:
	rts                          ; 8b34: 60

; --- Block at $8b3f-$8b50 ---
loc_8b3f:
	lda $1704                    ; 8b3f: ad 04 17
	.db $f0, $0f                 ; 8b42: f0 0f
loc_8b44:
	lda $1704                    ; 8b44: ad 04 17
	tax                          ; 8b47: aa
	lda $8b74,x                  ; 8b48: bd 74 8b
	sta $1e01                    ; 8b4b: 8d 01 1e
	lda.b #$03                   ; 8b4e: a9 03
	jmp $8b69                    ; 8b50: 4c 69 8b

; --- Block at $8b53-$8b5e ---
loc_8b53:
	lda $1700                    ; 8b53: ad 00 17
	cmp.b #$03                   ; 8b56: c9 03
	.db $f0, $07                 ; 8b58: f0 07
loc_8b5a:
	tax                          ; 8b5a: aa
	lda $8b71,x                  ; 8b5b: bd 71 8b
	jmp $8b64                    ; 8b5e: 4c 64 8b

; --- Block at $8b61-$8b69 ---
loc_8b61:
	lda $0fe2                    ; 8b61: ad e2 0f
loc_8b64:
	sta $1e01                    ; 8b64: 8d 01 1e
	lda.b #$01                   ; 8b67: a9 01

; --- Block at $8b69-$8b70 ---
loc_8b69:
	sta $1e00                    ; 8b69: 8d 00 1e
	jsl $048004                  ; 8b6c: 22 04 80 04
loc_8b70:
	rts                          ; 8b70: 60

; --- Block at $8b7b-$8b91 ---
loc_8b7b:
	sta $1e01                    ; 8b7b: 8d 01 1e
	lda.b #$80                   ; 8b7e: a9 80
	sta $1e02                    ; 8b80: 8d 02 1e
	lda.b #$ff                   ; 8b83: a9 ff
	sta $1e03                    ; 8b85: 8d 03 1e
	lda.b #$02                   ; 8b88: a9 02
	sta $1e00                    ; 8b8a: 8d 00 1e
	jsl $048004                  ; 8b8d: 22 04 80 04
loc_8b91:
	rts                          ; 8b91: 60

; --- Block at $8b92-$8bb2 ---
loc_8b92:
	sta $82                      ; 8b92: 85 82
	stz $79                      ; 8b94: 64 79
	stz $80                      ; 8b96: 64 80
	jsr $8f1e                    ; 8b98: 20 1e 8f
loc_8b9b:
	lda $80                      ; 8b9b: a5 80
	sta $2100                    ; 8b9d: 8d 00 21 ; INIDISP
	inc $79                      ; 8ba0: e6 79
	lda $79                      ; 8ba2: a5 79
	and $82                      ; 8ba4: 25 82
	.db $d0, $f0                 ; 8ba6: d0 f0
loc_8ba8:
	inc $80                      ; 8ba8: e6 80
	lda $80                      ; 8baa: a5 80
	cmp.b #$10                   ; 8bac: c9 10
	.db $d0, $e8                 ; 8bae: d0 e8
loc_8bb0:
	dec $80                      ; 8bb0: c6 80
	rts                          ; 8bb2: 60

; --- Block at $8bb3-$8bdd ---
loc_8bb3:
	sta $82                      ; 8bb3: 85 82
	stz $79                      ; 8bb5: 64 79
	lda.b #$0f                   ; 8bb7: a9 0f
	sta $80                      ; 8bb9: 85 80
	jsr $8f1e                    ; 8bbb: 20 1e 8f
loc_8bbe:
	lda $80                      ; 8bbe: a5 80
	sta $2100                    ; 8bc0: 8d 00 21 ; INIDISP
	lda $1700                    ; 8bc3: ad 00 17
	cmp.b #$03                   ; 8bc6: c9 03
	.db $f0, $05                 ; 8bc8: f0 05
loc_8bca:
	lda.b #$30                   ; 8bca: a9 30
	sta $420c                    ; 8bcc: 8d 0c 42 ; HDMAEN
loc_8bcf:
	inc $79                      ; 8bcf: e6 79
	lda $79                      ; 8bd1: a5 79
	and $82                      ; 8bd3: 25 82
	.db $d0, $e4                 ; 8bd5: d0 e4
loc_8bd7:
	dec $80                      ; 8bd7: c6 80
	.db $10, $e0                 ; 8bd9: 10 e0
loc_8bdb:
	stz $80                      ; 8bdb: 64 80
	rts                          ; 8bdd: 60

; --- Block at $8bde-$8be6 ---
loc_8bde:
	lda $02                      ; 8bde: a5 02
	.db $d0, $fc                 ; 8be0: d0 fc
loc_8be2:
	lda $03                      ; 8be2: a5 03
	.db $d0, $f8                 ; 8be4: d0 f8
loc_8be6:
	rts                          ; 8be6: 60

; --- Block at $8be7-$8bef ---
loc_8be7:
	lda $02                      ; 8be7: a5 02
	.db $d0, $04                 ; 8be9: d0 04
loc_8beb:
	lda $03                      ; 8beb: a5 03
	.db $f0, $f8                 ; 8bed: f0 f8
loc_8bef:
	rts                          ; 8bef: 60

; --- Block at $8bf0-$8c28 ---
loc_8bf0:
	lda $7f5800,x                ; 8bf0: bf 00 58 7f
	sta $2119                    ; 8bf4: 8d 19 21 ; VMDATAH
	lda $7f5801,x                ; 8bf7: bf 01 58 7f
	sta $2119                    ; 8bfb: 8d 19 21 ; VMDATAH
	lda $7f5802,x                ; 8bfe: bf 02 58 7f
	sta $2119                    ; 8c02: 8d 19 21 ; VMDATAH
	lda $7f5803,x                ; 8c05: bf 03 58 7f
	sta $2119                    ; 8c09: 8d 19 21 ; VMDATAH
	lda $7f5804,x                ; 8c0c: bf 04 58 7f
	sta $2119                    ; 8c10: 8d 19 21 ; VMDATAH
	lda $7f5805,x                ; 8c13: bf 05 58 7f
	sta $2119                    ; 8c17: 8d 19 21 ; VMDATAH
	lda $7f5806,x                ; 8c1a: bf 06 58 7f
	sta $2119                    ; 8c1e: 8d 19 21 ; VMDATAH
	lda $7f5807,x                ; 8c21: bf 07 58 7f
	sta $2119                    ; 8c25: 8d 19 21 ; VMDATAH
	rts                          ; 8c28: 60

; --- Block at $8c29-$8c2e ---
loc_8c29:
	lda $1700                    ; 8c29: ad 00 17
	.db $d0, $03                 ; 8c2c: d0 03
loc_8c2e:
	jmp $8d83                    ; 8c2e: 4c 83 8d

; --- Block at $8c31-$8c35 ---
loc_8c31:
	cmp.b #$01                   ; 8c31: c9 01
	.db $d0, $03                 ; 8c33: d0 03
loc_8c35:
	jmp $8cc5                    ; 8c35: 4c c5 8c

; --- Block at $8c38-$8c38 ---
loc_8c38:
	rts                          ; 8c38: 60

; --- Block at $8c49-$8ca5 ---
loc_8c49:
	lda.b #$80                   ; 8c49: a9 80
	sta $2115                    ; 8c4b: 8d 15 21 ; VMAIN
	lda $7c                      ; 8c4e: a5 7c
	lsr                          ; 8c50: 4a
	and.b #$0f                   ; 8c51: 29 0f
	tax                          ; 8c53: aa
	lda $8e8c,x                  ; 8c54: bd 8c 8e
	tax                          ; 8c57: aa
	sta $2116                    ; 8c58: 8d 16 21 ; VMADDL
	lda.b #$20                   ; 8c5b: a9 20
	sta $2117                    ; 8c5d: 8d 17 21 ; VMADDH
	jsr $8bf0                    ; 8c60: 20 f0 8b
loc_8c63:
	lda $7c                      ; 8c63: a5 7c
	lsr                          ; 8c65: 4a
	and.b #$0f                   ; 8c66: 29 0f
	tax                          ; 8c68: aa
	lda $8e8c,x                  ; 8c69: bd 8c 8e
	clc                          ; 8c6c: 18
	adc.b #$40                   ; 8c6d: 69 40
	tax                          ; 8c6f: aa
	sta $2116                    ; 8c70: 8d 16 21 ; VMADDL
	lda.b #$20                   ; 8c73: a9 20
	sta $2117                    ; 8c75: 8d 17 21 ; VMADDH
	jsr $8bf0                    ; 8c78: 20 f0 8b
loc_8c7b:
	lda.b #$80                   ; 8c7b: a9 80
	sta $2115                    ; 8c7d: 8d 15 21 ; VMAIN
	ldx.w #$1e80                 ; 8c80: a2 80 1e
	stx $2116                    ; 8c83: 8e 16 21 ; VMADDL
	stz $420b                    ; 8c86: 9c 0b 42 ; MDMAEN
	stz $4300                    ; 8c89: 9c 00 43 ; DMAP0
	lda.b #$19                   ; 8c8c: a9 19
	sta $4301                    ; 8c8e: 8d 01 43 ; BBAD0
	ldx.w #$5900                 ; 8c91: a2 00 59
	stx $4302                    ; 8c94: 8e 02 43 ; A1TL0
	lda.b #$7f                   ; 8c97: a9 7f
	sta $4304                    ; 8c99: 8d 04 43 ; A1B0
	ldx.w #$0100                 ; 8c9c: a2 00 01
	stx $4305                    ; 8c9f: 8e 05 43 ; DAS0L
	jsr $8918                    ; 8ca2: 20 18 89
loc_8ca5:
	rts                          ; 8ca5: 60

; --- Block at $8ca6-$8cc4 ---
loc_8ca6:
	lda.b #$80                   ; 8ca6: a9 80
	sta $2115                    ; 8ca8: 8d 15 21 ; VMAIN
	ldx.w #$3800                 ; 8cab: a2 00 38
	stx $2116                    ; 8cae: 8e 16 21 ; VMADDL
	lda $213a                    ; 8cb1: ad 3a 21 ; RDVRAMH
	ldx.w #$0000                 ; 8cb4: a2 00 00
	lda $213a                    ; 8cb7: ad 3a 21 ; RDVRAMH
	sta $7f5800,x                ; 8cba: 9f 00 58 7f
	inx                          ; 8cbe: e8
	cpx.w #$0100                 ; 8cbf: e0 00 01
	.db $d0, $f3                 ; 8cc2: d0 f3
loc_8cc4:
	rts                          ; 8cc4: 60

; --- Block at $8cc5-$8ccb ---
loc_8cc5:
	lda $7c                      ; 8cc5: a5 7c
	and.b #$01                   ; 8cc7: 29 01
	.db $f0, $01                 ; 8cc9: f0 01
loc_8ccb:
	rts                          ; 8ccb: 60

; --- Block at $8ccc-$8d15 ---
loc_8ccc:
	lda $7c                      ; 8ccc: a5 7c
	lsr                          ; 8cce: 4a
	and.b #$0f                   ; 8ccf: 29 0f
	tax                          ; 8cd1: aa
	lda $8e8c,x                  ; 8cd2: bd 8c 8e
	ora.b #$07                   ; 8cd5: 09 07
	tax                          ; 8cd7: aa
	lda $7f5800,x                ; 8cd8: bf 00 58 7f
	sta $06                      ; 8cdc: 85 06
	ldy.w #$0007                 ; 8cde: a0 07 00
	lda $7f57ff,x                ; 8ce1: bf ff 57 7f
	sta $7f5800,x                ; 8ce5: 9f 00 58 7f
	dex                          ; 8ce9: ca
	dey                          ; 8cea: 88
	.db $d0, $f4                 ; 8ceb: d0 f4
loc_8ced:
	txa                          ; 8ced: 8a
	and.b #$f8                   ; 8cee: 29 f8
	clc                          ; 8cf0: 18
	adc.b #$47                   ; 8cf1: 69 47
	tax                          ; 8cf3: aa
	lda $7f5800,x                ; 8cf4: bf 00 58 7f
	sta $7f57b9,x                ; 8cf8: 9f b9 57 7f
	ldy.w #$0007                 ; 8cfc: a0 07 00
	lda $7f57ff,x                ; 8cff: bf ff 57 7f
	sta $7f5800,x                ; 8d03: 9f 00 58 7f
	dex                          ; 8d07: ca
	dey                          ; 8d08: 88
	.db $d0, $f4                 ; 8d09: d0 f4
loc_8d0b:
	txa                          ; 8d0b: 8a
	and.b #$f8                   ; 8d0c: 29 f8
	tax                          ; 8d0e: aa
	lda $06                      ; 8d0f: a5 06
	sta $7f5800,x                ; 8d11: 9f 00 58 7f
	rts                          ; 8d15: 60

; --- Block at $8d16-$8d4a ---
loc_8d16:
	lda.b #$80                   ; 8d16: a9 80
	sta $2115                    ; 8d18: 8d 15 21 ; VMAIN
	lda $7c                      ; 8d1b: a5 7c
	lsr                          ; 8d1d: 4a
	and.b #$0f                   ; 8d1e: 29 0f
	tax                          ; 8d20: aa
	lda $8e8c,x                  ; 8d21: bd 8c 8e
	tax                          ; 8d24: aa
	sta $2116                    ; 8d25: 8d 16 21 ; VMADDL
	lda.b #$38                   ; 8d28: a9 38
	sta $2117                    ; 8d2a: 8d 17 21 ; VMADDH
	jsr $8bf0                    ; 8d2d: 20 f0 8b
loc_8d30:
	lda $7c                      ; 8d30: a5 7c
	lsr                          ; 8d32: 4a
	and.b #$0f                   ; 8d33: 29 0f
	tax                          ; 8d35: aa
	lda $8e8c,x                  ; 8d36: bd 8c 8e
	clc                          ; 8d39: 18
	adc.b #$40                   ; 8d3a: 69 40
	tax                          ; 8d3c: aa
	sta $2116                    ; 8d3d: 8d 16 21 ; VMADDL
	lda.b #$38                   ; 8d40: a9 38
	sta $2117                    ; 8d42: 8d 17 21 ; VMADDH
	jsr $8bf0                    ; 8d45: 20 f0 8b
loc_8d48:
	inc $7c                      ; 8d48: e6 7c
	rts                          ; 8d4a: 60

; --- Block at $8d4b-$8d82 ---
loc_8d4b:
	lda.b #$80                   ; 8d4b: a9 80
	sta $2115                    ; 8d4d: 8d 15 21 ; VMAIN
	ldx.w #$2000                 ; 8d50: a2 00 20
	stx $2116                    ; 8d53: 8e 16 21 ; VMADDL
	lda $213a                    ; 8d56: ad 3a 21 ; RDVRAMH
	ldx.w #$0000                 ; 8d59: a2 00 00
	lda $213a                    ; 8d5c: ad 3a 21 ; RDVRAMH
	sta $7f5800,x                ; 8d5f: 9f 00 58 7f
	inx                          ; 8d63: e8
	cpx.w #$0100                 ; 8d64: e0 00 01
	.db $d0, $f3                 ; 8d67: d0 f3
loc_8d69:
	ldx.w #$1e80                 ; 8d69: a2 80 1e
	stx $2116                    ; 8d6c: 8e 16 21 ; VMADDL
	lda $213a                    ; 8d6f: ad 3a 21 ; RDVRAMH
	ldx.w #$0000                 ; 8d72: a2 00 00
	lda $213a                    ; 8d75: ad 3a 21 ; RDVRAMH
	sta $7f5900,x                ; 8d78: 9f 00 59 7f
	inx                          ; 8d7c: e8
	cpx.w #$0100                 ; 8d7d: e0 00 01
	.db $d0, $f3                 ; 8d80: d0 f3
loc_8d82:
	rts                          ; 8d82: 60

; --- Block at $8d83-$8d89 ---
loc_8d83:
	lda $7c                      ; 8d83: a5 7c
	and.b #$01                   ; 8d85: 29 01
	.db $f0, $03                 ; 8d87: f0 03
loc_8d89:
	jmp $8dd5                    ; 8d89: 4c d5 8d

; --- Block at $8d8c-$8e7b ---
loc_8d8c:
	lda $7c                      ; 8d8c: a5 7c
	lsr                          ; 8d8e: 4a
	and.b #$0f                   ; 8d8f: 29 0f
	tax                          ; 8d91: aa
	lda $8e8c,x                  ; 8d92: bd 8c 8e
	ora.b #$07                   ; 8d95: 09 07
	tax                          ; 8d97: aa
	lda $7f5800,x                ; 8d98: bf 00 58 7f
	sta $06                      ; 8d9c: 85 06
	ldy.w #$0007                 ; 8d9e: a0 07 00
	lda $7f57ff,x                ; 8da1: bf ff 57 7f
	sta $7f5800,x                ; 8da5: 9f 00 58 7f
	dex                          ; 8da9: ca
	dey                          ; 8daa: 88
	.db $d0, $f4                 ; 8dab: d0 f4
loc_8dad:
	txa                          ; 8dad: 8a
	and.b #$f8                   ; 8dae: 29 f8
	clc                          ; 8db0: 18
	adc.b #$47                   ; 8db1: 69 47
	tax                          ; 8db3: aa
	lda $7f5800,x                ; 8db4: bf 00 58 7f
	sta $7f57b9,x                ; 8db8: 9f b9 57 7f
	ldy.w #$0007                 ; 8dbc: a0 07 00
	lda $7f57ff,x                ; 8dbf: bf ff 57 7f
	sta $7f5800,x                ; 8dc3: 9f 00 58 7f
	dex                          ; 8dc7: ca
	dey                          ; 8dc8: 88
	.db $d0, $f4                 ; 8dc9: d0 f4
loc_8dcb:
	txa                          ; 8dcb: 8a
	and.b #$f8                   ; 8dcc: 29 f8
	tax                          ; 8dce: aa
	lda $06                      ; 8dcf: a5 06
	sta $7f5800,x                ; 8dd1: 9f 00 58 7f
loc_8dd5:
	lda $7c                      ; 8dd5: a5 7c
	and.b #$0f                   ; 8dd7: 29 0f
	tax                          ; 8dd9: aa
	lda $8e7c,x                  ; 8dda: bd 7c 8e
	clc                          ; 8ddd: 18
	adc.b #$38                   ; 8dde: 69 38
	tax                          ; 8de0: aa
	lda $7f5900,x                ; 8de1: bf 00 59 7f
	sta $06                      ; 8de5: 85 06
	ldy.w #$0007                 ; 8de7: a0 07 00
	lda $7f58f8,x                ; 8dea: bf f8 58 7f
	sta $7f5900,x                ; 8dee: 9f 00 59 7f
	txa                          ; 8df2: 8a
	sec                          ; 8df3: 38
	sbc.b #$08                   ; 8df4: e9 08
	tax                          ; 8df6: aa
	dey                          ; 8df7: 88
	.db $d0, $f0                 ; 8df8: d0 f0
loc_8dfa:
	lda $7c                      ; 8dfa: a5 7c
	and.b #$0f                   ; 8dfc: 29 0f
	tax                          ; 8dfe: aa
	lda $8e7c,x                  ; 8dff: bd 7c 8e
	clc                          ; 8e02: 18
	adc.b #$b8                   ; 8e03: 69 b8
	tax                          ; 8e05: aa
	lda $7f5900,x                ; 8e06: bf 00 59 7f
	sta $7f5848,x                ; 8e0a: 9f 48 58 7f
	ldy.w #$0007                 ; 8e0e: a0 07 00
	lda $7f58f8,x                ; 8e11: bf f8 58 7f
	sta $7f5900,x                ; 8e15: 9f 00 59 7f
	txa                          ; 8e19: 8a
	sec                          ; 8e1a: 38
	sbc.b #$08                   ; 8e1b: e9 08
	tax                          ; 8e1d: aa
	dey                          ; 8e1e: 88
	.db $d0, $f0                 ; 8e1f: d0 f0
loc_8e21:
	lda $06                      ; 8e21: a5 06
	sta $7f5900,x                ; 8e23: 9f 00 59 7f
	lda $7c                      ; 8e27: a5 7c
	and.b #$0f                   ; 8e29: 29 0f
	tax                          ; 8e2b: aa
	lda $8e7c,x                  ; 8e2c: bd 7c 8e
	clc                          ; 8e2f: 18
	adc.b #$38                   ; 8e30: 69 38
	tax                          ; 8e32: aa
	lda $7f5900,x                ; 8e33: bf 00 59 7f
	sta $06                      ; 8e37: 85 06
	ldy.w #$0007                 ; 8e39: a0 07 00
	lda $7f58f8,x                ; 8e3c: bf f8 58 7f
	sta $7f5900,x                ; 8e40: 9f 00 59 7f
	txa                          ; 8e44: 8a
	sec                          ; 8e45: 38
	sbc.b #$08                   ; 8e46: e9 08
	tax                          ; 8e48: aa
	dey                          ; 8e49: 88
	.db $d0, $f0                 ; 8e4a: d0 f0
loc_8e4c:
	lda $7c                      ; 8e4c: a5 7c
	and.b #$0f                   ; 8e4e: 29 0f
	tax                          ; 8e50: aa
	lda $8e7c,x                  ; 8e51: bd 7c 8e
	clc                          ; 8e54: 18
	adc.b #$b8                   ; 8e55: 69 b8
	tax                          ; 8e57: aa
	lda $7f5900,x                ; 8e58: bf 00 59 7f
	sta $7f5848,x                ; 8e5c: 9f 48 58 7f
	ldy.w #$0007                 ; 8e60: a0 07 00
	lda $7f58f8,x                ; 8e63: bf f8 58 7f
	sta $7f5900,x                ; 8e67: 9f 00 59 7f
	txa                          ; 8e6b: 8a
	sec                          ; 8e6c: 38
	sbc.b #$08                   ; 8e6d: e9 08
	tax                          ; 8e6f: aa
	dey                          ; 8e70: 88
	.db $d0, $f0                 ; 8e71: d0 f0
loc_8e73:
	lda $06                      ; 8e73: a5 06
	sta $7f5900,x                ; 8e75: 9f 00 59 7f
	inc $7c                      ; 8e79: e6 7c
	rts                          ; 8e7b: 60

; --- Block at $8e9c-$8eb1 ---
loc_8e9c:
	lda.b #$40                   ; 8e9c: a9 40
	jsr $8eb2                    ; 8e9e: 20 b2 8e
loc_8ea1:
	sty $6e                      ; 8ea1: 84 6e
	lda.b #$00                   ; 8ea3: a9 00
	jsr $8eb2                    ; 8ea5: 20 b2 8e
loc_8ea8:
	sty $70                      ; 8ea8: 84 70
	lda.b #$80                   ; 8eaa: a9 80
	jsr $8eb2                    ; 8eac: 20 b2 8e
loc_8eaf:
	sty $72                      ; 8eaf: 84 72
	rts                          ; 8eb1: 60

; --- Block at $8eb2-$8ee5 ---
loc_8eb2:
	clc                          ; 8eb2: 18
	adc $06fb                    ; 8eb3: 6d fb 06
	sta $06                      ; 8eb6: 85 06
	and.b #$7f                   ; 8eb8: 29 7f
	asl                          ; 8eba: 0a
	tax                          ; 8ebb: aa
	lda $14ef00,x                ; 8ebc: bf 00 ef 14
	sta $211b                    ; 8ec0: 8d 1b 21 ; M7A
	lda $14ef01,x                ; 8ec3: bf 01 ef 14
	sta $211b                    ; 8ec7: 8d 1b 21 ; M7A
	lda $ad                      ; 8eca: a5 ad
	sta $211c                    ; 8ecc: 8d 1c 21 ; M7B
	sta $211c                    ; 8ecf: 8d 1c 21 ; M7B
	ldy $2135                    ; 8ed2: ac 35 21 ; MPYM
	lda $06                      ; 8ed5: a5 06
	.db $10, $0c                 ; 8ed7: 10 0c
loc_8ed9:
	rep #$20                     ; 8ed9: c2 20
	tya                          ; 8edb: 98
	eor.w #$ffff                 ; 8edc: 49 ff ff
	inc                          ; 8edf: 1a
	tay                          ; 8ee0: a8
	tdc                          ; 8ee1: 7b
	xba                          ; 8ee2: eb
	sep #$20                     ; 8ee3: e2 20
loc_8ee5:
	rts                          ; 8ee5: 60

; --- Block at $8ee6-$8f0e ---
loc_8ee6:
	lda $6e                      ; 8ee6: a5 6e
	sta $211b                    ; 8ee8: 8d 1b 21 ; M7A
	lda $6f                      ; 8eeb: a5 6f
	sta $211b                    ; 8eed: 8d 1b 21 ; M7A
	lda $70                      ; 8ef0: a5 70
	sta $211c                    ; 8ef2: 8d 1c 21 ; M7B
	lda $71                      ; 8ef5: a5 71
	sta $211c                    ; 8ef7: 8d 1c 21 ; M7B
	lda $72                      ; 8efa: a5 72
	sta $211d                    ; 8efc: 8d 1d 21 ; M7C
	lda $73                      ; 8eff: a5 73
	sta $211d                    ; 8f01: 8d 1d 21 ; M7C
	lda $6e                      ; 8f04: a5 6e
	sta $211e                    ; 8f06: 8d 1e 21 ; M7D
	lda $6f                      ; 8f09: a5 6f
	sta $211e                    ; 8f0b: 8d 1e 21 ; M7D
	rts                          ; 8f0e: 60

; --- Block at $8f0f-$8f1d ---
loc_8f0f:
	lda.b #$01                   ; 8f0f: a9 01
	sta $7d                      ; 8f11: 85 7d
	lda $7d                      ; 8f13: a5 7d
	.db $d0, $fc                 ; 8f15: d0 fc
loc_8f17:
	jsl $15c23d                  ; 8f17: 22 3d c2 15
loc_8f1b:
	inc $7d                      ; 8f1b: e6 7d
	rts                          ; 8f1d: 60

; --- Block at $8f1e-$8f2c ---
loc_8f1e:
	lda.b #$01                   ; 8f1e: a9 01
	sta $7e                      ; 8f20: 85 7e
	lda $7e                      ; 8f22: a5 7e
	.db $d0, $fc                 ; 8f24: d0 fc
loc_8f26:
	jsl $15c23d                  ; 8f26: 22 3d c2 15
loc_8f2a:
	inc $7d                      ; 8f2a: e6 7d
	rts                          ; 8f2c: 60

; --- Block at $8f2d-$8f3b ---
loc_8f2d:
	jsr $8f1e                    ; 8f2d: 20 1e 8f
loc_8f30:
	lda $1700                    ; 8f30: ad 00 17
	.db $d0, $09                 ; 8f33: d0 09
loc_8f35:
	jsr $8d83                    ; 8f35: 20 83 8d
loc_8f38:
	jsr $8c49                    ; 8f38: 20 49 8c
loc_8f3b:
	jmp $8f4c                    ; 8f3b: 4c 4c 8f

; --- Block at $8f3e-$8f58 ---
loc_8f3e:
	cmp.b #$01                   ; 8f3e: c9 01
	.db $d0, $0a                 ; 8f40: d0 0a
loc_8f42:
	jsr $8cc5                    ; 8f42: 20 c5 8c
loc_8f45:
	jsr $8d16                    ; 8f45: 20 16 8d
loc_8f48:
	jsl $15c4d3                  ; 8f48: 22 d3 c4 15
loc_8f4c:
	jsl $15cb65                  ; 8f4c: 22 65 cb 15
loc_8f50:
	jsl $15c3c3                  ; 8f50: 22 c3 c3 15
loc_8f54:
	jsl $15c3f0                  ; 8f54: 22 f0 c3 15
loc_8f58:
	rts                          ; 8f58: 60

; --- Block at $8f59-$8f76 ---
loc_8f59:
	ldx.w #$0000                 ; 8f59: a2 00 00
	lda.b #$f0                   ; 8f5c: a9 f0
	sta $0301,x                  ; 8f5e: 9d 01 03
	inx                          ; 8f61: e8
	inx                          ; 8f62: e8
	inx                          ; 8f63: e8
	inx                          ; 8f64: e8
	cpx.w #$0200                 ; 8f65: e0 00 02
	.db $d0, $f4                 ; 8f68: d0 f4
loc_8f6a:
	ldx.w #$0000                 ; 8f6a: a2 00 00
	stz $0500,x                  ; 8f6d: 9e 00 05
	inx                          ; 8f70: e8
	cpx.w #$0020                 ; 8f71: e0 20 00
	.db $d0, $f7                 ; 8f74: d0 f7
loc_8f76:
	rts                          ; 8f76: 60

; --- Block at $8f77-$8f94 ---
loc_8f77:
	ldx.w #$0000                 ; 8f77: a2 00 00
	lda.b #$f0                   ; 8f7a: a9 f0
	sta $0301,x                  ; 8f7c: 9d 01 03
	inx                          ; 8f7f: e8
	inx                          ; 8f80: e8
	inx                          ; 8f81: e8
	inx                          ; 8f82: e8
	cpx.w #$0100                 ; 8f83: e0 00 01
	.db $d0, $f4                 ; 8f86: d0 f4
loc_8f88:
	ldx.w #$0000                 ; 8f88: a2 00 00
	stz $0500,x                  ; 8f8b: 9e 00 05
	inx                          ; 8f8e: e8
	cpx.w #$0020                 ; 8f8f: e0 20 00
	.db $d0, $f7                 ; 8f92: d0 f7
loc_8f94:
	rts                          ; 8f94: 60

; --- Block at $8f95-$8fab ---
loc_8f95:
	pha                          ; 8f95: 48
	plb                          ; 8f96: ab
	ldy.w #$0000                 ; 8f97: a0 00 00
	lda.w $0000,x                ; 8f9a: bd 00 00
	sta $0cdb,y                  ; 8f9d: 99 db 0c
	inx                          ; 8fa0: e8
	iny                          ; 8fa1: c8
	cpy.w #$0100                 ; 8fa2: c0 00 01
	.db $d0, $f3                 ; 8fa5: d0 f3
loc_8fa7:
	lda.b #$00                   ; 8fa7: a9 00
	pha                          ; 8fa9: 48
	plb                          ; 8faa: ab
	rts                          ; 8fab: 60

; --- Block at $9021-$904a ---
loc_9021:
	lda.b #$01                   ; 9021: a9 01
	sta $d9                      ; 9023: 85 d9
	lda.b #$07                   ; 9025: a9 07
	sta $212c                    ; 9027: 8d 2c 21 ; TM
	lda.b #$01                   ; 902a: a9 01
	sta $212d                    ; 902c: 8d 2d 21 ; TS
	stz $7a                      ; 902f: 64 7a
	stz $79                      ; 9031: 64 79
	lda.b #$81                   ; 9033: a9 81
	sta $4200                    ; 9035: 8d 00 42 ; NMITIMEN
	cli                          ; 9038: 58
	jsr $8f0f                    ; 9039: 20 0f 8f
loc_903c:
	lda $7f                      ; 903c: a5 7f
	cmp.b #$02                   ; 903e: c9 02
	.db $d0, $fa                 ; 9040: d0 fa
loc_9042:
	inc $79                      ; 9042: e6 79
	lda $79                      ; 9044: a5 79
	cmp.b #$20                   ; 9046: c9 20
	.db $d0, $ef                 ; 9048: d0 ef
loc_904a:
	rts                          ; 904a: 60

; --- Block at $904b-$9075 ---
loc_904b:
	lda.b #$01                   ; 904b: a9 01
	sta $d9                      ; 904d: 85 d9
	stz $7a                      ; 904f: 64 7a
	lda.b #$1f                   ; 9051: a9 1f
	sta $79                      ; 9053: 85 79
	lda.b #$80                   ; 9055: a9 80
	sta $2100                    ; 9057: 8d 00 21 ; INIDISP
	lda.b #$81                   ; 905a: a9 81
	sta $4200                    ; 905c: 8d 00 42 ; NMITIMEN
	cli                          ; 905f: 58
	jsr $8f0f                    ; 9060: 20 0f 8f
loc_9063:
	lda $7f                      ; 9063: a5 7f
	cmp.b #$02                   ; 9065: c9 02
	.db $d0, $fa                 ; 9067: d0 fa
loc_9069:
	dec $79                      ; 9069: c6 79
	.db $10, $f3                 ; 906b: 10 f3
loc_906d:
	stz $d9                      ; 906d: 64 d9
	lda $b1                      ; 906f: a5 b1
	.db $d0, $05                 ; 9071: d0 05
loc_9073:
	lda.b #$0f                   ; 9073: a9 0f
	jmp $907a                    ; 9075: 4c 7a 90

; --- Block at $9078-$907d ---
loc_9078:
	lda $80                      ; 9078: a5 80
loc_907a:
	sta $2100                    ; 907a: 8d 00 21 ; INIDISP
	rts                          ; 907d: 60

; --- Block at $92a2-$92cf ---
loc_92a2:
	jsl $15b30c                  ; 92a2: 22 0c b3 15
loc_92a6:
	jsl $15b3dc                  ; 92a6: 22 dc b3 15
loc_92aa:
	jsl $15b4f9                  ; 92aa: 22 f9 b4 15
loc_92ae:
	jsl $15b70f                  ; 92ae: 22 0f b7 15
loc_92b2:
	jsl $15b8dd                  ; 92b2: 22 dd b8 15
loc_92b6:
	jsl $15b9cc                  ; 92b6: 22 cc b9 15
loc_92ba:
	jsl $15bc2f                  ; 92ba: 22 2f bc 15
loc_92be:
	jsl $15b66f                  ; 92be: 22 6f b6 15
loc_92c2:
	lda.b #$3e                   ; 92c2: a9 3e
	jsr $f165                    ; 92c4: 20 65 f1
loc_92c7:
	cmp.b #$00                   ; 92c7: c9 00
	.db $f0, $04                 ; 92c9: f0 04
loc_92cb:
	jsl $15b5ef                  ; 92cb: 22 ef b5 15
loc_92cf:
	rts                          ; 92cf: 60

; --- Block at $92d0-$9314 ---
loc_92d0:
	ldx.w #$0000                 ; 92d0: a2 00 00
	ldy.w #$0000                 ; 92d3: a0 00 00
	lda $0fa900,x                ; 92d6: bf 00 a9 0f
	sta $1000,y                  ; 92da: 99 00 10
	inx                          ; 92dd: e8
	iny                          ; 92de: c8
	cpy.w #$0014                 ; 92df: c0 14 00
	.db $d0, $f2                 ; 92e2: d0 f2
loc_92e4:
	ldy.w #$0000                 ; 92e4: a0 00 00
	lda $0fa900,x                ; 92e7: bf 00 a9 0f
	sta $102d,y                  ; 92eb: 99 2d 10
	inx                          ; 92ee: e8
	iny                          ; 92ef: c8
	cpy.w #$0003                 ; 92f0: c0 03 00
	.db $d0, $f2                 ; 92f3: d0 f2
loc_92f5:
	ldy.w #$0000                 ; 92f5: a0 00 00
	lda $0fa900,x                ; 92f8: bf 00 a9 0f
	sta $1037,y                  ; 92fc: 99 37 10
	inx                          ; 92ff: e8
	iny                          ; 9300: c8
	cpy.w #$0009                 ; 9301: c0 09 00
	.db $d0, $f2                 ; 9304: d0 f2
loc_9306:
	ldy.w #$0000                 ; 9306: a0 00 00
	sty $3d                      ; 9309: 84 3d
	jsr $e65e                    ; 930b: 20 5e e6
loc_930e:
	lda.b #$00                   ; 930e: a9 00
	jsl $038006                  ; 9310: 22 06 80 03
loc_9314:
	rts                          ; 9314: 60

; --- Block at $9315-$9330 ---
loc_9315:
	lda.b #$03                   ; 9315: a9 03
	sta $1705                    ; 9317: 8d 05 17
	lda.b #$1f                   ; 931a: a9 1f
	sta $79                      ; 931c: 85 79
	jsr $8f2d                    ; 931e: 20 2d 8f
loc_9321:
	lda $79                      ; 9321: a5 79
	sta $ad                      ; 9323: 85 ad
	lda $1704                    ; 9325: ad 04 17
	cmp.b #$04                   ; 9328: c9 04
	.db $d0, $07                 ; 932a: d0 07
loc_932c:
	dec $b7                      ; 932c: c6 b7
	lda $b7                      ; 932e: a5 b7
	jmp $9337                    ; 9330: 4c 37 93

; --- Block at $9333-$93a8 ---
loc_9333:
	dec $b8                      ; 9333: c6 b8
	lda $b8                      ; 9335: a5 b8
loc_9337:
	jsl $15c50b                  ; 9337: 22 0b c5 15
loc_933b:
	jsr $8f59                    ; 933b: 20 59 8f
loc_933e:
	jsl $15b8dd                  ; 933e: 22 dd b8 15
loc_9342:
	jsl $15b9cc                  ; 9342: 22 cc b9 15
loc_9346:
	dec $79                      ; 9346: c6 79
	lda $79                      ; 9348: a5 79
	cmp.b #$10                   ; 934a: c9 10
	.db $b0, $d0                 ; 934c: b0 d0
loc_934e:
	lda.b #$1f                   ; 934e: a9 1f
	sta $79                      ; 9350: 85 79
	lda.b #$1f                   ; 9352: a9 1f
	sec                          ; 9354: 38
	sbc $79                      ; 9355: e5 79
	tax                          ; 9357: aa
	lda $14fab6,x                ; 9358: bf b6 fa 14
	sta $06fb                    ; 935c: 8d fb 06
	lda $79                      ; 935f: a5 79
	sta $ad                      ; 9361: 85 ad
	jsr $8f1e                    ; 9363: 20 1e 8f
loc_9366:
	stz $420c                    ; 9366: 9c 0c 42 ; HDMAEN
	jsr $8e9c                    ; 9369: 20 9c 8e
loc_936c:
	jsr $8ee6                    ; 936c: 20 e6 8e
loc_936f:
	jsr $a309                    ; 936f: 20 09 a3
loc_9372:
	jsl $15b8dd                  ; 9372: 22 dd b8 15
loc_9376:
	jsl $15b9cc                  ; 9376: 22 cc b9 15
loc_937a:
	dec $79                      ; 937a: c6 79
	lda $79                      ; 937c: a5 79
	.db $10, $d2                 ; 937e: 10 d2
loc_9380:
	lda.b #$71                   ; 9380: a9 71
	sta $1706                    ; 9382: 8d 06 17
	lda.b #$10                   ; 9385: a9 10
	sta $1707                    ; 9387: 8d 07 17
	lda.b #$01                   ; 938a: a9 01
	sta $1700                    ; 938c: 8d 00 17
	sta $1701                    ; 938f: 8d 01 17
	lda $1704                    ; 9392: ad 04 17
	cmp.b #$04                   ; 9395: c9 04
	.db $d0, $12                 ; 9397: d0 12
loc_9399:
	lda.b #$01                   ; 9399: a9 01
	sta $171f                    ; 939b: 8d 1f 17
	lda $06d0                    ; 939e: ad d0 06
	.db $f0, $0d                 ; 93a1: f0 0d
loc_93a3:
	lda.b #$01                   ; 93a3: a9 01
	sta $171b                    ; 93a5: 8d 1b 17
	jmp $93b0                    ; 93a8: 4c b0 93

; --- Block at $93ab-$93ef ---
loc_93ab:
	lda.b #$01                   ; 93ab: a9 01
	sta $1723                    ; 93ad: 8d 23 17
loc_93b0:
	jsr $853c                    ; 93b0: 20 3c 85
loc_93b3:
	lda.b #$10                   ; 93b3: a9 10
	jsl $15c50b                  ; 93b5: 22 0b c5 15
loc_93b9:
	lda.b #$03                   ; 93b9: a9 03
	sta $1705                    ; 93bb: 8d 05 17
	lda.b #$81                   ; 93be: a9 81
	sta $4200                    ; 93c0: 8d 00 42 ; NMITIMEN
	lda.b #$00                   ; 93c3: a9 00
	sta $2100                    ; 93c5: 8d 00 21 ; INIDISP
	lda.b #$20                   ; 93c8: a9 20
	sta $ad                      ; 93ca: 85 ad
	lda.b #$2f                   ; 93cc: a9 2f
	sta $79                      ; 93ce: 85 79
	jsr $8f2d                    ; 93d0: 20 2d 8f
loc_93d3:
	lda.b #$2f                   ; 93d3: a9 2f
	sec                          ; 93d5: 38
	sbc $79                      ; 93d6: e5 79
	cmp.b #$10                   ; 93d8: c9 10
	.db $b0, $03                 ; 93da: b0 03
loc_93dc:
	sta $2100                    ; 93dc: 8d 00 21 ; INIDISP
loc_93df:
	lda $79                      ; 93df: a5 79
	tax                          ; 93e1: aa
	lda $1704                    ; 93e2: ad 04 17
	cmp.b #$04                   ; 93e5: c9 04
	.db $d0, $09                 ; 93e7: d0 09
loc_93e9:
	lda $14fa86,x                ; 93e9: bf 86 fa 14
	sta $b7                      ; 93ed: 85 b7
	jmp $93f8                    ; 93ef: 4c f8 93

; --- Block at $93f2-$9408 ---
loc_93f2:
	lda $14fa86,x                ; 93f2: bf 86 fa 14
	sta $b8                      ; 93f6: 85 b8
loc_93f8:
	jsl $15b8dd                  ; 93f8: 22 dd b8 15
loc_93fc:
	jsl $15b9cc                  ; 93fc: 22 cc b9 15
loc_9400:
	dec $79                      ; 9400: c6 79
	lda $79                      ; 9402: a5 79
	cmp.b #$ff                   ; 9404: c9 ff
	.db $d0, $c8                 ; 9406: d0 c8
loc_9408:
	rts                          ; 9408: 60

; --- Block at $9409-$942c ---
loc_9409:
	jsr $942d                    ; 9409: 20 2d 94
loc_940c:
	lda.b #$30                   ; 940c: a9 30
	jsr $f165                    ; 940e: 20 65 f1
loc_9411:
	cmp.b #$00                   ; 9411: c9 00
	.db $d0, $14                 ; 9413: d0 14
loc_9415:
	lda.b #$3d                   ; 9415: a9 3d
	jsr $f165                    ; 9417: 20 65 f1
loc_941a:
	cmp.b #$00                   ; 941a: c9 00
	.db $f0, $0b                 ; 941c: f0 0b
loc_941e:
	lda.b #$01                   ; 941e: a9 01
	sta $b1                      ; 9420: 85 b1
	lda.b #$c6                   ; 9422: a9 c6
	jsr $df63                    ; 9424: 20 63 df
loc_9427:
	stz $b1                      ; 9427: 64 b1
loc_9429:
	jsr $9472                    ; 9429: 20 72 94
loc_942c:
	rts                          ; 942c: 60

; --- Block at $942d-$9455 ---
loc_942d:
	lda.b #$03                   ; 942d: a9 03
	sta $1705                    ; 942f: 8d 05 17
	lda.b #$00                   ; 9432: a9 00
	sta $79                      ; 9434: 85 79
	jsr $8f2d                    ; 9436: 20 2d 8f
loc_9439:
	lda.b #$2f                   ; 9439: a9 2f
	sec                          ; 943b: 38
	sbc $79                      ; 943c: e5 79
	cmp.b #$10                   ; 943e: c9 10
	.db $b0, $03                 ; 9440: b0 03
loc_9442:
	sta $2100                    ; 9442: 8d 00 21 ; INIDISP
loc_9445:
	lda $79                      ; 9445: a5 79
	tax                          ; 9447: aa
	lda $1704                    ; 9448: ad 04 17
	cmp.b #$04                   ; 944b: c9 04
	.db $d0, $09                 ; 944d: d0 09
loc_944f:
	lda $14fa86,x                ; 944f: bf 86 fa 14
	sta $b7                      ; 9453: 85 b7
	jmp $945e                    ; 9455: 4c 5e 94

; --- Block at $9458-$9471 ---
loc_9458:
	lda $14fa86,x                ; 9458: bf 86 fa 14
	sta $b8                      ; 945c: 85 b8
loc_945e:
	jsr $8f59                    ; 945e: 20 59 8f
loc_9461:
	jsl $15b8dd                  ; 9461: 22 dd b8 15
loc_9465:
	jsl $15b9cc                  ; 9465: 22 cc b9 15
loc_9469:
	inc $79                      ; 9469: e6 79
	lda $79                      ; 946b: a5 79
	cmp.b #$30                   ; 946d: c9 30
	.db $d0, $c5                 ; 946f: d0 c5
loc_9471:
	rts                          ; 9471: 60

; --- Block at $9472-$9496 ---
loc_9472:
	lda.b #$6a                   ; 9472: a9 6a
	sta $1706                    ; 9474: 8d 06 17
	lda.b #$d4                   ; 9477: a9 d4
	sta $1707                    ; 9479: 8d 07 17
	lda.b #$00                   ; 947c: a9 00
	sta $1700                    ; 947e: 8d 00 17
	sta $1701                    ; 9481: 8d 01 17
	lda $1704                    ; 9484: ad 04 17
	cmp.b #$04                   ; 9487: c9 04
	.db $d0, $0e                 ; 9489: d0 0e
loc_948b:
	stz $171f                    ; 948b: 9c 1f 17
	lda $06d0                    ; 948e: ad d0 06
	.db $f0, $09                 ; 9491: f0 09
loc_9493:
	stz $171b                    ; 9493: 9c 1b 17
	jmp $949c                    ; 9496: 4c 9c 94

; --- Block at $9499-$94b4 ---
loc_9499:
	stz $1723                    ; 9499: 9c 23 17
loc_949c:
	jsr $8502                    ; 949c: 20 02 85
loc_949f:
	lda.b #$03                   ; 949f: a9 03
	sta $1705                    ; 94a1: 8d 05 17
	lda.b #$81                   ; 94a4: a9 81
	sta $4200                    ; 94a6: 8d 00 42 ; NMITIMEN
	stz $79                      ; 94a9: 64 79
	lda $1704                    ; 94ab: ad 04 17
	cmp.b #$04                   ; 94ae: c9 04
	.db $d0, $05                 ; 94b0: d0 05
loc_94b2:
	stz $b7                      ; 94b2: 64 b7
	jmp $94b9                    ; 94b4: 4c b9 94

; --- Block at $94b7-$9501 ---
loc_94b7:
	stz $b8                      ; 94b7: 64 b8
loc_94b9:
	jsr $8f1e                    ; 94b9: 20 1e 8f
loc_94bc:
	stz $420c                    ; 94bc: 9c 0c 42 ; HDMAEN
	lda.b #$20                   ; 94bf: a9 20
	sec                          ; 94c1: 38
	sbc $79                      ; 94c2: e5 79
	tax                          ; 94c4: aa
	lda $14fab6,x                ; 94c5: bf b6 fa 14
	sta $06fb                    ; 94c9: 8d fb 06
	lda $79                      ; 94cc: a5 79
	sta $ad                      ; 94ce: 85 ad
	jsr $8e9c                    ; 94d0: 20 9c 8e
loc_94d3:
	jsr $8ee6                    ; 94d3: 20 e6 8e
loc_94d6:
	jsr $a309                    ; 94d6: 20 09 a3
loc_94d9:
	jsl $15b8dd                  ; 94d9: 22 dd b8 15
loc_94dd:
	jsl $15b9cc                  ; 94dd: 22 cc b9 15
loc_94e1:
	inc $79                      ; 94e1: e6 79
	lda $79                      ; 94e3: a5 79
	cmp.b #$20                   ; 94e5: c9 20
	.db $d0, $d0                 ; 94e7: d0 d0
loc_94e9:
	lda.b #$11                   ; 94e9: a9 11
	sta $79                      ; 94eb: 85 79
	sta $ad                      ; 94ed: 85 ad
	jsr $8f2d                    ; 94ef: 20 2d 8f
loc_94f2:
	lda $79                      ; 94f2: a5 79
	sta $ad                      ; 94f4: 85 ad
	lda $1704                    ; 94f6: ad 04 17
	cmp.b #$04                   ; 94f9: c9 04
	.db $d0, $07                 ; 94fb: d0 07
loc_94fd:
	inc $b7                      ; 94fd: e6 b7
	lda $b7                      ; 94ff: a5 b7
	jmp $9508                    ; 9501: 4c 08 95

; --- Block at $9504-$951c ---
loc_9504:
	inc $b8                      ; 9504: e6 b8
	lda $b8                      ; 9506: a5 b8
loc_9508:
	jsl $15c50b                  ; 9508: 22 0b c5 15
loc_950c:
	jsl $15b8dd                  ; 950c: 22 dd b8 15
loc_9510:
	jsl $15b9cc                  ; 9510: 22 cc b9 15
loc_9514:
	inc $79                      ; 9514: e6 79
	lda $79                      ; 9516: a5 79
	cmp.b #$21                   ; 9518: c9 21
	.db $d0, $d3                 ; 951a: d0 d3
loc_951c:
	rts                          ; 951c: 60

; --- Block at $951d-$9573 ---
loc_951d:
	ldx.w #$4200                 ; 951d: a2 00 42 ; NMITIMEN
	stx $4c                      ; 9520: 86 4c
	ldx.w #$0100                 ; 9522: a2 00 01
	stx $4e                      ; 9525: 86 4e
	ldx.w #$c680                 ; 9527: a2 80 c6
	stx $4a                      ; 952a: 86 4a
	lda.b #$1b                   ; 952c: a9 1b
	sta $49                      ; 952e: 85 49
	jsl $15b000                  ; 9530: 22 00 b0 15
loc_9534:
	ldx.w #$4300                 ; 9534: a2 00 43 ; DMAP0
	stx $4c                      ; 9537: 86 4c
	ldx.w #$1d00                 ; 9539: a2 00 1d
	stx $4e                      ; 953c: 86 4e
	ldx.w #RESET                 ; 953e: a2 00 80
	stx $4a                      ; 9541: 86 4a
	lda.b #$1c                   ; 9543: a9 1c
	sta $49                      ; 9545: 85 49
	jsl $15b000                  ; 9547: 22 00 b0 15
loc_954b:
	ldy.w #$0000                 ; 954b: a0 00 00
	ldx.w #$0000                 ; 954e: a2 00 00
	lda $0d8040,x                ; 9551: bf 40 80 0d
	sta $0e5b,y                  ; 9555: 99 5b 0e
	inx                          ; 9558: e8
	iny                          ; 9559: c8
	tya                          ; 955a: 98
	and.b #$0f                   ; 955b: 29 0f
	.db $d0, $f2                 ; 955d: d0 f2
loc_955f:
	lda.b #$00                   ; 955f: a9 00
	sta $0e5b,y                  ; 9561: 99 5b 0e
	iny                          ; 9564: c8
	tya                          ; 9565: 98
	and.b #$0f                   ; 9566: 29 0f
	.db $d0, $f5                 ; 9568: d0 f5
loc_956a:
	cpy.w #$0080                 ; 956a: c0 80 00
	.db $d0, $e2                 ; 956d: d0 e2
loc_956f:
	jsl $15c144                  ; 956f: 22 44 c1 15
loc_9573:
	rts                          ; 9573: 60

; --- Block at $9574-$9583 ---
loc_9574:
	lda.b #$01                   ; 9574: a9 01
	sta $cc                      ; 9576: 85 cc
	jsl $15c891                  ; 9578: 22 91 c8 15
loc_957c:
	jsl $15c82d                  ; 957c: 22 2d c8 15
loc_9580:
	jsr $951d                    ; 9580: 20 1d 95
loc_9583:
	rts                          ; 9583: 60

; --- Block at $9584-$9594 ---
loc_9584:
	lda.b #$01                   ; 9584: a9 01
	sta $cc                      ; 9586: 85 cc
	jsl $15c891                  ; 9588: 22 91 c8 15
loc_958c:
	jsl $15c82d                  ; 958c: 22 2d c8 15
loc_9590:
	jsl $15c144                  ; 9590: 22 44 c1 15
loc_9594:
	rts                          ; 9594: 60

; --- Block at $9595-$95e0 ---
loc_9595:
	stz $c2                      ; 9595: 64 c2
	lda $1704                    ; 9597: ad 04 17
	.db $d0, $44                 ; 959a: d0 44
loc_959c:
	ldx.w #$0000                 ; 959c: a2 00 00
	lda $1000,x                  ; 959f: bd 00 10
	.db $f0, $27                 ; 95a2: f0 27
loc_95a4:
	lda $1003,x                  ; 95a4: bd 03 10
	and.b #$01                   ; 95a7: 29 01
	.db $f0, $20                 ; 95a9: f0 20
loc_95ab:
	inc $c2                      ; 95ab: e6 c2
	rep #$20                     ; 95ad: c2 20
	lda $1007,x                  ; 95af: bd 07 10
	.db $f0, $12                 ; 95b2: f0 12
loc_95b4:
	sec                          ; 95b4: 38
	sbc.w #$0001                 ; 95b5: e9 01 00
	sta $1007,x                  ; 95b8: 9d 07 10
	cmp.w #$0001                 ; 95bb: c9 01 00
	.db $b0, $06                 ; 95be: b0 06
loc_95c0:
	lda.w #$0001                 ; 95c0: a9 01 00
	sta $1007,x                  ; 95c3: 9d 07 10
loc_95c6:
	lda.w #$0000                 ; 95c6: a9 00 00
	sep #$20                     ; 95c9: e2 20
loc_95cb:
	jsr $e530                    ; 95cb: 20 30 e5
loc_95ce:
	cpx.w #$0140                 ; 95ce: e0 40 01
	.db $d0, $cc                 ; 95d1: d0 cc
loc_95d3:
	lda $c2                      ; 95d3: a5 c2
	.db $f0, $09                 ; 95d5: f0 09
loc_95d7:
	lda $b1                      ; 95d7: a5 b1
	.db $d0, $05                 ; 95d9: d0 05
loc_95db:
	lda.b #$7a                   ; 95db: a9 7a
	jsr $8b7b                    ; 95dd: 20 7b 8b
loc_95e0:
	rts                          ; 95e0: 60

; --- Block at $95e1-$962d ---
loc_95e1:
	stz $c1                      ; 95e1: 64 c1
	lda $a2                      ; 95e3: a5 a2
	and.b #$01                   ; 95e5: 29 01
	.db $f0, $3b                 ; 95e7: f0 3b
loc_95e9:
	ldx.w #$0000                 ; 95e9: a2 00 00
	lda $1000,x                  ; 95ec: bd 00 10
	.db $f0, $2b                 ; 95ef: f0 2b
loc_95f1:
	lda $1003,x                  ; 95f1: bd 03 10
	.db $30, $26                 ; 95f4: 30 26
loc_95f6:
	lda $1004,x                  ; 95f6: bd 04 10
	and.b #$40                   ; 95f9: 29 40
	.db $d0, $1f                 ; 95fb: d0 1f
loc_95fd:
	inc $c1                      ; 95fd: e6 c1
	rep #$20                     ; 95ff: c2 20
	lda $1007,x                  ; 9601: bd 07 10
	.db $f0, $11                 ; 9604: f0 11
loc_9606:
	sec                          ; 9606: 38
	sbc.w #$0032                 ; 9607: e9 32 00
	sta $1007,x                  ; 960a: 9d 07 10
	.db $f0, $02                 ; 960d: f0 02
loc_960f:
	.db $b0, $06                 ; 960f: b0 06
loc_9611:
	lda.w #$0001                 ; 9611: a9 01 00
	sta $1007,x                  ; 9614: 9d 07 10
loc_9617:
	lda.w #$0000                 ; 9617: a9 00 00
	sep #$20                     ; 961a: e2 20
loc_961c:
	jsr $e530                    ; 961c: 20 30 e5
loc_961f:
	cpx.w #$0140                 ; 961f: e0 40 01
	.db $d0, $c8                 ; 9622: d0 c8
loc_9624:
	lda $c1                      ; 9624: a5 c1
	.db $f0, $05                 ; 9626: f0 05
loc_9628:
	lda.b #$7b                   ; 9628: a9 7b
	jsr $8b7b                    ; 962a: 20 7b 8b
loc_962d:
	rts                          ; 962d: 60

; --- Block at $962e-$9644 ---
loc_962e:
	lda $b1                      ; 962e: a5 b1
	.db $d0, $26                 ; 9630: d0 26
loc_9632:
	lda $5a                      ; 9632: a5 5a
	and.b #$0f                   ; 9634: 29 0f
	.db $d0, $20                 ; 9636: d0 20
loc_9638:
	lda $5c                      ; 9638: a5 5c
	and.b #$0f                   ; 963a: 29 0f
	.db $d0, $1a                 ; 963c: d0 1a
loc_963e:
	lda $02                      ; 963e: a5 02
	and.b #$80                   ; 9640: 29 80
	.db $d0, $01                 ; 9642: d0 01
loc_9644:
	rts                          ; 9644: 60

; --- Block at $9645-$9649 ---
loc_9645:
	lda $54                      ; 9645: a5 54
	.db $f0, $01                 ; 9647: f0 01
loc_9649:
	rts                          ; 9649: 60

; --- Block at $964a-$9658 ---
loc_964a:
	inc $54                      ; 964a: e6 54
	lda $ea                      ; 964c: a5 ea
	.db $d0, $02                 ; 964e: d0 02
loc_9650:
	inc $ea                      ; 9650: e6 ea
loc_9652:
	jsr $9659                    ; 9652: 20 59 96
loc_9655:
	jsr $b752                    ; 9655: 20 52 b7

; --- Block at $9658-$9658 ---
loc_9658:
	rts                          ; 9658: 60

; --- Block at $9659-$966d ---
loc_9659:
	lda $1705                    ; 9659: ad 05 17
	.db $d0, $12                 ; 965c: d0 12
loc_965e:
	lda $a4                      ; 965e: a5 a4
	.db $10, $52                 ; 9660: 10 52
loc_9662:
	lda $1706                    ; 9662: ad 06 17
	sta $0c                      ; 9665: 85 0c
	lda $1707                    ; 9667: ad 07 17
	dec                          ; 966a: 3a
	sta $0e                      ; 966b: 85 0e
	jmp $96b5                    ; 966d: 4c b5 96

; --- Block at $9670-$9686 ---
loc_9670:
	lda $1705                    ; 9670: ad 05 17
	cmp.b #$01                   ; 9673: c9 01
	.db $d0, $12                 ; 9675: d0 12
loc_9677:
	lda $a6                      ; 9677: a5 a6
	.db $10, $39                 ; 9679: 10 39
loc_967b:
	lda $1706                    ; 967b: ad 06 17
	inc                          ; 967e: 1a
	sta $0c                      ; 967f: 85 0c
	lda $1707                    ; 9681: ad 07 17
	sta $0e                      ; 9684: 85 0e
	jmp $96b5                    ; 9686: 4c b5 96

; --- Block at $9689-$969f ---
loc_9689:
	lda $1705                    ; 9689: ad 05 17
	cmp.b #$02                   ; 968c: c9 02
	.db $d0, $12                 ; 968e: d0 12
loc_9690:
	lda $a8                      ; 9690: a5 a8
	.db $10, $20                 ; 9692: 10 20
loc_9694:
	lda $1706                    ; 9694: ad 06 17
	sta $0c                      ; 9697: 85 0c
	lda $1707                    ; 9699: ad 07 17
	inc                          ; 969c: 1a
	sta $0e                      ; 969d: 85 0e
	jmp $96b5                    ; 969f: 4c b5 96

; --- Block at $96a2-$96b1 ---
loc_96a2:
	lda $aa                      ; 96a2: a5 aa
	.db $10, $0e                 ; 96a4: 10 0e
loc_96a6:
	lda $1706                    ; 96a6: ad 06 17
	dec                          ; 96a9: 3a
	sta $0c                      ; 96aa: 85 0c
	lda $1707                    ; 96ac: ad 07 17
	sta $0e                      ; 96af: 85 0e
	jmp $96b5                    ; 96b1: 4c b5 96

; --- Block at $96b4-$96b4 ---
loc_96b4:
	rts                          ; 96b4: 60

; --- Block at $96b5-$96ba ---
loc_96b5:
	lda $0711                    ; 96b5: ad 11 07
	.db $d0, $01                 ; 96b8: d0 01
loc_96ba:
	rts                          ; 96ba: 60

; --- Block at $96bb-$96d3 ---
loc_96bb:
	jsr $993d                    ; 96bb: 20 3d 99
loc_96be:
	ldy.w #$0000                 ; 96be: a0 00 00
	ldx $3d                      ; 96c1: a6 3d
	lda $158300,x                ; 96c3: bf 00 83 15
	cmp $0c                      ; 96c7: c5 0c
	.db $d0, $0b                 ; 96c9: d0 0b
loc_96cb:
	lda $158301,x                ; 96cb: bf 01 83 15
	cmp $0e                      ; 96cf: c5 0e
	.db $d0, $03                 ; 96d1: d0 03
loc_96d3:
	jmp $96e3                    ; 96d3: 4c e3 96

; --- Block at $96d6-$96e2 ---
loc_96d6:
	inx                          ; 96d6: e8
	inx                          ; 96d7: e8
	inx                          ; 96d8: e8
	inx                          ; 96d9: e8
	inx                          ; 96da: e8
	iny                          ; 96db: c8
	tya                          ; 96dc: 98
	cmp $0711                    ; 96dd: cd 11 07
	.db $d0, $e1                 ; 96e0: d0 e1
loc_96e2:
	rts                          ; 96e2: 60

; --- Block at $96e3-$96f4 ---
loc_96e3:
	stx $40                      ; 96e3: 86 40
	tya                          ; 96e5: 98
	clc                          ; 96e6: 18
	adc $0fe7                    ; 96e7: 6d e7 0f
	sta $08fc                    ; 96ea: 8d fc 08
	jsr $9901                    ; 96ed: 20 01 99
loc_96f0:
	cmp.b #$00                   ; 96f0: c9 00
	.db $f0, $03                 ; 96f2: f0 03
loc_96f4:
	jmp $97c4                    ; 96f4: 4c c4 97

; --- Block at $96f7-$9728 ---
loc_96f7:
	lda $1705                    ; 96f7: ad 05 17
	tax                          ; 96fa: aa
	lda $070c,x                  ; 96fb: bd 0c 07
	cmp.b #$78                   ; 96fe: c9 78
	.db $d0, $29                 ; 9700: d0 29
loc_9702:
	lda $0c                      ; 9702: a5 0c
	sta $3d                      ; 9704: 85 3d
	lda $0e                      ; 9706: a5 0e
	sta $3e                      ; 9708: 85 3e
	ldx $3d                      ; 970a: a6 3d
	lda.b #$77                   ; 970c: a9 77
	sta $7f5c71,x                ; 970e: 9f 71 5c 7f
	jsr $a911                    ; 9712: 20 11 a9
loc_9715:
	stx $06fe                    ; 9715: 8e fe 06
	jsr $98cb                    ; 9718: 20 cb 98
loc_971b:
	lda.b #$30                   ; 971b: a9 30
	jsr $8b7b                    ; 971d: 20 7b 8b
loc_9720:
	lda.b #$01                   ; 9720: a9 01
	sta $d4                      ; 9722: 85 d4
	lda.b #$01                   ; 9724: a9 01
	sta $b2                      ; 9726: 85 b2
	jmp $9734                    ; 9728: 4c 34 97

; --- Block at $972b-$977c ---
loc_972b:
	lda.b #$16                   ; 972b: a9 16
	sta $b2                      ; 972d: 85 b2
	lda.b #$37                   ; 972f: a9 37
	jsr $8b7b                    ; 9731: 20 7b 8b
loc_9734:
	ldx $40                      ; 9734: a6 40
	lda $158303,x                ; 9736: bf 03 83 15
	sta $09                      ; 973a: 85 09
	lda $158304,x                ; 973c: bf 04 83 15
	sta $08                      ; 9740: 85 08
	lda $09                      ; 9742: a5 09
	and.b #$40                   ; 9744: 29 40
	.db $f0, $35                 ; 9746: f0 35
loc_9748:
	lda $08                      ; 9748: a5 08
	sta $c6                      ; 974a: 85 c6
	lda $1701                    ; 974c: ad 01 17
	asl                          ; 974f: 0a
	asl                          ; 9750: 0a
	asl                          ; 9751: 0a
	asl                          ; 9752: 0a
	asl                          ; 9753: 0a
	sta $08                      ; 9754: 85 08
	lda $09                      ; 9756: a5 09
	and.b #$1f                   ; 9758: 29 1f
	clc                          ; 975a: 18
	adc $08                      ; 975b: 65 08
	clc                          ; 975d: 18
	adc.b #$c0                   ; 975e: 69 c0
	sta $1800                    ; 9760: 8d 00 18
	lda.b #$01                   ; 9763: a9 01
	sta $1801                    ; 9765: 8d 01 18
	jsr $8ab6                    ; 9768: 20 b6 8a
loc_976b:
	lda.b #$01                   ; 976b: a9 01
	sta $85                      ; 976d: 85 85
	lda.b #$03                   ; 976f: a9 03
	sta $b2                      ; 9771: 85 b2
	jsr $b1c8                    ; 9773: 20 c8 b1
loc_9776:
	jsr $b0d1                    ; 9776: 20 d1 b0
loc_9779:
	jsr $b164                    ; 9779: 20 64 b1
loc_977c:
	rts                          ; 977c: 60

; --- Block at $977d-$9794 ---
loc_977d:
	lda $09                      ; 977d: a5 09
	and.b #$80                   ; 977f: 29 80
	.db $f0, $12                 ; 9781: f0 12
loc_9783:
	lda $08                      ; 9783: a5 08
	sta $08fb                    ; 9785: 8d fb 08
	jsr $b1c8                    ; 9788: 20 c8 b1
loc_978b:
	jsr $b0d1                    ; 978b: 20 d1 b0
loc_978e:
	jsr $b164                    ; 978e: 20 64 b1
loc_9791:
	jsr $9818                    ; 9791: 20 18 98
loc_9794:
	rts                          ; 9794: 60

; --- Block at $9795-$97a8 ---
loc_9795:
	inc $b2                      ; 9795: e6 b2
	lda $08                      ; 9797: a5 08
	and.b #$7f                   ; 9799: 29 7f
	sta $18                      ; 979b: 85 18
	stz $19                      ; 979d: 64 19
	lda $08                      ; 979f: a5 08
	and.b #$80                   ; 97a1: 29 80
	.db $d0, $06                 ; 97a3: d0 06
loc_97a5:
	ldx.w #$000a                 ; 97a5: a2 0a 00
	jmp $97ae                    ; 97a8: 4c ae 97

; --- Block at $97ab-$97c3 ---
loc_97ab:
	ldx.w #$03e8                 ; 97ab: a2 e8 03
loc_97ae:
	stx $1a                      ; 97ae: 86 1a
	jsl $15c395                  ; 97b0: 22 95 c3 15
loc_97b4:
	jsr $ea95                    ; 97b4: 20 95 ea
loc_97b7:
	jsr $97dd                    ; 97b7: 20 dd 97
loc_97ba:
	jsr $b1c8                    ; 97ba: 20 c8 b1
loc_97bd:
	jsr $b0d1                    ; 97bd: 20 d1 b0
loc_97c0:
	jsr $b164                    ; 97c0: 20 64 b1
loc_97c3:
	rts                          ; 97c3: 60

; --- Block at $97c4-$97dc ---
loc_97c4:
	lda $1705                    ; 97c4: ad 05 17
	tax                          ; 97c7: aa
	lda $070c,x                  ; 97c8: bd 0c 07
	cmp.b #$77                   ; 97cb: c9 77
	.db $d0, $0d                 ; 97cd: d0 0d
loc_97cf:
	lda.b #$04                   ; 97cf: a9 04
	sta $b2                      ; 97d1: 85 b2
	jsr $b1c8                    ; 97d3: 20 c8 b1
loc_97d6:
	jsr $b0d1                    ; 97d6: 20 d1 b0
loc_97d9:
	jsr $b164                    ; 97d9: 20 64 b1
loc_97dc:
	rts                          ; 97dc: 60

; --- Block at $97dd-$9817 ---
loc_97dd:
	lda $16a0                    ; 97dd: ad a0 16
	clc                          ; 97e0: 18
	adc $30                      ; 97e1: 65 30
	sta $16a0                    ; 97e3: 8d a0 16
	lda $16a1                    ; 97e6: ad a1 16
	adc $31                      ; 97e9: 65 31
	sta $16a1                    ; 97eb: 8d a1 16
	lda $16a2                    ; 97ee: ad a2 16
	adc $32                      ; 97f1: 65 32
	sta $16a2                    ; 97f3: 8d a2 16
	cmp.b #$98                   ; 97f6: c9 98
	.db $90, $1d                 ; 97f8: 90 1d
loc_97fa:
	lda $16a1                    ; 97fa: ad a1 16
	cmp.b #$96                   ; 97fd: c9 96
	.db $90, $16                 ; 97ff: 90 16
loc_9801:
	lda $16a0                    ; 9801: ad a0 16
	cmp.b #$7f                   ; 9804: c9 7f
	.db $90, $0f                 ; 9806: 90 0f
loc_9808:
	lda.b #$7f                   ; 9808: a9 7f
	sta $16a0                    ; 980a: 8d a0 16
	lda.b #$96                   ; 980d: a9 96
	sta $16a1                    ; 980f: 8d a1 16
	lda.b #$98                   ; 9812: a9 98
	sta $16a2                    ; 9814: 8d a2 16
loc_9817:
	rts                          ; 9817: 60

; --- Block at $9818-$9853 ---
loc_9818:
	lda.b #$01                   ; 9818: a9 01
	sta $06                      ; 981a: 85 06
	lda $08fb                    ; 981c: ad fb 08
	cmp.b #$60                   ; 981f: c9 60
	.db $b0, $08                 ; 9821: b0 08
loc_9823:
	cmp.b #$54                   ; 9823: c9 54
	.db $90, $04                 ; 9825: 90 04
loc_9827:
	lda.b #$0a                   ; 9827: a9 0a
	sta $06                      ; 9829: 85 06
loc_982b:
	ldy.w #$0000                 ; 982b: a0 00 00
	lda $1440,y                  ; 982e: b9 40 14
	cmp $08fb                    ; 9831: cd fb 08
	.db $d0, $07                 ; 9834: d0 07
loc_9836:
	lda $1441,y                  ; 9836: b9 41 14
	cmp.b #$63                   ; 9839: c9 63
	.db $d0, $73                 ; 983b: d0 73
loc_983d:
	iny                          ; 983d: c8
	iny                          ; 983e: c8
	cpy.w #$0060                 ; 983f: c0 60 00
	.db $d0, $ea                 ; 9842: d0 ea
loc_9844:
	ldy.w #$0000                 ; 9844: a0 00 00
	lda $1440,y                  ; 9847: b9 40 14
	.db $f0, $5e                 ; 984a: f0 5e
loc_984c:
	iny                          ; 984c: c8
	iny                          ; 984d: c8
	cpy.w #$0060                 ; 984e: c0 60 00
	.db $f0, $03                 ; 9851: f0 03
loc_9853:
	jmp $9847                    ; 9853: 4c 47 98

; --- Block at $9856-$98a9 ---
loc_9856:
	lda $08fb                    ; 9856: ad fb 08
	sta $1804                    ; 9859: 8d 04 18
	stz $1805                    ; 985c: 9c 05 18
	stz $1806                    ; 985f: 9c 06 18
	stz $1807                    ; 9862: 9c 07 18
	stz $1808                    ; 9865: 9c 08 18
	stz $1809                    ; 9868: 9c 09 18
	stz $180a                    ; 986b: 9c 0a 18
	stz $180b                    ; 986e: 9c 0b 18
	lda.b #$00                   ; 9871: a9 00
	jsr $8bb3                    ; 9873: 20 b3 8b
loc_9876:
	jsl $018020                  ; 9876: 22 20 80 01
loc_987a:
	jsr $87cf                    ; 987a: 20 cf 87
loc_987d:
	ldx.w #$0000                 ; 987d: a2 00 00
	stz $1804,x                  ; 9880: 9e 04 18
	inx                          ; 9883: e8
	cpx.w #$0008                 ; 9884: e0 08 00
	.db $d0, $f7                 ; 9887: d0 f7
loc_9889:
	jsl $15c8e5                  ; 9889: 22 e5 c8 15
loc_988d:
	lda.b #$01                   ; 988d: a9 01
	sta $c5                      ; 988f: 85 c5
	jsr $8452                    ; 9891: 20 52 84
loc_9894:
	jsr $be67                    ; 9894: 20 67 be
loc_9897:
	cli                          ; 9897: 58
	lda.b #$81                   ; 9898: a9 81
	sta $4200                    ; 989a: 8d 00 42 ; NMITIMEN
	jsl $15b1e0                  ; 989d: 22 e0 b1 15
loc_98a1:
	jsr $b8b0                    ; 98a1: 20 b0 b8
loc_98a4:
	lda.b #$00                   ; 98a4: a9 00
	jsr $8b92                    ; 98a6: 20 92 8b
loc_98a9:
	rts                          ; 98a9: 60

; --- Block at $98aa-$98b0 ---
loc_98aa:
	lda $08fb                    ; 98aa: ad fb 08
	sta $1440,y                  ; 98ad: 99 40 14

; --- Block at $98b0-$98c4 ---
loc_98b0:
	lda $1441,y                  ; 98b0: b9 41 14
	clc                          ; 98b3: 18
	adc $06                      ; 98b4: 65 06
	cmp.b #$64                   ; 98b6: c9 64
	.db $90, $0d                 ; 98b8: 90 0d
loc_98ba:
	sec                          ; 98ba: 38
	sbc.b #$63                   ; 98bb: e9 63
	sta $06                      ; 98bd: 85 06
	lda.b #$63                   ; 98bf: a9 63
	sta $1441,y                  ; 98c1: 99 41 14
	jmp $982b                    ; 98c4: 4c 2b 98

; --- Block at $98c7-$98ca ---
loc_98c7:
	sta $1441,y                  ; 98c7: 99 41 14
	rts                          ; 98ca: 60

; --- Block at $98cb-$98ee ---
loc_98cb:
	rep #$20                     ; 98cb: c2 20
	lda $7f48ee                  ; 98cd: af ee 48 7f
	sta $0700                    ; 98d1: 8d 00 07
	lda $7f49ee                  ; 98d4: af ee 49 7f
	sta $0702                    ; 98d8: 8d 02 07
	lda $7f4aee                  ; 98db: af ee 4a 7f
	sta $0704                    ; 98df: 8d 04 07
	lda $7f4bee                  ; 98e2: af ee 4b 7f
	sta $0706                    ; 98e6: 8d 06 07
	lda.w #$0000                 ; 98e9: a9 00 00
	sep #$20                     ; 98ec: e2 20
	rts                          ; 98ee: 60

; --- Block at $98ef-$9900 ---
loc_98ef:
	jsr $9924                    ; 98ef: 20 24 99
loc_98f2:
	lda $12a0,x                  ; 98f2: bd a0 12
	sta $07                      ; 98f5: 85 07
	lsr $07                      ; 98f7: 46 07
	dey                          ; 98f9: 88
	.db $d0, $fb                 ; 98fa: d0 fb
loc_98fc:
	lda.b #$00                   ; 98fc: a9 00
	adc.b #$00                   ; 98fe: 69 00
	rts                          ; 9900: 60

; --- Block at $9901-$990a ---
loc_9901:
	jsr $9924                    ; 9901: 20 24 99
loc_9904:
	lda.b #$01                   ; 9904: a9 01
	dey                          ; 9906: 88
	.db $f0, $04                 ; 9907: f0 04
loc_9909:
	asl                          ; 9909: 0a
	jmp $9906                    ; 990a: 4c 06 99

; --- Block at $990d-$9923 ---
loc_990d:
	sta $06                      ; 990d: 85 06
	lda $12a0,x                  ; 990f: bd a0 12
	and $06                      ; 9912: 25 06
	sta $07                      ; 9914: 85 07
	.db $d0, $09                 ; 9916: d0 09
loc_9918:
	lda $12a0,x                  ; 9918: bd a0 12
	clc                          ; 991b: 18
	adc $06                      ; 991c: 65 06
	sta $12a0,x                  ; 991e: 9d a0 12
loc_9921:
	lda $07                      ; 9921: a5 07
	rts                          ; 9923: 60

; --- Block at $9924-$993c ---
loc_9924:
	lda $08fc                    ; 9924: ad fc 08
	lsr                          ; 9927: 4a
	lsr                          ; 9928: 4a
	lsr                          ; 9929: 4a
	tax                          ; 992a: aa
	lda $1701                    ; 992b: ad 01 17
	.db $f0, $05                 ; 992e: f0 05
loc_9930:
	txa                          ; 9930: 8a
	clc                          ; 9931: 18
	adc.b #$20                   ; 9932: 69 20
	tax                          ; 9934: aa
loc_9935:
	lda $08fc                    ; 9935: ad fc 08
	and.b #$07                   ; 9938: 29 07
	inc                          ; 993a: 1a
	tay                          ; 993b: a8
	rts                          ; 993c: 60

; --- Block at $993d-$995f ---
loc_993d:
	lda $1702                    ; 993d: ad 02 17
	sta $3d                      ; 9940: 85 3d
	stz $3e                      ; 9942: 64 3e
	asl $3d                      ; 9944: 06 3d
	rol $3e                      ; 9946: 26 3e
	lda $1701                    ; 9948: ad 01 17
	.db $f0, $04                 ; 994b: f0 04
loc_994d:
	inc $3e                      ; 994d: e6 3e
	inc $3e                      ; 994f: e6 3e
loc_9951:
	ldx $3d                      ; 9951: a6 3d
	lda $158000,x                ; 9953: bf 00 80 15
	sta $3d                      ; 9957: 85 3d
	lda $158001,x                ; 9959: bf 01 80 15
	sta $3e                      ; 995d: 85 3e
	rts                          ; 995f: 60

; --- Block at $9960-$9965 ---
loc_9960:
	lda $0711                    ; 9960: ad 11 07
	.db $d0, $01                 ; 9963: d0 01
loc_9965:
	rts                          ; 9965: 60

; --- Block at $9966-$99ad ---
loc_9966:
	jsr $993d                    ; 9966: 20 3d 99
loc_9969:
	ldy.w #$0000                 ; 9969: a0 00 00
	ldx $3d                      ; 996c: a6 3d
	tya                          ; 996e: 98
	clc                          ; 996f: 18
	adc $0fe7                    ; 9970: 6d e7 0f
	sta $08fc                    ; 9973: 8d fc 08
	phy                          ; 9976: 5a
	jsr $98ef                    ; 9977: 20 ef 98
loc_997a:
	ply                          ; 997a: 7a
	cmp.b #$00                   ; 997b: c9 00
	.db $f0, $1e                 ; 997d: f0 1e
loc_997f:
	ldx $3d                      ; 997f: a6 3d
	lda $158300,x                ; 9981: bf 00 83 15
	sta $18                      ; 9985: 85 18
	lda $158301,x                ; 9987: bf 01 83 15
	sta $19                      ; 998b: 85 19
	ldx $18                      ; 998d: a6 18
	lda $7f5c71,x                ; 998f: bf 71 5c 7f
	cmp.b #$78                   ; 9993: c9 78
	.db $d0, $06                 ; 9995: d0 06
loc_9997:
	lda.b #$77                   ; 9997: a9 77
	sta $7f5c71,x                ; 9999: 9f 71 5c 7f
loc_999d:
	ldx $3d                      ; 999d: a6 3d
	inx                          ; 999f: e8
	inx                          ; 99a0: e8
	inx                          ; 99a1: e8
	inx                          ; 99a2: e8
	inx                          ; 99a3: e8
	stx $3d                      ; 99a4: 86 3d
	iny                          ; 99a6: c8
	tya                          ; 99a7: 98
	cmp $0711                    ; 99a8: cd 11 07
	.db $f0, $03                 ; 99ab: f0 03
loc_99ad:
	jmp $996c                    ; 99ad: 4c 6c 99

; --- Block at $99b0-$99b0 ---
loc_99b0:
	rts                          ; 99b0: 60

; --- Block at $99b1-$99c5 ---
loc_99b1:
	stz $cd                      ; 99b1: 64 cd
	lda $ab                      ; 99b3: a5 ab
	.db $d0, $02                 ; 99b5: d0 02
loc_99b7:
	stz $7b                      ; 99b7: 64 7b
loc_99b9:
	lda $ac                      ; 99b9: a5 ac
	tax                          ; 99bb: aa
	lda $7b                      ; 99bc: a5 7b
	and $aaf0,x                  ; 99be: 3d f0 aa
	.db $f0, $03                 ; 99c1: f0 03
loc_99c3:
	stz $d5                      ; 99c3: 64 d5
	rts                          ; 99c5: 60

; --- Block at $99c6-$99e8 ---
loc_99c6:
	lda.b #$01                   ; 99c6: a9 01
	sta $d5                      ; 99c8: 85 d5
	jsr $9d4e                    ; 99ca: 20 4e 9d
loc_99cd:
	lda $a1                      ; 99cd: a5 a1
	and.b #$08                   ; 99cf: 29 08
	sta $1a02                    ; 99d1: 8d 02 1a
	lda $1706                    ; 99d4: ad 06 17
	.db $30, $0d                 ; 99d7: 30 0d
loc_99d9:
	cmp.b #$20                   ; 99d9: c9 20
	.db $b0, $09                 ; 99db: b0 09
loc_99dd:
	lda $1707                    ; 99dd: ad 07 17
	.db $30, $04                 ; 99e0: 30 04
loc_99e2:
	cmp.b #$20                   ; 99e2: c9 20
	.db $90, $03                 ; 99e4: 90 03
loc_99e6:
	inc $d1                      ; 99e6: e6 d1
	rts                          ; 99e8: 60

; --- Block at $99e9-$99fd ---
loc_99e9:
	lda $a2                      ; 99e9: a5 a2
	.db $30, $11                 ; 99eb: 30 11
loc_99ed:
	lda $a2                      ; 99ed: a5 a2
	and.b #$10                   ; 99ef: 29 10
	.db $d0, $0b                 ; 99f1: d0 0b
loc_99f3:
	lda $a1                      ; 99f3: a5 a1
	and.b #$08                   ; 99f5: 29 08
	.db $d0, $05                 ; 99f7: d0 05
loc_99f9:
	lda.b #$01                   ; 99f9: a9 01
	sta $d6                      ; 99fb: 85 d6
	rts                          ; 99fd: 60

; --- Block at $99fe-$9a02 ---
loc_99fe:
	lda $d6                      ; 99fe: a5 d6
	.db $d0, $01                 ; 9a00: d0 01
loc_9a02:
	rts                          ; 9a02: 60

; --- Block at $9a03-$9a16 ---
loc_9a03:
	stz $d6                      ; 9a03: 64 d6
	lda $a1                      ; 9a05: a5 a1
	and.b #$08                   ; 9a07: 29 08
	.db $f0, $0c                 ; 9a09: f0 0c
loc_9a0b:
	lda.b #$01                   ; 9a0b: a9 01
	sta $b1                      ; 9a0d: 85 b1
	lda.b #$76                   ; 9a0f: a9 76
	jsr $df63                    ; 9a11: 20 63 df
loc_9a14:
	stz $b1                      ; 9a14: 64 b1
	rts                          ; 9a16: 60

; --- Block at $9a17-$9a1d ---
loc_9a17:
	lda $a2                      ; 9a17: a5 a2
	.db $30, $03                 ; 9a19: 30 03
loc_9a1b:
	inc $d1                      ; 9a1b: e6 d1
	rts                          ; 9a1d: 60

; --- Block at $9a1e-$9a59 ---
loc_9a1e:
	lda $1702                    ; 9a1e: ad 02 17
	sta $3d                      ; 9a21: 85 3d
	stz $3e                      ; 9a23: 64 3e
	asl $3d                      ; 9a25: 06 3d
	rol $3e                      ; 9a27: 26 3e
	lda $1701                    ; 9a29: ad 01 17
	.db $f0, $04                 ; 9a2c: f0 04
loc_9a2e:
	inc $3e                      ; 9a2e: e6 3e
	inc $3e                      ; 9a30: e6 3e
loc_9a32:
	ldx $3d                      ; 9a32: a6 3d
	lda $158000,x                ; 9a34: bf 00 80 15
	sta $3d                      ; 9a38: 85 3d
	lda $158001,x                ; 9a3a: bf 01 80 15
	sta $3e                      ; 9a3e: 85 3e
	ldx $3d                      ; 9a40: a6 3d
	lda $158300,x                ; 9a42: bf 00 83 15
	cmp $1706                    ; 9a46: cd 06 17
	.db $d0, $09                 ; 9a49: d0 09
loc_9a4b:
	lda $158301,x                ; 9a4b: bf 01 83 15
	cmp $1707                    ; 9a4f: cd 07 17
	.db $f0, $08                 ; 9a52: f0 08
loc_9a54:
	inx                          ; 9a54: e8
	inx                          ; 9a55: e8
	inx                          ; 9a56: e8
	inx                          ; 9a57: e8
	inx                          ; 9a58: e8
	jmp $9a42                    ; 9a59: 4c 42 9a

; --- Block at $9a5c-$9a6b ---
loc_9a5c:
	lda $158302,x                ; 9a5c: bf 02 83 15
	cmp.b #$ff                   ; 9a60: c9 ff
	.db $d0, $08                 ; 9a62: d0 08
loc_9a64:
	lda $158303,x                ; 9a64: bf 03 83 15
	jsr $efa5                    ; 9a68: 20 a5 ef
loc_9a6b:
	rts                          ; 9a6b: 60

; --- Block at $9a6c-$9aa3 ---
loc_9a6c:
	jsr $9acd                    ; 9a6c: 20 cd 9a
loc_9a6f:
	lda $158302,x                ; 9a6f: bf 02 83 15
	cmp.b #$fb                   ; 9a73: c9 fb
	.db $b0, $2d                 ; 9a75: b0 2d
loc_9a77:
	sta $1702                    ; 9a77: 8d 02 17
	lda $158303,x                ; 9a7a: bf 03 83 15
	and.b #$3f                   ; 9a7e: 29 3f
	sta $1706                    ; 9a80: 8d 06 17
	lda $158303,x                ; 9a83: bf 03 83 15
	and.b #$c0                   ; 9a87: 29 c0
	lsr                          ; 9a89: 4a
	lsr                          ; 9a8a: 4a
	lsr                          ; 9a8b: 4a
	lsr                          ; 9a8c: 4a
	lsr                          ; 9a8d: 4a
	lsr                          ; 9a8e: 4a
	sta $1705                    ; 9a8f: 8d 05 17
	lda $158304,x                ; 9a92: bf 04 83 15
	sta $1707                    ; 9a96: 8d 07 17
	jsr $9021                    ; 9a99: 20 21 90
loc_9a9c:
	lda.b #$03                   ; 9a9c: a9 03
	sta $1700                    ; 9a9e: 8d 00 17
	inc $cd                      ; 9aa1: e6 cd
	rts                          ; 9aa3: 60

; --- Block at $9aa4-$9acc ---
loc_9aa4:
	phx                          ; 9aa4: da
	jsr $8b2b                    ; 9aa5: 20 2b 8b
loc_9aa8:
	jsr $9021                    ; 9aa8: 20 21 90
loc_9aab:
	plx                          ; 9aab: fa
	lda $158302,x                ; 9aac: bf 02 83 15
	sec                          ; 9ab0: 38
	sbc.b #$fb                   ; 9ab1: e9 fb
	sta $1700                    ; 9ab3: 8d 00 17
	lda $158303,x                ; 9ab6: bf 03 83 15
	sta $1706                    ; 9aba: 8d 06 17
	lda $158304,x                ; 9abd: bf 04 83 15
	sta $1707                    ; 9ac1: 8d 07 17
	inc $cd                      ; 9ac4: e6 cd
	ldx.w #$0000                 ; 9ac6: a2 00 00
	stx $172c                    ; 9ac9: 8e 2c 17
	rts                          ; 9acc: 60

; --- Block at $9acd-$9aee ---
loc_9acd:
	phx                          ; 9acd: da
	ldx $172c                    ; 9ace: ae 2c 17
	lda $1700                    ; 9ad1: ad 00 17
	cmp.b #$03                   ; 9ad4: c9 03
	.db $d0, $19                 ; 9ad6: d0 19
loc_9ad8:
	lda $1702                    ; 9ad8: ad 02 17
	sta $172e,x                  ; 9adb: 9d 2e 17
	lda $1705                    ; 9ade: ad 05 17
	asl                          ; 9ae1: 0a
	asl                          ; 9ae2: 0a
	asl                          ; 9ae3: 0a
	asl                          ; 9ae4: 0a
	asl                          ; 9ae5: 0a
	asl                          ; 9ae6: 0a
	clc                          ; 9ae7: 18
	adc $1706                    ; 9ae8: 6d 06 17
	sta $172f,x                  ; 9aeb: 9d 2f 17
	jmp $9b00                    ; 9aee: 4c 00 9b

; --- Block at $9af1-$9b15 ---
loc_9af1:
	lda $1700                    ; 9af1: ad 00 17
	clc                          ; 9af4: 18
	adc.b #$fb                   ; 9af5: 69 fb
	sta $172e,x                  ; 9af7: 9d 2e 17
	lda $1706                    ; 9afa: ad 06 17
	sta $172f,x                  ; 9afd: 9d 2f 17
loc_9b00:
	lda $1707                    ; 9b00: ad 07 17
	sta $1730,x                  ; 9b03: 9d 30 17
	inx                          ; 9b06: e8
	inx                          ; 9b07: e8
	inx                          ; 9b08: e8
	cpx.w #$00c0                 ; 9b09: e0 c0 00
	.db $90, $03                 ; 9b0c: 90 03
loc_9b0e:
	ldx.w #$0000                 ; 9b0e: a2 00 00
loc_9b11:
	stx $172c                    ; 9b11: 8e 2c 17
	plx                          ; 9b14: fa
	rts                          ; 9b15: 60

; --- Block at $9b16-$9b2a ---
loc_9b16:
	stz $cd                      ; 9b16: 64 cd
	lda $ab                      ; 9b18: a5 ab
	.db $d0, $02                 ; 9b1a: d0 02
loc_9b1c:
	stz $7b                      ; 9b1c: 64 7b
loc_9b1e:
	lda $ac                      ; 9b1e: a5 ac
	tax                          ; 9b20: aa
	lda $7b                      ; 9b21: a5 7b
	and $aaf0,x                  ; 9b23: 3d f0 aa
	.db $f0, $03                 ; 9b26: f0 03
loc_9b28:
	stz $d5                      ; 9b28: 64 d5
	rts                          ; 9b2a: 60

; --- Block at $9b2b-$9b54 ---
loc_9b2b:
	lda.b #$01                   ; 9b2b: a9 01
	sta $d5                      ; 9b2d: 85 d5
	jsr $9d4e                    ; 9b2f: 20 4e 9d
loc_9b32:
	stz $1a02                    ; 9b32: 9c 02 1a
	lda $1704                    ; 9b35: ad 04 17
	.db $d0, $03                 ; 9b38: d0 03
loc_9b3a:
	inc $1a02                    ; 9b3a: ee 02 1a
loc_9b3d:
	lda $1704                    ; 9b3d: ad 04 17
	cmp.b #$04                   ; 9b40: c9 04
	.db $d0, $1f                 ; 9b42: d0 1f
loc_9b44:
	lda $06b7                    ; 9b44: ad b7 06
	cmp.b #$10                   ; 9b47: c9 10
	.db $d0, $18                 ; 9b49: d0 18
loc_9b4b:
	lda $1700                    ; 9b4b: ad 00 17
	cmp.b #$00                   ; 9b4e: c9 00
	.db $d0, $05                 ; 9b50: d0 05
loc_9b52:
	lda.b #$2d                   ; 9b52: a9 2d
	jmp $9bb2                    ; 9b54: 4c b2 9b

; --- Block at $9b57-$9b60 ---
loc_9b57:
	lda $1700                    ; 9b57: ad 00 17
	cmp.b #$01                   ; 9b5a: c9 01
	.db $d0, $05                 ; 9b5c: d0 05
loc_9b5e:
	lda.b #$2f                   ; 9b5e: a9 2f
	jmp $9bb2                    ; 9b60: 4c b2 9b

; --- Block at $9b63-$9b6b ---
loc_9b63:
	lda $a2                      ; 9b63: a5 a2
	.db $30, $05                 ; 9b65: 30 05
loc_9b67:
	lda.b #$01                   ; 9b67: a9 01
	sta $d6                      ; 9b69: 85 d6
	rts                          ; 9b6b: 60

; --- Block at $9b6c-$9b71 ---
loc_9b6c:
	lda $1704                    ; 9b6c: ad 04 17
	.db $f0, $01                 ; 9b6f: f0 01
loc_9b71:
	rts                          ; 9b71: 60

; --- Block at $9b72-$9b76 ---
loc_9b72:
	lda $d6                      ; 9b72: a5 d6
	.db $d0, $01                 ; 9b74: d0 01
loc_9b76:
	rts                          ; 9b76: 60

; --- Block at $9b77-$9ba3 ---
loc_9b77:
	stz $d6                      ; 9b77: 64 d6
	lda $1700                    ; 9b79: ad 00 17
	asl                          ; 9b7c: 0a
	tax                          ; 9b7d: aa
	lda $19fe60,x                ; 9b7e: bf 60 fe 19
	sta $3d                      ; 9b82: 85 3d
	lda $19fe61,x                ; 9b84: bf 61 fe 19
	sta $3e                      ; 9b88: 85 3e
	ldx $3d                      ; 9b8a: a6 3d
	lda $19fe66,x                ; 9b8c: bf 66 fe 19
	cmp $1706                    ; 9b90: cd 06 17
	.db $d0, $09                 ; 9b93: d0 09
loc_9b95:
	lda $19fe67,x                ; 9b95: bf 67 fe 19
	cmp $1707                    ; 9b99: cd 07 17
	.db $f0, $08                 ; 9b9c: f0 08
loc_9b9e:
	inx                          ; 9b9e: e8
	inx                          ; 9b9f: e8
	inx                          ; 9ba0: e8
	inx                          ; 9ba1: e8
	inx                          ; 9ba2: e8
	jmp $9b8c                    ; 9ba3: 4c 8c 9b

; --- Block at $9ba6-$9bb2 ---
loc_9ba6:
	lda $19fe68,x                ; 9ba6: bf 68 fe 19
	cmp.b #$ff                   ; 9baa: c9 ff
	.db $d0, $08                 ; 9bac: d0 08
loc_9bae:
	lda $19fe69,x                ; 9bae: bf 69 fe 19

; --- Block at $9bb2-$9bb5 ---
loc_9bb2:
	jsr $efa5                    ; 9bb2: 20 a5 ef
loc_9bb5:
	rts                          ; 9bb5: 60

; --- Block at $9bb6-$9c1c ---
loc_9bb6:
	phx                          ; 9bb6: da
	ldx $172c                    ; 9bb7: ae 2c 17
	lda $1700                    ; 9bba: ad 00 17
	.db $f0, $02                 ; 9bbd: f0 02
loc_9bbf:
	lda.b #$01                   ; 9bbf: a9 01
loc_9bc1:
	sta $1701                    ; 9bc1: 8d 01 17
	lda $1700                    ; 9bc4: ad 00 17
	clc                          ; 9bc7: 18
	adc.b #$fb                   ; 9bc8: 69 fb
	sta $172e,x                  ; 9bca: 9d 2e 17
	lda.l $001706                ; 9bcd: af 06 17 00
	sta $172f,x                  ; 9bd1: 9d 2f 17
	lda $1707                    ; 9bd4: ad 07 17
	sta $1730,x                  ; 9bd7: 9d 30 17
	inx                          ; 9bda: e8
	inx                          ; 9bdb: e8
	inx                          ; 9bdc: e8
	cpx.w #$00c0                 ; 9bdd: e0 c0 00
	.db $90, $03                 ; 9be0: 90 03
loc_9be2:
	ldx.w #$0000                 ; 9be2: a2 00 00
loc_9be5:
	stx $172c                    ; 9be5: 8e 2c 17
	plx                          ; 9be8: fa
	lda $19fe68,x                ; 9be9: bf 68 fe 19
	sta $1702                    ; 9bed: 8d 02 17
	lda $19fe69,x                ; 9bf0: bf 69 fe 19
	and.b #$3f                   ; 9bf4: 29 3f
	sta $1706                    ; 9bf6: 8d 06 17
	lda $19fe6a,x                ; 9bf9: bf 6a fe 19
	sta $1707                    ; 9bfd: 8d 07 17
	lda $19fe69,x                ; 9c00: bf 69 fe 19
	and.b #$c0                   ; 9c04: 29 c0
	lsr                          ; 9c06: 4a
	lsr                          ; 9c07: 4a
	lsr                          ; 9c08: 4a
	lsr                          ; 9c09: 4a
	lsr                          ; 9c0a: 4a
	lsr                          ; 9c0b: 4a
	sta $1705                    ; 9c0c: 8d 05 17
	jsr $8b2b                    ; 9c0f: 20 2b 8b
loc_9c12:
	jsr $9021                    ; 9c12: 20 21 90
loc_9c15:
	inc $cd                      ; 9c15: e6 cd
	lda.b #$03                   ; 9c17: a9 03
	sta $1700                    ; 9c19: 8d 00 17
	rts                          ; 9c1c: 60

; --- Block at $9c1d-$9c27 ---
loc_9c1d:
	lda $02                      ; 9c1d: a5 02
	and.b #$80                   ; 9c1f: 29 80
	.db $f0, $04                 ; 9c21: f0 04
loc_9c23:
	lda $54                      ; 9c23: a5 54
	.db $f0, $01                 ; 9c25: f0 01
loc_9c27:
	rts                          ; 9c27: 60

; --- Block at $9c28-$9c62 ---
loc_9c28:
	inc $54                      ; 9c28: e6 54
	lda.b #$3d                   ; 9c2a: a9 3d
	jsr $f165                    ; 9c2c: 20 65 f1
loc_9c2f:
	cmp.b #$00                   ; 9c2f: c9 00
	.db $d0, $09                 ; 9c31: d0 09
loc_9c33:
	lda.b #$30                   ; 9c33: a9 30
	jsr $f165                    ; 9c35: 20 65 f1
loc_9c38:
	cmp.b #$00                   ; 9c38: c9 00
	.db $f0, $4b                 ; 9c3a: f0 4b
loc_9c3c:
	lda $1704                    ; 9c3c: ad 04 17
	cmp.b #$04                   ; 9c3f: c9 04
	.db $f0, $04                 ; 9c41: f0 04
loc_9c43:
	cmp.b #$05                   ; 9c43: c9 05
	.db $d0, $40                 ; 9c45: d0 40
loc_9c47:
	lda $1700                    ; 9c47: ad 00 17
	.db $d0, $19                 ; 9c4a: d0 19
loc_9c4c:
	lda $1706                    ; 9c4c: ad 06 17
	cmp.b #$69                   ; 9c4f: c9 69
	.db $90, $34                 ; 9c51: 90 34
loc_9c53:
	cmp.b #$6c                   ; 9c53: c9 6c
	.db $b0, $30                 ; 9c55: b0 30
loc_9c57:
	lda $1707                    ; 9c57: ad 07 17
	cmp.b #$d3                   ; 9c5a: c9 d3
	.db $90, $29                 ; 9c5c: 90 29
loc_9c5e:
	cmp.b #$d6                   ; 9c5e: c9 d6
	.db $b0, $25                 ; 9c60: b0 25
loc_9c62:
	jmp $9c82                    ; 9c62: 4c 82 9c

; --- Block at $9c65-$9c86 ---
loc_9c65:
	lda $1700                    ; 9c65: ad 00 17
	cmp.b #$01                   ; 9c68: c9 01
	.db $d0, $1b                 ; 9c6a: d0 1b
loc_9c6c:
	lda $1706                    ; 9c6c: ad 06 17
	cmp.b #$70                   ; 9c6f: c9 70
	.db $90, $14                 ; 9c71: 90 14
loc_9c73:
	cmp.b #$73                   ; 9c73: c9 73
	.db $b0, $10                 ; 9c75: b0 10
loc_9c77:
	lda $1707                    ; 9c77: ad 07 17
	cmp.b #$0f                   ; 9c7a: c9 0f
	.db $90, $09                 ; 9c7c: 90 09
loc_9c7e:
	cmp.b #$12                   ; 9c7e: c9 12
	.db $b0, $05                 ; 9c80: b0 05
loc_9c82:
	lda.b #$01                   ; 9c82: a9 01
	sta $ce                      ; 9c84: 85 ce
	rts                          ; 9c86: 60

; --- Block at $9c87-$9c90 ---
loc_9c87:
	lda $1704                    ; 9c87: ad 04 17
	.db $f0, $2b                 ; 9c8a: f0 2b
loc_9c8c:
	cmp.b #$01                   ; 9c8c: c9 01
	.db $d0, $03                 ; 9c8e: d0 03
loc_9c90:
	jmp $9e5d                    ; 9c90: 4c 5d 9e

; --- Block at $9c93-$9c97 ---
loc_9c93:
	cmp.b #$02                   ; 9c93: c9 02
	.db $d0, $03                 ; 9c95: d0 03
loc_9c97:
	jmp $9f02                    ; 9c97: 4c 02 9f

; --- Block at $9c9a-$9c9e ---
loc_9c9a:
	cmp.b #$03                   ; 9c9a: c9 03
	.db $d0, $03                 ; 9c9c: d0 03
loc_9c9e:
	jmp $9fc0                    ; 9c9e: 4c c0 9f

; --- Block at $9ca1-$9ca5 ---
loc_9ca1:
	cmp.b #$04                   ; 9ca1: c9 04
	.db $d0, $03                 ; 9ca3: d0 03
loc_9ca5:
	jmp $a3ed                    ; 9ca5: 4c ed a3

; --- Block at $9ca8-$9cac ---
loc_9ca8:
	cmp.b #$05                   ; 9ca8: c9 05
	.db $d0, $03                 ; 9caa: d0 03
loc_9cac:
	jmp $a53c                    ; 9cac: 4c 3c a5

; --- Block at $9caf-$9cb3 ---
loc_9caf:
	cmp.b #$06                   ; 9caf: c9 06
	.db $d0, $03                 ; 9cb1: d0 03
loc_9cb3:
	jmp $a5c4                    ; 9cb3: 4c c4 a5

; --- Block at $9cb6-$9cb6 ---
loc_9cb6:
	rts                          ; 9cb6: 60

; --- Block at $9cb7-$9cbe ---
loc_9cb7:
	stz $1a02                    ; 9cb7: 9c 02 1a
	lda $ab                      ; 9cba: a5 ab
	.db $f0, $01                 ; 9cbc: f0 01
loc_9cbe:
	rts                          ; 9cbe: 60

; --- Block at $9cbf-$9cd3 ---
loc_9cbf:
	lda $1701                    ; 9cbf: ad 01 17
	cmp.b #$00                   ; 9cc2: c9 00
	.db $d0, $10                 ; 9cc4: d0 10
loc_9cc6:
	lda $170f                    ; 9cc6: ad 0f 17
	.db $f0, $0b                 ; 9cc9: f0 0b
loc_9ccb:
	ldx $1706                    ; 9ccb: ae 06 17
	cpx $1710                    ; 9cce: ec 10 17
	.db $d0, $03                 ; 9cd1: d0 03
loc_9cd3:
	jmp $9e20                    ; 9cd3: 4c 20 9e

; --- Block at $9cd6-$9cea ---
loc_9cd6:
	lda $1701                    ; 9cd6: ad 01 17
	cmp.b #$00                   ; 9cd9: c9 00
	.db $d0, $10                 ; 9cdb: d0 10
loc_9cdd:
	lda $1712                    ; 9cdd: ad 12 17
	.db $f0, $0b                 ; 9ce0: f0 0b
loc_9ce2:
	ldx $1706                    ; 9ce2: ae 06 17
	cpx $1713                    ; 9ce5: ec 13 17
	.db $d0, $03                 ; 9ce8: d0 03
loc_9cea:
	jmp $9e2b                    ; 9cea: 4c 2b 9e

; --- Block at $9ced-$9d02 ---
loc_9ced:
	lda $1701                    ; 9ced: ad 01 17
	cmp $171b                    ; 9cf0: cd 1b 17
	.db $d0, $10                 ; 9cf3: d0 10
loc_9cf5:
	lda $1718                    ; 9cf5: ad 18 17
	.db $f0, $0b                 ; 9cf8: f0 0b
loc_9cfa:
	ldx $1706                    ; 9cfa: ae 06 17
	cpx $1719                    ; 9cfd: ec 19 17
	.db $d0, $03                 ; 9d00: d0 03
loc_9d02:
	jmp $9f4a                    ; 9d02: 4c 4a 9f

; --- Block at $9d05-$9d1a ---
loc_9d05:
	lda $1701                    ; 9d05: ad 01 17
	cmp $171f                    ; 9d08: cd 1f 17
	.db $d0, $10                 ; 9d0b: d0 10
loc_9d0d:
	lda $171c                    ; 9d0d: ad 1c 17
	.db $f0, $0b                 ; 9d10: f0 0b
loc_9d12:
	ldx $1706                    ; 9d12: ae 06 17
	cpx $171d                    ; 9d15: ec 1d 17
	.db $d0, $03                 ; 9d18: d0 03
loc_9d1a:
	jmp $9ff5                    ; 9d1a: 4c f5 9f

; --- Block at $9d1d-$9d32 ---
loc_9d1d:
	lda $1701                    ; 9d1d: ad 01 17
	cmp $1723                    ; 9d20: cd 23 17
	.db $d0, $10                 ; 9d23: d0 10
loc_9d25:
	lda $1720                    ; 9d25: ad 20 17
	.db $f0, $0b                 ; 9d28: f0 0b
loc_9d2a:
	ldx $1706                    ; 9d2a: ae 06 17
	cpx $1721                    ; 9d2d: ec 21 17
	.db $d0, $03                 ; 9d30: d0 03
loc_9d32:
	jmp $a065                    ; 9d32: 4c 65 a0

; --- Block at $9d35-$9d4a ---
loc_9d35:
	lda $1701                    ; 9d35: ad 01 17
	cmp $1727                    ; 9d38: cd 27 17
	.db $d0, $10                 ; 9d3b: d0 10
loc_9d3d:
	lda $1724                    ; 9d3d: ad 24 17
	.db $f0, $0b                 ; 9d40: f0 0b
loc_9d42:
	ldx $1706                    ; 9d42: ae 06 17
	cpx $1725                    ; 9d45: ec 25 17
	.db $d0, $03                 ; 9d48: d0 03
loc_9d4a:
	jmp $a0cd                    ; 9d4a: 4c cd a0

; --- Block at $9d4d-$9d4d ---
loc_9d4d:
	rts                          ; 9d4d: 60

; --- Block at $9d4e-$9da1 ---
loc_9d4e:
	lda $1706                    ; 9d4e: ad 06 17
	sta $1a                      ; 9d51: 85 1a
	lda $1707                    ; 9d53: ad 07 17
	dec                          ; 9d56: 3a
	sta $1b                      ; 9d57: 85 1b
	jsr $9da2                    ; 9d59: 20 a2 9d
loc_9d5c:
	ldx $1e                      ; 9d5c: a6 1e
	stx $a3                      ; 9d5e: 86 a3
	lda $06                      ; 9d60: a5 06
	sta $070c                    ; 9d62: 8d 0c 07
	inc $1b                      ; 9d65: e6 1b
	dec $1a                      ; 9d67: c6 1a
	jsr $9da2                    ; 9d69: 20 a2 9d
loc_9d6c:
	ldx $1e                      ; 9d6c: a6 1e
	stx $a9                      ; 9d6e: 86 a9
	lda $06                      ; 9d70: a5 06
	sta $070f                    ; 9d72: 8d 0f 07
	inc $1a                      ; 9d75: e6 1a
	jsr $9da2                    ; 9d77: 20 a2 9d
loc_9d7a:
	ldx $1e                      ; 9d7a: a6 1e
	stx $a1                      ; 9d7c: 86 a1
	lda $06                      ; 9d7e: a5 06
	sta $070b                    ; 9d80: 8d 0b 07
	inc $1a                      ; 9d83: e6 1a
	jsr $9da2                    ; 9d85: 20 a2 9d
loc_9d88:
	ldx $1e                      ; 9d88: a6 1e
	stx $a5                      ; 9d8a: 86 a5
	lda $06                      ; 9d8c: a5 06
	sta $070d                    ; 9d8e: 8d 0d 07
	inc $1b                      ; 9d91: e6 1b
	dec $1a                      ; 9d93: c6 1a
	jsr $9da2                    ; 9d95: 20 a2 9d
loc_9d98:
	ldx $1e                      ; 9d98: a6 1e
	stx $a7                      ; 9d9a: 86 a7
	lda $06                      ; 9d9c: a5 06
	sta $070e                    ; 9d9e: 8d 0e 07
	rts                          ; 9da1: 60

; --- Block at $9da2-$9dad ---
loc_9da2:
	lda $1700                    ; 9da2: ad 00 17
	cmp.b #$03                   ; 9da5: c9 03
	.db $f0, $07                 ; 9da7: f0 07
loc_9da9:
	lda $1b                      ; 9da9: a5 1b
	and.b #$3f                   ; 9dab: 29 3f
	jmp $9dd3                    ; 9dad: 4c d3 9d

; --- Block at $9db0-$9dca ---
loc_9db0:
	lda $1a                      ; 9db0: a5 1a
	.db $30, $0c                 ; 9db2: 30 0c
loc_9db4:
	cmp.b #$20                   ; 9db4: c9 20
	.db $b0, $08                 ; 9db6: b0 08
loc_9db8:
	lda $1b                      ; 9db8: a5 1b
	.db $30, $04                 ; 9dba: 30 04
loc_9dbc:
	cmp.b #$20                   ; 9dbc: c9 20
	.db $90, $11                 ; 9dbe: 90 11
loc_9dc0:
	lda $0fdf                    ; 9dc0: ad df 0f
	.db $10, $06                 ; 9dc3: 10 06
loc_9dc5:
	ldx.w #$0000                 ; 9dc5: a2 00 00
	stx $1e                      ; 9dc8: 86 1e
	rts                          ; 9dca: 60

; --- Block at $9dcb-$9dd0 ---
loc_9dcb:
	ldx.w #$0007                 ; 9dcb: a2 07 00
	stx $1e                      ; 9dce: 86 1e
	rts                          ; 9dd0: 60

; --- Block at $9dd1-$9dd3 ---
loc_9dd1:
	lda $1b                      ; 9dd1: a5 1b

; --- Block at $9dd3-$9df5 ---
loc_9dd3:
	sta $3e                      ; 9dd3: 85 3e
	lda $1a                      ; 9dd5: a5 1a
	sta $3d                      ; 9dd7: 85 3d
	ldx $3d                      ; 9dd9: a6 3d
	lda $7f5c71,x                ; 9ddb: bf 71 5c 7f
	sta $06                      ; 9ddf: 85 06
	sta $18                      ; 9de1: 85 18
	stz $19                      ; 9de3: 64 19
	asl $18                      ; 9de5: 06 18
	rol $19                      ; 9de7: 26 19
	ldx $18                      ; 9de9: a6 18
	lda $0edb,x                  ; 9deb: bd db 0e
	sta $1e                      ; 9dee: 85 1e
	lda $0edc,x                  ; 9df0: bd dc 0e
	sta $1f                      ; 9df3: 85 1f
	rts                          ; 9df5: 60

; --- Block at $9df6-$9e0a ---
loc_9df6:
	lda.b #$03                   ; 9df6: a9 03
	sta $1705                    ; 9df8: 8d 05 17
	jsr $8f59                    ; 9dfb: 20 59 8f
loc_9dfe:
	jsr $92a2                    ; 9dfe: 20 a2 92
loc_9e01:
	jsr $8f2d                    ; 9e01: 20 2d 8f
loc_9e04:
	lda $7a                      ; 9e04: a5 7a
	and.b #$03                   ; 9e06: 29 03
	.db $d0, $f1                 ; 9e08: d0 f1
loc_9e0a:
	rts                          ; 9e0a: 60

; --- Block at $9e0b-$9e1f ---
loc_9e0b:
	lda.b #$03                   ; 9e0b: a9 03
	sta $1705                    ; 9e0d: 8d 05 17
	jsr $8f59                    ; 9e10: 20 59 8f
loc_9e13:
	jsr $92a2                    ; 9e13: 20 a2 92
loc_9e16:
	jsr $8f2d                    ; 9e16: 20 2d 8f
loc_9e19:
	lda $7a                      ; 9e19: a5 7a
	and.b #$07                   ; 9e1b: 29 07
	.db $d0, $f1                 ; 9e1d: d0 f1
loc_9e1f:
	rts                          ; 9e1f: 60

; --- Block at $9e20-$9e2a ---
loc_9e20:
	lda.b #$01                   ; 9e20: a9 01
	sta $1704                    ; 9e22: 8d 04 17
	sta $ac                      ; 9e25: 85 ac
	jsr $8b3f                    ; 9e27: 20 3f 8b
loc_9e2a:
	rts                          ; 9e2a: 60

; --- Block at $9e2b-$9e4b ---
loc_9e2b:
	inc $1715                    ; 9e2b: ee 15 17
	lda $1715                    ; 9e2e: ad 15 17
	cmp.b #$01                   ; 9e31: c9 01
	.db $d0, $0c                 ; 9e33: d0 0c
loc_9e35:
	lda $1706                    ; 9e35: ad 06 17
	sta $1716                    ; 9e38: 8d 16 17
	lda $1707                    ; 9e3b: ad 07 17
	sta $1717                    ; 9e3e: 8d 17 17
loc_9e41:
	lda.b #$02                   ; 9e41: a9 02
	sta $1704                    ; 9e43: 8d 04 17
	sta $ac                      ; 9e46: 85 ac
	jsr $8b3f                    ; 9e48: 20 3f 8b

; --- Block at $9e4b-$9e5c ---
loc_9e4b:
	stz $79                      ; 9e4b: 64 79
	stz $b5                      ; 9e4d: 64 b5
	jsr $9df6                    ; 9e4f: 20 f6 9d
loc_9e52:
	inc $b5                      ; 9e52: e6 b5
	inc $79                      ; 9e54: e6 79
	lda $79                      ; 9e56: a5 79
	cmp.b #$10                   ; 9e58: c9 10
	.db $d0, $f3                 ; 9e5a: d0 f3
loc_9e5c:
	rts                          ; 9e5c: 60

; --- Block at $9e5d-$9e63 ---
loc_9e5d:
	lda $a1                      ; 9e5d: a5 a1
	and.b #$01                   ; 9e5f: 29 01
	.db $d0, $01                 ; 9e61: d0 01
loc_9e63:
	rts                          ; 9e63: 60

; --- Block at $9e64-$9ee2 ---
loc_9e64:
	jsr $8b2b                    ; 9e64: 20 2b 8b
loc_9e67:
	lda.b #$02                   ; 9e67: a9 02
	sta $170f                    ; 9e69: 8d 0f 17
	lda.b #$70                   ; 9e6c: a9 70
	sta $1710                    ; 9e6e: 8d 10 17
	sta $1711                    ; 9e71: 8d 11 17
	lda.b #$01                   ; 9e74: a9 01
	sta $1705                    ; 9e76: 8d 05 17
	lda.b #$02                   ; 9e79: a9 02
	sta $2c                      ; 9e7b: 85 2c
	jsr $c170                    ; 9e7d: 20 70 c1
loc_9e80:
	lsr                          ; 9e80: 4a
	.db $90, $0c                 ; 9e81: 90 0c
loc_9e83:
	lda.b #$03                   ; 9e83: a9 03
	sta $1705                    ; 9e85: 8d 05 17
	lda $2c                      ; 9e88: a5 2c
	eor.b #$ff                   ; 9e8a: 49 ff
	inc                          ; 9e8c: 1a
	sta $2c                      ; 9e8d: 85 2c
loc_9e8f:
	lda.b #$02                   ; 9e8f: a9 02
	sta $2e                      ; 9e91: 85 2e
	jsr $c170                    ; 9e93: 20 70 c1
loc_9e96:
	lsr                          ; 9e96: 4a
	.db $90, $07                 ; 9e97: 90 07
loc_9e99:
	lda $2e                      ; 9e99: a5 2e
	eor.b #$ff                   ; 9e9b: 49 ff
	inc                          ; 9e9d: 1a
	sta $2e                      ; 9e9e: 85 2e
loc_9ea0:
	stz $1704                    ; 9ea0: 9c 04 17
	jsr $8f0f                    ; 9ea3: 20 0f 8f
loc_9ea6:
	jsr $c170                    ; 9ea6: 20 70 c1
loc_9ea9:
	cmp.b #$10                   ; 9ea9: c9 10
	.db $b0, $07                 ; 9eab: b0 07
loc_9ead:
	lda $2e                      ; 9ead: a5 2e
	eor.b #$ff                   ; 9eaf: 49 ff
	inc                          ; 9eb1: 1a
	sta $2e                      ; 9eb2: 85 2e
loc_9eb4:
	lda $1710                    ; 9eb4: ad 10 17
	clc                          ; 9eb7: 18
	adc $2c                      ; 9eb8: 65 2c
	sta $1710                    ; 9eba: 8d 10 17
	.db $f0, $26                 ; 9ebd: f0 26
loc_9ebf:
	cmp.b #$f0                   ; 9ebf: c9 f0
	.db $f0, $22                 ; 9ec1: f0 22
loc_9ec3:
	lda $1711                    ; 9ec3: ad 11 17
	clc                          ; 9ec6: 18
	adc $2e                      ; 9ec7: 65 2e
	sta $1711                    ; 9ec9: 8d 11 17
	.db $f0, $17                 ; 9ecc: f0 17
loc_9ece:
	cmp.b #$f0                   ; 9ece: c9 f0
	.db $f0, $13                 ; 9ed0: f0 13
loc_9ed2:
	lda.b #$01                   ; 9ed2: a9 01
	sta $1704                    ; 9ed4: 8d 04 17
	jsl $15b3dc                  ; 9ed7: 22 dc b3 15
loc_9edb:
	stz $1704                    ; 9edb: 9c 04 17
	jsl $15b30c                  ; 9ede: 22 0c b3 15
loc_9ee2:
	jmp $9ea3                    ; 9ee2: 4c a3 9e

; --- Block at $9ee5-$9f01 ---
loc_9ee5:
	jsr $8f0f                    ; 9ee5: 20 0f 8f
loc_9ee8:
	jsr $8f59                    ; 9ee8: 20 59 8f
loc_9eeb:
	stz $1704                    ; 9eeb: 9c 04 17
	stz $170f                    ; 9eee: 9c 0f 17
	jsr $92a2                    ; 9ef1: 20 a2 92
loc_9ef4:
	jsr $8f0f                    ; 9ef4: 20 0f 8f
loc_9ef7:
	stz $ac                      ; 9ef7: 64 ac
	stz $7b                      ; 9ef9: 64 7b
	inc $1a02                    ; 9efb: ee 02 1a
	jsr $8b3f                    ; 9efe: 20 3f 8b
loc_9f01:
	rts                          ; 9f01: 60

; --- Block at $9f02-$9f17 ---
loc_9f02:
	stz $79                      ; 9f02: 64 79
	jsr $9df6                    ; 9f04: 20 f6 9d
loc_9f07:
	dec $b5                      ; 9f07: c6 b5
	inc $79                      ; 9f09: e6 79
	lda $79                      ; 9f0b: a5 79
	cmp.b #$10                   ; 9f0d: c9 10
	.db $d0, $f3                 ; 9f0f: d0 f3
loc_9f11:
	lda $a1                      ; 9f11: a5 a1
	and.b #$08                   ; 9f13: 29 08
	.db $d0, $03                 ; 9f15: d0 03
loc_9f17:
	jmp $9e4b                    ; 9f17: 4c 4b 9e

; --- Block at $9f1a-$9f3f ---
loc_9f1a:
	stz $1704                    ; 9f1a: 9c 04 17
	stz $ac                      ; 9f1d: 64 ac
	stz $7b                      ; 9f1f: 64 7b
	lda.b #$02                   ; 9f21: a9 02
	sta $1705                    ; 9f23: 8d 05 17
	ldx $1706                    ; 9f26: ae 06 17
	stx $1713                    ; 9f29: 8e 13 17
	lda $1715                    ; 9f2c: ad 15 17
	cmp.b #$02                   ; 9f2f: c9 02
	.db $d0, $06                 ; 9f31: d0 06
loc_9f33:
	stz $1715                    ; 9f33: 9c 15 17
	stz $1712                    ; 9f36: 9c 12 17
loc_9f39:
	jsr $8b3f                    ; 9f39: 20 3f 8b
loc_9f3c:
	inc $1a02                    ; 9f3c: ee 02 1a
	rts                          ; 9f3f: 60

; --- Block at $9f4a-$9f79 ---
loc_9f4a:
	lda.b #$03                   ; 9f4a: a9 03
	sta $1704                    ; 9f4c: 8d 04 17
	lda.b #$01                   ; 9f4f: a9 01
	sta $ac                      ; 9f51: 85 ac
	lda $1701                    ; 9f53: ad 01 17
	sta $171b                    ; 9f56: 8d 1b 17
	lda.b #$03                   ; 9f59: a9 03
	sta $1705                    ; 9f5b: 8d 05 17
	lda $b1                      ; 9f5e: a5 b1
	.db $f0, $03                 ; 9f60: f0 03
loc_9f62:
	jsr $9f7a                    ; 9f62: 20 7a 9f
loc_9f65:
	jsr $8b3f                    ; 9f65: 20 3f 8b
loc_9f68:
	stz $79                      ; 9f68: 64 79
	stz $b6                      ; 9f6a: 64 b6
	jsr $9e0b                    ; 9f6c: 20 0b 9e
loc_9f6f:
	inc $b6                      ; 9f6f: e6 b6
	inc $79                      ; 9f71: e6 79
	lda $79                      ; 9f73: a5 79
	cmp.b #$04                   ; 9f75: c9 04
	.db $d0, $f3                 ; 9f77: d0 f3
loc_9f79:
	rts                          ; 9f79: 60

; --- Block at $9f7a-$9fbf ---
loc_9f7a:
	lda.b #$10                   ; 9f7a: a9 10
	sta $0acf                    ; 9f7c: 8d cf 0a
	lda.b #$03                   ; 9f7f: a9 03
	sta $0ad0                    ; 9f81: 8d d0 0a
	lda.b #$03                   ; 9f84: a9 03
	sta $0ad1                    ; 9f86: 8d d1 0a
	ldx.w #$7070                 ; 9f89: a2 70 70
	stx $0ad4                    ; 9f8c: 8e d4 0a
	ldx.w #$0028                 ; 9f8f: a2 28 00
	stx $0ad2                    ; 9f92: 8e d2 0a
	lda.b #$06                   ; 9f95: a9 06
	sta $0acd                    ; 9f97: 8d cd 0a
	lda.b #$02                   ; 9f9a: a9 02
	sta $0ace                    ; 9f9c: 8d ce 0a
	jsr $dded                    ; 9f9f: 20 ed dd
loc_9fa2:
	jsr $8f2d                    ; 9fa2: 20 2d 8f
loc_9fa5:
	jsr $de2f                    ; 9fa5: 20 2f de
loc_9fa8:
	ldx $0ad2                    ; 9fa8: ae d2 0a
	cpx.w #$0008                 ; 9fab: e0 08 00
	.db $b0, $07                 ; 9fae: b0 07
loc_9fb0:
	lda.b #$01                   ; 9fb0: a9 01
	sta $e5                      ; 9fb2: 85 e5
	jsr $92a2                    ; 9fb4: 20 a2 92
loc_9fb7:
	ldx $0ad2                    ; 9fb7: ae d2 0a
	cpx.w #$0000                 ; 9fba: e0 00 00
	.db $d0, $e3                 ; 9fbd: d0 e3
loc_9fbf:
	rts                          ; 9fbf: 60

; --- Block at $9fc0-$9fc6 ---
loc_9fc0:
	lda $a1                      ; 9fc0: a5 a1
	and.b #$01                   ; 9fc2: 29 01
	.db $d0, $01                 ; 9fc4: d0 01
loc_9fc6:
	rts                          ; 9fc6: 60

; --- Block at $9fc7-$9ff4 ---
loc_9fc7:
	stz $79                      ; 9fc7: 64 79
	jsr $9e0b                    ; 9fc9: 20 0b 9e
loc_9fcc:
	dec $b6                      ; 9fcc: c6 b6
	inc $79                      ; 9fce: e6 79
	lda $79                      ; 9fd0: a5 79
	cmp.b #$04                   ; 9fd2: c9 04
	.db $d0, $f3                 ; 9fd4: d0 f3
loc_9fd6:
	stz $1704                    ; 9fd6: 9c 04 17
	stz $ac                      ; 9fd9: 64 ac
	stz $7b                      ; 9fdb: 64 7b
	lda.b #$02                   ; 9fdd: a9 02
	sta $1705                    ; 9fdf: 8d 05 17
	lda $1701                    ; 9fe2: ad 01 17
	sta $171b                    ; 9fe5: 8d 1b 17
	ldx $1706                    ; 9fe8: ae 06 17
	stx $1719                    ; 9feb: 8e 19 17
	jsr $8b3f                    ; 9fee: 20 3f 8b
loc_9ff1:
	inc $1a02                    ; 9ff1: ee 02 1a
	rts                          ; 9ff4: 60

; --- Block at $9ff5-$9ffc ---
loc_9ff5:
	lda $1286                    ; 9ff5: ad 86 12
	and.b #$04                   ; 9ff8: 29 04
	.db $f0, $01                 ; 9ffa: f0 01
loc_9ffc:
	rts                          ; 9ffc: 60

; --- Block at $9ffd-$a022 ---
loc_9ffd:
	lda.b #$04                   ; 9ffd: a9 04
	sta $1704                    ; 9fff: 8d 04 17
	lda.b #$03                   ; a002: a9 03
	sta $ac                      ; a004: 85 ac
	sta $1705                    ; a006: 8d 05 17
	lda $b1                      ; a009: a5 b1
	.db $f0, $25                 ; a00b: f0 25
loc_a00d:
	lda $e1                      ; a00d: a5 e1
	.db $f0, $12                 ; a00f: f0 12
loc_a011:
	lda.b #$20                   ; a011: a9 20
	sta $ad                      ; a013: 85 ad
	lda.b #$10                   ; a015: a9 10
	sta $b7                      ; a017: 85 b7
	jsl $15c50b                  ; a019: 22 0b c5 15
loc_a01d:
	lda.b #$0f                   ; a01d: a9 0f
	sta $06fd                    ; a01f: 8d fd 06
	rts                          ; a022: 60

; --- Block at $a023-$a02f ---
loc_a023:
	jsr $9f7a                    ; a023: 20 7a 9f
loc_a026:
	lda.b #$20                   ; a026: a9 20
	sta $79                      ; a028: 85 79
	lda.b #$0f                   ; a02a: a9 0f
	sta $06fd                    ; a02c: 8d fd 06
	jmp $a037                    ; a02f: 4c 37 a0

; --- Block at $a032-$a037 ---
loc_a032:
	jsr $8b3f                    ; a032: 20 3f 8b
loc_a035:
	stz $79                      ; a035: 64 79

; --- Block at $a037-$a04a ---
loc_a037:
	stz $7a                      ; a037: 64 7a
	stz $b7                      ; a039: 64 b7
	jsr $9df6                    ; a03b: 20 f6 9d
loc_a03e:
	lda $79                      ; a03e: a5 79
	cmp.b #$20                   ; a040: c9 20
	.db $b0, $09                 ; a042: b0 09
loc_a044:
	lsr                          ; a044: 4a
	sta $06fd                    ; a045: 8d fd 06
	inc $79                      ; a048: e6 79
	jmp $a03b                    ; a04a: 4c 3b a0

; --- Block at $a04d-$a064 ---
loc_a04d:
	inc $b7                      ; a04d: e6 b7
	lda $b7                      ; a04f: a5 b7
	clc                          ; a051: 18
	adc.b #$10                   ; a052: 69 10
	sta $ad                      ; a054: 85 ad
	lda $b7                      ; a056: a5 b7
	jsl $15c50b                  ; a058: 22 0b c5 15
loc_a05c:
	inc $79                      ; a05c: e6 79
	lda $79                      ; a05e: a5 79
	cmp.b #$30                   ; a060: c9 30
	.db $d0, $d7                 ; a062: d0 d7
loc_a064:
	rts                          ; a064: 60

; --- Block at $a065-$a08a ---
loc_a065:
	lda.b #$05                   ; a065: a9 05
	sta $1704                    ; a067: 8d 04 17
	lda.b #$03                   ; a06a: a9 03
	sta $ac                      ; a06c: 85 ac
	sta $1705                    ; a06e: 8d 05 17
	lda $b1                      ; a071: a5 b1
	.db $f0, $25                 ; a073: f0 25
loc_a075:
	lda $e1                      ; a075: a5 e1
	.db $f0, $12                 ; a077: f0 12
loc_a079:
	lda.b #$20                   ; a079: a9 20
	sta $ad                      ; a07b: 85 ad
	lda.b #$10                   ; a07d: a9 10
	sta $b8                      ; a07f: 85 b8
	jsl $15c50b                  ; a081: 22 0b c5 15
loc_a085:
	lda.b #$0f                   ; a085: a9 0f
	sta $06fd                    ; a087: 8d fd 06
	rts                          ; a08a: 60

; --- Block at $a08b-$a097 ---
loc_a08b:
	jsr $9f7a                    ; a08b: 20 7a 9f
loc_a08e:
	lda.b #$20                   ; a08e: a9 20
	sta $79                      ; a090: 85 79
	lda.b #$0f                   ; a092: a9 0f
	sta $06fd                    ; a094: 8d fd 06
	jmp $a09f                    ; a097: 4c 9f a0

; --- Block at $a09a-$a09f ---
loc_a09a:
	jsr $8b3f                    ; a09a: 20 3f 8b
loc_a09d:
	stz $79                      ; a09d: 64 79

; --- Block at $a09f-$a0b2 ---
loc_a09f:
	stz $7a                      ; a09f: 64 7a
	stz $b8                      ; a0a1: 64 b8
	jsr $9df6                    ; a0a3: 20 f6 9d
loc_a0a6:
	lda $79                      ; a0a6: a5 79
	cmp.b #$20                   ; a0a8: c9 20
	.db $b0, $09                 ; a0aa: b0 09
loc_a0ac:
	lsr                          ; a0ac: 4a
	sta $06fd                    ; a0ad: 8d fd 06
	inc $79                      ; a0b0: e6 79
	jmp $a0a3                    ; a0b2: 4c a3 a0

; --- Block at $a0b5-$a0cc ---
loc_a0b5:
	inc $b8                      ; a0b5: e6 b8
	lda $b8                      ; a0b7: a5 b8
	clc                          ; a0b9: 18
	adc.b #$10                   ; a0ba: 69 10
	sta $ad                      ; a0bc: 85 ad
	lda $b8                      ; a0be: a5 b8
	jsl $15c50b                  ; a0c0: 22 0b c5 15
loc_a0c4:
	inc $79                      ; a0c4: e6 79
	lda $79                      ; a0c6: a5 79
	cmp.b #$30                   ; a0c8: c9 30
	.db $d0, $d7                 ; a0ca: d0 d7
loc_a0cc:
	rts                          ; a0cc: 60

; --- Block at $a0cd-$a0e0 ---
loc_a0cd:
	lda.b #$0e                   ; a0cd: a9 0e
	sta $1e01                    ; a0cf: 8d 01 1e
	lda.b #$01                   ; a0d2: a9 01
	sta $1e00                    ; a0d4: 8d 00 1e
	jsl $048004                  ; a0d7: 22 04 80 04
loc_a0db:
	lda.b #$54                   ; a0db: a9 54
	jsr $efa5                    ; a0dd: 20 a5 ef
loc_a0e0:
	rts                          ; a0e0: 60

; --- Block at $a106-$a119 ---
loc_a106:
	stz $7a                      ; a106: 64 7a
	stz $b9                      ; a108: 64 b9
	jsr $9df6                    ; a10a: 20 f6 9d
loc_a10d:
	lda $79                      ; a10d: a5 79
	cmp.b #$20                   ; a10f: c9 20
	.db $b0, $09                 ; a111: b0 09
loc_a113:
	lsr                          ; a113: 4a
	sta $06fd                    ; a114: 8d fd 06
	inc $79                      ; a117: e6 79
	jmp $a10a                    ; a119: 4c 0a a1

; --- Block at $a11c-$a13b ---
loc_a11c:
	inc $b9                      ; a11c: e6 b9
	inc $b9                      ; a11e: e6 b9
	lda $b9                      ; a120: a5 b9
	clc                          ; a122: 18
	adc.b #$10                   ; a123: 69 10
	sta $ad                      ; a125: 85 ad
	lda $b9                      ; a127: a5 b9
	lsr                          ; a129: 4a
	jsl $15c50b                  ; a12a: 22 0b c5 15
loc_a12e:
	inc $79                      ; a12e: e6 79
	lda $79                      ; a130: a5 79
	cmp.b #$30                   ; a132: c9 30
	.db $d0, $d4                 ; a134: d0 d4
loc_a136:
	lda $06c3                    ; a136: ad c3 06
	.db $d0, $01                 ; a139: d0 01
loc_a13b:
	rts                          ; a13b: 60

; --- Block at $a13c-$a144 ---
loc_a13c:
	stz $06c3                    ; a13c: 9c c3 06
	lda $1700                    ; a13f: ad 00 17
	.db $f0, $03                 ; a142: f0 03
loc_a144:
	jmp $a195                    ; a144: 4c 95 a1

; --- Block at $a147-$a194 ---
loc_a147:
	ldx $1706                    ; a147: ae 06 17
	stx $1708                    ; a14a: 8e 08 17
	jsr $a1e9                    ; a14d: 20 e9 a1
loc_a150:
	ldx.w #$ff98                 ; a150: a2 98 ff
	stx $5a                      ; a153: 86 5a
	jsr $a313                    ; a155: 20 13 a3
loc_a158:
	jsr $a247                    ; a158: 20 47 a2
loc_a15b:
	ldx.w #$0198                 ; a15b: a2 98 01
	stx $5a                      ; a15e: 86 5a
	jsr $a313                    ; a160: 20 13 a3
loc_a163:
	jsr $a2d1                    ; a163: 20 d1 a2
loc_a166:
	lda.b #$02                   ; a166: a9 02
	sta $1700                    ; a168: 8d 00 17
	sta $1727                    ; a16b: 8d 27 17
	lda.b #$01                   ; a16e: a9 01
	sta $1701                    ; a170: 8d 01 17
	ldx $170c                    ; a173: ae 0c 17
	stx $1706                    ; a176: 8e 06 17
	jsr $8574                    ; a179: 20 74 85
loc_a17c:
	lda.b #$10                   ; a17c: a9 10
	jsl $15c50b                  ; a17e: 22 0b c5 15
loc_a182:
	lda.b #$81                   ; a182: a9 81
	sta $4200                    ; a184: 8d 00 42 ; NMITIMEN
	lda.b #$30                   ; a187: a9 30
	sta $ad                      ; a189: 85 ad
	jsr $a219                    ; a18b: 20 19 a2
loc_a18e:
	ldx.w #$0000                 ; a18e: a2 00 00
	stx $172c                    ; a191: 8e 2c 17
	rts                          ; a194: 60

; --- Block at $a195-$a1e8 ---
loc_a195:
	ldx $1706                    ; a195: ae 06 17
	stx $170c                    ; a198: 8e 0c 17
	jsr $a1e9                    ; a19b: 20 e9 a1
loc_a19e:
	ldx.w #$0198                 ; a19e: a2 98 01
	stx $5a                      ; a1a1: 86 5a
	jsr $a324                    ; a1a3: 20 24 a3
loc_a1a6:
	jsr $a247                    ; a1a6: 20 47 a2
loc_a1a9:
	ldx.w #$ff98                 ; a1a9: a2 98 ff
	stx $5a                      ; a1ac: 86 5a
	jsr $a324                    ; a1ae: 20 24 a3
loc_a1b1:
	jsr $a2d1                    ; a1b1: 20 d1 a2
loc_a1b4:
	lda.b #$80                   ; a1b4: a9 80
	sta $2100                    ; a1b6: 8d 00 21 ; INIDISP
	stz $4200                    ; a1b9: 9c 00 42 ; NMITIMEN
	lda.b #$00                   ; a1bc: a9 00
	sta $1700                    ; a1be: 8d 00 17
	sta $1701                    ; a1c1: 8d 01 17
	sta $1727                    ; a1c4: 8d 27 17
	ldx $1708                    ; a1c7: ae 08 17
	stx $1706                    ; a1ca: 8e 06 17
	jsr $8502                    ; a1cd: 20 02 85
loc_a1d0:
	lda.b #$10                   ; a1d0: a9 10
	jsl $15c50b                  ; a1d2: 22 0b c5 15
loc_a1d6:
	lda.b #$81                   ; a1d6: a9 81
	sta $4200                    ; a1d8: 8d 00 42 ; NMITIMEN
	lda.b #$30                   ; a1db: a9 30
	sta $ad                      ; a1dd: 85 ad
	jsr $a219                    ; a1df: 20 19 a2
loc_a1e2:
	ldx.w #$0000                 ; a1e2: a2 00 00
	stx $172c                    ; a1e5: 8e 2c 17
	rts                          ; a1e8: 60

; --- Block at $a1e9-$a218 ---
loc_a1e9:
	jsr $a232                    ; a1e9: 20 32 a2
loc_a1ec:
	lda.b #$80                   ; a1ec: a9 80
	sta $2100                    ; a1ee: 8d 00 21 ; INIDISP
	stz $4200                    ; a1f1: 9c 00 42 ; NMITIMEN
	stz $420c                    ; a1f4: 9c 0c 42 ; HDMAEN
	lda.b #$32                   ; a1f7: a9 32
	sta $76                      ; a1f9: 85 76
	ldx.w #$0000                 ; a1fb: a2 00 00
	stx $47                      ; a1fe: 86 47
	ldx.w #RESET                 ; a200: a2 00 80
	stx $45                      ; a203: 86 45
	jsl $15cab7                  ; a205: 22 b7 ca 15
loc_a209:
	lda.b #$02                   ; a209: a9 02
	sta $1700                    ; a20b: 8d 00 17
	jsl $15b181                  ; a20e: 22 81 b1 15
loc_a212:
	jsr $a335                    ; a212: 20 35 a3
loc_a215:
	jsr $a38e                    ; a215: 20 8e a3
loc_a218:
	rts                          ; a218: 60

; --- Block at $a219-$a231 ---
loc_a219:
	stz $79                      ; a219: 64 79
	lda.b #$04                   ; a21b: a9 04
	sta $a1                      ; a21d: 85 a1
	jsr $a2fc                    ; a21f: 20 fc a2
loc_a222:
	jsr $92a2                    ; a222: 20 a2 92
loc_a225:
	jsr $8f1e                    ; a225: 20 1e 8f
loc_a228:
	jsr $a309                    ; a228: 20 09 a3
loc_a22b:
	inc $79                      ; a22b: e6 79
	cmp.b #$28                   ; a22d: c9 28
	.db $d0, $ee                 ; a22f: d0 ee
loc_a231:
	rts                          ; a231: 60

; --- Block at $a232-$a246 ---
loc_a232:
	lda.b #$28                   ; a232: a9 28
	sta $79                      ; a234: 85 79
	jsr $a2fc                    ; a236: 20 fc a2
loc_a239:
	jsr $92a2                    ; a239: 20 a2 92
loc_a23c:
	jsr $8f1e                    ; a23c: 20 1e 8f
loc_a23f:
	jsr $a309                    ; a23f: 20 09 a3
loc_a242:
	dec $79                      ; a242: c6 79
	.db $d0, $f0                 ; a244: d0 f0
loc_a246:
	rts                          ; a246: 60

; --- Block at $a247-$a2d0 ---
loc_a247:
	jsr $a360                    ; a247: 20 60 a3
loc_a24a:
	ldx.w #$ff98                 ; a24a: a2 98 ff
	stx $5c                      ; a24d: 86 5c
	stz $70                      ; a24f: 64 70
	stz $71                      ; a251: 64 71
	stz $72                      ; a253: 64 72
	stz $73                      ; a255: 64 73
	lda.b #$81                   ; a257: a9 81
	sta $4200                    ; a259: 8d 00 42 ; NMITIMEN
	lda.b #$0f                   ; a25c: a9 0f
	sta $2100                    ; a25e: 8d 00 21 ; INIDISP
	lda.b #$00                   ; a261: a9 00
	sta $79                      ; a263: 85 79
	jsr $8f1e                    ; a265: 20 1e 8f
loc_a268:
	stz $420c                    ; a268: 9c 0c 42 ; HDMAEN
	lda $79                      ; a26b: a5 79
	lsr                          ; a26d: 4a
	lsr                          ; a26e: 4a
	clc                          ; a26f: 18
	adc.b #$09                   ; a270: 69 09
	sta $6e                      ; a272: 85 6e
	stz $6f                      ; a274: 64 6f
	jsr $8ee6                    ; a276: 20 e6 8e
loc_a279:
	lda $79                      ; a279: a5 79
	and.b #$07                   ; a27b: 29 07
	.db $d0, $0d                 ; a27d: d0 0d
loc_a27f:
	lda $5c                      ; a27f: a5 5c
	sec                          ; a281: 38
	sbc.b #$01                   ; a282: e9 01
	sta $5c                      ; a284: 85 5c
	lda $5d                      ; a286: a5 5d
	sbc.b #$00                   ; a288: e9 00
	sta $5d                      ; a28a: 85 5d
loc_a28c:
	jsr $a309                    ; a28c: 20 09 a3
loc_a28f:
	jsr $a360                    ; a28f: 20 60 a3
loc_a292:
	inc $79                      ; a292: e6 79
	lda $79                      ; a294: a5 79
	cmp.b #$60                   ; a296: c9 60
	.db $d0, $cb                 ; a298: d0 cb
loc_a29a:
	lda.b #$5f                   ; a29a: a9 5f
	sta $79                      ; a29c: 85 79
	jsr $8f1e                    ; a29e: 20 1e 8f
loc_a2a1:
	stz $420c                    ; a2a1: 9c 0c 42 ; HDMAEN
	lda $79                      ; a2a4: a5 79
	lsr                          ; a2a6: 4a
	lsr                          ; a2a7: 4a
	clc                          ; a2a8: 18
	adc.b #$09                   ; a2a9: 69 09
	sta $6e                      ; a2ab: 85 6e
	stz $6f                      ; a2ad: 64 6f
	jsr $8ee6                    ; a2af: 20 e6 8e
loc_a2b2:
	lda $79                      ; a2b2: a5 79
	and.b #$07                   ; a2b4: 29 07
	.db $d0, $0d                 ; a2b6: d0 0d
loc_a2b8:
	lda $5c                      ; a2b8: a5 5c
	sec                          ; a2ba: 38
	sbc.b #$01                   ; a2bb: e9 01
	sta $5c                      ; a2bd: 85 5c
	lda $5d                      ; a2bf: a5 5d
	sbc.b #$00                   ; a2c1: e9 00
	sta $5d                      ; a2c3: 85 5d
loc_a2c5:
	jsr $a360                    ; a2c5: 20 60 a3
loc_a2c8:
	dec $79                      ; a2c8: c6 79
	lda $79                      ; a2ca: a5 79
	cmp.b #$ff                   ; a2cc: c9 ff
	.db $d0, $ce                 ; a2ce: d0 ce
loc_a2d0:
	rts                          ; a2d0: 60

; --- Block at $a2d1-$a2fb ---
loc_a2d1:
	ldx.w #$ff98                 ; a2d1: a2 98 ff
	stx $5c                      ; a2d4: 86 5c
	lda.b #$df                   ; a2d6: a9 df
	sta $79                      ; a2d8: 85 79
	jsr $8f1e                    ; a2da: 20 1e 8f
loc_a2dd:
	stz $420c                    ; a2dd: 9c 0c 42 ; HDMAEN
	lda $79                      ; a2e0: a5 79
	sta $6e                      ; a2e2: 85 6e
	stz $6f                      ; a2e4: 64 6f
	asl $6e                      ; a2e6: 06 6e
	rol $6f                      ; a2e8: 26 6f
	jsr $8ee6                    ; a2ea: 20 e6 8e
loc_a2ed:
	jsr $a309                    ; a2ed: 20 09 a3
loc_a2f0:
	jsr $a360                    ; a2f0: 20 60 a3
loc_a2f3:
	dec $79                      ; a2f3: c6 79
	lda $79                      ; a2f5: a5 79
	cmp.b #$ff                   ; a2f7: c9 ff
	.db $d0, $df                 ; a2f9: d0 df
loc_a2fb:
	rts                          ; a2fb: 60

; --- Block at $a2fc-$a308 ---
loc_a2fc:
	lda.b #$28                   ; a2fc: a9 28
	sec                          ; a2fe: 38
	sbc $79                      ; a2ff: e5 79
	tax                          ; a301: aa
	lda $14faf6,x                ; a302: bf f6 fa 14
	sta $b9                      ; a306: 85 b9
	rts                          ; a308: 60

; --- Block at $a309-$a312 ---
loc_a309:
	lda $79                      ; a309: a5 79
	cmp.b #$10                   ; a30b: c9 10
	.db $b0, $03                 ; a30d: b0 03
loc_a30f:
	sta $2100                    ; a30f: 8d 00 21 ; INIDISP
loc_a312:
	rts                          ; a312: 60

; --- Block at $a313-$a323 ---
loc_a313:
	ldx.w #$0000                 ; a313: a2 00 00
	lda $14fae6,x                ; a316: bf e6 fa 14
	sta $0300,x                  ; a31a: 9d 00 03
	inx                          ; a31d: e8
	cpx.w #$0010                 ; a31e: e0 10 00
	.db $d0, $f3                 ; a321: d0 f3
loc_a323:
	rts                          ; a323: 60

; --- Block at $a324-$a334 ---
loc_a324:
	ldx.w #$0000                 ; a324: a2 00 00
	lda $14fad6,x                ; a327: bf d6 fa 14
	sta $0300,x                  ; a32b: 9d 00 03
	inx                          ; a32e: e8
	cpx.w #$0010                 ; a32f: e0 10 00
	.db $d0, $f3                 ; a332: d0 f3
loc_a334:
	rts                          ; a334: 60

; --- Block at $a335-$a35f ---
loc_a335:
	ldx.w #$4000                 ; a335: a2 00 40
	stx $47                      ; a338: 86 47
	ldx.w #$0100                 ; a33a: a2 00 01
	stx $45                      ; a33d: 86 45
	lda.b #$1e                   ; a33f: a9 1e
	sta $3c                      ; a341: 85 3c
	ldx.w #$fee0                 ; a343: a2 e0 fe
	stx $3d                      ; a346: 86 3d
	jsl $15ca8b                  ; a348: 22 8b ca 15
loc_a34c:
	ldx.w #$0000                 ; a34c: a2 00 00
	lda $1effe0,x                ; a34f: bf e0 ff 1e
	sta $0cdb,x                  ; a353: 9d db 0c
	sta $0ddb,x                  ; a356: 9d db 0d
	inx                          ; a359: e8
	cpx.w #$0020                 ; a35a: e0 20 00
	.db $d0, $f0                 ; a35d: d0 f0
loc_a35f:
	rts                          ; a35f: 60

; --- Block at $a360-$a38d ---
loc_a360:
	ldy.w #$0010                 ; a360: a0 10 00
	ldx.w #$0000                 ; a363: a2 00 00
	jsr $c170                    ; a366: 20 70 c1
loc_a369:
	sta $0300,y                  ; a369: 99 00 03
	jsr $c170                    ; a36c: 20 70 c1
loc_a36f:
	sta $0301,y                  ; a36f: 99 01 03
	lda.b #$2f                   ; a372: a9 2f
	sta $0302,y                  ; a374: 99 02 03
	jsr $c170                    ; a377: 20 70 c1
loc_a37a:
	and.b #$07                   ; a37a: 29 07
	asl                          ; a37c: 0a
	ora.b #$01                   ; a37d: 09 01
	sta $0303,y                  ; a37f: 99 03 03
	inx                          ; a382: e8
	inx                          ; a383: e8
	iny                          ; a384: c8
	iny                          ; a385: c8
	iny                          ; a386: c8
	iny                          ; a387: c8
	cpy.w #$0200                 ; a388: c0 00 02
	.db $d0, $d9                 ; a38b: d0 d9
loc_a38d:
	rts                          ; a38d: 60

; --- Block at $a38e-$a3ec ---
loc_a38e:
	lda.b #$70                   ; a38e: a9 70
	sta $07                      ; a390: 85 07
	stz $2115                    ; a392: 9c 15 21 ; VMAIN
	ldx.w #$0000                 ; a395: a2 00 00
	stx $3d                      ; a398: 86 3d
	ldx $3d                      ; a39a: a6 3d
	stx $2116                    ; a39c: 8e 16 21 ; VMADDL
	lda $07                      ; a39f: a5 07
	sta $2118                    ; a3a1: 8d 18 21 ; VMDATAL
	inc $07                      ; a3a4: e6 07
	lda $07                      ; a3a6: a5 07
	and.b #$03                   ; a3a8: 29 03
	.db $d0, $f3                 ; a3aa: d0 f3
loc_a3ac:
	lda $3d                      ; a3ac: a5 3d
	clc                          ; a3ae: 18
	adc.b #$80                   ; a3af: 69 80
	sta $3d                      ; a3b1: 85 3d
	lda $3e                      ; a3b3: a5 3e
	adc.b #$00                   ; a3b5: 69 00
	sta $3e                      ; a3b7: 85 3e
	cmp.b #$02                   ; a3b9: c9 02
	.db $d0, $dd                 ; a3bb: d0 dd
loc_a3bd:
	lda.b #$80                   ; a3bd: a9 80
	sta $07                      ; a3bf: 85 07
	stz $2115                    ; a3c1: 9c 15 21 ; VMAIN
	ldx.w #$0040                 ; a3c4: a2 40 00
	stx $3d                      ; a3c7: 86 3d
	ldx $3d                      ; a3c9: a6 3d
	stx $2116                    ; a3cb: 8e 16 21 ; VMADDL
	lda $07                      ; a3ce: a5 07
	sta $2118                    ; a3d0: 8d 18 21 ; VMDATAL
	inc $07                      ; a3d3: e6 07
	lda $07                      ; a3d5: a5 07
	and.b #$03                   ; a3d7: 29 03
	.db $d0, $f3                 ; a3d9: d0 f3
loc_a3db:
	lda $3d                      ; a3db: a5 3d
	clc                          ; a3dd: 18
	adc.b #$80                   ; a3de: 69 80
	sta $3d                      ; a3e0: 85 3d
	lda $3e                      ; a3e2: a5 3e
	adc.b #$00                   ; a3e4: 69 00
	sta $3e                      ; a3e6: 85 3e
	cmp.b #$02                   ; a3e8: c9 02
	.db $d0, $dd                 ; a3ea: d0 dd
loc_a3ec:
	rts                          ; a3ec: 60

; --- Block at $a3ed-$a3fb ---
loc_a3ed:
	lda $06d0                    ; a3ed: ad d0 06
	.db $d0, $20                 ; a3f0: d0 20
loc_a3f2:
	lda.b #$36                   ; a3f2: a9 36
	jsr $f165                    ; a3f4: 20 65 f1
loc_a3f7:
	cmp.b #$00                   ; a3f7: c9 00
	.db $d0, $03                 ; a3f9: d0 03
loc_a3fb:
	jmp $a43c                    ; a3fb: 4c 3c a4

; --- Block at $a3fe-$a411 ---
loc_a3fe:
	lda $171f                    ; a3fe: ad 1f 17
	cmp $171b                    ; a401: cd 1b 17
	.db $d0, $36                 ; a404: d0 36
loc_a406:
	ldx $1719                    ; a406: ae 19 17
	cpx $1706                    ; a409: ec 06 17
	.db $d0, $2e                 ; a40c: d0 2e
loc_a40e:
	jsr $a50f                    ; a40e: 20 0f a5
loc_a411:
	rts                          ; a411: 60

; --- Block at $a412-$a43b ---
loc_a412:
	lda $1723                    ; a412: ad 23 17
	cmp $1701                    ; a415: cd 01 17
	.db $d0, $08                 ; a418: d0 08
loc_a41a:
	ldx $1706                    ; a41a: ae 06 17
	cpx $1721                    ; a41d: ec 21 17
	.db $f0, $19                 ; a420: f0 19
loc_a422:
	lda $1727                    ; a422: ad 27 17
	cmp $1701                    ; a425: cd 01 17
	.db $d0, $08                 ; a428: d0 08
loc_a42a:
	ldx $1706                    ; a42a: ae 06 17
	cpx $1725                    ; a42d: ec 25 17
	.db $f0, $09                 ; a430: f0 09
loc_a432:
	lda $a1                      ; a432: a5 a1
	and.b #$10                   ; a434: 29 10
	.db $f0, $03                 ; a436: f0 03
loc_a438:
	jsr $a4d4                    ; a438: 20 d4 a4
loc_a43b:
	rts                          ; a43b: 60

; --- Block at $a43c-$a451 ---
loc_a43c:
	lda.b #$30                   ; a43c: a9 30
	sta $79                      ; a43e: 85 79
	stz $7a                      ; a440: 64 7a
	jsr $9df6                    ; a442: 20 f6 9d
loc_a445:
	lda $79                      ; a445: a5 79
	cmp.b #$21                   ; a447: c9 21
	.db $b0, $65                 ; a449: b0 65
loc_a44b:
	lda $a2                      ; a44b: a5 a2
	and.b #$10                   ; a44d: 29 10
	.db $d0, $03                 ; a44f: d0 03
loc_a451:
	jmp $a037                    ; a451: 4c 37 a0

; --- Block at $a454-$a45c ---
loc_a454:
	ldx $1719                    ; a454: ae 19 17
	cpx $1706                    ; a457: ec 06 17
	.db $d0, $03                 ; a45a: d0 03
loc_a45c:
	jmp $a037                    ; a45c: 4c 37 a0

; --- Block at $a45f-$a46f ---
loc_a45f:
	lda $1723                    ; a45f: ad 23 17
	cmp $171f                    ; a462: cd 1f 17
	.db $d0, $0b                 ; a465: d0 0b
loc_a467:
	ldx $1721                    ; a467: ae 21 17
	cpx $1706                    ; a46a: ec 06 17
	.db $d0, $03                 ; a46d: d0 03
loc_a46f:
	jmp $a037                    ; a46f: 4c 37 a0

; --- Block at $a472-$a482 ---
loc_a472:
	lda $1727                    ; a472: ad 27 17
	cmp $171f                    ; a475: cd 1f 17
	.db $d0, $0b                 ; a478: d0 0b
loc_a47a:
	ldx $1725                    ; a47a: ae 25 17
	cpx $1706                    ; a47d: ec 06 17
	.db $d0, $03                 ; a480: d0 03
loc_a482:
	jmp $a037                    ; a482: 4c 37 a0

; --- Block at $a485-$a4af ---
loc_a485:
	lda $79                      ; a485: a5 79
	lsr                          ; a487: 4a
	sta $06fd                    ; a488: 8d fd 06
	dec $79                      ; a48b: c6 79
	dec $79                      ; a48d: c6 79
	.db $d0, $b1                 ; a48f: d0 b1
loc_a491:
	stz $1704                    ; a491: 9c 04 17
	stz $ac                      ; a494: 64 ac
	stz $7b                      ; a496: 64 7b
	lda.b #$02                   ; a498: a9 02
	sta $1705                    ; a49a: 8d 05 17
	ldx $1706                    ; a49d: ae 06 17
	stx $171d                    ; a4a0: 8e 1d 17
	lda $1701                    ; a4a3: ad 01 17
	sta $171f                    ; a4a6: 8d 1f 17
	jsr $8b3f                    ; a4a9: 20 3f 8b
loc_a4ac:
	inc $1a02                    ; a4ac: ee 02 1a
	rts                          ; a4af: 60

; --- Block at $a4b0-$a4c1 ---
loc_a4b0:
	dec $b7                      ; a4b0: c6 b7
	lda $b7                      ; a4b2: a5 b7
	clc                          ; a4b4: 18
	adc.b #$10                   ; a4b5: 69 10
	sta $ad                      ; a4b7: 85 ad
	lda $b7                      ; a4b9: a5 b7
	jsl $15c50b                  ; a4bb: 22 0b c5 15
loc_a4bf:
	dec $79                      ; a4bf: c6 79
	jmp $a442                    ; a4c1: 4c 42 a4

; --- Block at $a4d4-$a50e ---
loc_a4d4:
	lda.b #$03                   ; a4d4: a9 03
	sta $1705                    ; a4d6: 8d 05 17
	stz $7a                      ; a4d9: 64 7a
	stz $79                      ; a4db: 64 79
	jsr $8f59                    ; a4dd: 20 59 8f
loc_a4e0:
	jsr $92a2                    ; a4e0: 20 a2 92
loc_a4e3:
	lda $79                      ; a4e3: a5 79
	lsr                          ; a4e5: 4a
	lsr                          ; a4e6: 4a
	tax                          ; a4e7: aa
	lda $a4c4,x                  ; a4e8: bd c4 a4
	sta $06f8                    ; a4eb: 8d f8 06
	jsr $8f2d                    ; a4ee: 20 2d 8f
loc_a4f1:
	inc $79                      ; a4f1: e6 79
	lda $79                      ; a4f3: a5 79
	cmp.b #$20                   ; a4f5: c9 20
	.db $d0, $0f                 ; a4f7: d0 0f
loc_a4f9:
	stz $06d0                    ; a4f9: 9c d0 06
	lda $1701                    ; a4fc: ad 01 17
	sta $171b                    ; a4ff: 8d 1b 17
	ldx $1706                    ; a502: ae 06 17
	stx $1719                    ; a505: 8e 19 17
loc_a508:
	lda $79                      ; a508: a5 79
	cmp.b #$40                   ; a50a: c9 40
	.db $d0, $cf                 ; a50c: d0 cf
loc_a50e:
	rts                          ; a50e: 60

; --- Block at $a50f-$a53b ---
loc_a50f:
	lda.b #$03                   ; a50f: a9 03
	sta $1705                    ; a511: 8d 05 17
	stz $7a                      ; a514: 64 7a
	stz $79                      ; a516: 64 79
	jsr $8f59                    ; a518: 20 59 8f
loc_a51b:
	jsr $92a2                    ; a51b: 20 a2 92
loc_a51e:
	lda $79                      ; a51e: a5 79
	lsr                          ; a520: 4a
	lsr                          ; a521: 4a
	tax                          ; a522: aa
	lda $a4c4,x                  ; a523: bd c4 a4
	sta $06f8                    ; a526: 8d f8 06
	jsr $8f2d                    ; a529: 20 2d 8f
loc_a52c:
	inc $79                      ; a52c: e6 79
	lda $79                      ; a52e: a5 79
	cmp.b #$20                   ; a530: c9 20
	.db $d0, $03                 ; a532: d0 03
loc_a534:
	inc $06d0                    ; a534: ee d0 06
loc_a537:
	cmp.b #$40                   ; a537: c9 40
	.db $d0, $dd                 ; a539: d0 dd
loc_a53b:
	rts                          ; a53b: 60

; --- Block at $a53c-$a551 ---
loc_a53c:
	lda.b #$30                   ; a53c: a9 30
	sta $79                      ; a53e: 85 79
	stz $7a                      ; a540: 64 7a
	jsr $9df6                    ; a542: 20 f6 9d
loc_a545:
	lda $79                      ; a545: a5 79
	cmp.b #$21                   ; a547: c9 21
	.db $b0, $65                 ; a549: b0 65
loc_a54b:
	lda $a2                      ; a54b: a5 a2
	and.b #$10                   ; a54d: 29 10
	.db $d0, $03                 ; a54f: d0 03
loc_a551:
	jmp $a09f                    ; a551: 4c 9f a0

; --- Block at $a554-$a55c ---
loc_a554:
	ldx $1719                    ; a554: ae 19 17
	cpx $1706                    ; a557: ec 06 17
	.db $d0, $03                 ; a55a: d0 03
loc_a55c:
	jmp $a09f                    ; a55c: 4c 9f a0

; --- Block at $a55f-$a56f ---
loc_a55f:
	lda $171f                    ; a55f: ad 1f 17
	cmp $1723                    ; a562: cd 23 17
	.db $d0, $0b                 ; a565: d0 0b
loc_a567:
	ldx $171d                    ; a567: ae 1d 17
	cpx $1706                    ; a56a: ec 06 17
	.db $d0, $03                 ; a56d: d0 03
loc_a56f:
	jmp $a09f                    ; a56f: 4c 9f a0

; --- Block at $a572-$a582 ---
loc_a572:
	lda $1727                    ; a572: ad 27 17
	cmp $1723                    ; a575: cd 23 17
	.db $d0, $0b                 ; a578: d0 0b
loc_a57a:
	ldx $1725                    ; a57a: ae 25 17
	cpx $1706                    ; a57d: ec 06 17
	.db $d0, $03                 ; a580: d0 03
loc_a582:
	jmp $a09f                    ; a582: 4c 9f a0

; --- Block at $a585-$a5af ---
loc_a585:
	lda $79                      ; a585: a5 79
	lsr                          ; a587: 4a
	sta $06fd                    ; a588: 8d fd 06
	dec $79                      ; a58b: c6 79
	dec $79                      ; a58d: c6 79
	.db $d0, $b1                 ; a58f: d0 b1
loc_a591:
	stz $1704                    ; a591: 9c 04 17
	stz $ac                      ; a594: 64 ac
	stz $7b                      ; a596: 64 7b
	lda.b #$02                   ; a598: a9 02
	sta $1705                    ; a59a: 8d 05 17
	ldx $1706                    ; a59d: ae 06 17
	stx $1721                    ; a5a0: 8e 21 17
	lda $1701                    ; a5a3: ad 01 17
	sta $1723                    ; a5a6: 8d 23 17
	jsr $8b3f                    ; a5a9: 20 3f 8b
loc_a5ac:
	inc $1a02                    ; a5ac: ee 02 1a
	rts                          ; a5af: 60

; --- Block at $a5b0-$a5c1 ---
loc_a5b0:
	dec $b8                      ; a5b0: c6 b8
	lda $b8                      ; a5b2: a5 b8
	clc                          ; a5b4: 18
	adc.b #$10                   ; a5b5: 69 10
	sta $ad                      ; a5b7: 85 ad
	lda $b8                      ; a5b9: a5 b8
	jsl $15c50b                  ; a5bb: 22 0b c5 15
loc_a5bf:
	dec $79                      ; a5bf: c6 79
	jmp $a542                    ; a5c1: 4c 42 a5

; --- Block at $a5c4-$a5d9 ---
loc_a5c4:
	lda.b #$2f                   ; a5c4: a9 2f
	sta $79                      ; a5c6: 85 79
	stz $7a                      ; a5c8: 64 7a
	jsr $9df6                    ; a5ca: 20 f6 9d
loc_a5cd:
	lda $79                      ; a5cd: a5 79
	cmp.b #$20                   ; a5cf: c9 20
	.db $b0, $69                 ; a5d1: b0 69
loc_a5d3:
	lda $a2                      ; a5d3: a5 a2
	and.b #$10                   ; a5d5: 29 10
	.db $d0, $03                 ; a5d7: d0 03
loc_a5d9:
	jmp $a106                    ; a5d9: 4c 06 a1

; --- Block at $a5dc-$a5e4 ---
loc_a5dc:
	ldx $1719                    ; a5dc: ae 19 17
	cpx $1706                    ; a5df: ec 06 17
	.db $d0, $03                 ; a5e2: d0 03
loc_a5e4:
	jmp $a106                    ; a5e4: 4c 06 a1

; --- Block at $a5e7-$a5f7 ---
loc_a5e7:
	lda $171f                    ; a5e7: ad 1f 17
	cmp $1727                    ; a5ea: cd 27 17
	.db $d0, $0b                 ; a5ed: d0 0b
loc_a5ef:
	ldx $171d                    ; a5ef: ae 1d 17
	cpx $1706                    ; a5f2: ec 06 17
	.db $d0, $03                 ; a5f5: d0 03
loc_a5f7:
	jmp $a106                    ; a5f7: 4c 06 a1

; --- Block at $a5fa-$a60a ---
loc_a5fa:
	lda $1723                    ; a5fa: ad 23 17
	cmp $1727                    ; a5fd: cd 27 17
	.db $d0, $0b                 ; a600: d0 0b
loc_a602:
	ldx $1721                    ; a602: ae 21 17
	cpx $1706                    ; a605: ec 06 17
	.db $d0, $03                 ; a608: d0 03
loc_a60a:
	jmp $a106                    ; a60a: 4c 06 a1

; --- Block at $a60d-$a63b ---
loc_a60d:
	lda $79                      ; a60d: a5 79
	lsr                          ; a60f: 4a
	sta $06fd                    ; a610: 8d fd 06
	dec $79                      ; a613: c6 79
	.db $d0, $b3                 ; a615: d0 b3
loc_a617:
	stz $1704                    ; a617: 9c 04 17
	stz $ac                      ; a61a: 64 ac
	stz $7b                      ; a61c: 64 7b
	lda.b #$02                   ; a61e: a9 02
	sta $1705                    ; a620: 8d 05 17
	lda $1700                    ; a623: ad 00 17
	sta $1727                    ; a626: 8d 27 17
	ldx $1706                    ; a629: ae 06 17
	stx $1725                    ; a62c: 8e 25 17
	lda $b1                      ; a62f: a5 b1
	.db $d0, $05                 ; a631: d0 05
loc_a633:
	lda.b #$52                   ; a633: a9 52
	jsr $efa5                    ; a635: 20 a5 ef
loc_a638:
	inc $1a02                    ; a638: ee 02 1a
	rts                          ; a63b: 60

; --- Block at $a63c-$a650 ---
loc_a63c:
	dec $b9                      ; a63c: c6 b9
	dec $b9                      ; a63e: c6 b9
	lda $b9                      ; a640: a5 b9
	clc                          ; a642: 18
	adc.b #$10                   ; a643: 69 10
	sta $ad                      ; a645: 85 ad
	lda $b9                      ; a647: a5 b9
	lsr                          ; a649: 4a
	jsl $15c50b                  ; a64a: 22 0b c5 15
loc_a64e:
	dec $79                      ; a64e: c6 79
	jmp $a5ca                    ; a650: 4c ca a5

; --- Block at $a653-$a657 ---
loc_a653:
	lda $ab                      ; a653: a5 ab
	.db $d0, $03                 ; a655: d0 03
loc_a657:
	jmp $a722                    ; a657: 4c 22 a7

; --- Block at $a65a-$a69b ---
loc_a65a:
	lda $c1                      ; a65a: a5 c1
	.db $f0, $08                 ; a65c: f0 08
loc_a65e:
	lda $7b                      ; a65e: a5 7b
	and.b #$08                   ; a660: 29 08
	.db $d0, $02                 ; a662: d0 02
loc_a664:
	inc $c4                      ; a664: e6 c4
loc_a666:
	inc $7b                      ; a666: e6 7b
	lda $ac                      ; a668: a5 ac
	tax                          ; a66a: aa
	lda $ab                      ; a66b: a5 ab
	cmp.b #$01                   ; a66d: c9 01
	.db $d0, $2d                 ; a66f: d0 2d
loc_a671:
	lda $5c                      ; a671: a5 5c
	sta $06                      ; a673: 85 06
	sec                          ; a675: 38
	sbc $aaf4,x                  ; a676: fd f4 aa
	sta $5c                      ; a679: 85 5c
	lda $5d                      ; a67b: a5 5d
	sbc.b #$00                   ; a67d: e9 00
	and.b #$07                   ; a67f: 29 07
	sta $5d                      ; a681: 85 5d
	lda $06                      ; a683: a5 06
	and.b #$0f                   ; a685: 29 0f
	sec                          ; a687: 38
	sbc $aaf4,x                  ; a688: fd f4 aa
	.db $b0, $39                 ; a68b: b0 39
loc_a68d:
	lda $06fa                    ; a68d: ad fa 06
	tax                          ; a690: aa
	lda $1707                    ; a691: ad 07 17
	dec                          ; a694: 3a
	and $aaed,x                  ; a695: 3d ed aa
	sta $1707                    ; a698: 8d 07 17
	jmp $a722                    ; a69b: 4c 22 a7

; --- Block at $a69e-$a6c6 ---
loc_a69e:
	cmp.b #$02                   ; a69e: c9 02
	.db $d0, $27                 ; a6a0: d0 27
loc_a6a2:
	lda $5a                      ; a6a2: a5 5a
	clc                          ; a6a4: 18
	adc $aaf4,x                  ; a6a5: 7d f4 aa
	sta $5a                      ; a6a8: 85 5a
	lda $5b                      ; a6aa: a5 5b
	adc.b #$00                   ; a6ac: 69 00
	and.b #$07                   ; a6ae: 29 07
	sta $5b                      ; a6b0: 85 5b
	lda $5a                      ; a6b2: a5 5a
	and.b #$0f                   ; a6b4: 29 0f
	.db $d0, $6a                 ; a6b6: d0 6a
loc_a6b8:
	lda $06fa                    ; a6b8: ad fa 06
	tax                          ; a6bb: aa
	lda $1706                    ; a6bc: ad 06 17
	inc                          ; a6bf: 1a
	and $aaed,x                  ; a6c0: 3d ed aa
	sta $1706                    ; a6c3: 8d 06 17
loc_a6c6:
	jmp $a722                    ; a6c6: 4c 22 a7

; --- Block at $a6c9-$a6f1 ---
loc_a6c9:
	cmp.b #$03                   ; a6c9: c9 03
	.db $d0, $27                 ; a6cb: d0 27
loc_a6cd:
	lda $5c                      ; a6cd: a5 5c
	clc                          ; a6cf: 18
	adc $aaf4,x                  ; a6d0: 7d f4 aa
	sta $5c                      ; a6d3: 85 5c
	lda $5d                      ; a6d5: a5 5d
	adc.b #$00                   ; a6d7: 69 00
	and.b #$07                   ; a6d9: 29 07
	sta $5d                      ; a6db: 85 5d
	lda $5c                      ; a6dd: a5 5c
	and.b #$0f                   ; a6df: 29 0f
	.db $d0, $3f                 ; a6e1: d0 3f
loc_a6e3:
	lda $06fa                    ; a6e3: ad fa 06
	tax                          ; a6e6: aa
	lda $1707                    ; a6e7: ad 07 17
	inc                          ; a6ea: 1a
	and $aaed,x                  ; a6eb: 3d ed aa
	sta $1707                    ; a6ee: 8d 07 17
	jmp $a722                    ; a6f1: 4c 22 a7

; --- Block at $a6f4-$a722 ---
loc_a6f4:
	cmp.b #$04                   ; a6f4: c9 04
	.db $d0, $2a                 ; a6f6: d0 2a
loc_a6f8:
	lda $5a                      ; a6f8: a5 5a
	sta $06                      ; a6fa: 85 06
	sec                          ; a6fc: 38
	sbc $aaf4,x                  ; a6fd: fd f4 aa
	sta $5a                      ; a700: 85 5a
	lda $5b                      ; a702: a5 5b
	sbc.b #$00                   ; a704: e9 00
	and.b #$07                   ; a706: 29 07
	sta $5b                      ; a708: 85 5b
	lda $06                      ; a70a: a5 06
	and.b #$0f                   ; a70c: 29 0f
	sec                          ; a70e: 38
	sbc $aaf4,x                  ; a70f: fd f4 aa
	.db $b0, $0e                 ; a712: b0 0e
loc_a714:
	lda $06fa                    ; a714: ad fa 06
	tax                          ; a717: aa
	lda $1706                    ; a718: ad 06 17
	dec                          ; a71b: 3a
	and $aaed,x                  ; a71c: 3d ed aa
	sta $1706                    ; a71f: 8d 06 17

; --- Block at $a722-$a722 ---
loc_a722:
	rts                          ; a722: 60

; --- Block at $a723-$a727 ---
loc_a723:
	lda $d5                      ; a723: a5 d5
	.db $d0, $03                 ; a725: d0 03
loc_a727:
	jmp $a821                    ; a727: 4c 21 a8

; --- Block at $a72a-$a7c8 ---
loc_a72a:
	stz $c4                      ; a72a: 64 c4
	jsr $9d4e                    ; a72c: 20 4e 9d
loc_a72f:
	lda $b1                      ; a72f: a5 b1
	.db $f0, $08                 ; a731: f0 08
loc_a733:
	lda $04                      ; a733: a5 04
	sta $02                      ; a735: 85 02
	lda $05                      ; a737: a5 05
	sta $03                      ; a739: 85 03
loc_a73b:
	lda $a1                      ; a73b: a5 a1
	and.b #$04                   ; a73d: 29 04
	.db $d0, $06                 ; a73f: d0 06
loc_a741:
	lda $a1                      ; a741: a5 a1
	and.b #$03                   ; a743: 29 03
	sta $d2                      ; a745: 85 d2
loc_a747:
	jsr $a8f5                    ; a747: 20 f5 a8
loc_a74a:
	lda $a1                      ; a74a: a5 a1
	and.b #$03                   ; a74c: 29 03
	clc                          ; a74e: 18
	adc.b #$04                   ; a74f: 69 04
	sta $0a                      ; a751: 85 0a
	lda $03                      ; a753: a5 03
	and.b #$01                   ; a755: 29 01
	.db $f0, $15                 ; a757: f0 15
loc_a759:
	lda $cf                      ; a759: a5 cf
	.db $d0, $05                 ; a75b: d0 05
loc_a75d:
	lda.b #$01                   ; a75d: a9 01
	sta $1705                    ; a75f: 8d 05 17
loc_a762:
	lda.b #$02                   ; a762: a9 02
	sta $0709                    ; a764: 8d 09 07
	jsr $a83a                    ; a767: 20 3a a8
loc_a76a:
	cmp.b #$00                   ; a76a: c9 00
	.db $f0, $5d                 ; a76c: f0 5d
loc_a76e:
	lda $03                      ; a76e: a5 03
	and.b #$02                   ; a770: 29 02
	.db $f0, $15                 ; a772: f0 15
loc_a774:
	lda $cf                      ; a774: a5 cf
	.db $d0, $05                 ; a776: d0 05
loc_a778:
	lda.b #$03                   ; a778: a9 03
	sta $1705                    ; a77a: 8d 05 17
loc_a77d:
	lda.b #$04                   ; a77d: a9 04
	sta $0709                    ; a77f: 8d 09 07
	jsr $a83a                    ; a782: 20 3a a8
loc_a785:
	cmp.b #$00                   ; a785: c9 00
	.db $f0, $42                 ; a787: f0 42
loc_a789:
	lda $03                      ; a789: a5 03
	and.b #$04                   ; a78b: 29 04
	.db $f0, $15                 ; a78d: f0 15
loc_a78f:
	lda $cf                      ; a78f: a5 cf
	.db $d0, $05                 ; a791: d0 05
loc_a793:
	lda.b #$02                   ; a793: a9 02
	sta $1705                    ; a795: 8d 05 17
loc_a798:
	lda.b #$03                   ; a798: a9 03
	sta $0709                    ; a79a: 8d 09 07
	jsr $a83a                    ; a79d: 20 3a a8
loc_a7a0:
	cmp.b #$00                   ; a7a0: c9 00
	.db $f0, $27                 ; a7a2: f0 27
loc_a7a4:
	lda $03                      ; a7a4: a5 03
	and.b #$08                   ; a7a6: 29 08
	.db $f0, $15                 ; a7a8: f0 15
loc_a7aa:
	lda $cf                      ; a7aa: a5 cf
	.db $d0, $05                 ; a7ac: d0 05
loc_a7ae:
	lda.b #$00                   ; a7ae: a9 00
	sta $1705                    ; a7b0: 8d 05 17
loc_a7b3:
	lda.b #$01                   ; a7b3: a9 01
	sta $0709                    ; a7b5: 8d 09 07
	jsr $a83a                    ; a7b8: 20 3a a8
loc_a7bb:
	cmp.b #$00                   ; a7bb: c9 00
	.db $f0, $0c                 ; a7bd: f0 0c
loc_a7bf:
	stz $ab                      ; a7bf: 64 ab
	jsr $a8ba                    ; a7c1: 20 ba a8
loc_a7c4:
	lda $b1                      ; a7c4: a5 b1
	.db $d0, $19                 ; a7c6: d0 19
loc_a7c8:
	jmp $a821                    ; a7c8: 4c 21 a8

; --- Block at $a7cb-$a7e1 ---
loc_a7cb:
	lda $e0                      ; a7cb: a5 e0
	.db $d0, $15                 ; a7cd: d0 15
loc_a7cf:
	lda $0709                    ; a7cf: ad 09 07
	sta $ab                      ; a7d2: 85 ab
	jsr $a8ba                    ; a7d4: 20 ba a8
loc_a7d7:
	lda $ea                      ; a7d7: a5 ea
	.db $d0, $02                 ; a7d9: d0 02
loc_a7db:
	inc $ea                      ; a7db: e6 ea
loc_a7dd:
	lda $b1                      ; a7dd: a5 b1
	.db $f0, $03                 ; a7df: f0 03
loc_a7e1:
	jmp $a818                    ; a7e1: 4c 18 a8

; --- Block at $a7e4-$a801 ---
loc_a7e4:
	lda $ab                      ; a7e4: a5 ab
	lsr                          ; a7e6: 4a
	.db $90, $2f                 ; a7e7: 90 2f
loc_a7e9:
	cmp.b #$00                   ; a7e9: c9 00
	.db $d0, $17                 ; a7eb: d0 17
loc_a7ed:
	lda $070c                    ; a7ed: ad 0c 07
	cmp.b #$70                   ; a7f0: c9 70
	.db $f0, $04                 ; a7f2: f0 04
loc_a7f4:
	cmp.b #$71                   ; a7f4: c9 71
	.db $d0, $20                 ; a7f6: d0 20
loc_a7f8:
	lda $1707                    ; a7f8: ad 07 17
	dec                          ; a7fb: 3a
	sta $0e                      ; a7fc: 85 0e
	jsr $a822                    ; a7fe: 20 22 a8
loc_a801:
	jmp $a818                    ; a801: 4c 18 a8

; --- Block at $a804-$a818 ---
loc_a804:
	lda $070e                    ; a804: ad 0e 07
	cmp.b #$70                   ; a807: c9 70
	.db $f0, $04                 ; a809: f0 04
loc_a80b:
	cmp.b #$71                   ; a80b: c9 71
	.db $d0, $09                 ; a80d: d0 09
loc_a80f:
	lda $1707                    ; a80f: ad 07 17
	inc                          ; a812: 1a
	sta $0e                      ; a813: 85 0e
	jsr $a822                    ; a815: 20 22 a8

; --- Block at $a818-$a821 ---
loc_a818:
	jsr $9595                    ; a818: 20 95 95
loc_a81b:
	jsr $95e1                    ; a81b: 20 e1 95
loc_a81e:
	jsr $f4d7                    ; a81e: 20 d7 f4

; --- Block at $a821-$a821 ---
loc_a821:
	rts                          ; a821: 60

; --- Block at $a822-$a839 ---
loc_a822:
	lda $1706                    ; a822: ad 06 17
	sta $0c                      ; a825: 85 0c
	jsr $a911                    ; a827: 20 11 a9
loc_a82a:
	stx $06fe                    ; a82a: 8e fe 06
	jsr $a942                    ; a82d: 20 42 a9
loc_a830:
	lda.b #$45                   ; a830: a9 45
	jsr $8b7b                    ; a832: 20 7b 8b
loc_a835:
	lda.b #$01                   ; a835: a9 01
	sta $d4                      ; a837: 85 d4
	rts                          ; a839: 60

; --- Block at $a83a-$a840 ---
loc_a83a:
	lda $b1                      ; a83a: a5 b1
	.db $f0, $03                 ; a83c: f0 03
loc_a83e:
	lda.b #$00                   ; a83e: a9 00
	rts                          ; a840: 60

; --- Block at $a841-$a85e ---
loc_a841:
	jsr $a876                    ; a841: 20 76 a8
loc_a844:
	cmp.b #$00                   ; a844: c9 00
	.db $d0, $2b                 ; a846: d0 2b
loc_a848:
	lda $0709                    ; a848: ad 09 07
	asl                          ; a84b: 0a
	tay                          ; a84c: a8
	lda $a1                      ; a84d: a5 a1
	and.b #$04                   ; a84f: 29 04
	.db $f0, $0c                 ; a851: f0 0c
loc_a853:
	lda $06a1,y                  ; a853: b9 a1 06
	and.b #$03                   ; a856: 29 03
	and $d2                      ; a858: 25 d2
	.db $f0, $0d                 ; a85a: f0 0d
loc_a85c:
	lda.b #$00                   ; a85c: a9 00
	rts                          ; a85e: 60

; --- Block at $a85f-$a868 ---
loc_a85f:
	lda $06a1,y                  ; a85f: b9 a1 06
	and $0a                      ; a862: 25 0a
	.db $f0, $0d                 ; a864: f0 0d
loc_a866:
	lda.b #$00                   ; a866: a9 00
	rts                          ; a868: 60

; --- Block at $a869-$a872 ---
loc_a869:
	lda $06a1,y                  ; a869: b9 a1 06
	and.b #$04                   ; a86c: 29 04
	.db $f0, $03                 ; a86e: f0 03
loc_a870:
	lda.b #$00                   ; a870: a9 00
	rts                          ; a872: 60

; --- Block at $a873-$a875 ---
loc_a873:
	lda.b #$01                   ; a873: a9 01
	rts                          ; a875: 60

; --- Block at $a876-$a88a ---
loc_a876:
	lda $0709                    ; a876: ad 09 07
	tay                          ; a879: a8
	asl                          ; a87a: 0a
	tax                          ; a87b: aa
	lda $a1,x                    ; a87c: b5 a1
	and.b #$04                   ; a87e: 29 04
	.db $f0, $09                 ; a880: f0 09
loc_a882:
	lda $d2                      ; a882: a5 d2
	cmp.b #$01                   ; a884: c9 01
	.db $f0, $03                 ; a886: f0 03
loc_a888:
	lda.b #$00                   ; a888: a9 00
	rts                          ; a88a: 60

; --- Block at $a88b-$a8b3 ---
loc_a88b:
	phx                          ; a88b: da
	lda $1706                    ; a88c: ad 06 17
	clc                          ; a88f: 18
	adc $a8eb,y                  ; a890: 79 eb a8
	sta $0c                      ; a893: 85 0c
	cmp.b #$20                   ; a895: c9 20
	.db $b0, $1d                 ; a897: b0 1d
loc_a899:
	lda $1707                    ; a899: ad 07 17
	clc                          ; a89c: 18
	adc $a8f0,y                  ; a89d: 79 f0 a8
	sta $0e                      ; a8a0: 85 0e
	cmp.b #$20                   ; a8a2: c9 20
	.db $b0, $10                 ; a8a4: b0 10
loc_a8a6:
	jsr $c09d                    ; a8a6: 20 9d c0
loc_a8a9:
	ldx $3d                      ; a8a9: a6 3d
	lda $7f4c00,x                ; a8ab: bf 00 4c 7f
	.db $10, $05                 ; a8af: 10 05
loc_a8b1:
	sta $ee                      ; a8b1: 85 ee
	jmp $a8b8                    ; a8b3: 4c b8 a8

; --- Block at $a8b6-$a8b9 ---
loc_a8b6:
	lda.b #$00                   ; a8b6: a9 00
loc_a8b8:
	plx                          ; a8b8: fa
	rts                          ; a8b9: 60

; --- Block at $a8ba-$a8ea ---
loc_a8ba:
	lda $ab                      ; a8ba: a5 ab
	asl                          ; a8bc: 0a
	tay                          ; a8bd: a8
	lda $06a1,y                  ; a8be: b9 a1 06
	and.b #$04                   ; a8c1: 29 04
	.db $f0, $09                 ; a8c3: f0 09
loc_a8c5:
	lda $06a1,y                  ; a8c5: b9 a1 06
	and.b #$03                   ; a8c8: 29 03
	and $d2                      ; a8ca: 25 d2
	.db $f0, $1c                 ; a8cc: f0 1c
loc_a8ce:
	lda $ab                      ; a8ce: a5 ab
	tay                          ; a8d0: a8
	lda $1706                    ; a8d1: ad 06 17
	clc                          ; a8d4: 18
	adc $a8eb,y                  ; a8d5: 79 eb a8
	sta $0c                      ; a8d8: 85 0c
	lda $1707                    ; a8da: ad 07 17
	clc                          ; a8dd: 18
	adc $a8f0,y                  ; a8de: 79 f0 a8
	sta $0e                      ; a8e1: 85 0e
	lda.b #$ff                   ; a8e3: a9 ff
	sta $ae                      ; a8e5: 85 ae
	jsr $c08d                    ; a8e7: 20 8d c0
loc_a8ea:
	rts                          ; a8ea: 60

; --- Block at $a8f5-$a910 ---
loc_a8f5:
	lda $a1                      ; a8f5: a5 a1
	and.b #$04                   ; a8f7: 29 04
	.db $f0, $08                 ; a8f9: f0 08
loc_a8fb:
	lda $a1                      ; a8fb: a5 a1
	and.b #$03                   ; a8fd: 29 03
	and $d2                      ; a8ff: 25 d2
	.db $f0, $0d                 ; a901: f0 0d
loc_a903:
	lda $1706                    ; a903: ad 06 17
	sta $0c                      ; a906: 85 0c
	lda $1707                    ; a908: ad 07 17
	sta $0e                      ; a90b: 85 0e
	jsr $c045                    ; a90d: 20 45 c0
loc_a910:
	rts                          ; a910: 60

; --- Block at $a911-$a941 ---
loc_a911:
	lda $0e                      ; a911: a5 0e
	and.b #$0f                   ; a913: 29 0f
	sta $19                      ; a915: 85 19
	stz $18                      ; a917: 64 18
	lsr $19                      ; a919: 46 19
	ror $18                      ; a91b: 66 18
	lsr $19                      ; a91d: 46 19
	ror $18                      ; a91f: 66 18
	lda $0c                      ; a921: a5 0c
	and.b #$0f                   ; a923: 29 0f
	asl                          ; a925: 0a
	clc                          ; a926: 18
	adc $18                      ; a927: 65 18
	sta $18                      ; a929: 85 18
	lda $19                      ; a92b: a5 19
	clc                          ; a92d: 18
	adc.b #$18                   ; a92e: 69 18
	sta $19                      ; a930: 85 19
	lda $0c                      ; a932: a5 0c
	and.b #$10                   ; a934: 29 10
	.db $f0, $07                 ; a936: f0 07
loc_a938:
	lda $19                      ; a938: a5 19
	clc                          ; a93a: 18
	adc.b #$04                   ; a93b: 69 04
	sta $19                      ; a93d: 85 19
loc_a93f:
	ldx $18                      ; a93f: a6 18
	rts                          ; a941: 60

; --- Block at $a942-$a965 ---
loc_a942:
	rep #$20                     ; a942: c2 20
	lda $7f48de                  ; a944: af de 48 7f
	sta $0700                    ; a948: 8d 00 07
	lda $7f49de                  ; a94b: af de 49 7f
	sta $0702                    ; a94f: 8d 02 07
	lda $7f4ade                  ; a952: af de 4a 7f
	sta $0704                    ; a956: 8d 04 07
	lda $7f4bde                  ; a959: af de 4b 7f
	sta $0706                    ; a95d: 8d 06 07
	lda.w #$0000                 ; a960: a9 00 00
	sep #$20                     ; a963: e2 20
	rts                          ; a965: 60

; --- Block at $a966-$a96a ---
loc_a966:
	lda $d5                      ; a966: a5 d5
	.db $d0, $01                 ; a968: d0 01
loc_a96a:
	rts                          ; a96a: 60

; --- Block at $a96b-$a998 ---
loc_a96b:
	jsr $9d4e                    ; a96b: 20 4e 9d
loc_a96e:
	lda $b1                      ; a96e: a5 b1
	.db $f0, $08                 ; a970: f0 08
loc_a972:
	lda $04                      ; a972: a5 04
	sta $02                      ; a974: 85 02
	lda $05                      ; a976: a5 05
	sta $03                      ; a978: 85 03
loc_a97a:
	lda $a1                      ; a97a: a5 a1
	and.b #$41                   ; a97c: 29 41
	sta $d2                      ; a97e: 85 d2
	lda $1715                    ; a980: ad 15 17
	cmp.b #$02                   ; a983: c9 02
	.db $d0, $40                 ; a985: d0 40
loc_a987:
	lda $1706                    ; a987: ad 06 17
	sec                          ; a98a: 38
	sbc $1716                    ; a98b: ed 16 17
	.db $f0, $14                 ; a98e: f0 14
loc_a990:
	.db $10, $09                 ; a990: 10 09
loc_a992:
	lda.b #$01                   ; a992: a9 01
	sta $1705                    ; a994: 8d 05 17
	inc                          ; a997: 1a
	jmp $aa4d                    ; a998: 4c 4d aa

; --- Block at $a99b-$a9a1 ---
loc_a99b:
	lda.b #$03                   ; a99b: a9 03
	sta $1705                    ; a99d: 8d 05 17
	inc                          ; a9a0: 1a
	jmp $aa4d                    ; a9a1: 4c 4d aa

; --- Block at $a9a4-$a9b5 ---
loc_a9a4:
	lda $1707                    ; a9a4: ad 07 17
	sec                          ; a9a7: 38
	sbc $1717                    ; a9a8: ed 17 17
	.db $f0, $14                 ; a9ab: f0 14
loc_a9ad:
	.db $10, $09                 ; a9ad: 10 09
loc_a9af:
	lda.b #$02                   ; a9af: a9 02
	sta $1705                    ; a9b1: 8d 05 17
	inc                          ; a9b4: 1a
	jmp $aa4d                    ; a9b5: 4c 4d aa

; --- Block at $a9b8-$a9be ---
loc_a9b8:
	lda.b #$00                   ; a9b8: a9 00
	sta $1705                    ; a9ba: 8d 05 17
	inc                          ; a9bd: 1a
	jmp $aa4d                    ; a9be: 4c 4d aa

; --- Block at $a9c1-$a9c7 ---
loc_a9c1:
	lda.b #$80                   ; a9c1: a9 80
	sta $02                      ; a9c3: 85 02
	stz $54                      ; a9c5: 64 54

; --- Block at $a9c7-$a9d6 ---
loc_a9c7:
	jsr $9c1d                    ; a9c7: 20 1d 9c
loc_a9ca:
	lda $03                      ; a9ca: a5 03
	and.b #$0f                   ; a9cc: 29 0f
	.db $f0, $77                 ; a9ce: f0 77
loc_a9d0:
	and.b #$01                   ; a9d0: 29 01
	.db $f0, $05                 ; a9d2: f0 05
loc_a9d4:
	lda.b #$01                   ; a9d4: a9 01
	jmp $a9f1                    ; a9d6: 4c f1 a9

; --- Block at $a9d9-$a9e1 ---
loc_a9d9:
	lda $03                      ; a9d9: a5 03
	and.b #$02                   ; a9db: 29 02
	.db $f0, $05                 ; a9dd: f0 05
loc_a9df:
	lda.b #$03                   ; a9df: a9 03
	jmp $a9f1                    ; a9e1: 4c f1 a9

; --- Block at $a9e4-$a9ec ---
loc_a9e4:
	lda $03                      ; a9e4: a5 03
	and.b #$04                   ; a9e6: 29 04
	.db $f0, $05                 ; a9e8: f0 05
loc_a9ea:
	lda.b #$02                   ; a9ea: a9 02
	jmp $a9f1                    ; a9ec: 4c f1 a9

; --- Block at $a9ef-$a9f1 ---
loc_a9ef:
	lda.b #$00                   ; a9ef: a9 00

; --- Block at $a9f1-$aa15 ---
loc_a9f1:
	sta $1705                    ; a9f1: 8d 05 17
	inc                          ; a9f4: 1a
	sta $0709                    ; a9f5: 8d 09 07
	asl                          ; a9f8: 0a
	tax                          ; a9f9: aa
	lda $b1                      ; a9fa: a5 b1
	.db $d0, $4c                 ; a9fc: d0 4c
loc_a9fe:
	lda $1700                    ; a9fe: ad 00 17
	cmp.b #$01                   ; aa01: c9 01
	.db $d0, $23                 ; aa03: d0 23
loc_aa05:
	lda $1704                    ; aa05: ad 04 17
	cmp.b #$05                   ; aa08: c9 05
	.db $d0, $0c                 ; aa0a: d0 0c
loc_aa0c:
	lda $1287                    ; aa0c: ad 87 12
	and.b #$02                   ; aa0f: 29 02
	.db $f0, $15                 ; aa11: f0 15
loc_aa13:
	lda.b #$01                   ; aa13: a9 01
	jmp $aa2d                    ; aa15: 4c 2d aa

; --- Block at $aa18-$aa25 ---
loc_aa18:
	cmp.b #$04                   ; aa18: c9 04
	.db $d0, $0c                 ; aa1a: d0 0c
loc_aa1c:
	lda $1281                    ; aa1c: ad 81 12
	and.b #$04                   ; aa1f: 29 04
	.db $f0, $05                 ; aa21: f0 05
loc_aa23:
	lda.b #$01                   ; aa23: a9 01
	jmp $aa2d                    ; aa25: 4c 2d aa

; --- Block at $aa28-$aa35 ---
loc_aa28:
	lda $1704                    ; aa28: ad 04 17
	.db $f0, $0b                 ; aa2b: f0 0b
loc_aa2d:
	tay                          ; aa2d: a8
	lda $a1,x                    ; aa2e: b5 a1
	and $aae6,y                  ; aa30: 39 e6 aa
	.db $f0, $12                 ; aa33: f0 12
loc_aa35:
	jmp $aa40                    ; aa35: 4c 40 aa

; --- Block at $aa38-$aa47 ---
loc_aa38:
	lda $a1,x                    ; aa38: b5 a1
	and.b #$41                   ; aa3a: 29 41
	and $d2                      ; aa3c: 25 d2
	.db $f0, $07                 ; aa3e: f0 07
loc_aa40:
	jsr $aa5f                    ; aa40: 20 5f aa
loc_aa43:
	lda $0a                      ; aa43: a5 0a
	.db $f0, $03                 ; aa45: f0 03

; --- Block at $aa47-$aa49 ---
loc_aa47:
	stz $ab                      ; aa47: 64 ab
	rts                          ; aa49: 60

; --- Block at $aa4a-$aa4d ---
loc_aa4a:
	lda $0709                    ; aa4a: ad 09 07

; --- Block at $aa4d-$aa5e ---
loc_aa4d:
	sta $ab                      ; aa4d: 85 ab
	jsr $9595                    ; aa4f: 20 95 95
loc_aa52:
	lda $1707                    ; aa52: ad 07 17
	sta $070a                    ; aa55: 8d 0a 07
	jsr $fa98                    ; aa58: 20 98 fa
loc_aa5b:
	jsr $f3ab                    ; aa5b: 20 ab f3
loc_aa5e:
	rts                          ; aa5e: 60

; --- Block at $aa5f-$aa7c ---
loc_aa5f:
	lda $0709                    ; aa5f: ad 09 07
	tax                          ; aa62: aa
	lda $1706                    ; aa63: ad 06 17
	clc                          ; aa66: 18
	adc $a8eb,x                  ; aa67: 7d eb a8
	sta $0c                      ; aa6a: 85 0c
	lda $1707                    ; aa6c: ad 07 17
	clc                          ; aa6f: 18
	adc $a8f0,x                  ; aa70: 7d f0 a8
	sta $0e                      ; aa73: 85 0e
	stz $0a                      ; aa75: 64 0a
	lda $1704                    ; aa77: ad 04 17
	.db $d0, $01                 ; aa7a: d0 01
loc_aa7c:
	rts                          ; aa7c: 60

; --- Block at $aa7d-$aa91 ---
loc_aa7d:
	cmp.b #$01                   ; aa7d: c9 01
	.db $d0, $11                 ; aa7f: d0 11
loc_aa81:
	lda $0c                      ; aa81: a5 0c
	cmp $1719                    ; aa83: cd 19 17
	.db $d0, $0a                 ; aa86: d0 0a
loc_aa88:
	lda $0e                      ; aa88: a5 0e
	cmp $171a                    ; aa8a: cd 1a 17
	.db $d0, $03                 ; aa8d: d0 03
loc_aa8f:
	inc $0a                      ; aa8f: e6 0a
	rts                          ; aa91: 60

; --- Block at $aa92-$aab2 ---
loc_aa92:
	lda $1704                    ; aa92: ad 04 17
	cmp.b #$02                   ; aa95: c9 02
	.db $f0, $4c                 ; aa97: f0 4c
loc_aa99:
	cmp.b #$04                   ; aa99: c9 04
	.db $b0, $48                 ; aa9b: b0 48
loc_aa9d:
	lda $1715                    ; aa9d: ad 15 17
	.db $d0, $11                 ; aaa0: d0 11
loc_aaa2:
	lda $0c                      ; aaa2: a5 0c
	cmp $1713                    ; aaa4: cd 13 17
	.db $d0, $0a                 ; aaa7: d0 0a
loc_aaa9:
	lda $0e                      ; aaa9: a5 0e
	cmp $1714                    ; aaab: cd 14 17
	.db $d0, $03                 ; aaae: d0 03
loc_aab0:
	inc $0a                      ; aab0: e6 0a
	rts                          ; aab2: 60

; --- Block at $aab3-$aac3 ---
loc_aab3:
	lda $0c                      ; aab3: a5 0c
	cmp $171d                    ; aab5: cd 1d 17
	.db $d0, $0a                 ; aab8: d0 0a
loc_aaba:
	lda $0e                      ; aaba: a5 0e
	cmp $171e                    ; aabc: cd 1e 17
	.db $d0, $03                 ; aabf: d0 03
loc_aac1:
	inc $0a                      ; aac1: e6 0a
	rts                          ; aac3: 60

; --- Block at $aac4-$aad4 ---
loc_aac4:
	lda $0c                      ; aac4: a5 0c
	cmp $1721                    ; aac6: cd 21 17
	.db $d0, $0a                 ; aac9: d0 0a
loc_aacb:
	lda $0e                      ; aacb: a5 0e
	cmp $1722                    ; aacd: cd 22 17
	.db $d0, $03                 ; aad0: d0 03
loc_aad2:
	inc $0a                      ; aad2: e6 0a
	rts                          ; aad4: 60

; --- Block at $aad5-$aae5 ---
loc_aad5:
	lda $0c                      ; aad5: a5 0c
	cmp $1725                    ; aad7: cd 25 17
	.db $d0, $09                 ; aada: d0 09
loc_aadc:
	lda $0e                      ; aadc: a5 0e
	cmp $1726                    ; aade: cd 26 17
	.db $d0, $02                 ; aae1: d0 02
loc_aae3:
	inc $0a                      ; aae3: e6 0a

; --- Block at $aae5-$aae5 ---
loc_aae5:
	rts                          ; aae5: 60

; --- Block at $b0d1-$b11a ---
loc_b0d1:
	lda $cc                      ; b0d1: a5 cc
	.db $d0, $fc                 ; b0d3: d0 fc
loc_b0d5:
	lda.b #$01                   ; b0d5: a9 01
	sta $ea                      ; b0d7: 85 ea
	jsr $8f0f                    ; b0d9: 20 0f 8f
loc_b0dc:
	lda $ea                      ; b0dc: a5 ea
	cmp.b #$02                   ; b0de: c9 02
	.db $d0, $f7                 ; b0e0: d0 f7
loc_b0e2:
	ldx.w #$0000                 ; b0e2: a2 00 00
	stx $08f4                    ; b0e5: 8e f4 08
	stz $de                      ; b0e8: 64 de
	lda.b #$ec                   ; b0ea: a9 ec
	sta $bb                      ; b0ec: 85 bb
	stz $ba                      ; b0ee: 64 ba
	jsr $b21f                    ; b0f0: 20 1f b2
loc_b0f3:
	lda.b #$01                   ; b0f3: a9 01
	sta $df                      ; b0f5: 85 df
	sta $eb                      ; b0f7: 85 eb
	jsr $8f0f                    ; b0f9: 20 0f 8f
loc_b0fc:
	lda $7f                      ; b0fc: a5 7f
	cmp.b #$02                   ; b0fe: c9 02
	.db $d0, $fa                 ; b100: d0 fa
loc_b102:
	inc $df                      ; b102: e6 df
	lda $df                      ; b104: a5 df
	cmp.b #$08                   ; b106: c9 08
	.db $d0, $ef                 ; b108: d0 ef
loc_b10a:
	ldx $08f4                    ; b10a: ae f4 08
	.db $f0, $0e                 ; b10d: f0 0e
loc_b10f:
	cpx $08f6                    ; b10f: ec f6 08
	.db $d0, $fb                 ; b112: d0 fb
loc_b114:
	ldx.w #$0000                 ; b114: a2 00 00
	stx $08f4                    ; b117: 8e f4 08
	jmp $b12d                    ; b11a: 4c 2d b1

; --- Block at $b11d-$b149 ---
loc_b11d:
	lda $de                      ; b11d: a5 de
	cmp.b #$02                   ; b11f: c9 02
	.db $f0, $40                 ; b121: f0 40
loc_b123:
	lda $cb                      ; b123: a5 cb
	.db $d0, $06                 ; b125: d0 06
loc_b127:
	jsr $8bde                    ; b127: 20 de 8b
loc_b12a:
	jsr $8be7                    ; b12a: 20 e7 8b
loc_b12d:
	lda $de                      ; b12d: a5 de
	.db $d0, $32                 ; b12f: d0 32
loc_b131:
	jsr $b21f                    ; b131: 20 1f b2
loc_b134:
	lda.b #$10                   ; b134: a9 10
	sta $07                      ; b136: 85 07
	jsr $8f0f                    ; b138: 20 0f 8f
loc_b13b:
	lda $cb                      ; b13b: a5 cb
	.db $d0, $0d                 ; b13d: d0 0d
loc_b13f:
	inc $bb                      ; b13f: e6 bb
	inc $bb                      ; b141: e6 bb
	inc $bb                      ; b143: e6 bb
	inc $bb                      ; b145: e6 bb
	dec $07                      ; b147: c6 07
	jmp $b15c                    ; b149: 4c 5c b1

; --- Block at $b14c-$b160 ---
loc_b14c:
	lda $7a                      ; b14c: a5 7a
	and.b #$07                   ; b14e: 29 07
	.db $d0, $0a                 ; b150: d0 0a
loc_b152:
	inc $bb                      ; b152: e6 bb
	lda $7a                      ; b154: a5 7a
	and.b #$1f                   ; b156: 29 1f
	.db $d0, $02                 ; b158: d0 02
loc_b15a:
	dec $07                      ; b15a: c6 07
loc_b15c:
	lda $07                      ; b15c: a5 07
	.db $d0, $d8                 ; b15e: d0 d8
loc_b160:
	jmp $b10a                    ; b160: 4c 0a b1

; --- Block at $b163-$b163 ---
loc_b163:
	rts                          ; b163: 60

; --- Block at $b164-$b17e ---
loc_b164:
	jsr $8f0f                    ; b164: 20 0f 8f
loc_b167:
	lda $7f                      ; b167: a5 7f
	cmp.b #$02                   ; b169: c9 02
	.db $d0, $fa                 ; b16b: d0 fa
loc_b16d:
	dec $df                      ; b16d: c6 df
	lda $df                      ; b16f: a5 df
	cmp.b #$00                   ; b171: c9 00
	.db $d0, $ef                 ; b173: d0 ef
loc_b175:
	lda.b #$01                   ; b175: a9 01
	sta $ec                      ; b177: 85 ec
	jsr $8f0f                    ; b179: 20 0f 8f
loc_b17c:
	stz $df                      ; b17c: 64 df
	rts                          ; b17e: 60

; --- Block at $b1c8-$b1e0 ---
loc_b1c8:
	jsr $b213                    ; b1c8: 20 13 b2
loc_b1cb:
	lda $108000,x                ; b1cb: bf 00 80 10
	sta $3d                      ; b1cf: 85 3d
	lda $108001,x                ; b1d1: bf 01 80 10
	sta $3e                      ; b1d5: 85 3e
	ldx $3d                      ; b1d7: a6 3d
	stx $0772                    ; b1d9: 8e 72 07
	lda.b #$01                   ; b1dc: a9 01
	sta $dd                      ; b1de: 85 dd
	rts                          ; b1e0: 60

; --- Block at $b213-$b21e ---
loc_b213:
	lda $b2                      ; b213: a5 b2
	stz $3e                      ; b215: 64 3e
	asl                          ; b217: 0a
	rol $3e                      ; b218: 26 3e
	sta $3d                      ; b21a: 85 3d
	ldx $3d                      ; b21c: a6 3d
	rts                          ; b21e: 60

; --- Block at $b21f-$b22b ---
loc_b21f:
	ldy.w #$0000                 ; b21f: a0 00 00
	sty $3d                      ; b222: 84 3d
	jsr $b2be                    ; b224: 20 be b2
loc_b227:
	cmp.b #$00                   ; b227: c9 00
	.db $d0, $03                 ; b229: d0 03
loc_b22b:
	jmp $b41f                    ; b22b: 4c 1f b4

; --- Block at $b22e-$b232 ---
loc_b22e:
	cmp.b #$01                   ; b22e: c9 01
	.db $d0, $03                 ; b230: d0 03
loc_b232:
	jmp $b3fe                    ; b232: 4c fe b3

; --- Block at $b235-$b239 ---
loc_b235:
	cmp.b #$02                   ; b235: c9 02
	.db $d0, $03                 ; b237: d0 03
loc_b239:
	jmp $b3c4                    ; b239: 4c c4 b3

; --- Block at $b23c-$b240 ---
loc_b23c:
	cmp.b #$03                   ; b23c: c9 03
	.db $d0, $03                 ; b23e: d0 03
loc_b240:
	jmp $b2f6                    ; b240: 4c f6 b2

; --- Block at $b243-$b247 ---
loc_b243:
	cmp.b #$04                   ; b243: c9 04
	.db $d0, $03                 ; b245: d0 03
loc_b247:
	jmp $b308                    ; b247: 4c 08 b3

; --- Block at $b24a-$b24e ---
loc_b24a:
	cmp.b #$05                   ; b24a: c9 05
	.db $d0, $03                 ; b24c: d0 03
loc_b24e:
	jmp $b3a6                    ; b24e: 4c a6 b3

; --- Block at $b251-$b255 ---
loc_b251:
	cmp.b #$06                   ; b251: c9 06
	.db $d0, $03                 ; b253: d0 03
loc_b255:
	jmp $b431                    ; b255: 4c 31 b4

; --- Block at $b258-$b25c ---
loc_b258:
	cmp.b #$07                   ; b258: c9 07
	.db $d0, $03                 ; b25a: d0 03
loc_b25c:
	jmp $b338                    ; b25c: 4c 38 b3

; --- Block at $b25f-$b263 ---
loc_b25f:
	cmp.b #$08                   ; b25f: c9 08
	.db $d0, $03                 ; b261: d0 03
loc_b263:
	jmp $b370                    ; b263: 4c 70 b3

; --- Block at $b266-$b26a ---
loc_b266:
	cmp.b #$09                   ; b266: c9 09
	.db $d0, $03                 ; b268: d0 03
loc_b26a:
	jmp $b3df                    ; b26a: 4c df b3

; --- Block at $b26d-$b27d ---
loc_b26d:
	cmp.b #$ff                   ; b26d: c9 ff
	.db $f0, $0f                 ; b26f: f0 0f
loc_b271:
	cmp.b #$8a                   ; b271: c9 8a
	.db $90, $0b                 ; b273: 90 0b
loc_b275:
	cmp.b #$c0                   ; b275: c9 c0
	.db $90, $04                 ; b277: 90 04
loc_b279:
	cmp.b #$ca                   ; b279: c9 ca
	.db $90, $03                 ; b27b: 90 03
loc_b27d:
	jmp $b2dc                    ; b27d: 4c dc b2

; --- Block at $b280-$b288 ---
loc_b280:
	sta $0774,y                  ; b280: 99 74 07
	ldy $3d                      ; b283: a4 3d
	iny                          ; b285: c8
	sty $3d                      ; b286: 84 3d

; --- Block at $b288-$b296 ---
loc_b288:
	ldx $0772                    ; b288: ae 72 07
	inx                          ; b28b: e8
	stx $0772                    ; b28c: 8e 72 07
	ldy $3d                      ; b28f: a4 3d
	cpy.w #$0068                 ; b291: c0 68 00
	.db $f0, $03                 ; b294: f0 03
loc_b296:
	jmp $b224                    ; b296: 4c 24 b2

; --- Block at $b299-$b2b6 ---
loc_b299:
	jsr $b2be                    ; b299: 20 be b2
loc_b29c:
	cmp.b #$00                   ; b29c: c9 00
	.db $d0, $04                 ; b29e: d0 04
loc_b2a0:
	lda.b #$01                   ; b2a0: a9 01
	sta $de                      ; b2a2: 85 de
loc_b2a4:
	lda.b #$01                   ; b2a4: a9 01
	sta $ed                      ; b2a6: 85 ed
	ldx.w #$0000                 ; b2a8: a2 00 00
	lda.b #$ff                   ; b2ab: a9 ff
	sta $0844,x                  ; b2ad: 9d 44 08
	inx                          ; b2b0: e8
	cpx.w #$0034                 ; b2b1: e0 34 00
	.db $d0, $f7                 ; b2b4: d0 f7
loc_b2b6:
	rts                          ; b2b6: 60

; --- Block at $b2b7-$b2be ---
loc_b2b7:
	ldx $0772                    ; b2b7: ae 72 07
	inx                          ; b2ba: e8
	stx $0772                    ; b2bb: 8e 72 07

; --- Block at $b2be-$b2c9 ---
loc_b2be:
	ldx $0772                    ; b2be: ae 72 07
	lda $dd                      ; b2c1: a5 dd
	.db $d0, $07                 ; b2c3: d0 07
loc_b2c5:
	lda $118300,x                ; b2c5: bf 00 83 11
	jmp $b2db                    ; b2c9: 4c db b2

; --- Block at $b2cc-$b2d4 ---
loc_b2cc:
	cmp.b #$01                   ; b2cc: c9 01
	.db $d0, $07                 ; b2ce: d0 07
loc_b2d0:
	lda $108400,x                ; b2d0: bf 00 84 10
	jmp $b2db                    ; b2d4: 4c db b2

; --- Block at $b2d7-$b2db ---
loc_b2d7:
	lda $13a700,x                ; b2d7: bf 00 a7 13

; --- Block at $b2db-$b2db ---
loc_b2db:
	rts                          ; b2db: 60

; --- Block at $b2dc-$b2f3 ---
loc_b2dc:
	sec                          ; b2dc: 38
	sbc.b #$80                   ; b2dd: e9 80
	asl                          ; b2df: 0a
	tax                          ; b2e0: aa
	lda $139700,x                ; b2e1: bf 00 97 13
	sta $0774,y                  ; b2e5: 99 74 07
	iny                          ; b2e8: c8
	lda $139701,x                ; b2e9: bf 01 97 13
	sta $0774,y                  ; b2ed: 99 74 07
	iny                          ; b2f0: c8
	sty $3d                      ; b2f1: 84 3d
	jmp $b288                    ; b2f3: 4c 88 b2

; --- Block at $b2f6-$b305 ---
loc_b2f6:
	jsr $b2b7                    ; b2f6: 20 b7 b2
loc_b2f9:
	sta $1e01                    ; b2f9: 8d 01 1e
	lda.b #$01                   ; b2fc: a9 01
	sta $1e00                    ; b2fe: 8d 00 1e
	jsl $048004                  ; b301: 22 04 80 04
loc_b305:
	jmp $b288                    ; b305: 4c 88 b2

; --- Block at $b308-$b330 ---
loc_b308:
	jsr $b2b7                    ; b308: 20 b7 b2
loc_b30b:
	asl                          ; b30b: 0a
	sta $18                      ; b30c: 85 18
	asl                          ; b30e: 0a
	clc                          ; b30f: 18
	adc $18                      ; b310: 65 18
	sta $18                      ; b312: 85 18
	stz $19                      ; b314: 64 19
	ldx $18                      ; b316: a6 18
	ldy $3d                      ; b318: a4 3d
	stz $07                      ; b31a: 64 07
	lda $1500,x                  ; b31c: bd 00 15
	cmp.b #$ff                   ; b31f: c9 ff
	.db $f0, $10                 ; b321: f0 10
loc_b323:
	sta $0774,y                  ; b323: 99 74 07
	iny                          ; b326: c8
	inx                          ; b327: e8
	inc $07                      ; b328: e6 07
	lda $07                      ; b32a: a5 07
	cmp.b #$06                   ; b32c: c9 06
	.db $f0, $03                 ; b32e: f0 03
loc_b330:
	jmp $b31c                    ; b330: 4c 1c b3

; --- Block at $b333-$b335 ---
loc_b333:
	sty $3d                      ; b333: 84 3d
	jmp $b288                    ; b335: 4c 88 b2

; --- Block at $b338-$b36d ---
loc_b338:
	lda $08fb                    ; b338: ad fb 08
	stz $19                      ; b33b: 64 19
	asl                          ; b33d: 0a
	rol $19                      ; b33e: 26 19
	asl                          ; b340: 0a
	rol $19                      ; b341: 26 19
	asl                          ; b343: 0a
	rol $19                      ; b344: 26 19
	clc                          ; b346: 18
	adc $08fb                    ; b347: 6d fb 08
	sta $18                      ; b34a: 85 18
	lda $19                      ; b34c: a5 19
	adc.b #$00                   ; b34e: 69 00
	sta $19                      ; b350: 85 19
	ldx $18                      ; b352: a6 18
	ldy $3d                      ; b354: a4 3d
	lda.b #$09                   ; b356: a9 09
	sta $07                      ; b358: 85 07
	lda $0f8000,x                ; b35a: bf 00 80 0f
	cmp.b #$ff                   ; b35e: c9 ff
	.db $f0, $0b                 ; b360: f0 0b
loc_b362:
	sta $0774,y                  ; b362: 99 74 07
	iny                          ; b365: c8
	sty $3d                      ; b366: 84 3d
	inx                          ; b368: e8
	dec $07                      ; b369: c6 07
	.db $d0, $ed                 ; b36b: d0 ed
loc_b36d:
	jmp $b288                    ; b36d: 4c 88 b2

; --- Block at $b370-$b392 ---
loc_b370:
	lda $08f8                    ; b370: ad f8 08
	sta $30                      ; b373: 85 30
	lda $08f9                    ; b375: ad f9 08
	sta $31                      ; b378: 85 31
	lda $08fa                    ; b37a: ad fa 08
	sta $32                      ; b37d: 85 32
	jsl $15c32a                  ; b37f: 22 2a c3 15
loc_b383:
	ldx.w #$0000                 ; b383: a2 00 00
	lda $36,x                    ; b386: b5 36
	cmp.b #$80                   ; b388: c9 80
	.db $d0, $09                 ; b38a: d0 09
loc_b38c:
	inx                          ; b38c: e8
	cpx.w #$0005                 ; b38d: e0 05 00
	.db $f0, $03                 ; b390: f0 03
loc_b392:
	jmp $b386                    ; b392: 4c 86 b3

; --- Block at $b395-$b3a3 ---
loc_b395:
	lda $36,x                    ; b395: b5 36
	sta $0774,y                  ; b397: 99 74 07
	iny                          ; b39a: c8
	inx                          ; b39b: e8
	cpx.w #$0006                 ; b39c: e0 06 00
	.db $d0, $f4                 ; b39f: d0 f4
loc_b3a1:
	sty $3d                      ; b3a1: 84 3d
	jmp $b288                    ; b3a3: 4c 88 b2

; --- Block at $b3a6-$b3c1 ---
loc_b3a6:
	jsr $b2b7                    ; b3a6: 20 b7 b2
loc_b3a9:
	stz $19                      ; b3a9: 64 19
	asl                          ; b3ab: 0a
	rol $19                      ; b3ac: 26 19
	asl                          ; b3ae: 0a
	rol $19                      ; b3af: 26 19
	asl                          ; b3b1: 0a
	rol $19                      ; b3b2: 26 19
	sta $18                      ; b3b4: 85 18
	ldx $18                      ; b3b6: a6 18
	stx $08f4                    ; b3b8: 8e f4 08
	ldx.w #$0000                 ; b3bb: a2 00 00
	stx $08f6                    ; b3be: 8e f6 08
	jmp $b288                    ; b3c1: 4c 88 b2

; --- Block at $b3c4-$b3dc ---
loc_b3c4:
	jsr $b2b7                    ; b3c4: 20 b7 b2
loc_b3c7:
	sta $07                      ; b3c7: 85 07
	ldy $3d                      ; b3c9: a4 3d
	lda.b #$ff                   ; b3cb: a9 ff
	sta $0774,y                  ; b3cd: 99 74 07
	iny                          ; b3d0: c8
	cpy.w #$0068                 ; b3d1: c0 68 00
	.db $f0, $04                 ; b3d4: f0 04
loc_b3d6:
	dec $07                      ; b3d6: c6 07
	.db $d0, $f3                 ; b3d8: d0 f3
loc_b3da:
	sty $3d                      ; b3da: 84 3d
	jmp $b288                    ; b3dc: 4c 88 b2

; --- Block at $b3df-$b3f6 ---
loc_b3df:
	lda.b #$ff                   ; b3df: a9 ff
	sta $0774,y                  ; b3e1: 99 74 07
	iny                          ; b3e4: c8
	tya                          ; b3e5: 98
	cmp.b #$1a                   ; b3e6: c9 1a
	.db $f0, $0f                 ; b3e8: f0 0f
loc_b3ea:
	cmp.b #$34                   ; b3ea: c9 34
	.db $f0, $0b                 ; b3ec: f0 0b
loc_b3ee:
	cmp.b #$4e                   ; b3ee: c9 4e
	.db $f0, $07                 ; b3f0: f0 07
loc_b3f2:
	cmp.b #$68                   ; b3f2: c9 68
	.db $f0, $03                 ; b3f4: f0 03
loc_b3f6:
	jmp $b3df                    ; b3f6: 4c df b3

; --- Block at $b3f9-$b3fb ---
loc_b3f9:
	sty $3d                      ; b3f9: 84 3d
	jmp $b288                    ; b3fb: 4c 88 b2

; --- Block at $b3fe-$b417 ---
loc_b3fe:
	lda.b #$ff                   ; b3fe: a9 ff
	sta $0774,y                  ; b400: 99 74 07
	tya                          ; b403: 98
	.db $f0, $14                 ; b404: f0 14
loc_b406:
	cmp.b #$1a                   ; b406: c9 1a
	.db $f0, $10                 ; b408: f0 10
loc_b40a:
	cmp.b #$34                   ; b40a: c9 34
	.db $f0, $0c                 ; b40c: f0 0c
loc_b40e:
	cmp.b #$4e                   ; b40e: c9 4e
	.db $f0, $08                 ; b410: f0 08
loc_b412:
	cmp.b #$68                   ; b412: c9 68
	.db $f0, $04                 ; b414: f0 04
loc_b416:
	iny                          ; b416: c8
	jmp $b3fe                    ; b417: 4c fe b3

; --- Block at $b41a-$b41c ---
loc_b41a:
	sty $3d                      ; b41a: 84 3d
	jmp $b288                    ; b41c: 4c 88 b2

; --- Block at $b41f-$b42e ---
loc_b41f:
	lda.b #$ff                   ; b41f: a9 ff
	sta $0774,y                  ; b421: 99 74 07
	iny                          ; b424: c8
	cpy.w #$00d0                 ; b425: c0 d0 00
	.db $d0, $f7                 ; b428: d0 f7
loc_b42a:
	lda.b #$01                   ; b42a: a9 01
	sta $de                      ; b42c: 85 de
	jmp $b299                    ; b42e: 4c 99 b2

; --- Block at $b431-$b440 ---
loc_b431:
	lda.b #$ff                   ; b431: a9 ff
	sta $0774,y                  ; b433: 99 74 07
	iny                          ; b436: c8
	cpy.w #$00d0                 ; b437: c0 d0 00
	.db $d0, $f7                 ; b43a: d0 f7
loc_b43c:
	lda.b #$02                   ; b43c: a9 02
	sta $de                      ; b43e: 85 de
	jmp $b299                    ; b440: 4c 99 b2

; --- Block at $b618-$b61e ---
loc_b618:
	lda $c5                      ; b618: a5 c5
	.db $f0, $03                 ; b61a: f0 03
loc_b61c:
	stz $c5                      ; b61c: 64 c5
	rts                          ; b61e: 60

; --- Block at $b61f-$b623 ---
loc_b61f:
	lda $d1                      ; b61f: a5 d1
	.db $f0, $01                 ; b621: f0 01
loc_b623:
	rts                          ; b623: 60

; --- Block at $b624-$b62c ---
loc_b624:
	ldx.w #$0000                 ; b624: a2 00 00
	lda $0fe6                    ; b627: ad e6 0f
	.db $10, $01                 ; b62a: 10 01
loc_b62c:
	rts                          ; b62c: 60

; --- Block at $b62d-$b67c ---
loc_b62d:
	tay                          ; b62d: a8
	.db $f0, $0c                 ; b62e: f0 0c
loc_b630:
	lda $159620,x                ; b630: bf 20 96 15
	inx                          ; b634: e8
	cmp.b #$00                   ; b635: c9 00
	.db $d0, $f7                 ; b637: d0 f7
loc_b639:
	dey                          ; b639: 88
	.db $d0, $f4                 ; b63a: d0 f4
loc_b63c:
	stx $3d                      ; b63c: 86 3d
	stz $07                      ; b63e: 64 07
	lda $159620,x                ; b640: bf 20 96 15
	inx                          ; b644: e8
	inc $07                      ; b645: e6 07
	cmp.b #$00                   ; b647: c9 00
	.db $d0, $f5                 ; b649: d0 f5
loc_b64b:
	dec $07                      ; b64b: c6 07
	lda.b #$16                   ; b64d: a9 16
	sec                          ; b64f: 38
	sbc $07                      ; b650: e5 07
	lsr                          ; b652: 4a
	sta $06                      ; b653: 85 06
	ldx.w #$0000                 ; b655: a2 00 00
	lda.b #$ff                   ; b658: a9 ff
	sta $0774,x                  ; b65a: 9d 74 07
	sta $078a,x                  ; b65d: 9d 8a 07
	inx                          ; b660: e8
	cpx.w #$0016                 ; b661: e0 16 00
	.db $d0, $f4                 ; b664: d0 f4
loc_b666:
	ldx $3d                      ; b666: a6 3d
	lda $06                      ; b668: a5 06
	tay                          ; b66a: a8
	lda $159620,x                ; b66b: bf 20 96 15
	inx                          ; b66f: e8
	sta $0774,y                  ; b670: 99 74 07
	iny                          ; b673: c8
	dec $07                      ; b674: c6 07
	.db $d0, $f3                 ; b676: d0 f3
loc_b678:
	lda.b #$01                   ; b678: a9 01
	sta $e9                      ; b67a: 85 e9
	rts                          ; b67c: 60

; --- Block at $b752-$b766 ---
loc_b752:
	lda $1705                    ; b752: ad 05 17
	sta $08                      ; b755: 85 08
	asl                          ; b757: 0a
	tay                          ; b758: a8
	.db $d0, $0e                 ; b759: d0 0e
loc_b75b:
	lda $06a4,y                  ; b75b: b9 a4 06
	and.b #$20                   ; b75e: 29 20
	.db $f0, $07                 ; b760: f0 07
loc_b762:
	lda.b #$04                   ; b762: a9 04
	sta $08                      ; b764: 85 08
	jmp $b775                    ; b766: 4c 75 b7

; --- Block at $b769-$b774 ---
loc_b769:
	lda $06a3,y                  ; b769: b9 a3 06
	and.b #$03                   ; b76c: 29 03
	.db $f0, $05                 ; b76e: f0 05
loc_b770:
	and $d2                      ; b770: 25 d2
	.db $d0, $01                 ; b772: d0 01
loc_b774:
	rts                          ; b774: 60

; --- Block at $b775-$b798 ---
loc_b775:
	lda $08                      ; b775: a5 08
	tay                          ; b777: a8
	lda $1706                    ; b778: ad 06 17
	clc                          ; b77b: 18
	adc $b879,y                  ; b77c: 79 79 b8
	sta $0c                      ; b77f: 85 0c
	lda $1707                    ; b781: ad 07 17
	clc                          ; b784: 18
	adc $b87e,y                  ; b785: 79 7e b8
	sta $0e                      ; b788: 85 0e
	jsr $c070                    ; b78a: 20 70 c0
loc_b78d:
	cmp.b #$00                   ; b78d: c9 00
	.db $f0, $0a                 ; b78f: f0 0a
loc_b791:
	cmp.b #$ff                   ; b791: c9 ff
	.db $f0, $06                 ; b793: f0 06
loc_b795:
	jsr $b855                    ; b795: 20 55 b8
loc_b798:
	jmp $b82b                    ; b798: 4c 2b b8

; --- Block at $b79b-$b7c7 ---
loc_b79b:
	lda $08                      ; b79b: a5 08
	tay                          ; b79d: a8
	lda $1706                    ; b79e: ad 06 17
	clc                          ; b7a1: 18
	adc $b883,y                  ; b7a2: 79 83 b8
	sta $0c                      ; b7a5: 85 0c
	lda $1707                    ; b7a7: ad 07 17
	clc                          ; b7aa: 18
	adc $b888,y                  ; b7ab: 79 88 b8
	sta $0e                      ; b7ae: 85 0e
	jsr $c070                    ; b7b0: 20 70 c0
loc_b7b3:
	cmp.b #$00                   ; b7b3: c9 00
	.db $f0, $13                 ; b7b5: f0 13
loc_b7b7:
	cmp.b #$ff                   ; b7b7: c9 ff
	.db $f0, $0f                 ; b7b9: f0 0f
loc_b7bb:
	jsr $b855                    ; b7bb: 20 55 b8
loc_b7be:
	cmp.b #$ff                   ; b7be: c9 ff
	.db $f0, $08                 ; b7c0: f0 08
loc_b7c2:
	cmp $b8a1,y                  ; b7c2: d9 a1 b8
	.db $d0, $03                 ; b7c5: d0 03
loc_b7c7:
	jmp $b82b                    ; b7c7: 4c 2b b8

; --- Block at $b7ca-$b7f6 ---
loc_b7ca:
	lda $08                      ; b7ca: a5 08
	tay                          ; b7cc: a8
	lda $1706                    ; b7cd: ad 06 17
	clc                          ; b7d0: 18
	adc $b88d,y                  ; b7d1: 79 8d b8
	sta $0c                      ; b7d4: 85 0c
	lda $1707                    ; b7d6: ad 07 17
	clc                          ; b7d9: 18
	adc $b892,y                  ; b7da: 79 92 b8
	sta $0e                      ; b7dd: 85 0e
	jsr $c070                    ; b7df: 20 70 c0
loc_b7e2:
	cmp.b #$00                   ; b7e2: c9 00
	.db $f0, $13                 ; b7e4: f0 13
loc_b7e6:
	cmp.b #$ff                   ; b7e6: c9 ff
	.db $f0, $0f                 ; b7e8: f0 0f
loc_b7ea:
	jsr $b855                    ; b7ea: 20 55 b8
loc_b7ed:
	cmp.b #$ff                   ; b7ed: c9 ff
	.db $f0, $08                 ; b7ef: f0 08
loc_b7f1:
	cmp $b8a6,y                  ; b7f1: d9 a6 b8
	.db $d0, $03                 ; b7f4: d0 03
loc_b7f6:
	jmp $b82b                    ; b7f6: 4c 2b b8

; --- Block at $b7f9-$b825 ---
loc_b7f9:
	lda $08                      ; b7f9: a5 08
	tay                          ; b7fb: a8
	lda $1706                    ; b7fc: ad 06 17
	clc                          ; b7ff: 18
	adc $b897,y                  ; b800: 79 97 b8
	sta $0c                      ; b803: 85 0c
	lda $1707                    ; b805: ad 07 17
	clc                          ; b808: 18
	adc $b89c,y                  ; b809: 79 9c b8
	sta $0e                      ; b80c: 85 0e
	jsr $c070                    ; b80e: 20 70 c0
loc_b811:
	cmp.b #$00                   ; b811: c9 00
	.db $f0, $13                 ; b813: f0 13
loc_b815:
	cmp.b #$ff                   ; b815: c9 ff
	.db $f0, $0f                 ; b817: f0 0f
loc_b819:
	jsr $b855                    ; b819: 20 55 b8
loc_b81c:
	cmp.b #$ff                   ; b81c: c9 ff
	.db $f0, $08                 ; b81e: f0 08
loc_b820:
	cmp $b8ab,y                  ; b820: d9 ab b8
	.db $d0, $03                 ; b823: d0 03
loc_b825:
	jmp $b82b                    ; b825: 4c 2b b8

; --- Block at $b828-$b828 ---
loc_b828:
	jmp $b854                    ; b828: 4c 54 b8

; --- Block at $b82b-$b854 ---
loc_b82b:
	lda $0909,x                  ; b82b: bd 09 09
	pha                          ; b82e: 48
	lda $0901,x                  ; b82f: bd 01 09
	and.b #$10                   ; b832: 29 10
	.db $f0, $0b                 ; b834: f0 0b
loc_b836:
	lda $1705                    ; b836: ad 05 17
	clc                          ; b839: 18
	adc.b #$02                   ; b83a: 69 02
	and.b #$03                   ; b83c: 29 03
	sta $0909,x                  ; b83e: 9d 09 09
loc_b841:
	phx                          ; b841: da
	jsr $b8b0                    ; b842: 20 b0 b8
loc_b845:
	plx                          ; b845: fa
	lda $0907,x                  ; b846: bd 07 09
	phx                          ; b849: da
	jsr $f03f                    ; b84a: 20 3f f0
loc_b84d:
	plx                          ; b84d: fa
	pla                          ; b84e: 68
	sta $0909,x                  ; b84f: 9d 09 09
	stz $ee                      ; b852: 64 ee
	rts                          ; b854: 60

; --- Block at $b855-$b863 ---
loc_b855:
	and.b #$7f                   ; b855: 29 7f
	tax                          ; b857: aa
	lda.b #$00                   ; b858: a9 00
	cpx.w #$0000                 ; b85a: e0 00 00
	.db $f0, $07                 ; b85d: f0 07
loc_b85f:
	dex                          ; b85f: ca
	clc                          ; b860: 18
	adc.b #$0f                   ; b861: 69 0f
	jmp $b85a                    ; b863: 4c 5a b8

; --- Block at $b866-$b871 ---
loc_b866:
	tax                          ; b866: aa
	lda $0903,x                  ; b867: bd 03 09
	ora $0905,x                  ; b86a: 1d 05 09
	.db $d0, $05                 ; b86d: d0 05
loc_b86f:
	lda.b #$ff                   ; b86f: a9 ff
	jmp $b878                    ; b871: 4c 78 b8

; --- Block at $b874-$b878 ---
loc_b874:
	lda $0902,x                  ; b874: bd 02 09
	dec                          ; b877: 3a
loc_b878:
	rts                          ; b878: 60

; --- Block at $b8b0-$b8b5 ---
loc_b8b0:
	lda $08fe                    ; b8b0: ad fe 08
	.db $d0, $01                 ; b8b3: d0 01
loc_b8b5:
	rts                          ; b8b5: 60

; --- Block at $b8b6-$b8cb ---
loc_b8b6:
	ldx.w #$0000                 ; b8b6: a2 00 00
	stx $af                      ; b8b9: 86 af
	stx $40                      ; b8bb: 86 40
	stz $ae                      ; b8bd: 64 ae
	ldx.w #$0020                 ; b8bf: a2 20 00
	stx $43                      ; b8c2: 86 43
	ldx $af                      ; b8c4: a6 af
	lda $090b,x                  ; b8c6: bd 0b 09
	.db $d0, $03                 ; b8c9: d0 03
loc_b8cb:
	jmp $ba5e                    ; b8cb: 4c 5e ba

; --- Block at $b8ce-$b8e2 ---
loc_b8ce:
	lda $0901,x                  ; b8ce: bd 01 09
	and.b #$03                   ; b8d1: 29 03
	.db $f0, $4a                 ; b8d3: f0 4a
loc_b8d5:
	tay                          ; b8d5: a8
	lda $0901,x                  ; b8d6: bd 01 09
	and.b #$20                   ; b8d9: 29 20
	.db $d0, $08                 ; b8db: d0 08
loc_b8dd:
	ldy.w #$0100                 ; b8dd: a0 00 01
	sty $3d                      ; b8e0: 84 3d
	jmp $b995                    ; b8e2: 4c 95 b9

; --- Block at $b8e5-$b8f6 ---
loc_b8e5:
	cpy.w #$0001                 ; b8e5: c0 01 00
	.db $d0, $0f                 ; b8e8: d0 0f
loc_b8ea:
	lda $7a                      ; b8ea: a5 7a
	and.b #$10                   ; b8ec: 29 10
	asl                          ; b8ee: 0a
	asl                          ; b8ef: 0a
	sta $3d                      ; b8f0: 85 3d
	lda.b #$01                   ; b8f2: a9 01
	sta $3e                      ; b8f4: 85 3e
	jmp $b995                    ; b8f6: 4c 95 b9

; --- Block at $b8f9-$b91c ---
loc_b8f9:
	lda $0901,x                  ; b8f9: bd 01 09
	lsr                          ; b8fc: 4a
	lsr                          ; b8fd: 4a
	lsr                          ; b8fe: 4a
	lsr                          ; b8ff: 4a
	lsr                          ; b900: 4a
	lsr                          ; b901: 4a
	tax                          ; b902: aa
	lda $bb3e,x                  ; b903: bd 3e bb
	tax                          ; b906: aa
	lda $7a                      ; b907: a5 7a
	lsr                          ; b909: 4a
	dex                          ; b90a: ca
	.db $d0, $fc                 ; b90b: d0 fc
loc_b90d:
	ldx $af                      ; b90d: a6 af
	and.b #$0c                   ; b90f: 29 0c
	asl                          ; b911: 0a
	asl                          ; b912: 0a
	and $bb42,y                  ; b913: 39 42 bb
	sta $3d                      ; b916: 85 3d
	lda.b #$01                   ; b918: a9 01
	sta $3e                      ; b91a: 85 3e
	jmp $b995                    ; b91c: 4c 95 b9

; --- Block at $b91f-$b93a ---
loc_b91f:
	lda $090c,x                  ; b91f: bd 0c 09
	and.b #$02                   ; b922: 29 02
	.db $f0, $1f                 ; b924: f0 1f
loc_b926:
	lda $08ff,x                  ; b926: bd ff 08
	and.b #$7f                   ; b929: 29 7f
	lsr                          ; b92b: 4a
	lsr                          ; b92c: 4a
	lsr                          ; b92d: 4a
	lsr                          ; b92e: 4a
	tay                          ; b92f: a8
	lda $090c,x                  ; b930: bd 0c 09
	and.b #$01                   ; b933: 29 01
	.db $d0, $06                 ; b935: d0 06
loc_b937:
	lda $bb46,y                  ; b937: b9 46 bb
	jmp $b940                    ; b93a: 4c 40 b9

; --- Block at $b93d-$b942 ---
loc_b93d:
	lda $bb4e,y                  ; b93d: b9 4e bb
loc_b940:
	stz $3d                      ; b940: 64 3d
	jmp $b989                    ; b942: 4c 89 b9

; --- Block at $b945-$b955 ---
loc_b945:
	lda $0902,x                  ; b945: bd 02 09
	and.b #$7f                   ; b948: 29 7f
	.db $d0, $0c                 ; b94a: d0 0c
loc_b94c:
	lda $0901,x                  ; b94c: bd 01 09
	and.b #$20                   ; b94f: 29 20
	.db $d0, $27                 ; b951: d0 27
loc_b953:
	lda.b #$00                   ; b953: a9 00
	jmp $b982                    ; b955: 4c 82 b9

; --- Block at $b958-$b961 ---
loc_b958:
	lda $08ff,x                  ; b958: bd ff 08
	and.b #$40                   ; b95b: 29 40
	.db $f0, $05                 ; b95d: f0 05
loc_b95f:
	lda.b #$00                   ; b95f: a9 00
	jmp $b982                    ; b961: 4c 82 b9

; --- Block at $b964-$b96d ---
loc_b964:
	lda $0908,x                  ; b964: bd 08 09
	.db $f0, $07                 ; b967: f0 07
loc_b969:
	lda $08ff,x                  ; b969: bd ff 08
	lsr                          ; b96c: 4a
	jmp $b97c                    ; b96d: 4c 7c b9

; --- Block at $b970-$b977 ---
loc_b970:
	lda $b1                      ; b970: a5 b1
	.db $d0, $06                 ; b972: d0 06
loc_b974:
	lda $08ff,x                  ; b974: bd ff 08
	jmp $b97c                    ; b977: 4c 7c b9

; --- Block at $b97a-$b995 ---
loc_b97a:
	lda $7a                      ; b97a: a5 7a
	and.b #$10                   ; b97c: 29 10
	lsr                          ; b97e: 4a
	lsr                          ; b97f: 4a
	lsr                          ; b980: 4a
	lsr                          ; b981: 4a
loc_b982:
	sta $3d                      ; b982: 85 3d
	lda $0909,x                  ; b984: bd 09 09
	and.b #$7f                   ; b987: 29 7f
loc_b989:
	asl                          ; b989: 0a
	clc                          ; b98a: 18
	adc $3d                      ; b98b: 65 3d
	asl                          ; b98d: 0a
	asl                          ; b98e: 0a
	asl                          ; b98f: 0a
	asl                          ; b990: 0a
	sta $3d                      ; b991: 85 3d
	stz $3e                      ; b993: 64 3e

; --- Block at $b995-$ba0b ---
loc_b995:
	lda $090d,x                  ; b995: bd 0d 09
	asl                          ; b998: 0a
	sta $07                      ; b999: 85 07
	stz $08                      ; b99b: 64 08
	lda $090c,x                  ; b99d: bd 0c 09
	and.b #$01                   ; b9a0: 29 01
	.db $f0, $0e                 ; b9a2: f0 0e
loc_b9a4:
	lda $08ff,x                  ; b9a4: bd ff 08
	lsr                          ; b9a7: 4a
	lsr                          ; b9a8: 4a
	and.b #$1f                   ; b9a9: 29 1f
	tax                          ; b9ab: aa
	lda $14fcc6,x                ; b9ac: bf c6 fc 14
	sta $08                      ; b9b0: 85 08
loc_b9b2:
	ldx $3d                      ; b9b2: a6 3d
	lda.b #$04                   ; b9b4: a9 04
	sta $06                      ; b9b6: 85 06
	ldy $af                      ; b9b8: a4 af
	lda $0903,y                  ; b9ba: b9 03 09
	clc                          ; b9bd: 18
	adc $14f846,x                ; b9be: 7f 46 f8 14
	sta $0c                      ; b9c2: 85 0c
	stz $0d                      ; b9c4: 64 0d
	lda $0905,y                  ; b9c6: b9 05 09
	clc                          ; b9c9: 18
	adc $14f847,x                ; b9ca: 7f 47 f8 14
	sta $0e                      ; b9ce: 85 0e
	stz $0f                      ; b9d0: 64 0f
	jsr $baf8                    ; b9d2: 20 f8 ba
loc_b9d5:
	lda $d7                      ; b9d5: a5 d7
	.db $d0, $6e                 ; b9d7: d0 6e
loc_b9d9:
	ldy $40                      ; b9d9: a4 40
	lda $06                      ; b9db: a5 06
	lsr                          ; b9dd: 4a
	.db $b0, $2e                 ; b9de: b0 2e
loc_b9e0:
	lda $18                      ; b9e0: a5 18
	sta $0400,y                  ; b9e2: 99 00 04
	lda $1a                      ; b9e5: a5 1a
	sec                          ; b9e7: 38
	sbc.b #$04                   ; b9e8: e9 04
	sec                          ; b9ea: 38
	sbc $08                      ; b9eb: e5 08
	sta $0401,y                  ; b9ed: 99 01 04
	lda $14f848,x                ; b9f0: bf 48 f8 14
	clc                          ; b9f4: 18
	adc $43                      ; b9f5: 65 43
	sta $0402,y                  ; b9f7: 99 02 04
	lda $44                      ; b9fa: a5 44
	adc.b #$00                   ; b9fc: 69 00
	clc                          ; b9fe: 18
	adc $14f849,x                ; b9ff: 7f 49 f8 14
	and.b #$f1                   ; ba03: 29 f1
	clc                          ; ba05: 18
	adc $07                      ; ba06: 65 07
	sta $0403,y                  ; ba08: 99 03 04
	jmp $ba47                    ; ba0b: 4c 47 ba

; --- Block at $ba0e-$ba47 ---
loc_ba0e:
	lda $18                      ; ba0e: a5 18
	sta $0480,y                  ; ba10: 99 80 04
	lda $1a                      ; ba13: a5 1a
	sec                          ; ba15: 38
	sbc.b #$04                   ; ba16: e9 04
	sec                          ; ba18: 38
	sbc $08                      ; ba19: e5 08
	sta $0481,y                  ; ba1b: 99 81 04
	lda $14f848,x                ; ba1e: bf 48 f8 14
	clc                          ; ba22: 18
	adc $43                      ; ba23: 65 43
	sta $0482,y                  ; ba25: 99 82 04
	lda $44                      ; ba28: a5 44
	adc.b #$00                   ; ba2a: 69 00
	clc                          ; ba2c: 18
	adc $14f849,x                ; ba2d: 7f 49 f8 14
	and.b #$f1                   ; ba31: 29 f1
	clc                          ; ba33: 18
	adc $07                      ; ba34: 65 07
	sta $0483,y                  ; ba36: 99 83 04
	ldy $af                      ; ba39: a4 af
	lda $090a,y                  ; ba3b: b9 0a 09
	.db $f0, $07                 ; ba3e: f0 07
loc_ba40:
	ldy $40                      ; ba40: a4 40
	lda.b #$f8                   ; ba42: a9 f8
	sta $0481,y                  ; ba44: 99 81 04

; --- Block at $ba47-$ba5b ---
loc_ba47:
	inx                          ; ba47: e8
	inx                          ; ba48: e8
	inx                          ; ba49: e8
	inx                          ; ba4a: e8
	lda $06                      ; ba4b: a5 06
	lsr                          ; ba4d: 4a
	.db $90, $07                 ; ba4e: 90 07
loc_ba50:
	lda $40                      ; ba50: a5 40
	clc                          ; ba52: 18
	adc.b #$04                   ; ba53: 69 04
	sta $40                      ; ba55: 85 40
loc_ba57:
	dec $06                      ; ba57: c6 06
	.db $f0, $03                 ; ba59: f0 03
loc_ba5b:
	jmp $b9b8                    ; ba5b: 4c b8 b9

; --- Block at $ba5e-$ba7b ---
loc_ba5e:
	lda $43                      ; ba5e: a5 43
	clc                          ; ba60: 18
	adc.b #$20                   ; ba61: 69 20
	sta $43                      ; ba63: 85 43
	lda $44                      ; ba65: a5 44
	adc.b #$00                   ; ba67: 69 00
	sta $44                      ; ba69: 85 44
	lda $af                      ; ba6b: a5 af
	clc                          ; ba6d: 18
	adc.b #$0f                   ; ba6e: 69 0f
	sta $af                      ; ba70: 85 af
	inc $ae                      ; ba72: e6 ae
	lda $ae                      ; ba74: a5 ae
	cmp $08fe                    ; ba76: cd fe 08
	.db $f0, $03                 ; ba79: f0 03
loc_ba7b:
	jmp $b8c4                    ; ba7b: 4c c4 b8

; --- Block at $ba7e-$baf7 ---
loc_ba7e:
	lda $128a                    ; ba7e: ad 8a 12
	and.b #$40                   ; ba81: 29 40
	.db $f0, $72                 ; ba83: f0 72
loc_ba85:
	stz $ae                      ; ba85: 64 ae
	lda $ae                      ; ba87: a5 ae
	tax                          ; ba89: aa
	lda $14fc96,x                ; ba8a: bf 96 fc 14
	sta $0c                      ; ba8e: 85 0c
	lda $14fca6,x                ; ba90: bf a6 fc 14
	sta $0e                      ; ba94: 85 0e
	lda $14fc76,x                ; ba96: bf 76 fc 14
	sta $07                      ; ba9a: 85 07
	lda $14fcb6,x                ; ba9c: bf b6 fc 14
	sta $08                      ; baa0: 85 08
	lda $ae                      ; baa2: a5 ae
	stz $3e                      ; baa4: 64 3e
	asl                          ; baa6: 0a
	rol $3e                      ; baa7: 26 3e
	asl                          ; baa9: 0a
	rol $3e                      ; baaa: 26 3e
	asl                          ; baac: 0a
	rol $3e                      ; baad: 26 3e
	asl                          ; baaf: 0a
	rol $3e                      ; bab0: 26 3e
	sta $3d                      ; bab2: 85 3d
	ldy $3d                      ; bab4: a4 3d
	lda $ae                      ; bab6: a5 ae
	tax                          ; bab8: aa
	lda $14fc86,x                ; bab9: bf 86 fc 14
	tax                          ; babd: aa
	lda $0c                      ; babe: a5 0c
	clc                          ; bac0: 18
	adc $14f846,x                ; bac1: 7f 46 f8 14
	sta $0300,y                  ; bac5: 99 00 03
	lda $0e                      ; bac8: a5 0e
	clc                          ; baca: 18
	adc $14f847,x                ; bacb: 7f 47 f8 14
	sta $0301,y                  ; bacf: 99 01 03
	lda $07                      ; bad2: a5 07
	clc                          ; bad4: 18
	adc $14f848,x                ; bad5: 7f 48 f8 14
	sta $0302,y                  ; bad9: 99 02 03
	lda $14f849,x                ; badc: bf 49 f8 14
	and.b #$f1                   ; bae0: 29 f1
	ora $08                      ; bae2: 05 08
	sta $0303,y                  ; bae4: 99 03 03
	jsr $86c2                    ; bae7: 20 c2 86
loc_baea:
	tya                          ; baea: 98
	and.b #$0f                   ; baeb: 29 0f
	.db $d0, $cf                 ; baed: d0 cf
loc_baef:
	inc $ae                      ; baef: e6 ae
	lda $ae                      ; baf1: a5 ae
	cmp.b #$10                   ; baf3: c9 10
	.db $d0, $90                 ; baf5: d0 90
loc_baf7:
	rts                          ; baf7: 60

; --- Block at $baf8-$bb3d ---
loc_baf8:
	phx                          ; baf8: da
	phy                          ; baf9: 5a
	stz $d7                      ; bafa: 64 d7
	ldx $af                      ; bafc: a6 af
	rep #$20                     ; bafe: c2 20
	lda $0904,x                  ; bb00: bd 04 09
	and.w #$00ff                 ; bb03: 29 ff 00
	asl                          ; bb06: 0a
	asl                          ; bb07: 0a
	asl                          ; bb08: 0a
	asl                          ; bb09: 0a
	clc                          ; bb0a: 18
	adc $0c                      ; bb0b: 65 0c
	sec                          ; bb0d: 38
	sbc $5a                      ; bb0e: e5 5a
	and.w #$03ff                 ; bb10: 29 ff 03
	sta $18                      ; bb13: 85 18
	cmp.w #$0100                 ; bb15: c9 00 01
	.db $b0, $1a                 ; bb18: b0 1a
loc_bb1a:
	lda $0906,x                  ; bb1a: bd 06 09
	and.w #$00ff                 ; bb1d: 29 ff 00
	asl                          ; bb20: 0a
	asl                          ; bb21: 0a
	asl                          ; bb22: 0a
	asl                          ; bb23: 0a
	clc                          ; bb24: 18
	adc $0e                      ; bb25: 65 0e
	sec                          ; bb27: 38
	sbc $5c                      ; bb28: e5 5c
	and.w #$03ff                 ; bb2a: 29 ff 03
	sta $1a                      ; bb2d: 85 1a
	cmp.w #$00f0                 ; bb2f: c9 f0 00
	.db $90, $02                 ; bb32: 90 02
loc_bb34:
	inc $d7                      ; bb34: e6 d7
loc_bb36:
	lda.w #$0000                 ; bb36: a9 00 00
	sep #$20                     ; bb39: e2 20
	ply                          ; bb3b: 7a
	plx                          ; bb3c: fa
	rts                          ; bb3d: 60

; --- Block at $bb56-$bb5b ---
loc_bb56:
	lda $08fe                    ; bb56: ad fe 08
	.db $d0, $01                 ; bb59: d0 01
loc_bb5b:
	rts                          ; bb5b: 60

; --- Block at $bb5c-$bb6e ---
loc_bb5c:
	stz $ae                      ; bb5c: 64 ae
	ldx.w #$0000                 ; bb5e: a2 00 00
	stx $af                      ; bb61: 86 af
	ldx $af                      ; bb63: a6 af
	lda $b1                      ; bb65: a5 b1
	.db $f0, $08                 ; bb67: f0 08
loc_bb69:
	lda $0908,x                  ; bb69: bd 08 09
	.db $d0, $03                 ; bb6c: d0 03
loc_bb6e:
	jmp $bcde                    ; bb6e: 4c de bc

; --- Block at $bb71-$bb78 ---
loc_bb71:
	lda $0902,x                  ; bb71: bd 02 09
	and.b #$7f                   ; bb74: 29 7f
	.db $d0, $03                 ; bb76: d0 03
loc_bb78:
	jmp $bcae                    ; bb78: 4c ae bc

; --- Block at $bb7b-$bb82 ---
loc_bb7b:
	lda $08ff,x                  ; bb7b: bd ff 08
	and.b #$40                   ; bb7e: 29 40
	.db $f0, $03                 ; bb80: f0 03
loc_bb82:
	jmp $bcde                    ; bb82: 4c de bc

; --- Block at $bb85-$bb8c ---
loc_bb85:
	lda $08ff,x                  ; bb85: bd ff 08
	and.b #$3f                   ; bb88: 29 3f
	.db $f0, $03                 ; bb8a: f0 03
loc_bb8c:
	jmp $bcde                    ; bb8c: 4c de bc

; --- Block at $bb8f-$bbc1 ---
loc_bb8f:
	stz $0900,x                  ; bb8f: 9e 00 09
	lda $ee                      ; bb92: a5 ee
	.db $f0, $0d                 ; bb94: f0 0d
loc_bb96:
	and.b #$7f                   ; bb96: 29 7f
	cmp $ae                      ; bb98: c5 ae
	.db $d0, $07                 ; bb9a: d0 07
loc_bb9c:
	stz $ee                      ; bb9c: 64 ee
	lda.b #$01                   ; bb9e: a9 01
	sta $0900,x                  ; bba0: 9d 00 09
loc_bba3:
	lda $0904,x                  ; bba3: bd 04 09
	sta $0c                      ; bba6: 85 0c
	lda $0906,x                  ; bba8: bd 06 09
	sta $0e                      ; bbab: 85 0e
	jsr $bd2b                    ; bbad: 20 2b bd
loc_bbb0:
	sta $06                      ; bbb0: 85 06
	lda $0902,x                  ; bbb2: bd 02 09
	and.b #$7f                   ; bbb5: 29 7f
	sta $0902,x                  ; bbb7: 9d 02 09
	jsr $c170                    ; bbba: 20 70 c1
loc_bbbd:
	cmp.b #$80                   ; bbbd: c9 80
	.db $90, $03                 ; bbbf: 90 03
loc_bbc1:
	jmp $bc40                    ; bbc1: 4c 40 bc

; --- Block at $bbc4-$bbef ---
loc_bbc4:
	lda $0904,x                  ; bbc4: bd 04 09
	sta $0c                      ; bbc7: 85 0c
	lda $0906,x                  ; bbc9: bd 06 09
	sta $0e                      ; bbcc: 85 0e
	lda $0902,x                  ; bbce: bd 02 09
	lsr                          ; bbd1: 4a
	.db $90, $36                 ; bbd2: 90 36
loc_bbd4:
	jsr $c170                    ; bbd4: 20 70 c1
loc_bbd7:
	lsr                          ; bbd7: 4a
	.db $b0, $18                 ; bbd8: b0 18
loc_bbda:
	inc $0c                      ; bbda: e6 0c
	jsr $bd2b                    ; bbdc: 20 2b bd
loc_bbdf:
	cmp $06                      ; bbdf: c5 06
	.db $d0, $5d                 ; bbe1: d0 5d
loc_bbe3:
	jsr $c053                    ; bbe3: 20 53 c0
loc_bbe6:
	cmp.b #$00                   ; bbe6: c9 00
	.db $d0, $56                 ; bbe8: d0 56
loc_bbea:
	lda.b #$02                   ; bbea: a9 02
	sta $0902,x                  ; bbec: 9d 02 09
	jmp $bc40                    ; bbef: 4c 40 bc

; --- Block at $bbf2-$bc07 ---
loc_bbf2:
	dec $0c                      ; bbf2: c6 0c
	jsr $bd2b                    ; bbf4: 20 2b bd
loc_bbf7:
	cmp $06                      ; bbf7: c5 06
	.db $d0, $45                 ; bbf9: d0 45
loc_bbfb:
	jsr $c053                    ; bbfb: 20 53 c0
loc_bbfe:
	cmp.b #$00                   ; bbfe: c9 00
	.db $d0, $3e                 ; bc00: d0 3e
loc_bc02:
	lda.b #$04                   ; bc02: a9 04
	sta $0902,x                  ; bc04: 9d 02 09
	jmp $bc40                    ; bc07: 4c 40 bc

; --- Block at $bc0a-$bc25 ---
loc_bc0a:
	jsr $c170                    ; bc0a: 20 70 c1
loc_bc0d:
	lsr                          ; bc0d: 4a
	.db $b0, $18                 ; bc0e: b0 18
loc_bc10:
	dec $0e                      ; bc10: c6 0e
	jsr $bd2b                    ; bc12: 20 2b bd
loc_bc15:
	cmp $06                      ; bc15: c5 06
	.db $d0, $27                 ; bc17: d0 27
loc_bc19:
	jsr $c053                    ; bc19: 20 53 c0
loc_bc1c:
	cmp.b #$00                   ; bc1c: c9 00
	.db $d0, $20                 ; bc1e: d0 20
loc_bc20:
	lda.b #$01                   ; bc20: a9 01
	sta $0902,x                  ; bc22: 9d 02 09
	jmp $bc40                    ; bc25: 4c 40 bc

; --- Block at $bc28-$bc3d ---
loc_bc28:
	inc $0e                      ; bc28: e6 0e
	jsr $bd2b                    ; bc2a: 20 2b bd
loc_bc2d:
	cmp $06                      ; bc2d: c5 06
	.db $d0, $0f                 ; bc2f: d0 0f
loc_bc31:
	jsr $c053                    ; bc31: 20 53 c0
loc_bc34:
	cmp.b #$00                   ; bc34: c9 00
	.db $d0, $08                 ; bc36: d0 08
loc_bc38:
	lda.b #$03                   ; bc38: a9 03
	sta $0902,x                  ; bc3a: 9d 02 09
	jmp $bc40                    ; bc3d: 4c 40 bc

; --- Block at $bc40-$bca0 ---
loc_bc40:
	ldx $af                      ; bc40: a6 af
	lda $0902,x                  ; bc42: bd 02 09
	and.b #$7f                   ; bc45: 29 7f
	tay                          ; bc47: a8
	lda $0904,x                  ; bc48: bd 04 09
	clc                          ; bc4b: 18
	adc $bd21,y                  ; bc4c: 79 21 bd
	sta $0c                      ; bc4f: 85 0c
	lda $0906,x                  ; bc51: bd 06 09
	clc                          ; bc54: 18
	adc $bd26,y                  ; bc55: 79 26 bd
	sta $0e                      ; bc58: 85 0e
	jsr $bd2b                    ; bc5a: 20 2b bd
loc_bc5d:
	cmp $06                      ; bc5d: c5 06
	.db $d0, $07                 ; bc5f: d0 07
loc_bc61:
	jsr $c053                    ; bc61: 20 53 c0
loc_bc64:
	cmp.b #$00                   ; bc64: c9 00
	.db $f0, $46                 ; bc66: f0 46
loc_bc68:
	lda $0902,x                  ; bc68: bd 02 09
	dec                          ; bc6b: 3a
	clc                          ; bc6c: 18
	adc.b #$02                   ; bc6d: 69 02
	and.b #$03                   ; bc6f: 29 03
	inc                          ; bc71: 1a
	tay                          ; bc72: a8
	lda $0904,x                  ; bc73: bd 04 09
	clc                          ; bc76: 18
	adc $bd21,y                  ; bc77: 79 21 bd
	sta $0c                      ; bc7a: 85 0c
	lda $0906,x                  ; bc7c: bd 06 09
	clc                          ; bc7f: 18
	adc $bd26,y                  ; bc80: 79 26 bd
	sta $0e                      ; bc83: 85 0e
	jsr $bd2b                    ; bc85: 20 2b bd
loc_bc88:
	cmp $06                      ; bc88: c5 06
	.db $d0, $17                 ; bc8a: d0 17
loc_bc8c:
	jsr $c053                    ; bc8c: 20 53 c0
loc_bc8f:
	cmp.b #$00                   ; bc8f: c9 00
	.db $d0, $10                 ; bc91: d0 10
loc_bc93:
	lda $0902,x                  ; bc93: bd 02 09
	dec                          ; bc96: 3a
	clc                          ; bc97: 18
	adc.b #$02                   ; bc98: 69 02
	and.b #$03                   ; bc9a: 29 03
	inc                          ; bc9c: 1a
	sta $0902,x                  ; bc9d: 9d 02 09
	jmp $bcae                    ; bca0: 4c ae bc

; --- Block at $bca3-$bcab ---
loc_bca3:
	lda $0902,x                  ; bca3: bd 02 09
	ora.b #$80                   ; bca6: 09 80
	sta $0902,x                  ; bca8: 9d 02 09
	jmp $bcde                    ; bcab: 4c de bc

; --- Block at $bcae-$bcb3 ---
loc_bcae:
	lda $090b,x                  ; bcae: bd 0b 09
	.db $d0, $03                 ; bcb1: d0 03
loc_bcb3:
	jmp $bcde                    ; bcb3: 4c de bc

; --- Block at $bcb6-$bcde ---
loc_bcb6:
	lda $0904,x                  ; bcb6: bd 04 09
	sta $0c                      ; bcb9: 85 0c
	lda $0906,x                  ; bcbb: bd 06 09
	sta $0e                      ; bcbe: 85 0e
	jsr $c045                    ; bcc0: 20 45 c0
loc_bcc3:
	lda $0902,x                  ; bcc3: bd 02 09
	and.b #$7f                   ; bcc6: 29 7f
	tay                          ; bcc8: a8
	lda $0904,x                  ; bcc9: bd 04 09
	clc                          ; bccc: 18
	adc $bd21,y                  ; bccd: 79 21 bd
	sta $0c                      ; bcd0: 85 0c
	lda $0906,x                  ; bcd2: bd 06 09
	clc                          ; bcd5: 18
	adc $bd26,y                  ; bcd6: 79 26 bd
	sta $0e                      ; bcd9: 85 0e
	jsr $c08d                    ; bcdb: 20 8d c0

; --- Block at $bcde-$bd1d ---
loc_bcde:
	ldx $af                      ; bcde: a6 af
	lda $0902,x                  ; bce0: bd 02 09
	.db $f0, $04                 ; bce3: f0 04
loc_bce5:
	dec                          ; bce5: 3a
	sta $0909,x                  ; bce6: 9d 09 09
loc_bce9:
	lda $0904,x                  ; bce9: bd 04 09
	sta $3d                      ; bcec: 85 3d
	lda $0906,x                  ; bcee: bd 06 09
	sta $3e                      ; bcf1: 85 3e
	ldx $3d                      ; bcf3: a6 3d
	lda $7f5c71,x                ; bcf5: bf 71 5c 7f
	sta $3d                      ; bcf9: 85 3d
	stz $3e                      ; bcfb: 64 3e
	asl $3d                      ; bcfd: 06 3d
	rol $3e                      ; bcff: 26 3e
	ldx $3d                      ; bd01: a6 3d
	lda $0edc,x                  ; bd03: bd dc 0e
	ldx $af                      ; bd06: a6 af
	and.b #$08                   ; bd08: 29 08
	sta $090a,x                  ; bd0a: 9d 0a 09
	lda $af                      ; bd0d: a5 af
	clc                          ; bd0f: 18
	adc.b #$0f                   ; bd10: 69 0f
	sta $af                      ; bd12: 85 af
	inc $ae                      ; bd14: e6 ae
	lda $ae                      ; bd16: a5 ae
	cmp $08fe                    ; bd18: cd fe 08
	.db $f0, $03                 ; bd1b: f0 03
loc_bd1d:
	jmp $bb63                    ; bd1d: 4c 63 bb

; --- Block at $bd20-$bd20 ---
loc_bd20:
	rts                          ; bd20: 60

; --- Block at $bd2b-$bd4d ---
loc_bd2b:
	phx                          ; bd2b: da
	lda $0c                      ; bd2c: a5 0c
	.db $30, $20                 ; bd2e: 30 20
loc_bd30:
	sta $3d                      ; bd30: 85 3d
	lda $0e                      ; bd32: a5 0e
	.db $30, $1a                 ; bd34: 30 1a
loc_bd36:
	sta $3e                      ; bd36: 85 3e
	ldx $3d                      ; bd38: a6 3d
	lda $7f5c71,x                ; bd3a: bf 71 5c 7f
	sta $3d                      ; bd3e: 85 3d
	stz $3e                      ; bd40: 64 3e
	asl $3d                      ; bd42: 06 3d
	rol $3e                      ; bd44: 26 3e
	ldx $3d                      ; bd46: a6 3d
	lda $0edb,x                  ; bd48: bd db 0e
	and.b #$83                   ; bd4b: 29 83
	jmp $bd52                    ; bd4d: 4c 52 bd

; --- Block at $bd50-$bd53 ---
loc_bd50:
	lda.b #$00                   ; bd50: a9 00
loc_bd52:
	plx                          ; bd52: fa
	rts                          ; bd53: 60

; --- Block at $bd54-$bd59 ---
loc_bd54:
	lda $08fe                    ; bd54: ad fe 08
	.db $d0, $01                 ; bd57: d0 01
loc_bd59:
	rts                          ; bd59: 60

; --- Block at $bd5a-$bd6c ---
loc_bd5a:
	stz $ae                      ; bd5a: 64 ae
	ldx.w #$0000                 ; bd5c: a2 00 00
	stx $af                      ; bd5f: 86 af
	ldx $af                      ; bd61: a6 af
	lda $b1                      ; bd63: a5 b1
	.db $f0, $08                 ; bd65: f0 08
loc_bd67:
	lda $0908,x                  ; bd67: bd 08 09
	.db $d0, $17                 ; bd6a: d0 17
loc_bd6c:
	jmp $be34                    ; bd6c: 4c 34 be

; --- Block at $bd6f-$bd74 ---
loc_bd6f:
	lda $0902,x                  ; bd6f: bd 02 09
	.db $10, $03                 ; bd72: 10 03
loc_bd74:
	jmp $be16                    ; bd74: 4c 16 be

; --- Block at $bd77-$bd80 ---
loc_bd77:
	ldx $af                      ; bd77: a6 af
	lda $08ff,x                  ; bd79: bd ff 08
	and.b #$40                   ; bd7c: 29 40
	.db $f0, $03                 ; bd7e: f0 03
loc_bd80:
	jmp $be16                    ; bd80: 4c 16 be

; --- Block at $bd83-$bd8a ---
loc_bd83:
	lda $0902,x                  ; bd83: bd 02 09
	and.b #$7f                   ; bd86: 29 7f
	.db $d0, $03                 ; bd88: d0 03
loc_bd8a:
	jmp $be16                    ; bd8a: 4c 16 be

; --- Block at $bd8d-$bd94 ---
loc_bd8d:
	lda $08ff,x                  ; bd8d: bd ff 08
	and.b #$03                   ; bd90: 29 03
	.db $f0, $03                 ; bd92: f0 03
loc_bd94:
	jmp $be16                    ; bd94: 4c 16 be

; --- Block at $bd97-$bda9 ---
loc_bd97:
	ldx $af                      ; bd97: a6 af
	lda $0900,x                  ; bd99: bd 00 09
	.db $d0, $0e                 ; bd9c: d0 0e
loc_bd9e:
	lda $0901,x                  ; bd9e: bd 01 09
	and.b #$c0                   ; bda1: 29 c0
	lsr                          ; bda3: 4a
	lsr                          ; bda4: 4a
	lsr                          ; bda5: 4a
	lsr                          ; bda6: 4a
	lsr                          ; bda7: 4a
	lsr                          ; bda8: 4a
	jmp $bdae                    ; bda9: 4c ae bd

; --- Block at $bdac-$bdbb ---
loc_bdac:
	lda.b #$02                   ; bdac: a9 02
loc_bdae:
	tay                          ; bdae: a8
	lda $0902,x                  ; bdaf: bd 02 09
	dec                          ; bdb2: 3a
	.db $f0, $09                 ; bdb3: f0 09
loc_bdb5:
	dec                          ; bdb5: 3a
	.db $f0, $1c                 ; bdb6: f0 1c
loc_bdb8:
	dec                          ; bdb8: 3a
	.db $f0, $2f                 ; bdb9: f0 2f
loc_bdbb:
	jmp $be00                    ; bdbb: 4c 00 be

; --- Block at $bdbe-$bdd1 ---
loc_bdbe:
	lda $0905,x                  ; bdbe: bd 05 09
	sec                          ; bdc1: 38
	sbc $be5f,y                  ; bdc2: f9 5f be
	pha                          ; bdc5: 48
	and.b #$0f                   ; bdc6: 29 0f
	sta $0905,x                  ; bdc8: 9d 05 09
	pla                          ; bdcb: 68
	.db $10, $03                 ; bdcc: 10 03
loc_bdce:
	dec $0906,x                  ; bdce: de 06 09
loc_bdd1:
	jmp $be16                    ; bdd1: 4c 16 be

; --- Block at $bdd4-$bde7 ---
loc_bdd4:
	lda $0903,x                  ; bdd4: bd 03 09
	clc                          ; bdd7: 18
	adc $be5f,y                  ; bdd8: 79 5f be
	and.b #$0f                   ; bddb: 29 0f
	sta $0903,x                  ; bddd: 9d 03 09
	cmp.b #$00                   ; bde0: c9 00
	.db $d0, $03                 ; bde2: d0 03
loc_bde4:
	inc $0904,x                  ; bde4: fe 04 09
loc_bde7:
	jmp $be16                    ; bde7: 4c 16 be

; --- Block at $bdea-$bdfd ---
loc_bdea:
	lda $0905,x                  ; bdea: bd 05 09
	clc                          ; bded: 18
	adc $be5f,y                  ; bdee: 79 5f be
	and.b #$0f                   ; bdf1: 29 0f
	sta $0905,x                  ; bdf3: 9d 05 09
	cmp.b #$00                   ; bdf6: c9 00
	.db $d0, $03                 ; bdf8: d0 03
loc_bdfa:
	inc $0906,x                  ; bdfa: fe 06 09
loc_bdfd:
	jmp $be16                    ; bdfd: 4c 16 be

; --- Block at $be00-$be13 ---
loc_be00:
	lda $0903,x                  ; be00: bd 03 09
	sec                          ; be03: 38
	sbc $be5f,y                  ; be04: f9 5f be
	pha                          ; be07: 48
	and.b #$0f                   ; be08: 29 0f
	sta $0903,x                  ; be0a: 9d 03 09
	pla                          ; be0d: 68
	.db $10, $03                 ; be0e: 10 03
loc_be10:
	dec $0904,x                  ; be10: de 04 09
loc_be13:
	jmp $be16                    ; be13: 4c 16 be

; --- Block at $be16-$be24 ---
loc_be16:
	lda $0900,x                  ; be16: bd 00 09
	.db $d0, $0c                 ; be19: d0 0c
loc_be1b:
	lda $0901,x                  ; be1b: bd 01 09
	lsr                          ; be1e: 4a
	lsr                          ; be1f: 4a
	lsr                          ; be20: 4a
	lsr                          ; be21: 4a
	lsr                          ; be22: 4a
	lsr                          ; be23: 4a
	jmp $be29                    ; be24: 4c 29 be

; --- Block at $be27-$be34 ---
loc_be27:
	lda.b #$02                   ; be27: a9 02
loc_be29:
	tay                          ; be29: a8
	lda $08ff,x                  ; be2a: bd ff 08
	clc                          ; be2d: 18
	adc $be63,y                  ; be2e: 79 63 be
	sta $08ff,x                  ; be31: 9d ff 08

; --- Block at $be34-$be58 ---
loc_be34:
	lda $b1                      ; be34: a5 b1
	.db $f0, $10                 ; be36: f0 10
loc_be38:
	lda $0908,x                  ; be38: bd 08 09
	.db $f0, $0b                 ; be3b: f0 0b
loc_be3d:
	cmp $08ff,x                  ; be3d: dd ff 08
	.db $d0, $06                 ; be40: d0 06
loc_be42:
	stz $0908,x                  ; be42: 9e 08 09
	stz $0902,x                  ; be45: 9e 02 09
loc_be48:
	lda $af                      ; be48: a5 af
	clc                          ; be4a: 18
	adc.b #$0f                   ; be4b: 69 0f
	sta $af                      ; be4d: 85 af
	inc $ae                      ; be4f: e6 ae
	lda $ae                      ; be51: a5 ae
	cmp $08fe                    ; be53: cd fe 08
	.db $f0, $03                 ; be56: f0 03
loc_be58:
	jmp $bd61                    ; be58: 4c 61 bd

; --- Block at $be5b-$be5e ---
loc_be5b:
	inc $08fd                    ; be5b: ee fd 08
	rts                          ; be5e: 60

; --- Block at $be67-$be88 ---
loc_be67:
	stz $ae                      ; be67: 64 ae
	ldx $09d1                    ; be69: ae d1 09
	stx $09cf                    ; be6c: 8e cf 09
	lda $138300,x                ; be6f: bf 00 83 13
	jsr $c0b7                    ; be73: 20 b7 c0
loc_be76:
	ldx $09cf                    ; be76: ae cf 09
	inx                          ; be79: e8
	inx                          ; be7a: e8
	inx                          ; be7b: e8
	inx                          ; be7c: e8
	stx $09cf                    ; be7d: 8e cf 09
	inc $ae                      ; be80: e6 ae
	lda $ae                      ; be82: a5 ae
	cmp.b #$0c                   ; be84: c9 0c
	.db $d0, $e7                 ; be86: d0 e7
loc_be88:
	rts                          ; be88: 60

; --- Block at $be89-$bed0 ---
loc_be89:
	stz $08fd                    ; be89: 9c fd 08
	jsr $c035                    ; be8c: 20 35 c0
loc_be8f:
	lda $0fde                    ; be8f: ad de 0f
	stz $3e                      ; be92: 64 3e
	asl                          ; be94: 0a
	rol $3e                      ; be95: 26 3e
	sta $3d                      ; be97: 85 3d
	lda $0fe5                    ; be99: ad e5 0f
	.db $30, $05                 ; be9c: 30 05
loc_be9e:
	lda $1701                    ; be9e: ad 01 17
	.db $f0, $04                 ; bea1: f0 04
loc_bea3:
	inc $3e                      ; bea3: e6 3e
	inc $3e                      ; bea5: e6 3e
loc_bea7:
	ldx $3d                      ; bea7: a6 3d
	lda $138000,x                ; bea9: bf 00 80 13
	sta $3d                      ; bead: 85 3d
	lda $138001,x                ; beaf: bf 01 80 13
	sta $3e                      ; beb3: 85 3e
	ldx $3d                      ; beb5: a6 3d
	stx $09cf                    ; beb7: 8e cf 09
	stx $09d1                    ; beba: 8e d1 09
	stz $08fe                    ; bebd: 9c fe 08
	ldx $09cf                    ; bec0: ae cf 09
	lda $138300,x                ; bec3: bf 00 83 13
	.db $f0, $0a                 ; bec7: f0 0a
loc_bec9:
	inc $08fe                    ; bec9: ee fe 08
	inx                          ; becc: e8
	inx                          ; becd: e8
	inx                          ; bece: e8
	inx                          ; becf: e8
	jmp $bec3                    ; bed0: 4c c3 be

; --- Block at $bed3-$bed8 ---
loc_bed3:
	lda $08fe                    ; bed3: ad fe 08
	.db $d0, $01                 ; bed6: d0 01
loc_bed8:
	rts                          ; bed8: 60

; --- Block at $bed9-$bef2 ---
loc_bed9:
	stz $ae                      ; bed9: 64 ae
	ldx.w #$0000                 ; bedb: a2 00 00
	stx $af                      ; bede: 86 af
	ldx $09cf                    ; bee0: ae cf 09
	lda $138300,x                ; bee3: bf 00 83 13
	jsr $c0b7                    ; bee7: 20 b7 c0
loc_beea:
	lda $06                      ; beea: a5 06
	cmp.b #$2e                   ; beec: c9 2e
	.db $b0, $05                 ; beee: b0 05
loc_bef0:
	lda.b #$00                   ; bef0: a9 00
	jmp $bf09                    ; bef2: 4c 09 bf

; --- Block at $bef5-$befb ---
loc_bef5:
	cmp.b #$30                   ; bef5: c9 30
	.db $b0, $05                 ; bef7: b0 05
loc_bef9:
	lda.b #$03                   ; bef9: a9 03
	jmp $bf09                    ; befb: 4c 09 bf

; --- Block at $befe-$bf04 ---
loc_befe:
	cmp.b #$46                   ; befe: c9 46
	.db $b0, $05                 ; bf00: b0 05
loc_bf02:
	lda.b #$02                   ; bf02: a9 02
	jmp $bf09                    ; bf04: 4c 09 bf

; --- Block at $bf07-$bf09 ---
loc_bf07:
	lda.b #$01                   ; bf07: a9 01

; --- Block at $bf09-$bf35 ---
loc_bf09:
	sta $07                      ; bf09: 85 07
	ldx $09cf                    ; bf0b: ae cf 09
	ldy $af                      ; bf0e: a4 af
	lda $138303,x                ; bf10: bf 03 83 13
	sta $0901,y                  ; bf14: 99 01 09
	and.b #$03                   ; bf17: 29 03
	sta $0909,y                  ; bf19: 99 09 09
	inc                          ; bf1c: 1a
	sta $0902,y                  ; bf1d: 99 02 09
	lda $0901,y                  ; bf20: b9 01 09
	and.b #$fc                   ; bf23: 29 fc
	ora $07                      ; bf25: 05 07
	sta $0901,y                  ; bf27: 99 01 09
	lda $06                      ; bf2a: a5 06
	cmp.b #$0e                   ; bf2c: c9 0e
	.db $b0, $08                 ; bf2e: b0 08
loc_bf30:
	tax                          ; bf30: aa
	lda $15b2fa,x                ; bf31: bf fa b2 15
	jmp $bf43                    ; bf35: 4c 43 bf

; --- Block at $bf38-$bfd1 ---
loc_bf38:
	lda $138303,x                ; bf38: bf 03 83 13
	and.b #$0c                   ; bf3c: 29 0c
	lsr                          ; bf3e: 4a
	lsr                          ; bf3f: 4a
	clc                          ; bf40: 18
	adc.b #$04                   ; bf41: 69 04
loc_bf43:
	sta $090d,y                  ; bf43: 99 0d 09
	ldx $09cf                    ; bf46: ae cf 09
	lda $138300,x                ; bf49: bf 00 83 13
	sta $0907,y                  ; bf4d: 99 07 09
	lda $138301,x                ; bf50: bf 01 83 13
	.db $30, $05                 ; bf54: 30 05
loc_bf56:
	lda.b #$00                   ; bf56: a9 00
	sta $0902,y                  ; bf58: 99 02 09
loc_bf5b:
	lda $138301,x                ; bf5b: bf 01 83 13
	and.b #$3f                   ; bf5f: 29 3f
	sta $0904,y                  ; bf61: 99 04 09
	sta $0c                      ; bf64: 85 0c
	lda $138302,x                ; bf66: bf 02 83 13
	sta $0906,y                  ; bf6a: 99 06 09
	sta $0e                      ; bf6d: 85 0e
	lda $0907,y                  ; bf6f: b9 07 09
	jsr $c137                    ; bf72: 20 37 c1
loc_bf75:
	sta $090b,y                  ; bf75: 99 0b 09
	cmp.b #$00                   ; bf78: c9 00
	.db $f0, $03                 ; bf7a: f0 03
loc_bf7c:
	jsr $c08d                    ; bf7c: 20 8d c0
loc_bf7f:
	lda.b #$00                   ; bf7f: a9 00
	sta $08ff,y                  ; bf81: 99 ff 08
	sta $0903,y                  ; bf84: 99 03 09
	sta $0905,y                  ; bf87: 99 05 09
	sta $0900,y                  ; bf8a: 99 00 09
	sta $0908,y                  ; bf8d: 99 08 09
	sta $090c,y                  ; bf90: 99 0c 09
	lda $0904,y                  ; bf93: b9 04 09
	sta $3d                      ; bf96: 85 3d
	lda $0906,y                  ; bf98: b9 06 09
	sta $3e                      ; bf9b: 85 3e
	ldx $3d                      ; bf9d: a6 3d
	lda $7f5c71,x                ; bf9f: bf 71 5c 7f
	sta $3d                      ; bfa3: 85 3d
	stz $3e                      ; bfa5: 64 3e
	asl $3d                      ; bfa7: 06 3d
	rol $3e                      ; bfa9: 26 3e
	ldx $3d                      ; bfab: a6 3d
	lda $0edc,x                  ; bfad: bd dc 0e
	ldx $af                      ; bfb0: a6 af
	and.b #$08                   ; bfb2: 29 08
	sta $090a,x                  ; bfb4: 9d 0a 09
	ldx $09cf                    ; bfb7: ae cf 09
	inx                          ; bfba: e8
	inx                          ; bfbb: e8
	inx                          ; bfbc: e8
	inx                          ; bfbd: e8
	stx $09cf                    ; bfbe: 8e cf 09
	lda $af                      ; bfc1: a5 af
	clc                          ; bfc3: 18
	adc.b #$0f                   ; bfc4: 69 0f
	sta $af                      ; bfc6: 85 af
	inc $ae                      ; bfc8: e6 ae
	lda $ae                      ; bfca: a5 ae
	cmp $08fe                    ; bfcc: cd fe 08
	.db $f0, $03                 ; bfcf: f0 03
loc_bfd1:
	jmp $bee0                    ; bfd1: 4c e0 be

; --- Block at $bfd4-$c003 ---
loc_bfd4:
	lda.b #$0c                   ; bfd4: a9 0c
	sta $ae                      ; bfd6: 85 ae
	lda.b #$18                   ; bfd8: a9 18
	jsr $c0d3                    ; bfda: 20 d3 c0
loc_bfdd:
	lda.b #$1b                   ; bfdd: a9 1b
	inc $ae                      ; bfdf: e6 ae
	jsr $c0d3                    ; bfe1: 20 d3 c0
loc_bfe4:
	lda.b #$1c                   ; bfe4: a9 1c
	inc $ae                      ; bfe6: e6 ae
	jsr $c0d3                    ; bfe8: 20 d3 c0
loc_bfeb:
	lda $0fe1                    ; bfeb: ad e1 0f
	and.b #$0f                   ; bfee: 29 0f
	ldy.w #$0000                 ; bff0: a0 00 00
	jsr $c004                    ; bff3: 20 04 c0
loc_bff6:
	lda $0fe1                    ; bff6: ad e1 0f
	lsr                          ; bff9: 4a
	lsr                          ; bffa: 4a
	lsr                          ; bffb: 4a
	lsr                          ; bffc: 4a
	ldy.w #$0040                 ; bffd: a0 40 00
	jsr $c004                    ; c000: 20 04 c0
loc_c003:
	rts                          ; c003: 60

; --- Block at $c004-$c034 ---
loc_c004:
	sta $3e                      ; c004: 85 3e
	stz $3d                      ; c006: 64 3d
	lsr $3e                      ; c008: 46 3e
	ror $3d                      ; c00a: 66 3d
	lsr $3e                      ; c00c: 46 3e
	ror $3d                      ; c00e: 66 3d
	lsr $3e                      ; c010: 46 3e
	ror $3d                      ; c012: 66 3d
	ldx $3d                      ; c014: a6 3d
	lda $0d80d0,x                ; c016: bf d0 80 0d
	sta $0e5b,y                  ; c01a: 99 5b 0e
	inx                          ; c01d: e8
	iny                          ; c01e: c8
	tya                          ; c01f: 98
	and.b #$0f                   ; c020: 29 0f
	.db $d0, $f2                 ; c022: d0 f2
loc_c024:
	lda.b #$00                   ; c024: a9 00
	sta $0e5b,y                  ; c026: 99 5b 0e
	iny                          ; c029: c8
	tya                          ; c02a: 98
	and.b #$0f                   ; c02b: 29 0f
	.db $d0, $f5                 ; c02d: d0 f5
loc_c02f:
	tya                          ; c02f: 98
	and.b #$3f                   ; c030: 29 3f
	.db $d0, $e2                 ; c032: d0 e2
loc_c034:
	rts                          ; c034: 60

; --- Block at $c035-$c044 ---
loc_c035:
	ldx.w #$0000                 ; c035: a2 00 00
	lda.b #$00                   ; c038: a9 00
	sta $7f4c00,x                ; c03a: 9f 00 4c 7f
	inx                          ; c03e: e8
	cpx.w #$0400                 ; c03f: e0 00 04
	.db $d0, $f6                 ; c042: d0 f6
loc_c044:
	rts                          ; c044: 60

; --- Block at $c045-$c052 ---
loc_c045:
	phx                          ; c045: da
	jsr $c09d                    ; c046: 20 9d c0
loc_c049:
	ldx $3d                      ; c049: a6 3d
	lda.b #$00                   ; c04b: a9 00
	sta $7f4c00,x                ; c04d: 9f 00 4c 7f
	plx                          ; c051: fa
	rts                          ; c052: 60

; --- Block at $c053-$c069 ---
loc_c053:
	phx                          ; c053: da
	lda $0c                      ; c054: a5 0c
	cmp.b #$20                   ; c056: c9 20
	.db $b0, $12                 ; c058: b0 12
loc_c05a:
	lda $0e                      ; c05a: a5 0e
	cmp.b #$20                   ; c05c: c9 20
	.db $b0, $0c                 ; c05e: b0 0c
loc_c060:
	jsr $c09d                    ; c060: 20 9d c0
loc_c063:
	ldx $3d                      ; c063: a6 3d
	lda $7f4c00,x                ; c065: bf 00 4c 7f
	jmp $c06e                    ; c069: 4c 6e c0

; --- Block at $c06c-$c06f ---
loc_c06c:
	lda.b #$01                   ; c06c: a9 01
loc_c06e:
	plx                          ; c06e: fa
	rts                          ; c06f: 60

; --- Block at $c070-$c086 ---
loc_c070:
	phx                          ; c070: da
	lda $0c                      ; c071: a5 0c
	cmp.b #$20                   ; c073: c9 20
	.db $b0, $12                 ; c075: b0 12
loc_c077:
	lda $0e                      ; c077: a5 0e
	cmp.b #$20                   ; c079: c9 20
	.db $b0, $0c                 ; c07b: b0 0c
loc_c07d:
	jsr $c09d                    ; c07d: 20 9d c0
loc_c080:
	ldx $3d                      ; c080: a6 3d
	lda $7f4c00,x                ; c082: bf 00 4c 7f
	jmp $c08b                    ; c086: 4c 8b c0

; --- Block at $c089-$c08c ---
loc_c089:
	lda.b #$00                   ; c089: a9 00
loc_c08b:
	plx                          ; c08b: fa
	rts                          ; c08c: 60

; --- Block at $c08d-$c09c ---
loc_c08d:
	phx                          ; c08d: da
	jsr $c09d                    ; c08e: 20 9d c0
loc_c091:
	ldx $3d                      ; c091: a6 3d
	lda $ae                      ; c093: a5 ae
	ora.b #$80                   ; c095: 09 80
	sta $7f4c00,x                ; c097: 9f 00 4c 7f
	plx                          ; c09b: fa
	rts                          ; c09c: 60

; --- Block at $c09d-$c0b6 ---
loc_c09d:
	lda $0e                      ; c09d: a5 0e
	sta $3e                      ; c09f: 85 3e
	stz $3d                      ; c0a1: 64 3d
	lsr $3e                      ; c0a3: 46 3e
	ror $3d                      ; c0a5: 66 3d
	lsr $3e                      ; c0a7: 46 3e
	ror $3d                      ; c0a9: 66 3d
	lsr $3e                      ; c0ab: 46 3e
	ror $3d                      ; c0ad: 66 3d
	lda $3d                      ; c0af: a5 3d
	clc                          ; c0b1: 18
	adc $0c                      ; c0b2: 65 0c
	sta $3d                      ; c0b4: 85 3d
	rts                          ; c0b6: 60

; --- Block at $c0b7-$c0d2 ---
loc_c0b7:
	sta $3d                      ; c0b7: 85 3d
	stz $3e                      ; c0b9: 64 3e
	lda $0fe5                    ; c0bb: ad e5 0f
	.db $30, $05                 ; c0be: 30 05
loc_c0c0:
	lda $1701                    ; c0c0: ad 01 17
	.db $f0, $02                 ; c0c3: f0 02
loc_c0c5:
	inc $3e                      ; c0c5: e6 3e
loc_c0c7:
	ldx $3d                      ; c0c7: a6 3d
	lda $12f000,x                ; c0c9: bf 00 f0 12
	sta $06                      ; c0cd: 85 06
	jsr $c0d3                    ; c0cf: 20 d3 c0
loc_c0d2:
	rts                          ; c0d2: 60

; --- Block at $c0d3-$c0dd ---
loc_c0d3:
	cmp.b #$11                   ; c0d3: c9 11
	.db $b0, $09                 ; c0d5: b0 09
loc_c0d7:
	asl                          ; c0d7: 0a
	asl                          ; c0d8: 0a
	asl                          ; c0d9: 0a
	ldx.w #$0000                 ; c0da: a2 00 00
	jmp $c103                    ; c0dd: 4c 03 c1

; --- Block at $c0e0-$c0ec ---
loc_c0e0:
	cmp.b #$30                   ; c0e0: c9 30
	.db $b0, $0b                 ; c0e2: b0 0b
loc_c0e4:
	sec                          ; c0e4: 38
	sbc.b #$11                   ; c0e5: e9 11
	asl                          ; c0e7: 0a
	asl                          ; c0e8: 0a
	ldx.w #$3300                 ; c0e9: a2 00 33
	jmp $c103                    ; c0ec: 4c 03 c1

; --- Block at $c0ef-$c0fa ---
loc_c0ef:
	cmp.b #$46                   ; c0ef: c9 46
	.db $b0, $0a                 ; c0f1: b0 0a
loc_c0f3:
	sec                          ; c0f3: 38
	sbc.b #$30                   ; c0f4: e9 30
	asl                          ; c0f6: 0a
	ldx.w #$6180                 ; c0f7: a2 80 61
	jmp $c103                    ; c0fa: 4c 03 c1

; --- Block at $c0fd-$c103 ---
loc_c0fd:
	sec                          ; c0fd: 38
	sbc.b #$46                   ; c0fe: e9 46
	ldx.w #$7200                 ; c100: a2 00 72

; --- Block at $c103-$c136 ---
loc_c103:
	rep #$20                     ; c103: c2 20
	xba                          ; c105: eb
	lsr                          ; c106: 4a
	lsr                          ; c107: 4a
	sta $4a                      ; c108: 85 4a
	lsr                          ; c10a: 4a
	clc                          ; c10b: 18
	adc $4a                      ; c10c: 65 4a
	sta $4a                      ; c10e: 85 4a
	txa                          ; c110: 8a
	clc                          ; c111: 18
	adc $4a                      ; c112: 65 4a
	clc                          ; c114: 18
	adc.w #RESET                 ; c115: 69 00 80
	sta $4a                      ; c118: 85 4a
	lda.w #$0000                 ; c11a: a9 00 00
	sep #$20                     ; c11d: e2 20
	lda $ae                      ; c11f: a5 ae
	asl                          ; c121: 0a
	clc                          ; c122: 18
	adc.b #$42                   ; c123: 69 42
	sta $4d                      ; c125: 85 4d
	stz $4c                      ; c127: 64 4c
	ldx.w #$0200                 ; c129: a2 00 02
	stx $4e                      ; c12c: 86 4e
	lda.b #$1b                   ; c12e: a9 1b
	sta $49                      ; c130: 85 49
	jsl $15b000                  ; c132: 22 00 b0 15
loc_c136:
	rts                          ; c136: 60

; --- Block at $c137-$c166 ---
loc_c137:
	phy                          ; c137: 5a
	pha                          ; c138: 48
	and.b #$07                   ; c139: 29 07
	sta $07                      ; c13b: 85 07
	pla                          ; c13d: 68
	lsr                          ; c13e: 4a
	lsr                          ; c13f: 4a
	lsr                          ; c140: 4a
	sta $3d                      ; c141: 85 3d
	lda $0fe5                    ; c143: ad e5 0f
	.db $30, $05                 ; c146: 30 05
loc_c148:
	lda $1701                    ; c148: ad 01 17
	.db $f0, $07                 ; c14b: f0 07
loc_c14d:
	lda $3d                      ; c14d: a5 3d
	clc                          ; c14f: 18
	adc.b #$20                   ; c150: 69 20
	sta $3d                      ; c152: 85 3d
loc_c154:
	stz $3e                      ; c154: 64 3e
	lda $07                      ; c156: a5 07
	tay                          ; c158: a8
	ldx $3d                      ; c159: a6 3d
	lda.l $0012e0,x              ; c15b: bf e0 12 00
	cpy.w #$0000                 ; c15f: c0 00 00
	.db $f0, $05                 ; c162: f0 05
loc_c164:
	lsr                          ; c164: 4a
	dey                          ; c165: 88
	jmp $c15f                    ; c166: 4c 5f c1

; --- Block at $c169-$c16f ---
loc_c169:
	lsr                          ; c169: 4a
	lda.b #$00                   ; c16a: a9 00
	adc.b #$00                   ; c16c: 69 00
	ply                          ; c16e: 7a
	rts                          ; c16f: 60

; --- Block at $c170-$c17b ---
loc_c170:
	phx                          ; c170: da
	lda $78                      ; c171: a5 78
	tax                          ; c173: aa
	lda $14ee00,x                ; c174: bf 00 ee 14
	inc $78                      ; c178: e6 78
	plx                          ; c17a: fa
	rts                          ; c17b: 60

; --- Block at $dded-$de07 ---
loc_dded:
	stz $e5                      ; dded: 64 e5
	lda $0acd                    ; ddef: ad cd 0a
	asl                          ; ddf2: 0a
	asl                          ; ddf3: 0a
	asl                          ; ddf4: 0a
	asl                          ; ddf5: 0a
	asl                          ; ddf6: 0a
	tay                          ; ddf7: a8
	ldx.w #$0000                 ; ddf8: a2 00 00
	lda $0ace                    ; ddfb: ad ce 0a
	.db $d0, $0a                 ; ddfe: d0 0a
loc_de00:
	lda $0d81f0,x                ; de00: bf f0 81 0d
	sta $0ddb,y                  ; de04: 99 db 0d
	jmp $de11                    ; de07: 4c 11 de

; --- Block at $de0a-$de2e ---
loc_de0a:
	lda $0d8200,x                ; de0a: bf 00 82 0d
	sta $0dfb,y                  ; de0e: 99 fb 0d
loc_de11:
	iny                          ; de11: c8
	inx                          ; de12: e8
	cpx.w #$0010                 ; de13: e0 10 00
	.db $d0, $e3                 ; de16: d0 e3
loc_de18:
	ldx.w #$0000                 ; de18: a2 00 00
	txa                          ; de1b: 8a
	lsr                          ; de1c: 4a
	lsr                          ; de1d: 4a
	and.b #$03                   ; de1e: 29 03
	eor.b #$ff                   ; de20: 49 ff
	sta $0a6d,x                  ; de22: 9d 6d 0a
	inx                          ; de25: e8
	inx                          ; de26: e8
	inx                          ; de27: e8
	inx                          ; de28: e8
	cpx.w #$0040                 ; de29: e0 40 00
	.db $d0, $ed                 ; de2c: d0 ed
loc_de2e:
	rts                          ; de2e: 60

; --- Block at $de2f-$de4a ---
loc_de2f:
	jsr $8f77                    ; de2f: 20 77 8f
loc_de32:
	jsr $df38                    ; de32: 20 38 df
loc_de35:
	ldx.w #$0000                 ; de35: a2 00 00
	stx $24                      ; de38: 86 24
	ldx $24                      ; de3a: a6 24
	lda $7a                      ; de3c: a5 7a
	and.b #$07                   ; de3e: 29 07
	.db $d0, $03                 ; de40: d0 03
loc_de42:
	inc $0a6d,x                  ; de42: fe 6d 0a
loc_de45:
	lda $0a6d,x                  ; de45: bd 6d 0a
	.db $10, $03                 ; de48: 10 03
loc_de4a:
	jmp $deb5                    ; de4a: 4c b5 de

; --- Block at $de4d-$de8a ---
loc_de4d:
	.db $f0, $04                 ; de4d: f0 04
loc_de4f:
	cmp.b #$04                   ; de4f: c9 04
	.db $d0, $57                 ; de51: d0 57
loc_de53:
	lda $7a                      ; de53: a5 7a
	and.b #$07                   ; de55: 29 07
	.db $d0, $51                 ; de57: d0 51
loc_de59:
	lda $e5                      ; de59: a5 e5
	.db $d0, $53                 ; de5b: d0 53
loc_de5d:
	stz $0a6d,x                  ; de5d: 9e 6d 0a
	lda $c7                      ; de60: a5 c7
	.db $d0, $29                 ; de62: d0 29
loc_de64:
	lda $0ad0                    ; de64: ad d0 0a
	tax                          ; de67: aa
	jsr $c170                    ; de68: 20 70 c1
loc_de6b:
	and $df34,x                  ; de6b: 3d 34 df
	clc                          ; de6e: 18
	adc $0ad4                    ; de6f: 6d d4 0a
	ldx $24                      ; de72: a6 24
	sta $0a6e,x                  ; de74: 9d 6e 0a
	lda $0ad1                    ; de77: ad d1 0a
	tax                          ; de7a: aa
	jsr $c170                    ; de7b: 20 70 c1
loc_de7e:
	and $df34,x                  ; de7e: 3d 34 df
	clc                          ; de81: 18
	adc $0ad5                    ; de82: 6d d5 0a
	ldx $24                      ; de85: a6 24
	sta $0a6f,x                  ; de87: 9d 6f 0a
	jmp $deaa                    ; de8a: 4c aa de

; --- Block at $de8d-$deaa ---
loc_de8d:
	lda $c7                      ; de8d: a5 c7
	dec                          ; de8f: 3a
	and.b #$0f                   ; de90: 29 0f
	asl                          ; de92: 0a
	tay                          ; de93: a8
	lda $c767,y                  ; de94: b9 67 c7
	clc                          ; de97: 18
	adc $0ad4                    ; de98: 6d d4 0a
	sta $0a6e,x                  ; de9b: 9d 6e 0a
	lda $c768,y                  ; de9e: b9 68 c7
	clc                          ; dea1: 18
	adc $0ad5                    ; dea2: 6d d5 0a
	sta $0a6f,x                  ; dea5: 9d 6f 0a
	inc $c7                      ; dea8: e6 c7

; --- Block at $deaa-$dead ---
loc_deaa:
	jsr $ded2                    ; deaa: 20 d2 de
loc_dead:
	jmp $deb5                    ; dead: 4c b5 de

; --- Block at $deb0-$deb5 ---
loc_deb0:
	lda.b #$ff                   ; deb0: a9 ff
	sta $0a6d,x                  ; deb2: 9d 6d 0a

; --- Block at $deb5-$dec1 ---
loc_deb5:
	lda $24                      ; deb5: a5 24
	clc                          ; deb7: 18
	adc.b #$04                   ; deb8: 69 04
	sta $24                      ; deba: 85 24
	cmp $0acf                    ; debc: cd cf 0a
	.db $f0, $03                 ; debf: f0 03
loc_dec1:
	jmp $de3a                    ; dec1: 4c 3a de

; --- Block at $dec4-$ded1 ---
loc_dec4:
	lda $7a                      ; dec4: a5 7a
	and.b #$07                   ; dec6: 29 07
	.db $d0, $07                 ; dec8: d0 07
loc_deca:
	ldx $0ad2                    ; deca: ae d2 0a
	dex                          ; decd: ca
	stx $0ad2                    ; dece: 8e d2 0a
loc_ded1:
	rts                          ; ded1: 60

; --- Block at $ded2-$df06 ---
loc_ded2:
	lda $0a6d,x                  ; ded2: bd 6d 0a
	tay                          ; ded5: a8
	lda $df2c,y                  ; ded6: b9 2c df
	tay                          ; ded9: a8
	lda $0a6e,x                  ; deda: bd 6e 0a
	sta $20                      ; dedd: 85 20
	lda $0a6f,x                  ; dedf: bd 6f 0a
	sta $21                      ; dee2: 85 21
	lda $24                      ; dee4: a5 24
	asl                          ; dee6: 0a
	asl                          ; dee7: 0a
	tax                          ; dee8: aa
	phx                          ; dee9: da
	phy                          ; deea: 5a
	plx                          ; deeb: fa
	ply                          ; deec: 7a
	lda $20                      ; deed: a5 20
	clc                          ; deef: 18
	adc $14f9d6,x                ; def0: 7f d6 f9 14
	sta $0300,y                  ; def4: 99 00 03
	lda $14f9d7,x                ; def7: bf d7 f9 14
	cmp.b #$ff                   ; defb: c9 ff
	.db $f0, $0a                 ; defd: f0 0a
loc_deff:
	lda $21                      ; deff: a5 21
	clc                          ; df01: 18
	adc $14f9d7,x                ; df02: 7f d7 f9 14
	jmp $df0b                    ; df06: 4c 0b df

; --- Block at $df09-$df2b ---
loc_df09:
	lda.b #$f0                   ; df09: a9 f0
loc_df0b:
	sta $0301,y                  ; df0b: 99 01 03
	lda $14f9d8,x                ; df0e: bf d8 f9 14
	sta $0302,y                  ; df12: 99 02 03
	lda $0acd                    ; df15: ad cd 0a
	asl                          ; df18: 0a
	ora $0ace                    ; df19: 0d ce 0a
	ora $14f9d9,x                ; df1c: 1f d9 f9 14
	sta $0303,y                  ; df20: 99 03 03
	jsr $86c2                    ; df23: 20 c2 86
loc_df26:
	txa                          ; df26: 8a
	and.b #$0f                   ; df27: 29 0f
	.db $d0, $c2                 ; df29: d0 c2
loc_df2b:
	rts                          ; df2b: 60

; --- Block at $df38-$df46 ---
loc_df38:
	ldx.w #$0000                 ; df38: a2 00 00
	lda.b #$aa                   ; df3b: a9 aa
	sta $0500,x                  ; df3d: 9d 00 05
	inx                          ; df40: e8
	cpx.w #$0008                 ; df41: e0 08 00
	.db $d0, $f7                 ; df44: d0 f7
loc_df46:
	rts                          ; df46: 60

; --- Block at $df63-$dfad ---
loc_df63:
	stz $3e                      ; df63: 64 3e
	asl                          ; df65: 0a
	rol $3e                      ; df66: 26 3e
	sta $3d                      ; df68: 85 3d
	ldx $3d                      ; df6a: a6 3d
	lda $128000,x                ; df6c: bf 00 80 12
	sta $09d3                    ; df70: 8d d3 09
	lda $128001,x                ; df73: bf 01 80 12
	sta $09d4                    ; df77: 8d d4 09
	lda.b #$0f                   ; df7a: a9 0f
	sta $80                      ; df7c: 85 80
	ldy.w #$0000                 ; df7e: a0 00 00
	lda.b #$01                   ; df81: a9 01
	sta $0a15                    ; df83: 8d 15 0a
	ldx $09d3                    ; df86: ae d3 09
	lda $128200,x                ; df89: bf 00 82 12
	cmp.b #$ff                   ; df8d: c9 ff
	.db $d0, $1d                 ; df8f: d0 1d
loc_df91:
	lda $1703                    ; df91: ad 03 17
	stz $3d                      ; df94: 64 3d
	lsr                          ; df96: 4a
	ror $3d                      ; df97: 66 3d
	lsr                          ; df99: 4a
	ror $3d                      ; df9a: 66 3d
	sta $3e                      ; df9c: 85 3e
	ldx $3d                      ; df9e: a6 3d
	lda $1000,x                  ; dfa0: bd 00 10
	.db $d0, $04                 ; dfa3: d0 04
loc_dfa5:
	jsl $15c864                  ; dfa5: 22 64 c8 15
loc_dfa9:
	lda.b #$01                   ; dfa9: a9 01
	sta $e0                      ; dfab: 85 e0
	rts                          ; dfad: 60

; --- Block at $dfae-$dfcf ---
loc_dfae:
	cmp.b #$eb                   ; dfae: c9 eb
	.db $d0, $20                 ; dfb0: d0 20
loc_dfb2:
	inx                          ; dfb2: e8
	lda $128200,x                ; dfb3: bf 00 82 12
	sta $0a15                    ; dfb7: 8d 15 0a
	inx                          ; dfba: e8
	lda $128200,x                ; dfbb: bf 00 82 12
	sta $07                      ; dfbf: 85 07
	inx                          ; dfc1: e8
	lda $128200,x                ; dfc2: bf 00 82 12
	sta $09d5,y                  ; dfc6: 99 d5 09
	inx                          ; dfc9: e8
	iny                          ; dfca: c8
	dec $07                      ; dfcb: c6 07
	.db $d0, $f3                 ; dfcd: d0 f3
loc_dfcf:
	jmp $e007                    ; dfcf: 4c 07 e0

; --- Block at $dfd2-$e017 ---
loc_dfd2:
	cmp.b #$db                   ; dfd2: c9 db
	.db $90, $2c                 ; dfd4: 90 2c
loc_dfd6:
	cmp.b #$e2                   ; dfd6: c9 e2
	.db $f0, $16                 ; dfd8: f0 16
loc_dfda:
	cmp.b #$fe                   ; dfda: c9 fe
	.db $d0, $1b                 ; dfdc: d0 1b
loc_dfde:
	sta $09d5,y                  ; dfde: 99 d5 09
	inx                          ; dfe1: e8
	iny                          ; dfe2: c8
	lda $128200,x                ; dfe3: bf 00 82 12
	sta $09d5,y                  ; dfe7: 99 d5 09
	inx                          ; dfea: e8
	iny                          ; dfeb: c8
	lda $128200,x                ; dfec: bf 00 82 12
loc_dff0:
	sta $09d5,y                  ; dff0: 99 d5 09
	inx                          ; dff3: e8
	iny                          ; dff4: c8
	lda $128200,x                ; dff5: bf 00 82 12
loc_dff9:
	sta $09d5,y                  ; dff9: 99 d5 09
	inx                          ; dffc: e8
	iny                          ; dffd: c8
	lda $128200,x                ; dffe: bf 00 82 12
loc_e002:
	sta $09d5,y                  ; e002: 99 d5 09
	inx                          ; e005: e8
	iny                          ; e006: c8
loc_e007:
	stx $09d3                    ; e007: 8e d3 09
	lda.b #$ff                   ; e00a: a9 ff
	sta $09d5,y                  ; e00c: 99 d5 09
	jsr $e01a                    ; e00f: 20 1a e0
loc_e012:
	dec $0a15                    ; e012: ce 15 0a
	.db $d0, $f8                 ; e015: d0 f8
loc_e017:
	jmp $df7e                    ; e017: 4c 7e df

; --- Block at $e01a-$e029 ---
loc_e01a:
	ldx.w #$0000                 ; e01a: a2 00 00
	stx $b3                      ; e01d: 86 b3
	lda $09d5,x                  ; e01f: bd d5 09
	sta $0a16                    ; e022: 8d 16 0a
	cmp.b #$d0                   ; e025: c9 d0
	.db $90, $03                 ; e027: 90 03
loc_e029:
	jmp $e0b8                    ; e029: 4c b8 e0

; --- Block at $e02c-$e038 ---
loc_e02c:
	ldx $b3                      ; e02c: a6 b3
	lda $09d5,x                  ; e02e: bd d5 09
	sta $0a16                    ; e031: 8d 16 0a
	cmp.b #$ff                   ; e034: c9 ff
	.db $d0, $03                 ; e036: d0 03
loc_e038:
	jmp $e050                    ; e038: 4c 50 e0

; --- Block at $e03b-$e042 ---
loc_e03b:
	cmp.b #$c0                   ; e03b: c9 c0
	.db $b0, $06                 ; e03d: b0 06
loc_e03f:
	jsr $e0d7                    ; e03f: 20 d7 e0
loc_e042:
	jmp $e048                    ; e042: 4c 48 e0

; --- Block at $e045-$e04d ---
loc_e045:
	jsr $e221                    ; e045: 20 21 e2
loc_e048:
	ldx $b3                      ; e048: a6 b3
	inx                          ; e04a: e8
	stx $b3                      ; e04b: 86 b3
	jmp $e02c                    ; e04d: 4c 2c e0

; --- Block at $e050-$e074 ---
loc_e050:
	jsr $8f0f                    ; e050: 20 0f 8f
loc_e053:
	stz $d5                      ; e053: 64 d5
	jsr $8f59                    ; e055: 20 59 8f
loc_e058:
	jsr $9d4e                    ; e058: 20 4e 9d
loc_e05b:
	lda $1700                    ; e05b: ad 00 17
	cmp.b #$03                   ; e05e: c9 03
	.db $f0, $15                 ; e060: f0 15
loc_e062:
	jsr $a653                    ; e062: 20 53 a6
loc_e065:
	jsr $92a2                    ; e065: 20 a2 92
loc_e068:
	lda $ac                      ; e068: a5 ac
	tax                          ; e06a: aa
	lda $7b                      ; e06b: a5 7b
	and $e2c7,x                  ; e06d: 3d c7 e2
	.db $d0, $de                 ; e070: d0 de
loc_e072:
	stz $ab                      ; e072: 64 ab
	jmp $e0b3                    ; e074: 4c b3 e0

; --- Block at $e077-$e0b7 ---
loc_e077:
	jsr $a653                    ; e077: 20 53 a6
loc_e07a:
	jsr $bd54                    ; e07a: 20 54 bd
loc_e07d:
	jsl $15b1e0                  ; e07d: 22 e0 b1 15
loc_e081:
	jsr $b8b0                    ; e081: 20 b0 b8
loc_e084:
	lda $ab                      ; e084: a5 ab
	.db $f0, $0c                 ; e086: f0 0c
loc_e088:
	lda $ac                      ; e088: a5 ac
	tax                          ; e08a: aa
	lda $7b                      ; e08b: a5 7b
	and $e2c7,x                  ; e08d: 3d c7 e2
	.db $d0, $be                 ; e090: d0 be
loc_e092:
	stz $ab                      ; e092: 64 ab
loc_e094:
	ldx.w #$0000                 ; e094: a2 00 00
	stx $3d                      ; e097: 86 3d
	lda $08fe                    ; e099: ad fe 08
	.db $f0, $15                 ; e09c: f0 15
loc_e09e:
	tay                          ; e09e: a8
	ldx $3d                      ; e09f: a6 3d
	lda $0908,x                  ; e0a1: bd 08 09
	.db $d0, $aa                 ; e0a4: d0 aa
loc_e0a6:
	stz $090c,x                  ; e0a6: 9e 0c 09
	lda $3d                      ; e0a9: a5 3d
	clc                          ; e0ab: 18
	adc.b #$0f                   ; e0ac: 69 0f
	sta $3d                      ; e0ae: 85 3d
	dey                          ; e0b0: 88
	.db $d0, $ec                 ; e0b1: d0 ec
loc_e0b3:
	lda.b #$01                   ; e0b3: a9 01
	sta $d5                      ; e0b5: 85 d5
	rts                          ; e0b7: 60

; --- Block at $e0b8-$e0d0 ---
loc_e0b8:
	sec                          ; e0b8: 38
	sbc.b #$d0                   ; e0b9: e9 d0
	stz $3e                      ; e0bb: 64 3e
	asl                          ; e0bd: 0a
	rol $3e                      ; e0be: 26 3e
	sta $3d                      ; e0c0: 85 3d
	ldx $3d                      ; e0c2: a6 3d
	lda $e2e6,x                  ; e0c4: bd e6 e2
	sta $3d                      ; e0c7: 85 3d
	lda $e2e7,x                  ; e0c9: bd e7 e2
	sta $3e                      ; e0cc: 85 3e
	ldx $b3                      ; e0ce: a6 b3
	jmp ($063d)                  ; e0d0: 6c 3d 06

; --- Block at $e0d7-$e0e9 ---
loc_e0d7:
	sta $ae                      ; e0d7: 85 ae
	lsr                          ; e0d9: 4a
	lsr                          ; e0da: 4a
	lsr                          ; e0db: 4a
	lsr                          ; e0dc: 4a
	tay                          ; e0dd: a8
	lda.b #$00                   ; e0de: a9 00
	cpy.w #$0000                 ; e0e0: c0 00 00
	.db $f0, $07                 ; e0e3: f0 07
loc_e0e5:
	dey                          ; e0e5: 88
	clc                          ; e0e6: 18
	adc.b #$0f                   ; e0e7: 69 0f
	jmp $e0e0                    ; e0e9: 4c e0 e0

; --- Block at $e0ec-$e112 ---
loc_e0ec:
	tax                          ; e0ec: aa
	stx $0a47                    ; e0ed: 8e 47 0a
	lda.b #$40                   ; e0f0: a9 40
	sta $0908,x                  ; e0f2: 9d 08 09
	lda $ae                      ; e0f5: a5 ae
	and.b #$0f                   ; e0f7: 29 0f
	cmp.b #$04                   ; e0f9: c9 04
	.db $b0, $18                 ; e0fb: b0 18
loc_e0fd:
	inc                          ; e0fd: 1a
	sta $0902,x                  ; e0fe: 9d 02 09
	lda $cf                      ; e101: a5 cf
	.db $d0, $07                 ; e103: d0 07
loc_e105:
	lda $0902,x                  ; e105: bd 02 09
	dec                          ; e108: 3a
	sta $0909,x                  ; e109: 9d 09 09
loc_e10c:
	lda $ea                      ; e10c: a5 ea
	.db $d0, $02                 ; e10e: d0 02
loc_e110:
	inc $ea                      ; e110: e6 ea
loc_e112:
	jmp $e210                    ; e112: 4c 10 e2

; --- Block at $e115-$e11f ---
loc_e115:
	cmp.b #$08                   ; e115: c9 08
	.db $b0, $09                 ; e117: b0 09
loc_e119:
	sec                          ; e119: 38
	sbc.b #$04                   ; e11a: e9 04
	sta $0909,x                  ; e11c: 9d 09 09
	jmp $e21d                    ; e11f: 4c 1d e2

; --- Block at $e122-$e169 ---
loc_e122:
	cmp.b #$08                   ; e122: c9 08
	.db $d0, $58                 ; e124: d0 58
loc_e126:
	stz $0902,x                  ; e126: 9e 02 09
	lda $0906,x                  ; e129: bd 06 09
	sta $3e                      ; e12c: 85 3e
	stz $3d                      ; e12e: 64 3d
	lsr $3e                      ; e130: 46 3e
	ror $3d                      ; e132: 66 3d
	lsr $3e                      ; e134: 46 3e
	ror $3d                      ; e136: 66 3d
	lsr $3e                      ; e138: 46 3e
	ror $3d                      ; e13a: 66 3d
	lda $3d                      ; e13c: a5 3d
	clc                          ; e13e: 18
	adc $0904,x                  ; e13f: 7d 04 09
	sta $3d                      ; e142: 85 3d
	lda $ae                      ; e144: a5 ae
	lsr                          ; e146: 4a
	lsr                          ; e147: 4a
	lsr                          ; e148: 4a
	lsr                          ; e149: 4a
	clc                          ; e14a: 18
	adc.b #$80                   ; e14b: 69 80
	sta $06                      ; e14d: 85 06
	lda $090b,x                  ; e14f: bd 0b 09
	.db $f0, $18                 ; e152: f0 18
loc_e154:
	stz $090b,x                  ; e154: 9e 0b 09
	phx                          ; e157: da
	ldx $3d                      ; e158: a6 3d
	lda $7f4c00,x                ; e15a: bf 00 4c 7f
	cmp $06                      ; e15e: c5 06
	.db $d0, $06                 ; e160: d0 06
loc_e162:
	lda.b #$00                   ; e162: a9 00
	sta $7f4c00,x                ; e164: 9f 00 4c 7f
loc_e168:
	plx                          ; e168: fa
	jmp $e21d                    ; e169: 4c 1d e2

; --- Block at $e16c-$e17b ---
loc_e16c:
	lda.b #$01                   ; e16c: a9 01
	sta $090b,x                  ; e16e: 9d 0b 09
	phx                          ; e171: da
	ldx $3d                      ; e172: a6 3d
	lda $06                      ; e174: a5 06
	sta $7f4c00,x                ; e176: 9f 00 4c 7f
	plx                          ; e17a: fa
	jmp $e21d                    ; e17b: 4c 1d e2

; --- Block at $e17e-$e1a3 ---
loc_e17e:
	cmp.b #$09                   ; e17e: c9 09
	.db $d0, $3a                 ; e180: d0 3a
loc_e182:
	lda $0909,x                  ; e182: bd 09 09
	and.b #$01                   ; e185: 29 01
	.db $f0, $10                 ; e187: f0 10
loc_e189:
	lda $0909,x                  ; e189: bd 09 09
	and.b #$02                   ; e18c: 29 02
	.db $d0, $16                 ; e18e: d0 16
loc_e190:
	lda.b #$02                   ; e190: a9 02
	sta $0902,x                  ; e192: 9d 02 09
	dec                          ; e195: 3a
	sta $0909,x                  ; e196: 9d 09 09
loc_e199:
	lda.b #$01                   ; e199: a9 01
	sta $090c,x                  ; e19b: 9d 0c 09
	lda.b #$80                   ; e19e: a9 80
	sta $0908,x                  ; e1a0: 9d 08 09
	jmp $e210                    ; e1a3: 4c 10 e2

; --- Block at $e1a6-$e1b9 ---
loc_e1a6:
	lda.b #$04                   ; e1a6: a9 04
	sta $0902,x                  ; e1a8: 9d 02 09
	dec                          ; e1ab: 3a
	sta $0909,x                  ; e1ac: 9d 09 09
	lda.b #$01                   ; e1af: a9 01
	sta $090c,x                  ; e1b1: 9d 0c 09
	lda.b #$80                   ; e1b4: a9 80
	sta $0908,x                  ; e1b6: 9d 08 09
	jmp $e210                    ; e1b9: 4c 10 e2

; --- Block at $e1bc-$e1cd ---
loc_e1bc:
	cmp.b #$0a                   ; e1bc: c9 0a
	.db $d0, $10                 ; e1be: d0 10
loc_e1c0:
	stz $08ff,x                  ; e1c0: 9e ff 08
	lda.b #$02                   ; e1c3: a9 02
	sta $090c,x                  ; e1c5: 9d 0c 09
	lda.b #$40                   ; e1c8: a9 40
	sta $0908,x                  ; e1ca: 9d 08 09
	jmp $e21d                    ; e1cd: 4c 1d e2

; --- Block at $e1d0-$e1e1 ---
loc_e1d0:
	cmp.b #$0b                   ; e1d0: c9 0b
	.db $d0, $10                 ; e1d2: d0 10
loc_e1d4:
	stz $08ff,x                  ; e1d4: 9e ff 08
	lda.b #$03                   ; e1d7: a9 03
	sta $090c,x                  ; e1d9: 9d 0c 09
	lda.b #$80                   ; e1dc: a9 80
	sta $0908,x                  ; e1de: 9d 08 09
	jmp $e21d                    ; e1e1: 4c 1d e2

; --- Block at $e1e4-$e1ed ---
loc_e1e4:
	cmp.b #$0c                   ; e1e4: c9 0c
	.db $d0, $08                 ; e1e6: d0 08
loc_e1e8:
	lda.b #$05                   ; e1e8: a9 05
	sta $0909,x                  ; e1ea: 9d 09 09
	jmp $e21d                    ; e1ed: 4c 1d e2

; --- Block at $e1f0-$e1f9 ---
loc_e1f0:
	cmp.b #$0d                   ; e1f0: c9 0d
	.db $d0, $08                 ; e1f2: d0 08
loc_e1f4:
	lda.b #$04                   ; e1f4: a9 04
	sta $0909,x                  ; e1f6: 9d 09 09
	jmp $e21d                    ; e1f9: 4c 1d e2

; --- Block at $e1fc-$e205 ---
loc_e1fc:
	cmp.b #$0e                   ; e1fc: c9 0e
	.db $d0, $08                 ; e1fe: d0 08
loc_e200:
	lda.b #$06                   ; e200: a9 06
	sta $0909,x                  ; e202: 9d 09 09
	jmp $e21d                    ; e205: 4c 1d e2

; --- Block at $e208-$e20d ---
loc_e208:
	lda.b #$07                   ; e208: a9 07
	sta $0909,x                  ; e20a: 9d 09 09
	jmp $e21d                    ; e20d: 4c 1d e2

; --- Block at $e210-$e220 ---
loc_e210:
	lda $0904,x                  ; e210: bd 04 09
	sta $0c                      ; e213: 85 0c
	lda $0906,x                  ; e215: bd 06 09
	sta $0e                      ; e218: 85 0e
	jsr $c045                    ; e21a: 20 45 c0
loc_e21d:
	stz $08ff,x                  ; e21d: 9e ff 08
	rts                          ; e220: 60

; --- Block at $e221-$e234 ---
loc_e221:
	cmp.b #$c4                   ; e221: c9 c4
	.db $b0, $12                 ; e223: b0 12
loc_e225:
	sec                          ; e225: 38
	sbc.b #$c0                   ; e226: e9 c0
	asl                          ; e228: 0a
	tay                          ; e229: a8
	lda $e2bf,y                  ; e22a: b9 bf e2
	sta $04                      ; e22d: 85 04
	lda $e2c0,y                  ; e22f: b9 c0 e2
	sta $05                      ; e232: 85 05
	jmp $e2ac                    ; e234: 4c ac e2

; --- Block at $e237-$e245 ---
loc_e237:
	stz $04                      ; e237: 64 04
	stz $05                      ; e239: 64 05
	cmp.b #$c8                   ; e23b: c9 c8
	.db $b0, $09                 ; e23d: b0 09
loc_e23f:
	sec                          ; e23f: 38
	sbc.b #$c4                   ; e240: e9 c4
	sta $1705                    ; e242: 8d 05 17
	jmp $e2ac                    ; e245: 4c ac e2

; --- Block at $e248-$e250 ---
loc_e248:
	cmp.b #$c8                   ; e248: c9 c8
	.db $d0, $07                 ; e24a: d0 07
loc_e24c:
	lda.b #$01                   ; e24c: a9 01
	sta $d3                      ; e24e: 85 d3
	jmp $e2ac                    ; e250: 4c ac e2

; --- Block at $e253-$e259 ---
loc_e253:
	cmp.b #$c9                   ; e253: c9 c9
	.db $d0, $05                 ; e255: d0 05
loc_e257:
	stz $d3                      ; e257: 64 d3
	jmp $e2ac                    ; e259: 4c ac e2

; --- Block at $e25c-$e265 ---
loc_e25c:
	cmp.b #$ca                   ; e25c: c9 ca
	.db $d0, $08                 ; e25e: d0 08
loc_e260:
	lda.b #$05                   ; e260: a9 05
	sta $1705                    ; e262: 8d 05 17
	jmp $e2a6                    ; e265: 4c a6 e2

; --- Block at $e268-$e271 ---
loc_e268:
	cmp.b #$cb                   ; e268: c9 cb
	.db $d0, $08                 ; e26a: d0 08
loc_e26c:
	lda.b #$04                   ; e26c: a9 04
	sta $1705                    ; e26e: 8d 05 17
	jmp $e2a6                    ; e271: 4c a6 e2

; --- Block at $e274-$e27d ---
loc_e274:
	cmp.b #$cc                   ; e274: c9 cc
	.db $d0, $08                 ; e276: d0 08
loc_e278:
	lda.b #$06                   ; e278: a9 06
	sta $1705                    ; e27a: 8d 05 17
	jmp $e2a6                    ; e27d: 4c a6 e2

; --- Block at $e280-$e289 ---
loc_e280:
	cmp.b #$cd                   ; e280: c9 cd
	.db $d0, $08                 ; e282: d0 08
loc_e284:
	lda.b #$07                   ; e284: a9 07
	sta $1705                    ; e286: 8d 05 17
	jmp $e2a6                    ; e289: 4c a6 e2

; --- Block at $e28c-$e296 ---
loc_e28c:
	cmp.b #$ce                   ; e28c: c9 ce
	.db $d0, $09                 ; e28e: d0 09
loc_e290:
	lda $cf                      ; e290: a5 cf
	eor.b #$01                   ; e292: 49 01
	sta $cf                      ; e294: 85 cf
	jmp $e2a6                    ; e296: 4c a6 e2

; --- Block at $e299-$e29f ---
loc_e299:
	lda $d8                      ; e299: a5 d8
	.db $d0, $05                 ; e29b: d0 05
loc_e29d:
	lda.b #$01                   ; e29d: a9 01
	jmp $e2a4                    ; e29f: 4c a4 e2

; --- Block at $e2a2-$e2a6 ---
loc_e2a2:
	lda.b #$00                   ; e2a2: a9 00
loc_e2a4:
	sta $d8                      ; e2a4: 85 d8

; --- Block at $e2a6-$e2ac ---
loc_e2a6:
	stz $ab                      ; e2a6: 64 ab
	stz $02                      ; e2a8: 64 02
	stz $03                      ; e2aa: 64 03

; --- Block at $e2ac-$e2b8 ---
loc_e2ac:
	stz $7b                      ; e2ac: 64 7b
	lda $1700                    ; e2ae: ad 00 17
	cmp.b #$03                   ; e2b1: c9 03
	.db $f0, $06                 ; e2b3: f0 06
loc_e2b5:
	jsr $a966                    ; e2b5: 20 66 a9
loc_e2b8:
	jmp $e2be                    ; e2b8: 4c be e2

; --- Block at $e2bb-$e2be ---
loc_e2bb:
	jsr $a723                    ; e2bb: 20 23 a7
loc_e2be:
	rts                          ; e2be: 60

; --- Block at $e530-$e53d ---
loc_e530:
	rep #$20                     ; e530: c2 20
	txa                          ; e532: 8a
	clc                          ; e533: 18
	adc.w #$0040                 ; e534: 69 40 00
	tax                          ; e537: aa
	lda.w #$0000                 ; e538: a9 00 00
	sep #$20                     ; e53b: e2 20
	rts                          ; e53d: 60

; --- Block at $e65e-$e660 ---
loc_e65e:
	lda.b #$00                   ; e65e: a9 00
	jmp $e66e                    ; e660: 4c 6e e6

; --- Block at $e66e-$e699 ---
loc_e66e:
	sta $07                      ; e66e: 85 07
	asl                          ; e670: 0a
	asl                          ; e671: 0a
	asl                          ; e672: 0a
	sec                          ; e673: 38
	sbc $07                      ; e674: e5 07
	tax                          ; e676: aa
	lda.b #$07                   ; e677: a9 07
	sta $07                      ; e679: 85 07
	ldy $3d                      ; e67b: a4 3d
	lda $0fab00,x                ; e67d: bf 00 ab 0f
	sta $1030,y                  ; e681: 99 30 10
	inx                          ; e684: e8
	iny                          ; e685: c8
	dec $07                      ; e686: c6 07
	.db $d0, $f3                 ; e688: d0 f3
loc_e68a:
	lsr $3e                      ; e68a: 46 3e
	ror $3d                      ; e68c: 66 3d
	lda $3d                      ; e68e: a5 3d
	lsr                          ; e690: 4a
	lsr                          ; e691: 4a
	lsr                          ; e692: 4a
	lsr                          ; e693: 4a
	lsr                          ; e694: 4a
	jsl $038006                  ; e695: 22 06 80 03
loc_e699:
	rts                          ; e699: 60

; --- Block at $ea95-$eaa4 ---
loc_ea95:
	lda $30                      ; ea95: a5 30
	sta $08f8                    ; ea97: 8d f8 08
	lda $31                      ; ea9a: a5 31
	sta $08f9                    ; ea9c: 8d f9 08
	lda $32                      ; ea9f: a5 32
	sta $08fa                    ; eaa1: 8d fa 08
	rts                          ; eaa4: 60

; --- Block at $efa5-$efc6 ---
loc_efa5:
	stz $3e                      ; efa5: 64 3e
	asl                          ; efa7: 0a
	rol $3e                      ; efa8: 26 3e
	sta $3d                      ; efaa: 85 3d
	ldx $3d                      ; efac: a6 3d
	lda $12f262,x                ; efae: bf 62 f2 12
	sta $40                      ; efb2: 85 40
	lda $12f263,x                ; efb4: bf 63 f2 12
	sta $41                      ; efb8: 85 41
	ldx $40                      ; efba: a6 40
	dex                          ; efbc: ca
	lda $12f460,x                ; efbd: bf 60 f4 12
	cmp.b #$ff                   ; efc1: c9 ff
	.db $f0, $04                 ; efc3: f0 04
loc_efc5:
	dex                          ; efc5: ca
	jmp $efbd                    ; efc6: 4c bd ef

; --- Block at $efc9-$efe5 ---
loc_efc9:
	inx                          ; efc9: e8
	stx $0a6b                    ; efca: 8e 6b 0a
	ldx $3d                      ; efcd: a6 3d
	lda $12f260,x                ; efcf: bf 60 f2 12
	sta $be                      ; efd3: 85 be
	lda $12f261,x                ; efd5: bf 61 f2 12
	sta $bf                      ; efd9: 85 bf
	ldx $be                      ; efdb: a6 be
	lda $12f460,x                ; efdd: bf 60 f4 12
	cmp.b #$ff                   ; efe1: c9 ff
	.db $d0, $03                 ; efe3: d0 03
loc_efe5:
	jmp $f02b                    ; efe5: 4c 2b f0

; --- Block at $efe8-$effc ---
loc_efe8:
	cmp.b #$fe                   ; efe8: c9 fe
	.db $d0, $13                 ; efea: d0 13
loc_efec:
	ldx $be                      ; efec: a6 be
	inx                          ; efee: e8
	stx $be                      ; efef: 86 be
	lda $12f460,x                ; eff1: bf 60 f4 12
	jsr $f165                    ; eff5: 20 65 f1
loc_eff8:
	cmp.b #$00                   ; eff8: c9 00
	.db $f0, $12                 ; effa: f0 12
loc_effc:
	jmp $f006                    ; effc: 4c 06 f0

; --- Block at $efff-$f00b ---
loc_efff:
	jsr $f165                    ; efff: 20 65 f1
loc_f002:
	cmp.b #$00                   ; f002: c9 00
	.db $d0, $08                 ; f004: d0 08
loc_f006:
	ldx $be                      ; f006: a6 be
	inx                          ; f008: e8
	stx $be                      ; f009: 86 be
	jmp $efdb                    ; f00b: 4c db ef

; --- Block at $f00e-$f028 ---
loc_f00e:
	ldx $be                      ; f00e: a6 be
	inx                          ; f010: e8
	lda $12f460,x                ; f011: bf 60 f4 12
	cmp.b #$ff                   ; f015: c9 ff
	.db $d0, $f7                 ; f017: d0 f7
loc_f019:
	inx                          ; f019: e8
	stx $be                      ; f01a: 86 be
	ldx $be                      ; f01c: a6 be
	cpx $0a6b                    ; f01e: ec 6b 0a
	.db $f0, $08                 ; f021: f0 08
loc_f023:
	ldx $be                      ; f023: a6 be
	inx                          ; f025: e8
	stx $be                      ; f026: 86 be
	jmp $efdb                    ; f028: 4c db ef

; --- Block at $f02b-$f03e ---
loc_f02b:
	lda.b #$01                   ; f02b: a9 01
	sta $b1                      ; f02d: 85 b1
	stz $ab                      ; f02f: 64 ab
	ldx $be                      ; f031: a6 be
	lda $12f461,x                ; f033: bf 61 f4 12
	.db $f0, $03                 ; f037: f0 03
loc_f039:
	jsr $df63                    ; f039: 20 63 df
loc_f03c:
	stz $b1                      ; f03c: 64 b1
	rts                          ; f03e: 60

; --- Block at $f03f-$f06e ---
loc_f03f:
	stz $3e                      ; f03f: 64 3e
	asl                          ; f041: 0a
	rol $3e                      ; f042: 26 3e
	sta $3d                      ; f044: 85 3d
	lda $0fe5                    ; f046: ad e5 0f
	.db $30, $05                 ; f049: 30 05
loc_f04b:
	lda $1701                    ; f04b: ad 01 17
	.db $f0, $04                 ; f04e: f0 04
loc_f050:
	inc $3e                      ; f050: e6 3e
	inc $3e                      ; f052: e6 3e
loc_f054:
	ldx $3d                      ; f054: a6 3d
	lda $139802,x                ; f056: bf 02 98 13
	sta $40                      ; f05a: 85 40
	lda $139803,x                ; f05c: bf 03 98 13
	sta $41                      ; f060: 85 41
	ldx $40                      ; f062: a6 40
	dex                          ; f064: ca
	lda $139c00,x                ; f065: bf 00 9c 13
	cmp.b #$ff                   ; f069: c9 ff
	.db $f0, $04                 ; f06b: f0 04
loc_f06d:
	dex                          ; f06d: ca
	jmp $f065                    ; f06e: 4c 65 f0

; --- Block at $f071-$f086 ---
loc_f071:
	inx                          ; f071: e8
	stx $0a69                    ; f072: 8e 69 0a
	inx                          ; f075: e8
	ldy.w #$0000                 ; f076: a0 00 00
	cpx $40                      ; f079: e4 40
	.db $f0, $0c                 ; f07b: f0 0c
loc_f07d:
	lda $139c00,x                ; f07d: bf 00 9c 13
	sta $0a49,y                  ; f081: 99 49 0a
	iny                          ; f084: c8
	inx                          ; f085: e8
	jmp $f079                    ; f086: 4c 79 f0

; --- Block at $f089-$f0a1 ---
loc_f089:
	ldx $3d                      ; f089: a6 3d
	lda $139800,x                ; f08b: bf 00 98 13
	sta $bc                      ; f08f: 85 bc
	lda $139801,x                ; f091: bf 01 98 13
	sta $bd                      ; f095: 85 bd
	ldx $bc                      ; f097: a6 bc
	lda $139c00,x                ; f099: bf 00 9c 13
	cmp.b #$ff                   ; f09d: c9 ff
	.db $d0, $03                 ; f09f: d0 03
loc_f0a1:
	jmp $f0dc                    ; f0a1: 4c dc f0

; --- Block at $f0a4-$f0b8 ---
loc_f0a4:
	cmp.b #$fe                   ; f0a4: c9 fe
	.db $d0, $13                 ; f0a6: d0 13
loc_f0a8:
	ldx $bc                      ; f0a8: a6 bc
	inx                          ; f0aa: e8
	stx $bc                      ; f0ab: 86 bc
	lda $139c00,x                ; f0ad: bf 00 9c 13
	jsr $f165                    ; f0b1: 20 65 f1
loc_f0b4:
	cmp.b #$00                   ; f0b4: c9 00
	.db $f0, $12                 ; f0b6: f0 12
loc_f0b8:
	jmp $f0c2                    ; f0b8: 4c c2 f0

; --- Block at $f0bb-$f0c7 ---
loc_f0bb:
	jsr $f165                    ; f0bb: 20 65 f1
loc_f0be:
	cmp.b #$00                   ; f0be: c9 00
	.db $d0, $08                 ; f0c0: d0 08
loc_f0c2:
	ldx $bc                      ; f0c2: a6 bc
	inx                          ; f0c4: e8
	stx $bc                      ; f0c5: 86 bc
	jmp $f097                    ; f0c7: 4c 97 f0

; --- Block at $f0ca-$f0d9 ---
loc_f0ca:
	jsr $f0f0                    ; f0ca: 20 f0 f0
loc_f0cd:
	ldx $bc                      ; f0cd: a6 bc
	cpx $0a69                    ; f0cf: ec 69 0a
	.db $f0, $08                 ; f0d2: f0 08
loc_f0d4:
	ldx $bc                      ; f0d4: a6 bc
	inx                          ; f0d6: e8
	stx $bc                      ; f0d7: 86 bc
	jmp $f097                    ; f0d9: 4c 97 f0

; --- Block at $f0dc-$f0ef ---
loc_f0dc:
	lda.b #$01                   ; f0dc: a9 01
	sta $b1                      ; f0de: 85 b1
	stz $ab                      ; f0e0: 64 ab
	ldx $bc                      ; f0e2: a6 bc
	lda $139c01,x                ; f0e4: bf 01 9c 13
	.db $f0, $03                 ; f0e8: f0 03
loc_f0ea:
	jsr $df63                    ; f0ea: 20 63 df
loc_f0ed:
	stz $b1                      ; f0ed: 64 b1
	rts                          ; f0ef: 60

; --- Block at $f0f0-$f0fe ---
loc_f0f0:
	ldx $bc                      ; f0f0: a6 bc
	inx                          ; f0f2: e8
	lda $139c00,x                ; f0f3: bf 00 9c 13
	cmp.b #$ff                   ; f0f7: c9 ff
	.db $d0, $f7                 ; f0f9: d0 f7
loc_f0fb:
	inx                          ; f0fb: e8
	stx $bc                      ; f0fc: 86 bc
	rts                          ; f0fe: 60

; --- Block at $f165-$f175 ---
loc_f165:
	phx                          ; f165: da
	jsr $f17f                    ; f166: 20 7f f1
loc_f169:
	ldx $3d                      ; f169: a6 3d
	lda $1280,x                  ; f16b: bd 80 12
	cpy.w #$0000                 ; f16e: c0 00 00
	.db $f0, $05                 ; f171: f0 05
loc_f173:
	lsr                          ; f173: 4a
	dey                          ; f174: 88
	jmp $f16e                    ; f175: 4c 6e f1

; --- Block at $f178-$f17e ---
loc_f178:
	lsr                          ; f178: 4a
	lda.b #$00                   ; f179: a9 00
	adc.b #$00                   ; f17b: 69 00
	plx                          ; f17d: fa
	rts                          ; f17e: 60

; --- Block at $f17f-$f18b ---
loc_f17f:
	pha                          ; f17f: 48
	lsr                          ; f180: 4a
	lsr                          ; f181: 4a
	lsr                          ; f182: 4a
	sta $3d                      ; f183: 85 3d
	stz $3e                      ; f185: 64 3e
	pla                          ; f187: 68
	and.b #$07                   ; f188: 29 07
	tay                          ; f18a: a8
	rts                          ; f18b: 60

; --- Block at $f1aa-$f28f ---
loc_f1aa:
	lda.b #$00                   ; f1aa: a9 00
	sta $2105                    ; f1ac: 8d 05 21 ; BGMODE
	ldx.w #$0000                 ; f1af: a2 00 00
	stx $3d                      ; f1b2: 86 3d
	stx $40                      ; f1b4: 86 40
	stx $43                      ; f1b6: 86 43
	phx                          ; f1b8: da
	ldx $3d                      ; f1b9: a6 3d
	lda $14f3ce,x                ; f1bb: bf ce f3 14
	inx                          ; f1bf: e8
	stx $3d                      ; f1c0: 86 3d
	plx                          ; f1c2: fa
	sta $211b                    ; f1c3: 8d 1b 21 ; M7A
	stz $211b                    ; f1c6: 9c 1b 21 ; M7A
	lda $40                      ; f1c9: a5 40
	sta $211c                    ; f1cb: 8d 1c 21 ; M7B
	sta $211c                    ; f1ce: 8d 1c 21 ; M7B
	rep #$20                     ; f1d1: c2 20
	lda $2135                    ; f1d3: ad 35 21 ; MPYM
	asl                          ; f1d6: 0a
	asl                          ; f1d7: 0a
	asl                          ; f1d8: 0a
	clc                          ; f1d9: 18
	adc.w #$0100                 ; f1da: 69 00 01
	sta $7f0000,x                ; f1dd: 9f 00 00 7f
	lda.w #$0000                 ; f1e1: a9 00 00
	sep #$20                     ; f1e4: e2 20
	inx                          ; f1e6: e8
	inx                          ; f1e7: e8
	ldy $3d                      ; f1e8: a4 3d
	cpy.w #$00f0                 ; f1ea: c0 f0 00
	.db $d0, $c9                 ; f1ed: d0 c9
loc_f1ef:
	jsr $f290                    ; f1ef: 20 90 f2
loc_f1f2:
	lda $40                      ; f1f2: a5 40
	cmp.b #$80                   ; f1f4: c9 80
	.db $d0, $c0                 ; f1f6: d0 c0
loc_f1f8:
	phx                          ; f1f8: da
	ldx $3d                      ; f1f9: a6 3d
	lda $14f3ce,x                ; f1fb: bf ce f3 14
	inx                          ; f1ff: e8
	stx $3d                      ; f200: 86 3d
	plx                          ; f202: fa
	stz $06                      ; f203: 64 06
	asl                          ; f205: 0a
	rol $06                      ; f206: 26 06
	asl                          ; f208: 0a
	rol $06                      ; f209: 26 06
	sta $7f0000,x                ; f20b: 9f 00 00 7f
	lda $06                      ; f20f: a5 06
	inc                          ; f211: 1a
	sta $7f0001,x                ; f212: 9f 01 00 7f
	inx                          ; f216: e8
	inx                          ; f217: e8
	ldy $3d                      ; f218: a4 3d
	cpy.w #$00f0                 ; f21a: c0 f0 00
	.db $d0, $d9                 ; f21d: d0 d9
loc_f21f:
	ldx.w #$0000                 ; f21f: a2 00 00
	stx $3d                      ; f222: 86 3d
	stx $40                      ; f224: 86 40
	stx $43                      ; f226: 86 43
	phx                          ; f228: da
	ldx $3d                      ; f229: a6 3d
	lda $14f4ae,x                ; f22b: bf ae f4 14
	inx                          ; f22f: e8
	stx $3d                      ; f230: 86 3d
	plx                          ; f232: fa
	sta $211b                    ; f233: 8d 1b 21 ; M7A
	stz $211b                    ; f236: 9c 1b 21 ; M7A
	lda $40                      ; f239: a5 40
	sta $211c                    ; f23b: 8d 1c 21 ; M7B
	sta $211c                    ; f23e: 8d 1c 21 ; M7B
	rep #$20                     ; f241: c2 20
	lda $2135                    ; f243: ad 35 21 ; MPYM
	asl                          ; f246: 0a
	asl                          ; f247: 0a
	asl                          ; f248: 0a
	clc                          ; f249: 18
	adc.w #$0100                 ; f24a: 69 00 01
	sta $7f2200,x                ; f24d: 9f 00 22 7f
	lda.w #$0000                 ; f251: a9 00 00
	sep #$20                     ; f254: e2 20
	inx                          ; f256: e8
	inx                          ; f257: e8
	ldy $3d                      ; f258: a4 3d
	cpy.w #$00f0                 ; f25a: c0 f0 00
	.db $d0, $c9                 ; f25d: d0 c9
loc_f25f:
	jsr $f290                    ; f25f: 20 90 f2
loc_f262:
	lda $40                      ; f262: a5 40
	cmp.b #$80                   ; f264: c9 80
	.db $d0, $c0                 ; f266: d0 c0
loc_f268:
	phx                          ; f268: da
	ldx $3d                      ; f269: a6 3d
	lda $14f4ae,x                ; f26b: bf ae f4 14
	inx                          ; f26f: e8
	stx $3d                      ; f270: 86 3d
	plx                          ; f272: fa
	stz $06                      ; f273: 64 06
	asl                          ; f275: 0a
	rol $06                      ; f276: 26 06
	asl                          ; f278: 0a
	rol $06                      ; f279: 26 06
	sta $7f2200,x                ; f27b: 9f 00 22 7f
	lda $06                      ; f27f: a5 06
	inc                          ; f281: 1a
	sta $7f2201,x                ; f282: 9f 01 22 7f
	inx                          ; f286: e8
	inx                          ; f287: e8
	ldy $3d                      ; f288: a4 3d
	cpy.w #$00f0                 ; f28a: c0 f0 00
	.db $d0, $d9                 ; f28d: d0 d9
loc_f28f:
	rts                          ; f28f: 60

; --- Block at $f290-$f2aa ---
loc_f290:
	ldy.w #$0000                 ; f290: a0 00 00
	sty $3d                      ; f293: 84 3d
	lda $40                      ; f295: a5 40
	clc                          ; f297: 18
	adc.b #$08                   ; f298: 69 08
	sta $40                      ; f29a: 85 40
	sta $44                      ; f29c: 85 44
	stz $43                      ; f29e: 64 43
	lsr $44                      ; f2a0: 46 44
	ror $43                      ; f2a2: 66 43
	lsr $44                      ; f2a4: 46 44
	ror $43                      ; f2a6: 66 43
	ldx $43                      ; f2a8: a6 43
	rts                          ; f2aa: 60

; --- Block at $f2ab-$f2bd ---
loc_f2ab:
	lda $c9                      ; f2ab: a5 c9
	.db $d0, $0e                 ; f2ad: d0 0e
loc_f2af:
	lda $1700                    ; f2af: ad 00 17
	cmp.b #$03                   ; f2b2: c9 03
	.db $d0, $07                 ; f2b4: d0 07
loc_f2b6:
	lda $0fe4                    ; f2b6: ad e4 0f
	and.b #$c0                   ; f2b9: 29 c0
	.db $d0, $01                 ; f2bb: d0 01
loc_f2bd:
	rts                          ; f2bd: 60

; --- Block at $f2be-$f308 ---
loc_f2be:
	lda $0fe4                    ; f2be: ad e4 0f
	and.b #$06                   ; f2c1: 29 06
	.db $d0, $46                 ; f2c3: d0 46
loc_f2c5:
	lda $0fe4                    ; f2c5: ad e4 0f
	and.b #$c0                   ; f2c8: 29 c0
	lsr                          ; f2ca: 4a
	lsr                          ; f2cb: 4a
	lsr                          ; f2cc: 4a
	lsr                          ; f2cd: 4a
	lsr                          ; f2ce: 4a
	lsr                          ; f2cf: 4a
	tay                          ; f2d0: a8
	lda $7a                      ; f2d1: a5 7a
	and $f371,y                  ; f2d3: 39 71 f3
	.db $d0, $1b                 ; f2d6: d0 1b
loc_f2d8:
	lda $0fe4                    ; f2d8: ad e4 0f
	and.b #$30                   ; f2db: 29 30
	lsr                          ; f2dd: 4a
	lsr                          ; f2de: 4a
	lsr                          ; f2df: 4a
	tay                          ; f2e0: a8
	rep #$20                     ; f2e1: c2 20
	lda $66                      ; f2e3: a5 66
	clc                          ; f2e5: 18
	adc $f375,y                  ; f2e6: 79 75 f3
	sta $66                      ; f2e9: 85 66
	lda $68                      ; f2eb: a5 68
	clc                          ; f2ed: 18
	adc $f37d,y                  ; f2ee: 79 7d f3
	sta $68                      ; f2f1: 85 68
loc_f2f3:
	rep #$20                     ; f2f3: c2 20
	lda $5a                      ; f2f5: a5 5a
	clc                          ; f2f7: 18
	adc $66                      ; f2f8: 65 66
	sta $5e                      ; f2fa: 85 5e
	lda $5c                      ; f2fc: a5 5c
	clc                          ; f2fe: 18
	adc $68                      ; f2ff: 65 68
	sta $60                      ; f301: 85 60
	lda.w #$0000                 ; f303: a9 00 00
	sep #$20                     ; f306: e2 20
	jmp $f370                    ; f308: 4c 70 f3

; --- Block at $f30b-$f327 ---
loc_f30b:
	lda $0fe4                    ; f30b: ad e4 0f
	and.b #$04                   ; f30e: 29 04
	.db $f0, $2d                 ; f310: f0 2d
loc_f312:
	ldx $5a                      ; f312: a6 5a
	stx $5e                      ; f314: 86 5e
	lda $0fe4                    ; f316: ad e4 0f
	and.b #$c0                   ; f319: 29 c0
	cmp.b #$80                   ; f31b: c9 80
	.db $f0, $0f                 ; f31d: f0 0f
loc_f31f:
	cmp.b #$40                   ; f31f: c9 40
	.db $f0, $07                 ; f321: f0 07
loc_f323:
	asl $5e                      ; f323: 06 5e
	rol $5f                      ; f325: 26 5f
	jmp $f32e                    ; f327: 4c 2e f3

; --- Block at $f32a-$f32e ---
loc_f32a:
	lsr $5f                      ; f32a: 46 5f
	ror $5e                      ; f32c: 66 5e

; --- Block at $f32e-$f33c ---
loc_f32e:
	lda $0fe4                    ; f32e: ad e4 0f
	and.b #$06                   ; f331: 29 06
	cmp.b #$04                   ; f333: c9 04
	.db $d0, $08                 ; f335: d0 08
loc_f337:
	ldx.w #$0000                 ; f337: a2 00 00
	stx $60                      ; f33a: 86 60
	jmp $f370                    ; f33c: 4c 70 f3

; --- Block at $f33f-$f35b ---
loc_f33f:
	lda $0fe4                    ; f33f: ad e4 0f
	and.b #$02                   ; f342: 29 02
	.db $f0, $2a                 ; f344: f0 2a
loc_f346:
	ldx $5c                      ; f346: a6 5c
	stx $60                      ; f348: 86 60
	lda $0fe4                    ; f34a: ad e4 0f
	and.b #$c0                   ; f34d: 29 c0
	cmp.b #$80                   ; f34f: c9 80
	.db $f0, $0f                 ; f351: f0 0f
loc_f353:
	cmp.b #$40                   ; f353: c9 40
	.db $f0, $07                 ; f355: f0 07
loc_f357:
	asl $60                      ; f357: 06 60
	rol $61                      ; f359: 26 61
	jmp $f362                    ; f35b: 4c 62 f3

; --- Block at $f35e-$f362 ---
loc_f35e:
	lsr $61                      ; f35e: 46 61
	ror $60                      ; f360: 66 60

; --- Block at $f362-$f370 ---
loc_f362:
	lda $0fe4                    ; f362: ad e4 0f
	and.b #$06                   ; f365: 29 06
	cmp.b #$02                   ; f367: c9 02
	.db $d0, $05                 ; f369: d0 05
loc_f36b:
	ldx.w #$0000                 ; f36b: a2 00 00
	stx $5e                      ; f36e: 86 5e

; --- Block at $f370-$f370 ---
loc_f370:
	rts                          ; f370: 60

; --- Block at $f385-$f39c ---
loc_f385:
	pha                          ; f385: 48
	plb                          ; f386: ab
	ldx.w #$0000                 ; f387: a2 00 00
	lda.w $0000,y                ; f38a: b9 00 00
	sta $7f4800,x                ; f38d: 9f 00 48 7f
	iny                          ; f391: c8
	inx                          ; f392: e8
	cpx.w #$0200                 ; f393: e0 00 02
	.db $d0, $f2                 ; f396: d0 f2
loc_f398:
	lda.b #$00                   ; f398: a9 00
	pha                          ; f39a: 48
	plb                          ; f39b: ab
	rts                          ; f39c: 60

; --- Block at $f39d-$f3aa ---
loc_f39d:
	ldx.w #$0000                 ; f39d: a2 00 00
	sta $7f5c71,x                ; f3a0: 9f 71 5c 7f
	inx                          ; f3a4: e8
	cpx.w #$4000                 ; f3a5: e0 00 40
	.db $d0, $f6                 ; f3a8: d0 f6
loc_f3aa:
	rts                          ; f3aa: 60

; --- Block at $f3ab-$f3af ---
loc_f3ab:
	lda $ab                      ; f3ab: a5 ab
	.db $d0, $01                 ; f3ad: d0 01
loc_f3af:
	rts                          ; f3af: 60

; --- Block at $f3b0-$f3b4 ---
loc_f3b0:
	and.b #$01                   ; f3b0: 29 01
	.db $f0, $03                 ; f3b2: f0 03
loc_f3b4:
	jmp $f441                    ; f3b4: 4c 41 f4

; --- Block at $f3b7-$f3c5 ---
loc_f3b7:
	lda $ab                      ; f3b7: a5 ab
	and.b #$02                   ; f3b9: 29 02
	.db $f0, $0b                 ; f3bb: f0 0b
loc_f3bd:
	lda $1706                    ; f3bd: ad 06 17
	clc                          ; f3c0: 18
	adc.b #$21                   ; f3c1: 69 21
	sta $3d                      ; f3c3: 85 3d
	jmp $f3d0                    ; f3c5: 4c d0 f3

; --- Block at $f3c8-$f440 ---
loc_f3c8:
	lda $1706                    ; f3c8: ad 06 17
	sec                          ; f3cb: 38
	sbc.b #$1f                   ; f3cc: e9 1f
	sta $3d                      ; f3ce: 85 3d
loc_f3d0:
	lda $1707                    ; f3d0: ad 07 17
	sec                          ; f3d3: 38
	sbc.b #$1f                   ; f3d4: e9 1f
	and.b #$3f                   ; f3d6: 29 3f
	sta $3e                      ; f3d8: 85 3e
	ldx $3d                      ; f3da: a6 3d
	stx $40                      ; f3dc: 86 40
	ldy.w #$0000                 ; f3de: a0 00 00
	ldx $3d                      ; f3e1: a6 3d
	lda $7f5c71,x                ; f3e3: bf 71 5c 7f
	tax                          ; f3e7: aa
	lda $7f4800,x                ; f3e8: bf 00 48 7f
	sta $0adb,y                  ; f3ec: 99 db 0a
	lda $7f4900,x                ; f3ef: bf 00 49 7f
	sta $0adc,y                  ; f3f3: 99 dc 0a
	lda $7f4880,x                ; f3f6: bf 80 48 7f
	sta $0b5b,y                  ; f3fa: 99 5b 0b
	lda $7f4980,x                ; f3fd: bf 80 49 7f
	sta $0b5c,y                  ; f401: 99 5c 0b
	lda $3e                      ; f404: a5 3e
	inc                          ; f406: 1a
	and.b #$3f                   ; f407: 29 3f
	sta $3e                      ; f409: 85 3e
	iny                          ; f40b: c8
	iny                          ; f40c: c8
	cpy.w #$0080                 ; f40d: c0 80 00
	.db $d0, $cf                 ; f410: d0 cf
loc_f412:
	stz $98                      ; f412: 64 98
	stz $96                      ; f414: 64 96
	stz $9c                      ; f416: 64 9c
	stz $a0                      ; f418: 64 a0
	lda $40                      ; f41a: a5 40
	asl                          ; f41c: 0a
	and.b #$7f                   ; f41d: 29 7f
	sta $99                      ; f41f: 85 99
	sta $9b                      ; f421: 85 9b
	inc                          ; f423: 1a
	sta $9d                      ; f424: 85 9d
	sta $9f                      ; f426: 85 9f
	lda $1707                    ; f428: ad 07 17
	sec                          ; f42b: 38
	sbc.b #$1f                   ; f42c: e9 1f
	and.b #$3f                   ; f42e: 29 3f
	sta $9a                      ; f430: 85 9a
	sta $9e                      ; f432: 85 9e
	asl                          ; f434: 0a
	sta $97                      ; f435: 85 97
	lda.b #$80                   ; f437: a9 80
	sec                          ; f439: 38
	sbc $97                      ; f43a: e5 97
	sta $95                      ; f43c: 85 95
	inc $94                      ; f43e: e6 94
	rts                          ; f440: 60

; --- Block at $f441-$f453 ---
loc_f441:
	lda $ab                      ; f441: a5 ab
	and.b #$02                   ; f443: 29 02
	.db $d0, $0f                 ; f445: d0 0f
loc_f447:
	lda $1707                    ; f447: ad 07 17
	sec                          ; f44a: 38
	sbc.b #$1f                   ; f44b: e9 1f
	sta $06                      ; f44d: 85 06
	and.b #$3f                   ; f44f: 29 3f
	sta $3e                      ; f451: 85 3e
	jmp $f462                    ; f453: 4c 62 f4

; --- Block at $f456-$f4d6 ---
loc_f456:
	lda $1707                    ; f456: ad 07 17
	clc                          ; f459: 18
	adc.b #$20                   ; f45a: 69 20
	sta $06                      ; f45c: 85 06
	and.b #$3f                   ; f45e: 29 3f
	sta $3e                      ; f460: 85 3e
loc_f462:
	lda $1706                    ; f462: ad 06 17
	sec                          ; f465: 38
	sbc.b #$1f                   ; f466: e9 1f
	sta $3d                      ; f468: 85 3d
	ldx $3d                      ; f46a: a6 3d
	stx $40                      ; f46c: 86 40
	ldy.w #$0000                 ; f46e: a0 00 00
	ldx $3d                      ; f471: a6 3d
	lda $7f5c71,x                ; f473: bf 71 5c 7f
	tax                          ; f477: aa
	lda $7f4800,x                ; f478: bf 00 48 7f
	sta $0adb,y                  ; f47c: 99 db 0a
	lda $7f4880,x                ; f47f: bf 80 48 7f
	sta $0adc,y                  ; f483: 99 dc 0a
	lda $7f4900,x                ; f486: bf 00 49 7f
	sta $0b5b,y                  ; f48a: 99 5b 0b
	lda $7f4980,x                ; f48d: bf 80 49 7f
	sta $0b5c,y                  ; f491: 99 5c 0b
	iny                          ; f494: c8
	iny                          ; f495: c8
	inc $3d                      ; f496: e6 3d
	cpy.w #$0080                 ; f498: c0 80 00
	.db $d0, $d4                 ; f49b: d0 d4
loc_f49d:
	stz $97                      ; f49d: 64 97
	stz $98                      ; f49f: 64 98
	lda.b #$80                   ; f4a1: a9 80
	sta $95                      ; f4a3: 85 95
	stz $96                      ; f4a5: 64 96
	stz $9b                      ; f4a7: 64 9b
	lda.b #$80                   ; f4a9: a9 80
	sta $9f                      ; f4ab: 85 9f
	lda $06                      ; f4ad: a5 06
	and.b #$3f                   ; f4af: 29 3f
	sta $9a                      ; f4b1: 85 9a
	sta $9c                      ; f4b3: 85 9c
	sta $9e                      ; f4b5: 85 9e
	sta $a0                      ; f4b7: 85 a0
	lda $1706                    ; f4b9: ad 06 17
	sec                          ; f4bc: 38
	sbc.b #$1f                   ; f4bd: e9 1f
	and.b #$3f                   ; f4bf: 29 3f
	asl                          ; f4c1: 0a
	sta $99                      ; f4c2: 85 99
	clc                          ; f4c4: 18
	adc.b #$80                   ; f4c5: 69 80
	sta $9d                      ; f4c7: 85 9d
	lda $99                      ; f4c9: a5 99
	sta $97                      ; f4cb: 85 97
	lda.b #$80                   ; f4cd: a9 80
	sec                          ; f4cf: 38
	sbc $97                      ; f4d0: e5 97
	sta $95                      ; f4d2: 85 95
	inc $94                      ; f4d4: e6 94
	rts                          ; f4d6: 60

; --- Block at $f4d7-$f4db ---
loc_f4d7:
	lda $ab                      ; f4d7: a5 ab
	.db $d0, $01                 ; f4d9: d0 01
loc_f4db:
	rts                          ; f4db: 60

; --- Block at $f4dc-$f4e0 ---
loc_f4dc:
	and.b #$01                   ; f4dc: 29 01
	.db $f0, $03                 ; f4de: f0 03
loc_f4e0:
	jmp $f5b7                    ; f4e0: 4c b7 f5

; --- Block at $f4e3-$f4f1 ---
loc_f4e3:
	lda $ab                      ; f4e3: a5 ab
	and.b #$02                   ; f4e5: 29 02
	.db $f0, $0b                 ; f4e7: f0 0b
loc_f4e9:
	lda $1706                    ; f4e9: ad 06 17
	clc                          ; f4ec: 18
	adc.b #$09                   ; f4ed: 69 09
	sta $3d                      ; f4ef: 85 3d
	jmp $f4fc                    ; f4f1: 4c fc f4

; --- Block at $f4f4-$f54e ---
loc_f4f4:
	lda $1706                    ; f4f4: ad 06 17
	sec                          ; f4f7: 38
	sbc.b #$08                   ; f4f8: e9 08
	sta $3d                      ; f4fa: 85 3d
loc_f4fc:
	lda $1707                    ; f4fc: ad 07 17
	sec                          ; f4ff: 38
	sbc.b #$07                   ; f500: e9 07
	and.b #$3f                   ; f502: 29 3f
	sta $3e                      ; f504: 85 3e
	ldx $3d                      ; f506: a6 3d
	stx $43                      ; f508: 86 43
	ldy.w #$0000                 ; f50a: a0 00 00
	ldx $3d                      ; f50d: a6 3d
	lda $7f5c71,x                ; f50f: bf 71 5c 7f
	sta $18                      ; f513: 85 18
	stz $19                      ; f515: 64 19
	rep #$20                     ; f517: c2 20
	asl $18                      ; f519: 06 18
	ldx $18                      ; f51b: a6 18
	lda $7f4800,x                ; f51d: bf 00 48 7f
	sta $0adb,y                  ; f521: 99 db 0a
	lda $7f4a00,x                ; f524: bf 00 4a 7f
	sta $0add,y                  ; f528: 99 dd 0a
	lda $7f4900,x                ; f52b: bf 00 49 7f
	sta $0b1b,y                  ; f52f: 99 1b 0b
	lda $7f4b00,x                ; f532: bf 00 4b 7f
	sta $0b1d,y                  ; f536: 99 1d 0b
	lda.w #$0000                 ; f539: a9 00 00
	sep #$20                     ; f53c: e2 20
	lda $3e                      ; f53e: a5 3e
	inc                          ; f540: 1a
	and.b #$3f                   ; f541: 29 3f
	sta $3e                      ; f543: 85 3e
	iny                          ; f545: c8
	iny                          ; f546: c8
	iny                          ; f547: c8
	iny                          ; f548: c8
	cpy.w #$0040                 ; f549: c0 40 00
	.db $f0, $03                 ; f54c: f0 03
loc_f54e:
	jmp $f50d                    ; f54e: 4c 0d f5

; --- Block at $f551-$f5b6 ---
loc_f551:
	stz $99                      ; f551: 64 99
	lda $44                      ; f553: a5 44
	and.b #$0f                   ; f555: 29 0f
	sta $9a                      ; f557: 85 9a
	lsr $9a                      ; f559: 46 9a
	ror $99                      ; f55b: 66 99
	lsr $9a                      ; f55d: 46 9a
	ror $99                      ; f55f: 66 99
	lda $43                      ; f561: a5 43
	and.b #$1f                   ; f563: 29 1f
	asl                          ; f565: 0a
	sta $43                      ; f566: 85 43
	and.b #$20                   ; f568: 29 20
	.db $f0, $07                 ; f56a: f0 07
loc_f56c:
	lda $9a                      ; f56c: a5 9a
	clc                          ; f56e: 18
	adc.b #$04                   ; f56f: 69 04
	sta $9a                      ; f571: 85 9a
loc_f573:
	lda $43                      ; f573: a5 43
	and.b #$1f                   ; f575: 29 1f
	clc                          ; f577: 18
	adc $99                      ; f578: 65 99
	sta $99                      ; f57a: 85 99
	lda $9a                      ; f57c: a5 9a
	clc                          ; f57e: 18
	adc.b #$18                   ; f57f: 69 18
	sta $9a                      ; f581: 85 9a
	lda $44                      ; f583: a5 44
	and.b #$0f                   ; f585: 29 0f
	asl                          ; f587: 0a
	asl                          ; f588: 0a
	sta $97                      ; f589: 85 97
	stz $98                      ; f58b: 64 98
	lda.b #$40                   ; f58d: a9 40
	sec                          ; f58f: 38
	sbc $97                      ; f590: e5 97
	sta $95                      ; f592: 85 95
	stz $96                      ; f594: 64 96
	lda $9a                      ; f596: a5 9a
	and.b #$fc                   ; f598: 29 fc
	sta $9c                      ; f59a: 85 9c
	lda $99                      ; f59c: a5 99
	and.b #$1f                   ; f59e: 29 1f
	sta $9b                      ; f5a0: 85 9b
	lda $99                      ; f5a2: a5 99
	inc                          ; f5a4: 1a
	sta $9d                      ; f5a5: 85 9d
	lda $9a                      ; f5a7: a5 9a
	sta $9e                      ; f5a9: 85 9e
	lda $9b                      ; f5ab: a5 9b
	inc                          ; f5ad: 1a
	sta $9f                      ; f5ae: 85 9f
	lda $9c                      ; f5b0: a5 9c
	sta $a0                      ; f5b2: 85 a0
	inc $94                      ; f5b4: e6 94
	rts                          ; f5b6: 60

; --- Block at $f5b7-$f5c7 ---
loc_f5b7:
	lda $ab                      ; f5b7: a5 ab
	and.b #$02                   ; f5b9: 29 02
	.db $d0, $0d                 ; f5bb: d0 0d
loc_f5bd:
	lda $1707                    ; f5bd: ad 07 17
	sec                          ; f5c0: 38
	sbc.b #$08                   ; f5c1: e9 08
	and.b #$3f                   ; f5c3: 29 3f
	sta $3e                      ; f5c5: 85 3e
	jmp $f5d4                    ; f5c7: 4c d4 f5

; --- Block at $f5ca-$f5e6 ---
loc_f5ca:
	lda $1707                    ; f5ca: ad 07 17
	clc                          ; f5cd: 18
	adc.b #$08                   ; f5ce: 69 08
	and.b #$3f                   ; f5d0: 29 3f
	sta $3e                      ; f5d2: 85 3e
loc_f5d4:
	lda $1706                    ; f5d4: ad 06 17
	sec                          ; f5d7: 38
	sbc.b #$07                   ; f5d8: e9 07
	sta $3d                      ; f5da: 85 3d
	ldx $3d                      ; f5dc: a6 3d
	stx $43                      ; f5de: 86 43
	jsr $f5e7                    ; f5e0: 20 e7 f5
loc_f5e3:
	jsr $f627                    ; f5e3: 20 27 f6
loc_f5e6:
	rts                          ; f5e6: 60

; --- Block at $f5e7-$f626 ---
loc_f5e7:
	ldy.w #$0000                 ; f5e7: a0 00 00
	ldx $3d                      ; f5ea: a6 3d
	lda $7f5c71,x                ; f5ec: bf 71 5c 7f
	sta $18                      ; f5f0: 85 18
	stz $19                      ; f5f2: 64 19
	rep #$20                     ; f5f4: c2 20
	asl $18                      ; f5f6: 06 18
	ldx $18                      ; f5f8: a6 18
	lda $7f4800,x                ; f5fa: bf 00 48 7f
	sta $0adb,y                  ; f5fe: 99 db 0a
	lda $7f4900,x                ; f601: bf 00 49 7f
	sta $0add,y                  ; f605: 99 dd 0a
	lda $7f4a00,x                ; f608: bf 00 4a 7f
	sta $0b1b,y                  ; f60c: 99 1b 0b
	lda $7f4b00,x                ; f60f: bf 00 4b 7f
	sta $0b1d,y                  ; f613: 99 1d 0b
	lda.w #$0000                 ; f616: a9 00 00
	sep #$20                     ; f619: e2 20
	iny                          ; f61b: c8
	iny                          ; f61c: c8
	iny                          ; f61d: c8
	iny                          ; f61e: c8
	inc $3d                      ; f61f: e6 3d
	cpy.w #$0040                 ; f621: c0 40 00
	.db $d0, $c4                 ; f624: d0 c4
loc_f626:
	rts                          ; f626: 60

; --- Block at $f627-$f699 ---
loc_f627:
	stz $99                      ; f627: 64 99
	lda $44                      ; f629: a5 44
	and.b #$0f                   ; f62b: 29 0f
	sta $9a                      ; f62d: 85 9a
	lsr $9a                      ; f62f: 46 9a
	ror $99                      ; f631: 66 99
	lsr $9a                      ; f633: 46 9a
	ror $99                      ; f635: 66 99
	lda $43                      ; f637: a5 43
	and.b #$1f                   ; f639: 29 1f
	asl                          ; f63b: 0a
	sta $43                      ; f63c: 85 43
	and.b #$20                   ; f63e: 29 20
	.db $f0, $07                 ; f640: f0 07
loc_f642:
	lda $9a                      ; f642: a5 9a
	clc                          ; f644: 18
	adc.b #$04                   ; f645: 69 04
	sta $9a                      ; f647: 85 9a
loc_f649:
	lda $43                      ; f649: a5 43
	and.b #$1f                   ; f64b: 29 1f
	clc                          ; f64d: 18
	adc $99                      ; f64e: 65 99
	sta $99                      ; f650: 85 99
	lda $9a                      ; f652: a5 9a
	clc                          ; f654: 18
	adc.b #$18                   ; f655: 69 18
	sta $9a                      ; f657: 85 9a
	lda $99                      ; f659: a5 99
	and.b #$1f                   ; f65b: 29 1f
	asl                          ; f65d: 0a
	sta $97                      ; f65e: 85 97
	stz $98                      ; f660: 64 98
	lda.b #$40                   ; f662: a9 40
	sec                          ; f664: 38
	sbc $97                      ; f665: e5 97
	sta $95                      ; f667: 85 95
	stz $96                      ; f669: 64 96
	lda $99                      ; f66b: a5 99
	and.b #$e0                   ; f66d: 29 e0
	sta $9b                      ; f66f: 85 9b
	lda $9a                      ; f671: a5 9a
	clc                          ; f673: 18
	adc.b #$04                   ; f674: 69 04
	and.b #$07                   ; f676: 29 07
	clc                          ; f678: 18
	adc.b #$18                   ; f679: 69 18
	sta $9c                      ; f67b: 85 9c
	lda $99                      ; f67d: a5 99
	clc                          ; f67f: 18
	adc.b #$20                   ; f680: 69 20
	sta $9d                      ; f682: 85 9d
	lda $9a                      ; f684: a5 9a
	adc.b #$00                   ; f686: 69 00
	sta $9e                      ; f688: 85 9e
	lda $9b                      ; f68a: a5 9b
	clc                          ; f68c: 18
	adc.b #$20                   ; f68d: 69 20
	sta $9f                      ; f68f: 85 9f
	lda $9c                      ; f691: a5 9c
	adc.b #$00                   ; f693: 69 00
	sta $a0                      ; f695: 85 a0
	inc $94                      ; f697: e6 94
	rts                          ; f699: 60

; --- Block at $f69a-$f6e8 ---
loc_f69a:
	stz $99                      ; f69a: 64 99
	lda $44                      ; f69c: a5 44
	and.b #$0f                   ; f69e: 29 0f
	sta $9a                      ; f6a0: 85 9a
	lda $44                      ; f6a2: a5 44
	and.b #$10                   ; f6a4: 29 10
	.db $f0, $07                 ; f6a6: f0 07
loc_f6a8:
	lda $9a                      ; f6a8: a5 9a
	clc                          ; f6aa: 18
	adc.b #$20                   ; f6ab: 69 20
	sta $9a                      ; f6ad: 85 9a
loc_f6af:
	lsr $9a                      ; f6af: 46 9a
	ror $99                      ; f6b1: 66 99
	lsr $9a                      ; f6b3: 46 9a
	ror $99                      ; f6b5: 66 99
	lda $43                      ; f6b7: a5 43
	and.b #$1f                   ; f6b9: 29 1f
	asl                          ; f6bb: 0a
	sta $43                      ; f6bc: 85 43
	and.b #$20                   ; f6be: 29 20
	.db $f0, $07                 ; f6c0: f0 07
loc_f6c2:
	lda $9a                      ; f6c2: a5 9a
	clc                          ; f6c4: 18
	adc.b #$04                   ; f6c5: 69 04
	sta $9a                      ; f6c7: 85 9a
loc_f6c9:
	lda $43                      ; f6c9: a5 43
	and.b #$1f                   ; f6cb: 29 1f
	clc                          ; f6cd: 18
	adc $99                      ; f6ce: 65 99
	sta $99                      ; f6d0: 85 99
	lda $9a                      ; f6d2: a5 9a
	clc                          ; f6d4: 18
	adc.b #$30                   ; f6d5: 69 30
	sta $9a                      ; f6d7: 85 9a
	lda $99                      ; f6d9: a5 99
	clc                          ; f6db: 18
	adc.b #$20                   ; f6dc: 69 20
	sta $9d                      ; f6de: 85 9d
	lda $9a                      ; f6e0: a5 9a
	adc.b #$00                   ; f6e2: 69 00
	sta $9e                      ; f6e4: 85 9e
	inc $94                      ; f6e6: e6 94
	rts                          ; f6e8: 60

; --- Block at $f6e9-$f808 ---
loc_f6e9:
	rep #$20                     ; f6e9: c2 20
	lda $1707                    ; f6eb: ad 07 17
	and.w #$00ff                 ; f6ee: 29 ff 00
	sec                          ; f6f1: 38
	sbc.w #$0007                 ; f6f2: e9 07 00
	asl                          ; f6f5: 0a
	asl                          ; f6f6: 0a
	asl                          ; f6f7: 0a
	asl                          ; f6f8: 0a
	and.w #$07ff                 ; f6f9: 29 ff 07
	sta $5c                      ; f6fc: 85 5c
	lda $1706                    ; f6fe: ad 06 17
	and.w #$00ff                 ; f701: 29 ff 00
	sec                          ; f704: 38
	sbc.w #$0007                 ; f705: e9 07 00
	asl                          ; f708: 0a
	asl                          ; f709: 0a
	asl                          ; f70a: 0a
	asl                          ; f70b: 0a
	and.w #$07ff                 ; f70c: 29 ff 07
	sta $5a                      ; f70f: 85 5a
	lda.w #$0000                 ; f711: a9 00 00
	sep #$20                     ; f714: e2 20
	lda.b #$40                   ; f716: a9 40
	sta $07                      ; f718: 85 07
	lda $1707                    ; f71a: ad 07 17
	sta $070a                    ; f71d: 8d 0a 07
	jsr $fa98                    ; f720: 20 98 fa
loc_f723:
	inc $070a                    ; f723: ee 0a 07
	dec $07                      ; f726: c6 07
	.db $d0, $f6                 ; f728: d0 f6
loc_f72a:
	lda.b #$40                   ; f72a: a9 40
	sta $07                      ; f72c: 85 07
	lda $1707                    ; f72e: ad 07 17
	sec                          ; f731: 38
	sbc.b #$1f                   ; f732: e9 1f
	sta $08                      ; f734: 85 08
	lda $08                      ; f736: a5 08
	and.b #$3f                   ; f738: 29 3f
	sta $3e                      ; f73a: 85 3e
	lda $1706                    ; f73c: ad 06 17
	sec                          ; f73f: 38
	sbc.b #$1f                   ; f740: e9 1f
	sta $3d                      ; f742: 85 3d
	ldx $3d                      ; f744: a6 3d
	ldy.w #$0000                 ; f746: a0 00 00
	ldx $3d                      ; f749: a6 3d
	lda $7f5c71,x                ; f74b: bf 71 5c 7f
	tax                          ; f74f: aa
	lda $7f4800,x                ; f750: bf 00 48 7f
	sta $0adb,y                  ; f754: 99 db 0a
	lda $7f4880,x                ; f757: bf 80 48 7f
	sta $0adc,y                  ; f75b: 99 dc 0a
	lda $7f4900,x                ; f75e: bf 00 49 7f
	sta $0b5b,y                  ; f762: 99 5b 0b
	lda $7f4980,x                ; f765: bf 80 49 7f
	sta $0b5c,y                  ; f769: 99 5c 0b
	iny                          ; f76c: c8
	iny                          ; f76d: c8
	inc $3d                      ; f76e: e6 3d
	cpy.w #$0080                 ; f770: c0 80 00
	.db $d0, $d4                 ; f773: d0 d4
loc_f775:
	stz $97                      ; f775: 64 97
	stz $98                      ; f777: 64 98
	lda.b #$80                   ; f779: a9 80
	sta $95                      ; f77b: 85 95
	stz $96                      ; f77d: 64 96
	stz $9b                      ; f77f: 64 9b
	lda.b #$80                   ; f781: a9 80
	sta $9f                      ; f783: 85 9f
	lda $08                      ; f785: a5 08
	and.b #$3f                   ; f787: 29 3f
	sta $9a                      ; f789: 85 9a
	sta $9c                      ; f78b: 85 9c
	sta $9e                      ; f78d: 85 9e
	sta $a0                      ; f78f: 85 a0
	lda $1706                    ; f791: ad 06 17
	sec                          ; f794: 38
	sbc.b #$1f                   ; f795: e9 1f
	and.b #$3f                   ; f797: 29 3f
	asl                          ; f799: 0a
	sta $99                      ; f79a: 85 99
	clc                          ; f79c: 18
	adc.b #$80                   ; f79d: 69 80
	sta $9d                      ; f79f: 85 9d
	lda $99                      ; f7a1: a5 99
	sta $97                      ; f7a3: 85 97
	lda.b #$80                   ; f7a5: a9 80
	sec                          ; f7a7: 38
	sbc $97                      ; f7a8: e5 97
	sta $95                      ; f7aa: 85 95
	stz $2115                    ; f7ac: 9c 15 21 ; VMAIN
	jsr $890c                    ; f7af: 20 0c 89
loc_f7b2:
	stz $4300                    ; f7b2: 9c 00 43 ; DMAP0
	ldx $99                      ; f7b5: a6 99
	stx $2116                    ; f7b7: 8e 16 21 ; VMADDL
	ldx.w #$0adb                 ; f7ba: a2 db 0a
	stx $4302                    ; f7bd: 8e 02 43 ; A1TL0
	ldx $95                      ; f7c0: a6 95
	stx $4305                    ; f7c2: 8e 05 43 ; DAS0L
	jsr $8918                    ; f7c5: 20 18 89
loc_f7c8:
	ldx $9b                      ; f7c8: a6 9b
	stx $2116                    ; f7ca: 8e 16 21 ; VMADDL
	stz $420b                    ; f7cd: 9c 0b 42 ; MDMAEN
	ldx $97                      ; f7d0: a6 97
	.db $f0, $06                 ; f7d2: f0 06
loc_f7d4:
	stx $4305                    ; f7d4: 8e 05 43 ; DAS0L
	jsr $8918                    ; f7d7: 20 18 89
loc_f7da:
	ldx $9d                      ; f7da: a6 9d
	stx $2116                    ; f7dc: 8e 16 21 ; VMADDL
	stz $420b                    ; f7df: 9c 0b 42 ; MDMAEN
	ldx.w #$0b5b                 ; f7e2: a2 5b 0b
	stx $4302                    ; f7e5: 8e 02 43 ; A1TL0
	ldx $95                      ; f7e8: a6 95
	stx $4305                    ; f7ea: 8e 05 43 ; DAS0L
	jsr $8918                    ; f7ed: 20 18 89
loc_f7f0:
	ldx $9f                      ; f7f0: a6 9f
	stx $2116                    ; f7f2: 8e 16 21 ; VMADDL
	stz $420b                    ; f7f5: 9c 0b 42 ; MDMAEN
	ldx $97                      ; f7f8: a6 97
	.db $f0, $06                 ; f7fa: f0 06
loc_f7fc:
	stx $4305                    ; f7fc: 8e 05 43 ; DAS0L
	jsr $8918                    ; f7ff: 20 18 89
loc_f802:
	inc $08                      ; f802: e6 08
	dec $07                      ; f804: c6 07
	.db $f0, $03                 ; f806: f0 03
loc_f808:
	jmp $f736                    ; f808: 4c 36 f7

; --- Block at $f80b-$f80b ---
loc_f80b:
	rts                          ; f80b: 60

; --- Block at $f80c-$f8bd ---
loc_f80c:
	rep #$20                     ; f80c: c2 20
	lda $1707                    ; f80e: ad 07 17
	and.w #$00ff                 ; f811: 29 ff 00
	sec                          ; f814: 38
	sbc.w #$0007                 ; f815: e9 07 00
	asl                          ; f818: 0a
	asl                          ; f819: 0a
	asl                          ; f81a: 0a
	asl                          ; f81b: 0a
	sta $5c                      ; f81c: 85 5c
	lda $1706                    ; f81e: ad 06 17
	and.w #$00ff                 ; f821: 29 ff 00
	sec                          ; f824: 38
	sbc.w #$0007                 ; f825: e9 07 00
	asl                          ; f828: 0a
	asl                          ; f829: 0a
	asl                          ; f82a: 0a
	asl                          ; f82b: 0a
	sta $5a                      ; f82c: 85 5a
	lda.w #$0000                 ; f82e: a9 00 00
	sep #$20                     ; f831: e2 20
	jsr $fd23                    ; f833: 20 23 fd
loc_f836:
	jsr $9960                    ; f836: 20 60 99
loc_f839:
	lda.b #$10                   ; f839: a9 10
	sta $07                      ; f83b: 85 07
	lda $1707                    ; f83d: ad 07 17
	sec                          ; f840: 38
	sbc.b #$07                   ; f841: e9 07
	sta $08                      ; f843: 85 08
	lda $08                      ; f845: a5 08
	and.b #$3f                   ; f847: 29 3f
	sta $3e                      ; f849: 85 3e
	lda $1706                    ; f84b: ad 06 17
	sec                          ; f84e: 38
	sbc.b #$07                   ; f84f: e9 07
	sta $3d                      ; f851: 85 3d
	ldx $3d                      ; f853: a6 3d
	stx $43                      ; f855: 86 43
	jsr $f5e7                    ; f857: 20 e7 f5
loc_f85a:
	jsr $f627                    ; f85a: 20 27 f6
loc_f85d:
	lda.b #$80                   ; f85d: a9 80
	sta $2115                    ; f85f: 8d 15 21 ; VMAIN
	jsr $890c                    ; f862: 20 0c 89
loc_f865:
	lda.b #$01                   ; f865: a9 01
	sta $4300                    ; f867: 8d 00 43 ; DMAP0
	ldx $99                      ; f86a: a6 99
	stx $2116                    ; f86c: 8e 16 21 ; VMADDL
	ldx.w #$0adb                 ; f86f: a2 db 0a
	stx $4302                    ; f872: 8e 02 43 ; A1TL0
	ldx $95                      ; f875: a6 95
	stx $4305                    ; f877: 8e 05 43 ; DAS0L
	jsr $8918                    ; f87a: 20 18 89
loc_f87d:
	ldx $9b                      ; f87d: a6 9b
	stx $2116                    ; f87f: 8e 16 21 ; VMADDL
	stz $420b                    ; f882: 9c 0b 42 ; MDMAEN
	ldx $97                      ; f885: a6 97
	.db $f0, $06                 ; f887: f0 06
loc_f889:
	stx $4305                    ; f889: 8e 05 43 ; DAS0L
	jsr $8918                    ; f88c: 20 18 89
loc_f88f:
	ldx $9d                      ; f88f: a6 9d
	stx $2116                    ; f891: 8e 16 21 ; VMADDL
	stz $420b                    ; f894: 9c 0b 42 ; MDMAEN
	ldx.w #$0b1b                 ; f897: a2 1b 0b
	stx $4302                    ; f89a: 8e 02 43 ; A1TL0
	ldx $95                      ; f89d: a6 95
	stx $4305                    ; f89f: 8e 05 43 ; DAS0L
	jsr $8918                    ; f8a2: 20 18 89
loc_f8a5:
	ldx $9f                      ; f8a5: a6 9f
	stx $2116                    ; f8a7: 8e 16 21 ; VMADDL
	stz $420b                    ; f8aa: 9c 0b 42 ; MDMAEN
	ldx $97                      ; f8ad: a6 97
	.db $f0, $06                 ; f8af: f0 06
loc_f8b1:
	stx $4305                    ; f8b1: 8e 05 43 ; DAS0L
	jsr $8918                    ; f8b4: 20 18 89
loc_f8b7:
	inc $08                      ; f8b7: e6 08
	dec $07                      ; f8b9: c6 07
	.db $f0, $03                 ; f8bb: f0 03
loc_f8bd:
	jmp $f845                    ; f8bd: 4c 45 f8

; --- Block at $f8c0-$f8c0 ---
loc_f8c0:
	rts                          ; f8c0: 60

; --- Block at $f8c1-$f907 ---
loc_f8c1:
	lda.b #$80                   ; f8c1: a9 80
	sta $2115                    ; f8c3: 8d 15 21 ; VMAIN
	jsr $890c                    ; f8c6: 20 0c 89
loc_f8c9:
	lda.b #$01                   ; f8c9: a9 01
	sta $4300                    ; f8cb: 8d 00 43 ; DMAP0
	jsr $fd2a                    ; f8ce: 20 2a fd
loc_f8d1:
	lda.b #$20                   ; f8d1: a9 20
	sta $07                      ; f8d3: 85 07
	lda.b #$00                   ; f8d5: a9 00
	sta $08                      ; f8d7: 85 08
	lda $08                      ; f8d9: a5 08
	and.b #$1f                   ; f8db: 29 1f
	sta $3e                      ; f8dd: 85 3e
	lda.b #$00                   ; f8df: a9 00
	sta $3d                      ; f8e1: 85 3d
	ldx $3d                      ; f8e3: a6 3d
	stx $43                      ; f8e5: 86 43
	jsr $f5e7                    ; f8e7: 20 e7 f5
loc_f8ea:
	jsr $f69a                    ; f8ea: 20 9a f6
loc_f8ed:
	jsr $f90b                    ; f8ed: 20 0b f9
loc_f8f0:
	lda.b #$10                   ; f8f0: a9 10
	sta $3d                      ; f8f2: 85 3d
	ldx $3d                      ; f8f4: a6 3d
	stx $43                      ; f8f6: 86 43
	jsr $f5e7                    ; f8f8: 20 e7 f5
loc_f8fb:
	jsr $f69a                    ; f8fb: 20 9a f6
loc_f8fe:
	jsr $f90b                    ; f8fe: 20 0b f9
loc_f901:
	inc $08                      ; f901: e6 08
	dec $07                      ; f903: c6 07
	.db $f0, $03                 ; f905: f0 03
loc_f907:
	jmp $f8d9                    ; f907: 4c d9 f8

; --- Block at $f90a-$f90a ---
loc_f90a:
	rts                          ; f90a: 60

; --- Block at $f90b-$f939 ---
loc_f90b:
	ldx $99                      ; f90b: a6 99
	stx $2116                    ; f90d: 8e 16 21 ; VMADDL
	stz $420b                    ; f910: 9c 0b 42 ; MDMAEN
	ldx.w #$0adb                 ; f913: a2 db 0a
	stx $4302                    ; f916: 8e 02 43 ; A1TL0
	ldx.w #$0040                 ; f919: a2 40 00
	stx $4305                    ; f91c: 8e 05 43 ; DAS0L
	jsr $8918                    ; f91f: 20 18 89
loc_f922:
	ldx $9d                      ; f922: a6 9d
	stx $2116                    ; f924: 8e 16 21 ; VMADDL
	stz $420b                    ; f927: 9c 0b 42 ; MDMAEN
	ldx.w #$0b1b                 ; f92a: a2 1b 0b
	stx $4302                    ; f92d: 8e 02 43 ; A1TL0
	ldx.w #$0040                 ; f930: a2 40 00
	stx $4305                    ; f933: 8e 05 43 ; DAS0L
	jsr $8918                    ; f936: 20 18 89
loc_f939:
	rts                          ; f939: 60

; --- Block at $fa98-$fab1 ---
loc_fa98:
	lda $ab                      ; fa98: a5 ab
	and.b #$01                   ; fa9a: 29 01
	.db $d0, $00                 ; fa9c: d0 00
loc_fa9e:
	lda $06fa                    ; fa9e: ad fa 06
	tax                          ; faa1: aa
	lda $ab                      ; faa2: a5 ab
	and.b #$02                   ; faa4: 29 02
	.db $d0, $0c                 ; faa6: d0 0c
loc_faa8:
	lda $070a                    ; faa8: ad 0a 07
	sec                          ; faab: 38
	sbc.b #$1f                   ; faac: e9 1f
	and $fc2f,x                  ; faae: 3d 2f fc
	jmp $fabd                    ; fab1: 4c bd fa

; --- Block at $fab4-$fadd ---
loc_fab4:
	lda $070a                    ; fab4: ad 0a 07
	clc                          ; fab7: 18
	adc.b #$20                   ; fab8: 69 20
	and $fc2f,x                  ; faba: 3d 2f fc
loc_fabd:
	sta $3d                      ; fabd: 85 3d
	sta $93                      ; fabf: 85 93
	stz $3e                      ; fac1: 64 3e
	stz $44                      ; fac3: 64 44
	lda $3d                      ; fac5: a5 3d
	and.b #$3f                   ; fac7: 29 3f
	sta $41                      ; fac9: 85 41
	stz $40                      ; facb: 64 40
	asl $3d                      ; facd: 06 3d
	rol $3e                      ; facf: 26 3e
	lda $1700                    ; fad1: ad 00 17
	.db $d0, $08                 ; fad4: d0 08
loc_fad6:
	jsr $faea                    ; fad6: 20 ea fa
loc_fad9:
	jsl $15c6fa                  ; fad9: 22 fa c6 15
loc_fadd:
	rts                          ; fadd: 60

; --- Block at $fade-$fae5 ---
loc_fade:
	cmp.b #$01                   ; fade: c9 01
	.db $d0, $04                 ; fae0: d0 04
loc_fae2:
	jsr $fb78                    ; fae2: 20 78 fb
loc_fae5:
	rts                          ; fae5: 60

; --- Block at $fae6-$fae9 ---
loc_fae6:
	jsr $fbc5                    ; fae6: 20 c5 fb
loc_fae9:
	rts                          ; fae9: 60

; --- Block at $faea-$fb1f ---
loc_faea:
	ldx $3d                      ; faea: a6 3d
	lda $168000,x                ; faec: bf 00 80 16
	sta $3d                      ; faf0: 85 3d
	lda $168001,x                ; faf2: bf 01 80 16
	sta $3e                      ; faf6: 85 3e
	ldx $3d                      ; faf8: a6 3d
	lda $168480,x                ; fafa: bf 80 84 16
	.db $10, $22                 ; fafe: 10 22
loc_fb00:
	and.b #$7f                   ; fb00: 29 7f
	pha                          ; fb02: 48
	lda $168481,x                ; fb03: bf 81 84 16
	tay                          ; fb07: a8
	iny                          ; fb08: c8
	pla                          ; fb09: 68
	ldx $40                      ; fb0a: a6 40
	sta $7f5c71,x                ; fb0c: 9f 71 5c 7f
	inx                          ; fb10: e8
	dey                          ; fb11: 88
	.db $d0, $f8                 ; fb12: d0 f8
loc_fb14:
	stx $40                      ; fb14: 86 40
	txa                          ; fb16: 8a
	.db $f0, $5e                 ; fb17: f0 5e
loc_fb19:
	ldx $3d                      ; fb19: a6 3d
	inx                          ; fb1b: e8
	inx                          ; fb1c: e8
	stx $3d                      ; fb1d: 86 3d
	jmp $fafa                    ; fb1f: 4c fa fa

; --- Block at $fb22-$fb43 ---
loc_fb22:
	cmp.b #$00                   ; fb22: c9 00
	.db $f0, $20                 ; fb24: f0 20
loc_fb26:
	cmp.b #$10                   ; fb26: c9 10
	.db $f0, $1c                 ; fb28: f0 1c
loc_fb2a:
	cmp.b #$20                   ; fb2a: c9 20
	.db $f0, $18                 ; fb2c: f0 18
loc_fb2e:
	cmp.b #$30                   ; fb2e: c9 30
	.db $f0, $14                 ; fb30: f0 14
loc_fb32:
	ldx $40                      ; fb32: a6 40
	sta $7f5c71,x                ; fb34: 9f 71 5c 7f
	inx                          ; fb38: e8
	stx $40                      ; fb39: 86 40
	txa                          ; fb3b: 8a
	.db $f0, $39                 ; fb3c: f0 39
loc_fb3e:
	ldx $3d                      ; fb3e: a6 3d
	inx                          ; fb40: e8
	stx $3d                      ; fb41: 86 3d
	jmp $fafa                    ; fb43: 4c fa fa

; --- Block at $fb46-$fb74 ---
loc_fb46:
	ldx $40                      ; fb46: a6 40
	sta $7f5c71,x                ; fb48: 9f 71 5c 7f
	inx                          ; fb4c: e8
	lsr                          ; fb4d: 4a
	lsr                          ; fb4e: 4a
	lsr                          ; fb4f: 4a
	sta $06                      ; fb50: 85 06
	lsr                          ; fb52: 4a
	clc                          ; fb53: 18
	adc $06                      ; fb54: 65 06
	clc                          ; fb56: 18
	adc.b #$70                   ; fb57: 69 70
	sta $7f5c71,x                ; fb59: 9f 71 5c 7f
	inx                          ; fb5d: e8
	inc                          ; fb5e: 1a
	sta $7f5c71,x                ; fb5f: 9f 71 5c 7f
	inx                          ; fb63: e8
	inc                          ; fb64: 1a
	sta $7f5c71,x                ; fb65: 9f 71 5c 7f
	inx                          ; fb69: e8
	stx $40                      ; fb6a: 86 40
	txa                          ; fb6c: 8a
	.db $f0, $08                 ; fb6d: f0 08
loc_fb6f:
	ldx $3d                      ; fb6f: a6 3d
	inx                          ; fb71: e8
	stx $3d                      ; fb72: 86 3d
	jmp $fafa                    ; fb74: 4c fa fa

; --- Block at $fb77-$fb77 ---
loc_fb77:
	rts                          ; fb77: 60

; --- Block at $fb78-$fbad ---
loc_fb78:
	ldx $3d                      ; fb78: a6 3d
	lda $168200,x                ; fb7a: bf 00 82 16
	sta $3d                      ; fb7e: 85 3d
	lda $168201,x                ; fb80: bf 01 82 16
	sta $3e                      ; fb84: 85 3e
	ldx $3d                      ; fb86: a6 3d
	lda $16c480,x                ; fb88: bf 80 c4 16
	.db $10, $22                 ; fb8c: 10 22
loc_fb8e:
	and.b #$7f                   ; fb8e: 29 7f
	pha                          ; fb90: 48
	lda $16c481,x                ; fb91: bf 81 c4 16
	tay                          ; fb95: a8
	iny                          ; fb96: c8
	pla                          ; fb97: 68
	ldx $40                      ; fb98: a6 40
	sta $7f5c71,x                ; fb9a: 9f 71 5c 7f
	inx                          ; fb9e: e8
	dey                          ; fb9f: 88
	.db $d0, $f8                 ; fba0: d0 f8
loc_fba2:
	stx $40                      ; fba2: 86 40
	txa                          ; fba4: 8a
	.db $f0, $1d                 ; fba5: f0 1d
loc_fba7:
	ldx $3d                      ; fba7: a6 3d
	inx                          ; fba9: e8
	inx                          ; fbaa: e8
	stx $3d                      ; fbab: 86 3d
	jmp $fb88                    ; fbad: 4c 88 fb

; --- Block at $fbb0-$fbc1 ---
loc_fbb0:
	ldx $40                      ; fbb0: a6 40
	sta $7f5c71,x                ; fbb2: 9f 71 5c 7f
	inx                          ; fbb6: e8
	stx $40                      ; fbb7: 86 40
	txa                          ; fbb9: 8a
	.db $f0, $08                 ; fbba: f0 08
loc_fbbc:
	ldx $3d                      ; fbbc: a6 3d
	inx                          ; fbbe: e8
	stx $3d                      ; fbbf: 86 3d
	jmp $fb88                    ; fbc1: 4c 88 fb

; --- Block at $fbc4-$fbc4 ---
loc_fbc4:
	rts                          ; fbc4: 60

; --- Block at $fbc5-$fbfc ---
loc_fbc5:
	ldx $3d                      ; fbc5: a6 3d
	lda $168400,x                ; fbc7: bf 00 84 16
	sta $3d                      ; fbcb: 85 3d
	lda $168401,x                ; fbcd: bf 01 84 16
	sta $3e                      ; fbd1: 85 3e
	ldx $3d                      ; fbd3: a6 3d
	lda $16e180,x                ; fbd5: bf 80 e1 16
	.db $10, $24                 ; fbd9: 10 24
loc_fbdb:
	and.b #$7f                   ; fbdb: 29 7f
	pha                          ; fbdd: 48
	lda $16e181,x                ; fbde: bf 81 e1 16
	tay                          ; fbe2: a8
	iny                          ; fbe3: c8
	pla                          ; fbe4: 68
	ldx $40                      ; fbe5: a6 40
	sta $7f5c71,x                ; fbe7: 9f 71 5c 7f
	inx                          ; fbeb: e8
	dey                          ; fbec: 88
	.db $d0, $f8                 ; fbed: d0 f8
loc_fbef:
	stx $40                      ; fbef: 86 40
	txa                          ; fbf1: 8a
	cmp.b #$40                   ; fbf2: c9 40
	.db $f0, $1f                 ; fbf4: f0 1f
loc_fbf6:
	ldx $3d                      ; fbf6: a6 3d
	inx                          ; fbf8: e8
	inx                          ; fbf9: e8
	stx $3d                      ; fbfa: 86 3d
	jmp $fbd5                    ; fbfc: 4c d5 fb

; --- Block at $fbff-$fc12 ---
loc_fbff:
	ldx $40                      ; fbff: a6 40
	sta $7f5c71,x                ; fc01: 9f 71 5c 7f
	inx                          ; fc05: e8
	stx $40                      ; fc06: 86 40
	txa                          ; fc08: 8a
	cmp.b #$40                   ; fc09: c9 40
	.db $f0, $08                 ; fc0b: f0 08
loc_fc0d:
	ldx $3d                      ; fc0d: a6 3d
	inx                          ; fc0f: e8
	stx $3d                      ; fc10: 86 3d
	jmp $fbd5                    ; fc12: 4c d5 fb

; --- Block at $fc15-$fc2e ---
loc_fc15:
	ldy.w #$0040                 ; fc15: a0 40 00
	ldx $40                      ; fc18: a6 40
	lda $7f5c31,x                ; fc1a: bf 31 5c 7f
	sta $7f5c71,x                ; fc1e: 9f 71 5c 7f
	sta $7f5cb1,x                ; fc22: 9f b1 5c 7f
	sta $7f5cf1,x                ; fc26: 9f f1 5c 7f
	inx                          ; fc2a: e8
	dey                          ; fc2b: 88
	.db $d0, $ec                 ; fc2c: d0 ec
loc_fc2e:
	rts                          ; fc2e: 60

; --- Block at $fc32-$fcbc ---
loc_fc32:
	sta $3d                      ; fc32: 85 3d
	stz $3e                      ; fc34: 64 3e
	lda.b #$17                   ; fc36: a9 17
	sta $06                      ; fc38: 85 06
	lda $0fe5                    ; fc3a: ad e5 0f
	and.b #$01                   ; fc3d: 29 01
	.db $d0, $05                 ; fc3f: d0 05
loc_fc41:
	lda $1701                    ; fc41: ad 01 17
	.db $f0, $02                 ; fc44: f0 02
loc_fc46:
	inc $3e                      ; fc46: e6 3e
loc_fc48:
	asl $3d                      ; fc48: 06 3d
	rol $3e                      ; fc4a: 26 3e
	ldx $3d                      ; fc4c: a6 3d
	lda $178000,x                ; fc4e: bf 00 80 17
	sta $3d                      ; fc52: 85 3d
	lda $178001,x                ; fc54: bf 01 80 17
	sta $3e                      ; fc58: 85 3e
	.db $10, $06                 ; fc5a: 10 06
loc_fc5c:
	inc $06                      ; fc5c: e6 06
	and.b #$7f                   ; fc5e: 29 7f
	sta $3e                      ; fc60: 85 3e
loc_fc62:
	lda $178002,x                ; fc62: bf 02 80 17
	sta $40                      ; fc66: 85 40
	lda $178003,x                ; fc68: bf 03 80 17
	and.b #$7f                   ; fc6c: 29 7f
	sta $41                      ; fc6e: 85 41
	ldx $3d                      ; fc70: a6 3d
	cpx $40                      ; fc72: e4 40
	.db $90, $07                 ; fc74: 90 07
loc_fc76:
	lda $41                      ; fc76: a5 41
	clc                          ; fc78: 18
	adc.b #$80                   ; fc79: 69 80
	sta $41                      ; fc7b: 85 41
loc_fc7d:
	lda $0fe5                    ; fc7d: ad e5 0f
	and.b #$01                   ; fc80: 29 01
	.db $d0, $05                 ; fc82: d0 05
loc_fc84:
	lda $1701                    ; fc84: ad 01 17
	.db $f0, $02                 ; fc87: f0 02
loc_fc89:
	inc $06                      ; fc89: e6 06
loc_fc8b:
	lda $40                      ; fc8b: a5 40
	sec                          ; fc8d: 38
	sbc $3d                      ; fc8e: e5 3d
	sta $40                      ; fc90: 85 40
	lda $41                      ; fc92: a5 41
	sbc $3e                      ; fc94: e5 3e
	sta $41                      ; fc96: 85 41
	ldy $3d                      ; fc98: a4 3d
	ldx.w #$0000                 ; fc9a: a2 00 00
	lda $06                      ; fc9d: a5 06
	pha                          ; fc9f: 48
	plb                          ; fca0: ab
	lda RESET,y                  ; fca1: b9 00 80
	sta $7f4400,x                ; fca4: 9f 00 44 7f
	inx                          ; fca8: e8
	cpx $40                      ; fca9: e4 40
	.db $f0, $12                 ; fcab: f0 12
loc_fcad:
	iny                          ; fcad: c8
	cpy.w #RESET                 ; fcae: c0 00 80
	.db $d0, $ee                 ; fcb1: d0 ee
loc_fcb3:
	ldy.w #$0000                 ; fcb3: a0 00 00
	inc $06                      ; fcb6: e6 06
	lda $06                      ; fcb8: a5 06
	pha                          ; fcba: 48
	plb                          ; fcbb: ab
	jmp $fca1                    ; fcbc: 4c a1 fc

; --- Block at $fcbf-$fcfe ---
loc_fcbf:
	lda.b #$00                   ; fcbf: a9 00
	pha                          ; fcc1: 48
	plb                          ; fcc2: ab
	ldx.w #$0000                 ; fcc3: a2 00 00
	stx $40                      ; fcc6: 86 40
	stx $3d                      ; fcc8: 86 3d
	lda $7f4400,x                ; fcca: bf 00 44 7f
	.db $10, $31                 ; fcce: 10 31
loc_fcd0:
	and.b #$7f                   ; fcd0: 29 7f
	pha                          ; fcd2: 48
	lda $7f4401,x                ; fcd3: bf 01 44 7f
	tay                          ; fcd7: a8
	iny                          ; fcd8: c8
	pla                          ; fcd9: 68
	ldx $40                      ; fcda: a6 40
	sta $7f5c71,x                ; fcdc: 9f 71 5c 7f
	inx                          ; fce0: e8
	stx $40                      ; fce1: 86 40
	pha                          ; fce3: 48
	txa                          ; fce4: 8a
	cmp.b #$20                   ; fce5: c9 20
	.db $d0, $06                 ; fce7: d0 06
loc_fce9:
	inc $41                      ; fce9: e6 41
	stz $40                      ; fceb: 64 40
	ldx $40                      ; fced: a6 40
loc_fcef:
	pla                          ; fcef: 68
	cpx.w #$2000                 ; fcf0: e0 00 20
	.db $f0, $2d                 ; fcf3: f0 2d
loc_fcf5:
	dey                          ; fcf5: 88
	.db $d0, $e4                 ; fcf6: d0 e4
loc_fcf8:
	ldx $3d                      ; fcf8: a6 3d
	inx                          ; fcfa: e8
	inx                          ; fcfb: e8
	stx $3d                      ; fcfc: 86 3d
	jmp $fcca                    ; fcfe: 4c ca fc

; --- Block at $fd01-$fd1f ---
loc_fd01:
	ldx $40                      ; fd01: a6 40
	sta $7f5c71,x                ; fd03: 9f 71 5c 7f
	inx                          ; fd07: e8
	stx $40                      ; fd08: 86 40
	txa                          ; fd0a: 8a
	cmp.b #$20                   ; fd0b: c9 20
	.db $d0, $04                 ; fd0d: d0 04
loc_fd0f:
	stz $40                      ; fd0f: 64 40
	inc $41                      ; fd11: e6 41
loc_fd13:
	ldx $40                      ; fd13: a6 40
	cpx.w #$2000                 ; fd15: e0 00 20
	.db $f0, $08                 ; fd18: f0 08
loc_fd1a:
	ldx $3d                      ; fd1a: a6 3d
	inx                          ; fd1c: e8
	stx $3d                      ; fd1d: 86 3d
	jmp $fcca                    ; fd1f: 4c ca fc

; --- Block at $fd22-$fd22 ---
loc_fd22:
	rts                          ; fd22: 60

; --- Block at $fd23-$fd29 ---
loc_fd23:
	lda $06f9                    ; fd23: ad f9 06
	jsr $fc32                    ; fd26: 20 32 fc
loc_fd29:
	rts                          ; fd29: 60

; --- Block at $fd2a-$fd30 ---
loc_fd2a:
	lda $0fe3                    ; fd2a: ad e3 0f
	jsr $fc32                    ; fd2d: 20 32 fc
loc_fd30:
	rts                          ; fd30: 60

