; Disassembled by Peony
; Platform: SNES
; Mapper: FINAL FANTASY 2
; MapMode: LoRom
; RomSize: 1024K
; Banks: 32
; CopierHeader: False

.snes

; --- Block at $8000-$835f ---
bank24_start:
	adc $08,x                    ; 8000: 75 08
	phd                          ; 8002: 0b
	inc $0d16                    ; 8003: ee 16 0d
	bit $7e76,x                  ; 8006: 3c 76 7e
	ora ($35,x)                  ; 8009: 01 35
	tsb $0b10                    ; 800b: 0c 10 0b
	inc $0d16                    ; 800e: ee 16 0d
	bit $810c,x                  ; 8011: 3c 0c 81
	ora $78,s                    ; 8014: 03 78
	phd                          ; 8016: 0b
	inc $1616                    ; 8017: ee 16 16
	ora $0c                      ; 801a: 05 0c
	adc [$01]                    ; 801c: 67 01
	adc [$01]                    ; 801e: 67 01
	ora $3f,s                    ; 8020: 03 3f
	inc $0d17                    ; 8022: ee 17 0d
	tsb $7f01                    ; 8025: 0c 01 7f
	sta ($01,x)                  ; 8028: 81 01
	phd                          ; 802a: 0b
	inc $0d18                    ; 802b: ee 18 0d
	tsb $0167                    ; 802e: 0c 67 01
	adc [$01]                    ; 8031: 67 01
	phd                          ; 8033: 0b
	inc $0d18                    ; 8034: ee 18 0d
	tsb $0381                    ; 8037: 0c 81 03
	phd                          ; 803a: 0b
	inc $1618                    ; 803b: ee 18 16
	tsb $05                      ; 803e: 04 05
	ora ($03,x)                  ; 8040: 01 03
	tsb $3f                      ; 8042: 04 3f
	inc $161a                    ; 8044: ee 1a 16
	jml $ffee3f                  ; 8047: 5c 3f ee ff
	inc $eeff                    ; 804b: ee ff ee
	phy                          ; 804e: 5a
	pha                          ; 804f: 48
	sty $04,x                    ; 8050: 94 04
	lsr                          ; 8052: 4a
	inc $0d18                    ; 8053: ee 18 0d
	bit.b #$04                   ; 8056: 89 04
	phd                          ; 8058: 0b
	inc $0d18                    ; 8059: ee 18 0d
	sta ($04),y                  ; 805c: 91 04
	phd                          ; 805e: 0b
	inc $0d18                    ; 805f: ee 18 0d
	ror $03b6,x                  ; 8062: 7e b6 03
	ora ($94,s),y                ; 8065: 13 94
	ora ($4a,x)                  ; 8067: 01 4a
	inc $0d15                    ; 8069: ee 15 0d
	ldx $01,y                    ; 806c: b6 01
	sei                          ; 806e: 78
	ldx $01,y                    ; 806f: b6 01
	php                          ; 8071: 08
	bit.b #$01                   ; 8072: 89 01
	ora ($4a,s),y                ; 8074: 13 4a
	inc $0d14                    ; 8076: ee 14 0d
	ldx $02,y                    ; 8079: b6 02
	ror $1036,x                  ; 807b: 7e 36 10
	sta ($01),y                  ; 807e: 91 01
	php                          ; 8080: 08
	phd                          ; 8081: 0b
	inc $0d14                    ; 8082: ee 14 0d
	rol $03,x                    ; 8085: 36 03
	ora $b6                      ; 8087: 05 b6
	tsb $10                      ; 8089: 04 10
	phd                          ; 808b: 0b
	inc $0d14                    ; 808c: ee 14 0d
	and ($0b,s),y                ; 808f: 33 0b
	asl $04,x                    ; 8091: 16 04
	ora $36                      ; 8093: 05 36
	ror $6636,x                  ; 8095: 7e 36 66
	phd                          ; 8098: 0b
	inc $0d14                    ; 8099: ee 14 0d
	and $13,x                    ; 809c: 35 13
	sty $01,x                    ; 809e: 94 01
	ora $33,x                    ; 80a0: 15 33
	and ($66,x)                  ; 80a2: 21 66
	ror $0b,x                    ; 80a4: 76 0b
	inc $0d14                    ; 80a6: ee 14 0d
	tsb $8908                    ; 80a9: 0c 08 89
	ora ($0a,x)                  ; 80ac: 01 0a
	and $75,x                    ; 80ae: 35 75
	ror $01,x                    ; 80b0: 76 01
	phd                          ; 80b2: 0b
	inc $0d14                    ; 80b3: ee 14 0d
	tsb $9110                    ; 80b6: 0c 10 91
	ora ($12,x)                  ; 80b9: 01 12
	tsb $0181                    ; 80bb: 0c 81 01
	ora $3f,s                    ; 80be: 03 3f
	inc $0d14                    ; 80c0: ee 14 0d
	tsb $0581                    ; 80c3: 0c 81 05
	ora $3f,s                    ; 80c6: 03 3f
	inc $1615                    ; 80c8: ee 15 16
	sty $01                      ; 80cb: 84 01
	ora $01                      ; 80cd: 05 01
	ora $84,s                    ; 80cf: 03 84
	ora ($3f,x)                  ; 80d1: 01 3f
	inc $1619                    ; 80d3: ee 19 16
	jml $ffee3f                  ; 80d6: 5c 3f ee ff
	inc $eeff                    ; 80da: ee ff ee
	tcd                          ; 80dd: 5b
	.db $80, $ff                 ; 80de: 80 ff
	.db $80, $ff                 ; 80e0: 80 ff
	.db $80, $ff                 ; 80e2: 80 ff
	.db $80, $ff                 ; 80e4: 80 ff
	.db $80, $03                 ; 80e6: 80 03
	cpx $ecff                    ; 80e8: ec ff ec
loc_80eb:
	sbc $ecffec,x                ; 80eb: ff ec ff ec
	sbc $9903ec,x                ; 80ef: ff ec 03 99
	tsb $9a                      ; 80f3: 04 9a
	cop #$99                     ; 80f5: 02 99
	asl $1a                      ; 80f7: 06 1a
	sta $9a03,y                  ; 80f9: 99 03 9a
	ora ($99,x)                  ; 80fc: 01 99
	asl $18                      ; 80fe: 06 18
	sta $9a06,y                  ; 8100: 99 06 9a
	cop #$99                     ; 8103: 02 99
	asl $1a                      ; 8105: 06 1a
	sta $9a03,y                  ; 8107: 99 03 9a
	ora ($99,x)                  ; 810a: 01 99
	asl $18                      ; 810c: 06 18
	sta $9a06,y                  ; 810e: 99 06 9a
	cop #$99                     ; 8111: 02 99
	asl $1a                      ; 8113: 06 1a
	sta $9a03,y                  ; 8115: 99 03 9a
	ora ($99,x)                  ; 8118: 01 99
	ora $98                      ; 811a: 05 98
	ora ($99,x)                  ; 811c: 01 99
	asl $9a                      ; 811e: 06 9a
	cop #$99                     ; 8120: 02 99
	asl $1a                      ; 8122: 06 1a
	sta $9a03,y                  ; 8124: 99 03 9a
	ora ($99,x)                  ; 8127: 01 99
	ora $98                      ; 8129: 05 98
	ora ($99,x)                  ; 812b: 01 99
	asl $9a                      ; 812d: 06 9a
	cop #$99                     ; 812f: 02 99
	asl $1a                      ; 8131: 06 1a
	sta $9a03,y                  ; 8133: 99 03 9a
	ora ($99,x)                  ; 8136: 01 99
	ora $98                      ; 8138: 05 98
	ora ($99,x)                  ; 813a: 01 99
	asl $9a                      ; 813c: 06 9a
	cop #$99                     ; 813e: 02 99
	asl $1a                      ; 8140: 06 1a
	sta $9a03,y                  ; 8142: 99 03 9a
	ora ($99,x)                  ; 8145: 01 99
	ora $98                      ; 8147: 05 98
	ora ($99,x)                  ; 8149: 01 99
	asl $9a                      ; 814b: 06 9a
	cop #$99                     ; 814d: 02 99
	asl $1a                      ; 814f: 06 1a
	sta $9a03,y                  ; 8151: 99 03 9a
	ora ($6e,x)                  ; 8154: 01 6e
	sta $9805,y                  ; 8156: 99 05 98
	ora ($99,x)                  ; 8159: 01 99
	ora $9a                      ; 815b: 05 9a
	cop #$99                     ; 815d: 02 99
	asl $1a                      ; 815f: 06 1a
	sta $9a03,y                  ; 8161: 99 03 9a
	ora ($6f,x)                  ; 8164: 01 6f
	sta $9805,y                  ; 8166: 99 05 98
	ora ($19,x)                  ; 8169: 01 19
	tya                          ; 816b: 98
	ora ($99,x)                  ; 816c: 01 99
	cop #$9a                     ; 816e: 02 9a
	cop #$6e                     ; 8170: 02 6e
	sta $1a05,y                  ; 8172: 99 05 1a
	sta $1a03,y                  ; 8175: 99 03 1a
	rol                          ; 8178: 2a
	ora.b #$37                   ; 8179: 09 37
	sta $1805,y                  ; 817b: 99 05 18
	ora $0198,y                  ; 817e: 19 98 01
	sta $9a02,y                  ; 8181: 99 02 9a
	cop #$6f                     ; 8184: 02 6f
	sta $1a05,y                  ; 8186: 99 05 1a
	lda.b #$03                   ; 8189: a9 03
	rol                          ; 818b: 2a
	bit.b #$01                   ; 818c: 89 01
	asl                          ; 818e: 0a
	sta $9806,y                  ; 818f: 99 06 98
	cop #$99                     ; 8192: 02 99
	cop #$9a                     ; 8194: 02 9a
	ora ($64,x)                  ; 8196: 01 64
	ora.b #$28                   ; 8198: 09 28
	lda.b #$04                   ; 819a: a9 04
	rol                          ; 819c: 2a
	bit.b #$06                   ; 819d: 89 06
	asl                          ; 819f: 0a
	sta $3502,y                  ; 81a0: 99 02 35
	ldx $02,y                    ; 81a3: b6 02
	and [$98],y                  ; 81a5: 37 98
	ora ($99,x)                  ; 81a7: 01 99
	cop #$9a                     ; 81a9: 02 9a
	ora ($3f,x)                  ; 81ab: 01 3f
	bit.b #$0e                   ; 81ad: 89 0e
	ora ($99)                    ; 81af: 12 99
	cop #$08                     ; 81b1: 02 08
	bit.b #$02                   ; 81b3: 89 02
	asl                          ; 81b5: 0a
	clc                          ; 81b6: 18
	sta $9a03,y                  ; 81b7: 99 03 9a
	ora ($3f,x)                  ; 81ba: 01 3f
	bit.b #$0d                   ; 81bc: 89 0d
	ora ($1a)                    ; 81be: 12 1a
	sta $0802,y                  ; 81c0: 99 02 08
	bit.b #$02                   ; 81c3: 89 02
	asl                          ; 81c5: 0a
	clc                          ; 81c6: 18
	sta $9a03,y                  ; 81c7: 99 03 9a
	ora ($23,x)                  ; 81ca: 01 23
	bit $10                      ; 81cc: 24 10
	sta ($06),y                  ; 81ce: 91 06
	bit.b #$03                   ; 81d0: 89 03
	ora ($9a)                    ; 81d2: 12 9a
	ora ($99,x)                  ; 81d4: 01 99
	cop #$10                     ; 81d6: 02 10
	sta ($02),y                  ; 81d8: 91 02
	ora ($98)                    ; 81da: 12 98
	ora ($99,x)                  ; 81dc: 01 99
	cop #$9a                     ; 81de: 02 9a
	ora ($2b,x)                  ; 81e0: 01 2b
	bit $9918                    ; 81e2: 2c 18 99
	asl $10                      ; 81e5: 06 10
	sta ($01),y                  ; 81e7: 91 01
	ora ($1a)                    ; 81e9: 12 1a
	jsl $99372a                  ; 81eb: 22 2a 37 99
loc_81ef:
	ora $1a                      ; 81ef: 05 1a
	tya                          ; 81f1: 98
	ora ($99,x)                  ; 81f2: 01 99
	cop #$9a                     ; 81f4: 02 9a
	ora ($33,x)                  ; 81f6: 01 33
	bit $18,x                    ; 81f8: 34 18
	sta $1806,y                  ; 81fa: 99 06 18
	sta $1a01,y                  ; 81fd: 99 01 1a
	jsl $0a092a                  ; 8200: 22 2a 09 0a
loc_8204:
	clc                          ; 8204: 18
	sta $1a04,y                  ; 8205: 99 04 1a
	tya                          ; 8208: 98
	ora ($99,x)                  ; 8209: 01 99
	cop #$1a                     ; 820b: 02 1a
	rol                          ; 820d: 2a
	bit.b #$01                   ; 820e: 89 01
	plp                          ; 8210: 28
	lda.b #$06                   ; 8211: a9 06
	jsr $0199                    ; 8213: 20 99 01
loc_8216:
	jsl $897b2a                  ; 8216: 22 2a 7b 89
loc_821a:
	ora ($37,x)                  ; 821a: 01 37
	sta $1a04,y                  ; 821c: 99 04 1a
	tya                          ; 821f: 98
	ora ($99,x)                  ; 8220: 01 99
	cop #$1a                     ; 8222: 02 1a
	.db $10, $89                 ; 8224: 10 89
loc_8226:
	ora.b #$28                   ; 8226: 09 28
	lda.b #$01                   ; 8228: a9 01
	rol                          ; 822a: 2a
	bit.b #$01                   ; 822b: 89 01
	tdc                          ; 822d: 7b
	ora.b #$0a                   ; 822e: 09 0a
	sta $1a04,y                  ; 8230: 99 04 1a
	tya                          ; 8233: 98
	ora ($99,x)                  ; 8234: 01 99
	cop #$1a                     ; 8236: 02 1a
	clc                          ; 8238: 18
	.db $10, $11                 ; 8239: 10 11
loc_823b:
	bit.b #$0d                   ; 823b: 89 0d
	tdc                          ; 823d: 7b
	ora.b #$0a                   ; 823e: 09 0a
	sta $1a04,y                  ; 8240: 99 04 1a
	tya                          ; 8243: 98
	ora ($99,x)                  ; 8244: 01 99
	ora ($29,x)                  ; 8246: 01 29
	rol                          ; 8248: 2a
	plp                          ; 8249: 28
	clc                          ; 824a: 18
	ora $8910,y                  ; 824b: 19 10 89
	phd                          ; 824e: 0b
	sta ($02),y                  ; 824f: 91 02
	ora ($99)                    ; 8251: 12 99
	tsb $1a                      ; 8253: 04 1a
	tya                          ; 8255: 98
	ora ($99,x)                  ; 8256: 01 99
	ora ($08,x)                  ; 8258: 01 08
	bit.b #$01                   ; 825a: 89 01
	plp                          ; 825c: 28
	and.b #$18                   ; 825d: 29 18
	.db $10, $89                 ; 825f: 10 89
loc_8261:
	ora $72,s                    ; 8261: 03 72
	bit.b #$04                   ; 8263: 89 04
	ora ($99)                    ; 8265: 12 99
	cop #$1a                     ; 8267: 02 1a
	sta $1a04,y                  ; 8269: 99 04 1a
	tya                          ; 826c: 98
	ora ($99,x)                  ; 826d: 01 99
	ora ($08,x)                  ; 826f: 01 08
	bit.b #$03                   ; 8271: 89 03
	plp                          ; 8273: 28
	clc                          ; 8274: 18
	.db $10, $91                 ; 8275: 10 91
loc_8277:
	ora ($12,x)                  ; 8277: 01 12
	pla                          ; 8279: 68
	.db $10, $91                 ; 827a: 10 91
loc_827c:
	cop #$12                     ; 827c: 02 12
	inc                          ; 827e: 1a
	sta $1a02,y                  ; 827f: 99 02 1a
	sta $1a04,y                  ; 8282: 99 04 1a
	tya                          ; 8285: 98
	ora ($99,x)                  ; 8286: 01 99
	ora ($08,x)                  ; 8288: 01 08
	bit.b #$04                   ; 828a: 89 04
	plp                          ; 828c: 28
	sta $2202,y                  ; 828d: 99 02 22
	pla                          ; 8290: 68
	jsr $0299                    ; 8291: 20 99 02
loc_8294:
	inc                          ; 8294: 1a
	rol                          ; 8295: 2a
	and [$99],y                  ; 8296: 37 99
	ora ($1a,x)                  ; 8298: 01 1a
	sta $1a04,y                  ; 829a: 99 04 1a
	tya                          ; 829d: 98
	ora ($99,x)                  ; 829e: 01 99
	ora ($10,x)                  ; 82a0: 01 10
	bit.b #$02                   ; 82a2: 89 02
	ora ($89),y                  ; 82a4: 11 89
	ora ($28,x)                  ; 82a6: 01 28
	lda.b #$01                   ; 82a8: a9 01
	rol                          ; 82aa: 2a
	ora.b #$28                   ; 82ab: 09 28
	lda.b #$02                   ; 82ad: a9 02
	rol                          ; 82af: 2a
	bit.b #$01                   ; 82b0: 89 01
	and [$19],y                  ; 82b2: 37 19
	inc                          ; 82b4: 1a
	sta $1a04,y                  ; 82b5: 99 04 1a
	plp                          ; 82b8: 28
	clc                          ; 82b9: 18
	sta $1801,y                  ; 82ba: 99 01 18
	.db $10, $11                 ; 82bd: 10 11
loc_82bf:
	ora ($19)                    ; 82bf: 12 19
	php                          ; 82c1: 08
	bit.b #$0c                   ; 82c2: 89 0c
	asl                          ; 82c4: 0a
	ora $991a,y                  ; 82c5: 19 1a 99
	tsb $1a                      ; 82c8: 04 1a
	ora.b #$28                   ; 82ca: 09 28
	lda.b #$01                   ; 82cc: a9 01
	jsr $1918                    ; 82ce: 20 18 19
loc_82d1:
	inc                          ; 82d1: 1a
	ora $8908,y                  ; 82d2: 19 08 89
	tsb $190a                    ; 82d5: 0c 0a 19
	inc                          ; 82d8: 1a
	and.b #$99                   ; 82d9: 29 99
	ora $1a,s                    ; 82db: 03 1a
	bit.b #$03                   ; 82dd: 89 03
	plp                          ; 82df: 28
	jsr $2219                    ; 82e0: 20 19 22
loc_82e3:
	and.b #$08                   ; 82e3: 29 08
	bit.b #$04                   ; 82e5: 89 04
	.db $30, $89                 ; 82e7: 30 89
loc_82e9:
	asl $0a                      ; 82e9: 06 0a
	ora $091a,y                  ; 82eb: 19 1a 09
	plp                          ; 82ee: 28
	lda.b #$02                   ; 82ef: a9 02
	rol                          ; 82f1: 2a
	bit.b #$04                   ; 82f2: 89 04
	plp                          ; 82f4: 28
	and.b #$2a                   ; 82f5: 29 2a
	ora.b #$10                   ; 82f7: 09 10
	sta ($01),y                  ; 82f9: 91 01
	ora ($10)                    ; 82fb: 12 10
	ora ($68)                    ; 82fd: 12 68
	.db $10, $91                 ; 82ff: 10 91
loc_8301:
	ora ($89,x)                  ; 8301: 01 89
	ora $12,s                    ; 8303: 03 12
	and.b #$2a                   ; 8305: 29 2a
	bit.b #$03                   ; 8307: 89 03
	ora ($89)                    ; 8309: 12 89
	ora.b #$18                   ; 830b: 09 18
	sta $1a01,y                  ; 830d: 99 01 1a
	clc                          ; 8310: 18
	inc                          ; 8311: 1a
	pla                          ; 8312: 68
	jsr $0199                    ; 8313: 20 99 01
loc_8316:
	.db $10, $91                 ; 8316: 10 91
loc_8318:
	ora ($12,x)                  ; 8318: 01 12
	inc                          ; 831a: 1a
	.db $10, $89                 ; 831b: 10 89
loc_831d:
	ora $12,s                    ; 831d: 03 12
	inc                          ; 831f: 1a
	bit.b #$09                   ; 8320: 89 09
	jsr $0199                    ; 8322: 20 99 01
loc_8325:
	jsl $682220                  ; 8325: 22 20 22 68
loc_8329:
	jsr $0199                    ; 8329: 20 99 01
loc_832c:
	clc                          ; 832c: 18
	sta $1a01,y                  ; 832d: 99 01 1a
	jsl $911018                  ; 8330: 22 18 10 91
loc_8334:
	ora ($12,x)                  ; 8334: 01 12
	inc                          ; 8336: 1a
	rol                          ; 8337: 2a
	bit.b #$09                   ; 8338: 89 09
	plp                          ; 833a: 28
	lda.b #$01                   ; 833b: a9 01
	rol                          ; 833d: 2a
	plp                          ; 833e: 28
	rol                          ; 833f: 2a
	.db $30, $28                 ; 8340: 30 28
loc_8342:
	lda.b #$01                   ; 8342: a9 01
	jsr $0199                    ; 8344: 20 99 01
loc_8347:
	jsl $18282a                  ; 8347: 22 2a 28 18
loc_834b:
	sta $1a01,y                  ; 834b: 99 01 1a
	rol                          ; 834e: 2a
	bit.b #$14                   ; 834f: 89 14
	plp                          ; 8351: 28
	lda.b #$01                   ; 8352: a9 01
	rol                          ; 8354: 2a
	bit.b #$01                   ; 8355: 89 01
	plp                          ; 8357: 28
	lda.b #$01                   ; 8358: a9 01
	rol                          ; 835a: 2a
	bit.b #$02                   ; 835b: 89 02
	sbc ($52,s),y                ; 835d: f3 52
	brk #$01                     ; 835f: 00 01

; --- Block at $80df-$80f3 ---
loc_80df:
	sbc $80ff80,x                ; 80df: ff 80 ff 80
loc_80e3:
	sbc $80ff80,x                ; 80e3: ff 80 ff 80
	ora $ec,s                    ; 80e7: 03 ec
	sbc $ecffec,x                ; 80e9: ff ec ff ec
	sbc $ecffec,x                ; 80ed: ff ec ff ec
	ora $99,s                    ; 80f1: 03 99

; --- Block at $80e1-$80e9 ---
loc_80e1:
	sbc $80ff80,x                ; 80e1: ff 80 ff 80
loc_80e5:
	sbc $ec0380,x                ; 80e5: ff 80 03 ec

; --- Block at $816a-$8170 ---
loc_816a:
	ora $0198,y                  ; 816a: 19 98 01
	sta $9a02,y                  ; 816d: 99 02 9a

; --- Block at $81d7-$81dc ---
loc_81d7:
	.db $10, $91                 ; 81d7: 10 91
loc_81d9:
	cop #$12                     ; 81d9: 02 12
	tya                          ; 81db: 98

; --- Block at $81ea-$81eb ---
loc_81ea:
	inc                          ; 81ea: 1a

; --- Block at $824c-$824e ---
loc_824c:
	.db $10, $89                 ; 824c: 10 89

; --- Block at $8272-$8274 ---
loc_8272:
	ora $28,s                    ; 8272: 03 28

; --- Block at $8292-$8295 ---
loc_8292:
	sta $1a02,y                  ; 8292: 99 02 1a

; --- Block at $82a9-$82ab ---
loc_82a9:
	ora ($2a,x)                  ; 82a9: 01 2a

; --- Block at $82d0-$82dd ---
loc_82d0:
	ora $191a,y                  ; 82d0: 19 1a 19
	php                          ; 82d3: 08
	bit.b #$0c                   ; 82d4: 89 0c
	asl                          ; 82d6: 0a
	ora $291a,y                  ; 82d7: 19 1a 29
	sta $1a03,y                  ; 82da: 99 03 1a

; --- Block at $836a-$836a ---
loc_836a:
	brk #$01                     ; 836a: 00 01

