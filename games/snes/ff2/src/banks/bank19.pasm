; Disassembled by Peony
; Platform: SNES
; Mapper: FINAL FANTASY 2
; MapMode: LoRom
; RomSize: 1024K
; Banks: 32
; CopierHeader: False

.snes

; --- Block at $8000-$8000 ---
bank19_start:
	brk #$00                     ; 8000: 00 00

; --- Block at $d62b-$d6e8 ---
loc_d62b:
	rep #$10                     ; d62b: c2 10
	sep #$20                     ; d62d: e2 20
	php                          ; d62f: 08
	phb                          ; d630: 8b
	phd                          ; d631: 0b
	ldx.w #$0008                 ; d632: a2 08 00
	stx.w $00a1                  ; d635: 8e a1 00
	ldx.w #$fff2                 ; d638: a2 f2 ff
	stx.w $00a3                  ; d63b: 8e a3 00
	lda.b #$01                   ; d63e: a9 01
	sta.l $000064                ; d640: 8f 64 00 00
	lda.b #$80                   ; d644: a9 80
	sta.l $00006a                ; d646: 8f 6a 00 00
	lda.b #$0a                   ; d64a: a9 0a
	sta.l $00006b                ; d64c: 8f 6b 00 00
	.db $80, $19                 ; d650: 80 19
	rep #$10                     ; d652: c2 10
	sep #$20                     ; d654: e2 20
	php                          ; d656: 08
	phb                          ; d657: 8b
	phd                          ; d658: 0b
	lda.b #$00                   ; d659: a9 00
	sta.l $000064                ; d65b: 8f 64 00 00
	lda.b #$e0                   ; d65f: a9 e0
	sta.l $00006a                ; d661: 8f 6a 00 00
	lda.b #$13                   ; d665: a9 13
	sta.l $00006b                ; d667: 8f 6b 00 00
loc_d66b:
	jsr $de14                    ; d66b: 20 14 de
loc_d66e:
	jsr $ddfb                    ; d66e: 20 fb dd
loc_d671:
	jsr $dc09                    ; d671: 20 09 dc
loc_d674:
	jsr $d8b5                    ; d674: 20 b5 d8
loc_d677:
	jsr $d764                    ; d677: 20 64 d7
loc_d67a:
	jsr $d730                    ; d67a: 20 30 d7
loc_d67d:
	jsr $d802                    ; d67d: 20 02 d8
loc_d680:
	stz $95                      ; d680: 64 95
	ldx.w #RESET                 ; d682: a2 00 80
	stx $57                      ; d685: 86 57
	tdc                          ; d687: 7b
	tax                          ; d688: aa
	stx $66                      ; d689: 86 66
	lda $64                      ; d68b: a5 64
	cmp.b #$01                   ; d68d: c9 01
	.db $f0, $1a                 ; d68f: f0 1a
loc_d691:
	cmp.b #$02                   ; d691: c9 02
	.db $f0, $08                 ; d693: f0 08
loc_d695:
	jsr $d92d                    ; d695: 20 2d d9
loc_d698:
	jsr $db4b                    ; d698: 20 4b db
loc_d69b:
	.db $80, $0e                 ; d69b: 80 0e
loc_d69d:
	ldx.w #$0050                 ; d69d: a2 50 00
	stx $96                      ; d6a0: 86 96
	jsr $d8e9                    ; d6a2: 20 e9 d8
loc_d6a5:
	jsr $ec95                    ; d6a5: 20 95 ec
loc_d6a8:
	jsr $db4b                    ; d6a8: 20 4b db
loc_d6ab:
	stz $7d1f                    ; d6ab: 9c 1f 7d
	stz $7d20                    ; d6ae: 9c 20 7d
	stz $3303                    ; d6b1: 9c 03 33
	inc $63                      ; d6b4: e6 63
	lda.l $004210                ; d6b6: af 10 42 00 ; RDNMI
	.db $10, $fa                 ; d6ba: 10 fa
loc_d6bc:
	lda.b #$11                   ; d6bc: a9 11
	sta $7d28                    ; d6be: 8d 28 7d
	sta.l $00212c                ; d6c1: 8f 2c 21 00 ; TM
	lda.b #$81                   ; d6c5: a9 81
	sta.l $004200                ; d6c7: 8f 00 42 00 ; NMITIMEN
	jsr $d718                    ; d6cb: 20 18 d7
loc_d6ce:
	tdc                          ; d6ce: 7b
	tax                          ; d6cf: aa
	stx.w $0068                  ; d6d0: 8e 68 00
	jsr $df41                    ; d6d3: 20 41 df
loc_d6d6:
	ldx.w $0068                  ; d6d6: ae 68 00
	inx                          ; d6d9: e8
	stx.w $0068                  ; d6da: 8e 68 00
	cpx.w $006a                  ; d6dd: ec 6a 00
	.db $90, $f1                 ; d6e0: 90 f1
loc_d6e2:
	lda $64                      ; d6e2: a5 64
	cmp.b #$02                   ; d6e4: c9 02
	.db $d0, $03                 ; d6e6: d0 03
loc_d6e8:
	jmp $ee3e                    ; d6e8: 4c 3e ee

; --- Block at $d6eb-$d717 ---
loc_d6eb:
	jsr $d705                    ; d6eb: 20 05 d7
loc_d6ee:
	tdc                          ; d6ee: 7b
	sta.l $004200                ; d6ef: 8f 00 42 00 ; NMITIMEN
	sta.l $00420b                ; d6f3: 8f 0b 42 00 ; MDMAEN
	sta.l $00420c                ; d6f7: 8f 0c 42 00 ; HDMAEN
	lda.b #$80                   ; d6fb: a9 80
	sta.l $002100                ; d6fd: 8f 00 21 00 ; INIDISP
	pld                          ; d701: 2b
	plb                          ; d702: ab
	plp                          ; d703: 28
	rtl                          ; d704: 6b
loc_d705:
	stz $9a                      ; d705: 64 9a
	jsr $df41                    ; d707: 20 41 df
loc_d70a:
	inc $9a                      ; d70a: e6 9a
	lda $9a                      ; d70c: a5 9a
	and.b #$0f                   ; d70e: 29 0f
	.db $d0, $f5                 ; d710: d0 f5
loc_d712:
	dec $3303                    ; d712: ce 03 33
	.db $d0, $f0                 ; d715: d0 f0
loc_d717:
	rts                          ; d717: 60

; --- Block at $d718-$d72f ---
loc_d718:
	stz $9a                      ; d718: 64 9a
	jsr $df41                    ; d71a: 20 41 df
loc_d71d:
	inc $9a                      ; d71d: e6 9a
	lda $9a                      ; d71f: a5 9a
	and.b #$0f                   ; d721: 29 0f
	.db $d0, $f5                 ; d723: d0 f5
loc_d725:
	inc $3303                    ; d725: ee 03 33
	lda $3303                    ; d728: ad 03 33
	cmp.b #$0f                   ; d72b: c9 0f
	.db $d0, $eb                 ; d72d: d0 eb
loc_d72f:
	rts                          ; d72f: 60

; --- Block at $d730-$d763 ---
loc_d730:
	lda $64                      ; d730: a5 64
	cmp.b #$02                   ; d732: c9 02
	.db $d0, $2d                 ; d734: d0 2d
loc_d736:
	ldx.w #$001b                 ; d736: a2 1b 00
	stx $2107                    ; d739: 8e 07 21 ; BG1SC
	phb                          ; d73c: 8b
	tdc                          ; d73d: 7b
	pha                          ; d73e: 48
	plb                          ; d73f: ab
	ldx.w #$3000                 ; d740: a2 00 30
	stx $2116                    ; d743: 8e 16 21 ; VMADDL
	tdc                          ; d746: 7b
	tax                          ; d747: aa
	lda $13f04d,x                ; d748: bf 4d f0 13
	pha                          ; d74c: 48
	and.b #$0f                   ; d74d: 29 0f
	sta $2119                    ; d74f: 8d 19 21 ; VMDATAH
	pla                          ; d752: 68
	and.b #$f0                   ; d753: 29 f0
	lsr                          ; d755: 4a
	lsr                          ; d756: 4a
	lsr                          ; d757: 4a
	lsr                          ; d758: 4a
	sta $2119                    ; d759: 8d 19 21 ; VMDATAH
	inx                          ; d75c: e8
	cpx.w #$0320                 ; d75d: e0 20 03
	.db $d0, $e6                 ; d760: d0 e6
loc_d762:
	plb                          ; d762: ab
loc_d763:
	rts                          ; d763: 60

; --- Block at $d764-$d7a5 ---
loc_d764:
	ldx.w #$0000                 ; d764: a2 00 00
	ldy.w #RESET                 ; d767: a0 00 80
	jsr $df19                    ; d76a: 20 19 df
loc_d76d:
	phb                          ; d76d: 8b
	tdc                          ; d76e: 7b
	pha                          ; d76f: 48
	plb                          ; d770: ab
	ldx.w #$0000                 ; d771: a2 00 00
	stx $2116                    ; d774: 8e 16 21 ; VMADDL
	stz $04                      ; d777: 64 04
	lda $64                      ; d779: a5 64
	cmp.b #$01                   ; d77b: c9 01
	.db $f0, $27                 ; d77d: f0 27
loc_d77f:
	cmp.b #$02                   ; d77f: c9 02
	.db $d0, $04                 ; d781: d0 04
loc_d783:
	lda.b #$40                   ; d783: a9 40
	sta $04                      ; d785: 85 04
loc_d787:
	tdc                          ; d787: 7b
	tax                          ; d788: aa
	lda $0af001,x                ; d789: bf 01 f0 0a
	sta $00                      ; d78d: 85 00
	ldy.w #$0008                 ; d78f: a0 08 00
	asl $00                      ; d792: 06 00
	rol                          ; d794: 2a
	and.b #$01                   ; d795: 29 01
	sta $2119                    ; d797: 8d 19 21 ; VMDATAH
	dey                          ; d79a: 88
	.db $d0, $f5                 ; d79b: d0 f5
loc_d79d:
	inx                          ; d79d: e8
	inx                          ; d79e: e8
	cpx.w #$1000                 ; d79f: e0 00 10
	.db $d0, $e5                 ; d7a2: d0 e5
loc_d7a4:
	plb                          ; d7a4: ab
	rts                          ; d7a5: 60

; --- Block at $d7a6-$d7d5 ---
loc_d7a6:
	ldx.w #$0040                 ; d7a6: a2 40 00
	tdc                          ; d7a9: 7b
	sta $2119                    ; d7aa: 8d 19 21 ; VMDATAH
	dex                          ; d7ad: ca
	.db $d0, $fa                 ; d7ae: d0 fa
loc_d7b0:
	tdc                          ; d7b0: 7b
	tax                          ; d7b1: aa
	lda $15d840,x                ; d7b2: bf 40 d8 15
	pha                          ; d7b6: 48
	and.b #$0f                   ; d7b7: 29 0f
	.db $f0, $02                 ; d7b9: f0 02
loc_d7bb:
	ora.b #$10                   ; d7bb: 09 10
loc_d7bd:
	sta $2119                    ; d7bd: 8d 19 21 ; VMDATAH
	pla                          ; d7c0: 68
	and.b #$f0                   ; d7c1: 29 f0
	.db $f0, $06                 ; d7c3: f0 06
loc_d7c5:
	lsr                          ; d7c5: 4a
	lsr                          ; d7c6: 4a
	lsr                          ; d7c7: 4a
	lsr                          ; d7c8: 4a
	ora.b #$10                   ; d7c9: 09 10
loc_d7cb:
	sta $2119                    ; d7cb: 8d 19 21 ; VMDATAH
	inx                          ; d7ce: e8
	cpx.w #$0800                 ; d7cf: e0 00 08
	.db $d0, $de                 ; d7d2: d0 de
loc_d7d4:
	plb                          ; d7d4: ab
	rts                          ; d7d5: 60

; --- Block at $d7d6-$d7ff ---
loc_d7d6:
	tdc                          ; d7d6: 7b
	sta.w $00a0                  ; d7d7: 8d a0 00
	sta.l $00211a                ; d7da: 8f 1a 21 00 ; M7SEL
	tax                          ; d7de: aa
	sta $7e8000,x                ; d7df: 9f 00 80 7e
	inx                          ; d7e3: e8
	cpx.w #RESET                 ; d7e4: e0 00 80
	.db $d0, $f6                 ; d7e7: d0 f6
loc_d7e9:
	ldx.w #RESET                 ; d7e9: a2 00 80
	stx $7d1b                    ; d7ec: 8e 1b 7d
	ldx.w #$f36d                 ; d7ef: a2 6d f3
	stx $7d19                    ; d7f2: 8e 19 7d
	lda.b #$13                   ; d7f5: a9 13
	sta $7d1e                    ; d7f7: 8d 1e 7d
	lda.b #$20                   ; d7fa: a9 20
	sta $7d1d                    ; d7fc: 8d 1d 7d
	jmp $eb04                    ; d7ff: 4c 04 eb

; --- Block at $d802-$d80f ---
loc_d802:
	lda $64                      ; d802: a5 64
	cmp.b #$01                   ; d804: c9 01
	.db $f0, $26                 ; d806: f0 26
loc_d808:
	cmp.b #$02                   ; d808: c9 02
	.db $d0, $06                 ; d80a: d0 06
loc_d80c:
	jsr $d7d6                    ; d80c: 20 d6 d7
loc_d80f:
	jmp $d85d                    ; d80f: 4c 5d d8

; --- Block at $d812-$d82b ---
loc_d812:
	ldx.w #$3d1e                 ; d812: a2 1e 3d
	stx $7d1b                    ; d815: 8e 1b 7d
	ldx.w #$e9c5                 ; d818: a2 c5 e9
	stx $7d19                    ; d81b: 8e 19 7d
	lda.b #$13                   ; d81e: a9 13
	sta $7d1e                    ; d820: 8d 1e 7d
	lda.b #$80                   ; d823: a9 80
	sta $7d1d                    ; d825: 8d 1d 7d
	jsr $eb04                    ; d828: 20 04 eb
loc_d82b:
	jmp $d85d                    ; d82b: 4c 5d d8

; --- Block at $d82e-$d87e ---
loc_d82e:
	tdc                          ; d82e: 7b
	tax                          ; d82f: aa
	ldy.w #$3d19                 ; d830: a0 19 3d
	sty $06                      ; d833: 84 06
	lda.b #$06                   ; d835: a9 06
	sta $02                      ; d837: 85 02
	lda.b #$01                   ; d839: a9 01
	sta $04                      ; d83b: 85 04
	tdc                          ; d83d: 7b
	tay                          ; d83e: a8
	lda $04                      ; d83f: a5 04
	sta ($06),y                  ; d841: 91 06
	inc $04                      ; d843: e6 04
	iny                          ; d845: c8
	inx                          ; d846: e8
	cpy.w #$0005                 ; d847: c0 05 00
	.db $d0, $f3                 ; d84a: d0 f3
loc_d84c:
	rep #$20                     ; d84c: c2 20
	lda $06                      ; d84e: a5 06
	clc                          ; d850: 18
	adc.w #$0080                 ; d851: 69 80 00
	sta $06                      ; d854: 85 06
	tdc                          ; d856: 7b
	sep #$20                     ; d857: e2 20
	dec $02                      ; d859: c6 02
	.db $d0, $e0                 ; d85b: d0 e0
loc_d85d:
	tdc                          ; d85d: 7b
	sta.l $002115                ; d85e: 8f 15 21 00 ; VMAIN
	sta.l $002116                ; d862: 8f 16 21 00 ; VMADDL
	sta.l $002117                ; d866: 8f 17 21 00 ; VMADDH
	tax                          ; d86a: aa
	lda $3d19,x                  ; d86b: bd 19 3d
	sta.l $002118                ; d86e: 8f 18 21 00 ; VMDATAL
	inx                          ; d872: e8
	cpx.w #$4000                 ; d873: e0 00 40
	.db $d0, $f3                 ; d876: d0 f3
loc_d878:
	lda.b #$80                   ; d878: a9 80
	sta.l $002115                ; d87a: 8f 15 21 00 ; VMAIN
	rts                          ; d87e: 60

; --- Block at $d87f-$d899 ---
loc_d87f:
	rol $2b0a,x                  ; d87f: 3e 0a 2b
	rol $2b09,x                  ; d882: 3e 09 2b
	rol $2b08,x                  ; d885: 3e 08 2b
	rol $2b07,x                  ; d888: 3e 07 2b
	rol $2b06,x                  ; d88b: 3e 06 2b
	rol $2b05,x                  ; d88e: 3e 05 2b
	rol $2b04,x                  ; d891: 3e 04 2b
	rol $2b03,x                  ; d894: 3e 03 2b
	rol $02                      ; d897: 26 02
	rts                          ; d899: 60

; --- Block at $d89a-$d8b4 ---
loc_d89a:
	ror $02                      ; d89a: 66 02
	ror $2f03,x                  ; d89c: 7e 03 2f
	ror $2f04,x                  ; d89f: 7e 04 2f
	ror $2f05,x                  ; d8a2: 7e 05 2f
	ror $2f06,x                  ; d8a5: 7e 06 2f
	ror $2f07,x                  ; d8a8: 7e 07 2f
	ror $2f08,x                  ; d8ab: 7e 08 2f
	ror $2f09,x                  ; d8ae: 7e 09 2f
	ror $2f0a,x                  ; d8b1: 7e 0a 2f
	rts                          ; d8b4: 60

; --- Block at $d8b5-$d8e8 ---
loc_d8b5:
	jsr $e247                    ; d8b5: 20 47 e2
loc_d8b8:
	ldx.w #$cc00                 ; d8b8: a2 00 cc
	stx $00                      ; d8bb: 86 00
	lda.b #$15                   ; d8bd: a9 15
	sta $02                      ; d8bf: 85 02
	tdc                          ; d8c1: 7b
	tax                          ; d8c2: aa
	stx $0a                      ; d8c3: 86 0a
	ldy $0a                      ; d8c5: a4 0a
	lda.b #$20                   ; d8c7: a9 20
	sta $08                      ; d8c9: 85 08
	lda [$00],y                  ; d8cb: b7 00
	sta $2703,x                  ; d8cd: 9d 03 27
	rep #$20                     ; d8d0: c2 20
	tya                          ; d8d2: 98
	clc                          ; d8d3: 18
	adc.w #$0020                 ; d8d4: 69 20 00
	tay                          ; d8d7: a8
	tdc                          ; d8d8: 7b
	sep #$20                     ; d8d9: e2 20
	inx                          ; d8db: e8
	dec $08                      ; d8dc: c6 08
	.db $d0, $eb                 ; d8de: d0 eb
loc_d8e0:
	inc $0a                      ; d8e0: e6 0a
	lda $0a                      ; d8e2: a5 0a
	cmp.b #$20                   ; d8e4: c9 20
	.db $d0, $dd                 ; d8e6: d0 dd
loc_d8e8:
	rts                          ; d8e8: 60

; --- Block at $d8e9-$d8f9 ---
loc_d8e9:
	ldx.w #$0032                 ; d8e9: a2 32 00
	stx $00                      ; d8ec: 86 00
	ldx.w #$d300                 ; d8ee: a2 00 d3
	ldy.w #$4000                 ; d8f1: a0 00 40
	lda.b #$13                   ; d8f4: a9 13
	jsr $d8fa                    ; d8f6: 20 fa d8
loc_d8f9:
	rts                          ; d8f9: 60

; --- Block at $d8fa-$d92c ---
loc_d8fa:
	phb                          ; d8fa: 8b
	pha                          ; d8fb: 48
	plb                          ; d8fc: ab
	sty $2116                    ; d8fd: 8c 16 21 ; VMADDL
	stx $02                      ; d900: 86 02
	ldy.w #$0000                 ; d902: a0 00 00
	rep #$20                     ; d905: c2 20
	pha                          ; d907: 48
	ldx.w #$0008                 ; d908: a2 08 00
	lda ($02),y                  ; d90b: b1 02
	sta $2118                    ; d90d: 8d 18 21 ; VMDATAL
	iny                          ; d910: c8
	iny                          ; d911: c8
	dex                          ; d912: ca
	.db $d0, $f6                 ; d913: d0 f6
loc_d915:
	ldx.w #$0008                 ; d915: a2 08 00
	pla                          ; d918: 68
	sep #$20                     ; d919: e2 20
	lda ($02),y                  ; d91b: b1 02
	sta $2118                    ; d91d: 8d 18 21 ; VMDATAL
	stz $2119                    ; d920: 9c 19 21 ; VMDATAH
	iny                          ; d923: c8
	dex                          ; d924: ca
	.db $d0, $f4                 ; d925: d0 f4
loc_d927:
	dec $00                      ; d927: c6 00
	.db $d0, $da                 ; d929: d0 da
loc_d92b:
	plb                          ; d92b: ab
	rts                          ; d92c: 60

; --- Block at $d92d-$d976 ---
loc_d92d:
	ldx.w #$fe00                 ; d92d: a2 00 fe
	stx $66                      ; d930: 86 66
	ldx.w #RESET                 ; d932: a2 00 80
	stx $53                      ; d935: 86 53
	lda.b #$7e                   ; d937: a9 7e
	sta $55                      ; d939: 85 55
	ldx.w #$0000                 ; d93b: a2 00 00
	phx                          ; d93e: da
	jsr $d990                    ; d93f: 20 90 d9
loc_d942:
	ldx.w #$2f03                 ; d942: a2 03 2f
	stx $00                      ; d945: 86 00
	tdc                          ; d947: 7b
	tax                          ; d948: aa
	stx $0a                      ; d949: 86 0a
	ldy $0a                      ; d94b: a4 0a
	lda.b #$20                   ; d94d: a9 20
	sta $08                      ; d94f: 85 08
	lda ($00),y                  ; d951: b1 00
	sta [$53]                    ; d953: 87 53
	rep #$20                     ; d955: c2 20
	inc $53                      ; d957: e6 53
	tya                          ; d959: 98
	clc                          ; d95a: 18
	adc.w #$0020                 ; d95b: 69 20 00
	tay                          ; d95e: a8
	tdc                          ; d95f: 7b
	sep #$20                     ; d960: e2 20
	inx                          ; d962: e8
	dec $08                      ; d963: c6 08
	.db $d0, $ea                 ; d965: d0 ea
loc_d967:
	inc $0a                      ; d967: e6 0a
	lda $0a                      ; d969: a5 0a
	cmp.b #$20                   ; d96b: c9 20
	.db $d0, $dc                 ; d96d: d0 dc
loc_d96f:
	plx                          ; d96f: fa
	inx                          ; d970: e8
	cpx.w #$0020                 ; d971: e0 20 00
	.db $d0, $c8                 ; d974: d0 c8
loc_d976:
	rts                          ; d976: 60

; --- Block at $d977-$d98f ---
loc_d977:
	rol $270a,x                  ; d977: 3e 0a 27
	rol $2709,x                  ; d97a: 3e 09 27
	rol $2708,x                  ; d97d: 3e 08 27
	rol $2707,x                  ; d980: 3e 07 27
	rol $2706,x                  ; d983: 3e 06 27
	rol $2705,x                  ; d986: 3e 05 27
	rol $2704,x                  ; d989: 3e 04 27
	rol $2703,x                  ; d98c: 3e 03 27
	rts                          ; d98f: 60

; --- Block at $d990-$da65 ---
loc_d990:
	tdc                          ; d990: 7b
	tax                          ; d991: aa
	stx $00                      ; d992: 86 00
	stz $0a                      ; d994: 64 0a
	lda $2703,x                  ; d996: bd 03 27
	asl                          ; d999: 0a
	jsr $d977                    ; d99a: 20 77 d9
loc_d99d:
	jsr $d977                    ; d99d: 20 77 d9
loc_d9a0:
	rep #$20                     ; d9a0: c2 20
	lda $2703,x                  ; d9a2: bd 03 27
	sta $2b03,x                  ; d9a5: 9d 03 2b
	lda $2705,x                  ; d9a8: bd 05 27
	sta $2b05,x                  ; d9ab: 9d 05 2b
	lda $2707,x                  ; d9ae: bd 07 27
	sta $2b07,x                  ; d9b1: 9d 07 2b
	lda $2709,x                  ; d9b4: bd 09 27
	sta $2b09,x                  ; d9b7: 9d 09 2b
	stz $2f03,x                  ; d9ba: 9e 03 2f
	stz $2f05,x                  ; d9bd: 9e 05 2f
	stz $2f07,x                  ; d9c0: 9e 07 2f
	stz $2f08,x                  ; d9c3: 9e 08 2f
	tdc                          ; d9c6: 7b
	sep #$20                     ; d9c7: e2 20
	phx                          ; d9c9: da
	lda $00                      ; d9ca: a5 00
	clc                          ; d9cc: 18
	adc $01                      ; d9cd: 65 01
	tax                          ; d9cf: aa
	tdc                          ; d9d0: 7b
	tay                          ; d9d1: a8
	lda $13df57,x                ; d9d2: bf 57 df 13
	sta.w $0042,y                ; d9d6: 99 42 00
	inx                          ; d9d9: e8
	iny                          ; d9da: c8
	cpy.w #$0008                 ; d9db: c0 08 00
	.db $d0, $f2                 ; d9de: d0 f2
loc_d9e0:
	plx                          ; d9e0: fa
	lda.b #$30                   ; d9e1: a9 30
	sta $04                      ; d9e3: 85 04
	jsr $d87f                    ; d9e5: 20 7f d8
loc_d9e8:
	asl $47                      ; d9e8: 06 47
	rol $46                      ; d9ea: 26 46
	rol $45                      ; d9ec: 26 45
	rol $44                      ; d9ee: 26 44
	rol $43                      ; d9f0: 26 43
	rol $42                      ; d9f2: 26 42
	.db $90, $03                 ; d9f4: 90 03
loc_d9f6:
	jsr $d89a                    ; d9f6: 20 9a d8
loc_d9f9:
	dec $04                      ; d9f9: c6 04
	.db $d0, $e8                 ; d9fb: d0 e8
loc_d9fd:
	phx                          ; d9fd: da
	lda $00                      ; d9fe: a5 00
	lsr                          ; da00: 4a
	lsr                          ; da01: 4a
	lsr                          ; da02: 4a
	sta $04                      ; da03: 85 04
	lda $01                      ; da05: a5 01
	lsr                          ; da07: 4a
	lsr                          ; da08: 4a
	lsr                          ; da09: 4a
	clc                          ; da0a: 18
	adc $04                      ; da0b: 65 04
	and.b #$1f                   ; da0d: 29 1f
	tax                          ; da0f: aa
	lda $13e4f2,x                ; da10: bf f2 e4 13
	.db $f0, $20                 ; da14: f0 20
loc_da16:
	plx                          ; da16: fa
	sta $04                      ; da17: 85 04
	lsr $2f03,x                  ; da19: 5e 03 2f
	ror $2f04,x                  ; da1c: 7e 04 2f
	ror $2f05,x                  ; da1f: 7e 05 2f
	ror $2f06,x                  ; da22: 7e 06 2f
	ror $2f07,x                  ; da25: 7e 07 2f
	ror $2f08,x                  ; da28: 7e 08 2f
	ror $2f09,x                  ; da2b: 7e 09 2f
	ror $2f0a,x                  ; da2e: 7e 0a 2f
	dec $04                      ; da31: c6 04
	.db $d0, $e4                 ; da33: d0 e4
loc_da35:
	phx                          ; da35: da
loc_da36:
	lda $00                      ; da36: a5 00
	clc                          ; da38: 18
	adc.b #$40                   ; da39: 69 40
	sta $00                      ; da3b: 85 00
	inc $0a                      ; da3d: e6 0a
	lda $0a                      ; da3f: a5 0a
	and.b #$07                   ; da41: 29 07
	.db $d0, $07                 ; da43: d0 07
loc_da45:
	lda $01                      ; da45: a5 01
	clc                          ; da47: 18
	adc.b #$08                   ; da48: 69 08
	sta $01                      ; da4a: 85 01
loc_da4c:
	lda $0a                      ; da4c: a5 0a
	and.b #$3f                   ; da4e: 29 3f
	.db $d0, $02                 ; da50: d0 02
loc_da52:
	stz $01                      ; da52: 64 01
loc_da54:
	plx                          ; da54: fa
	rep #$20                     ; da55: c2 20
	txa                          ; da57: 8a
	clc                          ; da58: 18
	adc.w #$0008                 ; da59: 69 08 00
	tax                          ; da5c: aa
	tdc                          ; da5d: 7b
	sep #$20                     ; da5e: e2 20
	cpx.w #$0400                 ; da60: e0 00 04
	.db $f0, $03                 ; da63: f0 03
loc_da65:
	jmp $d996                    ; da65: 4c 96 d9

; --- Block at $da68-$da68 ---
loc_da68:
	rts                          ; da68: 60

; --- Block at $da6e-$db08 ---
loc_da6e:
	stz $52                      ; da6e: 64 52
	lda $4f                      ; da70: a5 4f
	rep #$20                     ; da72: c2 20
	asl                          ; da74: 0a
	asl                          ; da75: 0a
	tax                          ; da76: aa
	lda $50                      ; da77: a5 50
	and.w #$00ff                 ; da79: 29 ff 00
	asl                          ; da7c: 0a
	asl                          ; da7d: 0a
	tay                          ; da7e: a8
	tdc                          ; da7f: 7b
	sep #$20                     ; da80: e2 20
	lda $50                      ; da82: a5 50
	sta $30                      ; da84: 85 30
	lda $12f660,x                ; da86: bf 60 f6 12
	sta $28                      ; da8a: 85 28
	stz $29                      ; da8c: 64 29
	lda $12f661,x                ; da8e: bf 61 f6 12
	clc                          ; da92: 18
	adc $4d                      ; da93: 65 4d
	sta $0301,y                  ; da95: 99 01 03
	rep #$20                     ; da98: c2 20
	lda $28                      ; da9a: a5 28
	clc                          ; da9c: 18
	adc $4b                      ; da9d: 65 4b
	and.w #$01ff                 ; da9f: 29 ff 01
	sta $28                      ; daa2: 85 28
	tdc                          ; daa4: 7b
	sep #$20                     ; daa5: e2 20
	lda $28                      ; daa7: a5 28
	sta $0300,y                  ; daa9: 99 00 03
	lda $12f662,x                ; daac: bf 62 f6 12
	sta $0302,y                  ; dab0: 99 02 03
	lda $52                      ; dab3: a5 52
	.db $f0, $0a                 ; dab5: f0 0a
loc_dab7:
	lda $12f663,x                ; dab7: bf 63 f6 12
	and.b #$f1                   ; dabb: 29 f1
	ora $52                      ; dabd: 05 52
	.db $80, $04                 ; dabf: 80 04
loc_dac1:
	lda $12f663,x                ; dac1: bf 63 f6 12
loc_dac5:
	sta $0303,y                  ; dac5: 99 03 03
	phx                          ; dac8: da
	lda $30                      ; dac9: a5 30
	lsr                          ; dacb: 4a
	lsr                          ; dacc: 4a
	sta $2c                      ; dacd: 85 2c
	lda $30                      ; dacf: a5 30
	and.b #$03                   ; dad1: 29 03
	sta $2e                      ; dad3: 85 2e
	tax                          ; dad5: aa
	lda $13db0c,x                ; dad6: bf 0c db 13
	sta $2d                      ; dada: 85 2d
	lda $2e                      ; dadc: a5 2e
	.db $f0, $08                 ; dade: f0 08
loc_dae0:
	asl $29                      ; dae0: 06 29
	asl $29                      ; dae2: 06 29
	dec $2e                      ; dae4: c6 2e
	.db $d0, $f8                 ; dae6: d0 f8
loc_dae8:
	lda $2c                      ; dae8: a5 2c
	tax                          ; daea: aa
	lda $0500,x                  ; daeb: bd 00 05
	and $2d                      ; daee: 25 2d
	ora $29                      ; daf0: 05 29
	sta $0500,x                  ; daf2: 9d 00 05
	plx                          ; daf5: fa
	inc $30                      ; daf6: e6 30
	inc $4f                      ; daf8: e6 4f
	inc $50                      ; dafa: e6 50
	inx                          ; dafc: e8
	inx                          ; dafd: e8
	inx                          ; dafe: e8
	inx                          ; daff: e8
	iny                          ; db00: c8
	iny                          ; db01: c8
	iny                          ; db02: c8
	iny                          ; db03: c8
	dec $51                      ; db04: c6 51
	.db $f0, $03                 ; db06: f0 03
loc_db08:
	jmp $da86                    ; db08: 4c 86 da

; --- Block at $db0b-$db0b ---
loc_db0b:
	rts                          ; db0b: 60

; --- Block at $db23-$db35 ---
loc_db23:
	ldx.w #$0020                 ; db23: a2 20 00
	stx $2080                    ; db26: 8e 80 20
	stx $2082                    ; db29: 8e 82 20
	ldx.w #$0040                 ; db2c: a2 40 00
	stx $20c0                    ; db2f: 8e c0 20
	stx $20c2                    ; db32: 8e c2 20
	rts                          ; db35: 60

; --- Block at $db4b-$dba6 ---
loc_db4b:
	tdc                          ; db4b: 7b
	tax                          ; db4c: aa
	lda $13db36,x                ; db4d: bf 36 db 13
	sta $3304,x                  ; db51: 9d 04 33
	inx                          ; db54: e8
	cpx.w #$0015                 ; db55: e0 15 00
	.db $d0, $f3                 ; db58: d0 f3
loc_db5a:
	phb                          ; db5a: 8b
	tdc                          ; db5b: 7b
	pha                          ; db5c: 48
	plb                          ; db5d: ab
	lda.b #$43                   ; db5e: a9 43
	sta $4300                    ; db60: 8d 00 43 ; DMAP0
	sta $4310                    ; db63: 8d 10 43 ; DMAP1
	lda.b #$42                   ; db66: a9 42
	sta $4320                    ; db68: 8d 20 43 ; DMAP2
	lda.b #$1b                   ; db6b: a9 1b
	sta $4301                    ; db6d: 8d 01 43 ; BBAD0
	lda.b #$1d                   ; db70: a9 1d
	sta $4311                    ; db72: 8d 11 43 ; BBAD1
	lda.b #$0e                   ; db75: a9 0e
	sta $4321                    ; db77: 8d 21 43 ; BBAD2
	ldx.w #$3304                 ; db7a: a2 04 33
	stx $4302                    ; db7d: 8e 02 43 ; A1TL0
	ldx.w #$330b                 ; db80: a2 0b 33
	stx $4312                    ; db83: 8e 12 43 ; A1TL1
	ldx.w #$3312                 ; db86: a2 12 33
	stx $4322                    ; db89: 8e 22 43 ; A1TL2
	lda.b #$7e                   ; db8c: a9 7e
	sta $4304                    ; db8e: 8d 04 43 ; A1B0
	sta $4307                    ; db91: 8d 07 43 ; DASB0
	sta $4314                    ; db94: 8d 14 43 ; A1B1
	sta $4317                    ; db97: 8d 17 43 ; DASB1
	sta $4324                    ; db9a: 8d 24 43 ; A1B2
	sta $4327                    ; db9d: 8d 27 43 ; DASB2
	lda.b #$03                   ; dba0: a9 03
	sta $420c                    ; dba2: 8d 0c 42 ; HDMAEN
	plb                          ; dba5: ab
	rts                          ; dba6: 60

; --- Block at $dbe8-$dc08 ---
loc_dbe8:
	phx                          ; dbe8: da
	rep #$20                     ; dbe9: c2 20
	txa                          ; dbeb: 8a
	ldx.w #$0000                 ; dbec: a2 00 00
	sta $3319,x                  ; dbef: 9d 19 33
	sta $371b,x                  ; dbf2: 9d 1b 37
	stz $331b,x                  ; dbf5: 9e 1b 33
	stz $3719,x                  ; dbf8: 9e 19 37
	inx                          ; dbfb: e8
	inx                          ; dbfc: e8
	inx                          ; dbfd: e8
	inx                          ; dbfe: e8
	cpx.w #$0400                 ; dbff: e0 00 04
	.db $d0, $eb                 ; dc02: d0 eb
loc_dc04:
	tdc                          ; dc04: 7b
	sep #$20                     ; dc05: e2 20
	plx                          ; dc07: fa
	rts                          ; dc08: 60

; --- Block at $dc09-$dd7e ---
loc_dc09:
	stz $7d25                    ; dc09: 9c 25 7d
	ldx.w #$0080                 ; dc0c: a2 80 00
	stx $08                      ; dc0f: 86 08
	stx $0a                      ; dc11: 86 0a
	ldx.w #$0100                 ; dc13: a2 00 01
	stx $00                      ; dc16: 86 00
	stx $06                      ; dc18: 86 06
	ldx.w #$0100                 ; dc1a: a2 00 01
	jsr $dbe8                    ; dc1d: 20 e8 db
loc_dc20:
	rep #$20                     ; dc20: c2 20
	tdc                          ; dc22: 7b
	tax                          ; dc23: aa
	ldy.w #$0280                 ; dc24: a0 80 02
	lda $00                      ; dc27: a5 00
	sta $3319,y                  ; dc29: 99 19 33
	lda $06                      ; dc2c: a5 06
	sta $371b,y                  ; dc2e: 99 1b 37
	lda $00                      ; dc31: a5 00
	sec                          ; dc33: 38
	sbc.w #$0002                 ; dc34: e9 02 00
	sta $00                      ; dc37: 85 00
	lda $06                      ; dc39: a5 06
	sec                          ; dc3b: 38
	sbc.w #$0001                 ; dc3c: e9 01 00
	sta $06                      ; dc3f: 85 06
	tya                          ; dc41: 98
	clc                          ; dc42: 18
	adc.w #$0004                 ; dc43: 69 04 00
	tay                          ; dc46: a8
	inx                          ; dc47: e8
	cpy.w #$0400                 ; dc48: c0 00 04
	.db $d0, $da                 ; dc4b: d0 da
loc_dc4d:
	lda $64                      ; dc4d: a5 64
	and.w #$00ff                 ; dc4f: 29 ff 00
	tax                          ; dc52: aa
	cpx.w #$0002                 ; dc53: e0 02 00
	.db $f0, $23                 ; dc56: f0 23
loc_dc58:
	ldy.w #$0280                 ; dc58: a0 80 02
	ldx.w #$0104                 ; dc5b: a2 04 01
	lda $3319,y                  ; dc5e: b9 19 33
	sta $3319,x                  ; dc61: 9d 19 33
	lda $371b,y                  ; dc64: b9 1b 37
	sta $371b,x                  ; dc67: 9d 1b 37
	txa                          ; dc6a: 8a
	sec                          ; dc6b: 38
	sbc.w #$0004                 ; dc6c: e9 04 00
	tax                          ; dc6f: aa
	tya                          ; dc70: 98
	clc                          ; dc71: 18
	adc.w #$0004                 ; dc72: 69 04 00
	tay                          ; dc75: a8
	cpy.w #$0400                 ; dc76: c0 00 04
	.db $d0, $e3                 ; dc79: d0 e3
loc_dc7b:
	tdc                          ; dc7b: 7b
	sep #$20                     ; dc7c: e2 20
	lda $64                      ; dc7e: a5 64
	cmp.b #$01                   ; dc80: c9 01
	.db $f0, $0e                 ; dc82: f0 0e
loc_dc84:
	ldx.w #$0080                 ; dc84: a2 80 00
	stx.w $008c                  ; dc87: 8e 8c 00
	stx.w $008e                  ; dc8a: 8e 8e 00
	ldx.w #$0100                 ; dc8d: a2 00 01
	.db $80, $0e                 ; dc90: 80 0e
loc_dc92:
	tdc                          ; dc92: 7b
	tax                          ; dc93: aa
	stx.w $008c                  ; dc94: 8e 8c 00
	ldx.w #$0020                 ; dc97: a2 20 00
	stx.w $008e                  ; dc9a: 8e 8e 00
	ldx.w #$0a00                 ; dc9d: a2 00 0a
loc_dca0:
	stx.w $0061                  ; dca0: 8e 61 00
	tdc                          ; dca3: 7b
	tax                          ; dca4: aa
	stx $40                      ; dca5: 86 40
	stx $5d                      ; dca7: 86 5d
	stx $5f                      ; dca9: 86 5f
	sta $63                      ; dcab: 85 63
	sta $4a                      ; dcad: 85 4a
	sta.w $005b                  ; dcaf: 8d 5b 00
	ldx.w #$1000                 ; dcb2: a2 00 10
	stx $92                      ; dcb5: 86 92
	ldx.w #RESET                 ; dcb7: a2 00 80
	stx $90                      ; dcba: 86 90
	tdc                          ; dcbc: 7b
	tax                          ; dcbd: aa
	lda $64                      ; dcbe: a5 64
	cmp.b #$02                   ; dcc0: c9 02
	.db $d0, $06                 ; dcc2: d0 06
loc_dcc4:
	lda $13d510,x                ; dcc4: bf 10 d5 13
	.db $80, $04                 ; dcc8: 80 04
loc_dcca:
	lda $13d200,x                ; dcca: bf 00 d2 13
loc_dcce:
	sta $2103,x                  ; dcce: 9d 03 21 ; OAMADDH
	sta $2203,x                  ; dcd1: 9d 03 22
	inx                          ; dcd4: e8
	cpx.w #$0100                 ; dcd5: e0 00 01
	.db $d0, $e4                 ; dcd8: d0 e4
loc_dcda:
	stz $2100                    ; dcda: 9c 00 21 ; INIDISP
	ldx.w #$1000                 ; dcdd: a2 00 10
	stx $00                      ; dce0: 86 00
	ldx.w #$cc00                 ; dce2: a2 00 cc
	ldy.w #$4000                 ; dce5: a0 00 40
	lda.b #$15                   ; dce8: a9 15
	jsr $ddd6                    ; dcea: 20 d6 dd
loc_dced:
	ldx.w #$0070                 ; dced: a2 70 00
	stx $6c                      ; dcf0: 86 6c
	ldx.w #$0050                 ; dcf2: a2 50 00
	stx $6e                      ; dcf5: 86 6e
	ldx.w #$0070                 ; dcf7: a2 70 00
	stx $70                      ; dcfa: 86 70
	ldx.w #$0050                 ; dcfc: a2 50 00
	stx $72                      ; dcff: 86 72
	jsr $db23                    ; dd01: 20 23 db
loc_dd04:
	jsr $e122                    ; dd04: 20 22 e1
loc_dd07:
	ldx.w #$0040                 ; dd07: a2 40 00
	stx $2084                    ; dd0a: 8e 84 20
	ldx.w #$0180                 ; dd0d: a2 80 01
	stx $20c4                    ; dd10: 8e c4 20
	ldx.w #$0040                 ; dd13: a2 40 00
	stx $208a                    ; dd16: 8e 8a 20
	ldx.w #$00c0                 ; dd19: a2 c0 00
	stx $20ca                    ; dd1c: 8e ca 20
	ldx.w #$0180                 ; dd1f: a2 80 01
	stx $200a                    ; dd22: 8e 0a 20
	ldx.w #$0300                 ; dd25: a2 00 03
	stx $204a                    ; dd28: 8e 4a 20
	ldx.w #$0018                 ; dd2b: a2 18 00
	stx $2086                    ; dd2e: 8e 86 20
	ldx.w #$0100                 ; dd31: a2 00 01
	stx $20c6                    ; dd34: 8e c6 20
	ldx.w #$0008                 ; dd37: a2 08 00
	stx $2088                    ; dd3a: 8e 88 20
	ldx.w #$00a0                 ; dd3d: a2 a0 00
	stx $20c8                    ; dd40: 8e c8 20
	ldx.w #$0000                 ; dd43: a2 00 00
	ldy.w #$0100                 ; dd46: a0 00 01
	jsr $e10c                    ; dd49: 20 0c e1
loc_dd4c:
	ldx.w #$0002                 ; dd4c: a2 02 00
	ldy.w #$0000                 ; dd4f: a0 00 00
	jsr $e10c                    ; dd52: 20 0c e1
loc_dd55:
	ldx.w #$0004                 ; dd55: a2 04 00
	ldy.w #$0100                 ; dd58: a0 00 01
	jsr $e10c                    ; dd5b: 20 0c e1
loc_dd5e:
	ldx.w #$0006                 ; dd5e: a2 06 00
	ldy.w #$0154                 ; dd61: a0 54 01
	jsr $e10c                    ; dd64: 20 0c e1
loc_dd67:
	ldx.w #$0008                 ; dd67: a2 08 00
	ldy.w #$02f4                 ; dd6a: a0 f4 02
	jsr $e10c                    ; dd6d: 20 0c e1
loc_dd70:
	jsr $dd7f                    ; dd70: 20 7f dd
loc_dd73:
	tdc                          ; dd73: 7b
	tax                          ; dd74: aa
	sta $3d19,x                  ; dd75: 9d 19 3d
	inx                          ; dd78: e8
	cpx.w #$4000                 ; dd79: e0 00 40
	.db $d0, $f7                 ; dd7c: d0 f7
loc_dd7e:
	rts                          ; dd7e: 60

; --- Block at $dd7f-$ddba ---
loc_dd7f:
	ldx.w #$0000                 ; dd7f: a2 00 00
	ldy.w #$0008                 ; dd82: a0 08 00
	jsr $ddbb                    ; dd85: 20 bb dd
loc_dd88:
	ldx.w #$0002                 ; dd88: a2 02 00
	ldy.w #$000c                 ; dd8b: a0 0c 00
	jsr $ddbb                    ; dd8e: 20 bb dd
loc_dd91:
	ldx.w #$0004                 ; dd91: a2 04 00
	ldy.w #$0010                 ; dd94: a0 10 00
	jsr $ddbb                    ; dd97: 20 bb dd
loc_dd9a:
	ldx.w #$0006                 ; dd9a: a2 06 00
	ldy.w #$0014                 ; dd9d: a0 14 00
	jsr $ddbb                    ; dda0: 20 bb dd
loc_dda3:
	ldx.w #$0008                 ; dda3: a2 08 00
	ldy.w #$0018                 ; dda6: a0 18 00
	jsr $ddbb                    ; dda9: 20 bb dd
loc_ddac:
	lda.w $005b                  ; ddac: ad 5b 00
	.db $f0, $09                 ; ddaf: f0 09
loc_ddb1:
	ldx.w #$000a                 ; ddb1: a2 0a 00
	ldy.w #$001c                 ; ddb4: a0 1c 00
	jsr $ddbb                    ; ddb7: 20 bb dd
loc_ddba:
	rts                          ; ddba: 60

; --- Block at $ddbb-$ddd5 ---
loc_ddbb:
	jsr $e578                    ; ddbb: 20 78 e5
loc_ddbe:
	rep #$20                     ; ddbe: c2 20
	lda $1e                      ; ddc0: a5 1e
	sta.w $006c,y                ; ddc2: 99 6c 00
	tdc                          ; ddc5: 7b
	sep #$20                     ; ddc6: e2 20
	jsr $e565                    ; ddc8: 20 65 e5
loc_ddcb:
	rep #$20                     ; ddcb: c2 20
	lda $1e                      ; ddcd: a5 1e
	sta.w $006e,y                ; ddcf: 99 6e 00
	tdc                          ; ddd2: 7b
	sep #$20                     ; ddd3: e2 20
	rts                          ; ddd5: 60

; --- Block at $ddd6-$ddfa ---
loc_ddd6:
	phb                          ; ddd6: 8b
	pha                          ; ddd7: 48
	tdc                          ; ddd8: 7b
	pha                          ; ddd9: 48
	plb                          ; ddda: ab
	pla                          ; dddb: 68
	sty $2116                    ; dddc: 8c 16 21 ; VMADDL
	stx $4352                    ; dddf: 8e 52 43 ; A1TL5
	sta $4354                    ; dde2: 8d 54 43 ; A1B5
	lda.b #$01                   ; dde5: a9 01
	sta $4350                    ; dde7: 8d 50 43 ; DMAP5
	lda.b #$18                   ; ddea: a9 18
	sta $4351                    ; ddec: 8d 51 43 ; BBAD5
	ldx $00                      ; ddef: a6 00
	stx $4355                    ; ddf1: 8e 55 43 ; DAS5L
	lda.b #$20                   ; ddf4: a9 20
	sta $420b                    ; ddf6: 8d 0b 42 ; MDMAEN
	plb                          ; ddf9: ab
	rts                          ; ddfa: 60

; --- Block at $ddfb-$de05 ---
loc_ddfb:
	ldx.w #$0220                 ; ddfb: a2 20 02
	tdc                          ; ddfe: 7b
	sta $02ff,x                  ; ddff: 9d ff 02
	dex                          ; de02: ca
	.db $d0, $fa                 ; de03: d0 fa
loc_de05:
	rts                          ; de05: 60

; --- Block at $de14-$df18 ---
loc_de14:
	lda.b #$00                   ; de14: a9 00
	sta $4200                    ; de16: 8d 00 42 ; NMITIMEN
	pha                          ; de19: 48
	plb                          ; de1a: ab
	ldx.w #$0000                 ; de1b: a2 00 00
	phx                          ; de1e: da
	pld                          ; de1f: 2b
	lda.b #$80                   ; de20: a9 80
	sta $2100                    ; de22: 8d 00 21 ; INIDISP
	lda.b #$07                   ; de25: a9 07
	sta $2105                    ; de27: 8d 05 21 ; BGMODE
	ldx.w #$0300                 ; de2a: a2 00 03
	stx $2102                    ; de2d: 8e 02 21 ; OAMADDL
	lda.b #$80                   ; de30: a9 80
	sta.w $00a0                  ; de32: 8d a0 00
	sta $211a                    ; de35: 8d 1a 21 ; M7SEL
	lda.b #$02                   ; de38: a9 02
	sta $2101                    ; de3a: 8d 01 21 ; OBSEL
	lda.b #$00                   ; de3d: a9 00
	sta $210b                    ; de3f: 8d 0b 21 ; BG12NBA
	sta $210c                    ; de42: 8d 0c 21 ; BG34NBA
	lda.b #$80                   ; de45: a9 80
	sta $2115                    ; de47: 8d 15 21 ; VMAIN
	tdc                          ; de4a: 7b
	tax                          ; de4b: aa
	sta $211b                    ; de4c: 8d 1b 21 ; M7A
	sta $211b                    ; de4f: 8d 1b 21 ; M7A
	sta $211c                    ; de52: 8d 1c 21 ; M7B
	sta $211c                    ; de55: 8d 1c 21 ; M7B
	sta $211d                    ; de58: 8d 1d 21 ; M7C
	sta $211d                    ; de5b: 8d 1d 21 ; M7C
	sta $211e                    ; de5e: 8d 1e 21 ; M7D
	sta $211e                    ; de61: 8d 1e 21 ; M7D
	sta $211f                    ; de64: 8d 1f 21 ; M7X
	sta $211f                    ; de67: 8d 1f 21 ; M7X
	sta $2120                    ; de6a: 8d 20 21 ; M7Y
	sta $2120                    ; de6d: 8d 20 21 ; M7Y
	sta $2106                    ; de70: 8d 06 21 ; MOSAIC
	sta $2107                    ; de73: 8d 07 21 ; BG1SC
	sta $2108                    ; de76: 8d 08 21 ; BG2SC
	sta $2109                    ; de79: 8d 09 21 ; BG3SC
	sta $210a                    ; de7c: 8d 0a 21 ; BG4SC
	sta $210d                    ; de7f: 8d 0d 21 ; BG1HOFS
	sta $210d                    ; de82: 8d 0d 21 ; BG1HOFS
	sta $210e                    ; de85: 8d 0e 21 ; BG1VOFS
	sta $210e                    ; de88: 8d 0e 21 ; BG1VOFS
	sta $210f                    ; de8b: 8d 0f 21 ; BG2HOFS
	sta $210f                    ; de8e: 8d 0f 21 ; BG2HOFS
	sta $2110                    ; de91: 8d 10 21 ; BG2VOFS
	sta $2110                    ; de94: 8d 10 21 ; BG2VOFS
	sta $2111                    ; de97: 8d 11 21 ; BG3HOFS
	sta $2111                    ; de9a: 8d 11 21 ; BG3HOFS
	sta $2112                    ; de9d: 8d 12 21 ; BG3VOFS
	sta $2112                    ; dea0: 8d 12 21 ; BG3VOFS
	sta $2113                    ; dea3: 8d 13 21 ; BG4HOFS
	sta $2113                    ; dea6: 8d 13 21 ; BG4HOFS
	sta $2114                    ; dea9: 8d 14 21 ; BG4VOFS
	sta $2114                    ; deac: 8d 14 21 ; BG4VOFS
	sta $2128                    ; deaf: 8d 28 21 ; WH2
	sta $2129                    ; deb2: 8d 29 21 ; WH3
	stx $212a                    ; deb5: 8e 2a 21 ; WBGLOG
	sta $212c                    ; deb8: 8d 2c 21 ; TM
	sta $212d                    ; debb: 8d 2d 21 ; TS
	sta $212e                    ; debe: 8d 2e 21 ; TMW
	sta $212f                    ; dec1: 8d 2f 21 ; TSW
	sta $420b                    ; dec4: 8d 0b 42 ; MDMAEN
	sta $420c                    ; dec7: 8d 0c 42 ; HDMAEN
	sta $2131                    ; deca: 8d 31 21 ; CGADSUB
	sta $2133                    ; decd: 8d 33 21 ; SETINI
	sta $2130                    ; ded0: 8d 30 21 ; CGWSEL
	stx.w $008c                  ; ded3: 8e 8c 00
	stx.w $008e                  ; ded6: 8e 8e 00
	lda.b #$08                   ; ded9: a9 08
	sta $2126                    ; dedb: 8d 26 21 ; WH0
	lda.b #$ff                   ; dede: a9 ff
	sta $2127                    ; dee0: 8d 27 21 ; WH1
	lda.b #$11                   ; dee3: a9 11
	sta $212c                    ; dee5: 8d 2c 21 ; TM
	sta $212e                    ; dee8: 8d 2e 21 ; TMW
	lda.b #$33                   ; deeb: a9 33
	sta $2123                    ; deed: 8d 23 21 ; W12SEL
	sta $2124                    ; def0: 8d 24 21 ; W34SEL
	sta $2125                    ; def3: 8d 25 21 ; WOBJSEL
	lda.b #$13                   ; def6: a9 13
	sta $0203                    ; def8: 8d 03 02
	ldx.w #$e3b3                 ; defb: a2 b3 e3
	stx $0201                    ; defe: 8e 01 02
	lda.b #$13                   ; df01: a9 13
	sta $0207                    ; df03: 8d 07 02
	ldx.w #$e057                 ; df06: a2 57 e0
	stx $0205                    ; df09: 8e 05 02
	lda.b #$5c                   ; df0c: a9 5c
	sta $0200                    ; df0e: 8d 00 02
	sta $0204                    ; df11: 8d 04 02
	lda.b #$7e                   ; df14: a9 7e
	pha                          ; df16: 48
	plb                          ; df17: ab
	rts                          ; df18: 60

; --- Block at $df19-$df3e ---
loc_df19:
	phb                          ; df19: 8b
	tdc                          ; df1a: 7b
	pha                          ; df1b: 48
	plb                          ; df1c: ab
	stx $2116                    ; df1d: 8e 16 21 ; VMADDL
	ldx.w #$df3f                 ; df20: a2 3f df
	stx $4352                    ; df23: 8e 52 43 ; A1TL5
	lda.b #$09                   ; df26: a9 09
	sta $4350                    ; df28: 8d 50 43 ; DMAP5
	lda.b #$18                   ; df2b: a9 18
	sta $4351                    ; df2d: 8d 51 43 ; BBAD5
	lda.b #$13                   ; df30: a9 13
	sta $4354                    ; df32: 8d 54 43 ; A1B5
	sty $4355                    ; df35: 8c 55 43 ; DAS5L
	lda.b #$20                   ; df38: a9 20
	sta $420b                    ; df3a: 8d 0b 42 ; MDMAEN
	plb                          ; df3d: ab
	rts                          ; df3e: 60

; --- Block at $df41-$df4c ---
loc_df41:
	phx                          ; df41: da
	inc $41                      ; df42: e6 41
	lda $41                      ; df44: a5 41
	.db $d0, $fc                 ; df46: d0 fc
loc_df48:
	jsr $df4d                    ; df48: 20 4d df
loc_df4b:
	plx                          ; df4b: fa
	rts                          ; df4c: 60

; --- Block at $df4d-$df56 ---
loc_df4d:
	lda $64                      ; df4d: a5 64
	cmp.b #$02                   ; df4f: c9 02
	.db $d0, $03                 ; df51: d0 03
loc_df53:
	jsr $ecb8                    ; df53: 20 b8 ec
loc_df56:
	rts                          ; df56: 60

; --- Block at $e10c-$e121 ---
loc_e10c:
	rep #$20                     ; e10c: c2 20
	tya                          ; e10e: 98
	clc                          ; e10f: 18
	adc $2000,x                  ; e110: 7d 00 20
	sta $2000,x                  ; e113: 9d 00 20
	tya                          ; e116: 98
	clc                          ; e117: 18
	adc $2040,x                  ; e118: 7d 40 20
	sta $2040,x                  ; e11b: 9d 40 20
	tdc                          ; e11e: 7b
	sep #$20                     ; e11f: e2 20
	rts                          ; e121: 60

; --- Block at $e122-$e138 ---
loc_e122:
	tdc                          ; e122: 7b
	tax                          ; e123: aa
	lda.b #$80                   ; e124: a9 80
	rep #$20                     ; e126: c2 20
	stz $2000,x                  ; e128: 9e 00 20
	sta $2040,x                  ; e12b: 9d 40 20
	inx                          ; e12e: e8
	inx                          ; e12f: e8
	cpx.w #$0040                 ; e130: e0 40 00
	.db $d0, $f3                 ; e133: d0 f3
loc_e135:
	tdc                          ; e135: 7b
	sep #$20                     ; e136: e2 20
	rts                          ; e138: 60

; --- Block at $e247-$e280 ---
loc_e247:
	lda.b #$48                   ; e247: a9 48
	sta $50                      ; e249: 85 50
	tdc                          ; e24b: 7b
	tax                          ; e24c: aa
	inc $7d27                    ; e24d: ee 27 7d
	pha                          ; e250: 48
	phx                          ; e251: da
	lda $14ee00,x                ; e252: bf 00 ee 14
	tay                          ; e256: a8
	sty $4b                      ; e257: 84 4b
	tax                          ; e259: aa
	lda $14ee00,x                ; e25a: bf 00 ee 14
	tay                          ; e25e: a8
	sty $4d                      ; e25f: 84 4d
	tya                          ; e261: 98
	lda $7d27                    ; e262: ad 27 7d
	and.b #$07                   ; e265: 29 07
	.db $f0, $02                 ; e267: f0 02
loc_e269:
	lda.b #$01                   ; e269: a9 01
loc_e26b:
	clc                          ; e26b: 18
	adc.b #$50                   ; e26c: 69 50
	sta $4f                      ; e26e: 85 4f
	lda.b #$01                   ; e270: a9 01
	sta $51                      ; e272: 85 51
	jsr $da6e                    ; e274: 20 6e da
loc_e277:
	plx                          ; e277: fa
	inx                          ; e278: e8
	inx                          ; e279: e8
	pla                          ; e27a: 68
	inc                          ; e27b: 1a
	cmp.b #$38                   ; e27c: c9 38
	.db $d0, $cd                 ; e27e: d0 cd
loc_e280:
	rts                          ; e280: 60

; --- Block at $e512-$e53b ---
loc_e512:
	phx                          ; e512: da
	rep #$20                     ; e513: c2 20
	pha                          ; e515: 48
	stz $16                      ; e516: 64 16
	stz $12                      ; e518: 64 12
	stz $14                      ; e51a: 64 14
	ldx.w #$0010                 ; e51c: a2 10 00
	lsr $0e                      ; e51f: 46 0e
	.db $90, $0d                 ; e521: 90 0d
loc_e523:
	clc                          ; e523: 18
	lda $12                      ; e524: a5 12
	adc $10                      ; e526: 65 10
	sta $12                      ; e528: 85 12
	lda $14                      ; e52a: a5 14
	adc $16                      ; e52c: 65 16
	sta $14                      ; e52e: 85 14
loc_e530:
	asl $10                      ; e530: 06 10
	rol $16                      ; e532: 26 16
	dex                          ; e534: ca
	.db $d0, $e8                 ; e535: d0 e8
loc_e537:
	pla                          ; e537: 68
	sep #$20                     ; e538: e2 20
	plx                          ; e53a: fa
	rts                          ; e53b: 60

; --- Block at $e53c-$e564 ---
loc_e53c:
	phx                          ; e53c: da
	rep #$20                     ; e53d: c2 20
	stz $20                      ; e53f: 64 20
	stz $1c                      ; e541: 64 1c
	stz $1e                      ; e543: 64 1e
	ldx.w #$0010                 ; e545: a2 10 00
	lsr $18                      ; e548: 46 18
	.db $90, $0d                 ; e54a: 90 0d
loc_e54c:
	clc                          ; e54c: 18
	lda $1c                      ; e54d: a5 1c
	adc $1a                      ; e54f: 65 1a
	sta $1c                      ; e551: 85 1c
	lda $1e                      ; e553: a5 1e
	adc $20                      ; e555: 65 20
	sta $1e                      ; e557: 85 1e
loc_e559:
	asl $1a                      ; e559: 06 1a
	rol $20                      ; e55b: 26 20
	dex                          ; e55d: ca
	.db $d0, $e8                 ; e55e: d0 e8
loc_e560:
	tdc                          ; e560: 7b
	sep #$20                     ; e561: e2 20
	plx                          ; e563: fa
	rts                          ; e564: 60

; --- Block at $e565-$e577 ---
loc_e565:
	phx                          ; e565: da
	rep #$20                     ; e566: c2 20
	lda $2080,x                  ; e568: bd 80 20
	sta $18                      ; e56b: 85 18
	lda $2000,x                  ; e56d: bd 00 20
	jsr $e58b                    ; e570: 20 8b e5
loc_e573:
	tdc                          ; e573: 7b
	sep #$20                     ; e574: e2 20
	plx                          ; e576: fa
	rts                          ; e577: 60

; --- Block at $e578-$e58a ---
loc_e578:
	phx                          ; e578: da
	rep #$20                     ; e579: c2 20
	lda $20c0,x                  ; e57b: bd c0 20
	sta $18                      ; e57e: 85 18
	lda $2040,x                  ; e580: bd 40 20
	jsr $e58b                    ; e583: 20 8b e5
loc_e586:
	tdc                          ; e586: 7b
	sep #$20                     ; e587: e2 20
	plx                          ; e589: fa
	rts                          ; e58a: 60

; --- Block at $e58b-$e5b0 ---
loc_e58b:
	rep #$20                     ; e58b: c2 20
	and.w #$01ff                 ; e58d: 29 ff 01
	asl                          ; e590: 0a
	tax                          ; e591: aa
	lda $13e5c5,x                ; e592: bf c5 e5 13
	.db $10, $19                 ; e596: 10 19
loc_e598:
	eor.w #$ffff                 ; e598: 49 ff ff
	sta $1a                      ; e59b: 85 1a
	jsr $e53c                    ; e59d: 20 3c e5
loc_e5a0:
	rep #$20                     ; e5a0: c2 20
	lda $1e                      ; e5a2: a5 1e
	eor.w #$ffff                 ; e5a4: 49 ff ff
	inc                          ; e5a7: 1a
	.db $10, $14                 ; e5a8: 10 14
loc_e5aa:
	sta $1e                      ; e5aa: 85 1e
	tdc                          ; e5ac: 7b
	sep #$20                     ; e5ad: e2 20
	sec                          ; e5af: 38
	rts                          ; e5b0: 60

; --- Block at $e5b1-$e5c4 ---
loc_e5b1:
	rep #$20                     ; e5b1: c2 20
	sta $1a                      ; e5b3: 85 1a
	jsr $e53c                    ; e5b5: 20 3c e5
loc_e5b8:
	rep #$20                     ; e5b8: c2 20
	lda $1e                      ; e5ba: a5 1e
	.db $30, $ec                 ; e5bc: 30 ec
loc_e5be:
	sta $1e                      ; e5be: 85 1e
	tdc                          ; e5c0: 7b
	sep #$20                     ; e5c1: e2 20
	clc                          ; e5c3: 18
	rts                          ; e5c4: 60

; --- Block at $eb04-$eb3b ---
loc_eb04:
	ldx $7d19                    ; eb04: ae 19 7d
	stx $36                      ; eb07: 86 36
	lda $7d1e                    ; eb09: ad 1e 7d
	sta $38                      ; eb0c: 85 38
	ldx $7d1b                    ; eb0e: ae 1b 7d
	stx $39                      ; eb11: 86 39
	lda $39                      ; eb13: a5 39
	clc                          ; eb15: 18
	adc $7d1d                    ; eb16: 6d 1d 7d
	sta $3c                      ; eb19: 85 3c
	lda $3a                      ; eb1b: a5 3a
	adc.b #$00                   ; eb1d: 69 00
	sta $3d                      ; eb1f: 85 3d
	tdc                          ; eb21: 7b
	tay                          ; eb22: a8
	lda [$36]                    ; eb23: a7 36
	.db $f0, $14                 ; eb25: f0 14
loc_eb27:
	cmp.b #$0f                   ; eb27: c9 0f
	.db $90, $08                 ; eb29: 90 08
loc_eb2b:
	jsr $eb78                    ; eb2b: 20 78 eb
loc_eb2e:
	jsr $eb72                    ; eb2e: 20 72 eb
loc_eb31:
	.db $80, $f0                 ; eb31: 80 f0
loc_eb33:
	jsr $eb3c                    ; eb33: 20 3c eb
loc_eb36:
	jsr $eb72                    ; eb36: 20 72 eb
loc_eb39:
	.db $80, $e8                 ; eb39: 80 e8
loc_eb3b:
	rts                          ; eb3b: 60

; --- Block at $eb3c-$eb44 ---
loc_eb3c:
	cmp.b #$01                   ; eb3c: c9 01
	.db $f0, $18                 ; eb3e: f0 18
loc_eb40:
	cmp.b #$0a                   ; eb40: c9 0a
	.db $d0, $03                 ; eb42: d0 03
loc_eb44:
	jmp $eb7c                    ; eb44: 4c 7c eb

; --- Block at $eb47-$eb57 ---
loc_eb47:
	jsr $eb72                    ; eb47: 20 72 eb
loc_eb4a:
	lda [$36]                    ; eb4a: a7 36
	sta $00                      ; eb4c: 85 00
	lda.b #$ff                   ; eb4e: a9 ff
	jsr $eb7c                    ; eb50: 20 7c eb
loc_eb53:
	dec $00                      ; eb53: c6 00
	.db $d0, $f7                 ; eb55: d0 f7
loc_eb57:
	rts                          ; eb57: 60

; --- Block at $eb58-$eb58 ---
loc_eb58:
	jmp $eb5b                    ; eb58: 4c 5b eb

; --- Block at $eb5b-$eb71 ---
loc_eb5b:
	lda $7d1d                    ; eb5b: ad 1d 7d
	rep #$20                     ; eb5e: c2 20
	pha                          ; eb60: 48
	asl                          ; eb61: 0a
	clc                          ; eb62: 18
	adc $39                      ; eb63: 65 39
	sta $39                      ; eb65: 85 39
	pla                          ; eb67: 68
	clc                          ; eb68: 18
	adc $39                      ; eb69: 65 39
	sta $3c                      ; eb6b: 85 3c
	tdc                          ; eb6d: 7b
	tay                          ; eb6e: a8
	sep #$20                     ; eb6f: e2 20
	rts                          ; eb71: 60

; --- Block at $eb72-$eb77 ---
loc_eb72:
	ldx $36                      ; eb72: a6 36
	inx                          ; eb74: e8
	stx $36                      ; eb75: 86 36
	rts                          ; eb77: 60

; --- Block at $eb78-$eb83 ---
loc_eb78:
	cmp.b #$42                   ; eb78: c9 42
	.db $90, $08                 ; eb7a: 90 08
loc_eb7c:
	sta ($3c),y                  ; eb7c: 91 3c
	lda.b #$ff                   ; eb7e: a9 ff
	sta ($39),y                  ; eb80: 91 39
	iny                          ; eb82: c8
	rts                          ; eb83: 60

; --- Block at $eb84-$eb96 ---
loc_eb84:
	sec                          ; eb84: 38
	sbc.b #$0f                   ; eb85: e9 0f
	asl                          ; eb87: 0a
	tax                          ; eb88: aa
	lda $16fa40,x                ; eb89: bf 40 fa 16
	sta ($39),y                  ; eb8d: 91 39
	lda $16fa41,x                ; eb8f: bf 41 fa 16
	sta ($3c),y                  ; eb93: 91 3c
	iny                          ; eb95: c8
	rts                          ; eb96: 60

; --- Block at $ec4f-$ec5a ---
loc_ec4f:
	phx                          ; ec4f: da
	inc $94                      ; ec50: e6 94
	lda $94                      ; ec52: a5 94
	tax                          ; ec54: aa
	lda $14ee00,x                ; ec55: bf 00 ee 14
	plx                          ; ec59: fa
	rts                          ; ec5a: 60

; --- Block at $ec5b-$ec80 ---
loc_ec5b:
	rep #$20                     ; ec5b: c2 20
	and.w #$01ff                 ; ec5d: 29 ff 01
	asl                          ; ec60: 0a
	tax                          ; ec61: aa
	lda $13e5c5,x                ; ec62: bf c5 e5 13
	.db $10, $19                 ; ec66: 10 19
loc_ec68:
	eor.w #$ffff                 ; ec68: 49 ff ff
	sta $10                      ; ec6b: 85 10
	jsr $e512                    ; ec6d: 20 12 e5
loc_ec70:
	rep #$20                     ; ec70: c2 20
	lda $14                      ; ec72: a5 14
	eor.w #$ffff                 ; ec74: 49 ff ff
	inc                          ; ec77: 1a
	.db $10, $14                 ; ec78: 10 14
loc_ec7a:
	sta $14                      ; ec7a: 85 14
	tdc                          ; ec7c: 7b
	sep #$20                     ; ec7d: e2 20
	sec                          ; ec7f: 38
	rts                          ; ec80: 60

; --- Block at $ec81-$ec94 ---
loc_ec81:
	rep #$20                     ; ec81: c2 20
	sta $10                      ; ec83: 85 10
	jsr $e512                    ; ec85: 20 12 e5
loc_ec88:
	rep #$20                     ; ec88: c2 20
	lda $14                      ; ec8a: a5 14
	.db $30, $ec                 ; ec8c: 30 ec
loc_ec8e:
	sta $14                      ; ec8e: 85 14
	tdc                          ; ec90: 7b
	sep #$20                     ; ec91: e2 20
	clc                          ; ec93: 18
	rts                          ; ec94: 60

; --- Block at $ec95-$ecaf ---
loc_ec95:
	tdc                          ; ec95: 7b
	tax                          ; ec96: aa
	sta $2303,x                  ; ec97: 9d 03 23
	inx                          ; ec9a: e8
	cpx.w #$0900                 ; ec9b: e0 00 09
	.db $d0, $f7                 ; ec9e: d0 f7
loc_eca0:
	tdc                          ; eca0: 7b
	tax                          ; eca1: aa
	lda $14ee00,x                ; eca2: bf 00 ee 14
	sta $2883,x                  ; eca6: 9d 83 28
	inx                          ; eca9: e8
	cpx.w #$0080                 ; ecaa: e0 80 00
	.db $d0, $f3                 ; ecad: d0 f3
loc_ecaf:
	rts                          ; ecaf: 60

; --- Block at $ecb8-$ecc5 ---
loc_ecb8:
	tdc                          ; ecb8: 7b
	tax                          ; ecb9: aa
	tay                          ; ecba: a8
	lda $2303,x                  ; ecbb: bd 03 23
	.db $d0, $0d                 ; ecbe: d0 0d
loc_ecc0:
	dec $2883,x                  ; ecc0: de 83 28
	.db $f0, $03                 ; ecc3: f0 03
loc_ecc5:
	jmp $ed90                    ; ecc5: 4c 90 ed

; --- Block at $ecc8-$eccd ---
loc_ecc8:
	inc $2303,x                  ; ecc8: fe 03 23
	.db $80, $0d                 ; eccb: 80 0d

; --- Block at $eccd-$ed97 ---
loc_eccd:
	rep #$20                     ; eccd: c2 20
	lda $2a03,y                  ; eccf: b9 03 2a
	cmp.w #$0140                 ; ecd2: c9 40 01
	.db $90, $4b                 ; ecd5: 90 4b
loc_ecd7:
	tdc                          ; ecd7: 7b
	sep #$20                     ; ecd8: e2 20
	jsr $ec4f                    ; ecda: 20 4f ec
loc_ecdd:
	sta $00                      ; ecdd: 85 00
	and.b #$03                   ; ecdf: 29 03
	sta $2683,x                  ; ece1: 9d 83 26
	stz $01                      ; ece4: 64 01
	lda $00                      ; ece6: a5 00
	rep #$20                     ; ece8: c2 20
	sta $2903,y                  ; ecea: 99 03 29
	asl                          ; eced: 0a
	sta $2783,y                  ; ecee: 99 83 27
	lda $00                      ; ecf1: a5 00
	sta $2903,y                  ; ecf3: 99 03 29
	lda $00                      ; ecf6: a5 00
	and.w #$003f                 ; ecf8: 29 3f 00
	sta $02                      ; ecfb: 85 02
	and.w #$000f                 ; ecfd: 29 0f 00
	adc $02                      ; ed00: 65 02
	sta $2a03,y                  ; ed02: 99 03 2a
	lda.w #$0001                 ; ed05: a9 01 00
	sta $2b03,y                  ; ed08: 99 03 2b
	phx                          ; ed0b: da
	lda $00                      ; ed0c: a5 00
	and.w #$0003                 ; ed0e: 29 03 00
	asl                          ; ed11: 0a
	tax                          ; ed12: aa
	lda $13ecb0,x                ; ed13: bf b0 ec 13
	sta $2583,y                  ; ed17: 99 83 25
	lda $13ecb1,x                ; ed1a: bf b1 ec 13
	sta $2584,y                  ; ed1e: 99 84 25
	plx                          ; ed21: fa
loc_ed22:
	rep #$20                     ; ed22: c2 20
	lda $2a03,y                  ; ed24: b9 03 2a
	sta $00                      ; ed27: 85 00
	sta $0e                      ; ed29: 85 0e
	lda $2783,y                  ; ed2b: b9 83 27
	sta $02                      ; ed2e: 85 02
	phx                          ; ed30: da
	jsr $ec5b                    ; ed31: 20 5b ec
loc_ed34:
	plx                          ; ed34: fa
	rep #$20                     ; ed35: c2 20
	lda $14                      ; ed37: a5 14
	clc                          ; ed39: 18
	adc.w #$0070                 ; ed3a: 69 70 00
	sta $2483,y                  ; ed3d: 99 83 24
	lda $00                      ; ed40: a5 00
	sta $0e                      ; ed42: 85 0e
	lda $02                      ; ed44: a5 02
	clc                          ; ed46: 18
	adc.w #$0080                 ; ed47: 69 80 00
	phx                          ; ed4a: da
	jsr $ec5b                    ; ed4b: 20 5b ec
loc_ed4e:
	plx                          ; ed4e: fa
	rep #$20                     ; ed4f: c2 20
	lda $14                      ; ed51: a5 14
	clc                          ; ed53: 18
	adc.w #$0080                 ; ed54: 69 80 00
	sta $2383,y                  ; ed57: 99 83 23
	lda $2583,y                  ; ed5a: b9 83 25
	sta $98                      ; ed5d: 85 98
	lda $2903,y                  ; ed5f: b9 03 29
	clc                          ; ed62: 18
	adc $98                      ; ed63: 65 98
	sta $2903,y                  ; ed65: 99 03 29
	lda $2b03,y                  ; ed68: b9 03 2b
	php                          ; ed6b: 08
	adc.w #$0000                 ; ed6c: 69 00 00
	plp                          ; ed6f: 28
	adc.w #$0000                 ; ed70: 69 00 00
	sta $2b03,y                  ; ed73: 99 03 2b
	sta $02                      ; ed76: 85 02
	lda $00                      ; ed78: a5 00
	clc                          ; ed7a: 18
	adc $02                      ; ed7b: 65 02
	sta $2a03,y                  ; ed7d: 99 03 2a
	lsr                          ; ed80: 4a
	lsr                          ; ed81: 4a
	lsr                          ; ed82: 4a
	lsr                          ; ed83: 4a
	sta $00                      ; ed84: 85 00
	tdc                          ; ed86: 7b
	sep #$20                     ; ed87: e2 20
	lda $00                      ; ed89: a5 00
	and.b #$0f                   ; ed8b: 29 0f
	sta $2703,x                  ; ed8d: 9d 03 27
loc_ed90:
	iny                          ; ed90: c8
	iny                          ; ed91: c8
	inx                          ; ed92: e8
	cpx $96                      ; ed93: e4 96
	.db $f0, $03                 ; ed95: f0 03
loc_ed97:
	jmp $ecbb                    ; ed97: 4c bb ec

; --- Block at $ed9a-$ed9c ---
loc_ed9a:
	inc $95                      ; ed9a: e6 95
	rts                          ; ed9c: 60

; --- Block at $ee3e-$ef46 ---
loc_ee3e:
	inc $7d1f                    ; ee3e: ee 1f 7d
	ldx.w #$0100                 ; ee41: a2 00 01
	jsr $df41                    ; ee44: 20 41 df
loc_ee47:
	jsr $dbe8                    ; ee47: 20 e8 db
loc_ee4a:
	txa                          ; ee4a: 8a
	sec                          ; ee4b: 38
	sbc.b #$08                   ; ee4c: e9 08
	tax                          ; ee4e: aa
	cpx.w #$0078                 ; ee4f: e0 78 00
	.db $d0, $f0                 ; ee52: d0 f0
loc_ee54:
	tdc                          ; ee54: 7b
	tax                          ; ee55: aa
	stx $9c                      ; ee56: 86 9c
	ldx.w #$0080                 ; ee58: a2 80 00
	jsr $ef49                    ; ee5b: 20 49 ef
loc_ee5e:
	ldx.w #$0100                 ; ee5e: a2 00 01
	stx $9e                      ; ee61: 86 9e
	tdc                          ; ee63: 7b
	tax                          ; ee64: aa
	stx $9a                      ; ee65: 86 9a
	jsr $df41                    ; ee67: 20 41 df
loc_ee6a:
	rep #$20                     ; ee6a: c2 20
	lda $9c                      ; ee6c: a5 9c
	sec                          ; ee6e: 38
	sbc.w #$0008                 ; ee6f: e9 08 00
	sta $9c                      ; ee72: 85 9c
	dec $9e                      ; ee74: c6 9e
	dec $9e                      ; ee76: c6 9e
	lda $9e                      ; ee78: a5 9e
	sta $0e                      ; ee7a: 85 0e
	lda $9c                      ; ee7c: a5 9c
	clc                          ; ee7e: 18
	adc.w #$0080                 ; ee7f: 69 80 00
	jsr $ec5b                    ; ee82: 20 5b ec
loc_ee85:
	rep #$20                     ; ee85: c2 20
	lda $14                      ; ee87: a5 14
	sta $00                      ; ee89: 85 00
	sta $06                      ; ee8b: 85 06
	lda $9e                      ; ee8d: a5 9e
	sta $0e                      ; ee8f: 85 0e
	lda $9c                      ; ee91: a5 9c
	jsr $ec5b                    ; ee93: 20 5b ec
loc_ee96:
	rep #$20                     ; ee96: c2 20
	inc $9a                      ; ee98: e6 9a
	lda $9a                      ; ee9a: a5 9a
	and.w #$0003                 ; ee9c: 29 03 00
	.db $d0, $0c                 ; ee9f: d0 0c
loc_eea1:
	lda $2105                    ; eea1: ad 05 21 ; BGMODE
	.db $f0, $07                 ; eea4: f0 07
loc_eea6:
	sec                          ; eea6: 38
	sbc.w #$0421                 ; eea7: e9 21 04
	sta $2105                    ; eeaa: 8d 05 21 ; BGMODE
loc_eead:
	lda $14                      ; eead: a5 14
	sta $02                      ; eeaf: 85 02
	eor.w #$ffff                 ; eeb1: 49 ff ff
	sta $04                      ; eeb4: 85 04
	jsr $f026                    ; eeb6: 20 26 f0
loc_eeb9:
	sep #$20                     ; eeb9: e2 20
	lda $2105                    ; eebb: ad 05 21 ; BGMODE
	.db $d0, $a7                 ; eebe: d0 a7
loc_eec0:
	jsr $df41                    ; eec0: 20 41 df
loc_eec3:
	lda.b #$10                   ; eec3: a9 10
	sta $7d28                    ; eec5: 8d 28 7d
	ldx.w #$7fff                 ; eec8: a2 ff 7f
	stx $2105                    ; eecb: 8e 05 21 ; BGMODE
	ldx.w #$0cc0                 ; eece: a2 c0 0c
	stx $2107                    ; eed1: 8e 07 21 ; BG1SC
	tdc                          ; eed4: 7b
	tax                          ; eed5: aa
	jsr $df41                    ; eed6: 20 41 df
loc_eed9:
	tdc                          ; eed9: 7b
	sta $3d19,x                  ; eeda: 9d 19 3d
	inx                          ; eedd: e8
	cpx.w #$1000                 ; eede: e0 00 10
	.db $d0, $f7                 ; eee1: d0 f7
loc_eee3:
	jsr $df41                    ; eee3: 20 41 df
loc_eee6:
	tdc                          ; eee6: 7b
	sta $3d19,x                  ; eee7: 9d 19 3d
	inx                          ; eeea: e8
	cpx.w #$2000                 ; eeeb: e0 00 20
	.db $d0, $f7                 ; eeee: d0 f7
loc_eef0:
	jsr $df41                    ; eef0: 20 41 df
loc_eef3:
	tdc                          ; eef3: 7b
	sta $3d19,x                  ; eef4: 9d 19 3d
	inx                          ; eef7: e8
	cpx.w #$3000                 ; eef8: e0 00 30
	.db $d0, $f7                 ; eefb: d0 f7
loc_eefd:
	jsr $df41                    ; eefd: 20 41 df
loc_ef00:
	tdc                          ; ef00: 7b
	sta $3d19,x                  ; ef01: 9d 19 3d
	inx                          ; ef04: e8
	cpx.w #$4000                 ; ef05: e0 00 40
	.db $d0, $f7                 ; ef08: d0 f7
loc_ef0a:
	lda.b #$c0                   ; ef0a: a9 c0
	sta $00                      ; ef0c: 85 00
	lda.b #$cc                   ; ef0e: a9 cc
	sta $02                      ; ef10: 85 02
	tdc                          ; ef12: 7b
	tax                          ; ef13: aa
	lda $00                      ; ef14: a5 00
	sta $43a3,x                  ; ef16: 9d a3 43
	lda $02                      ; ef19: a5 02
	sta $4423,x                  ; ef1b: 9d 23 44
	inc $00                      ; ef1e: e6 00
	inc $02                      ; ef20: e6 02
	inx                          ; ef22: e8
	cpx.w #$000c                 ; ef23: e0 0c 00
	.db $d0, $ec                 ; ef26: d0 ec
loc_ef28:
	jsr $df41                    ; ef28: 20 41 df
loc_ef2b:
	tdc                          ; ef2b: 7b
	tax                          ; ef2c: aa
	stx $66                      ; ef2d: 86 66
	stx $92                      ; ef2f: 86 92
	ldx.w #$0070                 ; ef31: a2 70 00
	stx $8e                      ; ef34: 86 8e
	ldx.w #$3d19                 ; ef36: a2 19 3d
	stx $90                      ; ef39: 86 90
	inc $7d20                    ; ef3b: ee 20 7d
	jsr $df41                    ; ef3e: 20 41 df
loc_ef41:
	lda $7d20                    ; ef41: ad 20 7d
	.db $d0, $f8                 ; ef44: d0 f8
loc_ef46:
	jmp $ef9c                    ; ef46: 4c 9c ef

; --- Block at $ef49-$ef4f ---
loc_ef49:
	jsr $df41                    ; ef49: 20 41 df
loc_ef4c:
	dex                          ; ef4c: ca
	.db $d0, $fa                 ; ef4d: d0 fa
loc_ef4f:
	rts                          ; ef4f: 60

; --- Block at $ef83-$ef9b ---
loc_ef83:
	stz $7d21                    ; ef83: 9c 21 7d
	stz $7d23                    ; ef86: 9c 23 7d
	lda.b #$1a                   ; ef89: a9 1a
	sta $7d24                    ; ef8b: 8d 24 7d
	lda $7d26                    ; ef8e: ad 26 7d
	inc $7d26                    ; ef91: ee 26 7d
	tax                          ; ef94: aa
	lda $ee00,x                  ; ef95: bd 00 ee
	sta $7d22                    ; ef98: 8d 22 7d
	rts                          ; ef9b: 60

; --- Block at $ef9c-$f023 ---
loc_ef9c:
	ldx.w #$0000                 ; ef9c: a2 00 00
	stx $02                      ; ef9f: 86 02
	stx $04                      ; efa1: 86 04
	ldx.w #$4000                 ; efa3: a2 00 40
	stx $00                      ; efa6: 86 00
	stx $06                      ; efa8: 86 06
	jsr $f026                    ; efaa: 20 26 f0
loc_efad:
	jsr $df41                    ; efad: 20 41 df
loc_efb0:
	lda.b #$80                   ; efb0: a9 80
	sta $a0                      ; efb2: 85 a0
	lda.b #$11                   ; efb4: a9 11
	sta $7d28                    ; efb6: 8d 28 7d
	tdc                          ; efb9: 7b
	tax                          ; efba: aa
	stx $9c                      ; efbb: 86 9c
	ldx.w #$0800                 ; efbd: a2 00 08
	stx $9e                      ; efc0: 86 9e
	jsr $df41                    ; efc2: 20 41 df
loc_efc5:
	rep #$20                     ; efc5: c2 20
	lda $9e                      ; efc7: a5 9e
	sec                          ; efc9: 38
	sbc.w #$0010                 ; efca: e9 10 00
	sta $9e                      ; efcd: 85 9e
	lda $9e                      ; efcf: a5 9e
	sta $0e                      ; efd1: 85 0e
	lda $9c                      ; efd3: a5 9c
	clc                          ; efd5: 18
	adc.w #$0080                 ; efd6: 69 80 00
	jsr $ec5b                    ; efd9: 20 5b ec
loc_efdc:
	rep #$20                     ; efdc: c2 20
	lda $14                      ; efde: a5 14
	sta $00                      ; efe0: 85 00
	sta $06                      ; efe2: 85 06
	lda $9e                      ; efe4: a5 9e
	sta $0e                      ; efe6: 85 0e
	lda $9c                      ; efe8: a5 9c
	jsr $ec5b                    ; efea: 20 5b ec
loc_efed:
	rep #$20                     ; efed: c2 20
	lda $14                      ; efef: a5 14
	sta $02                      ; eff1: 85 02
	eor.w #$ffff                 ; eff3: 49 ff ff
	sta $04                      ; eff6: 85 04
	jsr $f026                    ; eff8: 20 26 f0
loc_effb:
	sep #$20                     ; effb: e2 20
	ldx $9e                      ; effd: a6 9e
	cpx.w #$0200                 ; efff: e0 00 02
	.db $d0, $be                 ; f002: d0 be
loc_f004:
	ldx.w #$00b4                 ; f004: a2 b4 00
	jsr $ef49                    ; f007: 20 49 ef
loc_f00a:
	lda.b #$01                   ; f00a: a9 01
	sta.l $001e00                ; f00c: 8f 00 1e 00
	lda.b #$15                   ; f010: a9 15
	sta.l $001e01                ; f012: 8f 01 1e 00
	jsl $048004                  ; f016: 22 04 80 04
loc_f01a:
	jsr $ef83                    ; f01a: 20 83 ef
loc_f01d:
	inc $7d25                    ; f01d: ee 25 7d
	jsr $df41                    ; f020: 20 41 df
loc_f023:
	jmp $f020                    ; f023: 4c 20 f0

; --- Block at $f026-$f04c ---
loc_f026:
	phx                          ; f026: da
	rep #$20                     ; f027: c2 20
	tdc                          ; f029: 7b
	tax                          ; f02a: aa
	lda $00                      ; f02b: a5 00
	sta $3319,x                  ; f02d: 9d 19 33
	lda $06                      ; f030: a5 06
	sta $371b,x                  ; f032: 9d 1b 37
	lda $02                      ; f035: a5 02
	sta $331b,x                  ; f037: 9d 1b 33
	lda $04                      ; f03a: a5 04
	sta $3719,x                  ; f03c: 9d 19 37
	inx                          ; f03f: e8
	inx                          ; f040: e8
	inx                          ; f041: e8
	inx                          ; f042: e8
	cpx.w #$0400                 ; f043: e0 00 04
	.db $d0, $e3                 ; f046: d0 e3
loc_f048:
	tdc                          ; f048: 7b
	sep #$20                     ; f049: e2 20
	plx                          ; f04b: fa
	rts                          ; f04c: 60

; --- Block at $13ff12-$13fffa ---
loc_13ff12:
	sta $a9                      ; 13ff12: 85 a9
	stz $1e00                    ; 13ff14: 9c 00 1e
	stz $1e01                    ; 13ff17: 9c 01 1e
	stz $1e05                    ; 13ff1a: 9c 05 1e
	lda $a9                      ; 13ff1d: a5 a9
	sta $1e01                    ; 13ff1f: 8d 01 1e
	lda.b #$01                   ; 13ff22: a9 01
	sta $1e00                    ; 13ff24: 8d 00 1e
	jsl $048004                  ; 13ff27: 22 04 80 04
loc_13ff2b:
	lda $1e05                    ; 13ff2b: ad 05 1e
	cmp $a9                      ; 13ff2e: c5 a9
	.db $d0, $eb                 ; 13ff30: d0 eb
loc_13ff32:
	lda $1e04                    ; 13ff32: ad 04 1e
	cmp.b #$01                   ; 13ff35: c9 01
	.db $d0, $e4                 ; 13ff37: d0 e4
loc_13ff39:
	rtl                          ; 13ff39: 6b
	tdc                          ; 13ff3a: 7b
	tax                          ; 13ff3b: aa
	tay                          ; 13ff3c: a8
	lda $3540,y                  ; 13ff3d: b9 40 35
	.db $d0, $0b                 ; 13ff40: d0 0b
loc_13ff42:
	lda $2003,x                  ; 13ff42: bd 03 20
	.db $10, $06                 ; 13ff45: 10 06
loc_13ff47:
	stz $2007,x                  ; 13ff47: 9e 07 20
	stz $2008,x                  ; 13ff4a: 9e 08 20
loc_13ff4d:
	rep #$20                     ; 13ff4d: c2 20
	txa                          ; 13ff4f: 8a
	clc                          ; 13ff50: 18
	adc.w #$0080                 ; 13ff51: 69 80 00
	tax                          ; 13ff54: aa
	tdc                          ; 13ff55: 7b
	sep #$20                     ; 13ff56: e2 20
	iny                          ; 13ff58: c8
	cpy.w #$0005                 ; 13ff59: c0 05 00
	.db $d0, $df                 ; 13ff5c: d0 df
loc_13ff5e:
	rtl                          ; 13ff5e: 6b
	ldx $ab                      ; 13ff5f: a6 ab
	phx                          ; 13ff61: da
	ldx.w #$000f                 ; 13ff62: a2 0f 00
	stz $a9,x                    ; 13ff65: 74 a9
	dex                          ; 13ff67: ca
	.db $10, $fb                 ; 13ff68: 10 fb
loc_13ff6a:
	plx                          ; 13ff6a: fa
	stx $ad                      ; 13ff6b: 86 ad
	ldx $3591                    ; 13ff6d: ae 91 35
	stx $a9                      ; 13ff70: 86 a9
	lda $3593                    ; 13ff72: ad 93 35
	sta $ab                      ; 13ff75: 85 ab
	rep #$20                     ; 13ff77: c2 20
	clc                          ; 13ff79: 18
	ldx.w #$0020                 ; 13ff7a: a2 20 00
	rol $a9                      ; 13ff7d: 26 a9
	rol $ab                      ; 13ff7f: 26 ab
	rol $b5                      ; 13ff81: 26 b5
	rol $b7                      ; 13ff83: 26 b7
	sec                          ; 13ff85: 38
	lda $b5                      ; 13ff86: a5 b5
	sbc $ad                      ; 13ff88: e5 ad
	sta $b5                      ; 13ff8a: 85 b5
	lda $b7                      ; 13ff8c: a5 b7
	sbc $af                      ; 13ff8e: e5 af
	sta $b7                      ; 13ff90: 85 b7
	.db $b0, $0d                 ; 13ff92: b0 0d
loc_13ff94:
	lda $b5                      ; 13ff94: a5 b5
	adc $ad                      ; 13ff96: 65 ad
	sta $b5                      ; 13ff98: 85 b5
	lda $b7                      ; 13ff9a: a5 b7
	adc $af                      ; 13ff9c: 65 af
	sta $b7                      ; 13ff9e: 85 b7
	clc                          ; 13ffa0: 18
loc_13ffa1:
	rol $b1                      ; 13ffa1: 26 b1
	rol $b3                      ; 13ffa3: 26 b3
	dex                          ; 13ffa5: ca
	.db $d0, $d5                 ; 13ffa6: d0 d5
loc_13ffa8:
	lda $b1                      ; 13ffa8: a5 b1
	sta $ad                      ; 13ffaa: 85 ad
	lda $b3                      ; 13ffac: a5 b3
	sta $af                      ; 13ffae: 85 af
	tdc                          ; 13ffb0: 7b
	sep #$20                     ; 13ffb1: e2 20
	rtl                          ; 13ffb3: 6b
	ldy.w #$0005                 ; 13ffb4: a0 05 00
	tdc                          ; 13ffb7: 7b
	tax                          ; 13ffb8: aa
	lda $2000,x                  ; 13ffb9: bd 00 20
	and.b #$1f                   ; 13ffbc: 29 1f
	cmp.b #$13                   ; 13ffbe: c9 13
	.db $d0, $15                 ; 13ffc0: d0 15
loc_13ffc2:
	lda $2003,x                  ; 13ffc2: bd 03 20
	and.b #$c0                   ; 13ffc5: 29 c0
	.db $d0, $07                 ; 13ffc7: d0 07
loc_13ffc9:
	lda $2004,x                  ; 13ffc9: bd 04 20
	and.b #$3c                   ; 13ffcc: 29 3c
	.db $f0, $15                 ; 13ffce: f0 15
loc_13ffd0:
	lda.b #$ff                   ; 13ffd0: a9 ff
	sta $357c                    ; 13ffd2: 8d 7c 35
	.db $80, $0e                 ; 13ffd5: 80 0e
loc_13ffd7:
	rep #$20                     ; 13ffd7: c2 20
	txa                          ; 13ffd9: 8a
	clc                          ; 13ffda: 18
	adc.w #$0080                 ; 13ffdb: 69 80 00
	tax                          ; 13ffde: aa
	tdc                          ; 13ffdf: 7b
	sep #$20                     ; 13ffe0: e2 20
	dey                          ; 13ffe2: 88
	.db $d0, $d4                 ; 13ffe3: d0 d4
loc_13ffe5:
	rtl                          ; 13ffe5: 6b
	sbc $ffffff,x                ; 13ffe6: ff ff ff ff
	sbc $ffffff,x                ; 13ffea: ff ff ff ff
	sbc $ffffff,x                ; 13ffee: ff ff ff ff
	sbc $ffffff,x                ; 13fff2: ff ff ff ff
	sbc $d6524c,x                ; 13fff6: ff 4c 52 d6
	jmp $d62b                    ; 13fffa: 4c 2b d6

