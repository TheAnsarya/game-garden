; 🌺 Peony Disassembly
; ROM: test-ffmq.sfc
; Platform: SNES
; Size: 524288 bytes

.system:SNES
; Mapper: FF MYSTIC QUEST
; Labels: 797

; === Block $8528-$852e (Code) ===
sub_8528:
	ora $d4                  ; $8528: 05 d4
	bra $84fd                ; $852a: 80 d1
	sbc ($d2)                ; $852c: f2 d2
	brk #$ea                 ; $852e: 00 ea

; === Block $855f-$8562 (Code) ===
sub_855f:
	cmp ($00)                ; $855f: d2 00
	nop                      ; $8561: ea
	brk #$e4                 ; $8562: 00 e4

; === Block $8b76-$8b83 (Code) ===
sub_8b76:
	sta $599084              ; $8b76: 8f 84 90 59
	sta ($21),y              ; $8b7a: 91 21
	sta ($f8,s),y            ; $8b7c: 93 f8
	sbc $f3,x                ; $8b7e: f5 f3
	sei                      ; $8b80: 78
	sbc [$3c],y              ; $8b81: f7 3c
sub_8b83:
	brk #$f5                 ; $8b83: 00 f5

; === Block $8b90-$8b92 (Code) ===
sub_8b90:
	ora $ee,s                ; $8b90: 03 ee
	brk #$e4                 ; $8b92: 00 e4

; === Block $8bd1-$8c7d (Code) ===
sub_8bd1:
	ora $91                  ; $8bd1: 05 91
	sbc ($e5),y              ; $8bd3: f1 e5
sub_8bd5:
	ora [$e6]                ; $8bd5: 07 e6
	lda $5555                ; $8bd7: ad 55 55
	eor $55,x                ; $8bda: 55 55
	sbc $0a                  ; $8bdc: e5 0a
	inc $55                  ; $8bde: e6 55
	eor $55,x                ; $8be0: 55 55
	eor $55,x                ; $8be2: 55 55
	sbc $0a                  ; $8be4: e5 0a
	inc $55                  ; $8be6: e6 55
	eor $70,x                ; $8be8: 55 70
	sbc ($89),y              ; $8bea: f1 89
	sbc $02                  ; $8bec: e5 02
	inc $aa                  ; $8bee: e6 aa
	adc $aa8c,x              ; $8bf0: 7d 8c aa
	eor $e53e                ; $8bf3: 4d 3e e5
	and $05,s                ; $8bf6: 23 05
	inc $ad                  ; $8bf8: e6 ad
	sta ($7d),y              ; $8bfa: 91 7d
	ldx $e589,y              ; $8bfc: be 89 e5
	cop #$e6                 ; $8bff: 02 e6
	tax                      ; $8c01: aa
	sbc $41                  ; $8c02: e5 41
	inc $80                  ; $8c04: e6 80
	sta $4d80ad              ; $8c06: 8f ad 80 4d
	rol $e57f,x              ; $8c0a: 3e 7f e5
	eor $25,s                ; $8c0d: 43 25
	ora [$e6]                ; $8c0f: 07 e6
	lda $f08091              ; $8c11: af 91 80 f0
	ora ($8f,x)              ; $8c15: 01 8f
	lsr $e5                  ; $8c17: 46 e5
	php                      ; $8c19: 08
	inc $46                  ; $8c1a: e6 46
	stz $8f46,x              ; $8c1c: 9e 46 8f
sub_8c1f:
	lsr $73                  ; $8c1f: 46 73
	sta ($9e),y              ; $8c21: 91 9e
	sta $467146              ; $8c23: 8f 46 71 46
	sta $46e546              ; $8c27: 8f 46 e5 46
	and ($e6),y              ; $8c2b: 31 e6
	sta $08e546              ; $8c2d: 8f 46 e5 08
	inc $46                  ; $8c31: e6 46
	stz $8f46,x              ; $8c33: 9e 46 8f
	lsr $73                  ; $8c36: 46 73
	sta ($9e),y              ; $8c38: 91 9e
	sbc $3f02,y              ; $8c3a: f9 02 3f
sub_8c3d:
	sty $f178                ; $8c3d: 8c 78 f1
	rol $46e5,x              ; $8c40: 3e e5 46
	lsr $cb                  ; $8c43: 46 cb
	lsr $46                  ; $8c45: 46 46
	inc $44                  ; $8c47: e6 44
	plx                      ; $8c49: fa
	tax                      ; $8c4a: aa
	phb                      ; $8c4b: 8b
	sep #$e7                 ; $8c4c: e2 e7
	cop #$c3                 ; $8c4e: 02 c3
	cmp $ea,s                ; $8c50: c3 ea
	and [$ed]                ; $8c52: 27 ed
	ora $d4,s                ; $8c54: 03 d4
	stx $d2,y                ; $8c56: 96 d2
	phy                      ; $8c58: 5a
	beq $8c5c                ; $8c59: f0 01
loc_8c5b:
	iny                      ; $8c5b: c8
loc_8c5c:
	cpx $04                  ; $8c5c: e4 04
	ora $e6                  ; $8c5e: 05 e6
	lda [$8e]                ; $8c60: a7 8e
	sta $915591              ; $8c62: 8f 91 55 91
	sbc $08                  ; $8c66: e5 08
	eor $46,x                ; $8c68: 55 46
	plp                      ; $8c6a: 28
	inc $ac                  ; $8c6b: e6 ac
	iny                      ; $8c6d: c8
	sbc $05                  ; $8c6e: e5 05
	inc $a7                  ; $8c70: e6 a7
	sbc $25                  ; $8c72: e5 25
	rol $28                  ; $8c74: 26 28
	asl                      ; $8c76: 0a
	inc $af                  ; $8c77: e6 af
	sty $f1aa                ; $8c79: 8c aa f1
	nop                      ; $8c7c: ea
	brk #$d2                 ; $8c7d: 00 d2

; === Block $8c84-$8e38 (Code) ===
sub_8c84:
	cop #$3e                 ; $8c84: 02 3e
	and $e6,s                ; $8c86: 23 e6
	tax                      ; $8c88: aa
	sbc $05                  ; $8c89: e5 05
	and $4f,s                ; $8c8b: 23 4f
	adc ($55,s),y            ; $8c8d: 73 55
	eor ($c8,x)              ; $8c8f: 41 c8
	and $05,s                ; $8c91: 23 05
	inc $ad                  ; $8c93: e6 ad
	sbc $08                  ; $8c95: e5 08
	inc $aa                  ; $8c97: e6 aa
	sbc $02                  ; $8c99: e5 02
	rol $4123,x              ; $8c9b: 3e 23 41
	bvc $8d0e                ; $8c9e: 50 6e
loc_8ca0:
	phb                      ; $8ca0: 8b
	lda $e57d91              ; $8ca1: af 91 7d e5
	eor ($28,x)              ; $8ca5: 41 28
	inc $af                  ; $8ca7: e6 af
	sbc $0a                  ; $8ca9: e5 0a
	plp                      ; $8cab: 28
	inc $82                  ; $8cac: e6 82
	sta ($af),y              ; $8cae: 91 af
sub_8cb0:
	lsr $e5                  ; $8cb0: 46 e5
	asl                      ; $8cb2: 0a
	cmp $afe6                ; $8cb3: cd e6 af
	cmp $cd91                ; $8cb6: cd 91 cd
	brl $7389                ; $8cb9: 82 cd e6
	nop                      ; $8cbc: ea
	and [$c3]                ; $8cbd: 27 c3
	cmp $c3,s                ; $8cbf: c3 c3
	pei $40                  ; $8cc1: d4 40
	cmp ($64)                ; $8cc3: d2 64
	inc $e6                  ; $8cc5: e6 e6
	adc $05e5,x              ; $8cc7: 7d e5 05
	and ($7d)                ; $8cca: 32 7d
	cmp $c3,s                ; $8ccc: c3 c3
	cmp $82,s                ; $8cce: c3 82
	cmp $7382                ; $8cd0: cd 82 73
	bra sub_8c84             ; $8cd3: 80 af
	cmp $a0af                ; $8cd5: cd af a0
	lda $41e5                ; $8cd8: ad e5 41
	plx                      ; $8cdb: fa
	eor ($8c),y              ; $8cdc: 51 8c
	cmp ($a0)                ; $8cde: d2 a0
	pei $80                  ; $8ce0: d4 80
	nop                      ; $8ce2: ea
	rol $e3                  ; $8ce3: 26 e3
	sbc $e402e7              ; $8ce5: ef e7 02 e4
	tsb $91                  ; $8ce9: 04 91
	sta ($46),y              ; $8ceb: 91 46
	sta ($91),y              ; $8ced: 91 91
	lsr $a0                  ; $8cef: 46 a0
	ldy #$46                 ; $8cf1: a0 46
	sta ($91),y              ; $8cf3: 91 91
	lsr $73                  ; $8cf5: 46 73
	sta ($a0),y              ; $8cf7: 91 a0
	adc ($e5,s),y            ; $8cf9: 73 e5
	mvp $e6,$43              ; $8cfb: 44 e6 43
	eor $e5,s                ; $8cfe: 43 e5
	mvp $46,$44              ; $8d00: 44 46 44
	lsr $46                  ; $8d03: 46 46
	lsr $f0                  ; $8d05: 46 f0
	ora $e4,s                ; $8d07: 03 e4
	tsb $f0                  ; $8d09: 04 f0
	asl                      ; $8d0b: 0a
	sta ($f1),y              ; $8d0c: 91 f1
loc_8d0e:
	sbc $08                  ; $8d0e: e5 08
	inc $af                  ; $8d10: e6 af
	sta ($73),y              ; $8d12: 91 73
	beq $8d1d                ; $8d14: f0 07
loc_8d16:
	eor $f1,x                ; $8d16: 55 f1
	sbc $0a                  ; $8d18: e5 0a
	inc $af                  ; $8d1a: e6 af
	adc ($e5,s),y            ; $8d1c: 73 e5
	asl                      ; $8d1e: 0a
	inc $af                  ; $8d1f: e6 af
	adc ($55,s),y            ; $8d21: 73 55
	adc ($f1,s),y            ; $8d23: 73 f1
	stx $43e5                ; $8d25: 8e e5 43
	inc $8f                  ; $8d28: e6 8f
	sbc $07                  ; $8d2a: e5 07
	inc $70                  ; $8d2c: e6 70
	sbc $08                  ; $8d2e: e5 08
	inc $af                  ; $8d30: e6 af
	sbc $0a                  ; $8d32: e5 0a
	plp                      ; $8d34: 28
	inc $af                  ; $8d35: e6 af
	brl $0fbc                ; $8d37: 82 82 82
	brl $9822                ; $8d3a: 82 e5 0a
	asl                      ; $8d3d: 0a
	inc $46                  ; $8d3e: e6 46
	sbc $26                  ; $8d40: e5 26
	asl                      ; $8d42: 0a
	inc $ad                  ; $8d43: e6 ad
	eor ($8e)                ; $8d45: 52 8e
	sbc $08                  ; $8d47: e5 08
	inc $80                  ; $8d49: e6 80
	lsr $e5                  ; $8d4b: 46 e5
	mvp $28,$0a              ; $8d4d: 44 28 0a
	inc $af                  ; $8d50: e6 af
	lsr $46                  ; $8d52: 46 46
	lsr $46                  ; $8d54: 46 46
	brl $0fdb                ; $8d56: 82 82 82
	brl $5b0b                ; $8d59: 82 af cd
	lsr $e5                  ; $8d5c: 46 e5
	rol $0a                  ; $8d5e: 26 0a
	inc $af                  ; $8d60: e6 af
	brl $72f3                ; $8d62: 82 8e e5
	eor $e6,s                ; $8d65: 43 e6
	sta $e607e5              ; $8d67: 8f e5 07 e6
	bvs $8d52                ; $8d6b: 70 e5
loc_8d6d:
	php                      ; $8d6d: 08
	inc $ad                  ; $8d6e: e6 ad
	sbc $44                  ; $8d70: e5 44
	inc $44                  ; $8d72: e6 44
	sbc $44                  ; $8d74: e5 44
	inc $82                  ; $8d76: e6 82
	brl $1f0c                ; $8d78: 82 91 91
	lda $8282af              ; $8d7b: af af 82 82
	eor ($e5)                ; $8d7f: 52 e5
	ora [$e6]                ; $8d81: 07 e6
	sta $e643e5              ; $8d83: 8f e5 43 e6
	lda $e5af                ; $8d87: ad af e5
	mvp $e6,$7f              ; $8d8a: 44 e6 7f
	sbc $43                  ; $8d8d: e5 43
	inc $ac                  ; $8d8f: e6 ac
	adc $0a28e5,x            ; $8d91: 7f e5 28 0a
	inc $af                  ; $8d95: e6 af
	brl $8f8a                ; $8d97: 82 f0 01
	sta $468f46              ; $8d9a: 8f 46 8f 46
	stz $9146,x              ; $8d9e: 9e 46 91
	mvp $73,$91              ; $8da1: 44 73 91
	ldy #$e5                 ; $8da4: a0 e5
	asl                      ; $8da6: 0a
	lsr $e6                  ; $8da7: 46 e6
	sta ($e5),y              ; $8da9: 91 e5
	lsr $e6                  ; $8dab: 46 e6
	adc ($71,s),y            ; $8dad: 73 71
	mvp $91,$46              ; $8daf: 44 91 46
	sbc $37                  ; $8db2: e5 37
	inc $9d                  ; $8db4: e6 9d
	adc ($8f),y              ; $8db6: 71 8f
	lsr $8f                  ; $8db8: 46 8f
	lsr $9e                  ; $8dba: 46 9e
	lsr $8e                  ; $8dbc: 46 8e
	adc ($91,s),y            ; $8dbe: 73 91
	ldy #$e5                 ; $8dc0: a0 e5
	asl                      ; $8dc2: 0a
	sbc $ce02,y              ; $8dc3: f9 02 ce
	sta $e605                ; $8dc6: 8d 05 e6
	adc $32e5,x              ; $8dc9: 7d e5 32
	inc $7d                  ; $8dcc: e6 7d
	sbc ($e6),y              ; $8dce: f1 e6
	rol $46e5,x              ; $8dd0: 3e e5 46
	lsr $cb                  ; $8dd3: 46 cb
	lsr $46                  ; $8dd5: 46 46
	sbc $44                  ; $8dd7: e5 44
	plx                      ; $8dd9: fa
	asl $8d                  ; $8dda: 06 8d
	cmp ($50)                ; $8ddc: d2 50
	pei $c0                  ; $8dde: d4 c0
	nop                      ; $8de0: ea
	and [$e2]                ; $8de1: 27 e2
	sbc $e703                ; $8de3: ed 03 e7
	cop #$c3                 ; $8de6: 02 c3
	cpx $03                  ; $8de8: e4 03
	lsr $cd                  ; $8dea: 46 cd
	lsr $46                  ; $8dec: 46 46
	mvp $46,$cd              ; $8dee: 44 46 cd
	lsr $46                  ; $8df1: 46 46
sub_8df3:
	mvp $aa,$e5              ; $8df3: 44 aa e5
	beq $8df9                ; $8df6: f0 01
loc_8df8:
	pei $c0                  ; $8df8: d4 c0
	iny                      ; $8dfa: c8
	eor ($20,x)              ; $8dfb: 41 20
	ora [$08]                ; $8dfd: 07 08
	asl                      ; $8dff: 0a
	inc $91                  ; $8e00: e6 91
	sbc $0a                  ; $8e02: e5 0a
	eor ($91,s),y            ; $8e04: 53 91
	adc ($55,s),y            ; $8e06: 73 55
	and $c8                  ; $8e08: 25 c8
	eor ($20,x)              ; $8e0a: 41 20
	eor ($53)                ; $8e0c: 52 53
	eor $53,x                ; $8e0e: 55 53
	ora $23                  ; $8e10: 05 23
	sbc ($f0),y              ; $8e12: f1 f0
	asl                      ; $8e14: 0a
	cmp $f1,s                ; $8e15: c3 f1
	ora $7d                  ; $8e17: 05 7d
	sbc $05                  ; $8e19: e5 05
	and ($c3)                ; $8e1b: 32 c3
	cmp $c3,s                ; $8e1d: c3 c3
	inc $44                  ; $8e1f: e6 44
	lsr $46                  ; $8e21: 46 46
	mvp $44,$46              ; $8e23: 44 44 46
	lsr $44                  ; $8e26: 46 44
	tax                      ; $8e28: aa
	plx                      ; $8e29: fa
	inc $8d,x                ; $8e2a: f6 8d
	cmp ($2d)                ; $8e2c: d2 2d
	pei $80                  ; $8e2e: d4 80
	cmp [$18],y              ; $8e30: d7 18
	trb $d3                  ; $8e32: 14 d3
	nop                      ; $8e34: ea
	ora [$e2]                ; $8e35: 07 e2
	inx                      ; $8e37: e8
	brk #$e7                 ; $8e38: 00 e7

; === Block $8d1d-$8d1f (Code) ===
loc_8d1d:
	sbc $0a                  ; $8d1d: e5 0a

; === Block $8df9-$8dfb (Code) ===
loc_8df9:
	cpy #$c8                 ; $8df9: c0 c8

; === Block $8e07-$8e0a (Code) ===
sub_8e07:
	eor $25,x                ; $8e07: 55 25
	iny                      ; $8e09: c8

; === Block $8f0e-$8f85 (Code) ===
sub_8f0e:
	lsr $7d                  ; $8f0e: 46 7d
	sbc $0a                  ; $8f10: e5 0a
	inc $91                  ; $8f12: e6 91
	lsr $0a                  ; $8f14: 46 0a
	sbc $0a                  ; $8f16: e5 0a
	inc $91                  ; $8f18: e6 91
	lsr $0a                  ; $8f1a: 46 0a
	sbc $0a                  ; $8f1c: e5 0a
	inc $91                  ; $8f1e: e6 91
	lsr $0a                  ; $8f20: 46 0a
	sbc $46                  ; $8f22: e5 46
	asl                      ; $8f24: 0a
	inc $91                  ; $8f25: e6 91
	lsr $e5                  ; $8f27: 46 e5
	plp                      ; $8f29: 28
	inc $af                  ; $8f2a: e6 af
	sbc $0a                  ; $8f2c: e5 0a
sub_8f2e:
	plp                      ; $8f2e: 28
	inc $82                  ; $8f2f: e6 82
	sta ($af),y              ; $8f31: 91 af
	brl $11c7                ; $8f33: 82 91 82
	sta ($af),y              ; $8f36: 91 af
	sbc $0a                  ; $8f38: e5 0a
	inc $af                  ; $8f3a: e6 af
	sta ($af),y              ; $8f3c: 91 af
	sbc $04                  ; $8f3e: e5 04
	plp                      ; $8f40: 28
	asl                      ; $8f41: 0a
	inc $aa                  ; $8f42: e6 aa
	adc $3ce5,x              ; $8f44: 7d e5 3c
	beq $8f4a                ; $8f47: f0 01
loc_8f49:
	nop                      ; $8f49: ea
loc_8f4a:
	ora [$d2]                ; $8f4a: 07 d2
	and $4691                ; $8f4c: 2d 91 46
	inc $91                  ; $8f4f: e6 91
	sbc $e5                  ; $8f51: e5 e5
	asl                      ; $8f53: 0a
	inc $73                  ; $8f54: e6 73
	asl                      ; $8f56: 0a
	ldy #$55                 ; $8f57: a0 55
	inc $a0                  ; $8f59: e6 a0
	sbc $91                  ; $8f5b: e5 91
	lsr $e6                  ; $8f5d: 46 e6
	sta ($e5),y              ; $8f5f: 91 e5
	adc ($91,s),y            ; $8f61: 73 91
	ldy #$73                 ; $8f63: a0 73
	sbc $8402,y              ; $8f65: f9 02 84
	sta $e64691              ; $8f68: 8f 91 46 e6
	sta ($e5),y              ; $8f6c: 91 e5
	adc ($28,s),y            ; $8f6e: 73 28
	inc $91                  ; $8f70: e6 91
	sbc $91                  ; $8f72: e5 91
	lsr $e6                  ; $8f74: 46 e6
	sta ($e5),y              ; $8f76: 91 e5
	sbc $46                  ; $8f78: e5 46
	and [$e6],y              ; $8f7a: 37 e6
	ldy #$37                 ; $8f7c: a0 37
	adc ($a0,s),y            ; $8f7e: 73 a0
	sbc $37                  ; $8f80: e5 37
	inc $f1                  ; $8f82: e6 f1
	stp                      ; $8f84: db
	rts                      ; $8f85: 60

; === Block $8f50-$8f54 (Code) ===
sub_8f50:
	sta ($e5),y              ; $8f50: 91 e5
	sbc $0a                  ; $8f52: e5 0a

; === Block $8f6f-$8f70 (Code) ===
sub_8f6f:
	plp                      ; $8f6f: 28

; === Block $8f8a-$8f90 (Code) ===
loc_8f8a:
	bit $e6e6,x              ; $8f8a: 3c e6 e6
	brl $9a75                ; $8f8d: 82 e5 0a

; === Block $8f8e-$9029 (Code) ===
sub_8f8e:
	sbc $0a                  ; $8f8e: e5 0a
	and [$0a],y              ; $8f90: 37 0a
	and [$82],y              ; $8f92: 37 82
	and [$82],y              ; $8f94: 37 82
	sbc $0a                  ; $8f96: e5 0a
	inc $82                  ; $8f98: e6 82
	sbc $0a                  ; $8f9a: e5 0a
	and [$82],y              ; $8f9c: 37 82
	and [$80],y              ; $8f9e: 37 80
	jml [$f0f1]              ; $8fa0: dc f1 f0
	ora ($ea,x)              ; $8fa3: 01 ea
	ora [$d2]                ; $8fa5: 07 d2
	and $4691                ; $8fa7: 2d 91 46
	inc $91                  ; $8faa: e6 91
	sbc $e5                  ; $8fac: e5 e5
	asl                      ; $8fae: 0a
	inc $73                  ; $8faf: e6 73
	asl                      ; $8fb1: 0a
	ldy #$55                 ; $8fb2: a0 55
	inc $a0                  ; $8fb4: e6 a0
	sbc $91                  ; $8fb6: e5 91
	lsr $e6                  ; $8fb8: 46 e6
	sta ($e5),y              ; $8fba: 91 e5
	adc ($91,s),y            ; $8fbc: 73 91
	ldy #$73                 ; $8fbe: a0 73
	sbc $df02,y              ; $8fc0: f9 02 df
	sta $e64691              ; $8fc3: 8f 91 46 e6
	sta ($e5),y              ; $8fc7: 91 e5
	adc ($28,s),y            ; $8fc9: 73 28
	inc $91                  ; $8fcb: e6 91
	sbc $91                  ; $8fcd: e5 91
	lsr $e6                  ; $8fcf: 46 e6
	sta ($e5),y              ; $8fd1: 91 e5
	sbc $46                  ; $8fd3: e5 46
	and [$e6],y              ; $8fd5: 37 e6
	ldy #$37                 ; $8fd7: a0 37
	adc ($a0,s),y            ; $8fd9: 73 a0
	sbc $37                  ; $8fdb: e5 37
	inc $f1                  ; $8fdd: e6 f1
	inc $c3                  ; $8fdf: e6 c3
	sbc ($fa),y              ; $8fe1: f1 fa
	ror $8e                  ; $8fe3: 66 8e
	cmp ($50)                ; $8fe5: d2 50
	nop                      ; $8fe7: ea
	and [$e2]                ; $8fe8: 27 e2
	sbc $d403                ; $8fea: ed 03 d4
	stz $e7                  ; $8fed: 64 e7
	cop #$c3                 ; $8fef: 02 c3
	cpx $03                  ; $8ff1: e4 03
	brl $12c3                ; $8ff3: 82 cd 82
	adc ($80,s),y            ; $8ff6: 73 80
	lda $a0afcd              ; $8ff8: af cd af a0
	lda $41e5                ; $8ffc: ad e5 41
	pei $40                  ; $8fff: d4 40
	pei $64                  ; $9001: d4 64
	nop                      ; $9003: ea
	and [$ed]                ; $9004: 27 ed
	ora $d2,s                ; $9006: 03 d2
	bvc $8ffa                ; $9008: 50 f0
loc_900a:
	ora ($e4,x)              ; $900a: 01 e4
	ora $c8                  ; $900c: 05 c8
	inc $8c                  ; $900e: e6 8c
	rtl                      ; $9010: 6b
	eor ($53)                ; $9011: 52 53
	eor $0a,x                ; $9013: 55 0a
	eor $8f,x                ; $9015: 55 8f
	sbc $0a                  ; $9017: e5 0a
	inc $af                  ; $9019: e6 af
	sta ($70),y              ; $901b: 91 70
	iny                      ; $901d: c8
	sty $8e6b                ; $901e: 8c 6b 8e
	sta $919191              ; $9021: 8f 91 91 91
	bvc $9095                ; $9025: 50 6e
loc_9027:
	sbc ($ea),y              ; $9027: f1 ea
	brk #$d4                 ; $9029: 00 d4

; === Block $8ffa-$9000 (Code) ===
loc_8ffa:
	lda $e5ada0              ; $8ffa: af a0 ad e5
	eor ($d4,x)              ; $8ffe: 41 d4
	rti                      ; $9000: 40

; === Block $902a-$9038 (Code) ===
loc_902a:
	pei $c0                  ; $902a: d4 c0
	sbc #$02                 ; $902c: e9 02
	cmp ($1e)                ; $902e: d2 1e
	wai                      ; $9030: cb
	cmp $3e02e5              ; $9031: cf e5 02 3e
	and $e6,s                ; $9035: 23 e6
	tax                      ; $9037: aa

; === Block $9038-$906e (Code) ===
sub_9038:
	sbc $05                  ; $9038: e5 05
	and $4f,s                ; $903a: 23 4f
	adc ($55,s),y            ; $903c: 73 55
	eor ($c8,x)              ; $903e: 41 c8
	and $05,s                ; $9040: 23 05
	inc $ad                  ; $9042: e6 ad
	sbc $08                  ; $9044: e5 08
	inc $aa                  ; $9046: e6 aa
	sbc $02                  ; $9048: e5 02
	rol $4123,x              ; $904a: 3e 23 41
	bvc sub_90bd             ; $904d: 50 6e
loc_904f:
	phb                      ; $904f: 8b
	lda $e57d91              ; $9050: af 91 7d e5
	eor ($28,x)              ; $9054: 41 28
	inc $af                  ; $9056: e6 af
sub_9058:
	sbc $0a                  ; $9058: e5 0a
	plp                      ; $905a: 28
	inc $82                  ; $905b: e6 82
	sta ($af),y              ; $905d: 91 af
	lsr $e5                  ; $905f: 46 e5
	asl                      ; $9061: 0a
	cmp $afe6                ; $9062: cd e6 af
	cmp $cf91                ; $9065: cd 91 cf
	beq $9070                ; $9068: f0 06
loc_906a:
	cmp $f1,s                ; $906a: c3 f1
	inc $e9                  ; $906c: e6 e9
	brk #$ea                 ; $906e: 00 ea

; === Block $9070-$907b (Code) ===
loc_9070:
	and [$ed]                ; $9070: 27 ed
	ora $d2,s                ; $9072: 03 d2
	bvc $8ff8                ; $9074: 50 82
loc_9076:
	cmp $7382                ; $9076: cd 82 73
	bra $902a                ; $9079: 80 af

; === Block $907b-$9155 (Code) ===
sub_907b:
	cmp $a0af                ; $907b: cd af a0
	lda $41e5                ; $907e: ad e5 41
	plx                      ; $9081: fa
	ora ($90,x)              ; $9082: 01 90
	cmp ($dc)                ; $9084: d2 dc
	pei $80                  ; $9086: d4 80
	nop                      ; $9088: ea
	and $e2                  ; $9089: 25 e2
	sbc $a505e4              ; $908b: ef e4 05 a5
	ldy $cb0a,x              ; $908f: bc 0a cb
	asl                      ; $9092: 0a
	wai                      ; $9093: cb
	asl                      ; $9094: 0a
loc_9095:
	wai                      ; $9095: cb
	asl                      ; $9096: 0a
	iny                      ; $9097: c8
	cpx $05                  ; $9098: e4 05
	nop                      ; $909a: ea
	and $05                  ; $909b: 25 05
	nop                      ; $909d: ea
	jsl $ad0bf0              ; $909e: 22 f0 0b ad
loc_90a2:
	sbc ($af),y              ; $90a2: f1 af
	nop                      ; $90a4: ea
	and $07                  ; $90a5: 25 07
	nop                      ; $90a7: ea
	jsl $ad0ff0              ; $90a8: 22 f0 0f ad
loc_90ac:
	sbc ($ea),y              ; $90ac: f1 ea
	and $05                  ; $90ae: 25 05
	nop                      ; $90b0: ea
	jsl $ad0bf0              ; $90b1: 22 f0 0b ad
loc_90b5:
	sbc ($af),y              ; $90b5: f1 af
	nop                      ; $90b7: ea
	and $07                  ; $90b8: 25 07
	nop                      ; $90ba: ea
	jsl $ad0ff0              ; $90bb: 22 f0 0f ad
loc_90bf:
	sbc ($ea),y              ; $90bf: f1 ea
	and $05                  ; $90c1: 25 05
	nop                      ; $90c3: ea
	jsl $ad0af0              ; $90c4: 22 f0 0a ad
loc_90c8:
	sbc ($af),y              ; $90c8: f1 af
	nop                      ; $90ca: ea
	and $07                  ; $90cb: 25 07
	nop                      ; $90cd: ea
	jsl $ad05f0              ; $90ce: 22 f0 05 ad
loc_90d2:
	sbc ($af),y              ; $90d2: f1 af
	nop                      ; $90d4: ea
	and $07                  ; $90d5: 25 07
	nop                      ; $90d7: ea
	jsl $ad08f0              ; $90d8: 22 f0 08 ad
loc_90dc:
	sbc ($ea),y              ; $90dc: f1 ea
	and $05                  ; $90de: 25 05
	nop                      ; $90e0: ea
	jsl $eaadad              ; $90e1: 22 ad ad ea
loc_90e5:
	and $05                  ; $90e5: 25 05
	nop                      ; $90e7: ea
	jsl $eaadad              ; $90e8: 22 ad ad ea
loc_90ec:
	and $05                  ; $90ec: 25 05
	nop                      ; $90ee: ea
	and $05                  ; $90ef: 25 05
	nop                      ; $90f1: ea
	jsl $25eaad              ; $90f2: 22 ad ea 25
loc_90f6:
	and $ea,s                ; $90f6: 23 ea
	and $71                  ; $90f8: 25 71
	php                      ; $90fa: 08
	nop                      ; $90fb: ea
	jsl $adadad              ; $90fc: 22 ad ad ad
loc_9100:
	nop                      ; $9100: ea
	and $05                  ; $9101: 25 05
	nop                      ; $9103: ea
	jsl $adadad              ; $9104: 22 ad ad ad
loc_9108:
	lda $0725ea              ; $9108: af ea 25 07
	nop                      ; $910c: ea
	jsl $eaafad              ; $910d: 22 ad af ea
loc_9111:
	and $25                  ; $9111: 25 25
	nop                      ; $9113: ea
	jsl $eaadad              ; $9114: 22 ad ad ea
loc_9118:
	and $07                  ; $9118: 25 07
	pei $c0                  ; $911a: d4 c0
	cmp ($50)                ; $911c: d2 50
	lda $afad                ; $911e: ad ad af
	lda $adaf                ; $9121: ad af ad
	lda $f0af                ; $9124: ad af f0
	cop #$ad                 ; $9127: 02 ad
	lda $afadad              ; $9129: af ad ad af
	lda $adaf                ; $912d: ad af ad
	lda $f1af                ; $9130: ad af f1
	cmp ($dc)                ; $9133: d2 dc
	pei $80                  ; $9135: d4 80
	ora [$d4]                ; $9137: 07 d4
	cpy #$d2                 ; $9139: c0 d2
	bvc $90ea                ; $913b: 50 ad
loc_913d:
	lda $adaf                ; $913d: ad af ad
	lda $afadad              ; $9140: af ad ad af
	beq $9147                ; $9144: f0 01
loc_9146:
	lda $adaf                ; $9146: ad af ad
	lda $adaf                ; $9149: ad af ad
	lda $afadad              ; $914c: af ad ad af
	sbc ($d2),y              ; $9150: f1 d2
	jml [$80d4]              ; $9152: dc d4 80
	brk #$fa                 ; $9155: 00 fa

; === Block $9090-$9092 (Code) ===
loc_9090:
	asl                      ; $9090: 0a
	wai                      ; $9091: cb

; === Block $90bd-$90c1 (Code) ===
loc_90bd:
	ora $eaf1ad              ; $90bd: 0f ad f1 ea

; === Block $90dd-$90de (Code) ===
sub_90dd:
	nop                      ; $90dd: ea

; === Block $90ea-$90ef (Code) ===
loc_90ea:
	lda $25ea                ; $90ea: ad ea 25
	ora $ea                  ; $90ed: 05 ea

; === Block $912b-$9137 (Code) ===
sub_912b:
	lda $adaf                ; $912b: ad af ad
	lda $afadad              ; $912e: af ad ad af
	sbc ($d2),y              ; $9132: f1 d2
	jml [$80d4]              ; $9134: dc d4 80

; === Block $9147-$9155 (Code) ===
loc_9147:
	lda $afadad              ; $9147: af ad ad af
	lda $adaf                ; $914b: ad af ad
	lda $f1af                ; $914e: ad af f1
	cmp ($dc)                ; $9151: d2 dc
	pei $80                  ; $9153: d4 80

; === Block $914d-$9150 (Code) ===
sub_914d:
	lda $afad                ; $914d: ad ad af

; === Block $92a2-$9341 (Code) ===
sub_92a2:
	jsr $eaad                ; $92a2: 20 ad ea
loc_92a5:
	and ($ad,x)              ; $92a5: 21 ad
	sbc ($f0),y              ; $92a7: f1 f0
	ora ($ea,x)              ; $92a9: 01 ea
	jsr $b1b1                ; $92ab: 20 b1 b1
loc_92ae:
	lda $ad21ea              ; $92ae: af ea 21 ad
	sbc ($ea),y              ; $92b2: f1 ea
	jsr $eaad                ; $92b4: 20 ad ea
loc_92b7:
	and ($af,x)              ; $92b7: 21 af
	nop                      ; $92b9: ea
	jsr $afad                ; $92ba: 20 ad af
loc_92bd:
	nop                      ; $92bd: ea
	and ($ad,x)              ; $92be: 21 ad
	nop                      ; $92c0: ea
	jsr $afaf                ; $92c1: 20 af af
loc_92c4:
	nop                      ; $92c4: ea
	and ($af,x)              ; $92c5: 21 af
	nop                      ; $92c7: ea
	jsr $afad                ; $92c8: 20 ad af
loc_92cb:
	nop                      ; $92cb: ea
	and ($ad,x)              ; $92cc: 21 ad
	beq $92d3                ; $92ce: f0 03
loc_92d0:
	lda $af20ea              ; $92d0: af ea 20 af
	lda $f121ea              ; $92d4: af ea 21 f1
	nop                      ; $92d8: ea
	and $e5,s                ; $92d9: 23 e5
	eor $46,x                ; $92db: 55 46
	plp                      ; $92dd: 28
	asl                      ; $92de: 0a
	inc $f0                  ; $92df: e6 f0
	ora $20ea                ; $92e1: 0d ea 20
	lda $21eaaf              ; $92e4: af af ea 21
	lda $af20ea              ; $92e8: af ea 20 af
	sbc ($af),y              ; $92ec: f1 af
	lda $af21ea              ; $92ee: af ea 21 af
	lda $af20ea              ; $92f2: af ea 20 af
	nop                      ; $92f6: ea
	and ($af,x)              ; $92f7: 21 af
	lda $0bf0af              ; $92f9: af af f0 0b
	nop                      ; $92fd: ea
	jsr $afaf                ; $92fe: 20 af af
loc_9301:
	nop                      ; $9301: ea
	and ($af,x)              ; $9302: 21 af
	nop                      ; $9304: ea
	jsr $f1af                ; $9305: 20 af f1
loc_9308:
	lda $adad                ; $9308: ad ad ad
	lda $23ea                ; $930b: ad ea 23
	lda ($b1),y              ; $930e: b1 b1
	lda $ad20ea              ; $9310: af ea 20 ad
	nop                      ; $9314: ea
	and $93,s                ; $9315: 23 93
	sta ($91,s),y            ; $9317: 93 91
	nop                      ; $9319: ea
	and ($b1,x)              ; $931a: 21 b1
	lda $9bfac0              ; $931c: af c0 fa 9b
	sta ($51),y              ; $9320: 91 51
	php                      ; $9322: 08
	and $93,x                ; $9323: 35 93
	eor ($94,x)              ; $9325: 41 94
	sbc ($94,s),y            ; $9327: f3 94
	inc $95,x                ; $9329: f6 95
	bcs $92c3                ; $932b: b0 96
loc_932d:
	ldx $97,y                ; $932d: b6 97
	lda $8098,y              ; $932f: b9 98 80
	sta $9b74,y              ; $9332: 99 74 9b
	sed                      ; $9335: f8
	sbc ($f3,x)              ; $9336: e1 f3
	stz $f7                  ; $9338: 64 f7
	bit $f500,x              ; $933a: 3c 00 f5
	lsr $d2                  ; $933d: 46 d2
	lsr $d4                  ; $933f: 46 d4
	rti                      ; $9341: 40

; === Block $92c3-$92c7 (Code) ===
loc_92c3:
	lda $af21ea              ; $92c3: af ea 21 af

; === Block $92d3-$92d9 (Code) ===
loc_92d3:
	lda $21eaaf              ; $92d3: af af ea 21
	sbc ($ea),y              ; $92d7: f1 ea

; === Block $9465-$946c (Code) ===
loc_9465:
	cmp $9be6                ; $9465: cd e6 9b
	ldx $e5,y                ; $9468: b6 e5
	lsr $cd                  ; $946a: 46 cd

; === Block $946c-$9e0d (Code) ===
sub_946c:
	lsr $c8                  ; $946c: 46 c8
	cmp $02f0                ; $946e: cd f0 02
	lsr $d0                  ; $9471: 46 d0
	sbc ($f0),y              ; $9473: f1 f0
	ora $46                  ; $9475: 05 46
	cmp $d2f1                ; $9477: cd f1 d2
	sty $80d4                ; $947a: 8c d4 80
	nop                      ; $947d: ea
	and #$e6                 ; $947e: 29 e6
	and $71                  ; $9480: 25 71
	ldy #$e5                 ; $9482: a0 e5
	plp                      ; $9484: 28
	eor $41,x                ; $9485: 55 41
	ora $26                  ; $9487: 05 26
	inc $a0                  ; $9489: e6 a0
	bvs $9472                ; $948b: 70 e5
loc_948d:
	eor $3e,x                ; $948d: 55 3e
	ldx $25e6,y              ; $948f: be e6 25
	adc ($a0),y              ; $9492: 71 a0
	sbc $28                  ; $9494: e5 28
	eor $6e,x                ; $9496: 55 6e
	eor ($53,x)              ; $9498: 41 53
	plp                      ; $949a: 28
	inc $9d                  ; $949b: e6 9d
	sbc $73                  ; $949d: e5 73
	rol $32be,x              ; $949f: 3e be 32
	inc $73                  ; $94a2: e6 73
	ldy #$e5                 ; $94a4: a0 e5
	and [$55],y              ; $94a6: 37 55
	adc ($e6,s),y            ; $94a8: 73 e6
	ldy #$e5                 ; $94aa: a0 e5
	and [$55],y              ; $94ac: 37 55
	adc ($37,s),y            ; $94ae: 73 37
	adc ($a0,s),y            ; $94b0: 73 a0
	sta $be0155              ; $94b2: 8f 55 01 be
	and ($73)                ; $94b6: 32 73
	inc $a0                  ; $94b8: e6 a0
	sbc $37                  ; $94ba: e5 37
	eor $73,x                ; $94bc: 55 73
	cmp $cd91                ; $94be: cd 91 cd
	ldy #$cd                 ; $94c1: a0 cd
	sbc $0a                  ; $94c3: e5 0a
	inc $a0                  ; $94c5: e6 a0
	clv                      ; $94c7: b8
	ldx $be89,y              ; $94c8: be 89 be
	beq $94d1                ; $94cb: f0 04
loc_94cd:
	cmp $f1,s                ; $94cd: c3 f1
	and $25                  ; $94cf: 25 25
loc_94d1:
	rol $25                  ; $94d1: 26 25
	and $26                  ; $94d3: 25 26
	sta [$d4]                ; $94d5: 87 d4
	cpy #$d2                 ; $94d7: c0 d2
	bvc $94c1                ; $94d9: 50 e6
loc_94db:
	txy                      ; $94db: 9b
	stx $8f6d                ; $94dc: 8e 6d 8f
	ldy #$f0                 ; $94df: a0 f0
	ora $b9                  ; $94e1: 05 b9
	stx $8f6d                ; $94e3: 8e 6d 8f
	ldy #$f1                 ; $94e6: a0 f1
	lda $6d8e,y              ; $94e8: b9 8e 6d
	stx $be9b                ; $94eb: 8e 9b be
	sbc $07                  ; $94ee: e5 07
	plx                      ; $94f0: fa
	adc $d294,y              ; $94f1: 79 94 d2
	lsr $d4                  ; $94f4: 46 d4
	cpy #$d7                 ; $94f6: c0 d7
	clc                      ; $94f8: 18
	asl $eac9,x              ; $94f9: 1e c9 ea
	and #$e2                 ; $94fc: 29 e2
	xba                      ; $94fe: eb
	ora $cece                ; $94ff: 0d ce ce
	dec $04e4                ; $9502: ce e4 04
	ldx $9b                  ; $9505: a6 9b
	ldx $a7,y                ; $9507: b6 a7
	lda $01e5,y              ; $9509: b9 e5 01
	ora $b49be6,x            ; $950c: 1f e6 9b b4
	ldy $d4,x                ; $9510: b4 d4
	cpy #$ea                 ; $9512: c0 ea
	and [$d2]                ; $9514: 27 d2
	phy                      ; $9516: 5a
	cpx $05                  ; $9517: e4 05
	cmp $c7,s                ; $9519: c3 c7
	inc $93                  ; $951b: e6 93
	lda ($e5),y              ; $951d: b1 e5
	tsb $432a                ; $951f: 0c 2a 43 NTRL2
	eor $44,s                ; $9522: 43 44
	cmp $c7,s                ; $9524: c3 c7
	inc $93                  ; $9526: e6 93
	lda ($e5),y              ; $9528: b1 e5
	tsb $432a                ; $952a: 0c 2a 43 NTRL2
	eor $44,s                ; $952d: 43 44
	inc $a0                  ; $952f: e6 a0
	and [$73],y              ; $9531: 37 73
	ldy #$e5                 ; $9533: a0 e5
	and [$e6],y              ; $9535: 37 e6
	adc ($a0,s),y            ; $9537: 73 a0
	sbc $37                  ; $9539: e5 37
	adc ($e6,s),y            ; $953b: 73 e6
	ldy #$e5                 ; $953d: a0 e5
	and [$55],y              ; $953f: 37 55
	adc ($37,s),y            ; $9541: 73 37
	adc ($a0,s),y            ; $9543: 73 a0
	eor $e6,x                ; $9545: 55 e6
	sta ($e5),y              ; $9547: 91 e5
	asl                      ; $9549: 0a
	eor ($e6,s),y            ; $954a: 53 e6
	eor $91,x                ; $954c: 55 91
	sbc $55                  ; $954e: e5 55
	ora [$e6]                ; $9550: 07 e6
	bvc $9512                ; $9552: 50 be
loc_9554:
	ldy #$37                 ; $9554: a0 37
	adc ($a0,s),y            ; $9556: 73 a0
	sbc $37                  ; $9558: e5 37
	inc $91                  ; $955a: e6 91
	ldy #$e5                 ; $955c: a0 e5
	asl                      ; $955e: 0a
	inc $a0                  ; $955f: e6 a0
	cmp $cd91                ; $9561: cd 91 cd
	adc ($cd,s),y            ; $9564: 73 cd
	sta ($9e),y              ; $9566: 91 9e
	eor $a0,x                ; $9568: 55 a0
	sbc $08                  ; $956a: e5 08
	inc $91                  ; $956c: e6 91
	sbc $0a                  ; $956e: e5 0a
	eor $c3be                ; $9570: 4d be c3
	inc $ea                  ; $9573: e6 ea
	ora ($d2,x)              ; $9575: 01 d2
	bit $40d4,x              ; $9577: 3c d4 40
	inc $7011                ; $957a: ee 11 70
	ror                      ; $957d: 6a
	ldx $9ec5,y              ; $957e: be c5 9e
	stz $7371,x              ; $9581: 9e 71 73
	eor $e5,x                ; $9584: 55 e5
	and $25                  ; $9586: 25 25
	jsr $e6bc                ; $9588: 20 bc e6
loc_958b:
	bvs $95fd                ; $958b: 70 70
loc_958d:
	rtl                      ; $958d: 6b
	ldy $eac3,x              ; $958e: bc c3 ea
	and #$eb                 ; $9591: 29 eb
	ora $d48cd2              ; $9593: 0f d2 8c d4
	bra $955d                ; $9597: 80 c4
	wai                      ; $9599: cb
	rol                      ; $959a: 2a
	and $6657,y              ; $959b: 39 57 66
	ror $28e5                ; $959e: 6e e5 28
	asl                      ; $95a1: 0a
	plp                      ; $95a2: 28
	inc $9e                  ; $95a3: e6 9e
	sta ($73),y              ; $95a5: 91 73
	sta ($73),y              ; $95a7: 91 73
	eor ($73,s),y            ; $95a9: 53 73
	lda $0ae5,y              ; $95ab: b9 e5 0a
	inc $a0                  ; $95ae: e6 a0
	sbc $0a                  ; $95b0: e5 0a
	and $28,x                ; $95b2: 35 28
	asl                      ; $95b4: 0a
	inc $a0                  ; $95b5: e6 a0
	sta ($53),y              ; $95b7: 91 53
	adc ($f0,s),y            ; $95b9: 73 f0
	ora ($b9,x)              ; $95bb: 01 b9
	sbc $28                  ; $95bd: e5 28
	asl                      ; $95bf: 0a
	plp                      ; $95c0: 28
	inc $9e                  ; $95c1: e6 9e
	sta ($73),y              ; $95c3: 91 73
	sta ($73),y              ; $95c5: 91 73
	eor ($73,s),y            ; $95c7: 53 73
	lda $0ae5,y              ; $95c9: b9 e5 0a
	inc $a0                  ; $95cc: e6 a0
	sbc $0a                  ; $95ce: e5 0a
	and $28,x                ; $95d0: 35 28
	asl                      ; $95d2: 0a
	inc $a0                  ; $95d3: e6 a0
	sta ($53),y              ; $95d5: 91 53
	adc ($f1,s),y            ; $95d7: 73 f1
	lda $28e5,y              ; $95d9: b9 e5 28
	asl                      ; $95dc: 0a
	plp                      ; $95dd: 28
	inc $9e                  ; $95de: e6 9e
	plp                      ; $95e0: 28
	adc ($a0,s),y            ; $95e1: 73 a0
	sta ($a0),y              ; $95e3: 91 a0
	sta ($9e),y              ; $95e5: 91 9e
	sbc $28                  ; $95e7: e5 28
	asl                      ; $95e9: 0a
	inc $a0                  ; $95ea: e6 a0
	sta ($a0),y              ; $95ec: 91 a0
	sbc $0a                  ; $95ee: e5 0a
	rtl                      ; $95f0: 6b
	ldx $fab6,y              ; $95f1: be b6 fa
	ora ($95),y              ; $95f4: 11 95
	cmp ($82)                ; $95f6: d2 82
	pei $80                  ; $95f8: d4 80
	nop                      ; $95fa: ea
	rol                      ; $95fb: 2a
	sep #$ee                 ; $95fc: e2 ee
	ora ($ce),y              ; $95fe: 11 ce
	dec $c8ce                ; $9600: ce ce c8
	cpx $04                  ; $9603: e4 04
	eor ($cd)                ; $9605: 52 cd
	eor $c8,s                ; $9607: 43 c8
	cmp $cd52                ; $9609: cd 52 cd
	ora [$c8]                ; $960c: 07 c8
	cmp $cd25                ; $960e: cd 25 cd
	asl $cd,x                ; $9611: 16 cd
	ora ($c8,x)              ; $9613: 01 c8
	and $cd                  ; $9615: 25 cd
	bvs $95e6                ; $9617: 70 cd
loc_9619:
	and $b6,s                ; $9619: 23 b6
	ldy #$cd                 ; $961b: a0 cd
	ldy #$c8                 ; $961d: a0 c8
	cmp $02f0                ; $961f: cd f0 02
	ldy #$d0                 ; $9622: a0 d0
	sbc ($f0),y              ; $9624: f1 f0
	ora $a0                  ; $9626: 05 a0
	cmp $d2f1                ; $9628: cd f1 d2
	plp                      ; $962b: 28
	pei $40                  ; $962c: d4 40
	nop                      ; $962e: ea
	ora ($ee,x)              ; $962f: 01 ee
	ora ($6b),y              ; $9631: 11 6b
	sty $6d50                ; $9633: 8c 50 6d
	pei $c0                  ; $9636: d4 c0
	cmp ($64)                ; $9638: d2 64
	nop                      ; $963a: ea
	and [$0c]                ; $963b: 27 0c
	rol                      ; $963d: 2a
	pha                      ; $963e: 48
	eor [$07],y              ; $963f: 57 07
	ora [$08]                ; $9641: 07 08
	pei $40                  ; $9643: d4 40
	cmp ($28)                ; $9645: d2 28
sub_9647:
	nop                      ; $9647: ea
	ora ($ee,x)              ; $9648: 01 ee
	ora ($6b),y              ; $964a: 11 6b
	ror $2241                ; $964c: 6e 41 22
	pei $c0                  ; $964f: d4 c0
	cmp ($64)                ; $9651: d2 64
	nop                      ; $9653: ea
	and [$0c]                ; $9654: 27 0c
	rol                      ; $9656: 2a
	pha                      ; $9657: 48
	eor [$07],y              ; $9658: 57 07
	ora [$08]                ; $965a: 07 08
	cmp $c3,s                ; $965c: c3 c3
	cmp $d2,s                ; $965e: c3 d2
	sty $80d4                ; $9660: 8c d4 80
	nop                      ; $9663: ea
	rol                      ; $9664: 2a
	cpy $ca                  ; $9665: c4 ca
	eor [$66],y              ; $9667: 57 66
	rtl                      ; $9669: 6b
	txy                      ; $966a: 9b
	ror $6b61                ; $966b: 6e 61 6b
	ldy $19e5,x              ; $966e: bc e5 19
	plp                      ; $9671: 28
	inc $73                  ; $9672: e6 73
	bvc $965b                ; $9674: 50 e5
loc_9676:
	ora $e6                  ; $9676: 05 e6
	ldy #$cd                 ; $9678: a0 cd
	sta ($cd),y              ; $967a: 91 cd
	adc ($cd,s),y            ; $967c: 73 cd
	eor $28,x                ; $967e: 55 28
	bvs $96a7                ; $9680: 70 25
loc_9682:
	tya                      ; $9682: 98
	ldy $3470,x              ; $9683: bc 70 34
	tsb $6e                  ; $9686: 04 6e
	jsl $7566be              ; $9688: 22 be 66 75
loc_968c:
	phb                      ; $968c: 8b
	ldx $0ce5,y              ; $968d: be e5 0c
	tcs                      ; $9690: 1b
	asl $5ad2,x              ; $9691: 1e d2 5a
	pei $c0                  ; $9694: d4 c0
	nop                      ; $9696: ea
	and #$e6                 ; $9697: 29 e6
	ror $3152                ; $9699: 6e 52 31
	eor ($73,s),y            ; $969c: 53 73
	beq $96a5                ; $969e: f0 05
loc_96a0:
	lda $3152,y              ; $96a0: b9 52 31
	eor ($73,s),y            ; $96a3: 53 73
loc_96a5:
	sbc ($b9),y              ; $96a5: f1 b9
loc_96a7:
	eor ($31)                ; $96a7: 52 31
	eor ($6e)                ; $96a9: 52 6e
	ldx $fa8e,y              ; $96ab: be 8e fa
	rol                      ; $96ae: 2a
	stx $d2,y                ; $96af: 96 d2
	ror $80d4                ; $96b1: 6e d4 80
	nop                      ; $96b4: ea
	ora ($e2,x)              ; $96b5: 01 e2
	inc $ce11                ; $96b7: ee 11 ce
	dec $f0ce                ; $96ba: ce ce f0
	ora $c3                  ; $96bd: 05 c3
	sbc ($d2),y              ; $96bf: f1 d2
	plp                      ; $96c1: 28
	pei $40                  ; $96c2: d4 40
	cpx $04                  ; $96c4: e4 04
	tya                      ; $96c6: 98
	sbc $05                  ; $96c7: e5 05
	inc $8c                  ; $96c9: e6 8c
	tya                      ; $96cb: 98
	cmp $98                  ; $96cc: c5 98
	sbc $05                  ; $96ce: e5 05
	ora $e6                  ; $96d0: 05 e6
	tya                      ; $96d2: 98
sub_96d3:
	cmp $c3                  ; $96d3: c5 c3
	cmp $c3,s                ; $96d5: c3 c3
	cmp $73,s                ; $96d7: c3 73
	ldy #$e5                 ; $96d9: a0 e5
	plp                      ; $96db: 28
	inc $73                  ; $96dc: e6 73
	sbc $37                  ; $96de: e5 37
	inc $73                  ; $96e0: e6 73
	sbc $28                  ; $96e2: e5 28
	inc $73                  ; $96e4: e6 73
	sbc $19                  ; $96e6: e5 19
	plp                      ; $96e8: 28
	inc $73                  ; $96e9: e6 73
	sbc $55                  ; $96eb: e5 55
	inc $73                  ; $96ed: e6 73
	sbc $46                  ; $96ef: e5 46
	inc $73                  ; $96f1: e6 73
	sbc $28                  ; $96f3: e5 28
	asl $1f,x                ; $96f5: 16 1f
	ldx $e655,y              ; $96f7: be 55 e6
	sta ($55),y              ; $96fa: 91 55
	sbc $0a                  ; $96fc: e5 0a
	inc $91                  ; $96fe: e6 91
	eor $e5,x                ; $9700: 55 e5
	asl                      ; $9702: 0a
	inc $55                  ; $9703: e6 55
	sbc $35                  ; $9705: e5 35
	rol $08                  ; $9707: 26 08
	inc $a0                  ; $9709: e6 a0
	sta ($e5),y              ; $970b: 91 e5
	bvs $977f                ; $970d: 70 70
loc_970f:
	rtl                      ; $970f: 6b
	ldy $e634,x              ; $9710: bc 34 e6
	sta $02e5,x              ; $9713: 9d e5 02
	ldy $c3c3,x              ; $9716: bc c3 c3
	cmp ($32)                ; $9719: d2 32
	adc ($e6,s),y            ; $971b: 73 e6
	adc ($e5,s),y            ; $971d: 73 e5
	plp                      ; $971f: 28
	inc $73                  ; $9720: e6 73
	sbc $0a                  ; $9722: e5 0a
	inc $73                  ; $9724: e6 73
	sbc $28                  ; $9726: e5 28
	and $e6,x                ; $9728: 35 e6
	adc ($e5,s),y            ; $972a: 73 e5
	plp                      ; $972c: 28
	asl                      ; $972d: 0a
	inc $a0                  ; $972e: e6 a0
	sta ($55),y              ; $9730: 91 55
	sbc $71                  ; $9732: e5 71
	inc $73                  ; $9734: e6 73
	sbc $28                  ; $9736: e5 28
	inc $73                  ; $9738: e6 73
sub_973a:
	sbc $73                  ; $973a: e5 73
	inc $73                  ; $973c: e6 73
	sbc $73                  ; $973e: e5 73
	inc $9e                  ; $9740: e6 9e
	sbc $28                  ; $9742: e5 28
	asl                      ; $9744: 0a
	inc $a0                  ; $9745: e6 a0
	sta ($55),y              ; $9747: 91 55
	ldy #$e5                 ; $9749: a0 e5
	adc ($f0,s),y            ; $974b: 73 f0
	ora ($be,x)              ; $974d: 01 be
	inc $73                  ; $974f: e6 73
	sbc $28                  ; $9751: e5 28
	inc $73                  ; $9753: e6 73
	sbc $0a                  ; $9755: e5 0a
	inc $73                  ; $9757: e6 73
	sbc $28                  ; $9759: e5 28
	and $e6,x                ; $975b: 35 e6
	adc ($e5,s),y            ; $975d: 73 e5
	plp                      ; $975f: 28
	asl                      ; $9760: 0a
	inc $a0                  ; $9761: e6 a0
	sta ($55),y              ; $9763: 91 55
	sbc $71                  ; $9765: e5 71
	inc $73                  ; $9767: e6 73
	sbc $28                  ; $9769: e5 28
	inc $73                  ; $976b: e6 73
	sbc $73                  ; $976d: e5 73
	inc $73                  ; $976f: e6 73
	sbc $73                  ; $9771: e5 73
	inc $9e                  ; $9773: e6 9e
	sbc $28                  ; $9775: e5 28
	asl                      ; $9777: 0a
	inc $a0                  ; $9778: e6 a0
	sta ($55),y              ; $977a: 91 55
	ldy #$e5                 ; $977c: a0 e5
	adc ($f1,s),y            ; $977e: 73 f1
	ldx $73e6,y              ; $9780: be e6 73
	sbc $28                  ; $9783: e5 28
	inc $73                  ; $9785: e6 73
sub_9787:
	sbc $0a                  ; $9787: e5 0a
	inc $73                  ; $9789: e6 73
	sbc $28                  ; $978b: e5 28
	and $e6,x                ; $978d: 35 e6
	adc ($e5,s),y            ; $978f: 73 e5
	plp                      ; $9791: 28
	asl                      ; $9792: 0a
	inc $a0                  ; $9793: e6 a0
	sta ($55),y              ; $9795: 91 55
	sbc $71                  ; $9797: e5 71
	inc $73                  ; $9799: e6 73
	sbc $28                  ; $979b: e5 28
	inc $73                  ; $979d: e6 73
	sbc $73                  ; $979f: e5 73
	inc $73                  ; $97a1: e6 73
	sbc $73                  ; $97a3: e5 73
	inc $9e                  ; $97a5: e6 9e
	sbc $28                  ; $97a7: e5 28
	asl                      ; $97a9: 0a
	inc $a0                  ; $97aa: e6 a0
	sta ($55),y              ; $97ac: 91 55
	ldy #$91                 ; $97ae: a0 91
	ror $8ebe                ; $97b0: 6e be 8e
	plx                      ; $97b3: fa
	cpy #$96                 ; $97b4: c0 96
	cmp ($a0)                ; $97b6: d2 a0
	pei $80                  ; $97b8: d4 80
	nop                      ; $97ba: ea
	rol $e3                  ; $97bb: 26 e3
	sbc $cecece              ; $97bd: ef ce ce ce
	cpx $04                  ; $97c1: e4 04
	beq $97c6                ; $97c3: f0 01
loc_97c5:
	eor $c9                  ; $97c5: 45 c9
	eor $45                  ; $97c7: 45 45
	eor $45                  ; $97c9: 45 45
	cmp #$45                 ; $97cb: c9 45
	cmp #$45                 ; $97cd: c9 45
	cmp #$45                 ; $97cf: c9 45
	cmp #$45                 ; $97d1: c9 45
	cmp #$45                 ; $97d3: c9 45
	eor $45                  ; $97d5: 45 45
	eor $c9                  ; $97d7: 45 c9
	eor $c9                  ; $97d9: 45 c9
	eor $ce                  ; $97db: 45 ce
	eor $ce                  ; $97dd: 45 ce
	eor $ce                  ; $97df: 45 ce
	eor $ce                  ; $97e1: 45 ce
	sbc ($70),y              ; $97e3: f1 70
	adc ($73),y              ; $97e5: 71 73
	adc ($70),y              ; $97e7: 71 70
	adc ($73),y              ; $97e9: 71 73
	adc ($9d),y              ; $97eb: 71 9d
	stz $9ea0,x              ; $97ed: 9e a0 9e
	sbc $07                  ; $97f0: e5 07
	php                      ; $97f2: 08
	asl                      ; $97f3: 0a
	php                      ; $97f4: 08
	inc $70                  ; $97f5: e6 70
	adc ($73),y              ; $97f7: 71 73
	adc ($e5),y              ; $97f9: 71 e5
	ora [$08]                ; $97fb: 07 08
	asl                      ; $97fd: 0a
	php                      ; $97fe: 08
	inc $9d                  ; $97ff: e6 9d
	stz $9ea0,x              ; $9801: 9e a0 9e
	sbc $07                  ; $9804: e5 07
	php                      ; $9806: 08
	asl                      ; $9807: 0a
	asl                      ; $9808: 0a
	inc $af                  ; $9809: e6 af
	sbc $34                  ; $980b: e5 34
	inc $9e                  ; $980d: e6 9e
	ldy #$71                 ; $980f: a0 71
	sbc $35                  ; $9811: e5 35
	rol $08                  ; $9813: 26 08
	inc $9e                  ; $9815: e6 9e
	eor ($8f)                ; $9817: 52 8f
	sta ($e5),y              ; $9819: 91 e5
	php                      ; $981b: 08
	eor ($35,s),y            ; $981c: 53 35
	rol $08                  ; $981e: 26 08
	bit $e6,x                ; $9820: 34 e6
loc_9822:
	stz $71a0,x              ; $9822: 9e a0 71
	sbc $35                  ; $9825: e5 35
	rol $08                  ; $9827: 26 08
sub_9829:
	inc $a0                  ; $9829: e6 a0
	eor $bb,x                ; $982b: 55 bb
	sta $08e591              ; $982d: 8f 91 e5 08
	eor ($35,s),y            ; $9831: 53 35
	rol $08                  ; $9833: 26 08
	inc $71                  ; $9835: e6 71
	cmp $c571                ; $9837: cd 71 c5
	dex                      ; $983a: ca
	adc ($cd),y              ; $983b: 71 cd
	adc ($c5),y              ; $983d: 71 c5
	dex                      ; $983f: ca
	eor ($cd,s),y            ; $9840: 53 cd
	eor ($ca,s),y            ; $9842: 53 ca
	sbc $35                  ; $9844: e5 35
	cmp $ca35                ; $9846: cd 35 ca
	adc ($28,s),y            ; $9849: 73 28
	adc ($55,s),y            ; $984b: 73 55
	asl                      ; $984d: 0a
	eor $34,x                ; $984e: 55 34
	inc $73                  ; $9850: e6 73
	ldy #$e5                 ; $9852: a0 e5
	and [$0a],y              ; $9854: 37 0a
	rol $cd                  ; $9856: 26 cd
	and [$e6],y              ; $9858: 37 e6
	ldy #$e5                 ; $985a: a0 e5
	and [$28],y              ; $985c: 37 28
	inc $73                  ; $985e: e6 73
	sbc $28                  ; $9860: e5 28
	ora [$e6]                ; $9862: 07 e6
	adc ($71,s),y            ; $9864: 73 71
	ldy #$e5                 ; $9866: a0 e5
	ora [$f0]                ; $9868: 07 f0
	ora $28f128              ; $986a: 0f 28 f1 28
	and [$28],y              ; $986e: 37 28
	asl                      ; $9870: 0a
	inc $a0                  ; $9871: e6 a0
	sta ($73),y              ; $9873: 91 73
	stz $e5                  ; $9875: 64 e5
	plp                      ; $9877: 28
	inc $91                  ; $9878: e6 91
	sbc $28                  ; $987a: e5 28
	asl                      ; $987c: 0a
	inc $a0                  ; $987d: e6 a0
	sta ($64),y              ; $987f: 91 64
	sta ($73),y              ; $9881: 91 73
	adc ($73,s),y            ; $9883: 73 73
	adc ($73,s),y            ; $9885: 73 73
	sbc $0a                  ; $9887: e5 0a
	plp                      ; $9889: 28
	and $e6,x                ; $988a: 35 e6
	adc ($a0,s),y            ; $988c: 73 a0
	sbc $37                  ; $988e: e5 37
	inc $a0                  ; $9890: e6 a0
	eor ($73,s),y            ; $9892: 53 73
	beq $989b                ; $9894: f0 05
loc_9896:
	ldx $7373,y              ; $9896: be 73 73
	adc ($73,s),y            ; $9899: 73 73
loc_989b:
	sbc $0a                  ; $989b: e5 0a
	plp                      ; $989d: 28
	and $e6,x                ; $989e: 35 e6
	adc ($a0,s),y            ; $98a0: 73 a0
	sbc $37                  ; $98a2: e5 37
	inc $a0                  ; $98a4: e6 a0
	eor ($73,s),y            ; $98a6: 53 73
	sbc ($be),y              ; $98a8: f1 be
	adc ($73,s),y            ; $98aa: 73 73
	adc ($73,s),y            ; $98ac: 73 73
	sbc $0a                  ; $98ae: e5 0a
	plp                      ; $98b0: 28
	and $e6b9bc              ; $98b1: 2f bc b9 e6
	eor ($fa)                ; $98b5: 52 fa
	cpx $97                  ; $98b7: e4 97
	cmp ($5a)                ; $98b9: d2 5a
	pei $80                  ; $98bb: d4 80
	nop                      ; $98bd: ea
	and #$e2                 ; $98be: 29 e2
sub_98c0:
	sbc $cecece              ; $98c0: ef ce ce ce
	cpx $05                  ; $98c4: e4 05
	rol $9baa,x              ; $98c6: 3e aa 9b
	ldx $3e,y                ; $98c9: b6 3e
	tax                      ; $98cb: aa
	bit #$50                 ; $98cc: 89 50
	rtl                      ; $98ce: 6b
	and $9b,s                ; $98cf: 23 9b
	ldy $b4,x                ; $98d1: b4 b4
	cmp ($6e)                ; $98d3: d2 6e
	nop                      ; $98d5: ea
	plp                      ; $98d6: 28
	cpx $04                  ; $98d7: e4 04
	bvs $994c                ; $98d9: 70 71
loc_98db:
	adc ($73,s),y            ; $98db: 73 73
	adc ($70,s),y            ; $98dd: 73 70
	adc ($73),y              ; $98df: 71 73
	adc ($73,s),y            ; $98e1: 73 73
	sta $a09e,x              ; $98e3: 9d 9e a0
	ldy #$a0                 ; $98e6: a0 a0
	sbc $07                  ; $98e8: e5 07
	ora [$08]                ; $98ea: 07 08
	inc $70                  ; $98ec: e6 70
	adc ($73),y              ; $98ee: 71 73
	adc ($73,s),y            ; $98f0: 73 73
	sbc $07                  ; $98f2: e5 07
	php                      ; $98f4: 08
	asl                      ; $98f5: 0a
	asl                      ; $98f6: 0a
	asl                      ; $98f7: 0a
	inc $9d                  ; $98f8: e6 9d
	stz $a0a0,x              ; $98fa: 9e a0 a0
	ldy #$e5                 ; $98fd: a0 e5
	ora [$07]                ; $98ff: 07 07
	php                      ; $9901: 08
	and $0826bc              ; $9902: 2f bc 26 08
	inc $9e                  ; $9906: e6 9e
	eor $52e5                ; $9908: 4d e5 52
	eor ($53)                ; $990b: 52 53
	and $0826bc              ; $990d: 2f bc 26 08
	inc $a0                  ; $9911: e6 a0
	eor $b8,x                ; $9913: 55 b8
	ldx $4de5,y              ; $9915: be e5 4d
	ldx $71e6,y              ; $9918: be e6 71
	cmp $c571                ; $991b: cd 71 c5
	dex                      ; $991e: ca
	adc ($cd),y              ; $991f: 71 cd
	adc ($c5),y              ; $9921: 71 c5
	dex                      ; $9923: ca
	eor ($cd,s),y            ; $9924: 53 cd
sub_9926:
	eor ($ca,s),y            ; $9926: 53 ca
	sbc $35                  ; $9928: e5 35
	cmp $ca35                ; $992a: cd 35 ca
	bvs $9981                ; $992d: 70 52
loc_992f:
	and ($0a),y              ; $992f: 31 0a
	rol $cd                  ; $9931: 26 cd
	bit $e6,x                ; $9933: 34 e6
	bvs $991c                ; $9935: 70 e5
loc_9937:
	tsb $e6                  ; $9937: 04 e6
	ldy #$e5                 ; $9939: a0 e5
	php                      ; $993b: 08
	cmp $b61e                ; $993c: cd 1e b6
	beq $9948                ; $993f: f0 07
loc_9941:
	plp                      ; $9941: 28
	sbc ($e6),y              ; $9942: f1 e6
	adc ($73,s),y            ; $9944: 73 73
	sbc $73                  ; $9946: e5 73
loc_9948:
	inc $73                  ; $9948: e6 73
	sbc $55                  ; $994a: e5 55
loc_994c:
	asl                      ; $994c: 0a
	plp                      ; $994d: 28
	beq $9955                ; $994e: f0 05
loc_9950:
	and $e6,x                ; $9950: 35 e6
	and [$37],y              ; $9952: 37 37
	and [$37],y              ; $9954: 37 37
	sbc $53                  ; $9956: e5 53
	inc $73                  ; $9958: e6 73
	adc ($73,s),y            ; $995a: 73 73
	sbc $73                  ; $995c: e5 73
	inc $73                  ; $995e: e6 73
	sbc $55                  ; $9960: e5 55
	asl                      ; $9962: 0a
	plp                      ; $9963: 28
	sbc ($35),y              ; $9964: f1 35
	inc $37                  ; $9966: e6 37
	and [$37],y              ; $9968: 37 37
	and [$e5],y              ; $996a: 37 e5
sub_996c:
	eor ($e6,s),y            ; $996c: 53 e6
	adc ($73),y              ; $996e: 71 73
	sbc $73                  ; $9970: e5 73
	inc $73                  ; $9972: e6 73
	sbc $55                  ; $9974: e5 55
	asl                      ; $9976: 0a
	plp                      ; $9977: 28
	and $e6b9bc              ; $9978: 2f bc b9 e6
sub_997c:
	eor ($fa)                ; $997c: 52 fa
	cmp $98,x                ; $997e: d5 98
	cmp ($c8)                ; $9980: d2 c8
	pei $80                  ; $9982: d4 80
	nop                      ; $9984: ea
	bit $e3                  ; $9985: 24 e3
	inc $e408                ; $9987: ee 08 e4
	tsb $74                  ; $998a: 04 74
sub_998c:
	sta ($74)                ; $998c: 92 74
	bvc $99e4                ; $998e: 50 54
loc_9990:
	mvn $54,$50              ; $9990: 54 54 50
	bvc $99e5                ; $9993: 50 50
loc_9995:
	bvc $99e7                ; $9995: 50 50
loc_9997:
	mvn $54,$54              ; $9997: 54 54 54
	bvc $99ec                ; $999a: 50 50
loc_999c:
	eor ($53,s),y            ; $999c: 53 53
	eor ($56,s),y            ; $999e: 53 56
	stz $92,x                ; $99a0: 74 92
	bvc $99f8                ; $99a2: 50 54
loc_99a4:
	mvn $54,$50              ; $99a4: 54 54 50
	bvc $99f9                ; $99a7: 50 50
loc_99a9:
	bvc $99fb                ; $99a9: 50 50
loc_99ab:
	mvn $54,$54              ; $99ab: 54 54 54
	bvc $9a00                ; $99ae: 50 50
loc_99b0:
	eor ($53,s),y            ; $99b0: 53 53
	eor $e4,x                ; $99b2: 55 e4
	tsb $ea                  ; $99b4: 04 ea
	jsr $b1b1                ; $99b6: 20 b1 b1
loc_99b9:
	nop                      ; $99b9: ea
	and ($b1,x)              ; $99ba: 21 b1
	lda $d2e3c0              ; $99bc: af c0 e3 d2
	sbc $f004e4,x            ; $99c0: ff e4 04 f0
	asl $ea                  ; $99c4: 06 ea
	jsr $eaad                ; $99c6: 20 ad ea
loc_99c9:
	and ($af,x)              ; $99c9: 21 af
	nop                      ; $99cb: ea
	jsr $afad                ; $99cc: 20 ad af
loc_99cf:
	nop                      ; $99cf: ea
	and ($ad,x)              ; $99d0: 21 ad
	sbc ($ad),y              ; $99d2: f1 ad
	lda $ad20ea              ; $99d4: af ea 20 ad
	lda $af21ea              ; $99d8: af ea 21 af
	lda $ea04f0              ; $99dc: af f0 04 ea
	jsr $eaad                ; $99e0: 20 ad ea
loc_99e3:
	and ($af,x)              ; $99e3: 21 af
loc_99e5:
	nop                      ; $99e5: ea
	jsr $afad                ; $99e6: 20 ad af
loc_99e9:
	nop                      ; $99e9: ea
	and ($ad,x)              ; $99ea: 21 ad
loc_99ec:
	sbc ($af),y              ; $99ec: f1 af
	beq $99f2                ; $99ee: f0 02
loc_99f0:
	nop                      ; $99f0: ea
	jsr $eaaf                ; $99f1: 20 af ea
loc_99f4:
	and ($af,x)              ; $99f4: 21 af
	sbc ($ea),y              ; $99f6: f1 ea
loc_99f8:
	jsr $eaac                ; $99f8: 20 ac ea
loc_99fb:
	and ($af,x)              ; $99fb: 21 af
	nop                      ; $99fd: ea
	jsr $afad                ; $99fe: 20 ad af
loc_9a01:
	nop                      ; $9a01: ea
	and ($ad,x)              ; $9a02: 21 ad
	nop                      ; $9a04: ea
	and $e5,s                ; $9a05: 23 e5
	adc $75,x                ; $9a07: 75 75
	adc $75,x                ; $9a09: 75 75
	eor [$57],y              ; $9a0b: 57 57
	eor $e6,x                ; $9a0d: 55 e6
	nop                      ; $9a0f: ea
	jsr $eaaf                ; $9a10: 20 af ea
loc_9a13:
	and ($af,x)              ; $9a13: 21 af
	lda $f0b1b1              ; $9a15: af b1 b1 f0
	tsb $ea                  ; $9a19: 04 ea
	jsr $eaad                ; $9a1b: 20 ad ea
loc_9a1e:
	and ($af,x)              ; $9a1e: 21 af
	nop                      ; $9a20: ea
	jsr $afad                ; $9a21: 20 ad af
loc_9a24:
	nop                      ; $9a24: ea
	and ($ad,x)              ; $9a25: 21 ad
	sbc ($f0),y              ; $9a27: f1 f0
	ora ($ea,x)              ; $9a29: 01 ea
	jsr $eaad                ; $9a2b: 20 ad ea
loc_9a2e:
	and ($af,x)              ; $9a2e: 21 af
	sbc ($af),y              ; $9a30: f1 af
	nop                      ; $9a32: ea
	and $91,s                ; $9a33: 23 91
	nop                      ; $9a35: ea
	jsr $eaaf                ; $9a36: 20 af ea
loc_9a39:
	and ($af,x)              ; $9a39: 21 af
	lda $af20ea              ; $9a3b: af ea 20 af
	nop                      ; $9a3f: ea
	and ($af,x)              ; $9a40: 21 af
	lda $ac20ea              ; $9a42: af ea 20 ac
	sbc $ea                  ; $9a46: e5 ea
	and $55,s                ; $9a48: 23 55
	lsr $0a                  ; $9a4a: 46 0a
	inc $ea                  ; $9a4c: e6 ea
	and ($af,x)              ; $9a4e: 21 af
	nop                      ; $9a50: ea
	jsr $cbaf                ; $9a51: 20 af cb
loc_9a54:
	beq $9a57                ; $9a54: f0 01
loc_9a56:
	nop                      ; $9a56: ea
loc_9a57:
	jsr $eaad                ; $9a57: 20 ad ea
loc_9a5a:
	and ($af,x)              ; $9a5a: 21 af
	sbc ($ea),y              ; $9a5c: f1 ea
	jsr $eaac                ; $9a5e: 20 ac ea
loc_9a61:
	and $e5,s                ; $9a61: 23 e5
	eor [$57],y              ; $9a63: 57 57
	eor [$cf],y              ; $9a65: 57 cf
	inc $ea                  ; $9a67: e6 ea
	jsr $eaaf                ; $9a69: 20 af ea
loc_9a6c:
	and ($af,x)              ; $9a6c: 21 af
	nop                      ; $9a6e: ea
	jsr $eaaf                ; $9a6f: 20 af ea
loc_9a72:
	and ($b1,x)              ; $9a72: 21 b1
	nop                      ; $9a74: ea
	and $93,s                ; $9a75: 23 93
	lda $ea01f0              ; $9a77: af f0 01 ea
	jsr $eaad                ; $9a7b: 20 ad ea
loc_9a7e:
	and ($af,x)              ; $9a7e: 21 af
	nop                      ; $9a80: ea
	jsr $afad                ; $9a81: 20 ad af
loc_9a84:
	nop                      ; $9a84: ea
	and ($ad,x)              ; $9a85: 21 ad
	sbc ($f0),y              ; $9a87: f1 f0
	cop #$ea                 ; $9a89: 02 ea
	and ($af,x)              ; $9a8b: 21 af
	nop                      ; $9a8d: ea
	jsr $eaaf                ; $9a8e: 20 af ea
loc_9a91:
	and ($af,x)              ; $9a91: 21 af
	nop                      ; $9a93: ea
	jsr $f1af                ; $9a94: 20 af f1
loc_9a97:
	nop                      ; $9a97: ea
	and ($af,x)              ; $9a98: 21 af
	nop                      ; $9a9a: ea
	jsr $b1b1                ; $9a9b: 20 b1 b1
loc_9a9e:
	nop                      ; $9a9e: ea
	and ($ad,x)              ; $9a9f: 21 ad
	nop                      ; $9aa1: ea
	jsr $afaf                ; $9aa2: 20 af af
loc_9aa5:
	nop                      ; $9aa5: ea
	and ($ad,x)              ; $9aa6: 21 ad
	nop                      ; $9aa8: ea
	jsr $afaf                ; $9aa9: 20 af af
loc_9aac:
	nop                      ; $9aac: ea
	and ($af,x)              ; $9aad: 21 af
	nop                      ; $9aaf: ea
	jsr $afad                ; $9ab0: 20 ad af
loc_9ab3:
	nop                      ; $9ab3: ea
	and ($af,x)              ; $9ab4: 21 af
	nop                      ; $9ab6: ea
	jsr $eaaf                ; $9ab7: 20 af ea
loc_9aba:
	and ($af,x)              ; $9aba: 21 af
	nop                      ; $9abc: ea
	jsr $adad                ; $9abd: 20 ad ad
loc_9ac0:
	lda $ad21ea              ; $9ac0: af ea 21 ad
	nop                      ; $9ac4: ea
	jsr $afaf                ; $9ac5: 20 af af
loc_9ac8:
	nop                      ; $9ac8: ea
	and ($af,x)              ; $9ac9: 21 af
	nop                      ; $9acb: ea
	jsr $afad                ; $9acc: 20 ad af
loc_9acf:
	nop                      ; $9acf: ea
	and ($ad,x)              ; $9ad0: 21 ad
	lda $ad20ea              ; $9ad2: af ea 20 ad
	lda $eaaf                ; $9ad6: ad af ea
	and ($ad,x)              ; $9ad9: 21 ad
	nop                      ; $9adb: ea
	jsr $afaf                ; $9adc: 20 af af
loc_9adf:
	nop                      ; $9adf: ea
	and ($af,x)              ; $9ae0: 21 af
	nop                      ; $9ae2: ea
	jsr $afad                ; $9ae3: 20 ad af
loc_9ae6:
	nop                      ; $9ae6: ea
	and ($af,x)              ; $9ae7: 21 af
	nop                      ; $9ae9: ea
	jsr $eaaf                ; $9aea: 20 af ea
loc_9aed:
	and ($af,x)              ; $9aed: 21 af
	nop                      ; $9aef: ea
	jsr $adad                ; $9af0: 20 ad ad
loc_9af3:
	lda $ad21ea              ; $9af3: af ea 21 ad
	nop                      ; $9af7: ea
	jsr $afaf                ; $9af8: 20 af af
loc_9afb:
	nop                      ; $9afb: ea
	and ($af,x)              ; $9afc: 21 af
	nop                      ; $9afe: ea
	jsr $afad                ; $9aff: 20 ad af
loc_9b02:
	nop                      ; $9b02: ea
	and ($ad,x)              ; $9b03: 21 ad
	lda $ad20ea              ; $9b05: af ea 20 ad
	lda $eaaf                ; $9b09: ad af ea
	and ($af,x)              ; $9b0c: 21 af
	nop                      ; $9b0e: ea
	jsr $b1af                ; $9b0f: 20 af b1
loc_9b12:
	lda ($b1),y              ; $9b12: b1 b1
	lda ($ea),y              ; $9b14: b1 ea
	and ($af,x)              ; $9b16: 21 af
	nop                      ; $9b18: ea
	jsr $afad                ; $9b19: 20 ad af
loc_9b1c:
	beq $9b1f                ; $9b1c: f0 01
loc_9b1e:
	nop                      ; $9b1e: ea
loc_9b1f:
	and ($af,x)              ; $9b1f: 21 af
	nop                      ; $9b21: ea
	jsr $b1b1                ; $9b22: 20 b1 b1
loc_9b25:
	nop                      ; $9b25: ea
	and ($af,x)              ; $9b26: 21 af
	nop                      ; $9b28: ea
	jsr $adad                ; $9b29: 20 ad ad
loc_9b2c:
	lda $af21ea              ; $9b2c: af ea 21 af
	nop                      ; $9b30: ea
	jsr $b1af                ; $9b31: 20 af b1
loc_9b34:
	lda ($b1),y              ; $9b34: b1 b1
	lda ($ea),y              ; $9b36: b1 ea
	and ($af,x)              ; $9b38: 21 af
	nop                      ; $9b3a: ea
	jsr $afad                ; $9b3b: 20 ad af
loc_9b3e:
	sbc ($ea),y              ; $9b3e: f1 ea
	and ($af,x)              ; $9b40: 21 af
	nop                      ; $9b42: ea
	jsr $b1b1                ; $9b43: 20 b1 b1
loc_9b46:
	nop                      ; $9b46: ea
	and ($af,x)              ; $9b47: 21 af
	nop                      ; $9b49: ea
	jsr $adad                ; $9b4a: 20 ad ad
loc_9b4d:
	lda $af21ea              ; $9b4d: af ea 21 af
	nop                      ; $9b51: ea
	jsr $b1af                ; $9b52: 20 af b1
loc_9b55:
	lda ($b1),y              ; $9b55: b1 b1
	lda ($ea),y              ; $9b57: b1 ea
	and ($af,x)              ; $9b59: 21 af
	nop                      ; $9b5b: ea
	jsr $adac                ; $9b5c: 20 ac ad
loc_9b5f:
	lda $eaad                ; $9b5f: ad ad ea
	and ($af,x)              ; $9b62: 21 af
	sbc $ea                  ; $9b64: e5 ea
sub_9b66:
	and $57,s                ; $9b66: 23 57
	pha                      ; $9b68: 48
	plp                      ; $9b69: 28
	pha                      ; $9b6a: 48
	rol                      ; $9b6b: 2a
	lsr $e6                  ; $9b6c: 46 e6
	nop                      ; $9b6e: ea
	jsr $faac                ; $9b6f: 20 ac fa
loc_9b72:
	lda $029599,x            ; $9b72: bf 99 95 02
	dey                      ; $9b76: 88
	txy                      ; $9b77: 9b
	jml [$2f9b]              ; $9b78: dc 9b 2f
	stz sub_9c68             ; $9b7b: 9c 68 9c
	ldx $9c,y                ; $9b7e: b6 9c
	sbc ($9c),y              ; $9b80: f1 9c
	lsr $ca9d                ; $9b82: 4e 9d ca
	sta $9e0b,x              ; $9b85: 9d 0b 9e
	sed                      ; $9b88: f8
	inc $f3                  ; $9b89: e6 f3
	sta ($f7),y              ; $9b8b: 91 f7
	bit $f500,x              ; $9b8d: 3c 00 f5
	phk                      ; $9b90: 4b
	cmp ($a0)                ; $9b91: d2 a0
	pei $80                  ; $9b93: d4 80
	nop                      ; $9b95: ea
	and [$e4]                ; $9b96: 27 e4
sub_9b98:
	ora $e2                  ; $9b98: 05 e2
	asl $cc                  ; $9b9a: 06 cc
	phd                      ; $9b9c: 0b
	dec $ce0b                ; $9b9d: ce 0b ce
	phd                      ; $9ba0: 0b
	dec $cc45                ; $9ba1: ce 45 cc
	ora #$cc                 ; $9ba4: 09 cc
	eor $cc                  ; $9ba6: 45 cc
	adc ($cd)                ; $9ba8: 72 cd
	dec $0be5                ; $9baa: ce e5 0b
	bne $9bb1                ; $9bad: d0 02
loc_9baf:
	iny                      ; $9baf: c8
	inc $46                  ; $9bb0: e6 46
	cmp $cd46                ; $9bb2: cd 46 cd
	lsr $cd                  ; $9bb5: 46 cd
	plp                      ; $9bb7: 28
	iny                      ; $9bb8: c8
	cmp $cd55                ; $9bb9: cd 55 cd
	eor $cd,x                ; $9bbc: 55 cd
	eor $cd,x                ; $9bbe: 55 cd
	lsr $c8                  ; $9bc0: 46 c8
	cmp $ca28                ; $9bc2: cd 28 ca
	lsr $ca                  ; $9bc5: 46 ca
	plp                      ; $9bc7: 28
	dex                      ; $9bc8: ca
	plp                      ; $9bc9: 28
	dex                      ; $9bca: ca
	ora $cb                  ; $9bcb: 05 cb
	lsr $cd                  ; $9bcd: 46 cd
	wai                      ; $9bcf: cb
	lsr $cd                  ; $9bd0: 46 cd
	plp                      ; $9bd2: 28
	dex                      ; $9bd3: ca
	asl                      ; $9bd4: 0a
	dex                      ; $9bd5: ca
	plp                      ; $9bd6: 28
	dex                      ; $9bd7: ca
	sbc $fa                  ; $9bd8: e5 fa
	bcs $9b77                ; $9bda: b0 9b
loc_9bdc:
	cmp ($64)                ; $9bdc: d2 64
	pei $a0                  ; $9bde: d4 a0
	nop                      ; $9be0: ea
	and [$e4]                ; $9be1: 27 e4
	tsb $e2                  ; $9be3: 04 e2
	adc $ce74cc              ; $9be5: 6f cc 74 ce
	stz $ce,x                ; $9be9: 74 ce
	stz $ce,x                ; $9beb: 74 ce
	sbc $09                  ; $9bed: e5 09
	cpy $72e6                ; $9bef: cc e6 72
	cpy $09e5                ; $9bf2: cc e5 09
	cpy $cd45                ; $9bf5: cc 45 cd
	dec $d074                ; $9bf8: ce 74 d0
	rtl                      ; $9bfb: 6b
	iny                      ; $9bfc: c8
	asl                      ; $9bfd: 0a
	cmp $cd0a                ; $9bfe: cd 0a cd
	asl                      ; $9c01: 0a
	cmp $afe6                ; $9c02: cd e6 af
	iny                      ; $9c05: c8
	cmp $28e5                ; $9c06: cd e5 28
	cmp $cd28                ; $9c09: cd 28 cd
	plp                      ; $9c0c: 28
	cmp $c80a                ; $9c0d: cd 0a c8
	cmp $afe6                ; $9c10: cd e6 af
	dex                      ; $9c13: ca
	sbc $0a                  ; $9c14: e5 0a
	dex                      ; $9c16: ca
	inc $a0                  ; $9c17: e6 a0
	dex                      ; $9c19: ca
	ldy #$ca                 ; $9c1a: a0 ca
	sty $e5cb                ; $9c1c: 8c cb e5
	asl                      ; $9c1f: 0a
	cmp $0acb                ; $9c20: cd cb 0a
	cmp $a0e6                ; $9c23: cd e6 a0
	dex                      ; $9c26: ca
	sta ($ca),y              ; $9c27: 91 ca
	ldy #$ca                 ; $9c29: a0 ca
	sbc $fa                  ; $9c2b: e5 fa
	sbc $d29b,x              ; $9c2d: fd 9b d2
	sbc $ea80d4,x            ; $9c30: ff d4 80 ea
	jsr $05e4                ; $9c34: 20 e4 05
loc_9c37:
	ora $09                  ; $9c37: 05 09
	ora #$09                 ; $9c39: 09 09
	asl $06                  ; $9c3b: 06 06
	asl $07                  ; $9c3d: 06 07
	asl                      ; $9c3f: 0a
	cop #$ea                 ; $9c40: 02 ea
	and ($23,x)              ; $9c42: 21 23
	nop                      ; $9c44: ea
	jsr $ea05                ; $9c45: 20 05 ea
loc_9c48:
	and ($26,x)              ; $9c48: 21 26
	wai                      ; $9c4a: cb
	nop                      ; $9c4b: ea
	jsr $0808                ; $9c4c: 20 08 08
loc_9c4f:
	nop                      ; $9c4f: ea
	and ($26,x)              ; $9c50: 21 26
	nop                      ; $9c52: ea
	jsr $cb08                ; $9c53: 20 08 cb
loc_9c56:
	php                      ; $9c56: 08
	nop                      ; $9c57: ea
	and ($26,x)              ; $9c58: 21 26
	nop                      ; $9c5a: ea
	jsr $0808                ; $9c5b: 20 08 08
loc_9c5e:
	php                      ; $9c5e: 08
	nop                      ; $9c5f: ea
	and ($26,x)              ; $9c60: 21 26
	nop                      ; $9c62: ea
	jsr $fa08                ; $9c63: 20 08 fa
loc_9c66:
	mvp $9c,$d2              ; $9c66: 44 9c d2
	inc $d4                  ; $9c69: e6 d4
	bra $9c57                ; $9c6b: 80 ea
	rol $e4                  ; $9c6d: 26 e4
	ora $eb                  ; $9c6f: 05 eb
	ora $ed05ec              ; $9c71: 0f ec 05 ed
	ora ($ee,x)              ; $9c75: 01 ee
	php                      ; $9c77: 08
	asl $cc                  ; $9c78: 06 cc
	phd                      ; $9c7a: 0b
	dec $ce0b                ; $9c7b: ce 0b ce
	phd                      ; $9c7e: 0b
	dec $cc45                ; $9c7f: ce 45 cc
	ora #$cc                 ; $9c82: 09 cc
	eor $cc                  ; $9c84: 45 cc
	adc ($cd)                ; $9c86: 72 cd
	dec $0be5                ; $9c88: ce e5 0b
	bne $9c8f                ; $9c8b: d0 02
loc_9c8d:
	iny                      ; $9c8d: c8
	inc $f0                  ; $9c8e: e6 f0
	ora $0a                  ; $9c90: 05 0a
	cmp $cd0a                ; $9c92: cd 0a cd
	sbc ($0a),y              ; $9c95: f1 0a
sub_9c97:
	cmp $cd0a                ; $9c97: cd 0a cd
	asl                      ; $9c9a: 0a
	cmp $0ae5                ; $9c9b: cd e5 0a
	cmp $e6e6                ; $9c9e: cd e6 e6
	beq $9ca8                ; $9ca1: f0 05
loc_9ca3:
	ldy #$cd                 ; $9ca3: a0 cd
	ldy #$cd                 ; $9ca5: a0 cd
	sbc ($a0),y              ; $9ca7: f1 a0
	cmp $a0e5                ; $9ca9: cd e5 a0
	cmp $afe6                ; $9cac: cd e6 af
	cmp $afe5                ; $9caf: cd e5 af
	cmp $8ffa                ; $9cb2: cd fa 8f
	stz $64d2                ; $9cb5: 9c d2 64
	pei $c0                  ; $9cb8: d4 c0
	nop                      ; $9cba: ea
	and [$e4]                ; $9cbb: 27 e4
	tsb $e2                  ; $9cbd: 04 e2
	asl $cc                  ; $9cbf: 06 cc
	phd                      ; $9cc1: 0b
	bne $9ccf                ; $9cc2: d0 0b
loc_9cc4:
	cmp $ce0b                ; $9cc4: cd 0b ce
	ora #$cc                 ; $9cc7: 09 cc
	ora #$cc                 ; $9cc9: 09 cc
	ora #$cc                 ; $9ccb: 09 cc
sub_9ccd:
	ora #$cd                 ; $9ccd: 09 cd
loc_9ccf:
	dec $d00b                ; $9ccf: ce 0b d0
	cop #$c8                 ; $9cd2: 02 c8
	cmp ($19)                ; $9cd4: d2 19
	pei $40                  ; $9cd6: d4 40
	nop                      ; $9cd8: ea
	tsb $e4                  ; $9cd9: 04 e4
	tsb $eb                  ; $9cdb: 04 eb
	php                      ; $9cdd: 08
	cpx $ed07                ; $9cde: ec 07 ed
	ora [$ee]                ; $9ce1: 07 ee
	php                      ; $9ce3: 08
	cmp [$60],y              ; $9ce4: d7 60
	pld                      ; $9ce6: 2b
	cpy #$69                 ; $9ce7: c0 69
	lda $8c,x                ; $9ce9: b5 8c
	phk                      ; $9ceb: 4b
	lda $23,x                ; $9cec: b5 23
	plx                      ; $9cee: fa
	inx                      ; $9cef: e8
	stz $a0d2                ; $9cf0: 9c d2 a0
	pei $90                  ; $9cf3: d4 90
	nop                      ; $9cf5: ea
	jsl $0505e4              ; $9cf6: 22 e4 05 05
loc_9cfa:
	ora $05                  ; $9cfa: 05 05
	ora $07                  ; $9cfc: 05 07
	asl                      ; $9cfe: 0a
	cmp ($6e)                ; $9cff: d2 6e
	pei $00                  ; $9d01: d4 00
	inc $eb                  ; $9d03: e6 eb
	ora $ed07ec              ; $9d05: 0f ec 07 ed
	ora [$ee]                ; $9d09: 07 ee
	trb $6b                  ; $9d0b: 14 6b
	cmp ($a0)                ; $9d0d: d2 a0
	pei $90                  ; $9d0f: d4 90
	sbc $ef                  ; $9d11: e5 ef
	ora $08                  ; $9d13: 05 08
	php                      ; $9d15: 08
	php                      ; $9d16: 08
	asl                      ; $9d17: 0a
	asl                      ; $9d18: 0a
	php                      ; $9d19: 08
	php                      ; $9d1a: 08
	php                      ; $9d1b: 08
	php                      ; $9d1c: 08
	php                      ; $9d1d: 08
	asl                      ; $9d1e: 0a
	asl                      ; $9d1f: 0a
	php                      ; $9d20: 08
	php                      ; $9d21: 08
	php                      ; $9d22: 08
	php                      ; $9d23: 08
	php                      ; $9d24: 08
	xba                      ; $9d25: eb
	asl $07ec                ; $9d26: 0e ec 07
	sbc $ee06                ; $9d29: ed 06 ee
	asl $ef08                ; $9d2c: 0e 08 ef
	php                      ; $9d2f: 08
	php                      ; $9d30: 08
	php                      ; $9d31: 08
	asl                      ; $9d32: 0a
	asl                      ; $9d33: 0a
	php                      ; $9d34: 08
	php                      ; $9d35: 08
	php                      ; $9d36: 08
	php                      ; $9d37: 08
	php                      ; $9d38: 08
	asl                      ; $9d39: 0a
	asl                      ; $9d3a: 0a
	php                      ; $9d3b: 08
	php                      ; $9d3c: 08
	beq $9d40                ; $9d3d: f0 01
loc_9d3f:
	php                      ; $9d3f: 08
loc_9d40:
	xba                      ; $9d40: eb
	asl $07ec                ; $9d41: 0e ec 07
	sbc $ee06                ; $9d44: ed 06 ee
	asl $ef08                ; $9d47: 0e 08 ef
	sbc ($fa),y              ; $9d4a: f1 fa
	trb $9d                  ; $9d4c: 14 9d
	cmp ($32)                ; $9d4e: d2 32
	pei $ff                  ; $9d50: d4 ff
	nop                      ; $9d52: ea
	and $e4,s                ; $9d53: 23 e4
	asl $c5                  ; $9d55: 06 c5
	wdm #$d2                 ; $9d57: 42 d2
	stz $d4                  ; $9d59: 64 d4
	bra $9d63                ; $9d5b: 80 06
	cmp ($32)                ; $9d5d: d2 32
	pei $00                  ; $9d5f: d4 00
	inc $6f                  ; $9d61: e6 6f
loc_9d63:
	iny                      ; $9d63: c8
	cmp ($6e)                ; $9d64: d2 6e
	pei $ff                  ; $9d66: d4 ff
	nop                      ; $9d68: ea
	jsl $eb04e4              ; $9d69: 22 e4 04 eb
loc_9d6d:
	ora $ed07ec              ; $9d6d: 0f ec 07 ed
	ora [$ee]                ; $9d71: 07 ee
	trb $7a                  ; $9d73: 14 7a
	iny                      ; $9d75: c8
	cmp ($73)                ; $9d76: d2 73
	pei $70                  ; $9d78: d4 70
	nop                      ; $9d7a: ea
	ora ($e4,x)              ; $9d7b: 01 e4
	ora $e2                  ; $9d7d: 05 e2
	xba                      ; $9d7f: eb
	ora $ed06ec              ; $9d80: 0f ec 06 ed
	ora $ee,s                ; $9d84: 03 ee
	trb $46                  ; $9d86: 14 46
	cmp $cd46                ; $9d88: cd 46 cd
	lsr $cd                  ; $9d8b: 46 cd
	plp                      ; $9d8d: 28
	cmp $cd28                ; $9d8e: cd 28 cd
	plp                      ; $9d91: 28
	cmp $cd55                ; $9d92: cd 55 cd
	eor $cd,x                ; $9d95: 55 cd
	eor $cd,x                ; $9d97: 55 cd
	lsr $cd                  ; $9d99: 46 cd
	lsr $cd                  ; $9d9b: 46 cd
	lsr $cd                  ; $9d9d: 46 cd
	plp                      ; $9d9f: 28
	cmp $cd28                ; $9da0: cd 28 cd
	lsr $cd                  ; $9da3: 46 cd
	lsr $cd                  ; $9da5: 46 cd
	plp                      ; $9da7: 28
	cmp $cd28                ; $9da8: cd 28 cd
	plp                      ; $9dab: 28
	cmp $cd28                ; $9dac: cd 28 cd
	asl                      ; $9daf: 0a
	cmp $cd0a                ; $9db0: cd 0a cd
	asl                      ; $9db3: 0a
	cmp $cd46                ; $9db4: cd 46 cd
	lsr $cd                  ; $9db7: 46 cd
	lsr $cd                  ; $9db9: 46 cd
	plp                      ; $9dbb: 28
	cmp $cd28                ; $9dbc: cd 28 cd
	asl                      ; $9dbf: 0a
	cmp $cd0a                ; $9dc0: cd 0a cd
	plp                      ; $9dc3: 28
	cmp $cd28                ; $9dc4: cd 28 cd
	plx                      ; $9dc7: fa
	sta [$9d]                ; $9dc8: 87 9d
	cmp ($64)                ; $9dca: d2 64
	pei $40                  ; $9dcc: d4 40
	nop                      ; $9dce: ea
	and [$e4]                ; $9dcf: 27 e4
	tsb $e2                  ; $9dd1: 04 e2
	wdm #$cc                 ; $9dd3: 42 cc
	eor [$d0]                ; $9dd5: 47 d0
	eor [$cd]                ; $9dd7: 47 cd
	eor [$ce]                ; $9dd9: 47 ce
	adc ($cc)                ; $9ddb: 72 cc
	eor $cc                  ; $9ddd: 45 cc
	adc ($cc)                ; $9ddf: 72 cc
	sbc $09                  ; $9de1: e5 09
	cmp $47ce                ; $9de3: cd ce 47
	bne $9e26                ; $9de6: d0 3e
loc_9de8:
	iny                      ; $9de8: c8
	cmp ($73)                ; $9de9: d2 73
	pei $60                  ; $9deb: d4 60
	nop                      ; $9ded: ea
	ora ($e4,x)              ; $9dee: 01 e4
	ora $eb                  ; $9df0: 05 eb
	ora $ed06ec              ; $9df2: 0f ec 06 ed
	ora $ee,s                ; $9df6: 03 ee
	trb $e6                  ; $9df8: 14 e6
	beq $9e03                ; $9dfa: f0 07
loc_9dfc:
	adc ($cd,s),y            ; $9dfc: 73 cd
	adc ($cd,s),y            ; $9dfe: 73 cd
	sbc ($f0),y              ; $9e00: f1 f0
	ora [$55]                ; $9e02: 07 55
	cmp $cd55                ; $9e04: cd 55 cd
	sbc ($fa),y              ; $9e07: f1 fa
	plx                      ; $9e09: fa
	sta $017b,x              ; $9e0a: 9d 7b 01

; === Block $9472-$947a (Code) ===
loc_9472:
	bne $9465                ; $9472: d0 f1
loc_9474:
	beq $947b                ; $9474: f0 05
loc_9476:
	lsr $cd                  ; $9476: 46 cd
	sbc ($d2),y              ; $9478: f1 d2

; === Block $947b-$947d (Code) ===
loc_947b:
	pei $80                  ; $947b: d4 80

; === Block $953a-$954a (Code) ===
sub_953a:
	and [$73],y              ; $953a: 37 73
	inc $a0                  ; $953c: e6 a0
	sbc $37                  ; $953e: e5 37
	eor $73,x                ; $9540: 55 73
	and [$73],y              ; $9542: 37 73
	ldy #$55                 ; $9544: a0 55
	inc $91                  ; $9546: e6 91
	sbc $0a                  ; $9548: e5 0a

; === Block $955d-$955f (Code) ===
loc_955d:
	sbc $0a                  ; $955d: e5 0a

; === Block $95d8-$95dc (Code) ===
sub_95d8:
	sbc ($b9),y              ; $95d8: f1 b9
	sbc $28                  ; $95da: e5 28

; === Block $95e6-$95e9 (Code) ===
loc_95e6:
	stz $28e5,x              ; $95e6: 9e e5 28

; === Block $95fd-$9600 (Code) ===
loc_95fd:
	inc $ce11                ; $95fd: ee 11 ce

; === Block $965b-$965c (Code) ===
loc_965b:
	php                      ; $965b: 08

; === Block $9681-$9683 (Code) ===
sub_9681:
	and $98                  ; $9681: 25 98

; === Block $977f-$9783 (Code) ===
loc_977f:
	sbc ($be),y              ; $977f: f1 be
	inc $73                  ; $9781: e6 73

; === Block $97c6-$97df (Code) ===
loc_97c6:
	cmp #$45                 ; $97c6: c9 45
	eor $45                  ; $97c8: 45 45
	eor $c9                  ; $97ca: 45 c9
	eor $c9                  ; $97cc: 45 c9
	eor $c9                  ; $97ce: 45 c9
	eor $c9                  ; $97d0: 45 c9
	eor $c9                  ; $97d2: 45 c9
	eor $45                  ; $97d4: 45 45
	eor $45                  ; $97d6: 45 45
	cmp #$45                 ; $97d8: c9 45
	cmp #$45                 ; $97da: c9 45
	dec $ce45                ; $97dc: ce 45 ce

; === Block $97fa-$97fd (Code) ===
sub_97fa:
	sbc $07                  ; $97fa: e5 07
	php                      ; $97fc: 08

; === Block $98b3-$98b7 (Code) ===
sub_98b3:
	lda $52e6,y              ; $98b3: b9 e6 52
	plx                      ; $98b6: fa

; === Block $98e2-$98ec (Code) ===
sub_98e2:
	adc ($9d,s),y            ; $98e2: 73 9d
	stz $a0a0,x              ; $98e4: 9e a0 a0
	ldy #$e5                 ; $98e7: a0 e5
	ora [$07]                ; $98e9: 07 07
	php                      ; $98eb: 08

; === Block $9904-$9906 (Code) ===
sub_9904:
	rol $08                  ; $9904: 26 08

; === Block $991c-$991e (Code) ===
loc_991c:
	adc ($c5),y              ; $991c: 71 c5

; === Block $9955-$9963 (Code) ===
loc_9955:
	and [$e5],y              ; $9955: 37 e5
	eor ($e6,s),y            ; $9957: 53 e6
	adc ($73,s),y            ; $9959: 73 73
	adc ($e5,s),y            ; $995b: 73 e5
	adc ($e6,s),y            ; $995d: 73 e6
	adc ($e5,s),y            ; $995f: 73 e5
	eor $0a,x                ; $9961: 55 0a

; === Block $9981-$9982 (Code) ===
loc_9981:
	iny                      ; $9981: c8

; === Block $99e4-$99ec (Code) ===
loc_99e4:
	lda $ad20ea              ; $99e4: af ea 20 ad
	lda $ad21ea              ; $99e8: af ea 21 ad

; === Block $99e7-$99ea (Code) ===
loc_99e7:
	lda $eaaf                ; $99e7: ad af ea

; === Block $99f2-$99f6 (Code) ===
loc_99f2:
	lda $af21ea              ; $99f2: af ea 21 af

; === Block $99f9-$9a04 (Code) ===
loc_99f9:
	ldy $21ea                ; $99f9: ac ea 21
	lda $ad20ea              ; $99fc: af ea 20 ad
loc_9a00:
	lda $ad21ea              ; $9a00: af ea 21 ad

; === Block $9a7d-$9a7e (Code) ===
sub_9a7d:
	nop                      ; $9a7d: ea

; === Block $9b01-$9b05 (Code) ===
sub_9b01:
	lda $ad21ea              ; $9b01: af ea 21 ad

; === Block $9b2e-$9b30 (Code) ===
sub_9b2e:
	and ($af,x)              ; $9b2e: 21 af

; === Block $9b7f-$9b82 (Code) ===
sub_9b7f:
	stz $9cf1                ; $9b7f: 9c f1 9c

; === Block $9bb1-$9bb5 (Code) ===
loc_9bb1:
	lsr $cd                  ; $9bb1: 46 cd
	lsr $cd                  ; $9bb3: 46 cd

; === Block $9bc6-$9bc7 (Code) ===
sub_9bc6:
	dex                      ; $9bc6: ca

; === Block $9bf1-$9bf5 (Code) ===
sub_9bf1:
	adc ($cc)                ; $9bf1: 72 cc
	sbc $09                  ; $9bf3: e5 09

; === Block $9c68-$9c6d (Code) ===
sub_9c68:
	cmp ($e6)                ; $9c68: d2 e6
	pei $80                  ; $9c6a: d4 80
	nop                      ; $9c6c: ea

; === Block $9c8f-$9c92 (Code) ===
loc_9c8f:
	beq $9c96                ; $9c8f: f0 05
loc_9c91:
	asl                      ; $9c91: 0a

; === Block $9c96-$9c97 (Code) ===
loc_9c96:
	asl                      ; $9c96: 0a

; === Block $9ca8-$9cac (Code) ===
loc_9ca8:
	ldy #$cd                 ; $9ca8: a0 cd
	sbc $a0                  ; $9caa: e5 a0

; === Block $9e03-$9e07 (Code) ===
loc_9e03:
	eor $cd,x                ; $9e03: 55 cd
	eor $cd,x                ; $9e05: 55 cd

; === Block $a2a6-$a2b5 (Code) ===
sub_a2a6:
	ldx $41                  ; $a2a6: a6 41
	lda [$84]                ; $a2a8: a7 84
	lda [$0c]                ; $a2aa: a7 0c
	tay                      ; $a2ac: a8
	eor $f0f8a8              ; $a2ad: 4f a8 f8 f0
	sbc ($5a,s),y            ; $a2b1: f3 5a
	sbc [$50],y              ; $a2b3: f7 50
	brk #$f5                 ; $a2b5: 00 f5

; === Block $a34b-$a66b (Code) ===
sub_a34b:
	cmp ($c8)                ; $a34b: d2 c8
	nop                      ; $a34d: ea
	jsr $d20a                ; $a34e: 20 0a d2
loc_a351:
	iny                      ; $a351: c8
	nop                      ; $a352: ea
	jsr $d20a                ; $a353: 20 0a d2
loc_a356:
	trb $ea                  ; $a356: 14 ea
	jsl $0806ec              ; $a358: 22 ec 06 08
loc_a35c:
	sbc $eaffd2              ; $a35c: ef d2 ff ea
	and ($ed,x)              ; $a360: 21 ed
	ora [$ee]                ; $a362: 07 ee
	ora ($08)                ; $a364: 12 08
	sbc $ea14d2              ; $a366: ef d2 14 ea
	jsl $0806ec              ; $a36a: 22 ec 06 08
loc_a36e:
	sbc $ea78d2              ; $a36e: ef d2 78 ea
	jsl $14d208              ; $a372: 22 08 d2 14
loc_a376:
	nop                      ; $a376: ea
	jsl $0806ec              ; $a377: 22 ec 06 08
loc_a37b:
	sbc $ea78d2              ; $a37b: ef d2 78 ea
	jsl $c8d208              ; $a37f: 22 08 d2 c8
loc_a383:
	nop                      ; $a383: ea
	jsr $d208                ; $a384: 20 08 d2
loc_a387:
	iny                      ; $a387: c8
	nop                      ; $a388: ea
	jsr $d20a                ; $a389: 20 0a d2
loc_a38c:
	iny                      ; $a38c: c8
	nop                      ; $a38d: ea
	jsr $d20a                ; $a38e: 20 0a d2
loc_a391:
	trb $ea                  ; $a391: 14 ea
	jsl $0806ec              ; $a393: 22 ec 06 08
loc_a397:
	sbc $eaffd2              ; $a397: ef d2 ff ea
	and ($ed,x)              ; $a39b: 21 ed
	ora [$ee]                ; $a39d: 07 ee
	ora ($08)                ; $a39f: 12 08
	sbc $eaffd2              ; $a3a1: ef d2 ff ea
	and ($ed,x)              ; $a3a5: 21 ed
	ora [$ee]                ; $a3a7: 07 ee
	ora ($0a)                ; $a3a9: 12 0a
	sbc $eaffd2              ; $a3ab: ef d2 ff ea
	and ($ed,x)              ; $a3af: 21 ed
	ora [$ee]                ; $a3b1: 07 ee
	ora ($0a)                ; $a3b3: 12 0a
	sbc $eac8d2              ; $a3b5: ef d2 c8 ea
	jsr $d208                ; $a3b9: 20 08 d2
loc_a3bc:
	trb $ea                  ; $a3bc: 14 ea
	jsl $0806ec              ; $a3be: 22 ec 06 08
loc_a3c2:
	sbc $ea78d2              ; $a3c2: ef d2 78 ea
	jsl $64d208              ; $a3c6: 22 08 d2 64
loc_a3ca:
	nop                      ; $a3ca: ea
	jsr $d208                ; $a3cb: 20 08 d2
loc_a3ce:
	iny                      ; $a3ce: c8
	nop                      ; $a3cf: ea
	jsr $d20a                ; $a3d0: 20 0a d2
loc_a3d3:
	iny                      ; $a3d3: c8
	nop                      ; $a3d4: ea
	jsr $d20a                ; $a3d5: 20 0a d2
loc_a3d8:
	trb $ea                  ; $a3d8: 14 ea
	jsl $0806ec              ; $a3da: 22 ec 06 08
loc_a3de:
	sbc $eaffd2              ; $a3de: ef d2 ff ea
	and ($ed,x)              ; $a3e2: 21 ed
	ora [$ee]                ; $a3e4: 07 ee
	ora ($08)                ; $a3e6: 12 08
	sbc $ea14d2              ; $a3e8: ef d2 14 ea
	jsl $0806ec              ; $a3ec: 22 ec 06 08
loc_a3f0:
	sbc $ea78d2              ; $a3f0: ef d2 78 ea
	jsl $14d208              ; $a3f4: 22 08 d2 14
loc_a3f8:
	nop                      ; $a3f8: ea
	jsl $0806ec              ; $a3f9: 22 ec 06 08
loc_a3fd:
	sbc $ea78d2              ; $a3fd: ef d2 78 ea
	jsl $c8d208              ; $a401: 22 08 d2 c8
loc_a405:
	nop                      ; $a405: ea
	jsr $d208                ; $a406: 20 08 d2
loc_a409:
	iny                      ; $a409: c8
	nop                      ; $a40a: ea
	jsr $d20a                ; $a40b: 20 0a d2
loc_a40e:
	iny                      ; $a40e: c8
	nop                      ; $a40f: ea
	jsr $d20a                ; $a410: 20 0a d2
loc_a413:
	trb $ea                  ; $a413: 14 ea
	jsl $0806ec              ; $a415: 22 ec 06 08
loc_a419:
	sbc $eaffd2              ; $a419: ef d2 ff ea
	and ($ed,x)              ; $a41d: 21 ed
	ora [$ee]                ; $a41f: 07 ee
	ora ($08)                ; $a421: 12 08
sub_a423:
	sbc $eaffd2              ; $a423: ef d2 ff ea
	and ($ed,x)              ; $a427: 21 ed
	ora [$ee]                ; $a429: 07 ee
	ora ($0a)                ; $a42b: 12 0a
	sbc $eaffd2              ; $a42d: ef d2 ff ea
	and ($ed,x)              ; $a431: 21 ed
	ora [$ee]                ; $a433: 07 ee
	ora ($0a)                ; $a435: 12 0a
	sbc $eac8d2              ; $a437: ef d2 c8 ea
	jsr $d208                ; $a43b: 20 08 d2
loc_a43e:
	trb $ea                  ; $a43e: 14 ea
	jsl $0806ec              ; $a440: 22 ec 06 08
loc_a444:
	sbc $ea78d2              ; $a444: ef d2 78 ea
	jsl $64d208              ; $a448: 22 08 d2 64
loc_a44c:
	nop                      ; $a44c: ea
	jsr $d208                ; $a44d: 20 08 d2
loc_a450:
	iny                      ; $a450: c8
	nop                      ; $a451: ea
	jsr $d20a                ; $a452: 20 0a d2
loc_a455:
	iny                      ; $a455: c8
	nop                      ; $a456: ea
	jsr $d20a                ; $a457: 20 0a d2
loc_a45a:
	trb $ea                  ; $a45a: 14 ea
	jsl $0806ec              ; $a45c: 22 ec 06 08
loc_a460:
	sbc $eaffd2              ; $a460: ef d2 ff ea
	and ($ed,x)              ; $a464: 21 ed
	ora [$ee]                ; $a466: 07 ee
	ora ($08)                ; $a468: 12 08
	sbc $ea14d2              ; $a46a: ef d2 14 ea
	jsl $0806ec              ; $a46e: 22 ec 06 08
loc_a472:
	sbc $ea78d2              ; $a472: ef d2 78 ea
	jsl $14d208              ; $a476: 22 08 d2 14
loc_a47a:
	nop                      ; $a47a: ea
	jsl $0806ec              ; $a47b: 22 ec 06 08
loc_a47f:
	sbc $ea78d2              ; $a47f: ef d2 78 ea
	jsl $c8d208              ; $a483: 22 08 d2 c8
loc_a487:
	nop                      ; $a487: ea
	jsr $d208                ; $a488: 20 08 d2
loc_a48b:
	iny                      ; $a48b: c8
	nop                      ; $a48c: ea
	jsr $d20a                ; $a48d: 20 0a d2
loc_a490:
	iny                      ; $a490: c8
	nop                      ; $a491: ea
	jsr $d20a                ; $a492: 20 0a d2
loc_a495:
	trb $ea                  ; $a495: 14 ea
	jsl $0806ec              ; $a497: 22 ec 06 08
loc_a49b:
	sbc $eaffd2              ; $a49b: ef d2 ff ea
	and ($ed,x)              ; $a49f: 21 ed
	ora [$ee]                ; $a4a1: 07 ee
	ora ($08)                ; $a4a3: 12 08
	sbc $ea78d2              ; $a4a5: ef d2 78 ea
	jsl $0801ec              ; $a4a9: 22 ec 01 08
loc_a4ad:
	sbc $eac8d2              ; $a4ad: ef d2 c8 ea
	jsr $d208                ; $a4b1: 20 08 d2
loc_a4b4:
	trb $ea                  ; $a4b4: 14 ea
	jsl $0806ec              ; $a4b6: 22 ec 06 08
loc_a4ba:
	sbc $ea78d2              ; $a4ba: ef d2 78 ea
	jsl $64d208              ; $a4be: 22 08 d2 64
loc_a4c2:
	nop                      ; $a4c2: ea
	jsr $d208                ; $a4c3: 20 08 d2
loc_a4c6:
	iny                      ; $a4c6: c8
	nop                      ; $a4c7: ea
	jsr $d20a                ; $a4c8: 20 0a d2
loc_a4cb:
	iny                      ; $a4cb: c8
	nop                      ; $a4cc: ea
	jsr $d20a                ; $a4cd: 20 0a d2
loc_a4d0:
	trb $ea                  ; $a4d0: 14 ea
	jsl $0806ec              ; $a4d2: 22 ec 06 08
loc_a4d6:
	sbc $eaffd2              ; $a4d6: ef d2 ff ea
	and ($ed,x)              ; $a4da: 21 ed
	ora [$ee]                ; $a4dc: 07 ee
	ora ($08)                ; $a4de: 12 08
	sbc $ea14d2              ; $a4e0: ef d2 14 ea
	jsl $0806ec              ; $a4e4: 22 ec 06 08
loc_a4e8:
	sbc $ea78d2              ; $a4e8: ef d2 78 ea
	jsl $14d208              ; $a4ec: 22 08 d2 14
loc_a4f0:
	nop                      ; $a4f0: ea
	jsl $0806ec              ; $a4f1: 22 ec 06 08
loc_a4f5:
	sbc $ea78d2              ; $a4f5: ef d2 78 ea
	jsl $c8d208              ; $a4f9: 22 08 d2 c8
loc_a4fd:
	nop                      ; $a4fd: ea
	jsr $d208                ; $a4fe: 20 08 d2
loc_a501:
	iny                      ; $a501: c8
	nop                      ; $a502: ea
	jsr $d20a                ; $a503: 20 0a d2
loc_a506:
	iny                      ; $a506: c8
	nop                      ; $a507: ea
	jsr $d20a                ; $a508: 20 0a d2
loc_a50b:
	trb $ea                  ; $a50b: 14 ea
	jsl $0806ec              ; $a50d: 22 ec 06 08
loc_a511:
	sbc $eaffd2              ; $a511: ef d2 ff ea
	and ($ed,x)              ; $a515: 21 ed
	ora [$ee]                ; $a517: 07 ee
	ora ($08)                ; $a519: 12 08
	sbc $eaffd2              ; $a51b: ef d2 ff ea
	and ($ed,x)              ; $a51f: 21 ed
	ora [$ee]                ; $a521: 07 ee
	ora ($0a)                ; $a523: 12 0a
	sbc $eaffd2              ; $a525: ef d2 ff ea
	and ($ed,x)              ; $a529: 21 ed
	ora [$ee]                ; $a52b: 07 ee
	ora ($0a)                ; $a52d: 12 0a
	sbc $02f0f1              ; $a52f: ef f1 f0 02
	cmp ($c8)                ; $a533: d2 c8
	nop                      ; $a535: ea
	jsr $d208                ; $a536: 20 08 d2
loc_a539:
	trb $ea                  ; $a539: 14 ea
	jsl $0806ec              ; $a53b: 22 ec 06 08
loc_a53f:
	sbc $ea78d2              ; $a53f: ef d2 78 ea
	jsl $64d208              ; $a543: 22 08 d2 64
loc_a547:
	nop                      ; $a547: ea
	jsr $d208                ; $a548: 20 08 d2
loc_a54b:
	iny                      ; $a54b: c8
	nop                      ; $a54c: ea
	jsr $d20a                ; $a54d: 20 0a d2
loc_a550:
	iny                      ; $a550: c8
	nop                      ; $a551: ea
	jsr $d20a                ; $a552: 20 0a d2
loc_a555:
	trb $ea                  ; $a555: 14 ea
	jsl $0806ec              ; $a557: 22 ec 06 08
loc_a55b:
	sbc $eaffd2              ; $a55b: ef d2 ff ea
	and ($ed,x)              ; $a55f: 21 ed
	ora [$ee]                ; $a561: 07 ee
	ora ($08)                ; $a563: 12 08
	sbc $ea14d2              ; $a565: ef d2 14 ea
	jsl $0806ec              ; $a569: 22 ec 06 08
loc_a56d:
	sbc $ea78d2              ; $a56d: ef d2 78 ea
	jsl $14d208              ; $a571: 22 08 d2 14
loc_a575:
	nop                      ; $a575: ea
	jsl $0806ec              ; $a576: 22 ec 06 08
loc_a57a:
	sbc $ea78d2              ; $a57a: ef d2 78 ea
	jsl $c8d208              ; $a57e: 22 08 d2 c8
loc_a582:
	nop                      ; $a582: ea
	jsr $d208                ; $a583: 20 08 d2
loc_a586:
	iny                      ; $a586: c8
	nop                      ; $a587: ea
	jsr $d20a                ; $a588: 20 0a d2
loc_a58b:
	iny                      ; $a58b: c8
	nop                      ; $a58c: ea
	jsr $d20a                ; $a58d: 20 0a d2
loc_a590:
	trb $ea                  ; $a590: 14 ea
	jsl $0806ec              ; $a592: 22 ec 06 08
loc_a596:
	sbc $eaffd2              ; $a596: ef d2 ff ea
	and ($ed,x)              ; $a59a: 21 ed
	ora [$ee]                ; $a59c: 07 ee
	ora ($08)                ; $a59e: 12 08
	sbc $ea78d2              ; $a5a0: ef d2 78 ea
	jsl $0801ec              ; $a5a4: 22 ec 01 08
loc_a5a8:
	sbc $eac8d2              ; $a5a8: ef d2 c8 ea
	jsr $d208                ; $a5ac: 20 08 d2
loc_a5af:
	trb $ea                  ; $a5af: 14 ea
	jsl $0806ec              ; $a5b1: 22 ec 06 08
loc_a5b5:
	sbc $ea78d2              ; $a5b5: ef d2 78 ea
	jsl $64d208              ; $a5b9: 22 08 d2 64
loc_a5bd:
	nop                      ; $a5bd: ea
	jsr $d208                ; $a5be: 20 08 d2
loc_a5c1:
	iny                      ; $a5c1: c8
	nop                      ; $a5c2: ea
	jsr $d20a                ; $a5c3: 20 0a d2
loc_a5c6:
	iny                      ; $a5c6: c8
	nop                      ; $a5c7: ea
	jsr $d20a                ; $a5c8: 20 0a d2
loc_a5cb:
	trb $ea                  ; $a5cb: 14 ea
	jsl $0806ec              ; $a5cd: 22 ec 06 08
loc_a5d1:
	sbc $eaffd2              ; $a5d1: ef d2 ff ea
	and ($ed,x)              ; $a5d5: 21 ed
	ora [$ee]                ; $a5d7: 07 ee
	ora ($08)                ; $a5d9: 12 08
	sbc $ea14d2              ; $a5db: ef d2 14 ea
	jsl $0806ec              ; $a5df: 22 ec 06 08
loc_a5e3:
	sbc $ea78d2              ; $a5e3: ef d2 78 ea
	jsl $14d208              ; $a5e7: 22 08 d2 14
loc_a5eb:
	nop                      ; $a5eb: ea
	jsl $0806ec              ; $a5ec: 22 ec 06 08
loc_a5f0:
	sbc $ea78d2              ; $a5f0: ef d2 78 ea
	jsl $c8d208              ; $a5f4: 22 08 d2 c8
loc_a5f8:
	nop                      ; $a5f8: ea
	jsr $d208                ; $a5f9: 20 08 d2
loc_a5fc:
	iny                      ; $a5fc: c8
	nop                      ; $a5fd: ea
	jsr $d20a                ; $a5fe: 20 0a d2
loc_a601:
	iny                      ; $a601: c8
	nop                      ; $a602: ea
	jsr $d20a                ; $a603: 20 0a d2
loc_a606:
	trb $ea                  ; $a606: 14 ea
	jsl $0806ec              ; $a608: 22 ec 06 08
loc_a60c:
	sbc $eaffd2              ; $a60c: ef d2 ff ea
	and ($ed,x)              ; $a610: 21 ed
	ora [$ee]                ; $a612: 07 ee
	ora ($08)                ; $a614: 12 08
	sbc $eaffd2              ; $a616: ef d2 ff ea
	and ($ed,x)              ; $a61a: 21 ed
	ora [$ee]                ; $a61c: 07 ee
	ora ($0a)                ; $a61e: 12 0a
	sbc $eaffd2              ; $a620: ef d2 ff ea
	and ($ed,x)              ; $a624: 21 ed
	ora [$ee]                ; $a626: 07 ee
	ora ($0a)                ; $a628: 12 0a
	sbc $bcfaf1              ; $a62a: ef f1 fa bc
	ldx #$d2                 ; $a62e: a2 d2
	eor $ea80d4,x            ; $a630: 5f d4 80 ea
	rol $e2                  ; $a634: 26 e2
	xba                      ; $a636: eb
	ora $08ee                ; $a637: 0d ee 08
	cpx $04                  ; $a63a: e4 04
	beq $a63f                ; $a63c: f0 01
loc_a63e:
	beq $a641                ; $a63e: f0 01
loc_a640:
	php                      ; $a640: 08
loc_a641:
	mvp $62,$44              ; $a641: 44 62 44
	lda $6244                ; $a644: ad 44 62
	mvp $26,$62              ; $a647: 44 26 62
	bra $a6ae                ; $a64a: 80 62
	sbc $17                  ; $a64c: e5 17
	inc $62                  ; $a64e: e6 62
	bra $a6b4                ; $a650: 80 62
	sbc ($f0),y              ; $a652: f1 f0
	ora ($e5,x)              ; $a654: 01 e5
	and [$e6],y              ; $a656: 37 e6
	ldy #$82                 ; $a658: a0 82
	sbc $19                  ; $a65a: e5 19
	inc $82                  ; $a65c: e6 82
	stz $af                  ; $a65e: 64 af
	stz $46                  ; $a660: 64 46
	cmp [$cd]                ; $a662: c7 cd
	sbc ($88),y              ; $a664: f1 88
	sbc $05                  ; $a666: e5 05
	inc $6a                  ; $a668: e6 6a
	txy                      ; $a66a: 9b
	jmp $377d                ; $a66b: 4c 7d 37

; === Block $a404-$a405 (Code) ===
sub_a404:
	iny                      ; $a404: c8

; === Block $a5aa-$a5ac (Code) ===
sub_a5aa:
	iny                      ; $a5aa: c8
	nop                      ; $a5ab: ea

; === Block $a63f-$a641 (Code) ===
loc_a63f:
	ora ($08,x)              ; $a63f: 01 08

; === Block $a68a-$a697 (Code) ===
loc_a68a:
	ora ($bc),y              ; $a68a: 11 bc
	inc $80                  ; $a68c: e6 80
	per $4e11                ; $a68e: 62 80 a7
	ldy $4462,x              ; $a691: bc 62 44
	per $7128                ; $a694: 62 91 ca

; === Block $a692-$a793 (Code) ===
sub_a692:
	per $108d9               ; $a692: 62 44 62
	sta ($ca),y              ; $a695: 91 ca
	ror                      ; $a697: 6a
	plx                      ; $a698: fa
	bit $d2a6,x              ; $a699: 3c a6 d2
	sta ($d4),y              ; $a69c: 91 d4
	bra $a68a                ; $a69e: 80 ea
	ora ($eb,x)              ; $a6a0: 01 eb
	ora $ed06ec              ; $a6a2: 0f ec 06 ed
	cop #$ee                 ; $a6a6: 02 ee
	ora ($e4),y              ; $a6a8: 11 e4
	tsb $fa                  ; $a6aa: 04 fa
	bit $eaa6,x              ; $a6ac: 3c a6 ea
	bit $eb                  ; $a6af: 24 eb
	ora $ed07ec              ; $a6b1: 0f ec 07 ed
	ora [$ee]                ; $a6b5: 07 ee
	asl                      ; $a6b7: 0a
	cpx $02                  ; $a6b8: e4 02
	beq $a6bd                ; $a6ba: f0 01
loc_a6bc:
	cmp ($c8)                ; $a6bc: d2 c8
	pei $40                  ; $a6be: d4 40
	phk                      ; $a6c0: 4b
	ldy $d2,x                ; $a6c1: b4 d2
	ldy $d4,x                ; $a6c3: b4 d4
	bra $a68a                ; $a6c5: 80 c3
	cmp $c3,s                ; $a6c7: c3 c3
	cmp $d2,s                ; $a6c9: c3 d2
	iny                      ; $a6cb: c8
	pei $c0                  ; $a6cc: d4 c0
	phk                      ; $a6ce: 4b
	ldy $d2,x                ; $a6cf: b4 d2
	ldy $d4,x                ; $a6d1: b4 d4
	bra $a698                ; $a6d3: 80 c3
	cmp $f1,s                ; $a6d5: c3 f1
	cmp ($c8)                ; $a6d7: d2 c8
	pei $40                  ; $a6d9: d4 40
	phk                      ; $a6db: 4b
	ldy $d2,x                ; $a6dc: b4 d2
	ldy $d4,x                ; $a6de: b4 d4
	bra $a6a5                ; $a6e0: 80 c3
	cmp $c3,s                ; $a6e2: c3 c3
	cmp $c3,s                ; $a6e4: c3 c3
	cmp $d2,s                ; $a6e6: c3 d2
	iny                      ; $a6e8: c8
	pei $c0                  ; $a6e9: d4 c0
	phk                      ; $a6eb: 4b
	ldy $d2,x                ; $a6ec: b4 d2
	ldy $d4,x                ; $a6ee: b4 d4
	bra $a6b5                ; $a6f0: 80 c3
sub_a6f2:
	cmp $fa,s                ; $a6f2: c3 fa
	tsx                      ; $a6f4: ba
	ldx $d2                  ; $a6f5: a6 d2
	eor $d4,x                ; $a6f7: 55 d4
	txs                      ; $a6f9: 9a
	nop                      ; $a6fa: ea
	rol $e2                  ; $a6fb: 26 e2
	xba                      ; $a6fd: eb
	ora $0aee                ; $a6fe: 0d ee 0a
	beq $a704                ; $a701: f0 01
loc_a703:
	cpx $04                  ; $a703: e4 04
	lda $e5                  ; $a705: a5 e5
	ora $e5a5e6              ; $a707: 0f e6 a5 e5
	ora $3701f0              ; $a70b: 0f f0 01 37
	wai                      ; $a70f: cb
	ora $e6cb,y              ; $a710: 19 cb e6
	lda $e5cdc5              ; $a713: af c5 cd e5
	sbc ($e6),y              ; $a717: f1 e6
	beq $a722                ; $a719: f0 07
loc_a71b:
	sta ($cd),y              ; $a71b: 91 cd
	sbc ($f0),y              ; $a71d: f1 f0
	ora [$73]                ; $a71f: 07 73
	cmp $f0f1                ; $a721: cd f1 f0
	ora [$55]                ; $a724: 07 55
	cmp $37f1                ; $a726: cd f1 37
	dex                      ; $a729: ca
	bpl $a71d                ; $a72a: 10 f1
loc_a72c:
	lda $b4                  ; $a72c: a5 b4
	sbc $0f                  ; $a72e: e5 0f
	ldy $e6,x                ; $a730: b4 e6
	lda $b4                  ; $a732: a5 b4
	sbc $0f                  ; $a734: e5 0f
	ldy $2d,x                ; $a736: b4 2d
	ora $91a5e6              ; $a738: 0f e6 a5 91
	dex                      ; $a73c: ca
	ror                      ; $a73d: 6a
	plx                      ; $a73e: fa
	ora ($a7,x)              ; $a73f: 01 a7
	cmp ($55)                ; $a741: d2 55
	pei $66                  ; $a743: d4 66
	nop                      ; $a745: ea
	rol $e2                  ; $a746: 26 e2
	xba                      ; $a748: eb
	ora $0aee                ; $a749: 0d ee 0a
	beq $a74f                ; $a74c: f0 01
loc_a74e:
	cpx $04                  ; $a74e: e4 04
	phy                      ; $a750: 5a
	sei                      ; $a751: 78
	phy                      ; $a752: 5a
	sei                      ; $a753: 78
	beq $a757                ; $a754: f0 01
loc_a756:
	ldy #$cb                 ; $a756: a0 cb
	brl $10c26               ; $a758: 82 cb 64
	cmp $cd                  ; $a75b: c5 cd
	sbc ($f0),y              ; $a75d: f1 f0
	ora [$46]                ; $a75f: 07 46
	cmp $f0f1                ; $a761: cd f1 f0
	ora [$28]                ; $a764: 07 28
	cmp $f0f1                ; $a766: cd f1 f0
	ora [$0a]                ; $a769: 07 0a
	cmp $e6f1                ; $a76b: cd f1 e6
	ldy #$ca                 ; $a76e: a0 ca
	adc $e5f1,y              ; $a770: 79 f1 e5
	phy                      ; $a773: 5a
	ldy $78,x                ; $a774: b4 78
	ldy $5a,x                ; $a776: b4 5a
	ldy $78,x                ; $a778: b4 78
	ldy $96,x                ; $a77a: b4 96
	sei                      ; $a77c: 78
	phy                      ; $a77d: 5a
	lsr $ca                  ; $a77e: 46 ca
	ora $a74cfa,x            ; $a780: 1f fa 4c a7
	nop                      ; $a784: ea
	rol $e2                  ; $a785: 26 e2
	xba                      ; $a787: eb
	ora $f00aee              ; $a788: 0f ee 0a f0
	ora ($d2,x)              ; $a78c: 01 d2
	and $60d4                ; $a78e: 2d d4 60
	cpx $04                  ; $a791: e4 04
	brk #$1e                 ; $a793: 00 1e

; === Block $a6a5-$a6a8 (Code) ===
loc_a6a5:
	sbc $ee02                ; $a6a5: ed 02 ee

; === Block $a6ae-$a6af (Code) ===
loc_a6ae:
	nop                      ; $a6ae: ea

; === Block $a6b4-$a6b7 (Code) ===
loc_a6b4:
	sbc $ee07                ; $a6b4: ed 07 ee

; === Block $a6bd-$a6be (Code) ===
loc_a6bd:
	iny                      ; $a6bd: c8

; === Block $a6fc-$a6fe (Code) ===
sub_a6fc:
	sep #$eb                 ; $a6fc: e2 eb

; === Block $a704-$a710 (Code) ===
loc_a704:
	tsb $a5                  ; $a704: 04 a5
	sbc $0f                  ; $a706: e5 0f
	inc $a5                  ; $a708: e6 a5
	sbc $0f                  ; $a70a: e5 0f
	beq $a70f                ; $a70c: f0 01
loc_a70e:
	and [$cb],y              ; $a70e: 37 cb

; === Block $a722-$a724 (Code) ===
loc_a722:
	sbc ($f0),y              ; $a722: f1 f0

; === Block $a74f-$a751 (Code) ===
loc_a74f:
	tsb $5a                  ; $a74f: 04 5a

; === Block $a757-$a758 (Code) ===
loc_a757:
	wai                      ; $a757: cb

; === Block $a78a-$a791 (Code) ===
loc_a78a:
	asl                      ; $a78a: 0a
	beq $a78e                ; $a78b: f0 01
loc_a78d:
	cmp ($2d)                ; $a78d: d2 2d
	pei $60                  ; $a78f: d4 60

; === Block $a790-$a790 (Code) ===
loc_a790:
	rts                      ; $a790: 60

; === Block $a7d3-$a7e6 (Code) ===
loc_a7d3:
	php                      ; $a7d3: 08
	mvp $62,$44              ; $a7d4: 44 62 44
	lda $6244                ; $a7d7: ad 44 62
	mvp $f1,$f0              ; $a7da: 44 f1 f0
	ora ($26,x)              ; $a7dd: 01 26
	per $10a62               ; $a7df: 62 80 62
	sbc $17                  ; $a7e2: e5 17
	inc $62                  ; $a7e4: e6 62

; === Block $a7e6-$a808 (Code) ===
loc_a7e6:
	bra $a84a                ; $a7e6: 80 62
	sbc ($44),y              ; $a7e8: f1 44
	bra $a78a                ; $a7ea: 80 9e
	bra $a7d3                ; $a7ec: 80 e5
	and $e6,x                ; $a7ee: 35 e6
	bra $a790                ; $a7f0: 80 9e
	bra $a81a                ; $a7f2: 80 26
	per $10a77               ; $a7f4: 62 80 62
	sbc $17                  ; $a7f7: e5 17
	inc $62                  ; $a7f9: e6 62
	bra $a85f                ; $a7fb: 80 62
	php                      ; $a7fd: 08
	mvp $62,$44              ; $a7fe: 44 62 44
	lda $6244                ; $a801: ad 44 62
	mvp $e6,$a0              ; $a804: 44 e6 a0
	dex                      ; $a807: ca

; === Block $a808-$a869 (Code) ===
sub_a808:
	adc $8bfa,y              ; $a808: 79 fa 8b
	lda [$d2]                ; $a80b: a7 d2
	and $d4,s                ; $a80d: 23 d4
	cpy #$ea                 ; $a80f: c0 ea
	rol $e2                  ; $a811: 26 e2
	xba                      ; $a813: eb
	ora $0aee                ; $a814: 0d ee 0a
	beq $a81a                ; $a817: f0 01
loc_a819:
	cpx $04                  ; $a819: e4 04
	bit $3c5a,x              ; $a81b: 3c 5a 3c
	phy                      ; $a81e: 5a
	beq $a822                ; $a81f: f0 01
loc_a821:
	brl $10cef               ; $a821: 82 cb 64
	wai                      ; $a824: cb
	lsr $c5                  ; $a825: 46 c5
	cmp $f0f1                ; $a827: cd f1 f0
	ora [$28]                ; $a82a: 07 28
	cmp $f0f1                ; $a82c: cd f1 f0
	ora [$0a]                ; $a82f: 07 0a
	cmp $e6f1                ; $a831: cd f1 e6
	beq $a83d                ; $a834: f0 07
loc_a836:
	ldy #$cd                 ; $a836: a0 cd
	sbc ($82),y              ; $a838: f1 82
	dex                      ; $a83a: ca
	tcd                      ; $a83b: 5b
	sbc ($e5),y              ; $a83c: f1 e5
	bit $5ab4,x              ; $a83e: 3c b4 5a
	ldy $3c,x                ; $a841: b4 3c
	ldy $5a,x                ; $a843: b4 5a
	ldy $78,x                ; $a845: b4 78
	phy                      ; $a847: 5a
	bit $ca28,x              ; $a848: 3c 28 ca
	ora ($fa,x)              ; $a84b: 01 fa
	ora [$a8],y              ; $a84d: 17 a8
	inc $6305,x              ; $a84f: fe 05 63
	tay                      ; $a852: a8
	rtl                      ; $a853: 6b
	lda #$4b                 ; $a854: a9 4b
	tax                      ; $a856: aa
	eor #$ab                 ; $a857: 49 ab
	sta $44ab,y              ; $a859: 99 ab 44
	ldy $ad15                ; $a85c: ac 15 ad
	per $f80f                ; $a85f: 62 ad 4f
	ldx $bef8                ; $a862: ae f8 be
sub_a865:
	sbc ($82,s),y            ; $a865: f3 82
	sbc [$3c],y              ; $a867: f7 3c
	brk #$f5                 ; $a869: 00 f5

; === Block $a81a-$a825 (Code) ===
loc_a81a:
	tsb $3c                  ; $a81a: 04 3c
	phy                      ; $a81c: 5a
	bit $f05a,x              ; $a81d: 3c 5a f0
	ora ($82,x)              ; $a820: 01 82
loc_a822:
	wai                      ; $a822: cb
	stz $cb                  ; $a823: 64 cb

; === Block $a83d-$a841 (Code) ===
loc_a83d:
	sbc $3c                  ; $a83d: e5 3c
	ldy $5a,x                ; $a83f: b4 5a

; === Block $a84a-$a84b (Code) ===
loc_a84a:
	dex                      ; $a84a: ca

; === Block $a87b-$a8fc (Code) ===
loc_a87b:
	ora $f004e4              ; $a87b: 0f e4 04 f0
	ora ($3e,x)              ; $a87f: 01 3e
	tay                      ; $a881: a8
	lda $98afa0,x            ; $a882: bf a0 af 98
	sbc $09                  ; $a886: e5 09
	inc $ae                  ; $a888: e6 ae
	sbc $09                  ; $a88a: e5 09
	and [$09]                ; $a88c: 27 09
	and [$f9]                ; $a88e: 27 f9
	cop #$af                 ; $a890: 02 af
	tay                      ; $a892: a8
	eor ($e6,x)              ; $a893: 41 e6
	ldx $45e5                ; $a895: ae e5 45
	inc $ae                  ; $a898: e6 ae
	sbc $9c                  ; $a89a: e5 9c
	sta $e66f                ; $a89c: 8d 6f e6
	ldx $ae9f                ; $a89f: ae 9f ae
	sbc $45                  ; $a8a2: e5 45
	rol $45,x                ; $a8a4: 36 45
	ora #$e6                 ; $a8a6: 09 e6
	ldx $09e5                ; $a8a8: ae e5 09
	adc ($63)                ; $a8ab: 72 63
	adc ($e6)                ; $a8ad: 72 e6
	sbc ($45),y              ; $a8af: f1 45
	rol $45,x                ; $a8b1: 36 45
	adc ($63)                ; $a8b3: 72 63
	adc ($9c)                ; $a8b5: 72 9c
	sta $ab6f                ; $a8b7: 8d 6f ab
	lda ($b0,x)              ; $a8ba: a1 b0
	ldy #$8e                 ; $a8bc: a0 8e
	adc $647465              ; $a8be: 6f 65 74 64
	eor $bf,x                ; $a8c2: 55 bf
	nop                      ; $a8c4: ea
	cop #$d2                 ; $a8c5: 02 d2
	lsr $e6                  ; $a8c7: 46 e6
	ldx $6ee5                ; $a8c9: ae e5 6e
	adc $45,s                ; $a8cc: 63 45
	and [$3e]                ; $a8ce: 27 3e
	sta $457290,x            ; $a8d0: 9f 90 72 45
	and [$45]                ; $a8d4: 27 45
	inc $ab                  ; $a8d6: e6 ab
	wdm #$72                 ; $a8d8: 42 72
	bcc $a886                ; $a8da: 90 aa
loc_a8dc:
	sbc $5f                  ; $a8dc: e5 5f
	and ($aa)                ; $a8de: 32 aa
	sbc $06                  ; $a8e0: e5 06
	inc $ae                  ; $a8e2: e6 ae
	bcc $a894                ; $a8e4: 90 ae
loc_a8e6:
	rol $e6,x                ; $a8e6: 36 e6
	ldx $ae9f                ; $a8e8: ae 9f ae
	sbc $60                  ; $a8eb: e5 60
	inc $ae                  ; $a8ed: e6 ae
	sbc $6e                  ; $a8ef: e5 6e
	eor $36                  ; $a8f1: 45 36
	eor $ab                  ; $a8f3: 45 ab
	wdm #$e5                 ; $a8f5: 42 e5
	wdm #$e6                 ; $a8f7: 42 e6
	stz $7290                ; $a8f9: 9c 90 72

; === Block $a894-$a898 (Code) ===
loc_a894:
	inc $ae                  ; $a894: e6 ae
	sbc $45                  ; $a896: e5 45

; === Block $a8b2-$a8ba (Code) ===
loc_a8b2:
	eor $72                  ; $a8b2: 45 72
	adc $72,s                ; $a8b4: 63 72
	stz $6f8d                ; $a8b6: 9c 8d 6f
	plb                      ; $a8b9: ab

; === Block $a8fc-$a901 (Code) ===
loc_a8fc:
	eor $27                  ; $a8fc: 45 27
	rol $e636,x              ; $a8fe: 3e 36 e6

; === Block $a901-$a92e (Code) ===
sub_a901:
	ldx $e563                ; $a901: ae 63 e5
	rol $e6,x                ; $a904: 36 e6
	ldx $45e5                ; $a906: ae e5 45
	and ($a8,s),y            ; $a909: 33 a8
	sbc $45                  ; $a90b: e5 45
	rol $e6,x                ; $a90d: 36 e6
	ldx $3663                ; $a90f: ae 63 36
	adc $a7,s                ; $a912: 63 a7
	cmp $d7,s                ; $a914: c3 d7
	asl $e714,x              ; $a916: 1e 14 e7
	nop                      ; $a919: ea
	tsb $d2                  ; $a91a: 04 d2
	ror $e6e6                ; $a91c: 6e e6 e6
	inc $aa                  ; $a91f: e6 aa
	sbc $5f                  ; $a921: e5 5f
	tax                      ; $a923: aa
	sbc $aa                  ; $a924: e5 aa
	cmp $27,s                ; $a926: c3 27
	ora #$e6                 ; $a928: 09 e6
	sta $9f81cc,x            ; $a92a: 9f cc 81 9f
	rts                      ; $a92e: 60

; === Block $a947-$a9bf (Code) ===
sub_a947:
	sta $ea14e5,x            ; $a947: 9f e5 14 ea
	and #$d2                 ; $a94b: 29 d2
	brl $b93b                ; $a94d: 82 eb 0f
	cld                      ; $a950: d8
	inc $e6                  ; $a951: e6 e6
	rol $3ee5,x              ; $a953: 3e e5 3e
	inc $ab                  ; $a956: e6 ab
	stz $9f8d                ; $a958: 9c 8d 9f
	bcc $a8fc                ; $a95b: 90 9f
loc_a95d:
	ldx $909f                ; $a95d: ae 9f 90
	sta $45e5cc,x            ; $a960: 9f cc e5 45
	cpy $c69f                ; $a964: cc 9f c6
	iny                      ; $a967: c8
	plx                      ; $a968: fa
	ror $a8,x                ; $a969: 76 a8
	cmp ($a0)                ; $a96b: d2 a0
	pei $80                  ; $a96d: d4 80
	nop                      ; $a96f: ea
	rol $e3                  ; $a970: 26 e3
	cmp $e4                  ; $a972: c5 e4
	tsb $e4                  ; $a974: 04 e4
	tsb $f0                  ; $a976: 04 f0
	ora ($45,x)              ; $a978: 01 45
	cpy $7245                ; $a97a: cc 45 72
	eor $45                  ; $a97d: 45 45
	ldx $7245                ; $a97f: ae 45 72
	eor $ae                  ; $a982: 45 ae
	sta $e618e5,x            ; $a984: 9f e5 18 e6
sub_a988:
	adc $63,s                ; $a988: 63 63
	sta $63e563,x            ; $a98a: 9f 63 e5 63
	ora #$e6                 ; $a98e: 09 e6
	mvn $54,$e5              ; $a990: 54 54 e5
	mvn $e6,$54              ; $a993: 54 e6 54
	mvn $45,$45              ; $a996: 54 45 45
	eor $72                  ; $a999: 45 72
	eor $45                  ; $a99b: 45 45
	sbc $b702,y              ; $a99d: f9 02 b7
	lda #$9f                 ; $a9a0: a9 9f
	eor $90                  ; $a9a2: 45 90
	eor $72                  ; $a9a4: 45 72
	eor $ae                  ; $a9a6: 45 ae
	eor $45                  ; $a9a8: 45 45
	adc ($45)                ; $a9aa: 72 45
	eor $e5                  ; $a9ac: 45 e5
	ora #$e6                 ; $a9ae: 09 e6
	eor $72                  ; $a9b0: 45 72
	eor $e5                  ; $a9b2: 45 e5
	and [$e6]                ; $a9b4: 27 e6
	eor $f1                  ; $a9b6: 45 f1
	stz $6f8d                ; $a9b8: 9c 8d 6f
	plb                      ; $a9bb: ab
	stz $6f8d                ; $a9bc: 9c 8d 6f
	rts                      ; $a9bf: 60

; === Block $a9bd-$a9e2 (Code) ===
loc_a9bd:
	sta $606f                ; $a9bd: 8d 6f 60
	eor ($f0),y              ; $a9c0: 51 f0
	ora ($45,x)              ; $a9c2: 01 45
	eor $45                  ; $a9c4: 45 45
	adc ($45)                ; $a9c6: 72 45
	eor $ae                  ; $a9c8: 45 ae
	eor $45                  ; $a9ca: 45 45
	adc ($45)                ; $a9cc: 72 45
	eor $9f                  ; $a9ce: 45 9f
	eor $90                  ; $a9d0: 45 90
	eor $72                  ; $a9d2: 45 72
	eor $72                  ; $a9d4: 45 72
	eor $90                  ; $a9d6: 45 90
	eor $72                  ; $a9d8: 45 72
	bcc $a98a                ; $a9da: 90 ae
loc_a9dc:
	sta $ab5fae,x            ; $a9dc: 9f ae 5f ab
	sbc $36                  ; $a9e0: e5 36

; === Block $a9cd-$aa66 (Code) ===
sub_a9cd:
	eor $45                  ; $a9cd: 45 45
	sta $459045,x            ; $a9cf: 9f 45 90 45
	adc ($45)                ; $a9d3: 72 45
	adc ($45)                ; $a9d5: 72 45
	bcc $aa1e                ; $a9d7: 90 45
loc_a9d9:
	adc ($90)                ; $a9d9: 72 90
	ldx $ae9f                ; $a9db: ae 9f ae
	eor $36e5ab,x            ; $a9de: 5f ab e5 36
	eor $54                  ; $a9e2: 45 54
	adc $09,s                ; $a9e4: 63 09
	inc $45                  ; $a9e6: e6 45
	ldx $9f90                ; $a9e8: ae 90 9f
	ldx $459f                ; $a9eb: ae 9f 45
sub_a9ee:
	ldx $7290                ; $a9ee: ae 90 72
	adc $f1,s                ; $a9f1: 63 f1
	beq $a9f6                ; $a9f3: f0 01
loc_a9f5:
	eor $cc                  ; $a9f5: 45 cc
	eor $e5                  ; $a9f7: 45 e5
	eor $e6                  ; $a9f9: 45 e6
	eor $cc                  ; $a9fb: 45 cc
	eor $cc                  ; $a9fd: 45 cc
	eor $9f                  ; $a9ff: 45 9f
	wdm #$9f                 ; $aa01: 42 9f
	ldx $aeae                ; $aa03: ae ae ae
	ldx $9fae                ; $aa06: ae ae 9f
	ldx $aeae                ; $aa09: ae ae ae
	ldx $45ae                ; $aa0c: ae ae 45
	cpy $e545                ; $aa0f: cc 45 e5
	eor $e6                  ; $aa12: 45 e6
	eor $cc                  ; $aa14: 45 cc
	eor $cc                  ; $aa16: 45 cc
	eor $ae                  ; $aa18: 45 ae
	eor $cc                  ; $aa1a: 45 cc
	bcc $a9bd                ; $aa1c: 90 9f
loc_aa1e:
	sta $9f9f9f,x            ; $aa1e: 9f 9f 9f 9f
	mvn $63,$63              ; $aa22: 54 63 63
	adc $63,s                ; $aa25: 63 63
	adc $f1,s                ; $aa27: 63 f1
	sbc $42                  ; $aa29: e5 42
	inc $45                  ; $aa2b: e6 45
	cpy $cc45                ; $aa2d: cc 45 cc
	stz $cc45                ; $aa30: 9c 45 cc
	eor $cc                  ; $aa33: 45 cc
	adc $e55160              ; $aa35: 6f 60 51 e5
	sta $e6c69f,x            ; $aa39: 9f 9f c6 e6
	sta $e5c69f,x            ; $aa3d: 9f 9f c6 e5
	eor $9f                  ; $aa41: 45 9f
	mvn $ae,$63              ; $aa43: 54 ae 63
	sbc $09                  ; $aa46: e5 09
	plx                      ; $aa48: fa
	adc $a9,x                ; $aa49: 75 a9
	cmp ($8c)                ; $aa4b: d2 8c
	pei $80                  ; $aa4d: d4 80
	nop                      ; $aa4f: ea
	plp                      ; $aa50: 28
	sep #$c5                 ; $aa51: e2 c5
	cpx $05                  ; $aa53: e4 05
	wdm #$45                 ; $aa55: 42 45
	inc $f0                  ; $aa57: e6 f0
	cop #$47                 ; $aa59: 02 47
	dec $e5f1                ; $aa5b: ce f1 e5
	adc $03f0e6              ; $aa5e: 6f e6 f0 03
	eor [$ce]                ; $aa62: 47 ce
	sbc ($e5),y              ; $aa64: f1 e5
	rts                      ; $aa66: 60

; === Block $a9f6-$a9f9 (Code) ===
loc_a9f6:
	cpy $e545                ; $a9f6: cc 45 e5

; === Block $aa3b-$aa3d (Code) ===
sub_aa3b:
	dec $e6                  ; $aa3b: c6 e6

; === Block $aa6e-$aaa5 (Code) ===
loc_aa6e:
	eor ($e6),y              ; $aa6e: 51 e6
	beq $aa75                ; $aa70: f0 03
loc_aa72:
	lsr $ce,x                ; $aa72: 56 ce
	sbc ($e5),y              ; $aa74: f1 e5
	wdm #$45                 ; $aa76: 42 45
	inc $f0                  ; $aa78: e6 f0
	cop #$47                 ; $aa7a: 02 47
	dec $9cf1                ; $aa7c: ce f1 9c
	sta $ab6f                ; $aa7f: 8d 6f ab
	beq $aa87                ; $aa82: f0 03
loc_aa84:
	eor [$ce]                ; $aa84: 47 ce
	sbc ($e5),y              ; $aa86: f1 e5
	asl $e6                  ; $aa88: 06 e6
	eor [$ce]                ; $aa8a: 47 ce
	eor [$ce]                ; $aa8c: 47 ce
	sbc $27                  ; $aa8e: e5 27
	inc $47                  ; $aa90: e6 47
	dec $42e5                ; $aa92: ce e5 42
	eor $e6                  ; $aa95: 45 e6
	beq $aa9b                ; $aa97: f0 02
loc_aa99:
	eor [$ce]                ; $aa99: 47 ce
loc_aa9b:
	sbc ($e5),y              ; $aa9b: f1 e5
	adc $03f0e6              ; $aa9d: 6f e6 f0 03
	eor [$ce]                ; $aaa1: 47 ce
	sbc ($e5),y              ; $aaa3: f1 e5
	rts                      ; $aaa5: 60

; === Block $aa75-$aa7f (Code) ===
loc_aa75:
	sbc $42                  ; $aa75: e5 42
	eor $e6                  ; $aa77: 45 e6
	beq $aa7d                ; $aa79: f0 02
loc_aa7b:
	eor [$ce]                ; $aa7b: 47 ce
loc_aa7d:
	sbc ($9c),y              ; $aa7d: f1 9c

; === Block $aa87-$aa8e (Code) ===
loc_aa87:
	sbc $06                  ; $aa87: e5 06
	inc $47                  ; $aa89: e6 47
	dec $ce47                ; $aa8b: ce 47 ce

; === Block $ab5d-$ab82 (Code) ===
sub_ab5d:
	ldx $9f45                ; $ab5d: ae 45 9f
	eor $72                  ; $ab60: 45 72
	eor $e5                  ; $ab62: 45 e5
	ora #$e6                 ; $ab64: 09 e6
	eor $ae                  ; $ab66: 45 ae
	eor $9f                  ; $ab68: 45 9f
	eor $ab                  ; $ab6a: 45 ab
	plb                      ; $ab6c: ab
	ldx $abae                ; $ab6d: ae ae ab
	plb                      ; $ab70: ab
	ldx $aeae                ; $ab71: ae ae ae
	eor $72                  ; $ab74: 45 72
	eor $9f                  ; $ab76: 45 9f
	eor $ae                  ; $ab78: 45 ae
	eor $e5                  ; $ab7a: 45 e5
	ora #$e6                 ; $ab7c: 09 e6
	eor $9f                  ; $ab7e: 45 9f
	eor $60                  ; $ab80: 45 60
	rts                      ; $ab82: 60

; === Block $ab8c-$ac28 (Code) ===
loc_ab8c:
	cmp #$e6                 ; $ab8c: c9 e6
	inc $45                  ; $ab8e: e6 45
	sta $9f45e5,x            ; $ab90: 9f e5 45 9f
	sbc $3c                  ; $ab94: e5 3c
	plx                      ; $ab96: fa
	eor $ab,x                ; $ab97: 55 ab
	cmp ($41)                ; $ab99: d2 41
	nop                      ; $ab9b: ea
	and [$e2]                ; $ab9c: 27 e2
	cmp $d4                  ; $ab9e: c5 d4
	cpy #$e4                 ; $aba0: c0 e4
	ora $f0,s                ; $aba2: 03 f0
	ora ($ab,x)              ; $aba4: 01 ab
	ldx $e5c8                ; $aba6: ae c8 e5
	and $c8,s                ; $aba9: 23 c8
	trb $c8                  ; $abab: 14 c8
	ora $c8                  ; $abad: 05 c8
	inc $ab                  ; $abaf: e6 ab
	ldx $51c8                ; $abb1: ae c8 51
	wdm #$24                 ; $abb4: 42 24
	sbc $c102,y              ; $abb6: f9 02 c1
	plb                      ; $abb9: ab
	adc $c7,s                ; $abba: 63 c7
	dec $c872                ; $abbc: ce 72 c8
	bcc $ab8d                ; $abbf: 90 cc
loc_abc1:
	sbc ($60),y              ; $abc1: f1 60
	eor ($42),y              ; $abc3: 51 42
	bit $15                  ; $abc5: 24 15
	asl $f0                  ; $abc7: 06 f0
	phd                      ; $abc9: 0b
	bcs $ab9a                ; $abca: b0 ce
loc_abcc:
	sbc ($e5),y              ; $abcc: f1 e5
	eor ($45),y              ; $abce: 51 45
	iny                      ; $abd0: c8
	bit $45                  ; $abd1: 24 45
	iny                      ; $abd3: c8
	inc $f0                  ; $abd4: e6 f0
	phd                      ; $abd6: 0b
	adc $ce                  ; $abd7: 65 ce
	sbc ($e5),y              ; $abd9: f1 e5
	adc $51c863              ; $abdb: 6f 63 c8 51
	adc $c8,s                ; $abdf: 63 c8
	inc $f0                  ; $abe1: e6 f0
	phd                      ; $abe3: 0b
	bcs $abb4                ; $abe4: b0 ce
loc_abe6:
	sbc ($e5),y              ; $abe6: f1 e5
	eor ($45),y              ; $abe8: 51 45
	iny                      ; $abea: c8
	bit $45                  ; $abeb: 24 45
	iny                      ; $abed: c8
	inc $f0                  ; $abee: e6 f0
	phd                      ; $abf0: 0b
	adc $ce                  ; $abf1: 65 ce
	sbc ($e5),y              ; $abf3: f1 e5
	adc $51c863              ; $abf5: 6f 63 c8 51
	adc $c8,s                ; $abf9: 63 c8
	cmp $e5,s                ; $abfb: c3 e5
	beq $ac00                ; $abfd: f0 01
loc_abff:
	wdm #$45                 ; $abff: 42 45
	cpy $4545                ; $ac01: cc 45 45
	sbc ($c3),y              ; $ac04: f1 c3
	inc $9c                  ; $ac06: e6 9c
	sta $9f9fcc,x            ; $ac08: 9f cc 9f 9f
	sbc $60                  ; $ac0c: e5 60
	adc $cc,s                ; $ac0e: 63 cc
	adc $63,s                ; $ac10: 63 63
	cmp $f0,s                ; $ac12: c3 f0
	ora ($42,x)              ; $ac14: 01 42
	eor $cc                  ; $ac16: 45 cc
	eor $45                  ; $ac18: 45 45
	sbc ($c3),y              ; $ac1a: f1 c3
	inc $9c                  ; $ac1c: e6 9c
	sta $9f9fcc,x            ; $ac1e: 9f cc 9f 9f
	sbc $60                  ; $ac22: e5 60
	adc $cc,s                ; $ac24: 63 cc
	adc $63,s                ; $ac26: 63 63

; === Block $ab8d-$ab97 (Code) ===
loc_ab8d:
	inc $e6                  ; $ab8d: e6 e6
	eor $9f                  ; $ab8f: 45 9f
	sbc $45                  ; $ab91: e5 45
	sta $fa3ce5,x            ; $ab93: 9f e5 3c fa

; === Block $ab9a-$ab9c (Code) ===
loc_ab9a:
	eor ($ea,x)              ; $ab9a: 41 ea

; === Block $ac00-$ac04 (Code) ===
loc_ac00:
	eor $cc                  ; $ac00: 45 cc
	eor $45                  ; $ac02: 45 45

; === Block $ac21-$ac4b (Code) ===
loc_ac21:
	sta $6360e5,x            ; $ac21: 9f e5 60 63
	cpy $6363                ; $ac25: cc 63 63
	beq $ac2f                ; $ac28: f0 05
loc_ac2a:
	eor $e6                  ; $ac2a: 45 e6
	eor $e5                  ; $ac2c: 45 e5
	sbc ($45),y              ; $ac2e: f1 45
	inc $45                  ; $ac30: e6 45
	ldx $ae09                ; $ac32: ae 09 ae
	ora #$e5                 ; $ac35: 09 e5
	eor $45                  ; $ac37: 45 45
	dec $45                  ; $ac39: c6 45
	eor $c6                  ; $ac3b: 45 c6
	inc $42                  ; $ac3d: e6 42
	eor ($60),y              ; $ac3f: 51 60
	plx                      ; $ac41: fa
	sta $41d2ab,x            ; $ac42: 9f ab d2 41
	nop                      ; $ac46: ea
	and [$e2]                ; $ac47: 27 e2
	cmp $d4                  ; $ac49: c5 d4
	rti                      ; $ac4b: 40

; === Block $ac2f-$ac35 (Code) ===
loc_ac2f:
	eor $e6                  ; $ac2f: 45 e6
	eor $ae                  ; $ac31: 45 ae
	ora #$ae                 ; $ac33: 09 ae

; === Block $ad0c-$ad1e (Code) ===
loc_ad0c:
	dec $e6                  ; $ad0c: c6 e6
	stz $e5ab                ; $ad0e: 9c ab e5
	asl $fa                  ; $ad11: 06 fa
	lsr                      ; $ad13: 4a
	ldy $e6d2                ; $ad14: ac d2 e6
	pei $80                  ; $ad17: d4 80
	sbc $c5,s                ; $ad19: e3 c5
	cpx $04                  ; $ad1b: e4 04
	nop                      ; $ad1d: ea

; === Block $ad1a-$ad84 (Code) ===
loc_ad1a:
	cmp $e4                  ; $ad1a: c5 e4
	tsb $ea                  ; $ad1c: 04 ea
	and $51                  ; $ad1e: 25 51
	nop                      ; $ad20: ea
	jsl $8d8d8d              ; $ad21: 22 8d 8d 8d
loc_ad25:
	sta $f08d                ; $ad25: 8d 8d f0
	cop #$f0                 ; $ad28: 02 f0
	ora $8d                  ; $ad2a: 05 8d
	sbc ($f1),y              ; $ad2c: f1 f1
	nop                      ; $ad2e: ea
	and $51                  ; $ad2f: 25 51
	nop                      ; $ad31: ea
	jsl $8d0df0              ; $ad32: 22 f0 0d 8d
loc_ad36:
	sbc ($ea),y              ; $ad36: f1 ea
	and $51                  ; $ad38: 25 51
	eor ($51),y              ; $ad3a: 51 51
	adc $c66f6f              ; $ad3c: 6f 6f 6f c6
	sbc $33                  ; $ad40: e5 33
	inc $f0                  ; $ad42: e6 f0
	ora $ea,s                ; $ad44: 03 ea
	and $51                  ; $ad46: 25 51
	nop                      ; $ad48: ea
	jsl $8d16f0              ; $ad49: 22 f0 16 8d
loc_ad4d:
	sbc ($f1),y              ; $ad4d: f1 f1
	nop                      ; $ad4f: ea
	and $f0                  ; $ad50: 25 f0
	ora $72                  ; $ad52: 05 72
	cpy $c4f1                ; $ad54: cc f1 c4
	cpy $24e5                ; $ad57: cc e5 24
	dec $24                  ; $ad5a: c6 24
	iny                      ; $ad5c: c8
	sbc $05                  ; $ad5d: e5 05
	plx                      ; $ad5f: fa
	tcs                      ; $ad60: 1b
	lda $ffd2                ; $ad61: ad d2 ff
	pei $80                  ; $ad64: d4 80
	nop                      ; $ad66: ea
	and ($e3,x)              ; $ad67: 21 e3
	cpx $04                  ; $ad69: e4 04
	nop                      ; $ad6b: ea
	and ($b2,x)              ; $ad6c: 21 b2
	lda $aeaeae              ; $ad6e: af ae ae ae
loc_ad72:
	ldx $f0ae                ; $ad72: ae ae f0
	cop #$f0                 ; $ad75: 02 f0
	ora ($ea,x)              ; $ad77: 01 ea
	jsr $9090                ; $ad79: 20 90 90
loc_ad7c:
	bcc $ad68                ; $ad7c: 90 ea
loc_ad7e:
	and ($ae,x)              ; $ad7e: 21 ae
loc_ad80:
	nop                      ; $ad80: ea
	jsr $9090                ; $ad81: 20 90 90

; === Block $ad24-$ad2e (Code) ===
loc_ad24:
	sta $8d8d                ; $ad24: 8d 8d 8d
	beq $ad2b                ; $ad27: f0 02
loc_ad29:
	beq $ad30                ; $ad29: f0 05
loc_ad2b:
	sta $f1f1                ; $ad2b: 8d f1 f1

; === Block $ad30-$ad32 (Code) ===
loc_ad30:
	eor ($ea),y              ; $ad30: 51 ea

; === Block $ad68-$ad6c (Code) ===
loc_ad68:
	sbc $e4,s                ; $ad68: e3 e4
	tsb $ea                  ; $ad6a: 04 ea

; === Block $ad76-$ad79 (Code) ===
loc_ad76:
	beq $ad79                ; $ad76: f0 01
loc_ad78:
	nop                      ; $ad78: ea

; === Block $ad7a-$ad7c (Code) ===
loc_ad7a:
	bcc $ad0c                ; $ad7a: 90 90

; === Block $ad84-$ad8a (Code) ===
loc_ad84:
	sbc ($f1),y              ; $ad84: f1 f1
	nop                      ; $ad86: ea
	jsr $9090                ; $ad87: 20 90 90

; === Block $ad88-$ad9f (Code) ===
loc_ad88:
	bcc $ad1a                ; $ad88: 90 90
loc_ad8a:
	bcc $ad76                ; $ad8a: 90 ea
loc_ad8c:
	and ($ae,x)              ; $ad8c: 21 ae
loc_ad8e:
	nop                      ; $ad8e: ea
	jsr $9090                ; $ad8f: 20 90 90
loc_ad92:
	bcc $ad24                ; $ad92: 90 90
loc_ad94:
	bcc $ad80                ; $ad94: 90 ea
loc_ad96:
	and ($ae,x)              ; $ad96: 21 ae
	ldx $f0ae                ; $ad98: ae ae f0
	ora ($f0,x)              ; $ad9b: 01 f0
	ora ($ea,x)              ; $ad9d: 01 ea

; === Block $ad9c-$adac (Code) ===
loc_ad9c:
	beq $ad9f                ; $ad9c: f0 01
loc_ad9e:
	nop                      ; $ad9e: ea
loc_ad9f:
	jsr $9090                ; $ad9f: 20 90 90
loc_ada2:
	bcc $ad8e                ; $ada2: 90 ea
loc_ada4:
	and ($ae,x)              ; $ada4: 21 ae
	nop                      ; $ada6: ea
	jsr $9090                ; $ada7: 20 90 90
loc_adaa:
	sbc ($f1),y              ; $adaa: f1 f1

; === Block $adab-$adad (Code) ===
loc_adab:
	sbc ($ea),y              ; $adab: f1 ea

; === Block $adac-$adad (Code) ===
loc_adac:
	nop                      ; $adac: ea

; === Block $adad-$ae69 (Code) ===
loc_adad:
	jsr $9090                ; $adad: 20 90 90
loc_adb0:
	bcc $ad9c                ; $adb0: 90 ea
loc_adb2:
	and ($ae,x)              ; $adb2: 21 ae
	nop                      ; $adb4: ea
	jsr $9090                ; $adb5: 20 90 90
loc_adb8:
	beq $adbc                ; $adb8: f0 02
loc_adba:
	bcc $ad88                ; $adba: 90 cc
loc_adbc:
	sbc ($ea),y              ; $adbc: f1 ea
	jsr $8d8d                ; $adbe: 20 8d 8d
loc_adc1:
	sta $21ea                ; $adc1: 8d ea 21
	lda ($af),y              ; $adc4: b1 af
	cpy #$ea                 ; $adc6: c0 ea
	and $e5,s                ; $adc8: 23 e5
	lsr $47,x                ; $adca: 56 47
	and #$09                 ; $adcc: 29 09
	inc $ea                  ; $adce: e6 ea
	and ($ab,x)              ; $add0: 21 ab
	beq $add6                ; $add2: f0 02
loc_add4:
	beq $add7                ; $add4: f0 01
loc_add6:
	nop                      ; $add6: ea
loc_add7:
	jsr $9090                ; $add7: 20 90 90
loc_adda:
	bcc $adc6                ; $adda: 90 ea
loc_addc:
	and ($ae,x)              ; $addc: 21 ae
	nop                      ; $adde: ea
	jsr $9090                ; $addf: 20 90 90
loc_ade2:
	sbc ($f1),y              ; $ade2: f1 f1
	beq $ade8                ; $ade4: f0 02
loc_ade6:
	nop                      ; $ade6: ea
	jsr $9090                ; $ade7: 20 90 90
loc_adea:
	bcc $add6                ; $adea: 90 ea
loc_adec:
	and ($ae,x)              ; $adec: 21 ae
	nop                      ; $adee: ea
	jsr $9090                ; $adef: 20 90 90
loc_adf2:
	bcc $ad84                ; $adf2: 90 90
loc_adf4:
	bcc $ade0                ; $adf4: 90 ea
loc_adf6:
	and ($ae,x)              ; $adf6: 21 ae
	ldx $f0ae                ; $adf8: ae ae f0
	cop #$f0                 ; $adfb: 02 f0
	ora ($ea,x)              ; $adfd: 01 ea
	jsr $9090                ; $adff: 20 90 90
loc_ae02:
	bcc $adee                ; $ae02: 90 ea
loc_ae04:
	and ($ae,x)              ; $ae04: 21 ae
	nop                      ; $ae06: ea
	jsr $9090                ; $ae07: 20 90 90
loc_ae0a:
	sbc ($f1),y              ; $ae0a: f1 f1
	sbc ($ea),y              ; $ae0c: f1 ea
	jsr $9090                ; $ae0e: 20 90 90
loc_ae11:
	bcc $adfd                ; $ae11: 90 ea
loc_ae13:
	and ($ae,x)              ; $ae13: 21 ae
	nop                      ; $ae15: ea
	jsr $9090                ; $ae16: 20 90 90
loc_ae19:
	bcc $adab                ; $ae19: 90 90
loc_ae1b:
	bcc $ae07                ; $ae1b: 90 ea
loc_ae1d:
	and ($ae,x)              ; $ae1d: 21 ae
	ldx $eaae                ; $ae1f: ae ae ea
	jsr $8d8d                ; $ae22: 20 8d 8d
loc_ae25:
	sta $8d8d                ; $ae25: 8d 8d 8d
	sta $23ea                ; $ae28: 8d ea 23
	sbc $56                  ; $ae2b: e5 56
	eor ($42,s),y            ; $ae2d: 53 42
	wdm #$27                 ; $ae2f: 42 27
	and [$42]                ; $ae31: 27 42
	wdm #$e6                 ; $ae33: 42 e6
	nop                      ; $ae35: ea
	and ($f0,x)              ; $ae36: 21 f0
	asl $ae                  ; $ae38: 06 ae
	sbc ($ea),y              ; $ae3a: f1 ea
	and $47,s                ; $ae3c: 23 47
	and #$ea                 ; $ae3e: 29 ea
	and ($ae,x)              ; $ae40: 21 ae
	ldx $23ea                ; $ae42: ae ea 23
	sbc $47                  ; $ae45: e5 47
	and #$e6                 ; $ae47: 29 e6
	nop                      ; $ae49: ea
	and ($ae,x)              ; $ae4a: 21 ae
	plx                      ; $ae4c: fa
	stz $ad,x                ; $ae4d: 74 ad
	tyx                      ; $ae4f: bb
	ora $63,s                ; $ae50: 03 63
	ldx $aef0                ; $ae52: ae f0 ae
	sty $af,x                ; $ae55: 94 af
	tsb $b0                  ; $ae57: 04 b0
	adc ($b0,s),y            ; $ae59: 73 b0
	bcs $ae0d                ; $ae5b: b0 b0
loc_ae5d:
	cop #$b1                 ; $ae5d: 02 b1
	adc ($b1,s),y            ; $ae5f: 73 b1
	tsb $f8b2                ; $ae61: 0c b2 f8
	cmp $7df3                ; $ae64: cd f3 7d
	sbc [$3c],y              ; $ae67: f7 3c
	brk #$f5                 ; $ae69: 00 f5

; === Block $ade0-$ade2 (Code) ===
loc_ade0:
	bcc $ad72                ; $ade0: 90 90

; === Block $ade8-$adea (Code) ===
loc_ade8:
	bcc $ad7a                ; $ade8: 90 90

; === Block $ae0d-$ae0e (Code) ===
loc_ae0d:
	nop                      ; $ae0d: ea

; === Block $ae86-$b01d (Code) ===
sub_ae86:
	lda $adad                ; $ae86: ad ad ad
	wai                      ; $ae89: cb
sub_ae8a:
	lda $17e5                ; $ae8a: ad e5 17
	rol $f0                  ; $ae8d: 26 f0
	ora [$44]                ; $ae8f: 07 44
	sbc ($f0),y              ; $ae91: f1 f0
	ora $f0f126              ; $ae93: 0f 26 f1 f0
	ora $f0f162              ; $ae97: 0f 62 f1 f0
	ora [$44]                ; $ae9b: 07 44
	sbc ($f0),y              ; $ae9d: f1 f0
	ora [$26]                ; $ae9f: 07 26
	sbc ($e6),y              ; $aea1: f1 e6
	lda $adad                ; $aea3: ad ad ad
	lda $adcb                ; $aea6: ad cb ad
	sbc $17                  ; $aea9: e5 17
	rol $f0                  ; $aeab: 26 f0
	ora [$44]                ; $aead: 07 44
	sbc ($f0),y              ; $aeaf: f1 f0
	ora $f0f126              ; $aeb1: 0f 26 f1 f0
	ora $e6f144              ; $aeb5: 0f 44 f1 e6
	beq $aeca                ; $aeb9: f0 0f
loc_aebb:
	lda $e5f1                ; $aebb: ad f1 e5
	beq $aecf                ; $aebe: f0 0f
loc_aec0:
	ora [$f1],y              ; $aec0: 17 f1
	nop                      ; $aec2: ea
	and [$d2]                ; $aec3: 27 d2
	phy                      ; $aec5: 5a
	beq $aec9                ; $aec6: f0 01
loc_aec8:
	iny                      ; $aec8: c8
loc_aec9:
	and $11,s                ; $aec9: 23 11
	lda $19cb,y              ; $aecb: b9 cb 19
	ora $1917,y              ; $aece: 19 17 19
	ora $1917,y              ; $aed1: 19 17 19
	ora $02f9,y              ; $aed4: 19 f9 02
	inx                      ; $aed7: e8
	ldx $e6c8                ; $aed8: ae c8 e6
	tax                      ; $aedb: aa
	sbc $11                  ; $aedc: e5 11
	lda $19cb,y              ; $aede: b9 cb 19
	ora $1917,y              ; $aee1: 19 17 19
	ora $1917,y              ; $aee4: 19 17 19
sub_aee7:
	ora $00f1,y              ; $aee7: 19 f1 00
	inc $a5                  ; $aeea: e6 a5
	ldy $fa,x                ; $aeec: b4 fa
	bvs $ae9e                ; $aeee: 70 ae
loc_aef0:
	sep #$c8                 ; $aef0: e2 c8
	pei $c0                  ; $aef2: d4 c0
	nop                      ; $aef4: ea
	and #$eb                 ; $aef5: 29 eb
sub_aef7:
	ora $28d2                ; $aef7: 0d d2 28
	cpx $05                  ; $aefa: e4 05
	beq $af0d                ; $aefc: f0 0f
loc_aefe:
	rol $f1                  ; $aefe: 26 f1
	inc $f0                  ; $af00: e6 f0
	ora $f0f1ad              ; $af02: 0f ad f1 f0
	ora [$62]                ; $af06: 07 62
	sbc ($f0),y              ; $af08: f1 f0
	ora [$ad],y              ; $af0a: 17 ad
	sbc ($e5),y              ; $af0c: f1 e5
	beq $af1f                ; $af0e: f0 0f
loc_af10:
	rol $f1                  ; $af10: 26 f1
	inc $f0                  ; $af12: e6 f0
	ora $f0f1ad              ; $af14: 0f ad f1 f0
	ora [$62]                ; $af18: 07 62
sub_af1a:
	sbc ($f0),y              ; $af1a: f1 f0
	ora [$ad],y              ; $af1c: 17 ad
	sbc ($e5),y              ; $af1e: f1 e5
	beq $af31                ; $af20: f0 0f
loc_af22:
	ora [$f1],y              ; $af22: 17 f1
	inc $f0                  ; $af24: e6 f0
	ora $f0f171              ; $af26: 0f 71 f1 f0
	ora $f18f                ; $af2a: 0d 8f f1
	pei $80                  ; $af2d: d4 80
	nop                      ; $af2f: ea
	and [$d2]                ; $af30: 27 d2
	brl $5f1b                ; $af32: 82 e6 af
	sbc $19                  ; $af35: e5 19
	plp                      ; $af37: 28
	lsr $5f                  ; $af38: 46 5f
sub_af3a:
	ldx $64cd,y              ; $af3a: be cd 64
	stz $64                  ; $af3d: 64 64
	cmp $28e5                ; $af3f: cd e5 28
	cmp $cd28                ; $af42: cd 28 cd
	ora $19cd,y              ; $af45: 19 cd 19
	cmp $afe6                ; $af48: cd e6 af
	cmp $cdaf                ; $af4b: cd af cd
	sta ($cd),y              ; $af4e: 91 cd
	sta ($cd),y              ; $af50: 91 cd
	brl $3222                ; $af52: 82 cd 82
	cmp $cd73                ; $af55: cd 73 cd
	eor $b83e23,x            ; $af58: 5f 23 3e b8
	lsr $46                  ; $af5c: 46 46
	lsr $cd                  ; $af5e: 46 cd
	sta ($cd),y              ; $af60: 91 cd
	brl $12332               ; $af62: 82 cd 73
	cmp $e65e                ; $af65: cd 5e e6
	lda $5ee5af              ; $af68: af af e5 5e
	inc $af                  ; $af6c: e6 af
	lda $e65ee5              ; $af6e: af e5 5e e6
	lda $64e5af              ; $af72: af af e5 64
	cmp $afe6                ; $af76: cd e6 af
	cmp $19e5                ; $af79: cd e5 19
	cmp $cd28                ; $af7c: cd 28 cd
	tsb $e6                  ; $af7f: 04 e6
	adc ($e5,s),y            ; $af81: 73 e5
	asl                      ; $af83: 0a
	lsr $cd                  ; $af84: 46 cd
	asl                      ; $af86: 0a
	lsr $73                  ; $af87: 46 73
	cmp $7346                ; $af89: cd 46 73
	lsr $6464,x              ; $af8c: 5e 64 64
	jml $f2fab4              ; $af8f: 5c b4 fa f2
	ldx $ebe2                ; $af93: ae e2 eb
	ora $27eac8              ; $af96: 0f c8 ea 27
	cmp ($78)                ; $af9a: d2 78
	pei $c0                  ; $af9c: d4 c0
	beq $afad                ; $af9e: f0 0d
loc_afa0:
	cmp $f1,s                ; $afa0: c3 f1
	cpx $04                  ; $afa2: e4 04
	tax                      ; $afa4: aa
	ldx $e5cd,y              ; $afa5: be cd e5
	trb $be                  ; $afa8: 14 be
	cmp $e623                ; $afaa: cd 23 e6
loc_afad:
	lda [$cb]                ; $afad: a7 cb
loc_afaf:
	lda $19e5cd              ; $afaf: af cd e5 19
	cmp $cd28                ; $afb3: cd 28 cd
	inc $8e                  ; $afb6: e6 8e
	cmp $cd46                ; $afb8: cd 46 cd
	stx $afcd                ; $afbb: 8e cd af
	cmp $14e5                ; $afbe: cd e5 14
	ldy $e6,x                ; $afc1: b4 e6
	ror $8ccb                ; $afc3: 6e cb 8c
	wai                      ; $afc6: cb
	tax                      ; $afc7: aa
	ldx $bc,y                ; $afc8: b6 bc
	lda $19e5cd              ; $afca: af cd e5 19
	cmp $cd28                ; $afce: cd 28 cd
	and $cd                  ; $afd1: 25 cd
	lsr $cd                  ; $afd3: 46 cd
	ora ($bc),y              ; $afd5: 11 bc
	ldy $ea,x                ; $afd7: b4 ea
	and [$d2]                ; $afd9: 27 d2
	phy                      ; $afdb: 5a
	inc $f0                  ; $afdc: e6 f0
	ora ($c8,x)              ; $afde: 01 c8
	tax                      ; $afe0: aa
	bit #$b9                 ; $afe1: 89 b9
	wai                      ; $afe3: cb
	sta ($91),y              ; $afe4: 91 91
	sta $8f9191              ; $afe6: 8f 91 91 8f
	sta ($91),y              ; $afea: 91 91
	sbc $fd02,y              ; $afec: f9 02 fd
	lda $896ec8              ; $afef: af c8 6e 89
	lda $91cb,y              ; $aff3: b9 cb 91
	sta ($8f),y              ; $aff6: 91 8f
	sta ($91),y              ; $aff8: 91 91
	sta $f19191              ; $affa: 8f 91 91 f1
	adc #$5a                 ; $affe: 69 5a
	ldy $fa,x                ; $b000: b4 fa
	tya                      ; $b002: 98
	lda $e280d4              ; $b003: af d4 80 e2
	xba                      ; $b007: eb
	ora $eae6d2              ; $b008: 0f d2 e6 ea
	bit $e4                  ; $b00c: 24 e4
	tsb $af                  ; $b00e: 04 af
	lda $d4afaf              ; $b010: af af af d4
	bra $affa                ; $b014: 80 e4
	tsb $d2                  ; $b016: 04 d2
	sbc $f024ea,x            ; $b018: ff ea 24 f0
	asl                      ; $b01c: 0a
	jmp $71cb                ; $b01d: 4c cb 71

; === Block $ae9e-$aeab (Code) ===
loc_ae9e:
	beq $aea7                ; $ae9e: f0 07
loc_aea0:
	rol $f1                  ; $aea0: 26 f1
	inc $ad                  ; $aea2: e6 ad
	lda $adad                ; $aea4: ad ad ad
loc_aea7:
	wai                      ; $aea7: cb
	lda $17e5                ; $aea8: ad e5 17

; === Block $aeca-$aed8 (Code) ===
loc_aeca:
	ora ($b9),y              ; $aeca: 11 b9
	wai                      ; $aecc: cb
	ora $1719,y              ; $aecd: 19 19 17
	ora $1719,y              ; $aed0: 19 19 17
	ora $f919,y              ; $aed3: 19 19 f9
	cop #$e8                 ; $aed6: 02 e8

; === Block $aecf-$aed1 (Code) ===
loc_aecf:
	ora [$19],y              ; $aecf: 17 19

; === Block $af0d-$af18 (Code) ===
loc_af0d:
	sbc $f0                  ; $af0d: e5 f0
	ora $e6f126              ; $af0f: 0f 26 f1 e6
	beq $af24                ; $af13: f0 0f
loc_af15:
	lda $f0f1                ; $af15: ad f1 f0

; === Block $af1f-$af2f (Code) ===
loc_af1f:
	sbc $f0                  ; $af1f: e5 f0
	ora $e6f117              ; $af21: 0f 17 f1 e6
	beq $af36                ; $af25: f0 0f
loc_af27:
	adc ($f1),y              ; $af27: 71 f1
	beq $af38                ; $af29: f0 0d
loc_af2b:
	sta $80d4f1              ; $af2b: 8f f1 d4 80

; === Block $af31-$af35 (Code) ===
loc_af31:
	cmp ($82)                ; $af31: d2 82
	inc $af                  ; $af33: e6 af

; === Block $af36-$af3d (Code) ===
loc_af36:
	ora $4628,y              ; $af36: 19 28 46
	eor $64cdbe,x            ; $af39: 5f be cd 64

; === Block $af56-$af58 (Code) ===
sub_af56:
	adc ($cd,s),y            ; $af56: 73 cd

; === Block $afb7-$afc1 (Code) ===
sub_afb7:
	stx $46cd                ; $afb7: 8e cd 46
	cmp $cd8e                ; $afba: cd 8e cd
	lda $14e5cd              ; $afbd: af cd e5 14

; === Block $aff0-$b000 (Code) ===
sub_aff0:
	iny                      ; $aff0: c8
	ror $b989                ; $aff1: 6e 89 b9
	wai                      ; $aff4: cb
	sta ($91),y              ; $aff5: 91 91
	sta $8f9191              ; $aff7: 8f 91 91 8f
	sta ($91),y              ; $affb: 91 91
	sbc ($69),y              ; $affd: f1 69
	phy                      ; $afff: 5a

; === Block $b017-$b01c (Code) ===
sub_b017:
	cmp ($ff)                ; $b017: d2 ff
	nop                      ; $b019: ea
	bit $f0                  ; $b01a: 24 f0

; === Block $b078-$b0a1 (Code) ===
sub_b078:
	iny                      ; $b078: c8
	pei $80                  ; $b079: d4 80
	beq $b07e                ; $b07b: f0 01
loc_b07d:
	cpx $03                  ; $b07d: e4 03
	lda #$e5                 ; $b07f: a9 e5
	jsl $7887aa              ; $b081: 22 aa 87 78
loc_b085:
	adc #$e6                 ; $b085: 69 e6
	lda #$e5                 ; $b087: a9 e5
	jsl $41798c              ; $b089: 22 8c 79 41
loc_b08d:
	adc #$b4                 ; $b08d: 69 b4
	sbc ($3c),y              ; $b08f: f1 3c
	sta [$a9]                ; $b091: 87 a9
	jsl $87b46e              ; $b093: 22 6e b4 87
loc_b097:
	ldy $e6,x                ; $b097: b4 e6
	lda $b4                  ; $b099: a5 b4
	lda $b4                  ; $b09b: a5 b4
	lda $b4                  ; $b09d: a5 b4
	sbc $e5                  ; $b09f: e5 e5
	rti                      ; $b0a1: 40

; === Block $b07e-$b085 (Code) ===
loc_b07e:
	ora $a9,s                ; $b07e: 03 a9
	sbc $22                  ; $b080: e5 22
	tax                      ; $b082: aa
	sta [$78]                ; $b083: 87 78

; === Block $b119-$b238 (Code) ===
sub_b119:
	bit $448c,x              ; $b119: 3c 8c 44
	sty $e5ad                ; $b11c: 8c ad e5
	ora [$26],y              ; $b11f: 17 26
	inc $a5                  ; $b121: e6 a5
	clv                      ; $b123: b8
	ror $cd73                ; $b124: 6e 73 cd
	sta ($cd),y              ; $b127: 91 cd
	lda $beaacd              ; $b129: af cd aa be
	cmp $bc89                ; $b12d: cd 89 bc
	lda $ea,x                ; $b130: b5 ea
	and #$d2                 ; $b132: 29 d2
	ldy #$eb                 ; $b134: a0 eb
	ora $e580d4              ; $b136: 0f d4 80 e5
	plp                      ; $b13a: 28
	lsr $64                  ; $b13b: 46 64
	adc ($5e,s),y            ; $b13d: 73 5e
	inc $af                  ; $b13f: e6 af
	cmp $b9a7                ; $b141: cd a7 b9
	sbc $14                  ; $b144: e5 14
	and $41,s                ; $b146: 23 41
	stz $46                  ; $b148: 64 46
	plp                      ; $b14a: 28
	ora $cd28,y              ; $b14b: 19 28 cd
	stz $cd                  ; $b14e: 64 cd
	rol $8bb6,x              ; $b150: 3e b6 8b
	brl $10fc9               ; $b153: 82 73 5e
	inc $62                  ; $b156: e6 62
	tax                      ; $b158: aa
	ldx $19e5,y              ; $b159: be e5 19
	plp                      ; $b15c: 28
	lsr $5f                  ; $b15d: 46 5f
	ldx $2846,y              ; $b15f: be 46 28
	ora $ade6,y              ; $b162: 19 e6 ad
	sta $406271              ; $b165: 8f 71 62 40
sub_b169:
	phb                      ; $b169: 8b
	lda $08e5                ; $b16a: ad e5 08
	inc $a5                  ; $b16d: e6 a5
	ldy $fa,x                ; $b16f: b4 fa
	tsb $b1                  ; $b171: 04 b1
	pei $80                  ; $b173: d4 80
	sep #$e4                 ; $b175: e2 e4
	tsb $c8                  ; $b177: 04 c8
	nop                      ; $b179: ea
	and ($f0,x)              ; $b17a: 21 f0
	tsb $f0                  ; $b17c: 04 f0
	ora ($d2,x)              ; $b17e: 01 d2
	sbc $82d2ad,x            ; $b180: ff ad d2 82
	lda $f1adaf              ; $b184: af af ad f1
	cmp ($ff)                ; $b188: d2 ff
	lda $82d2                ; $b18a: ad d2 82
	lda sub_01f0             ; $b18d: ad f0 01
	cmp ($ff)                ; $b190: d2 ff
	lda $82d2                ; $b192: ad d2 82
	lda $f1adaf              ; $b195: af af ad f1
	cmp ($ff)                ; $b199: d2 ff
	lda $af82d2              ; $b19b: af d2 82 af
	lda sub_01f0             ; $b19f: ad f0 01
	cmp ($ff)                ; $b1a2: d2 ff
	lda $82d2                ; $b1a4: ad d2 82
	lda $f1adaf              ; $b1a7: af af ad f1
	cmp ($ff)                ; $b1ab: d2 ff
	lda $82d2                ; $b1ad: ad d2 82
	lda sub_01f0             ; $b1b0: ad f0 01
	cmp ($ff)                ; $b1b3: d2 ff
	lda $82d2                ; $b1b5: ad d2 82
	lda $f1adaf              ; $b1b8: af af ad f1
	cmp ($ff)                ; $b1bc: d2 ff
	lda $af82d2              ; $b1be: af d2 82 af
	lda $f0f1af              ; $b1c2: af af f1 f0
	ora ($d2,x)              ; $b1c6: 01 d2
	sbc $82d2ad,x            ; $b1c8: ff ad d2 82
	lda $f1adaf              ; $b1cc: af af ad f1
	cmp ($ff)                ; $b1d0: d2 ff
	lda $82d2                ; $b1d2: ad d2 82
	lda sub_01f0             ; $b1d5: ad f0 01
	cmp ($ff)                ; $b1d8: d2 ff
	lda $82d2                ; $b1da: ad d2 82
	lda $f1adaf              ; $b1dd: af af ad f1
	cmp ($ff)                ; $b1e1: d2 ff
	lda $af82d2              ; $b1e3: af d2 82 af
	lda $08f0                ; $b1e7: ad f0 08
	nop                      ; $b1ea: ea
sub_b1eb:
	bit $d2                  ; $b1eb: 24 d2
	sbc $21ea53,x            ; $b1ed: ff 53 ea 21
	cmp ($b4)                ; $b1f1: d2 b4
	lda $d2adaf              ; $b1f3: af af ad d2
	sbc $b4d2ad,x            ; $b1f7: ff ad d2 b4
	lda $ffd2af              ; $b1fb: af af d2 ff
	lda $b4d2                ; $b1ff: ad d2 b4
	lda $24ea                ; $b202: ad ea 24
	cmp ($ff)                ; $b205: d2 ff
	adc ($f1),y              ; $b207: 71 f1
	plx                      ; $b209: fa
	adc $f6b1,y              ; $b20a: 79 b1 f6
	cop #$20                 ; $b20d: 02 20
	lda ($60)                ; $b20f: b2 60
	lda ($f0)                ; $b211: b2 f0
	lda ($12)                ; $b213: b2 12
	lda ($6e,s),y            ; $b215: b3 6e
	lda ($51,s),y            ; $b217: b3 51
	ldy $70,x                ; $b219: b4 70
sub_b21b:
	ldy $8f,x                ; $b21b: b4 8f
	ldy $04,x                ; $b21d: b4 04
	lda $f8,x                ; $b21f: b5 f8
	sbc $f76ef3,x            ; $b221: ff f3 6e f7
	bvc $b227                ; $b225: 50 00
loc_b227:
	sbc $5a,x                ; $b227: f5 5a
	nop                      ; $b229: ea
	rol $e2                  ; $b22a: 26 e2
	cmp ($3c)                ; $b22c: d2 3c
	pei $b0                  ; $b22e: d4 b0
	xba                      ; $b230: eb
	ora $09ee                ; $b231: 0d ee 09
	beq $b237                ; $b234: f0 01
loc_b236:
	cpx $04                  ; $b236: e4 04
	brk #$b4                 ; $b238: 00 b4

; === Block $b172-$b179 (Code) ===
sub_b172:
	lda ($d4),y              ; $b172: b1 d4
	bra $b158                ; $b174: 80 e2
	cpx $04                  ; $b176: e4 04
	iny                      ; $b178: c8

; === Block $b1a3-$b1a7 (Code) ===
loc_b1a3:
	sbc $82d2ad,x            ; $b1a3: ff ad d2 82

; === Block $b1ae-$b1b0 (Code) ===
sub_b1ae:
	cmp ($82)                ; $b1ae: d2 82

; === Block $b1af-$b1b8 (Code) ===
loc_b1af:
	brl $a25f                ; $b1af: 82 ad f0
	ora ($d2,x)              ; $b1b2: 01 d2
loc_b1b4:
	sbc $82d2ad,x            ; $b1b4: ff ad d2 82

; === Block $b1b1-$b1b3 (Code) ===
loc_b1b1:
	beq $b1b4                ; $b1b1: f0 01

; === Block $b1b6-$b1b8 (Code) ===
sub_b1b6:
	cmp ($82)                ; $b1b6: d2 82

; === Block $b237-$b24c (Code) ===
loc_b237:
	tsb $00                  ; $b237: 04 00
	ldy $1e,x                ; $b239: b4 1e
	ldy $f1,x                ; $b23b: b4 f1
	sbc $d2                  ; $b23d: e5 d2
	lsr $d4                  ; $b23f: 46 d4
	bra $b22e                ; $b241: 80 eb
	ora $08ee                ; $b243: 0d ee 08
	beq $b249                ; $b246: f0 01
loc_b248:
	lda $b6                  ; $b248: a5 b6
	bit #$69                 ; $b24a: 89 69

; === Block $b249-$b256 (Code) ===
loc_b249:
	ldx $89,y                ; $b249: b6 89
	adc #$b6                 ; $b24b: 69 b6
	eor $b63c                ; $b24d: 4d 3c b6
	jsr $021e                ; $b250: 20 1e 02
loc_b253:
	jsr $3cf1                ; $b253: 20 f1 3c

; === Block $b24c-$b3a4 (Code) ===
sub_b24c:
	ldx $4d,y                ; $b24c: b6 4d
	bit $20b6,x              ; $b24e: 3c b6 20
	asl $2002,x              ; $b251: 1e 02 20
	sbc ($3c),y              ; $b254: f1 3c
	phk                      ; $b256: 4b
	asl $002d,x              ; $b257: 1e 2d 00
	ora $fab43c              ; $b25a: 0f 3c b4 fa
	bit $d2b2                ; $b25e: 2c b2 d2
	bit $64d4,x              ; $b261: 3c d4 64
	nop                      ; $b264: ea
	ora ($e2,x)              ; $b265: 01 e2
	xba                      ; $b267: eb
	phd                      ; $b268: 0b
	cpx $ed01                ; $b269: ec 01 ed
	cop #$ee                 ; $b26c: 02 ee
	ora ($f0)                ; $b26e: 12 f0
	ora $e4                  ; $b270: 05 e4
	ora $ad,s                ; $b272: 03 ad
	sbc $08                  ; $b274: e5 08
	mvp $71,$ad              ; $b276: 44 71 ad
	adc ($44),y              ; $b279: 71 44
	php                      ; $b27b: 08
	inc $ad                  ; $b27c: e6 ad
	sbc $08                  ; $b27e: e5 08
	mvp $71,$ad              ; $b280: 44 71 ad
	adc ($44),y              ; $b283: 71 44
	php                      ; $b285: 08
	mvp $53,$8f              ; $b286: 44 53 8f
	sbc $08                  ; $b289: e5 08
	mvp $08,$e6              ; $b28b: 44 08 e6
	sta $534453              ; $b28e: 8f 53 44 53
	sta $4408e5              ; $b292: 8f e5 08 44
	php                      ; $b296: 08
	inc $8f                  ; $b297: e6 8f
	eor ($f1,s),y            ; $b299: 53 f1
	inc $ad                  ; $b29b: e6 ad
sub_b29d:
	sbc $26                  ; $b29d: e5 26
	per $6031                ; $b29f: 62 8f ad
	sta $e62662              ; $b2a2: 8f 62 26 e6
	stz $26e5,x              ; $b2a6: 9e e5 26
	eor ($80,s),y            ; $b2a9: 53 80
	stz $5380,x              ; $b2ab: 9e 80 53
	rol $e6                  ; $b2ae: 26 e6
	sta $4408e5              ; $b2b0: 8f e5 08 44
	adc ($8f),y              ; $b2b4: 71 8f
	adc ($44),y              ; $b2b6: 71 44
	php                      ; $b2b8: 08
	inc $80                  ; $b2b9: e6 80
	sbc $08                  ; $b2bb: e5 08
	and $62,x                ; $b2bd: 35 62
	bra $b323                ; $b2bf: 80 62
	and $08,x                ; $b2c1: 35 08
	inc $71                  ; $b2c3: e6 71
	stz $26e5,x              ; $b2c5: 9e e5 26
	eor ($71,s),y            ; $b2c8: 53 71
	eor ($26,s),y            ; $b2ca: 53 26
	inc $9e                  ; $b2cc: e6 9e
	adc ($9e),y              ; $b2ce: 71 9e
	sbc $17                  ; $b2d0: e5 17
	eor ($71,s),y            ; $b2d2: 53 71
	eor ($17,s),y            ; $b2d4: 53 17
	inc $9e                  ; $b2d6: e6 9e
	sbc $44                  ; $b2d8: e5 44
	eor ($8f,s),y            ; $b2da: 53 8f
	sbc $08                  ; $b2dc: e5 08
	mvp $08,$e6              ; $b2de: 44 08 e6
	sta $534453              ; $b2e1: 8f 53 44 53
	sta $4408e5              ; $b2e5: 8f e5 08 44
	php                      ; $b2e9: 08
	inc $8f                  ; $b2ea: e6 8f
	eor ($fa,s),y            ; $b2ec: 53 fa
	adc $4bd2b2              ; $b2ee: 6f b2 d2 4b
	pei $50                  ; $b2f2: d4 50
	nop                      ; $b2f4: ea
	rol $e2                  ; $b2f5: 26 e2
	xba                      ; $b2f7: eb
	ora $f009ee              ; $b2f8: 0f ee 09 f0
	ora $e4                  ; $b2fc: 05 e4
	cop #$87                 ; $b2fe: 02 87
	ldy $e5,x                ; $b300: b4 e5
	asl $f1b4,x              ; $b302: 1e b4 f1
	inc $a5                  ; $b305: e6 a5
	stx $87,y                ; $b307: 96 87
	sei                      ; $b309: 78
	adc #$69                 ; $b30a: 69 69
	sbc $1e                  ; $b30c: e5 1e
	ldy $fa,x                ; $b30e: b4 fa
	xce                      ; $b310: fb
	lda ($e2)                ; $b311: b2 e2
	pei $90                  ; $b313: d4 90
	nop                      ; $b315: ea
	and #$f0                 ; $b316: 29 f0
	ora $d2                  ; $b318: 05 d2
	phk                      ; $b31a: 4b
	cmp ($ff,s),y            ; $b31b: d3 ff
	asl                      ; $b31d: 0a
	cpx $04                  ; $b31e: e4 04
	lda $08e5                ; $b320: ad e5 08
loc_b323:
	inc $ad                  ; $b323: e6 ad
	sbc $08                  ; $b325: e5 08
	inc $ad                  ; $b327: e6 ad
sub_b329:
	sbc $08                  ; $b329: e5 08
	inc $ad                  ; $b32b: e6 ad
	sbc $08                  ; $b32d: e5 08
	inc $ad                  ; $b32f: e6 ad
	sbc $08                  ; $b331: e5 08
	inc $ad                  ; $b333: e6 ad
	sbc $08                  ; $b335: e5 08
	inc $ad                  ; $b337: e6 ad
	sbc $08                  ; $b339: e5 08
	inc $ad                  ; $b33b: e6 ad
	sbc $08                  ; $b33d: e5 08
	cmp ($4b)                ; $b33f: d2 4b
	cmp ($ff,s),y            ; $b341: d3 ff
	asl                      ; $b343: 0a
	mvp $53,$44              ; $b344: 44 53 44
	eor ($44,s),y            ; $b347: 53 44
	eor ($44,s),y            ; $b349: 53 44
sub_b34b:
	eor ($44,s),y            ; $b34b: 53 44
	eor ($44,s),y            ; $b34d: 53 44
	eor ($44,s),y            ; $b34f: 53 44
	eor ($44,s),y            ; $b351: 53 44
	eor ($f1,s),y            ; $b353: 53 f1
	cmp ($3c)                ; $b355: d2 3c
	pei $c0                  ; $b357: d4 c0
	nop                      ; $b359: ea
	rol $eb                  ; $b35a: 26 eb
	ora $09ee                ; $b35c: 0d ee 09
	inc $1e                  ; $b35f: e6 1e
	asl $0000,x              ; $b361: 1e 00 00
	inc $96                  ; $b364: e6 96
	stx $e5,y                ; $b366: 96 e5
	asl $efb4,x              ; $b368: 1e b4 ef
	plx                      ; $b36b: fa
sub_b36c:
	ora ($b3,s),y            ; $b36c: 13 b3
	pei $80                  ; $b36e: d4 80
	cpx $05                  ; $b370: e4 05
	cmp ($ff)                ; $b372: d2 ff
	nop                      ; $b374: ea
	bit $05                  ; $b375: 24 05
	cmp ($c8)                ; $b377: d2 c8
	nop                      ; $b379: ea
	jsl $ffd205              ; $b37a: 22 05 d2 ff
loc_b37e:
	nop                      ; $b37e: ea
	and ($ed,x)              ; $b37f: 21 ed
	ora [$ee]                ; $b381: 07 ee
	ora $ef41,y              ; $b383: 19 41 ef
	cmp ($50)                ; $b386: d2 50
	nop                      ; $b388: ea
	jsr $d205                ; $b389: 20 05 d2
loc_b38c:
	ldy $ea,x                ; $b38c: b4 ea
	jsr $d205                ; $b38e: 20 05 d2
loc_b391:
	iny                      ; $b391: c8
	nop                      ; $b392: ea
	jsl $ffd205              ; $b393: 22 05 d2 ff
loc_b397:
	nop                      ; $b397: ea
	and ($ed,x)              ; $b398: 21 ed
	ora [$ee]                ; $b39a: 07 ee
	ora $ef41,y              ; $b39c: 19 41 ef
	cmp ($c8)                ; $b39f: d2 c8
	nop                      ; $b3a1: ea
	and $d4,s                ; $b3a2: 23 d4
	rti                      ; $b3a4: 40

; === Block $b2e6-$b2f2 (Code) ===
sub_b2e6:
	sbc $08                  ; $b2e6: e5 08
	mvp $08,$e6              ; $b2e8: 44 08 e6
sub_b2eb:
	sta $6ffa53              ; $b2eb: 8f 53 fa 6f
	lda ($d2)                ; $b2ef: b2 d2
	phk                      ; $b2f1: 4b

; === Block $b338-$b33b (Code) ===
sub_b338:
	lda $08e5                ; $b338: ad e5 08

; === Block $b37b-$b381 (Code) ===
sub_b37b:
	ora $d2                  ; $b37b: 05 d2
	sbc $ed21ea,x            ; $b37d: ff ea 21 ed

; === Block $b418-$b43b (Code) ===
sub_b418:
	cmp ($b4)                ; $b418: d2 b4
	nop                      ; $b41a: ea
	jsr $d205                ; $b41b: 20 05 d2
loc_b41e:
	iny                      ; $b41e: c8
	nop                      ; $b41f: ea
	jsl $ffd205              ; $b420: 22 05 d2 ff
loc_b424:
	nop                      ; $b424: ea
	and ($ed,x)              ; $b425: 21 ed
	ora [$ee]                ; $b427: 07 ee
	ora $ef44,y              ; $b429: 19 44 ef
	cmp ($ff)                ; $b42c: d2 ff
	nop                      ; $b42e: ea
	and ($ed,x)              ; $b42f: 21 ed
	ora [$ee]                ; $b431: 07 ee
	ora $ef44,y              ; $b433: 19 44 ef
	cmp ($c8)                ; $b436: d2 c8
	nop                      ; $b438: ea
	and $d4,s                ; $b439: 23 d4
	rti                      ; $b43b: 40

; === Block $b608-$b62d (Code) ===
loc_b608:
	wai                      ; $b608: cb
	plx                      ; $b609: fa
	cmp $b5                  ; $b60a: c5 b5
	cmp ($4b)                ; $b60c: d2 4b
	pei $c0                  ; $b60e: d4 c0
	nop                      ; $b610: ea
	rol                      ; $b611: 2a
	sep #$c3                 ; $b612: e2 c3
	cmp $c3,s                ; $b614: c3 c3
	cmp $c3,s                ; $b616: c3 c3
	cmp $e4,s                ; $b618: c3 e4
	tsb $82                  ; $b61a: 04 82
	adc ($64,s),y            ; $b61c: 73 64
	eor $3e,x                ; $b61e: 55 3e
	eor $45                  ; $b620: 45 45
	eor $8c                  ; $b622: 45 8c
	sbc $24                  ; $b624: e5 24
	inc                      ; $b626: 1a
	phd                      ; $b627: 0b
	inc $a7                  ; $b628: e6 a7
	rol $508c,x              ; $b62a: 3e 8c 50
	jmp ($cd46,x)            ; $b62d: 7c 46 cd

; === Block $b731-$b734 (Code) ===
loc_b731:
	nop                      ; $b731: ea
	bit $e2                  ; $b732: 24 e2

; === Block $b734-$b73c (Code) ===
loc_b734:
	cmp $c3,s                ; $b734: c3 c3
	cmp $c3,s                ; $b736: c3 c3
	cmp $c3,s                ; $b738: c3 c3
	cpx $04                  ; $b73a: e4 04

; === Block $b73c-$b793 (Code) ===
sub_b73c:
	beq $b740                ; $b73c: f0 02
loc_b73e:
	eor $504d                ; $b73e: 4d 4d 50
	bvc $b734                ; $b741: 50 f1
loc_b743:
	eor $504d                ; $b743: 4d 4d 50
	eor ($56),y              ; $b746: 51 56
	lsr $50,x                ; $b748: 56 50
	bvc $b79c                ; $b74a: 50 50
loc_b74c:
	and [$27]                ; $b74c: 27 27
	and [$6e]                ; $b74e: 27 6e
	and [$27]                ; $b750: 27 27
	and [$6e]                ; $b752: 27 6e
	bvc $b7a6                ; $b754: 50 50
loc_b756:
	bvc $b77f                ; $b756: 50 27
loc_b758:
	and [$27]                ; $b758: 27 27
	ror $2727                ; $b75a: 6e 27 27
	and [$6e]                ; $b75d: 27 6e
	bvc $b7b1                ; $b75f: 50 50
loc_b761:
	bvc $b78a                ; $b761: 50 27
loc_b763:
	and [$27]                ; $b763: 27 27
	ror $2727                ; $b765: 6e 27 27
	and [$6e]                ; $b768: 27 6e
	bvc $b7bc                ; $b76a: 50 50
loc_b76c:
	bvc $b795                ; $b76c: 50 27
loc_b76e:
	and [$27]                ; $b76e: 27 27
	ror $2727                ; $b770: 6e 27 27
	and [$71]                ; $b773: 27 71
	adc ($fa),y              ; $b775: 71 fa
	bit $b7,x                ; $b777: 34 b7
	lda ($07,s),y            ; $b779: b3 07
	sta $b2b7                ; $b77b: 8d b7 b2
	clv                      ; $b77e: b8
loc_b77f:
	stz $e5b9                ; $b77f: 9c b9 e5
	tsx                      ; $b782: ba
	stz $bb,x                ; $b783: 74 bb
	phk                      ; $b785: 4b
	ldy $bcc6,x              ; $b786: bc c6 bc
	and [$be],y              ; $b789: 37 be
	rol $f8bf                ; $b78b: 2e bf f8
	jml [$82f3]              ; $b78e: dc f3 82
	sbc [$3c],y              ; $b791: f7 3c
	brk #$f5                 ; $b793: 00 f5

; === Block $b740-$b752 (Code) ===
loc_b740:
	bvc $b792                ; $b740: 50 50
loc_b742:
	sbc ($4d),y              ; $b742: f1 4d
	eor $5150                ; $b744: 4d 50 51
	lsr $56,x                ; $b747: 56 56
	bvc $b79b                ; $b749: 50 50
loc_b74b:
	bvc $b774                ; $b74b: 50 27
loc_b74d:
	and [$27]                ; $b74d: 27 27
	ror $2727                ; $b74f: 6e 27 27

; === Block $b774-$b777 (Code) ===
loc_b774:
	adc ($71),y              ; $b774: 71 71
	plx                      ; $b776: fa

; === Block $b78a-$b78e (Code) ===
loc_b78a:
	ldx $bf2e,y              ; $b78a: be 2e bf
	sed                      ; $b78d: f8

; === Block $b792-$b795 (Code) ===
loc_b792:
	bit $f500,x              ; $b792: 3c 00 f5

; === Block $b795-$b798 (Code) ===
loc_b795:
	bit $80d4,x              ; $b795: 3c d4 80

; === Block $b798-$b7cc (Code) ===
sub_b798:
	sep #$ea                 ; $b798: e2 ea
	plp                      ; $b79a: 28
	cmp ($6e)                ; $b79b: d2 6e
	cpx $04                  ; $b79d: e4 04
	sta $adbc79              ; $b79f: 8f 79 bc ad
	sta [$bc],y              ; $b7a3: 97 bc
	lda $c8ad                ; $b7a5: ad ad c8
	adc ($71),y              ; $b7a8: 71 71
	iny                      ; $b7aa: c8
	beq $b7ae                ; $b7ab: f0 01
loc_b7ad:
	bra $b731                ; $b7ad: 80 82
	brl $6597                ; $b7af: 82 e5 ad
	inc $82                  ; $b7b2: e6 82
	brl $3a39                ; $b7b4: 82 82 82
	sbc $9e                  ; $b7b7: e5 9e
	inc $82                  ; $b7b9: e6 82
	brl $b1a3                ; $b7bb: 82 e5 f9
	cop #$c9                 ; $b7be: 02 c9
	lda [$44],y              ; $b7c0: b7 44
	clv                      ; $b7c2: b8
	jml $f316d6              ; $b7c3: 5c d6 16 f3
	ldy $f1e6,x              ; $b7c7: bc e6 f1
	ora [$b8],y              ; $b7ca: 17 b8
	rti                      ; $b7cc: 40

; === Block $b79c-$b79f (Code) ===
loc_b79c:
	ror $04e4                ; $b79c: 6e e4 04

; === Block $b7a6-$b7ab (Code) ===
loc_b7a6:
	lda $71c8                ; $b7a6: ad c8 71
	adc ($c8),y              ; $b7a9: 71 c8

; === Block $b7ae-$b7b1 (Code) ===
loc_b7ae:
	brl $9d33                ; $b7ae: 82 82 e5

; === Block $b7b1-$b7b4 (Code) ===
loc_b7b1:
	lda $82e6                ; $b7b1: ad e6 82

; === Block $b7bc-$b7be (Code) ===
loc_b7bc:
	sbc $f9                  ; $b7bc: e5 f9

; === Block $b93b-$ba92 (Code) ===
loc_b93b:
	and $13,x                ; $b93b: 35 13
	inc $ad                  ; $b93d: e6 ad
	stz $8b80,x              ; $b93f: 9e 80 8b
	sbc $13                  ; $b942: e5 13
	eor ($e6,x)              ; $b944: 41 e6
	lda $17e5                ; $b946: ad e5 17
	inc $a9                  ; $b949: e6 a9
	per $39b0                ; $b94b: 62 62 80
	sta $3241e5              ; $b94e: 8f e5 41 32
	ora [$e6],y              ; $b952: 17 e6
	lda $17e5                ; $b954: ad e5 17
	inc $a9                  ; $b957: e6 a9
	lsr $7caa,x              ; $b959: 5e aa 7c
	sbc $31                  ; $b95c: e5 31
	inc $aa                  ; $b95e: e6 aa
	ply                      ; $b960: 7a
	ldy $9e80,x              ; $b961: bc 80 9e
	lda $13e5                ; $b964: ad e5 13
	inc $8b                  ; $b967: e6 8b
	sbc $41                  ; $b969: e5 41
	ldy $8be6,x              ; $b96b: bc e6 8b
	tax                      ; $b96e: aa
	sbc $14                  ; $b96f: e5 14
	and $44,x                ; $b971: 35 44
	and $e6,x                ; $b973: 35 e6
	tax                      ; $b975: aa
	lsr $35e5,x              ; $b976: 5e e5 35
	mvp $35,$14              ; $b979: 44 35 14
	inc $aa                  ; $b97c: e6 aa
	sta $e6c8d2              ; $b97e: 8f d2 c8 e6
	ply                      ; $b982: 7a
	sbc $2f                  ; $b983: e5 2f
	jsr $2f4d                ; $b985: 20 4d 2f
loc_b988:
	inc $7a                  ; $b988: e6 7a
	sbc $1e                  ; $b98a: e5 1e
	inc $7a                  ; $b98c: e6 7a
	sbc $2f                  ; $b98e: e5 2f
	jsr $2f4d                ; $b990: 20 4d 2f
loc_b993:
	ply                      ; $b993: 7a
	asl $c3c3,x              ; $b994: 1e c3 c3
	cmp $c3,s                ; $b997: c3 c3
	plx                      ; $b999: fa
	cmp #$b8                 ; $b99a: c9 b8
	nop                      ; $b99c: ea
	rol $d2                  ; $b99d: 26 d2
	ldy #$d4                 ; $b99f: a0 d4
	bra $b986                ; $b9a1: 80 e3
	cpx $04                  ; $b9a3: e4 04
	sta $adbc79              ; $b9a5: 8f 79 bc ad
	sta [$bc],y              ; $b9a9: 97 bc
	lda $c8adcd              ; $b9ab: af cd ad c8
	adc ($cd,s),y            ; $b9af: 73 cd
	adc ($c8),y              ; $b9b1: 71 c8
	bra $b979                ; $b9b3: 80 c4
	wai                      ; $b9b5: cb
	cpy $cb                  ; $b9b6: c4 cb
	brl $3a88                ; $b9b8: 82 cd 80
	cpy $cb                  ; $b9bb: c4 cb
	sbc $46                  ; $b9bd: e5 46
	and [$19],y              ; $b9bf: 37 19
	and [$e6],y              ; $b9c1: 37 e6
	lda $e57da0              ; $b9c3: af a0 7d e5
	adc ($80),y              ; $b9c7: 71 80
	stz $f0e6,x              ; $b9c9: 9e e6 f0
	cop #$82                 ; $b9cc: 02 82
	cmp $8282                ; $b9ce: cd 82 82
	sbc ($82),y              ; $b9d1: f1 82
	brl $fbbb                ; $b9d3: 82 e5 41
	and $17,x                ; $b9d6: 35 17
	eor $e63544,x            ; $b9d8: 5f 44 35 e6
	lda $02f0                ; $b9dc: ad f0 02
	brl $3caf                ; $b9df: 82 cd 82
	brl $3cd6                ; $b9e2: 82 f1 82
	brl $cecd                ; $b9e5: 82 e5 14
	inc $ad                  ; $b9e8: e6 ad
	stz $e541,x              ; $b9ea: 9e 41 e5
	and $e6,x                ; $b9ed: 35 e6
	mvp $62,$f0              ; $b9ef: 44 62 f0
	cop #$82                 ; $b9f2: 02 82
	cmp $8282                ; $b9f4: cd 82 82
	sbc ($82),y              ; $b9f7: f1 82
	brl $9fa6                ; $b9f9: 82 aa e5
	ora [$35],y              ; $b9fc: 17 35
	trb $e6                  ; $b9fe: 14 e6
	lda $629e                ; $ba00: ad 9e 62
	beq $ba07                ; $ba03: f0 02
loc_ba05:
	brl $3cd5                ; $ba05: 82 cd 82
	brl $3cfc                ; $ba08: 82 f1 82
	brl $cef3                ; $ba0b: 82 e5 14
	inc $ad                  ; $ba0e: e6 ad
	stz $41e5,x              ; $ba10: 9e e5 41
	and $44,x                ; $ba13: 35 44
	per $aafe                ; $ba15: 62 e6 f0
	ora $46,s                ; $ba18: 03 46
	cmp $4646                ; $ba1a: cd 46 46
	sbc ($f0),y              ; $ba1d: f1 f0
	ora $64,s                ; $ba1f: 03 64
	cmp $6464                ; $ba21: cd 64 64
	sbc ($f0),y              ; $ba24: f1 f0
	cop #$af                 ; $ba26: 02 af
	cmp $afaf                ; $ba28: cd af af
	sbc ($af),y              ; $ba2b: f1 af
	cmp $14e5                ; $ba2d: cd e5 14
	beq $ba33                ; $ba30: f0 01
loc_ba32:
	ora $1919,y              ; $ba32: 19 19 19
	cmp $35f1                ; $ba35: cd f1 35
	lsr $37                  ; $ba38: 46 37
	ora $afe6,y              ; $ba3a: 19 e6 af
	beq $ba41                ; $ba3d: f0 02
loc_ba3f:
	lsr $cd                  ; $ba3f: 46 cd
loc_ba41:
	lsr $46                  ; $ba41: 46 46
	sbc ($46),y              ; $ba43: f1 46
	cmp $f05f                ; $ba45: cd 5f f0
	cop #$64                 ; $ba48: 02 64
	stz $64                  ; $ba4a: 64 64
	cmp $7df1                ; $ba4c: cd f1 7d
	beq $ba57                ; $ba4f: f0 06
loc_ba51:
	brl $ac21                ; $ba51: 82 cd f1
	bra $ba1a                ; $ba54: 80 c4
	wai                      ; $ba56: cb
loc_ba57:
	beq $ba5a                ; $ba57: f0 01
loc_ba59:
	mvp $cb,$45              ; $ba59: 44 cb 45
	eor $45                  ; $ba5c: 45 45
	sbc ($62),y              ; $ba5e: f1 62
	wai                      ; $ba60: cb
	beq $ba6b                ; $ba61: f0 08
loc_ba63:
	adc $f1,s                ; $ba63: 63 f1
	beq $ba68                ; $ba65: f0 01
loc_ba67:
	bra $ba34                ; $ba67: 80 cb
	sta ($81,x)              ; $ba69: 81 81
loc_ba6b:
	sta ($f1,x)              ; $ba6b: 81 f1
	sbc $17                  ; $ba6d: e5 17
	wai                      ; $ba6f: cb
	beq $ba7a                ; $ba70: f0 08
loc_ba72:
	clc                      ; $ba72: 18
	sbc ($e6),y              ; $ba73: f1 e6
	beq $ba78                ; $ba75: f0 01
loc_ba77:
	sta $9090cb              ; $ba77: 8f cb 90 90
	bcc $ba6e                ; $ba7b: 90 f1
loc_ba7d:
	lda $f0cb                ; $ba7d: ad cb f0
loc_ba80:
	php                      ; $ba80: 08
	ldx $f0f1                ; $ba81: ae f1 f0
	ora ($8f,x)              ; $ba84: 01 8f
	wai                      ; $ba86: cb
	bcc $ba19                ; $ba87: 90 90
loc_ba89:
	bcc $ba7c                ; $ba89: 90 f1
loc_ba8b:
	lda $f0cb                ; $ba8b: ad cb f0
	php                      ; $ba8e: 08
	ldx $f0f1                ; $ba8f: ae f1 f0

; === Block $b986-$b98a (Code) ===
loc_b986:
	eor $e62f                ; $b986: 4d 2f e6
	ply                      ; $b989: 7a

; === Block $ba07-$ba1d (Code) ===
loc_ba07:
	brl $ab8c                ; $ba07: 82 82 f1
	brl $9f8f                ; $ba0a: 82 82 e5
	trb $e6                  ; $ba0d: 14 e6
	lda $e59e                ; $ba0f: ad 9e e5
	eor ($35,x)              ; $ba12: 41 35
	mvp $62,$e6              ; $ba14: 44 62 e6
	beq $ba1c                ; $ba17: f0 03
loc_ba19:
	lsr $cd                  ; $ba19: 46 cd
	lsr $46                  ; $ba1b: 46 46

; === Block $ba0c-$ba0e (Code) ===
loc_ba0c:
	sbc $14                  ; $ba0c: e5 14

; === Block $ba1c-$ba24 (Code) ===
loc_ba1c:
	lsr $f1                  ; $ba1c: 46 f1
	beq $ba23                ; $ba1e: f0 03
loc_ba20:
	stz $cd                  ; $ba20: 64 cd
	stz $64                  ; $ba22: 64 64

; === Block $ba23-$ba2b (Code) ===
loc_ba23:
	stz $f1                  ; $ba23: 64 f1
	beq $ba29                ; $ba25: f0 02
loc_ba27:
	lda $afafcd              ; $ba27: af cd af af

; === Block $ba29-$ba2d (Code) ===
loc_ba29:
	lda $aff1af              ; $ba29: af af f1 af

; === Block $ba33-$ba38 (Code) ===
loc_ba33:
	ora $cd19,y              ; $ba33: 19 19 cd
	sbc ($35),y              ; $ba36: f1 35

; === Block $ba34-$ba3d (Code) ===
loc_ba34:
	ora $f1cd,y              ; $ba34: 19 cd f1
	and $46,x                ; $ba37: 35 46
	and [$19],y              ; $ba39: 37 19
	inc $af                  ; $ba3b: e6 af

; === Block $ba5a-$ba63 (Code) ===
loc_ba5a:
	wai                      ; $ba5a: cb
	eor $45                  ; $ba5b: 45 45
	eor $f1                  ; $ba5d: 45 f1
	per $ab2d                ; $ba5f: 62 cb f0
	php                      ; $ba62: 08

; === Block $ba68-$ba69 (Code) ===
loc_ba68:
	wai                      ; $ba68: cb

; === Block $ba6e-$ba70 (Code) ===
loc_ba6e:
	ora [$cb],y              ; $ba6e: 17 cb

; === Block $ba78-$ba7b (Code) ===
loc_ba78:
	wai                      ; $ba78: cb
	bcc $ba0b                ; $ba79: 90 90

; === Block $ba7a-$ba81 (Code) ===
loc_ba7a:
	bcc $ba0c                ; $ba7a: 90 90
loc_ba7c:
	sbc ($ad),y              ; $ba7c: f1 ad
	wai                      ; $ba7e: cb
	beq $ba89                ; $ba7f: f0 08

; === Block $ba92-$bc59 (Code) ===
sub_ba92:
	cop #$80                 ; $ba92: 02 80
	wai                      ; $ba94: cb
	sta ($81,x)              ; $ba95: 81 81
	sta ($f1,x)              ; $ba97: 81 f1
	beq $baa0                ; $ba99: f0 05
loc_ba9b:
	sta ($f1,x)              ; $ba9b: 81 f1
	beq $baa1                ; $ba9d: f0 02
loc_ba9f:
	sta $9090cb              ; $ba9f: 8f cb 90 90
	bcc $ba96                ; $baa3: 90 f1
loc_baa5:
	beq $baac                ; $baa5: f0 05
loc_baa7:
	bcc $ba9a                ; $baa7: 90 f1
loc_baa9:
	beq $baac                ; $baa9: f0 01
loc_baab:
	lda $aecb                ; $baab: ad cb ae
	ldx $f1ae                ; $baae: ae ae f1
	sta $08f0cb              ; $bab1: 8f cb f0 08
	bcc $baa8                ; $bab5: 90 f1
loc_bab7:
	sei                      ; $bab7: 78
	ldy $be,x                ; $bab8: b4 be
	cpy $ca                  ; $baba: c4 ca
	cpy $cb                  ; $babc: c4 cb
	bra $bb38                ; $babe: 80 78
	lda $bc,x                ; $bac0: b5 bc
	bra $ba6b                ; $bac2: 80 a7
	sbc $2f                  ; $bac4: e5 2f
	inc $a0                  ; $bac6: e6 a0
	cmp $c89e                ; $bac8: cd 9e c8
	ldy #$cd                 ; $bacb: a0 cd
	stz $80c8,x              ; $bacd: 9e c8 80
	cpy $cb                  ; $bad0: c4 cb
	cmp [$5c]                ; $bad2: c7 5c
	brl $3ba4                ; $bad4: 82 cd 80
sub_bad7:
	cpy $e5                  ; $bad7: c4 e5
	trb $e6                  ; $bad9: 14 e6
	lda $7d9e                ; $badb: ad 9e 7d
	sbc $71                  ; $bade: e5 71
	bra $ba80                ; $bae0: 80 9e
	plx                      ; $bae2: fa
	dex                      ; $bae3: ca
	lda $3cd2,y              ; $bae4: b9 d2 3c
	pei $5e                  ; $bae7: d4 5e
	sep #$ea                 ; $bae9: e2 ea
	and [$e4]                ; $baeb: 27 e4
	tsb $44                  ; $baed: 04 44
	and $e5ad80              ; $baef: 2f 80 ad e5
	and $62,x                ; $baf3: 35 62
	eor $e62235              ; $baf5: 4f 35 22 e6
	and $c480a7              ; $baf9: 2f a7 80 c4
	wai                      ; $bafd: cb
	cmp $c3,s                ; $bafe: c3 c3
	cmp $d2,s                ; $bb00: c3 d2
	bit $5ed4,x              ; $bb02: 3c d4 5e
	beq $bb0e                ; $bb05: f0 07
loc_bb07:
	cmp $f1,s                ; $bb07: c3 f1
	ply                      ; $bb09: 7a
	rol $cb5c,x              ; $bb0a: 3e 5c cb
	per $5990                ; $bb0d: 62 80 9e
	lda [$5e]                ; $bb10: a7 5e
	adc $19e5,x              ; $bb12: 7d e5 19
	cmp $cd55                ; $bb15: cd 55 cd
	trb $31                  ; $bb18: 14 31
	inc $aa                  ; $bb1a: e6 aa
	eor ($5f,x)              ; $bb1c: 41 5f
	bra $bb7f                ; $bb1e: 80 5f
	sbc $17                  ; $bb20: e5 17
	inc $ad                  ; $bb22: e6 ad
	stz $8062,x              ; $bb24: 9e 62 80
	stz $b480,x              ; $bb27: 9e 80 b4
	cmp $d2,s                ; $bb2a: c3 d2
	phy                      ; $bb2c: 5a
	rol $e6bc,x              ; $bb2d: 3e bc e6
	lda $44e5                ; $bb30: ad e5 44
	bra $bacd                ; $bb33: 80 98
	ldy $ad9e,x              ; $bb35: bc 9e ad
loc_bb38:
	sbc $17                  ; $bb38: e5 17
	inc $a9                  ; $bb3a: e6 a9
	eor ($44,x)              ; $bb3c: 41 44
	per $cfc1                ; $bb3e: 62 80 14
	inc $80                  ; $bb41: e6 80
	sbc $7a                  ; $bb43: e5 7a
	ldy $cb89,x              ; $bb45: bc 89 cb
	mvp $8f,$44              ; $bb48: 44 8f 44
	lsr $e5a9,x              ; $bb4b: 5e a9 e5
	and ($17)                ; $bb4e: 32 17
	inc $44                  ; $bb50: e6 44
	sta $4417aa              ; $bb52: 8f aa 17 44
	sta $b4a5a5              ; $bb56: 8f a5 a5 b4
	sbc $0f                  ; $bb5a: e5 0f
	ldy $2d,x                ; $bb5c: b4 2d
	ora $f046d2              ; $bb5e: 0f d2 46 f0
	cop #$c8                 ; $bb62: 02 c8
	rol $36,x                ; $bb64: 36 36
	rol $2f,x                ; $bb66: 36 2f
	asl $c3f1,x              ; $bb68: 1e f1 c3
	cmp $c3,s                ; $bb6b: c3 c3
	cmp $c3,s                ; $bb6d: c3 c3
	cmp $e6,s                ; $bb6f: c3 e6
	plx                      ; $bb71: fa
	ora ($bb,x)              ; $bb72: 01 bb
	cmp ($3c)                ; $bb74: d2 3c
	pei $c0                  ; $bb76: d4 c0
	sep #$ea                 ; $bb78: e2 ea
	and #$eb                 ; $bb7a: 29 eb
	ora $c3c3                ; $bb7c: 0d c3 c3
loc_bb7f:
	cmp $e4,s                ; $bb7f: c3 e4
	ora $80                  ; $bb81: 05 80
	inc $ad                  ; $bb83: e6 ad
	sbc $35                  ; $bb85: e5 35
	bra $bb27                ; $bb87: 80 9e
	and $80,x                ; $bb89: 35 80
	mvp $e6,$44              ; $bb8b: 44 e6 44
	bra $bb3d                ; $bb8e: 80 ad
	stz $62e5,x              ; $bb90: 9e e5 62
	ora [$9b],y              ; $bb93: 17 9b
	bra $bb7d                ; $bb95: 80 e6
	bra $bb46                ; $bb97: 80 ad
	sbc $35                  ; $bb99: e5 35
	stz $8035,x              ; $bb9b: 9e 35 80
	inc $17                  ; $bb9e: e6 17
	mvp $80,$ad              ; $bba0: 44 80 ad
	sbc $44                  ; $bba3: e5 44
	inc $ad                  ; $bba5: e6 ad
	bra $bb47                ; $bba7: 80 9e
	sbc $35                  ; $bba9: e5 35
	cmp ($32)                ; $bbab: d2 32
	beq $bbb6                ; $bbad: f0 07
loc_bbaf:
	cmp $f1,s                ; $bbaf: c3 f1
	sbc $f0                  ; $bbb1: e5 f0
	ora $46,s                ; $bbb3: 03 46
	inc $af                  ; $bbb5: e6 af
	brl $a100                ; $bbb7: 82 46 e5
	sbc ($e6),y              ; $bbba: f1 e6
	beq $bbc1                ; $bbbc: f0 03
loc_bbbe:
	sbc $64                  ; $bbbe: e5 64
	ora $a0e6,y              ; $bbc0: 19 e6 a0
	stz $f1                  ; $bbc3: 64 f1
	beq $bbc9                ; $bbc5: f0 02
loc_bbc7:
	sbc $37                  ; $bbc7: e5 37
loc_bbc9:
	inc $af                  ; $bbc9: e6 af
	stz $37                  ; $bbcb: 64 37
	sbc ($e5),y              ; $bbcd: f1 e5
	and [$e6],y              ; $bbcf: 37 e6
	and [$e5],y              ; $bbd1: 37 e5
	ora $19e6,y              ; $bbd3: 19 e6 19
	eor $82,x                ; $bbd6: 55 82
	sbc $19                  ; $bbd8: e5 19
	inc $82                  ; $bbda: e6 82
	eor $19,x                ; $bbdc: 55 19
	sbc $19                  ; $bbde: e5 19
	inc $82                  ; $bbe0: e6 82
	eor $19,x                ; $bbe2: 55 19
	and ($f0),y              ; $bbe4: 31 f0
	cop #$e5                 ; $bbe6: 02 e5
	lsr $e6                  ; $bbe8: 46 e6
	lda $f14682              ; $bbea: af 82 46 f1
	sbc $46                  ; $bbee: e5 46
	inc $46                  ; $bbf0: e6 46
	sbc $64                  ; $bbf2: e5 64
	ora $02f0,y              ; $bbf4: 19 f0 02
	inc $a0                  ; $bbf7: e6 a0
	stz $e5                  ; $bbf9: 64 e5
	stz $19                  ; $bbfb: 64 19
	sbc ($e6),y              ; $bbfd: f1 e6
	ldy #$64                 ; $bbff: a0 64
	wai                      ; $bc01: cb
	cmp $c3,s                ; $bc02: c3 c3
	cmp ($28)                ; $bc04: d2 28
	inc $a5                  ; $bc06: e6 a5
	stx $a5,y                ; $bc08: 96 a5
	sbc $0f                  ; $bc0a: e5 0f
	ora $5a3c2d              ; $bc0c: 0f 2d 3c 5a
	and $3cb4                ; $bc10: 2d b4 3c
	ldy $5a,x                ; $bc13: b4 5a
	bit $1ed2,x              ; $bc15: 3c d2 1e
	beq $bc59                ; $bc18: f0 3f
loc_bc1a:
	brl $adea                ; $bc1a: 82 cd f1
	cmp ($3c)                ; $bc1d: d2 3c
	bra $bc07                ; $bc1f: 80 e6
	lda $35e5                ; $bc21: ad e5 35
	bra $bbc4                ; $bc24: 80 9e
	and $80,x                ; $bc26: 35 80
	mvp $e6,$44              ; $bc28: 44 e6 44
	bra $bbda                ; $bc2b: 80 ad
	stz $62e5,x              ; $bc2d: 9e e5 62
	ora [$9b],y              ; $bc30: 17 9b
	bra $bc1a                ; $bc32: 80 e6
	bra $bbe3                ; $bc34: 80 ad
	sbc $35                  ; $bc36: e5 35
	stz $8035,x              ; $bc38: 9e 35 80
	inc $17                  ; $bc3b: e6 17
	mvp $80,$ad              ; $bc3d: 44 80 ad
	sbc $44                  ; $bc40: e5 44
	inc $ad                  ; $bc42: e6 ad
	bra $bbe4                ; $bc44: 80 9e
	wai                      ; $bc46: cb
	sbc $fa                  ; $bc47: e5 fa
	plb                      ; $bc49: ab
	tyx                      ; $bc4a: bb
	pei $c0                  ; $bc4b: d4 c0
	sep #$f0                 ; $bc4d: e2 f0
	asl $c3                  ; $bc4f: 06 c3
	sbc ($d4),y              ; $bc51: f1 d4
	cpy #$d2                 ; $bc53: c0 d2
	plp                      ; $bc55: 28
	nop                      ; $bc56: ea
	ora ($ec,x)              ; $bc57: 01 ec
loc_bc59:
	brk #$ed                 ; $bc59: 00 ed

; === Block $ba96-$baa0 (Code) ===
loc_ba96:
	sta ($81,x)              ; $ba96: 81 81
	sbc ($f0),y              ; $ba98: f1 f0
loc_ba9a:
	ora $81                  ; $ba9a: 05 81
	sbc ($f0),y              ; $ba9c: f1 f0
	cop #$8f                 ; $ba9e: 02 8f

; === Block $baa0-$baa3 (Code) ===
loc_baa0:
	wai                      ; $baa0: cb
loc_baa1:
	bcc $ba33                ; $baa1: 90 90

; === Block $baa8-$baac (Code) ===
loc_baa8:
	sbc ($f0),y              ; $baa8: f1 f0
	ora ($ad,x)              ; $baaa: 01 ad

; === Block $baac-$baad (Code) ===
loc_baac:
	wai                      ; $baac: cb

; === Block $baad-$bab5 (Code) ===
sub_baad:
	ldx $aeae                ; $baad: ae ae ae
	sbc ($8f),y              ; $bab0: f1 8f
	wai                      ; $bab2: cb
	beq $babd                ; $bab3: f0 08

; === Block $babd-$babe (Code) ===
loc_babd:
	wai                      ; $babd: cb

; === Block $bb0e-$bb10 (Code) ===
loc_bb0e:
	bra $baae                ; $bb0e: 80 9e

; === Block $bb29-$bb2d (Code) ===
loc_bb29:
	ldy $c3,x                ; $bb29: b4 c3
	cmp ($5a)                ; $bb2b: d2 5a

; === Block $bb3d-$bb45 (Code) ===
loc_bb3d:
	mvp $62,$80              ; $bb3d: 44 62 80
	trb $e6                  ; $bb40: 14 e6
	bra $bb29                ; $bb42: 80 e5
	ply                      ; $bb44: 7a

; === Block $bb46-$bb48 (Code) ===
loc_bb46:
	bit #$cb                 ; $bb46: 89 cb

; === Block $bb47-$bb48 (Code) ===
loc_bb47:
	wai                      ; $bb47: cb

; === Block $bb69-$bb6b (Code) ===
sub_bb69:
	sbc ($c3),y              ; $bb69: f1 c3

; === Block $bb7d-$bb7f (Code) ===
loc_bb7d:
	cmp $c3,s                ; $bb7d: c3 c3

; === Block $bbb6-$bbba (Code) ===
loc_bbb6:
	lda $e54682              ; $bbb6: af 82 46 e5

; === Block $bbc1-$bbc3 (Code) ===
loc_bbc1:
	inc $a0                  ; $bbc1: e6 a0

; === Block $bbc4-$bbd6 (Code) ===
loc_bbc4:
	sbc ($f0),y              ; $bbc4: f1 f0
	cop #$e5                 ; $bbc6: 02 e5
	and [$e6],y              ; $bbc8: 37 e6
	lda $f13764              ; $bbca: af 64 37 f1
	sbc $37                  ; $bbce: e5 37
	inc $37                  ; $bbd0: e6 37
	sbc $19                  ; $bbd2: e5 19
	inc $19                  ; $bbd4: e6 19

; === Block $bbe3-$bbe6 (Code) ===
loc_bbe3:
	ora $f031,y              ; $bbe3: 19 31 f0

; === Block $bc05-$bc06 (Code) ===
loc_bc05:
	plp                      ; $bc05: 28

; === Block $bc07-$bc10 (Code) ===
loc_bc07:
	lda $96                  ; $bc07: a5 96
	lda $e5                  ; $bc09: a5 e5
	ora $3c2d0f              ; $bc0b: 0f 0f 2d 3c
	phy                      ; $bc0f: 5a

; === Block $c305-$c312 (Code) ===
loc_c305:
	cpy $0e                  ; $c305: c4 0e
	cmp $60                  ; $c307: c5 60
	dec $43                  ; $c309: c6 43
	cmp [$f8]                ; $c30b: c7 f8
	sbc ($f3,x)              ; $c30d: e1 f3
	lsr $3cf7                ; $c30f: 4e f7 3c
	brk #$f5                 ; $c312: 00 f5

; === Block $c389-$c38b (Code) ===
sub_c389:
	adc ($f1),y              ; $c389: 71 f1
	jmp $28bc                ; $c38b: 4c bc 28

; === Block $c408-$c40a (Code) ===
loc_c408:
	inc $af                  ; $c408: e6 af

; === Block $c40a-$c432 (Code) ===
sub_c40a:
	sta ($7a),y              ; $c40a: 91 7a
	adc $69808e,x            ; $c40c: 7f 8e 80 69
	ldy $e5,x                ; $c410: b4 e5
	plx                      ; $c412: fa
	lda $32d2c3              ; $c413: af c3 d2 32
	pei $4a                  ; $c417: d4 4a
	nop                      ; $c419: ea
	rol                      ; $c41a: 2a
	cpx $03                  ; $c41b: e4 03
	sbc [$02]                ; $c41d: e7 02
	sep #$ee                 ; $c41f: e2 ee
	asl $f0                  ; $c421: 06 f0
	ora ($69,x)              ; $c423: 01 69
	clv                      ; $c425: b8
	sta $0ae5a9              ; $c426: 8f a9 e5 0a
	plp                      ; $c42a: 28
	inc $3c                  ; $c42b: e6 3c
sub_c42d:
	clv                      ; $c42d: b8
	eor ($6d,s),y            ; $c42e: 53 6d
	sta ($af),y              ; $c430: 91 af
	brk #$1e                 ; $c432: 00 1e

; === Block $c450-$c495 (Code) ===
sub_c450:
	adc ($f1),y              ; $c450: 71 f1
	bit $fab4,x              ; $c452: 3c b4 fa
	jsl $aad2c4              ; $c455: 22 c4 d2 aa
loc_c459:
	pei $80                  ; $c459: d4 80
	nop                      ; $c45b: ea
	rol $e4                  ; $c45c: 26 e4
	ora $e7,s                ; $c45e: 03 e7
	cop #$e2                 ; $c460: 02 e2
	xba                      ; $c462: eb
	asl $03ec                ; $c463: 0e ec 03
	sbc $ee06                ; $c466: ed 06 ee
	asl $f0                  ; $c469: 06 f0
	ora ($00,x)              ; $c46b: 01 00
	ldy $e6,x                ; $c46d: b4 e6
	sta [$b4]                ; $c46f: 87 b4
	phk                      ; $c471: 4b
	adc #$f9                 ; $c472: 69 f9
	cop #$7a                 ; $c474: 02 7a
	cpy $00                  ; $c476: c4 00
	ldy $e5,x                ; $c478: b4 e5
	sbc ($00),y              ; $c47a: f1 00
	ldx $07,y                ; $c47c: b6 07
	and $44                  ; $c47e: 25 44
	beq $c483                ; $c480: f0 01
loc_c482:
	phk                      ; $c482: 4b
loc_c483:
	phk                      ; $c483: 4b
	bit $1e87,x              ; $c484: 3c 87 1e
	inc $a5                  ; $c487: e6 a5
	sbc $9302,y              ; $c489: f9 02 93
	cpy $87                  ; $c48c: c4 87
	ldx $8e,y                ; $c48e: b6 8e
	sbc $25                  ; $c490: e5 25
	mvp $f1,$e5              ; $c492: 44 f1 e5
	brk #$b4                 ; $c495: 00 b4

; === Block $c488-$c48c (Code) ===
sub_c488:
	lda $f9                  ; $c488: a5 f9
	cop #$93                 ; $c48a: 02 93

; === Block $c4d2-$c513 (Code) ===
sub_c4d2:
	sbc $d222ea              ; $c4d2: ef ea 22 d2
	iny                      ; $c4d6: c8
	php                      ; $c4d7: 08
	nop                      ; $c4d8: ea
	jsl $ec50d2              ; $c4d9: 22 d2 50 ec
loc_c4dd:
	asl $08                  ; $c4dd: 06 08
	sbc $d222ea              ; $c4df: ef ea 22 d2
	sei                      ; $c4e3: 78
	php                      ; $c4e4: 08
	nop                      ; $c4e5: ea
	jsl $ec28d2              ; $c4e6: 22 d2 28 ec
loc_c4ea:
	asl $08                  ; $c4ea: 06 08
	sbc $d222ea              ; $c4ec: ef ea 22 d2
	sei                      ; $c4f0: 78
	php                      ; $c4f1: 08
	nop                      ; $c4f2: ea
	jsl $ec28d2              ; $c4f3: 22 d2 28 ec
loc_c4f7:
	asl $08                  ; $c4f7: 06 08
	sbc $ea80d4              ; $c4f9: ef d4 80 ea
	and $d2                  ; $c4fd: 25 d2
	bvc $c527                ; $c4ff: 50 26
loc_c501:
	pei $50                  ; $c501: d4 50
	nop                      ; $c503: ea
	jsl $ec78d2              ; $c504: 22 d2 78 ec
loc_c508:
	ora $08,s                ; $c508: 03 08
	sbc $c49ffa              ; $c50a: ef fa 9f c4
	cmp ($96)                ; $c50e: d2 96
	pei $90                  ; $c510: d4 90
	nop                      ; $c512: ea
	brk #$e4                 ; $c513: 00 e4

; === Block $c527-$c542 (Code) ===
loc_c527:
	mvp $e6,$71              ; $c527: 44 e6 71
	sbc $26                  ; $c52a: e5 26
	inc $71                  ; $c52c: e6 71
	sbc $26                  ; $c52e: e5 26
	inc $71                  ; $c530: e6 71
	sbc $08                  ; $c532: e5 08
	inc $71                  ; $c534: e6 71
	sbc $08                  ; $c536: e5 08
	inc $71                  ; $c538: e6 71
	sbc $26                  ; $c53a: e5 26
	inc $71                  ; $c53c: e6 71
	sbc $26                  ; $c53e: e5 26
	inc $71                  ; $c540: e6 71

; === Block $c542-$c665 (Code) ===
sub_c542:
	sbc $44                  ; $c542: e5 44
	inc $44                  ; $c544: e6 44
	sbc $44                  ; $c546: e5 44
	inc $44                  ; $c548: e6 44
	sbc $26                  ; $c54a: e5 26
	inc $44                  ; $c54c: e6 44
	sbc $26                  ; $c54e: e5 26
	inc $44                  ; $c550: e6 44
	sbc $08                  ; $c552: e5 08
	inc $44                  ; $c554: e6 44
	sbc $08                  ; $c556: e5 08
	inc $44                  ; $c558: e6 44
	sbc $26                  ; $c55a: e5 26
	inc $44                  ; $c55c: e6 44
	sbc $26                  ; $c55e: e5 26
	inc $44                  ; $c560: e6 44
	sbc $44                  ; $c562: e5 44
	inc $53                  ; $c564: e6 53
	sbc $44                  ; $c566: e5 44
	inc $53                  ; $c568: e6 53
	sbc $26                  ; $c56a: e5 26
	inc $53                  ; $c56c: e6 53
	sbc $26                  ; $c56e: e5 26
	inc $53                  ; $c570: e6 53
	sbc $9702,y              ; $c572: f9 02 97
	cmp $e5                  ; $c575: c5 e5
	php                      ; $c577: 08
	inc $71                  ; $c578: e6 71
	sbc $08                  ; $c57a: e5 08
	inc $71                  ; $c57c: e6 71
	sbc $26                  ; $c57e: e5 26
	inc $71                  ; $c580: e6 71
	sbc $26                  ; $c582: e5 26
	inc $71                  ; $c584: e6 71
	adc ($08),y              ; $c586: 71 08
	adc ($08),y              ; $c588: 71 08
	adc ($08),y              ; $c58a: 71 08
	adc ($08),y              ; $c58c: 71 08
	adc ($08),y              ; $c58e: 71 08
	adc ($08),y              ; $c590: 71 08
	adc ($08),y              ; $c592: 71 08
	adc ($08),y              ; $c594: 71 08
	sbc $f1                  ; $c596: e5 f1
	sbc $71                  ; $c598: e5 71
	inc $71                  ; $c59a: e6 71
	sbc $71                  ; $c59c: e5 71
	inc $71                  ; $c59e: e6 71
	sbc $53                  ; $c5a0: e5 53
	inc $71                  ; $c5a2: e6 71
	sbc $53                  ; $c5a4: e5 53
	inc $71                  ; $c5a6: e6 71
	sbc $44                  ; $c5a8: e5 44
	inc $71                  ; $c5aa: e6 71
	sbc $44                  ; $c5ac: e5 44
	inc $71                  ; $c5ae: e6 71
	sbc $44                  ; $c5b0: e5 44
	inc $71                  ; $c5b2: e6 71
	sbc $44                  ; $c5b4: e5 44
	inc $71                  ; $c5b6: e6 71
	sbc $44                  ; $c5b8: e5 44
	inc $71                  ; $c5ba: e6 71
	sbc $44                  ; $c5bc: e5 44
	inc $71                  ; $c5be: e6 71
	sbc $44                  ; $c5c0: e5 44
	inc $71                  ; $c5c2: e6 71
	sbc $53                  ; $c5c4: e5 53
	inc $71                  ; $c5c6: e6 71
	sbc $f0                  ; $c5c8: e5 f0
	ora ($8f,x)              ; $c5ca: 01 8f
	php                      ; $c5cc: 08
	sta $088f08              ; $c5cd: 8f 08 8f 08
	sta $e62608              ; $c5d1: 8f 08 26 e6
	bra $c5bc                ; $c5d5: 80 e5
	rol $e6                  ; $c5d7: 26 e6
	bra $c5c0                ; $c5d9: 80 e5
	rol $e6                  ; $c5db: 26 e6
	bra $c5c4                ; $c5dd: 80 e5
	mvp $e6,$80              ; $c5df: 44 e6 80
	sbc $71                  ; $c5e2: e5 71
	inc $ad                  ; $c5e4: e6 ad
	sbc $71                  ; $c5e6: e5 71
	inc $ad                  ; $c5e8: e6 ad
	sbc $71                  ; $c5ea: e5 71
	inc $ad                  ; $c5ec: e6 ad
	sbc $71                  ; $c5ee: e5 71
	inc $ad                  ; $c5f0: e6 ad
	sbc $08                  ; $c5f2: e5 08
	inc $44                  ; $c5f4: e6 44
	sbc $08                  ; $c5f6: e5 08
	inc $44                  ; $c5f8: e6 44
	sbc $08                  ; $c5fa: e5 08
	inc $44                  ; $c5fc: e6 44
	sbc $26                  ; $c5fe: e5 26
	inc $44                  ; $c600: e6 44
	sbc $53                  ; $c602: e5 53
	inc $8f                  ; $c604: e6 8f
	sbc $53                  ; $c606: e5 53
	inc $8f                  ; $c608: e6 8f
	sbc $53                  ; $c60a: e5 53
	inc $8f                  ; $c60c: e6 8f
	sbc $53                  ; $c60e: e5 53
	inc $8f                  ; $c610: e6 8f
	sbc $3102,y              ; $c612: f9 02 31
	dec $ad                  ; $c615: c6 ad
	eor ($ad,s),y            ; $c617: 53 ad
sub_c619:
	eor ($ad,s),y            ; $c619: 53 ad
	eor ($e5,s),y            ; $c61b: 53 e5
	eor ($e6,s),y            ; $c61d: 53 e6
	eor ($e5,s),y            ; $c61f: 53 e5
	adc ($08),y              ; $c621: 71 08
	adc ($08),y              ; $c623: 71 08
	adc ($08),y              ; $c625: 71 08
	adc ($08),y              ; $c627: 71 08
	adc ($08),y              ; $c629: 71 08
	adc ($08),y              ; $c62b: 71 08
	adc ($08),y              ; $c62d: 71 08
	eor ($08,s),y            ; $c62f: 53 08
	sbc ($ad),y              ; $c631: f1 ad
	eor ($ad,s),y            ; $c633: 53 ad
	eor ($ad,s),y            ; $c635: 53 ad
	eor ($e5,s),y            ; $c637: 53 e5
	php                      ; $c639: 08
	inc $53                  ; $c63a: e6 53
	sbc $08                  ; $c63c: e5 08
	inc $44                  ; $c63e: e6 44
	sbc $08                  ; $c640: e5 08
	inc $44                  ; $c642: e6 44
	sbc $08                  ; $c644: e5 08
	inc $44                  ; $c646: e6 44
	sbc $08                  ; $c648: e5 08
	inc $44                  ; $c64a: e6 44
	sbc $08                  ; $c64c: e5 08
	inc $44                  ; $c64e: e6 44
	sbc $08                  ; $c650: e5 08
	inc $44                  ; $c652: e6 44
	sbc $08                  ; $c654: e5 08
	inc $44                  ; $c656: e6 44
	sbc $08                  ; $c658: e5 08
	inc $44                  ; $c65a: e6 44
	sbc $fa                  ; $c65c: e5 fa
	and ($c5,x)              ; $c65e: 21 c5
	cmp ($96)                ; $c660: d2 96
	pei $90                  ; $c662: d4 90
	nop                      ; $c664: ea
	brk #$e4                 ; $c665: 00 e4

; === Block $c589-$c58a (Code) ===
sub_c589:
	php                      ; $c589: 08

; === Block $c65d-$c65e (Code) ===
sub_c65d:
	plx                      ; $c65d: fa

; === Block $c6a1-$c75d (Code) ===
sub_c6a1:
	wai                      ; $c6a1: cb
	sbc $bf02,y              ; $c6a2: f9 02 bf
	dec $8f                  ; $c6a5: c6 8f
	wai                      ; $c6a7: cb
	sta $cbadcb              ; $c6a8: 8f cb ad cb
	lda $44cb                ; $c6ac: ad cb 44
	wai                      ; $c6af: cb
	mvp $cb,$44              ; $c6b0: 44 cb 44
	wai                      ; $c6b3: cb
	mvp $cb,$44              ; $c6b4: 44 cb 44
	wai                      ; $c6b7: cb
	mvp $cb,$44              ; $c6b8: 44 cb 44
	wai                      ; $c6bb: cb
	mvp $cb,$e5              ; $c6bc: 44 cb e5
	sbc ($e5),y              ; $c6bf: f1 e5
	rol $cb                  ; $c6c1: 26 cb
	rol $cb                  ; $c6c3: 26 cb
	rol $cb                  ; $c6c5: 26 cb
	rol $cb                  ; $c6c7: 26 cb
	php                      ; $c6c9: 08
	wai                      ; $c6ca: cb
	php                      ; $c6cb: 08
	wai                      ; $c6cc: cb
	php                      ; $c6cd: 08
	wai                      ; $c6ce: cb
	php                      ; $c6cf: 08
	wai                      ; $c6d0: cb
	php                      ; $c6d1: 08
	wai                      ; $c6d2: cb
	php                      ; $c6d3: 08
	wai                      ; $c6d4: cb
	php                      ; $c6d5: 08
	wai                      ; $c6d6: cb
	rol $cb                  ; $c6d7: 26 cb
	beq $c6dc                ; $c6d9: f0 01
loc_c6db:
	eor ($cb,s),y            ; $c6db: 53 cb
	eor ($cb,s),y            ; $c6dd: 53 cb
	eor ($cb,s),y            ; $c6df: 53 cb
	eor ($cb,s),y            ; $c6e1: 53 cb
	inc $ad                  ; $c6e3: e6 ad
	wai                      ; $c6e5: cb
	lda $adcb                ; $c6e6: ad cb ad
	wai                      ; $c6e9: cb
	sbc $08                  ; $c6ea: e5 08
	wai                      ; $c6ec: cb
	mvp $cb,$44              ; $c6ed: 44 cb 44
	wai                      ; $c6f0: cb
	mvp $cb,$44              ; $c6f1: 44 cb 44
	wai                      ; $c6f4: cb
	inc $8f                  ; $c6f5: e6 8f
	wai                      ; $c6f7: cb
	sta $cb8fcb              ; $c6f8: 8f cb 8f cb
	lda $e5cb                ; $c6fc: ad cb e5
	rol $cb                  ; $c6ff: 26 cb
	rol $cb                  ; $c701: 26 cb
	rol $cb                  ; $c703: 26 cb
	rol $cb                  ; $c705: 26 cb
	sbc $2502,y              ; $c707: f9 02 25
	cmp [$e6]                ; $c70a: c7 e6
	bra $c6d9                ; $c70c: 80 cb
	bra $c6db                ; $c70e: 80 cb
	bra $c6dd                ; $c710: 80 cb
	sbc $26                  ; $c712: e5 26
	wai                      ; $c714: cb
	mvp $cb,$44              ; $c715: 44 cb 44
	wai                      ; $c718: cb
	mvp $cb,$44              ; $c719: 44 cb 44
	wai                      ; $c71c: cb
	mvp $cb,$44              ; $c71d: 44 cb 44
	wai                      ; $c720: cb
	mvp $cb,$26              ; $c721: 44 cb 26
	wai                      ; $c724: cb
	sbc ($e6),y              ; $c725: f1 e6
	bra $c6f4                ; $c727: 80 cb
	bra $c6f6                ; $c729: 80 cb
	bra $c6f8                ; $c72b: 80 cb
	sta $cb71cb              ; $c72d: 8f cb 71 cb
	adc ($cb),y              ; $c731: 71 cb
	adc ($cb),y              ; $c733: 71 cb
	adc ($cb),y              ; $c735: 71 cb
	adc ($cb),y              ; $c737: 71 cb
	adc ($cb),y              ; $c739: 71 cb
	adc ($cb),y              ; $c73b: 71 cb
	adc ($cb),y              ; $c73d: 71 cb
	sbc $fa                  ; $c73f: e5 fa
	adc ($c6,s),y            ; $c741: 73 c6
	jsr ($5704,x)            ; $c743: fc 04 57
	cmp [$d4]                ; $c746: c7 d4
	cmp [$59]                ; $c748: c7 59
	iny                      ; $c74a: c8
	and $8ac9,y              ; $c74b: 39 c9 8a
	cmp #$e7                 ; $c74e: c9 e7
	cmp #$59                 ; $c750: c9 59
	dex                      ; $c752: ca
	stx $cb                  ; $c753: 86 cb
	eor ($cc,x)              ; $c755: 41 cc
	sed                      ; $c757: f8
	jml [$56f3]              ; $c758: dc f3 56
	sbc [$3c],y              ; $c75b: f7 3c
	brk #$f5                 ; $c75d: 00 f5

; === Block $c6dc-$c6dd (Code) ===
loc_c6dc:
	wai                      ; $c6dc: cb

; === Block $c6f6-$c701 (Code) ===
loc_c6f6:
	sta $cb8fcb              ; $c6f6: 8f cb 8f cb
	sta $cbadcb              ; $c6fa: 8f cb ad cb
	sbc $26                  ; $c6fe: e5 26
	wai                      ; $c700: cb

; === Block $c71f-$c725 (Code) ===
sub_c71f:
	mvp $cb,$44              ; $c71f: 44 cb 44
	wai                      ; $c722: cb
	rol $cb                  ; $c723: 26 cb

; === Block $c751-$c755 (Code) ===
sub_c751:
	eor $86ca,y              ; $c751: 59 ca 86
	wai                      ; $c754: cb

; === Block $c7ed-$c846 (Code) ===
sub_c7ed:
	tsb $e6                  ; $c7ed: 04 e6
	eor ($71,s),y            ; $c7ef: 53 71
	sta $a68fad              ; $c7f1: 8f ad 8f a6
	sbc $0702,y              ; $c7f5: f9 02 07
	iny                      ; $c7f8: c8
	sta $268b71              ; $c7f9: 8f 71 8b 26
	mvp $53,$71              ; $c7fd: 44 53 71
	eor ($6e,s),y            ; $c800: 53 6e
	mvp $44,$53              ; $c802: 44 44 53
	adc ($e5),y              ; $c805: 71 e5
	sbc ($8f),y              ; $c807: f1 8f
	adc ($8b),y              ; $c809: 71 8b
	sta $08e5ad              ; $c80b: 8f ad e5 08
	and $05,s                ; $c80f: 23 05
	inc $aa                  ; $c811: e6 aa
	sbc $05                  ; $c813: e5 05
	beq $c818                ; $c815: f0 01
loc_c817:
	rol $202f,x              ; $c817: 3e 2f 20
	ora ($02),y              ; $c81a: 11 02
	inc $a7                  ; $c81c: e6 a7
	sbc $2802,y              ; $c81e: f9 02 28
	iny                      ; $c821: c8
	rtl                      ; $c822: 6b
	ldy $8f71,x              ; $c823: bc 71 8f
	lda $f1e5                ; $c826: ad e5 f1
	sbc $00                  ; $c829: e5 00
	beq $c82e                ; $c82b: f0 01
loc_c82d:
	iny                      ; $c82d: c8
loc_c82e:
	eor ($44,s),y            ; $c82e: 53 44
	rol $08                  ; $c830: 26 08
	inc $9e                  ; $c832: e6 9e
	sbc $08                  ; $c834: e5 08
	inc $87                  ; $c836: e6 87
	sbc $4702,y              ; $c838: f9 02 47
	iny                      ; $c83b: c8
	iny                      ; $c83c: c8
	sbc $26                  ; $c83d: e5 26
	php                      ; $c83f: 08
	inc $ad                  ; $c840: e6 ad
	sta $e58f80              ; $c842: 8f 80 8f e5
	brk #$f1                 ; $c846: 00 f1

; === Block $c818-$c81c (Code) ===
loc_c818:
	and $021120              ; $c818: 2f 20 11 02

; === Block $c83a-$c83c (Code) ===
sub_c83a:
	eor [$c8]                ; $c83a: 47 c8

; === Block $c8a9-$c8d8 (Code) ===
sub_c8a9:
	tsb $e6                  ; $c8a9: 04 e6
	inc $d2                  ; $c8ab: e6 d2
	stz $d4                  ; $c8ad: 64 d4
	ldy #$ea                 ; $c8af: a0 ea
	rol $eb                  ; $c8b1: 26 eb
	phd                      ; $c8b3: 0b
	cpx $ed02                ; $c8b4: ec 02 ed
	ora $ee                  ; $c8b7: 05 ee
	asl $53                  ; $c8b9: 06 53
	sta $4408e5              ; $c8bb: 8f e5 08 44
	php                      ; $c8bf: 08
	iny                      ; $c8c0: c8
	sbc $d2                  ; $c8c1: e5 d2
	adc ($d4,s),y            ; $c8c3: 73 d4
	bra $c8b1                ; $c8c5: 80 ea
	ora ($eb,x)              ; $c8c7: 01 eb
	ora $ed06ec              ; $c8c9: 0f ec 06 ed
	cop #$ee                 ; $c8cd: 02 ee
	ora ($53),y              ; $c8cf: 11 53
	mvp $26,$08              ; $c8d1: 44 26 08
	inc $ad                  ; $c8d4: e6 ad
	sbc $08                  ; $c8d6: e5 08
	rti                      ; $c8d8: 40

; === Block $c95f-$c988 (Code) ===
sub_c95f:
	lda [$3e]                ; $c95f: a7 3e
	bit #$20                 ; $c961: 89 20
	ply                      ; $c963: 7a
	cop #$bc                 ; $c964: 02 bc
	php                      ; $c966: 08
	rol $44                  ; $c967: 26 44
	eor $3ea7                ; $c969: 4d a7 3e
	bit #$20                 ; $c96c: 89 20
	ply                      ; $c96e: 7a
	ora ($bc,x)              ; $c96f: 01 bc
	php                      ; $c971: 08
	rtl                      ; $c972: 6b
	cop #$4c                 ; $c973: 02 4c
	ldy $a78f,x              ; $c975: bc 8f a7
	rol $bc88,x              ; $c978: 3e 88 bc
	php                      ; $c97b: 08
	rtl                      ; $c97c: 6b
	cop #$4c                 ; $c97d: 02 4c
	ldy $1f44,x              ; $c97f: bc 44 1f
	ldy $6b26,x              ; $c982: bc 26 6b
	ror $fa6e                ; $c985: 6e 6e fa
	jmp $d2c9                ; $c988: 4c c9 d2

; === Block $cacf-$cc5b (Code) ===
sub_cacf:
	inc $8f                  ; $cacf: e6 8f
	sbc $35                  ; $cad1: e5 35
	inc $8f                  ; $cad3: e6 8f
	sbc $26                  ; $cad5: e5 26
	inc $71                  ; $cad7: e6 71
	sbc $26                  ; $cad9: e5 26
	inc $71                  ; $cadb: e6 71
	sbc $17                  ; $cadd: e5 17
	inc $71                  ; $cadf: e6 71
	sbc $17                  ; $cae1: e5 17
	inc $71                  ; $cae3: e6 71
	sbc $fe02,y              ; $cae5: f9 02 fe
	dex                      ; $cae8: ca
	sbc $08                  ; $cae9: e5 08
	inc $53                  ; $caeb: e6 53
sub_caed:
	sbc $08                  ; $caed: e5 08
	inc $53                  ; $caef: e6 53
	lda $ad53                ; $caf1: ad 53 ad
	eor ($ad,s),y            ; $caf4: 53 ad
	mvp $ad,$44              ; $caf6: 44 ad 44
	lda $e5ad                ; $caf9: ad ad e5
	php                      ; $cafc: 08
	rol $f1                  ; $cafd: 26 f1
	sbc $08                  ; $caff: e5 08
	inc $53                  ; $cb01: e6 53
	sbc $08                  ; $cb03: e5 08
	inc $53                  ; $cb05: e6 53
	lda $ad53                ; $cb07: ad 53 ad
	eor ($e5,s),y            ; $cb0a: 53 e5
	php                      ; $cb0c: 08
	inc $44                  ; $cb0d: e6 44
	sbc $08                  ; $cb0f: e5 08
	inc $44                  ; $cb11: e6 44
	sbc $08                  ; $cb13: e5 08
	inc $44                  ; $cb15: e6 44
	sbc $08                  ; $cb17: e5 08
	inc $08                  ; $cb19: e6 08
	beq $cb1e                ; $cb1b: f0 01
loc_cb1d:
	sbc $53                  ; $cb1d: e5 53
	inc $9e                  ; $cb1f: e6 9e
	sbc $53                  ; $cb21: e5 53
	inc $9e                  ; $cb23: e6 9e
	sbc $44                  ; $cb25: e5 44
	inc $9e                  ; $cb27: e6 9e
	sbc $44                  ; $cb29: e5 44
	inc $9e                  ; $cb2b: e6 9e
	sbc $44                  ; $cb2d: e5 44
	inc $8f                  ; $cb2f: e6 8f
	sbc $44                  ; $cb31: e5 44
	inc $8f                  ; $cb33: e6 8f
	sbc $44                  ; $cb35: e5 44
	inc $8f                  ; $cb37: e6 8f
	sbc $44                  ; $cb39: e5 44
	inc $8f                  ; $cb3b: e6 8f
	sbc $6102,y              ; $cb3d: f9 02 61
	wai                      ; $cb40: cb
	sbc $53                  ; $cb41: e5 53
	inc $ad                  ; $cb43: e6 ad
	sbc $53                  ; $cb45: e5 53
	inc $ad                  ; $cb47: e6 ad
	sbc $26                  ; $cb49: e5 26
	inc $80                  ; $cb4b: e6 80
	sbc $26                  ; $cb4d: e5 26
	inc $80                  ; $cb4f: e6 80
	sbc $44                  ; $cb51: e5 44
sub_cb53:
	inc $8f                  ; $cb53: e6 8f
	sbc $44                  ; $cb55: e5 44
	inc $8f                  ; $cb57: e6 8f
	sbc $44                  ; $cb59: e5 44
	inc $8f                  ; $cb5b: e6 8f
	sbc $44                  ; $cb5d: e5 44
	inc $08                  ; $cb5f: e6 08
	sbc ($e5),y              ; $cb61: f1 e5
	php                      ; $cb63: 08
	inc $53                  ; $cb64: e6 53
	sbc $08                  ; $cb66: e5 08
	inc $53                  ; $cb68: e6 53
	sbc $08                  ; $cb6a: e5 08
	inc $53                  ; $cb6c: e6 53
	sbc $08                  ; $cb6e: e5 08
	inc $53                  ; $cb70: e6 53
	sbc $44                  ; $cb72: e5 44
	inc $71                  ; $cb74: e6 71
	sbc $26                  ; $cb76: e5 26
	inc $71                  ; $cb78: e6 71
	sbc $08                  ; $cb7a: e5 08
	inc $71                  ; $cb7c: e6 71
	sbc $26                  ; $cb7e: e5 26
	inc $71                  ; $cb80: e6 71
	sbc $fa                  ; $cb82: e5 fa
	stz $ca                  ; $cb84: 64 ca
	cmp ($7d)                ; $cb86: d2 7d
	pei $96                  ; $cb88: d4 96
	nop                      ; $cb8a: ea
	and [$e4]                ; $cb8b: 27 e4
	ora $e7                  ; $cb8d: 05 e7
	cop #$e2                 ; $cb8f: 02 e2
	beq $cb94                ; $cb91: f0 01
loc_cb93:
	php                      ; $cb93: 08
loc_cb94:
	wai                      ; $cb94: cb
	php                      ; $cb95: 08
	wai                      ; $cb96: cb
	php                      ; $cb97: 08
	wai                      ; $cb98: cb
	inc $ad                  ; $cb99: e6 ad
	sbc $08                  ; $cb9b: e5 08
	inc $ad                  ; $cb9d: e6 ad
	wai                      ; $cb9f: cb
	lda $adcb                ; $cba0: ad cb ad
	wai                      ; $cba3: cb
	lda $f9cb                ; $cba4: ad cb f9
	cop #$bb                 ; $cba7: 02 bb
	wai                      ; $cba9: cb
	sta $cb8fcb              ; $cbaa: 8f cb 8f cb
	sta $8f71cb              ; $cbae: 8f cb 71 8f
	adc ($cb),y              ; $cbb2: 71 cb
	adc ($cb),y              ; $cbb4: 71 cb
	adc ($71),y              ; $cbb6: 71 71
	sta $f1e5ad              ; $cbb8: 8f ad e5 f1
	sta $cb8fcb              ; $cbbc: 8f cb 8f cb
	sta $e5adcb              ; $cbc0: 8f cb ad e5
	mvp $26,$cb              ; $cbc4: 44 26 cb
	php                      ; $cbc7: 08
	wai                      ; $cbc8: cb
	inc $ad                  ; $cbc9: e6 ad
	wai                      ; $cbcb: cb
	sbc $08                  ; $cbcc: e5 08
	wai                      ; $cbce: cb
	beq $cbd2                ; $cbcf: f0 01
loc_cbd1:
	php                      ; $cbd1: 08
loc_cbd2:
	wai                      ; $cbd2: cb
	php                      ; $cbd3: 08
	wai                      ; $cbd4: cb
	inc $ad                  ; $cbd5: e6 ad
	wai                      ; $cbd7: cb
	lda $adcb                ; $cbd8: ad cb ad
	wai                      ; $cbdb: cb
	lda $8fcb                ; $cbdc: ad cb 8f
	wai                      ; $cbdf: cb
	sta $cb8fcb              ; $cbe0: 8f cb 8f cb
	sta $cb80cb              ; $cbe4: 8f cb 80 cb
	bra $cbb5                ; $cbe8: 80 cb
	sbc $f702,y              ; $cbea: f9 02 f7
	wai                      ; $cbed: cb
	adc ($cb),y              ; $cbee: 71 cb
	adc ($cb),y              ; $cbf0: 71 cb
	adc ($71),y              ; $cbf2: 71 71
	sta $f1e5ad              ; $cbf4: 8f ad e5 f1
	adc ($cb),y              ; $cbf8: 71 cb
	adc ($cb),y              ; $cbfa: 71 cb
	adc ($cb),y              ; $cbfc: 71 cb
	adc ($cb),y              ; $cbfe: 71 cb
	sbc $f0                  ; $cc00: e5 f0
	ora ($26,x)              ; $cc02: 01 26
	wai                      ; $cc04: cb
	rol $cb                  ; $cc05: 26 cb
	php                      ; $cc07: 08
	wai                      ; $cc08: cb
	php                      ; $cc09: 08
	wai                      ; $cc0a: cb
	php                      ; $cc0b: 08
	wai                      ; $cc0c: cb
	php                      ; $cc0d: 08
	wai                      ; $cc0e: cb
	php                      ; $cc0f: 08
	wai                      ; $cc10: cb
	php                      ; $cc11: 08
	wai                      ; $cc12: cb
	sbc $2902,y              ; $cc13: f9 02 29
	cpy $cb26                ; $cc16: cc 26 cb
	rol $cb                  ; $cc19: 26 cb
	inc $ad                  ; $cc1b: e6 ad
	wai                      ; $cc1d: cb
	lda $e5cb                ; $cc1e: ad cb e5
	php                      ; $cc21: 08
	wai                      ; $cc22: cb
	php                      ; $cc23: 08
	wai                      ; $cc24: cb
	php                      ; $cc25: 08
	wai                      ; $cc26: cb
	php                      ; $cc27: 08
	wai                      ; $cc28: cb
	sbc ($e6),y              ; $cc29: f1 e6
	sta $cb8fcb              ; $cc2b: 8f cb 8f cb
	sta $cb8fcb              ; $cc2f: 8f cb 8f cb
	sbc $08                  ; $cc33: e5 08
	wai                      ; $cc35: cb
	inc $ad                  ; $cc36: e6 ad
	wai                      ; $cc38: cb
	sta $cbadcb              ; $cc39: 8f cb ad cb
	sbc $fa                  ; $cc3d: e5 fa
	sta ($cb),y              ; $cc3f: 91 cb
	asl $5505                ; $cc41: 0e 05 55
	cpy $ccd2                ; $cc44: cc d2 cc
	eor [$cd],y              ; $cc47: 57 cd
	eor $ce                  ; $cc49: 45 ce
	txs                      ; $cc4b: 9a
	dec $cef7                ; $cc4c: ce f7 ce
	adc #$cf                 ; $cc4f: 69 cf
	stx $d0,y                ; $cc51: 96 d0
	eor ($d1),y              ; $cc53: 51 d1
	sed                      ; $cc55: f8
	jml [$50f3]              ; $cc56: dc f3 50
	sbc [$3c],y              ; $cc59: f7 3c
	brk #$f5                 ; $cc5b: 00 f5

; === Block $cb08-$cb0a (Code) ===
loc_cb08:
	eor ($ad,s),y            ; $cb08: 53 ad

; === Block $cb1e-$cb23 (Code) ===
loc_cb1e:
	eor ($e6,s),y            ; $cb1e: 53 e6
	stz $53e5,x              ; $cb20: 9e e5 53

; === Block $cbaf-$cbb2 (Code) ===
loc_cbaf:
	wai                      ; $cbaf: cb
	adc ($8f),y              ; $cbb0: 71 8f

; === Block $cbb5-$cbb6 (Code) ===
loc_cbb5:
	wai                      ; $cbb5: cb

; === Block $cc82-$ccb0 (Code) ===
sub_cc82:
	php                      ; $cc82: 08
	inc $ad                  ; $cc83: e6 ad
	sbc $04                  ; $cc85: e5 04
	inc $53                  ; $cc87: e6 53
	adc ($8f),y              ; $cc89: 71 8f
	lda $aa8f                ; $cc8b: ad 8f aa
	rtl                      ; $cc8e: 6b
	sbc $f1                  ; $cc8f: e5 f1
	php                      ; $cc91: 08
	inc $ad                  ; $cc92: e6 ad
	sbc $04                  ; $cc94: e5 04
	php                      ; $cc96: 08
	rol $44                  ; $cc97: 26 44
	bvc $ccdc                ; $cc99: 50 41
loc_cc9b:
	and $41,s                ; $cc9b: 23 41
	beq $cca0                ; $cc9d: f0 01
loc_cc9f:
	ror                      ; $cc9f: 6a
loc_cca0:
	sty $8c6a                ; $cca0: 8c 6a 8c
	rtl                      ; $cca3: 6b
	eor $f13c                ; $cca4: 4d 3c f1
	beq $ccaa                ; $cca7: f0 01
loc_cca9:
	iny                      ; $cca9: c8
loc_ccaa:
	sta $445371              ; $ccaa: 8f 71 53 44
	rol $44                  ; $ccae: 26 44
	brk #$f9                 ; $ccb0: 00 f9

; === Block $ccdc-$cd44 (Code) ===
loc_ccdc:
	sep #$eb                 ; $ccdc: e2 eb
	phd                      ; $ccde: 0b
	cpx $ed02                ; $ccdf: ec 02 ed
	asl $ee                  ; $cce2: 06 ee
	asl $f0                  ; $cce4: 06 f0
	ora ($08,x)              ; $cce6: 01 08
	inc $ad                  ; $cce8: e6 ad
	sbc $04                  ; $ccea: e5 04
	inc $53                  ; $ccec: e6 53
	adc ($8f),y              ; $ccee: 71 8f
	lda $a68f                ; $ccf0: ad 8f a6
	sbc $0502,y              ; $ccf3: f9 02 05
	cmp $718f                ; $ccf6: cd 8f 71
	phb                      ; $ccf9: 8b
	rol $44                  ; $ccfa: 26 44
	eor ($71,s),y            ; $ccfc: 53 71
	eor ($6e,s),y            ; $ccfe: 53 6e
	mvp $44,$53              ; $cd00: 44 44 53
	adc ($e5),y              ; $cd03: 71 e5
	sbc ($8f),y              ; $cd05: f1 8f
	adc ($8b),y              ; $cd07: 71 8b
	sta $08e5ad              ; $cd09: 8f ad e5 08
	and $05,s                ; $cd0d: 23 05
	inc $aa                  ; $cd0f: e6 aa
	sbc $05                  ; $cd11: e5 05
	beq $cd16                ; $cd13: f0 01
loc_cd15:
	rol $202f,x              ; $cd15: 3e 2f 20
	ora ($02),y              ; $cd18: 11 02
	inc $a7                  ; $cd1a: e6 a7
	sbc $2602,y              ; $cd1c: f9 02 26
	cmp $bc6b                ; $cd1f: cd 6b bc
	adc ($8f),y              ; $cd22: 71 8f
	lda $f1e5                ; $cd24: ad e5 f1
	sbc $00                  ; $cd27: e5 00
	beq $cd2c                ; $cd29: f0 01
loc_cd2b:
	iny                      ; $cd2b: c8
loc_cd2c:
	eor ($44,s),y            ; $cd2c: 53 44
	rol $08                  ; $cd2e: 26 08
	inc $9e                  ; $cd30: e6 9e
	sbc $08                  ; $cd32: e5 08
	inc $87                  ; $cd34: e6 87
	sbc $4502,y              ; $cd36: f9 02 45
	cmp $e5c8                ; $cd39: cd c8 e5
	rol $08                  ; $cd3c: 26 08
	inc $ad                  ; $cd3e: e6 ad
	sta $e58f80              ; $cd40: 8f 80 8f e5
	brk #$f1                 ; $cd44: 00 f1

; === Block $cd16-$cd1a (Code) ===
loc_cd16:
	and $021120              ; $cd16: 2f 20 11 02

; === Block $cecd-$cf9e (Code) ===
loc_cecd:
	sbc $02                  ; $cecd: e5 02
	inc $a7                  ; $cecf: e6 a7
	lda [$89]                ; $ced1: a7 89
	bit #$7a                 ; $ced3: 89 7a
	sbc $de02,y              ; $ced5: f9 02 de
	dec $716b                ; $ced8: ce 6b 71
	adc ($8f),y              ; $cedb: 71 8f
	lda $6bf1                ; $cedd: ad f1 6b
	rtl                      ; $cee0: 6b
	tya                      ; $cee1: 98
	rtl                      ; $cee2: 6b
	sta [$e5]                ; $cee3: 87 e5
	jsr $a7e6                ; $cee5: 20 e6 a7
loc_cee8:
	sbc $00                  ; $cee8: e5 00
	inc $98                  ; $ceea: e6 98
	rtl                      ; $ceec: 6b
	sta [$89]                ; $ceed: 87 89
	bit #$6e                 ; $ceef: 89 6e
	ror $6e6e                ; $cef1: 6e 6e 6e
	plx                      ; $cef4: fa
	lda $d2ce                ; $cef5: ad ce d2
	and ($d4)                ; $cef8: 32 d4
	cpx #$ea                 ; $cefa: e0 ea
	rol $e4                  ; $cefc: 26 e4
	tsb $e7                  ; $cefe: 04 e7
	cop #$e2                 ; $cf00: 02 e2
	xba                      ; $cf02: eb
	tsb $02ec                ; $cf03: 0c ec 02
	sbc $ee05                ; $cf06: ed 05 ee
	asl $f0                  ; $cf09: 06 f0
	ora ($01,x)              ; $cf0b: 01 01
	inc $ad                  ; $cf0d: e6 ad
	sbc $08                  ; $cf0f: e5 08
	inc $a7                  ; $cf11: e6 a7
	lda #$71                 ; $cf13: a9 71
	sbc $2202,y              ; $cf15: f9 02 22
	cmp $8f7188              ; $cf18: cf 88 71 8f
	rtl                      ; $cf1c: 6b
	adc ($71),y              ; $cf1d: 71 71
	sta $f1e5ad              ; $cf1f: 8f ad e5 f1
	dey                      ; $cf23: 88
	sbc $26                  ; $cf24: e5 26
	mvp $50,$41              ; $cf26: 44 50 41
	and $41,s                ; $cf29: 23 41
	rol $202f,x              ; $cf2b: 3e 2f 20
	ora ($02),y              ; $cf2e: 11 02
	inc $a7                  ; $cf30: e6 a7
	rol $4444,x              ; $cf32: 3e 44 44
	eor ($71,s),y            ; $cf35: 53 71
	sbc $3e                  ; $cf37: e5 3e
	and $021120              ; $cf39: 2f 20 11 02
	inc $a7                  ; $cf3d: e6 a7
	rol $e53e,x              ; $cf3f: 3e 3e e5
	jsr $98e6                ; $cf42: 20 e6 98
loc_cf45:
	sbc $00                  ; $cf45: e5 00
	eor $3c20                ; $cf47: 4d 20 3c
	jsr $98e6                ; $cf4a: 20 e6 98
loc_cf4d:
	sbc $00                  ; $cf4d: e5 00
	cop #$02                 ; $cf4f: 02 02
	ror $37d2                ; $cf51: 6e d2 37
	adc ($55,s),y            ; $cf54: 73 55
	lsr $28                  ; $cf56: 46 28
	lsr $28                  ; $cf58: 46 28
	asl                      ; $cf5a: 0a
	inc $af                  ; $cf5b: e6 af
	sbc $0a                  ; $cf5d: e5 0a
	inc $af                  ; $cf5f: e6 af
	sta ($73),y              ; $cf61: 91 73
	sbc $d2                  ; $cf63: e5 d2
	and ($fa)                ; $cf65: 32 fa
	asl                      ; $cf67: 0a
	cmp $d47dd2              ; $cf68: cf d2 7d d4
	stx $ea,y                ; $cf6c: 96 ea
	and [$e4]                ; $cf6e: 27 e4
	ora $e7                  ; $cf70: 05 e7
	cop #$e2                 ; $cf72: 02 e2
	beq $cf77                ; $cf74: f0 01
loc_cf76:
	mvp $e6,$8f              ; $cf76: 44 e6 8f
	sbc $44                  ; $cf79: e5 44
	inc $8f                  ; $cf7b: e6 8f
	sbc $44                  ; $cf7d: e5 44
	inc $8f                  ; $cf7f: e6 8f
	sbc $44                  ; $cf81: e5 44
	inc $8f                  ; $cf83: e6 8f
	sbc $26                  ; $cf85: e5 26
	inc $71                  ; $cf87: e6 71
	sbc $26                  ; $cf89: e5 26
	inc $71                  ; $cf8b: e6 71
	sbc $26                  ; $cf8d: e5 26
	inc $71                  ; $cf8f: e6 71
	sbc $26                  ; $cf91: e5 26
	inc $44                  ; $cf93: e6 44
	sbc $b202,y              ; $cf95: f9 02 b2
	cmp $e608e5              ; $cf98: cf e5 08 e6
	eor ($e5,s),y            ; $cf9c: 53 e5

; === Block $cef3-$cefc (Code) ===
loc_cef3:
	ror $adfa                ; $cef3: 6e fa ad
	dec $32d2                ; $cef6: ce d2 32
	pei $e0                  ; $cef9: d4 e0
	nop                      ; $cefb: ea

; === Block $cf77-$cf79 (Code) ===
loc_cf77:
	inc $8f                  ; $cf77: e6 8f

; === Block $cf9e-$d223 (Code) ===
sub_cf9e:
	php                      ; $cf9e: 08
	inc $53                  ; $cf9f: e6 53
	sbc $08                  ; $cfa1: e5 08
	inc $53                  ; $cfa3: e6 53
	sbc $08                  ; $cfa5: e5 08
	inc $53                  ; $cfa7: e6 53
	lda $ad44                ; $cfa9: ad 44 ad
	mvp $ad,$ad              ; $cfac: 44 ad ad
	sbc $08                  ; $cfaf: e5 08
	rol $f1                  ; $cfb1: 26 f1
	sbc $08                  ; $cfb3: e5 08
	inc $53                  ; $cfb5: e6 53
	sbc $08                  ; $cfb7: e5 08
	inc $53                  ; $cfb9: e6 53
	sbc $08                  ; $cfbb: e5 08
	inc $53                  ; $cfbd: e6 53
	sbc $26                  ; $cfbf: e5 26
	inc $53                  ; $cfc1: e6 53
	sbc $53                  ; $cfc3: e5 53
	inc $71                  ; $cfc5: e6 71
	sbc $44                  ; $cfc7: e5 44
	inc $71                  ; $cfc9: e6 71
	sbc $26                  ; $cfcb: e5 26
	inc $71                  ; $cfcd: e6 71
	sbc $44                  ; $cfcf: e5 44
	inc $71                  ; $cfd1: e6 71
	sbc $f0                  ; $cfd3: e5 f0
	ora ($44,x)              ; $cfd5: 01 44
	inc $8f                  ; $cfd7: e6 8f
	sbc $44                  ; $cfd9: e5 44
	inc $8f                  ; $cfdb: e6 8f
	sbc $35                  ; $cfdd: e5 35
	inc $8f                  ; $cfdf: e6 8f
	sbc $35                  ; $cfe1: e5 35
	inc $8f                  ; $cfe3: e6 8f
	sbc $26                  ; $cfe5: e5 26
	inc $71                  ; $cfe7: e6 71
	sbc $26                  ; $cfe9: e5 26
	inc $71                  ; $cfeb: e6 71
	sbc $17                  ; $cfed: e5 17
	inc $71                  ; $cfef: e6 71
	sbc $17                  ; $cff1: e5 17
	inc $71                  ; $cff3: e6 71
	sbc $0e02,y              ; $cff5: f9 02 0e
	bne $cfdf                ; $cff8: d0 e5
loc_cffa:
	php                      ; $cffa: 08
	inc $53                  ; $cffb: e6 53
	sbc $08                  ; $cffd: e5 08
	inc $53                  ; $cfff: e6 53
	lda $ad53                ; $d001: ad 53 ad
	eor ($ad,s),y            ; $d004: 53 ad
	mvp $ad,$44              ; $d006: 44 ad 44
	lda $e5ad                ; $d009: ad ad e5
	php                      ; $d00c: 08
	rol $f1                  ; $d00d: 26 f1
	sbc $08                  ; $d00f: e5 08
	inc $53                  ; $d011: e6 53
	sbc $08                  ; $d013: e5 08
	inc $53                  ; $d015: e6 53
	lda $ad53                ; $d017: ad 53 ad
	eor ($e5,s),y            ; $d01a: 53 e5
	php                      ; $d01c: 08
	inc $44                  ; $d01d: e6 44
	sbc $08                  ; $d01f: e5 08
	inc $44                  ; $d021: e6 44
	sbc $08                  ; $d023: e5 08
	inc $44                  ; $d025: e6 44
	sbc $08                  ; $d027: e5 08
	inc $08                  ; $d029: e6 08
	beq $d02e                ; $d02b: f0 01
loc_d02d:
	sbc $53                  ; $d02d: e5 53
	inc $9e                  ; $d02f: e6 9e
	sbc $53                  ; $d031: e5 53
	inc $9e                  ; $d033: e6 9e
	sbc $44                  ; $d035: e5 44
	inc $9e                  ; $d037: e6 9e
	sbc $44                  ; $d039: e5 44
	inc $9e                  ; $d03b: e6 9e
	sbc $44                  ; $d03d: e5 44
	inc $8f                  ; $d03f: e6 8f
	sbc $44                  ; $d041: e5 44
	inc $8f                  ; $d043: e6 8f
	sbc $44                  ; $d045: e5 44
	inc $8f                  ; $d047: e6 8f
	sbc $44                  ; $d049: e5 44
	inc $8f                  ; $d04b: e6 8f
	sbc $7102,y              ; $d04d: f9 02 71
	bne $d037                ; $d050: d0 e5
loc_d052:
	eor ($e6,s),y            ; $d052: 53 e6
	lda $53e5                ; $d054: ad e5 53
	inc $ad                  ; $d057: e6 ad
	sbc $26                  ; $d059: e5 26
	inc $80                  ; $d05b: e6 80
	sbc $26                  ; $d05d: e5 26
	inc $80                  ; $d05f: e6 80
	sbc $44                  ; $d061: e5 44
	inc $8f                  ; $d063: e6 8f
	sbc $44                  ; $d065: e5 44
	inc $8f                  ; $d067: e6 8f
	sbc $44                  ; $d069: e5 44
	inc $8f                  ; $d06b: e6 8f
	sbc $44                  ; $d06d: e5 44
	inc $08                  ; $d06f: e6 08
	sbc ($e5),y              ; $d071: f1 e5
	php                      ; $d073: 08
	inc $53                  ; $d074: e6 53
	sbc $08                  ; $d076: e5 08
	inc $53                  ; $d078: e6 53
	sbc $08                  ; $d07a: e5 08
	inc $53                  ; $d07c: e6 53
	sbc $08                  ; $d07e: e5 08
	inc $53                  ; $d080: e6 53
	sbc $44                  ; $d082: e5 44
	inc $71                  ; $d084: e6 71
	sbc $26                  ; $d086: e5 26
	inc $71                  ; $d088: e6 71
	sbc $08                  ; $d08a: e5 08
	inc $71                  ; $d08c: e6 71
	sbc $26                  ; $d08e: e5 26
	inc $71                  ; $d090: e6 71
	sbc $fa                  ; $d092: e5 fa
	stz $cf,x                ; $d094: 74 cf
	cmp ($7d)                ; $d096: d2 7d
	pei $96                  ; $d098: d4 96
	nop                      ; $d09a: ea
	and [$e4]                ; $d09b: 27 e4
	ora $e7                  ; $d09d: 05 e7
	cop #$e2                 ; $d09f: 02 e2
	beq $d0a4                ; $d0a1: f0 01
loc_d0a3:
	php                      ; $d0a3: 08
loc_d0a4:
	wai                      ; $d0a4: cb
	php                      ; $d0a5: 08
	wai                      ; $d0a6: cb
	php                      ; $d0a7: 08
	wai                      ; $d0a8: cb
	inc $ad                  ; $d0a9: e6 ad
	sbc $08                  ; $d0ab: e5 08
	inc $ad                  ; $d0ad: e6 ad
	wai                      ; $d0af: cb
	lda $adcb                ; $d0b0: ad cb ad
	wai                      ; $d0b3: cb
	lda $f9cb                ; $d0b4: ad cb f9
	cop #$cb                 ; $d0b7: 02 cb
	bne $d04a                ; $d0b9: d0 8f
loc_d0bb:
	wai                      ; $d0bb: cb
	sta $cb8fcb              ; $d0bc: 8f cb 8f cb
	adc ($8f),y              ; $d0c0: 71 8f
	adc ($cb),y              ; $d0c2: 71 cb
	adc ($cb),y              ; $d0c4: 71 cb
	adc ($71),y              ; $d0c6: 71 71
	sta $f1e5ad              ; $d0c8: 8f ad e5 f1
	sta $cb8fcb              ; $d0cc: 8f cb 8f cb
	sta $e5adcb              ; $d0d0: 8f cb ad e5
	mvp $26,$cb              ; $d0d4: 44 26 cb
	php                      ; $d0d7: 08
	wai                      ; $d0d8: cb
	inc $ad                  ; $d0d9: e6 ad
	wai                      ; $d0db: cb
	sbc $08                  ; $d0dc: e5 08
	wai                      ; $d0de: cb
	beq $d0e2                ; $d0df: f0 01
loc_d0e1:
	php                      ; $d0e1: 08
loc_d0e2:
	wai                      ; $d0e2: cb
	php                      ; $d0e3: 08
	wai                      ; $d0e4: cb
	inc $ad                  ; $d0e5: e6 ad
	wai                      ; $d0e7: cb
	lda $adcb                ; $d0e8: ad cb ad
	wai                      ; $d0eb: cb
	lda $8fcb                ; $d0ec: ad cb 8f
	wai                      ; $d0ef: cb
	sta $cb8fcb              ; $d0f0: 8f cb 8f cb
	sta $cb80cb              ; $d0f4: 8f cb 80 cb
	bra $d0c5                ; $d0f8: 80 cb
	sbc $0702,y              ; $d0fa: f9 02 07
	cmp ($71),y              ; $d0fd: d1 71
	wai                      ; $d0ff: cb
	adc ($cb),y              ; $d100: 71 cb
	adc ($71),y              ; $d102: 71 71
	sta $f1e5ad              ; $d104: 8f ad e5 f1
	adc ($cb),y              ; $d108: 71 cb
	adc ($cb),y              ; $d10a: 71 cb
	adc ($cb),y              ; $d10c: 71 cb
	adc ($cb),y              ; $d10e: 71 cb
	sbc $f0                  ; $d110: e5 f0
	ora ($26,x)              ; $d112: 01 26
	wai                      ; $d114: cb
	rol $cb                  ; $d115: 26 cb
	php                      ; $d117: 08
	wai                      ; $d118: cb
	php                      ; $d119: 08
	wai                      ; $d11a: cb
	php                      ; $d11b: 08
	wai                      ; $d11c: cb
	php                      ; $d11d: 08
	wai                      ; $d11e: cb
	php                      ; $d11f: 08
	wai                      ; $d120: cb
	php                      ; $d121: 08
	wai                      ; $d122: cb
	sbc $3902,y              ; $d123: f9 02 39
	cmp ($26),y              ; $d126: d1 26
	wai                      ; $d128: cb
	rol $cb                  ; $d129: 26 cb
	inc $ad                  ; $d12b: e6 ad
	wai                      ; $d12d: cb
	lda $e5cb                ; $d12e: ad cb e5
	php                      ; $d131: 08
	wai                      ; $d132: cb
	php                      ; $d133: 08
	wai                      ; $d134: cb
	php                      ; $d135: 08
	wai                      ; $d136: cb
	php                      ; $d137: 08
	wai                      ; $d138: cb
	sbc ($e6),y              ; $d139: f1 e6
	sta $cb8fcb              ; $d13b: 8f cb 8f cb
	sta $cb8fcb              ; $d13f: 8f cb 8f cb
	sbc $08                  ; $d143: e5 08
	wai                      ; $d145: cb
	inc $ad                  ; $d146: e6 ad
	wai                      ; $d148: cb
	sta $cbadcb              ; $d149: 8f cb ad cb
	sbc $fa                  ; $d14d: e5 fa
	lda ($d0,x)              ; $d14f: a1 d0
	bcs $d15b                ; $d151: b0 08
loc_d153:
	adc $d1                  ; $d153: 65 d1
	pha                      ; $d155: 48
	cmp ($2b)                ; $d156: d2 2b
	cmp ($9a,s),y            ; $d158: d3 9a
	cmp ($10,s),y            ; $d15a: d3 10
	cmp $ab,x                ; $d15c: d5 ab
	cmp $e9,x                ; $d15e: d5 e9
	cmp [$bb],y              ; $d160: d7 bb
	cmp $da03,y              ; $d162: d9 03 da
	sed                      ; $d165: f8
	sbc $f764f3,x            ; $d166: ff f3 64 f7
	and [$00],y              ; $d16a: 37 00
	sbc $46,x                ; $d16c: f5 46
	sbc [$02]                ; $d16e: e7 02
	cmp ($67)                ; $d170: d2 67
	pei $80                  ; $d172: d4 80
	nop                      ; $d174: ea
	plp                      ; $d175: 28
	sbc [$02]                ; $d176: e7 02
	sep #$e4                 ; $d178: e2 e4
	ora $46                  ; $d17a: 05 46
	cmp $cd28                ; $d17c: cd 28 cd
	lsr $c8                  ; $d17f: 46 c8
	inc $8f                  ; $d181: e6 8f
	cmp $cdaf                ; $d183: cd af cd
	sbc $0a                  ; $d186: e5 0a
	cmp $cd28                ; $d188: cd 28 cd
	asl                      ; $d18b: 0a
	cmp $c528                ; $d18c: cd 28 c5
	dex                      ; $d18f: ca
	asl                      ; $d190: 0a
	cmp $afe6                ; $d191: cd e6 af
	cmp $0ae5                ; $d194: cd e5 0a
	iny                      ; $d197: c8
	inc $53                  ; $d198: e6 53
	cmp $cd73                ; $d19a: cd 73 cd
	sta ($cd),y              ; $d19d: 91 cd
	lda $cd91cd              ; $d19f: af cd 91 cd
	lda $cd73cb              ; $d1a3: af cb 73 cd
	adc ($cd),y              ; $d1a7: 71 cd
	sta ($cd),y              ; $d1a9: 91 cd
	lda $46e5cd              ; $d1ab: af cd e5 46
	cmp $cd28                ; $d1af: cd 28 cd
	lsr $c8                  ; $d1b2: 46 c8
	inc $8f                  ; $d1b4: e6 8f
	cmp $cdaf                ; $d1b6: cd af cd
	sbc $0a                  ; $d1b9: e5 0a
	cmp $cd28                ; $d1bb: cd 28 cd
	asl                      ; $d1be: 0a
	cmp $c528                ; $d1bf: cd 28 c5
	dex                      ; $d1c2: ca
	asl                      ; $d1c3: 0a
	cmp $afe6                ; $d1c4: cd e6 af
	cmp $0ae5                ; $d1c7: cd e5 0a
	iny                      ; $d1ca: c8
	php                      ; $d1cb: 08
	cmp $cd28                ; $d1cc: cd 28 cd
	lsr $cd                  ; $d1cf: 46 cd
	eor $ca,x                ; $d1d1: 55 ca
	lsr $ca                  ; $d1d3: 46 ca
	plp                      ; $d1d5: 28
	dex                      ; $d1d6: ca
	lsr $ca                  ; $d1d7: 46 ca
	adc ($c7,s),y            ; $d1d9: 73 c7
	cmp $ca73                ; $d1db: cd 73 ca
	sta ($ca),y              ; $d1de: 91 ca
	adc ($c7,s),y            ; $d1e0: 73 c7
	cmp $ca73                ; $d1e2: cd 73 ca
	sta ($ca),y              ; $d1e5: 91 ca
	adc ($c7,s),y            ; $d1e7: 73 c7
	cmp $c755                ; $d1e9: cd 55 c7
	cmp $c546                ; $d1ec: cd 46 c5
	mvp $cd,$55              ; $d1ef: 44 cd 55
	cmp $cd46                ; $d1f2: cd 46 cd
	adc ($c7,s),y            ; $d1f5: 73 c7
	cmp $ca73                ; $d1f7: cd 73 ca
	sta ($ca),y              ; $d1fa: 91 ca
	adc ($c7,s),y            ; $d1fc: 73 c7
	cmp $ca73                ; $d1fe: cd 73 ca
	sta ($ca),y              ; $d201: 91 ca
	adc ($c7,s),y            ; $d203: 73 c7
loc_d205:
	cmp $c755                ; $d205: cd 55 c7
loc_d208:
	cmp $c446                ; $d208: cd 46 c4
	dex                      ; $d20b: ca
	cmp ($4e)                ; $d20c: d2 4e
	pei $80                  ; $d20e: d4 80
	nop                      ; $d210: ea
	rol $eb                  ; $d211: 26 eb
	tsb $02ec                ; $d213: 0c ec 02
	sbc $ee06                ; $d216: ed 06 ee
	tsb $e4                  ; $d219: 04 e4
	ora $c8                  ; $d21b: 05 c8
	sta $445371              ; $d21d: 8f 71 53 44
	rol $44                  ; $d221: 26 44
	brk #$c8                 ; $d223: 00 c8

; === Block $d02e-$d033 (Code) ===
loc_d02e:
	eor ($e6,s),y            ; $d02e: 53 e6
	stz $53e5,x              ; $d030: 9e e5 53

; === Block $d04a-$d04d (Code) ===
loc_d04a:
	mvp $e6,$8f              ; $d04a: 44 e6 8f

; === Block $d0c5-$d0c6 (Code) ===
loc_d0c5:
	wai                      ; $d0c5: cb

; === Block $d15b-$d15e (Code) ===
loc_d15b:
	bpl $d132                ; $d15b: 10 d5
loc_d15d:
	plb                      ; $d15d: ab

; === Block $d19e-$d1a3 (Code) ===
loc_d19e:
	cmp $cdaf                ; $d19e: cd af cd
	sta ($cd),y              ; $d1a1: 91 cd

; === Block $d20a-$d20c (Code) ===
loc_d20a:
	cpy $ca                  ; $d20a: c4 ca

; === Block $d2c9-$d30f (Code) ===
loc_d2c9:
	asl                      ; $d2c9: 0a
	cmp $08                  ; $d2ca: c5 08
	cmp $cd28                ; $d2cc: cd 28 cd
	asl                      ; $d2cf: 0a
	cmp $c746                ; $d2d0: cd 46 c7
	cmp $ca37                ; $d2d3: cd 37 ca
	and [$ca],y              ; $d2d6: 37 ca
	plp                      ; $d2d8: 28
	cmp [$cd]                ; $d2d9: c7 cd
	ora $19ca,y              ; $d2db: 19 ca 19
	dex                      ; $d2de: ca
	asl                      ; $d2df: 0a
	cmp [$cd]                ; $d2e0: c7 cd
	inc $af                  ; $d2e2: e6 af
	cmp [$cd]                ; $d2e4: c7 cd
	sbc $0a                  ; $d2e6: e5 0a
	cpy $ca                  ; $d2e8: c4 ca
	cmp ($30)                ; $d2ea: d2 30
	pei $60                  ; $d2ec: d4 60
	nop                      ; $d2ee: ea
	rol $eb                  ; $d2ef: 26 eb
	tsb $02ec                ; $d2f1: 0c ec 02
	sbc $ee06                ; $d2f4: ed 06 ee
	tsb $e4                  ; $d2f7: 04 e4
	ora $c8                  ; $d2f9: 05 c8
	eor ($44,s),y            ; $d2fb: 53 44
	rol $08                  ; $d2fd: 26 08
	inc $9e                  ; $d2ff: e6 9e
	sbc $08                  ; $d301: e5 08
	inc $87                  ; $d303: e6 87
	iny                      ; $d305: c8
	sbc $26                  ; $d306: e5 26
	php                      ; $d308: 08
	inc $ad                  ; $d309: e6 ad
	sta $e58f80              ; $d30b: 8f 80 8f e5
	brk #$c8                 ; $d30f: 00 c8

; === Block $d342-$d3a7 (Code) ===
loc_d342:
	php                      ; $d342: 08
	inc $a7                  ; $d343: e6 a7
	clv                      ; $d345: b8
	adc ($88),y              ; $d346: 71 88
	adc ($8f),y              ; $d348: 71 8f
	rtl                      ; $d34a: 6b
	adc ($71),y              ; $d34b: 71 71
	sta $01e5ad              ; $d34d: 8f ad e5 01
	inc $ad                  ; $d351: e6 ad
	sbc $08                  ; $d353: e5 08
	inc $a7                  ; $d355: e6 a7
	clv                      ; $d357: b8
	adc ($88),y              ; $d358: 71 88
	sbc $26                  ; $d35a: e5 26
	mvp $50,$41              ; $d35c: 44 50 41
	and $41,s                ; $d35f: 23 41
	rol $202f,x              ; $d361: 3e 2f 20
	ora ($02),y              ; $d364: 11 02
	inc $a7                  ; $d366: e6 a7
	rol $4444,x              ; $d368: 3e 44 44
	eor ($71,s),y            ; $d36b: 53 71
	sbc $3e                  ; $d36d: e5 3e
	and $021120              ; $d36f: 2f 20 11 02
	inc $a7                  ; $d373: e6 a7
	sbc $00                  ; $d375: e5 00
	inc $98                  ; $d377: e6 98
	rtl                      ; $d379: 6b
	sta [$e5]                ; $d37a: 87 e5
	jsr $a7e6                ; $d37c: 20 e6 a7
loc_d37f:
	sbc $00                  ; $d37f: e5 00
	inc $98                  ; $d381: e6 98
	rtl                      ; $d383: 6b
	sta [$e5]                ; $d384: 87 e5
	asl $736e,x              ; $d386: 1e 6e 73
	eor $46,x                ; $d389: 55 46
	plp                      ; $d38b: 28
	lsr $28                  ; $d38c: 46 28
	asl                      ; $d38e: 0a
	inc $af                  ; $d38f: e6 af
	sbc $0a                  ; $d391: e5 0a
	inc $af                  ; $d393: e6 af
	sta ($73),y              ; $d395: 91 73
	plx                      ; $d397: fa
	bit $d2d3,x              ; $d398: 3c d3 d2
	sbc $ea80d4,x            ; $d39b: ff d4 80 ea
	and #$e7                 ; $d39f: 29 e7
	cop #$ec                 ; $d3a1: 02 ec
	asl $ed                  ; $d3a3: 06 ed
	ora $ee,s                ; $d3a5: 03 ee
	brk #$e4                 ; $d3a7: 00 e4

; === Block $d6a9-$d9da (Code) ===
sub_d6a9:
	inc $55                  ; $d6a9: e6 55
	cmp $0ae5                ; $d6ab: cd e5 0a
	inc $55                  ; $d6ae: e6 55
	cmp $cdaf                ; $d6b0: cd af cd
	eor $af,x                ; $d6b3: 55 af
	cmp $cd55                ; $d6b5: cd 55 cd
	lsr $cd                  ; $d6b8: 46 cd
	lda $cd46cd              ; $d6ba: af cd 46 cd
	lda $afcd46              ; $d6be: af 46 cd af
	cmp $e546                ; $d6c2: cd 46 e5
	asl                      ; $d6c5: 0a
	cmp $cd28                ; $d6c6: cd 28 cd
	inc $91                  ; $d6c9: e6 91
	cmp $46e5                ; $d6cb: cd e5 46
	cmp $91e6                ; $d6ce: cd e6 91
sub_d6d1:
	cmp $46e5                ; $d6d1: cd e5 46
	inc $91                  ; $d6d4: e6 91
	cmp $37e5                ; $d6d6: cd e5 37
	cmp $91e6                ; $d6d9: cd e6 91
	sbc $37                  ; $d6dc: e5 37
	cmp $91e6                ; $d6de: cd e6 91
	cmp $cd73                ; $d6e1: cd 73 cd
	sbc $28                  ; $d6e4: e5 28
	cmp $73e6                ; $d6e6: cd e6 73
	cmp $28e5                ; $d6e9: cd e5 28
	inc $73                  ; $d6ec: e6 73
	cmp $19e5                ; $d6ee: cd e5 19
	cmp $73e6                ; $d6f1: cd e6 73
	sbc $19                  ; $d6f4: e5 19
	cmp $73e6                ; $d6f6: cd e6 73
	cmp $cd55                ; $d6f9: cd 55 cd
	sbc $0a                  ; $d6fc: e5 0a
	cmp $55e6                ; $d6fe: cd e6 55
	cmp $0ae5                ; $d701: cd e5 0a
	inc $55                  ; $d704: e6 55
	cmp $cdaf                ; $d706: cd af cd
	eor $af,x                ; $d709: 55 af
	cmp $cd55                ; $d70b: cd 55 cd
	lsr $cd                  ; $d70e: 46 cd
	sbc $0a                  ; $d710: e5 0a
	cmp $46e6                ; $d712: cd e6 46
	cmp $0ae5                ; $d715: cd e5 0a
	inc $46                  ; $d718: e6 46
	cmp $0ae5                ; $d71a: cd e5 0a
	cmp $46e6                ; $d71d: cd e6 46
	sbc $0a                  ; $d720: e5 0a
	cmp $46e6                ; $d722: cd e6 46
	cmp $cda0                ; $d725: cd a0 cd
	sbc $55                  ; $d728: e5 55
	cmp $a0e6                ; $d72a: cd e6 a0
	cmp $55e5                ; $d72d: cd e5 55
	inc $a0                  ; $d730: e6 a0
	cmp $46e5                ; $d732: cd e5 46
	cmp $a0e6                ; $d735: cd e6 a0
	sbc $46                  ; $d738: e5 46
	cmp $a0e6                ; $d73a: cd e6 a0
	cmp $cd91                ; $d73d: cd 91 cd
	sbc $46                  ; $d740: e5 46
	cmp $91e6                ; $d742: cd e6 91
	cmp $46e5                ; $d745: cd e5 46
	inc $91                  ; $d748: e6 91
	cmp $46e5                ; $d74a: cd e5 46
	cmp $91e6                ; $d74d: cd e6 91
	sbc $46                  ; $d750: e5 46
	cmp $91e6                ; $d752: cd e6 91
	cmp $cd91                ; $d755: cd 91 cd
	sbc $28                  ; $d758: e5 28
	cmp $91e6                ; $d75a: cd e6 91
	cmp $28e5                ; $d75d: cd e5 28
	inc $82                  ; $d760: e6 82
	cmp $28e5                ; $d762: cd e5 28
	cmp $82e6                ; $d765: cd e6 82
	sbc $28                  ; $d768: e5 28
	cmp $82e6                ; $d76a: cd e6 82
	cmp $cd91                ; $d76d: cd 91 cd
	sbc $46                  ; $d770: e5 46
	cmp $91e6                ; $d772: cd e6 91
	cmp $46e5                ; $d775: cd e5 46
	inc $91                  ; $d778: e6 91
	cmp $46e5                ; $d77a: cd e5 46
	cmp $91e6                ; $d77d: cd e6 91
	sbc $46                  ; $d780: e5 46
	cmp $91e6                ; $d782: cd e6 91
	cmp $cda0                ; $d785: cd a0 cd
	sbc $55                  ; $d788: e5 55
	cmp $a0e6                ; $d78a: cd e6 a0
	cmp $55e5                ; $d78d: cd e5 55
	inc $a0                  ; $d790: e6 a0
	cmp $46e5                ; $d792: cd e5 46
	cmp $a0e6                ; $d795: cd e6 a0
	sbc $46                  ; $d798: e5 46
	cmp $a0e6                ; $d79a: cd e6 a0
	cmp $cd91                ; $d79d: cd 91 cd
	sbc $46                  ; $d7a0: e5 46
	cmp $91e6                ; $d7a2: cd e6 91
	cmp $46e5                ; $d7a5: cd e5 46
	inc $91                  ; $d7a8: e6 91
	cmp $46e5                ; $d7aa: cd e5 46
	cmp $91e6                ; $d7ad: cd e6 91
	sbc $46                  ; $d7b0: e5 46
	cmp $73e6                ; $d7b2: cd e6 73
	cmp $cd55                ; $d7b5: cd 55 cd
	sbc $0a                  ; $d7b8: e5 0a
	cmp $55e6                ; $d7ba: cd e6 55
	cmp $0ae5                ; $d7bd: cd e5 0a
	inc $55                  ; $d7c0: e6 55
	cmp $0ae5                ; $d7c2: cd e5 0a
	cmp $55e6                ; $d7c5: cd e6 55
	sbc $0a                  ; $d7c8: e5 0a
	cmp $55e6                ; $d7ca: cd e6 55
	cmp $cd55                ; $d7cd: cd 55 cd
	sbc $0a                  ; $d7d0: e5 0a
	cmp $55e6                ; $d7d2: cd e6 55
	cmp $0ae5                ; $d7d5: cd e5 0a
	inc $55                  ; $d7d8: e6 55
	cmp $0ae5                ; $d7da: cd e5 0a
	cmp $55e6                ; $d7dd: cd e6 55
	sbc $0a                  ; $d7e0: e5 0a
	cmp $55e6                ; $d7e2: cd e6 55
	cmp $bcfa                ; $d7e5: cd fa bc
	cmp $d2,x                ; $d7e8: d5 d2
	brl $6ec1                ; $d7ea: 82 d4 96
	nop                      ; $d7ed: ea
	and [$e4]                ; $d7ee: 27 e4
	ora $e7                  ; $d7f0: 05 e7
	cop #$e2                 ; $d7f2: 02 e2
	cpx $ed06                ; $d7f4: ec 06 ed
	ora $ee,s                ; $d7f7: 03 ee
	ora ($e4),y              ; $d7f9: 11 e4
	tsb $55                  ; $d7fb: 04 55
	cmp $0ae5                ; $d7fd: cd e5 0a
	cmp $55e6                ; $d800: cd e6 55
	cmp $0ae5                ; $d803: cd e5 0a
	inc $55                  ; $d806: e6 55
	cmp $0ae5                ; $d808: cd e5 0a
	cmp $55e6                ; $d80b: cd e6 55
	adc ($cd,s),y            ; $d80e: 73 cd
	sta ($cd),y              ; $d810: 91 cd
	lsr $cd                  ; $d812: 46 cd
	lda $cd46cd              ; $d814: af cd 46 cd
	lda $afcd46              ; $d818: af 46 cd af
	cmp $af46                ; $d81c: cd 46 af
	cmp $cd46                ; $d81f: cd 46 cd
	plp                      ; $d822: 28
	cmp $cd91                ; $d823: cd 91 cd
	plp                      ; $d826: 28
	cmp $2891                ; $d827: cd 91 28
	cmp $cd91                ; $d82a: cd 91 cd
	plp                      ; $d82d: 28
	lsr $cd                  ; $d82e: 46 cd
	eor $cd,x                ; $d830: 55 cd
	asl                      ; $d832: 0a
	cmp $cd73                ; $d833: cd 73 cd
	asl                      ; $d836: 0a
	cmp $0a73                ; $d837: cd 73 0a
	cmp $cd73                ; $d83a: cd 73 cd
	asl                      ; $d83d: 0a
	sta ($cd),y              ; $d83e: 91 cd
	lda $cd55cd              ; $d840: af cd 55 cd
	sbc $0a                  ; $d844: e5 0a
	cmp $55e6                ; $d846: cd e6 55
	cmp $0ae5                ; $d849: cd e5 0a
	inc $55                  ; $d84c: e6 55
	cmp $0ae5                ; $d84e: cd e5 0a
	cmp $55e6                ; $d851: cd e6 55
	adc ($cd,s),y            ; $d854: 73 cd
	sta ($cd),y              ; $d856: 91 cd
	lsr $cd                  ; $d858: 46 cd
	lda $cd46cd              ; $d85a: af cd 46 cd
	lda $afcd46              ; $d85e: af 46 cd af
	cmp $af46                ; $d862: cd 46 af
	cmp $cd46                ; $d865: cd 46 cd
	plp                      ; $d868: 28
	cmp $cd91                ; $d869: cd 91 cd
	plp                      ; $d86c: 28
	cmp $2891                ; $d86d: cd 91 28
	cmp $cd91                ; $d870: cd 91 cd
	plp                      ; $d873: 28
	lsr $cd                  ; $d874: 46 cd
	eor $cd,x                ; $d876: 55 cd
	plp                      ; $d878: 28
	cmp $cd91                ; $d879: cd 91 cd
	plp                      ; $d87c: 28
	cmp $2891                ; $d87d: cd 91 28
	cmp $cd91                ; $d880: cd 91 cd
	plp                      ; $d883: 28
	sta ($cd),y              ; $d884: 91 cd
	plp                      ; $d886: 28
	cmp $cd55                ; $d887: cd 55 cd
	sbc $0a                  ; $d88a: e5 0a
	cmp $55e6                ; $d88c: cd e6 55
	cmp $0ae5                ; $d88f: cd e5 0a
	inc $55                  ; $d892: e6 55
	cmp $cdaf                ; $d894: cd af cd
	eor $af,x                ; $d897: 55 af
	cmp $cd55                ; $d899: cd 55 cd
	lsr $cd                  ; $d89c: 46 cd
	lda $cd46cd              ; $d89e: af cd 46 cd
	lda $91cd46              ; $d8a2: af 46 cd 91
	cmp $9146                ; $d8a6: cd 46 91
	cmp $cd46                ; $d8a9: cd 46 cd
	plp                      ; $d8ac: 28
	cmp $cd91                ; $d8ad: cd 91 cd
	plp                      ; $d8b0: 28
	cmp $2891                ; $d8b1: cd 91 28
	cmp $cd82                ; $d8b4: cd 82 cd
	plp                      ; $d8b7: 28
	brl $10188               ; $d8b8: 82 cd 28
	cmp $cd0a                ; $d8bb: cd 0a cd
	adc ($cd,s),y            ; $d8be: 73 cd
	asl                      ; $d8c0: 0a
	cmp $0a73                ; $d8c1: cd 73 0a
	cmp $cd73                ; $d8c4: cd 73 cd
	asl                      ; $d8c7: 0a
	sta ($cd),y              ; $d8c8: 91 cd
	lda $cd55cd              ; $d8ca: af cd 55 cd
	sbc $0a                  ; $d8ce: e5 0a
	cmp $55e6                ; $d8d0: cd e6 55
	cmp $0ae5                ; $d8d3: cd e5 0a
	inc $55                  ; $d8d6: e6 55
	cmp $cdaf                ; $d8d8: cd af cd
	eor $af,x                ; $d8db: 55 af
	cmp $cd55                ; $d8dd: cd 55 cd
	lsr $cd                  ; $d8e0: 46 cd
	lda $cd46cd              ; $d8e2: af cd 46 cd
	lda $91cd46              ; $d8e6: af 46 cd 91
	cmp $9146                ; $d8ea: cd 46 91
	cmp $cd46                ; $d8ed: cd 46 cd
	plp                      ; $d8f0: 28
	cmp $cd91                ; $d8f1: cd 91 cd
	plp                      ; $d8f4: 28
	cmp $2891                ; $d8f5: cd 91 28
	cmp $cd82                ; $d8f8: cd 82 cd
	plp                      ; $d8fb: 28
	brl $101cc               ; $d8fc: 82 cd 28
	cmp $cd0a                ; $d8ff: cd 0a cd
	adc ($cd,s),y            ; $d902: 73 cd
	asl                      ; $d904: 0a
	cmp $0a73                ; $d905: cd 73 0a
	cmp $cd73                ; $d908: cd 73 cd
	asl                      ; $d90b: 0a
	adc ($cd,s),y            ; $d90c: 73 cd
	asl                      ; $d90e: 0a
	cmp $cd73                ; $d90f: cd 73 cd
	sbc $28                  ; $d912: e5 28
	cmp $73e6                ; $d914: cd e6 73
	cmp $28e5                ; $d917: cd e5 28
	inc $73                  ; $d91a: e6 73
	cmp $0ae5                ; $d91c: cd e5 0a
	cmp $73e6                ; $d91f: cd e6 73
	sbc $0a                  ; $d922: e5 0a
	cmp $73e6                ; $d924: cd e6 73
	cmp $cd55                ; $d927: cd 55 cd
	sbc $0a                  ; $d92a: e5 0a
	cmp $55e6                ; $d92c: cd e6 55
	cmp $0ae5                ; $d92f: cd e5 0a
	inc $55                  ; $d932: e6 55
	cmp $0ae5                ; $d934: cd e5 0a
	cmp $55e6                ; $d937: cd e6 55
	sbc $0a                  ; $d93a: e5 0a
	cmp $55e6                ; $d93c: cd e6 55
	cmp $cd55                ; $d93f: cd 55 cd
	lda $cd55cd              ; $d942: af cd 55 cd
	lda $afcd46              ; $d946: af 46 cd af
	cmp $af46                ; $d94a: cd 46 af
	cmp $cd46                ; $d94d: cd 46 cd
	lsr $cd                  ; $d950: 46 cd
	sbc $0a                  ; $d952: e5 0a
	cmp $46e6                ; $d954: cd e6 46
	cmp $0ae5                ; $d957: cd e5 0a
	inc $46                  ; $d95a: e6 46
	cmp $0ae5                ; $d95c: cd e5 0a
	cmp $46e6                ; $d95f: cd e6 46
	sbc $0a                  ; $d962: e5 0a
	cmp $46e6                ; $d964: cd e6 46
	cmp $cd73                ; $d967: cd 73 cd
	sbc $28                  ; $d96a: e5 28
	cmp $73e6                ; $d96c: cd e6 73
	cmp $28e5                ; $d96f: cd e5 28
	inc $73                  ; $d972: e6 73
	cmp $0ae5                ; $d974: cd e5 0a
	cmp $73e6                ; $d977: cd e6 73
	sbc $0a                  ; $d97a: e5 0a
	cmp $73e6                ; $d97c: cd e6 73
	cmp $cd55                ; $d97f: cd 55 cd
	sbc $0a                  ; $d982: e5 0a
	cmp $55e6                ; $d984: cd e6 55
	cmp $0ae5                ; $d987: cd e5 0a
	inc $55                  ; $d98a: e6 55
	cmp $0ae5                ; $d98c: cd e5 0a
	cmp $55e6                ; $d98f: cd e6 55
	sbc $0a                  ; $d992: e5 0a
	cmp $46e6                ; $d994: cd e6 46
	cmp $cd28                ; $d997: cd 28 cd
	sta ($cd),y              ; $d99a: 91 cd
	plp                      ; $d99c: 28
	cmp $2891                ; $d99d: cd 91 28
	cmp $cd91                ; $d9a0: cd 91 cd
	plp                      ; $d9a3: 28
	sta ($cd),y              ; $d9a4: 91 cd
	plp                      ; $d9a6: 28
	cmp $cd28                ; $d9a7: cd 28 cd
	sta ($cd),y              ; $d9aa: 91 cd
	plp                      ; $d9ac: 28
	cmp $2891                ; $d9ad: cd 91 28
	cmp $cd91                ; $d9b0: cd 91 cd
	plp                      ; $d9b3: 28
	sta ($cd),y              ; $d9b4: 91 cd
	plp                      ; $d9b6: 28
	cmp $fafa                ; $d9b7: cd fa fa
	cmp [$d4],y              ; $d9ba: d7 d4
	bcc $d9a2                ; $d9bc: 90 e4
loc_d9be:
	ora $d2                  ; $d9be: 05 d2
	sbc $0524ea,x            ; $d9c0: ff ea 24 05
	nop                      ; $d9c4: ea
	jsl $d201f0              ; $d9c5: 22 f0 01 d2
loc_d9c9:
	iny                      ; $d9c9: c8
	php                      ; $d9ca: 08
	cmp ($c8)                ; $d9cb: d2 c8
	cpx $0806                ; $d9cd: ec 06 08
	sbc $c8d2f1              ; $d9d0: ef f1 d2 c8
	php                      ; $d9d4: 08
	cmp ($c8)                ; $d9d5: d2 c8
	cpx $ed02                ; $d9d7: ec 02 ed
	brk #$08                 ; $d9da: 00 08

; === Block $d9a2-$d9ac (Code) ===
loc_d9a2:
	cmp $9128                ; $d9a2: cd 28 91
	cmp $cd28                ; $d9a5: cd 28 cd
	plp                      ; $d9a8: 28
	cmp $cd91                ; $d9a9: cd 91 cd

; === Block $df92-$e26a (Code) ===
sub_df92:
	nop                      ; $df92: ea
	and ($ed,x)              ; $df93: 21 ed
	ora [$ee]                ; $df95: 07 ee
	clc                      ; $df97: 18
	plp                      ; $df98: 28
	cmp ($96)                ; $df99: d2 96
	nop                      ; $df9b: ea
	jsr $d20a                ; $df9c: 20 0a d2
loc_df9f:
	sbc $ed21ea,x            ; $df9f: ff ea 21 ed
	ora [$ee]                ; $dfa3: 07 ee
	trb $28                  ; $dfa5: 14 28
	cmp ($96)                ; $dfa7: d2 96
	nop                      ; $dfa9: ea
	jsr $d20a                ; $dfaa: 20 0a d2
loc_dfad:
	sbc $ed21ea,x            ; $dfad: ff ea 21 ed
	ora [$ee]                ; $dfb1: 07 ee
	trb $28                  ; $dfb3: 14 28
	cmp ($96)                ; $dfb5: d2 96
	nop                      ; $dfb7: ea
	jsr $d20a                ; $dfb8: 20 0a d2
loc_dfbb:
	iny                      ; $dfbb: c8
	nop                      ; $dfbc: ea
	and ($ed,x)              ; $dfbd: 21 ed
	ora [$ee]                ; $dfbf: 07 ee
	clc                      ; $dfc1: 18
	plp                      ; $dfc2: 28
	cmp ($ff)                ; $dfc3: d2 ff
	nop                      ; $dfc5: ea
	and ($ed,x)              ; $dfc6: 21 ed
	ora [$ee]                ; $dfc8: 07 ee
	trb $28                  ; $dfca: 14 28
sub_dfcc:
	cmp ($c8)                ; $dfcc: d2 c8
	nop                      ; $dfce: ea
	and ($ed,x)              ; $dfcf: 21 ed
	ora [$ee]                ; $dfd1: 07 ee
	clc                      ; $dfd3: 18
	plp                      ; $dfd4: 28
	cmp ($c8)                ; $dfd5: d2 c8
	nop                      ; $dfd7: ea
	and ($ed,x)              ; $dfd8: 21 ed
	ora [$ee]                ; $dfda: 07 ee
	clc                      ; $dfdc: 18
	plp                      ; $dfdd: 28
	cmp ($c8)                ; $dfde: d2 c8
	nop                      ; $dfe0: ea
	and ($ed,x)              ; $dfe1: 21 ed
	ora [$ee]                ; $dfe3: 07 ee
	clc                      ; $dfe5: 18
	plp                      ; $dfe6: 28
	beq $dfea                ; $dfe7: f0 01
loc_dfe9:
	cmp ($c8)                ; $dfe9: d2 c8
	nop                      ; $dfeb: ea
	jsr $d208                ; $dfec: 20 08 d2
loc_dfef:
	stx $ea,y                ; $dfef: 96 ea
	jsr $d208                ; $dff1: 20 08 d2
loc_dff4:
	sbc $ed21ea,x            ; $dff4: ff ea 21 ed
	ora [$ee]                ; $dff8: 07 ee
	trb $26                  ; $dffa: 14 26
	cmp ($96)                ; $dffc: d2 96
	nop                      ; $dffe: ea
	jsr $d20a                ; $dfff: 20 0a d2
loc_e002:
	iny                      ; $e002: c8
	nop                      ; $e003: ea
	and ($ed,x)              ; $e004: 21 ed
	ora [$ee]                ; $e006: 07 ee
	clc                      ; $e008: 18
	plp                      ; $e009: 28
	cmp ($c8)                ; $e00a: d2 c8
	nop                      ; $e00c: ea
	jsr $d20a                ; $e00d: 20 0a d2
loc_e010:
	iny                      ; $e010: c8
	nop                      ; $e011: ea
	and ($ed,x)              ; $e012: 21 ed
	ora [$ee]                ; $e014: 07 ee
	clc                      ; $e016: 18
	plp                      ; $e017: 28
	cmp ($96)                ; $e018: d2 96
	nop                      ; $e01a: ea
	jsr $d208                ; $e01b: 20 08 d2
loc_e01e:
	sbc $ed21ea,x            ; $e01e: ff ea 21 ed
	ora [$ee]                ; $e022: 07 ee
	trb $26                  ; $e024: 14 26
	cmp ($96)                ; $e026: d2 96
sub_e028:
	nop                      ; $e028: ea
	jsr $f908                ; $e029: 20 08 f9
loc_e02c:
	cop #$7a                 ; $e02c: 02 7a
	cpx #$d2                 ; $e02e: e0 d2
	iny                      ; $e030: c8
	nop                      ; $e031: ea
	jsr $d208                ; $e032: 20 08 d2
loc_e035:
	stx $ea,y                ; $e035: 96 ea
	jsr $d208                ; $e037: 20 08 d2
loc_e03a:
	sbc $ed21ea,x            ; $e03a: ff ea 21 ed
	ora [$ee]                ; $e03e: 07 ee
	trb $26                  ; $e040: 14 26
	cmp ($96)                ; $e042: d2 96
	nop                      ; $e044: ea
	jsr $d20a                ; $e045: 20 0a d2
loc_e048:
	iny                      ; $e048: c8
	nop                      ; $e049: ea
	and ($ed,x)              ; $e04a: 21 ed
	ora [$ee]                ; $e04c: 07 ee
	clc                      ; $e04e: 18
	plp                      ; $e04f: 28
	cmp ($c8)                ; $e050: d2 c8
	nop                      ; $e052: ea
	jsr $d20a                ; $e053: 20 0a d2
loc_e056:
	iny                      ; $e056: c8
	nop                      ; $e057: ea
	and ($ed,x)              ; $e058: 21 ed
	ora [$ee]                ; $e05a: 07 ee
	clc                      ; $e05c: 18
sub_e05d:
	plp                      ; $e05d: 28
	cmp ($96)                ; $e05e: d2 96
	nop                      ; $e060: ea
	jsr $d208                ; $e061: 20 08 d2
loc_e064:
	sbc $ed21ea,x            ; $e064: ff ea 21 ed
	ora [$ee]                ; $e068: 07 ee
	trb $26                  ; $e06a: 14 26
	cmp ($96)                ; $e06c: d2 96
	nop                      ; $e06e: ea
	jsr $d20a                ; $e06f: 20 0a d2
loc_e072:
	iny                      ; $e072: c8
	nop                      ; $e073: ea
	and ($ed,x)              ; $e074: 21 ed
	ora [$ee]                ; $e076: 07 ee
	clc                      ; $e078: 18
	plp                      ; $e079: 28
	sbc ($d2),y              ; $e07a: f1 d2
	iny                      ; $e07c: c8
	nop                      ; $e07d: ea
	jsr $d208                ; $e07e: 20 08 d2
loc_e081:
	stx $ea,y                ; $e081: 96 ea
sub_e083:
	jsr $d208                ; $e083: 20 08 d2
loc_e086:
	sbc $ed21ea,x            ; $e086: ff ea 21 ed
	ora [$ee]                ; $e08a: 07 ee
	trb $26                  ; $e08c: 14 26
	cmp ($96)                ; $e08e: d2 96
	nop                      ; $e090: ea
	jsr $d20a                ; $e091: 20 0a d2
loc_e094:
	iny                      ; $e094: c8
	nop                      ; $e095: ea
	and ($ed,x)              ; $e096: 21 ed
	ora [$ee]                ; $e098: 07 ee
	clc                      ; $e09a: 18
	plp                      ; $e09b: 28
	cmp ($c8)                ; $e09c: d2 c8
	nop                      ; $e09e: ea
	jsr $d20a                ; $e09f: 20 0a d2
loc_e0a2:
	iny                      ; $e0a2: c8
	nop                      ; $e0a3: ea
	and ($ed,x)              ; $e0a4: 21 ed
	ora [$ee]                ; $e0a6: 07 ee
	clc                      ; $e0a8: 18
	plp                      ; $e0a9: 28
	cmp ($96)                ; $e0aa: d2 96
	nop                      ; $e0ac: ea
	jsr $d208                ; $e0ad: 20 08 d2
loc_e0b0:
	sbc $ed21ea,x            ; $e0b0: ff ea 21 ed
	ora [$ee]                ; $e0b4: 07 ee
	trb $26                  ; $e0b6: 14 26
	cmp ($c8)                ; $e0b8: d2 c8
	nop                      ; $e0ba: ea
	and ($ed,x)              ; $e0bb: 21 ed
	ora [$ee]                ; $e0bd: 07 ee
	clc                      ; $e0bf: 18
	plp                      ; $e0c0: 28
	cmp ($c8)                ; $e0c1: d2 c8
	nop                      ; $e0c3: ea
	and ($ed,x)              ; $e0c4: 21 ed
	ora [$ee]                ; $e0c6: 07 ee
	clc                      ; $e0c8: 18
	plp                      ; $e0c9: 28
	beq $e0cd                ; $e0ca: f0 01
loc_e0cc:
	cmp ($c8)                ; $e0cc: d2 c8
	nop                      ; $e0ce: ea
	jsr $d208                ; $e0cf: 20 08 d2
loc_e0d2:
	stx $ea,y                ; $e0d2: 96 ea
	jsr $d208                ; $e0d4: 20 08 d2
loc_e0d7:
	sbc $ed21ea,x            ; $e0d7: ff ea 21 ed
	ora [$ee]                ; $e0db: 07 ee
	trb $26                  ; $e0dd: 14 26
	cmp ($96)                ; $e0df: d2 96
	nop                      ; $e0e1: ea
	jsr $d20a                ; $e0e2: 20 0a d2
loc_e0e5:
	iny                      ; $e0e5: c8
	nop                      ; $e0e6: ea
	and ($ed,x)              ; $e0e7: 21 ed
	ora [$ee]                ; $e0e9: 07 ee
	clc                      ; $e0eb: 18
	plp                      ; $e0ec: 28
	cmp ($c8)                ; $e0ed: d2 c8
	nop                      ; $e0ef: ea
	jsr $d20a                ; $e0f0: 20 0a d2
loc_e0f3:
	iny                      ; $e0f3: c8
	nop                      ; $e0f4: ea
	and ($ed,x)              ; $e0f5: 21 ed
	ora [$ee]                ; $e0f7: 07 ee
	clc                      ; $e0f9: 18
	plp                      ; $e0fa: 28
	cmp ($96)                ; $e0fb: d2 96
	nop                      ; $e0fd: ea
	jsr $d208                ; $e0fe: 20 08 d2
loc_e101:
	sbc $ed21ea,x            ; $e101: ff ea 21 ed
	ora [$ee]                ; $e105: 07 ee
	trb $26                  ; $e107: 14 26
	cmp ($96)                ; $e109: d2 96
	nop                      ; $e10b: ea
	jsr $f908                ; $e10c: 20 08 f9
loc_e10f:
	cop #$5d                 ; $e10f: 02 5d
	sbc ($d2,x)              ; $e111: e1 d2
	iny                      ; $e113: c8
	nop                      ; $e114: ea
	jsr $d208                ; $e115: 20 08 d2
loc_e118:
	stx $ea,y                ; $e118: 96 ea
	jsr $d208                ; $e11a: 20 08 d2
loc_e11d:
	sbc $ed21ea,x            ; $e11d: ff ea 21 ed
	ora [$ee]                ; $e121: 07 ee
	trb $26                  ; $e123: 14 26
	cmp ($96)                ; $e125: d2 96
	nop                      ; $e127: ea
	jsr $d20a                ; $e128: 20 0a d2
loc_e12b:
	iny                      ; $e12b: c8
	nop                      ; $e12c: ea
	and ($ed,x)              ; $e12d: 21 ed
	ora [$ee]                ; $e12f: 07 ee
	clc                      ; $e131: 18
	plp                      ; $e132: 28
	cmp ($c8)                ; $e133: d2 c8
	nop                      ; $e135: ea
	jsr $d20a                ; $e136: 20 0a d2
loc_e139:
	iny                      ; $e139: c8
	nop                      ; $e13a: ea
	and ($ed,x)              ; $e13b: 21 ed
	ora [$ee]                ; $e13d: 07 ee
	clc                      ; $e13f: 18
	plp                      ; $e140: 28
	cmp ($96)                ; $e141: d2 96
	nop                      ; $e143: ea
	jsr $d208                ; $e144: 20 08 d2
loc_e147:
	sbc $ed21ea,x            ; $e147: ff ea 21 ed
	ora [$ee]                ; $e14b: 07 ee
	trb $26                  ; $e14d: 14 26
	cmp ($96)                ; $e14f: d2 96
	nop                      ; $e151: ea
	jsr $d20a                ; $e152: 20 0a d2
loc_e155:
	iny                      ; $e155: c8
	nop                      ; $e156: ea
	and ($ed,x)              ; $e157: 21 ed
	ora [$ee]                ; $e159: 07 ee
	clc                      ; $e15b: 18
	plp                      ; $e15c: 28
	sbc ($d2),y              ; $e15d: f1 d2
	sbc $ed21ea,x            ; $e15f: ff ea 21 ed
	ora [$ee]                ; $e163: 07 ee
	trb $28                  ; $e165: 14 28
	cmp ($c8)                ; $e167: d2 c8
	nop                      ; $e169: ea
	and ($ed,x)              ; $e16a: 21 ed
	ora [$ee]                ; $e16c: 07 ee
	clc                      ; $e16e: 18
	plp                      ; $e16f: 28
	cmp ($c8)                ; $e170: d2 c8
	nop                      ; $e172: ea
	and ($ed,x)              ; $e173: 21 ed
	ora [$ee]                ; $e175: 07 ee
	clc                      ; $e177: 18
	plp                      ; $e178: 28
	cmp ($c8)                ; $e179: d2 c8
	nop                      ; $e17b: ea
	and ($ed,x)              ; $e17c: 21 ed
	ora [$ee]                ; $e17e: 07 ee
	clc                      ; $e180: 18
	plp                      ; $e181: 28
	cmp ($ff)                ; $e182: d2 ff
	nop                      ; $e184: ea
	and ($ed,x)              ; $e185: 21 ed
	ora [$ee]                ; $e187: 07 ee
	trb $28                  ; $e189: 14 28
	cmp ($c8)                ; $e18b: d2 c8
	nop                      ; $e18d: ea
	and ($ed,x)              ; $e18e: 21 ed
	ora [$ee]                ; $e190: 07 ee
	clc                      ; $e192: 18
	plp                      ; $e193: 28
	cmp ($96)                ; $e194: d2 96
	nop                      ; $e196: ea
	jsr $d20a                ; $e197: 20 0a d2
loc_e19a:
	sbc $ed21ea,x            ; $e19a: ff ea 21 ed
	ora [$ee]                ; $e19e: 07 ee
	trb $28                  ; $e1a0: 14 28
	cmp ($96)                ; $e1a2: d2 96
	nop                      ; $e1a4: ea
	jsr $d20a                ; $e1a5: 20 0a d2
loc_e1a8:
	sbc $ed21ea,x            ; $e1a8: ff ea 21 ed
	ora [$ee]                ; $e1ac: 07 ee
	trb $28                  ; $e1ae: 14 28
	cmp ($96)                ; $e1b0: d2 96
	nop                      ; $e1b2: ea
	jsr $d20a                ; $e1b3: 20 0a d2
loc_e1b6:
	iny                      ; $e1b6: c8
	nop                      ; $e1b7: ea
	and ($ed,x)              ; $e1b8: 21 ed
	ora [$ee]                ; $e1ba: 07 ee
	clc                      ; $e1bc: 18
	plp                      ; $e1bd: 28
	cmp ($ff)                ; $e1be: d2 ff
	nop                      ; $e1c0: ea
	and ($ed,x)              ; $e1c1: 21 ed
	ora [$ee]                ; $e1c3: 07 ee
	trb $28                  ; $e1c5: 14 28
	cmp ($c8)                ; $e1c7: d2 c8
	nop                      ; $e1c9: ea
	and ($ed,x)              ; $e1ca: 21 ed
	ora [$ee]                ; $e1cc: 07 ee
	clc                      ; $e1ce: 18
	plp                      ; $e1cf: 28
	cmp ($c8)                ; $e1d0: d2 c8
	nop                      ; $e1d2: ea
sub_e1d3:
	and ($ed,x)              ; $e1d3: 21 ed
	ora [$ee]                ; $e1d5: 07 ee
	clc                      ; $e1d7: 18
	plp                      ; $e1d8: 28
	cmp ($c8)                ; $e1d9: d2 c8
	nop                      ; $e1db: ea
	and ($ed,x)              ; $e1dc: 21 ed
	ora [$ee]                ; $e1de: 07 ee
	clc                      ; $e1e0: 18
	plp                      ; $e1e1: 28
	plx                      ; $e1e2: fa
	sbc [$df]                ; $e1e3: e7 df
	pei $80                  ; $e1e5: d4 80
	sep #$c3                 ; $e1e7: e2 c3
	beq $e1ec                ; $e1e9: f0 01
loc_e1eb:
	cmp ($78)                ; $e1eb: d2 78
	nop                      ; $e1ed: ea
	plp                      ; $e1ee: 28
	cpx $05                  ; $e1ef: e4 05
	ora $d2                  ; $e1f1: 05 d2
	ror $27ea                ; $e1f3: 6e ea 27
	cpx $05                  ; $e1f6: e4 05
	eor $ca,x                ; $e1f8: 55 ca
	mvn $ce,$46              ; $e1fa: 54 ce 46
	dex                      ; $e1fd: ca
	plp                      ; $e1fe: 28
	cmp $46cb                ; $e1ff: cd cb 46
	cmp $d23d                ; $e202: cd 3d d2
	sei                      ; $e205: 78
	nop                      ; $e206: ea
	plp                      ; $e207: 28
	cpx $05                  ; $e208: e4 05
	ora $d2                  ; $e20a: 05 d2
	ror $27ea                ; $e20c: 6e ea 27
	cpx $05                  ; $e20f: e4 05
	eor $ca,x                ; $e211: 55 ca
	mvn $ce,$46              ; $e213: 54 ce 46
	dex                      ; $e216: ca
	sta ($cd),y              ; $e217: 91 cd
	wai                      ; $e219: cb
	adc ($cd,s),y            ; $e21a: 73 cd
	ror                      ; $e21c: 6a
	sbc ($f0),y              ; $e21d: f1 f0
	ora ($d2,x)              ; $e21f: 01 d2
	sei                      ; $e221: 78
	nop                      ; $e222: ea
	plp                      ; $e223: 28
	cpx $05                  ; $e224: e4 05
	ora $c4                  ; $e226: 05 c4
	cmp $d2,s                ; $e228: c3 d2
	sei                      ; $e22a: 78
	nop                      ; $e22b: ea
	plp                      ; $e22c: 28
	cpx $05                  ; $e22d: e4 05
	ora $c4                  ; $e22f: 05 c4
	cmp $f1,s                ; $e231: c3 f1
	plx                      ; $e233: fa
	sbc #$e1                 ; $e234: e9 e1
	sep #$c3                 ; $e236: e2 c3
	cmp ($3c)                ; $e238: d2 3c
	pei $60                  ; $e23a: d4 60
	nop                      ; $e23c: ea
	and [$f0]                ; $e23d: 27 f0
	ora ($e4,x)              ; $e23f: 01 e4
	tsb $c8                  ; $e241: 04 c8
	sbc $28                  ; $e243: e5 28
	dex                      ; $e245: ca
	and [$ce]                ; $e246: 27 ce
	asl                      ; $e248: 0a
	dex                      ; $e249: ca
	inc $a0                  ; $e24a: e6 a0
	cmp $e5cb                ; $e24c: cd cb e5
	asl                      ; $e24f: 0a
	cmp $e401                ; $e250: cd 01 e4
	tsb $c8                  ; $e253: 04 c8
	sbc $28                  ; $e255: e5 28
	dex                      ; $e257: ca
	and [$ce]                ; $e258: 27 ce
	asl                      ; $e25a: 0a
	dex                      ; $e25b: ca
	eor $cd,x                ; $e25c: 55 cd
	wai                      ; $e25e: cb
	lsr $cd                  ; $e25f: 46 cd
	and $d2f1,x              ; $e261: 3d f1 d2
	and $80d4                ; $e264: 2d d4 80
	nop                      ; $e267: ea
	ora $d7                  ; $e268: 05 d7
	brk #$0a                 ; $e26a: 00 0a

; === Block $dfea-$dfeb (Code) ===
loc_dfea:
	iny                      ; $dfea: c8

; === Block $e097-$e09a (Code) ===
sub_e097:
	sbc $ee07                ; $e097: ed 07 ee

; === Block $e0cd-$e0ce (Code) ===
loc_e0cd:
	iny                      ; $e0cd: c8

; === Block $e1ec-$e1ed (Code) ===
loc_e1ec:
	sei                      ; $e1ec: 78

; === Block $e28b-$e2ae (Code) ===
sub_e28b:
	sta $ca91ce,x            ; $e28b: 9f ce 91 ca
	adc ($cd,s),y            ; $e28f: 73 cd
	wai                      ; $e291: cb
	sta ($cd),y              ; $e292: 91 cd
	dey                      ; $e294: 88
	cpx $03                  ; $e295: e4 03
	iny                      ; $e297: c8
	sbc $a0                  ; $e298: e5 a0
	dex                      ; $e29a: ca
	sta $ca91ce,x            ; $e29b: 9f ce 91 ca
	sbc $28                  ; $e29f: e5 28
	cmp $0acb                ; $e2a1: cd cb 0a
	cmp $f101                ; $e2a4: cd 01 f1
	cmp ($14)                ; $e2a7: d2 14
	pei $80                  ; $e2a9: d4 80
	nop                      ; $e2ab: ea
	tsb $d7                  ; $e2ac: 04 d7
	brk #$0a                 ; $e2ae: 00 0a

; === Block $e2ce-$e2ec (Code) ===
sub_e2ce:
	cmp ($c8)                ; $e2ce: d2 c8
	php                      ; $e2d0: 08
	cmp ($c8)                ; $e2d1: d2 c8
	cpx $0c06                ; $e2d3: ec 06 0c
	sbc $0c0c0c              ; $e2d6: ef 0c 0c 0c
	cmp ($c8)                ; $e2da: d2 c8
	asl                      ; $e2dc: 0a
	asl                      ; $e2dd: 0a
	cmp ($c8)                ; $e2de: d2 c8
	cpx $0806                ; $e2e0: ec 06 08
	sbc $08c8d2              ; $e2e3: ef d2 c8 08
	cmp ($c8)                ; $e2e7: d2 c8
	cpx $ed02                ; $e2e9: ec 02 ed
	brk #$08                 ; $e2ec: 00 08

; === Block $e2f7-$e30a (Code) ===
sub_e2f7:
	ora ($d2,x)              ; $e2f7: 01 d2
	iny                      ; $e2f9: c8
	php                      ; $e2fa: 08
	cmp ($c8)                ; $e2fb: d2 c8
	cpx $0806                ; $e2fd: ec 06 08
	sbc $c8d2f1              ; $e300: ef f1 d2 c8
	php                      ; $e304: 08
	cmp ($c8)                ; $e305: d2 c8
	cpx $ed02                ; $e307: ec 02 ed
	brk #$08                 ; $e30a: 00 08

; === Block $e330-$e34a (Code) ===
sub_e330:
	cmp ($c8)                ; $e330: d2 c8
	cpx $0806                ; $e332: ec 06 08
	sbc $d201f0              ; $e335: ef f0 01 d2
sub_e339:
	iny                      ; $e339: c8
	php                      ; $e33a: 08
	cmp ($c8)                ; $e33b: d2 c8
	cpx $0806                ; $e33d: ec 06 08
	sbc $c8d2f1              ; $e340: ef f1 d2 c8
	php                      ; $e344: 08
	cmp ($c8)                ; $e345: d2 c8
	cpx $ed02                ; $e347: ec 02 ed
	brk #$08                 ; $e34a: 00 08

; === Block $e35b-$e374 (Code) ===
sub_e35b:
	cpx $0c06                ; $e35b: ec 06 0c
	sbc $0c0c0c              ; $e35e: ef 0c 0c 0c
	cmp ($c8)                ; $e362: d2 c8
	asl                      ; $e364: 0a
	asl                      ; $e365: 0a
	cmp ($c8)                ; $e366: d2 c8
	cpx $0806                ; $e368: ec 06 08
	sbc $08c8d2              ; $e36b: ef d2 c8 08
	cmp ($c8)                ; $e36f: d2 c8
	cpx $ed02                ; $e371: ec 02 ed
	brk #$08                 ; $e374: 00 08

; === Block $e372-$e374 (Code) ===
sub_e372:
	cop #$ed                 ; $e372: 02 ed

; === Block $e392-$e3c8 (Code) ===
sub_e392:
	php                      ; $e392: 08
	wai                      ; $e393: cb
	php                      ; $e394: 08
	inc $71                  ; $e395: e6 71
	wai                      ; $e397: cb
	sta $cb9ecb              ; $e398: 8f cb 9e cb
	sbc $08                  ; $e39c: e5 08
	wai                      ; $e39e: cb
	inc $71                  ; $e39f: e6 71
	wai                      ; $e3a1: cb
	sta $e59ecb              ; $e3a2: 8f cb 9e e5
	php                      ; $e3a6: 08
	wai                      ; $e3a7: cb
	php                      ; $e3a8: 08
	inc $71                  ; $e3a9: e6 71
	wai                      ; $e3ab: cb
	sta ($e5),y              ; $e3ac: 91 e5
	sta ($e6),y              ; $e3ae: 91 e6
	sta ($cd),y              ; $e3b0: 91 cd
	ldy #$e5                 ; $e3b2: a0 e5
	ldy #$e6                 ; $e3b4: a0 e6
	ldy #$cd                 ; $e3b6: a0 cd
	plx                      ; $e3b8: fa
	sta [$e3]                ; $e3b9: 87 e3
	cmp ($ff)                ; $e3bb: d2 ff
	pei $80                  ; $e3bd: d4 80
	nop                      ; $e3bf: ea
	rol $e4                  ; $e3c0: 26 e4
	ora $eb                  ; $e3c2: 05 eb
	ora $ed04ec              ; $e3c4: 0f ec 04 ed
	brk #$ee                 ; $e3c8: 00 ee

; === Block $e3aa-$e3ac (Code) ===
sub_e3aa:
	adc ($cb),y              ; $e3aa: 71 cb

; === Block $e3bc-$e3c0 (Code) ===
sub_e3bc:
	sbc $ea80d4,x            ; $e3bc: ff d4 80 ea

; === Block $e43b-$e44a (Code) ===
sub_e43b:
	sta $c4cbc4              ; $e43b: 8f c4 cb c4
	wai                      ; $e43f: cb
	sta $adcdbb              ; $e440: 8f bb cd ad
	wai                      ; $e444: cb
	sbc $08                  ; $e445: e5 08
	wai                      ; $e447: cb
	ora [$d7],y              ; $e448: 17 d7
	rti                      ; $e44a: 40

; === Block $e48e-$e4d4 (Code) ===
sub_e48e:
	rol $c8                  ; $e48e: 26 c8
	rol $c8                  ; $e490: 26 c8
	sbc $9b02,y              ; $e492: f9 02 9b
	cpx $c8                  ; $e495: e4 c8
	mvp $c8,$44              ; $e497: 44 c8 44
	iny                      ; $e49a: c8
	sbc ($c8),y              ; $e49b: f1 c8
	mvp $c8,$44              ; $e49d: 44 c8 44
	wai                      ; $e4a0: cb
	inc $fa                  ; $e4a1: e6 fa
	lsr $e4,x                ; $e4a3: 56 e4
	cmp ($32)                ; $e4a5: d2 32
	pei $a2                  ; $e4a7: d4 a2
	nop                      ; $e4a9: ea
	ora $e2                  ; $e4aa: 05 e2
	cmp [$18],y              ; $e4ac: d7 18
	trb $d3                  ; $e4ae: 14 d3
	cpx $04                  ; $e4b0: e4 04
	cmp [$c3]                ; $e4b2: c7 c3
	cmp $c4,s                ; $e4b4: c3 c4
	dec $60,x                ; $e4b6: d6 60
	tsb $b626                ; $e4b8: 0c 26 b6
	ldx $d2,y                ; $e4bb: b6 d2
	phy                      ; $e4bd: 5a
	pei $80                  ; $e4be: d4 80
sub_e4c0:
	nop                      ; $e4c0: ea
	ora ($e4,x)              ; $e4c1: 01 e4
	asl $32                  ; $e4c3: 06 32
	lsr $cd                  ; $e4c5: 46 cd
	lsr $cd                  ; $e4c7: 46 cd
	lsr $cd                  ; $e4c9: 46 cd
	ora [$e6],y              ; $e4cb: 17 e6
	sta $71e5cb              ; $e4cd: 8f cb e5 71
	wai                      ; $e4d1: cb
	adc ($62),y              ; $e4d2: 71 62
	rti                      ; $e4d4: 40

; === Block $e4d6-$e4ff (Code) ===
loc_e4d6:
	ora $17                  ; $e4d6: 05 17
	inc $8f                  ; $e4d8: e6 8f
	adc ($91),y              ; $e4da: 71 91
	cmp $ca91                ; $e4dc: cd 91 ca
	sta $cdbeb5              ; $e4df: 8f b5 be cd
	sbc $41                  ; $e4e3: e5 41
	rol $c8                  ; $e4e5: 26 c8
	rol $19                  ; $e4e7: 26 19
	cmp $cd0a                ; $e4e9: cd 0a cd
	inc $aa                  ; $e4ec: e6 aa
	per $cab9                ; $e4ee: 62 c8 e5
	rol $44                  ; $e4f1: 26 44
	wai                      ; $e4f3: cb
	inc $8c                  ; $e4f4: e6 8c
	sbc $35                  ; $e4f6: e5 35
	mvp $e6,$8f              ; $e4f8: 44 e6 8f
	sbc $71                  ; $e4fb: e5 71
	stz $ca                  ; $e4fd: 64 ca

; === Block $e4de-$e4df (Code) ===
loc_e4de:
	dex                      ; $e4de: ca

; === Block $e4e8-$e4ee (Code) ===
loc_e4e8:
	ora $0acd,y              ; $e4e8: 19 cd 0a
	cmp $aae6                ; $e4eb: cd e6 aa

; === Block $e4fc-$e4ff (Code) ===
loc_e4fc:
	adc ($64),y              ; $e4fc: 71 64
	dex                      ; $e4fe: ca

; === Block $e4ff-$e589 (Code) ===
sub_e4ff:
	mvp $cb,$44              ; $e4ff: 44 cb 44
	wai                      ; $e502: cb
	mvp $cb,$46              ; $e503: 44 cb 46
	cmp $cd46                ; $e506: cd 46 cd
	trb $e6                  ; $e509: 14 e6
	sta $aacbc5              ; $e50b: 8f c5 cb aa
	bra $e4d6                ; $e50f: 80 c5
	wai                      ; $e511: cb
	sty $c562                ; $e512: 8c 62 c5
	wai                      ; $e515: cb
	tax                      ; $e516: aa
	bra $e4de                ; $e517: 80 c5
	wai                      ; $e519: cb
sub_e51a:
	sbc $14                  ; $e51a: e5 14
	asl                      ; $e51c: 0a
	cmp $afe6                ; $e51d: cd e6 af
	cmp $aa89                ; $e520: cd 89 aa
	ldy #$cd                 ; $e523: a0 cd
	sta ($cd),y              ; $e525: 91 cd
	ply                      ; $e527: 7a
	sta $6253cb              ; $e528: 8f cb 53 62
	sbc $17                  ; $e52c: e5 17
	wai                      ; $e52e: cb
	php                      ; $e52f: 08
	wai                      ; $e530: cb
	inc $ad                  ; $e531: e6 ad
	lda $bc,x                ; $e533: b5 bc
	plx                      ; $e535: fa
	cpy #$e4                 ; $e536: c0 e4
	cmp ($5a)                ; $e538: d2 5a
	pei $a0                  ; $e53a: d4 a0
	nop                      ; $e53c: ea
	ora ($e2,x)              ; $e53d: 01 e2
	sbc $ee07                ; $e53f: ed 07 ee
	ora ($c7)                ; $e542: 12 c7
	cpx $05                  ; $e544: e4 05
	and $c046,y              ; $e546: 39 46 c0
	mvp $44,$44              ; $e549: 44 44 44
	mvp $44,$44              ; $e54c: 44 44 44
	mvp $44,$c4              ; $e54f: 44 44 c4
	inc $44                  ; $e552: e6 44
	lda $6e5f,y              ; $e554: b9 5f 6e
	bra $e4e8                ; $e557: 80 8f
	lda $bc,x                ; $e559: b5 bc
	cpx $04                  ; $e55b: e4 04
	beq $e561                ; $e55d: f0 02
loc_e55f:
	sta $8c8cb9              ; $e55f: 8f b9 8c 8c
	sta $4441f1              ; $e563: 8f f1 41 44
	per $156ae               ; $e567: 62 44 71
	mvp $80,$8f              ; $e56a: 44 80 8f
	ldx $8f,y                ; $e56d: b6 8f
	bra $e5e2                ; $e56f: 80 71
	eor $625ee5,x            ; $e571: 5f e5 5e 62
	eor $8fe6e6,x            ; $e575: 5f e6 e6 8f
	lda $8c8c,y              ; $e579: b9 8c 8c
	sta $aae58c              ; $e57c: 8f 8c e5 aa
	lda [$e6]                ; $e580: a7 e6
	sty sub_01f0             ; $e582: 8c f0 01
	phb                      ; $e585: 8b
	phb                      ; $e586: 8b
	eor ($40,x)              ; $e587: 41 40
	rti                      ; $e589: 40

; === Block $e513-$e516 (Code) ===
sub_e513:
	per $b0db                ; $e513: 62 c5 cb

; === Block $e561-$e56d (Code) ===
loc_e561:
	sty $8f8c                ; $e561: 8c 8c 8f
	sbc ($41),y              ; $e564: f1 41
	mvp $62,$44              ; $e566: 44 62 44
	adc ($44),y              ; $e569: 71 44
	bra $e4fc                ; $e56b: 80 8f

; === Block $e5c8-$e5eb (Code) ===
loc_e5c8:
	cpx $04                  ; $e5c8: e4 04
	mvp $b9,$5f              ; $e5ca: 44 b9 5f
	ror $4462                ; $e5cd: 6e 62 44
	lda $715f,y              ; $e5d0: b9 5f 71
	php                      ; $e5d3: 08
	ora [$44],y              ; $e5d4: 17 44
	lda $715f,y              ; $e5d6: b9 5f 71
	php                      ; $e5d9: 08
	ora [$e6],y              ; $e5da: 17 e6
	sty $ad8f                ; $e5dc: 8c 8f ad
	sta $e608e5              ; $e5df: 8f e5 08 e6
	sta $2617e5              ; $e5e3: 8f e5 17 26
	ldx $26,y                ; $e5e7: b6 26
	ora [$08],y              ; $e5e9: 17 08

; === Block $e5e2-$e603 (Code) ===
loc_e5e2:
	inc $8f                  ; $e5e2: e6 8f
	sbc $17                  ; $e5e4: e5 17
	rol $b6                  ; $e5e6: 26 b6
	rol $17                  ; $e5e8: 26 17
	php                      ; $e5ea: 08
	inc $aa                  ; $e5eb: e6 aa
	sbc $e5                  ; $e5ed: e5 e5
	lda #$ad                 ; $e5ef: a9 ad
	tax                      ; $e5f1: aa
	inc $44                  ; $e5f2: e6 44
	lda $6e5f,y              ; $e5f4: b9 5f 6e
	per $cb3b                ; $e5f7: 62 41 e5
	eor ($3e,x)              ; $e5fa: 41 3e
	inc $41                  ; $e5fc: e6 41
	beq $e601                ; $e5fe: f0 01
loc_e600:
	mvp $08,$17              ; $e600: 44 08 17
	rti                      ; $e603: 40

; === Block $e5f9-$e5fe (Code) ===
loc_e5f9:
	sbc $41                  ; $e5f9: e5 41
	rol $41e6,x              ; $e5fb: 3e e6 41

; === Block $e601-$e609 (Code) ===
loc_e601:
	php                      ; $e601: 08
	ora [$40],y              ; $e602: 17 40
	inc $aa                  ; $e604: e6 aa
	lda $8071                ; $e606: ad 71 80

; === Block $e609-$e620 (Code) ===
loc_e609:
	lda #$8c                 ; $e609: a9 8c
	sta $8b6253              ; $e60b: 8f 53 62 8b
	tax                      ; $e60f: aa
	sbc sub_1a02,y           ; $e610: f9 02 1a
	inc $ad                  ; $e613: e6 ad
	adc ($80),y              ; $e615: 71 80
	lda #$e5                 ; $e617: a9 e5
	eor ($f1,x)              ; $e619: 41 f1
	lda $8071                ; $e61b: ad 71 80
	lda #$fa                 ; $e61e: a9 fa

; === Block $e618-$e61e (Code) ===
loc_e618:
	sbc $41                  ; $e618: e5 41
	sbc ($ad),y              ; $e61a: f1 ad
	adc ($80),y              ; $e61c: 71 80

; === Block $e61d-$e744 (Code) ===
sub_e61d:
	bra $e5c8                ; $e61d: 80 a9
	plx                      ; $e61f: fa
	iny                      ; $e620: c8
	sbc $d2                  ; $e621: e5 d2
	bvc $e5f9                ; $e623: 50 d4
loc_e625:
	bra $e609                ; $e625: 80 e2
	nop                      ; $e627: ea
	ora ($e2,x)              ; $e628: 01 e2
	cmp [$18],y              ; $e62a: d7 18
	trb $d3                  ; $e62c: 14 d3
	cmp [$c3]                ; $e62e: c7 c3
	cmp $c3,s                ; $e630: c3 c3
	cpy $cb                  ; $e632: c4 cb
	beq $e63c                ; $e634: f0 06
loc_e636:
	cmp $f1,s                ; $e636: c3 f1
	wai                      ; $e638: cb
	cpy $cb                  ; $e639: c4 cb
	cpx $05                  ; $e63b: e4 05
	sty $c544                ; $e63d: 8c 44 c5
	wai                      ; $e640: cb
	adc $c544,x              ; $e641: 7d 44 c5
	wai                      ; $e644: cb
	eor $cbc526,x            ; $e645: 5f 26 c5 cb
	adc $c544,x              ; $e649: 7d 44 c5
	wai                      ; $e64c: cb
	sty $cd91                ; $e64d: 8c 91 cd
	sta ($cd),y              ; $e650: 91 cd
	rol $4641,x              ; $e652: 3e 41 46
	cmp $cd46                ; $e655: cd 46 cd
	rol $cb62,x              ; $e658: 3e 62 cb
	rol $26                  ; $e65b: 26 26
	sta $cb8fcb              ; $e65d: 8f cb 8f cb
	bra $e618                ; $e661: 80 b5
	ldy $34fa,x              ; $e663: bc fa 34
	inc $d2                  ; $e666: e6 d2
	ldy #$d4                 ; $e668: a0 d4
	bra $e656                ; $e66a: 80 ea
	rol $e3                  ; $e66c: 26 e3
	cmp [$e4]                ; $e66e: c7 e4
	tsb $8f                  ; $e670: 04 8f
	cpy $cb                  ; $e672: c4 cb
	cpy $44                  ; $e674: c4 44
	sty $ad8f                ; $e676: 8c 8f ad
	sta $e608e5              ; $e679: 8f e5 08 e6
	sta $2617e5              ; $e67d: 8f e5 17 26
	lda $bc,x                ; $e681: b5 bc
	inc $8c                  ; $e683: e6 8c
	sta $e68fe5              ; $e685: 8f e5 8f e6
	sta $1708e5              ; $e689: 8f e5 08 17
	inc $8f                  ; $e68d: e6 8f
	sty $8fe5                ; $e68f: 8c e5 8f
	adc ($62),y              ; $e692: 71 62
	mvp $08,$17              ; $e694: 44 08 17
	inc $8c                  ; $e697: e6 8c
	sta $e68fe5              ; $e699: 8f e5 8f e6
	sta $1708e5              ; $e69d: 8f e5 08 17
	inc $8f                  ; $e6a1: e6 8f
	sta $8fadb9              ; $e6a3: 8f b9 ad 8f
	sbc $08                  ; $e6a7: e5 08
	inc $8f                  ; $e6a9: e6 8f
	sbc $17                  ; $e6ab: e5 17
	and $e6,s                ; $e6ad: 23 e6
	sta $2623e5              ; $e6af: 8f e5 23 26
	ora [$08],y              ; $e6b3: 17 08
	inc $aa                  ; $e6b5: e6 aa
	lda $19e5cd              ; $e6b7: af cd e5 19
	cmp $cd19                ; $e6bb: cd 19 cd
	plp                      ; $e6be: 28
	cmp $cd28                ; $e6bf: cd 28 cd
	lsr $cd                  ; $e6c2: 46 cd
	inc $8c                  ; $e6c4: e6 8c
	sta $e68fe5              ; $e6c6: 8f e5 8f e6
	sta $1708e5              ; $e6ca: 8f e5 08 17
	inc $8f                  ; $e6ce: e6 8f
	sty $46e5                ; $e6d0: 8c e5 46
	cmp $cd46                ; $e6d3: cd 46 cd
	lsr $cd                  ; $e6d6: 46 cd
	lsr $cd                  ; $e6d8: 46 cd
	lsr $cd                  ; $e6da: 46 cd
	lsr $cd                  ; $e6dc: 46 cd
	inc $8f                  ; $e6de: e6 8f
	beq $e6e3                ; $e6e0: f0 01
loc_e6e2:
	wai                      ; $e6e2: cb
loc_e6e3:
	sta $e68fe5              ; $e6e3: 8f e5 8f e6
	sta $6271e5              ; $e6e7: 8f e5 71 62
	wai                      ; $e6eb: cb
	inc $44                  ; $e6ec: e6 44
	wai                      ; $e6ee: cb
	mvp $e5,$44              ; $e6ef: 44 e5 44
	inc $44                  ; $e6f2: e6 44
	lda $17e5                ; $e6f4: ad e5 17
	wai                      ; $e6f7: cb
	rol $cb                  ; $e6f8: 26 cb
	plp                      ; $e6fa: 28
	cmp $cd19                ; $e6fb: cd 19 cd
	ora $e6cd,y              ; $e6fe: 19 cd e6
	lda $cdafcd              ; $e701: af cd af cd
	sta ($cd),y              ; $e705: 91 cd
	mvp $f9,$02              ; $e707: 44 f9 02
	asl $e7,x                ; $e70a: 16 e7
	wai                      ; $e70c: cb
	mvp $71,$80              ; $e70d: 44 71 80
	sbc $44                  ; $e710: e5 44
	inc $71                  ; $e712: e6 71
	bra $e6a5                ; $e714: 80 8f
	sbc ($cb),y              ; $e716: f1 cb
	mvp $71,$80              ; $e718: 44 71 80
	sbc $44                  ; $e71b: e5 44
	inc $71                  ; $e71d: e6 71
	bra $e71b                ; $e71f: 80 fa
	sty $e6                  ; $e721: 84 e6
	cmp ($c8)                ; $e723: d2 c8
	pei $80                  ; $e725: d4 80
	nop                      ; $e727: ea
	and $e2                  ; $e728: 25 e2
	cmp [$e4]                ; $e72a: c7 e4
	ora $80                  ; $e72c: 05 80
	wai                      ; $e72e: cb
	nop                      ; $e72f: ea
	jsl $050505              ; $e730: 22 05 05 05
loc_e734:
	ora $05                  ; $e734: 05 05
	ora $cb                  ; $e736: 05 cb
	nop                      ; $e738: ea
	and $53                  ; $e739: 25 53
	lda $bc,x                ; $e73b: b5 bc
	eor ($b9,s),y            ; $e73d: 53 b9
	nop                      ; $e73f: ea
	jsl $ee02ec              ; $e740: 22 ec 02 ee
loc_e744:
	brk #$05                 ; $e744: 00 05

; === Block $e63c-$e641 (Code) ===
loc_e63c:
	ora $8c                  ; $e63c: 05 8c
	mvp $c5,$cb              ; $e63e: 44 c5 cb

; === Block $e656-$e658 (Code) ===
loc_e656:
	lsr $cd                  ; $e656: 46 cd

; === Block $e6a5-$e6a9 (Code) ===
loc_e6a5:
	lda $e58f                ; $e6a5: ad 8f e5
	php                      ; $e6a8: 08

; === Block $e6bc-$e6bf (Code) ===
loc_e6bc:
	ora $28cd,y              ; $e6bc: 19 cd 28

; === Block $e741-$e744 (Code) ===
sub_e741:
	cpx $ee02                ; $e741: ec 02 ee

; === Block $e76b-$e82a (Code) ===
sub_e76b:
	nop                      ; $e76b: ea
	and $32                  ; $e76c: 25 32
	eor ($ea,s),y            ; $e76e: 53 ea
	jsl $eab608              ; $e770: 22 08 b6 ea
loc_e774:
	and $50                  ; $e774: 25 50
	nop                      ; $e776: ea
	jsl $081df0              ; $e777: 22 f0 1d 08
loc_e77b:
	sbc ($ea),y              ; $e77b: f1 ea
	and $50                  ; $e77d: 25 50
	nop                      ; $e77f: ea
	jsl $081df0              ; $e780: 22 f0 1d 08
loc_e784:
	sbc ($fa),y              ; $e784: f1 fa
	eor [$e7]                ; $e786: 47 e7
	cmp ($ff)                ; $e788: d2 ff
	pei $80                  ; $e78a: d4 80
	nop                      ; $e78c: ea
	rol                      ; $e78d: 2a
	cmp [$e4]                ; $e78e: c7 e4
	ora $ea                  ; $e790: 05 ea
	jsr $c408                ; $e792: 20 08 c4
loc_e795:
	wai                      ; $e795: cb
	cpy $ea                  ; $e796: c4 ea
	and ($26,x)              ; $e798: 21 26
	nop                      ; $e79a: ea
	jsr $bc08                ; $e79b: 20 08 bc
loc_e79e:
	nop                      ; $e79e: ea
	and ($26,x)              ; $e79f: 21 26
	plp                      ; $e7a1: 28
	and $ea                  ; $e7a2: 25 ea
	and $55,s                ; $e7a4: 23 55
	eor $46,x                ; $e7a6: 55 46
	lsr $28                  ; $e7a8: 46 28
	plp                      ; $e7aa: 28
	nop                      ; $e7ab: ea
	jsr $b608                ; $e7ac: 20 08 b6
loc_e7af:
	nop                      ; $e7af: ea
	and ($28,x)              ; $e7b0: 21 28
	rol $28                  ; $e7b2: 26 28
	rol $ea                  ; $e7b4: 26 ea
	jsr $02f0                ; $e7b6: 20 f0 02
loc_e7b9:
	ora $08                  ; $e7b9: 05 08
	nop                      ; $e7bb: ea
	and ($23,x)              ; $e7bc: 21 23
	nop                      ; $e7be: ea
	jsr $0808                ; $e7bf: 20 08 08
loc_e7c2:
	nop                      ; $e7c2: ea
	and ($26,x)              ; $e7c3: 21 26
	nop                      ; $e7c5: ea
	jsr $f0f1                ; $e7c6: 20 f1 f0
loc_e7c9:
	cop #$05                 ; $e7c9: 02 05
	php                      ; $e7cb: 08
	nop                      ; $e7cc: ea
	and ($23,x)              ; $e7cd: 21 23
	nop                      ; $e7cf: ea
	jsr $ea08                ; $e7d0: 20 08 ea
loc_e7d3:
	and ($26,x)              ; $e7d3: 21 26
	rol $ea                  ; $e7d5: 26 ea
	jsr $05f1                ; $e7d7: 20 f1 05
loc_e7da:
	php                      ; $e7da: 08
	nop                      ; $e7db: ea
	and ($23,x)              ; $e7dc: 21 23
	nop                      ; $e7de: ea
	jsr $0808                ; $e7df: 20 08 08
loc_e7e2:
	nop                      ; $e7e2: ea
	and ($26,x)              ; $e7e3: 21 26
	nop                      ; $e7e5: ea
	jsr $0805                ; $e7e6: 20 05 08
loc_e7e9:
	nop                      ; $e7e9: ea
	and ($26,x)              ; $e7ea: 21 26
	rol $26                  ; $e7ec: 26 26
	rol $26                  ; $e7ee: 26 26
	nop                      ; $e7f0: ea
	jsr $06f0                ; $e7f1: 20 f0 06
loc_e7f4:
	ora $08                  ; $e7f4: 05 08
	nop                      ; $e7f6: ea
	and ($23,x)              ; $e7f7: 21 23
	nop                      ; $e7f9: ea
	jsr $0808                ; $e7fa: 20 08 08
loc_e7fd:
	nop                      ; $e7fd: ea
	and ($26,x)              ; $e7fe: 21 26
	nop                      ; $e800: ea
	jsr $05f1                ; $e801: 20 f1 05
loc_e804:
	php                      ; $e804: 08
	nop                      ; $e805: ea
	and ($23,x)              ; $e806: 21 23
	nop                      ; $e808: ea
	and $53,s                ; $e809: 23 53
	mvp $26,$fa              ; $e80b: 44 26 fa
	lda $e7,x                ; $e80e: b5 e7
	bcs $e812                ; $e810: b0 00
loc_e812:
	bit $e8                  ; $e812: 24 e8
	lsr $e8                  ; $e814: 46 e8
	jml $e872e8              ; $e816: 5c e8 72 e8
	bra $e804                ; $e81a: 80 e8
	sta ($e8),y              ; $e81c: 91 e8
	ldy #$e8                 ; $e81e: a0 e8
	lda ($e8,s),y            ; $e820: b3 e8
	rep #$e8                 ; $e822: c2 e8
	sed                      ; $e824: f8
	cmp ($f3)                ; $e825: d2 f3
	sei                      ; $e827: 78
	sbc [$3c],y              ; $e828: f7 3c
	brk #$f5                 ; $e82a: 00 f5

; === Block $e7f5-$e7f6 (Code) ===
sub_e7f5:
	php                      ; $e7f5: 08

; === Block $e811-$e811 (Code) ===
sub_e811:
	brk #$24                 ; $e811: 00 24

; === Block $e846-$e899 (Code) ===
sub_e846:
	cmp ($82)                ; $e846: d2 82
	sep #$ea                 ; $e848: e2 ea
	plp                      ; $e84a: 28
	cpx $04                  ; $e84b: e4 04
	pei $a0                  ; $e84d: d4 a0
	sbc $737370              ; $e84f: ef 70 73 73
	adc ($73,s),y            ; $e853: 73 73
	cmp $cd73                ; $e855: cd 73 cd
	adc ($cd,s),y            ; $e858: 73 cd
	rtl                      ; $e85a: 6b
	sbc ($d2)                ; $e85b: f2 d2
	brl $d342                ; $e85d: 82 e2 ea
	plp                      ; $e860: 28
	cpx $04                  ; $e861: e4 04
	pei $64                  ; $e863: d4 64
	sbc $282825              ; $e865: ef 25 28 28
	plp                      ; $e869: 28
	plp                      ; $e86a: 28
	cmp $cd28                ; $e86b: cd 28 cd
	plp                      ; $e86e: 28
	cmp $f220                ; $e86f: cd 20 f2
	cmp ($b4)                ; $e872: d2 b4
	sep #$ea                 ; $e874: e2 ea
	and [$e4]                ; $e876: 27 e4
	cop #$d4                 ; $e878: 02 d4
	bra $e86b                ; $e87a: 80 ef
	ror                      ; $e87c: 6a
	sbc $6b                  ; $e87d: e5 6b
	sbc ($d2)                ; $e87f: f2 d2
	stz $e2                  ; $e881: 64 e2
	nop                      ; $e883: ea
	and #$e4                 ; $e884: 29 e4
	tsb $d4                  ; $e886: 04 d4
	cpy #$ef                 ; $e888: c0 ef
	tsb $e6                  ; $e88a: 04 e6
	rol $71                  ; $e88c: 26 71
	sta $d2f2a7              ; $e88e: 8f a7 f2 d2
	phy                      ; $e892: 5a
	sep #$ea                 ; $e893: e2 ea
	and #$e4                 ; $e895: 29 e4
	ora $d4,s                ; $e897: 03 d4
sub_e899:
	rti                      ; $e899: 40

; === Block $e8cd-$e8dc (Code) ===
sub_e8cd:
	sbc #$e5                 ; $e8cd: e9 e5
	sbc #$06                 ; $e8cf: e9 06
	nop                      ; $e8d1: ea
	adc ($ea),y              ; $e8d2: 71 ea
	plb                      ; $e8d4: ab
	nop                      ; $e8d5: ea
	sed                      ; $e8d6: f8
	cmp [$f3],y              ; $e8d7: d7 f3
	cli                      ; $e8d9: 58
	sbc [$3c],y              ; $e8da: f7 3c
	brk #$f5                 ; $e8dc: 00 f5

; === Block $e90d-$e90d (Code) ===
sub_e90d:
	jmp $4150                ; $e90d: 4c 50 41

; === Block $e930-$e95b (Code) ===
sub_e930:
	iny                      ; $e930: c8
	plx                      ; $e931: fa
	sbc #$e8                 ; $e932: e9 e8
	cmp ($50)                ; $e934: d2 50
	pei $c0                  ; $e936: d4 c0
	nop                      ; $e938: ea
	rol $e4                  ; $e939: 26 e4
	tsb $e2                  ; $e93b: 04 e2
	xba                      ; $e93d: eb
	phd                      ; $e93e: 0b
	cpx $ed02                ; $e93f: ec 02 ed
	ora $ee                  ; $e942: 05 ee
	tsb $c8                  ; $e944: 04 c8
	beq $e949                ; $e946: f0 01
loc_e948:
	and $1f4c,x              ; $e948: 3d 4c 1f
	and $1f01,x              ; $e94b: 3d 01 1f
	ora ($e6,x)              ; $e94e: 01 e6
	tax                      ; $e950: aa
	sbc $05                  ; $e951: e5 05
	and $f1,s                ; $e953: 23 f1
	beq $e958                ; $e955: f0 01
loc_e957:
	dey                      ; $e957: 88
loc_e958:
	ldx $6a                  ; $e958: a6 6a
	dey                      ; $e95a: 88
	jmp $f96a                ; $e95b: 4c 6a f9

; === Block $e947-$e949 (Code) ===
sub_e947:
	ora ($3d,x)              ; $e947: 01 3d
loc_e949:
	jmp $3d1f                ; $e949: 4c 1f 3d

; === Block $e9b3-$e9d2 (Code) ===
sub_e9b3:
	sep #$eb                 ; $e9b3: e2 eb
	ora $02ec                ; $e9b5: 0d ec 02
	sbc $ee06                ; $e9b8: ed 06 ee
	asl $c8                  ; $e9bb: 06 c8
	beq $e9c0                ; $e9bd: f0 01
loc_e9bf:
	ora ($4c,x)              ; $e9bf: 01 4c
	inc $a6                  ; $e9c1: e6 a6
	sbc $3d                  ; $e9c3: e5 3d
	inc $88                  ; $e9c5: e6 88
	sbc $1f                  ; $e9c7: e5 1f
	inc $6a                  ; $e9c9: e6 6a
	ror $aa8c                ; $e9cb: 6e 8c aa
	sbc $f1                  ; $e9ce: e5 f1
	beq $e9d3                ; $e9d0: f0 01
loc_e9d2:
	jmp $3d6a                ; $e9d2: 4c 6a 3d

; === Block $e9c0-$e9c0 (Code) ===
loc_e9c0:
	jmp $a6e6                ; $e9c0: 4c e6 a6

; === Block $e9cc-$e9d3 (Code) ===
loc_e9cc:
	sty $e5aa                ; $e9cc: 8c aa e5
	sbc ($f0),y              ; $e9cf: f1 f0
	ora ($4c,x)              ; $e9d1: 01 4c

; === Block $e9d3-$ea05 (Code) ===
loc_e9d3:
	ror                      ; $e9d3: 6a
	and $1f88,x              ; $e9d4: 3d 88 1f
loc_e9d7:
	ror                      ; $e9d7: 6a
	ora ($f9,x)              ; $e9d8: 01 f9
	cop #$e0                 ; $e9da: 02 e0
	sbc #$05                 ; $e9dc: e9 05
	and $41,s                ; $e9de: 23 41
	sbc ($01),y              ; $e9e0: f1 01
	plx                      ; $e9e2: fa
	lda $d4e9,x              ; $e9e3: bd e9 d4
	bra $e9cc                ; $e9e6: 80 e4
	ora $c8                  ; $e9e8: 05 c8
	nop                      ; $e9ea: ea
	jsr $96d2                ; $e9eb: 20 d2 96
loc_e9ee:
	cop #$ea                 ; $e9ee: 02 ea
	jsr $46d2                ; $e9f0: 20 d2 46
loc_e9f3:
	ora $ea                  ; $e9f3: 05 ea
	jsr $96d2                ; $e9f5: 20 d2 96
loc_e9f8:
	ora $ea                  ; $e9f8: 05 ea
	and $d2                  ; $e9fa: 25 d2
	lsr $23                  ; $e9fc: 46 23
	nop                      ; $e9fe: ea
	and ($d2,x)              ; $e9ff: 21 d2
	ldy $41,x                ; $ea01: b4 41
	plx                      ; $ea03: fa
	nop                      ; $ea04: ea

; === Block $ea02-$ea04 (Code) ===
loc_ea02:
	eor ($fa,x)              ; $ea02: 41 fa

; === Block $ea05-$eaad (Code) ===
loc_ea05:
	sbc #$d2                 ; $ea05: e9 d2
	stx $d4,y                ; $ea07: 96 d4
	stx $ea,y                ; $ea09: 96 ea
	and [$e4]                ; $ea0b: 27 e4
	ora $e2                  ; $ea0d: 05 e2
	cpx $ed02                ; $ea0f: ec 02 ed
	ora $ee                  ; $ea12: 05 ee
	asl $c8                  ; $ea14: 06 c8
	beq $ea19                ; $ea16: f0 01
loc_ea18:
	ora $41                  ; $ea18: 05 41
	ror $5005                ; $ea1a: 6e 05 50
	ora $e6                  ; $ea1d: 05 e6
	tax                      ; $ea1f: aa
	sbc $23                  ; $ea20: e5 23
	bvc $ea0a                ; $ea22: 50 e6
loc_ea24:
	tax                      ; $ea24: aa
	sbc $41                  ; $ea25: e5 41
	inc $aa                  ; $ea27: e6 aa
	sty $05e5                ; $ea29: 8c e5 05
	eor ($e6,x)              ; $ea2c: 41 e6
	sty $23e5                ; $ea2e: 8c e5 23
	inc $8c                  ; $ea31: e6 8c
	ror $05e5                ; $ea33: 6e e5 05
	and $f9,s                ; $ea36: 23 f9
	cop #$40                 ; $ea38: 02 40
	nop                      ; $ea3a: ea
	inc $aa                  ; $ea3b: e6 aa
	sty $e56e                ; $ea3d: 8c 6e e5
	sbc ($e6),y              ; $ea40: f1 e6
	tax                      ; $ea42: aa
	sbc $05                  ; $ea43: e5 05
	and $e6,s                ; $ea45: 23 e6
	beq $ea4a                ; $ea47: f0 01
loc_ea49:
	bvc $e9d7                ; $ea49: 50 8c
loc_ea4b:
	sbc $05                  ; $ea4b: e5 05
	inc $aa                  ; $ea4d: e6 aa
	sbc $23                  ; $ea4f: e5 23
	inc $aa                  ; $ea51: e6 aa
	eor ($6e,x)              ; $ea53: 41 6e
	tax                      ; $ea55: aa
	sty $05e5                ; $ea56: 8c e5 05
	inc $8c                  ; $ea59: e6 8c
	and $50,s                ; $ea5b: 23 50
	sty $aa6e                ; $ea5d: 8c 6e aa
	ror $4105                ; $ea60: 6e 05 41
	ror $02f9                ; $ea63: 6e f9 02
	rtl                      ; $ea66: 6b
	nop                      ; $ea67: ea
	ora $23                  ; $ea68: 05 23
loc_ea6a:
	eor ($f1,x)              ; $ea6a: 41 f1
	ora ($e5,x)              ; $ea6c: 01 e5
	plx                      ; $ea6e: fa
	asl $ea,x                ; $ea6f: 16 ea
	pei $50                  ; $ea71: d4 50
loc_ea73:
	nop                      ; $ea73: ea
	jsl $c804e4              ; $ea74: 22 e4 04 c8
loc_ea78:
	cmp ($e6)                ; $ea78: d2 e6
	ldx $5fd2                ; $ea7a: ae d2 5f
	ldx $64d2                ; $ea7d: ae d2 64
	cpx $ae05                ; $ea80: ec 05 ae
	sbc $aeb4d2              ; $ea83: ef d2 b4 ae
	cmp ($5f)                ; $ea87: d2 5f
	ldx $64d2                ; $ea89: ae d2 64
	cpx $ae05                ; $ea8c: ec 05 ae
	sbc $aeb4d2              ; $ea8f: ef d2 b4 ae
	cmp ($5f)                ; $ea93: d2 5f
	ldx $64d2                ; $ea95: ae d2 64
	cpx $ae05                ; $ea98: ec 05 ae
	sbc $aae6d2              ; $ea9b: ef d2 e6 aa
	cmp ($b4)                ; $ea9f: d2 b4
	cpx $aa01                ; $eaa1: ec 01 aa
	sbc $aae6d2              ; $eaa4: ef d2 e6 aa
	plx                      ; $eaa8: fa
	sei                      ; $eaa9: 78
	nop                      ; $eaaa: ea
	bmi $eab1                ; $eaab: 30 04

; === Block $ea08-$ea0b (Code) ===
loc_ea08:
	pei $96                  ; $ea08: d4 96
loc_ea0a:
	nop                      ; $ea0a: ea

; === Block $ea19-$ea1d (Code) ===
loc_ea19:
	eor ($6e,x)              ; $ea19: 41 6e
	ora $50                  ; $ea1b: 05 50

; === Block $ea4a-$ea4d (Code) ===
loc_ea4a:
	sty $05e5                ; $ea4a: 8c e5 05

; === Block $ea61-$ea63 (Code) ===
loc_ea61:
	ora $41                  ; $ea61: 05 41

; === Block $ea62-$ea67 (Code) ===
loc_ea62:
	eor ($6e,x)              ; $ea62: 41 6e
	sbc $6b02,y              ; $ea64: f9 02 6b

; === Block $ea69-$ea6f (Code) ===
loc_ea69:
	and $41,s                ; $ea69: 23 41
loc_ea6b:
	sbc ($01),y              ; $ea6b: f1 01
	sbc $fa                  ; $ea6d: e5 fa

; === Block $eaac-$eaaf (Code) ===
loc_eaac:
	tsb $bf                  ; $eaac: 04 bf
	nop                      ; $eaae: ea

; === Block $eaad-$eb11 (Code) ===
loc_eaad:
	lda $eb2eea,x            ; $eaad: bf ea 2e eb
	plp                      ; $eab1: 28
	cpx $eca9                ; $eab2: ec a9 ec
	jml $edc0ed              ; $eab5: 5c ed c0 ed
	and #$ee                 ; $eab9: 29 ee
	ror                      ; $eabb: 6a
	inc $eedd                ; $eabc: ee dd ee
	sed                      ; $eabf: f8
	cmp [$f3],y              ; $eac0: d7 f3
	stx $f7,y                ; $eac2: 96 f7
	bit $f500,x              ; $eac4: 3c 00 f5
	bit $32d2,x              ; $eac7: 3c d2 32
	pei $40                  ; $eaca: d4 40
	sep #$ea                 ; $eacc: e2 ea
	plp                      ; $eace: 28
	xba                      ; $eacf: eb
	ora $04e4                ; $ead0: 0d e4 04
	lsr $806d,x              ; $ead3: 5e 6d 80
	sta $f032d2              ; $ead6: 8f d2 32 f0
	ora $71                  ; $eada: 05 71
	adc ($71),y              ; $eadc: 71 71
	adc ($80),y              ; $eade: 71 80
	bra $ea62                ; $eae0: 80 80
	bra $ea73                ; $eae2: 80 8f
	sta $808f8f              ; $eae4: 8f 8f 8f 80
	bra $ea6a                ; $eae8: 80 80
	bra $eadd                ; $eaea: 80 f1
	lsr $806d,x              ; $eaec: 5e 6d 80
	sta $8f7c6d              ; $eaef: 8f 6d 7c 8f
	stz $8b7c,x              ; $eaf3: 9e 7c 8b
	stz $e6ad,x              ; $eaf6: 9e ad e6
	and [$91],y              ; $eaf9: 37 91
	and [$e5],y              ; $eafb: 37 e5
	ora $37e6,y              ; $eafd: 19 e6 37
	sbc $37                  ; $eb00: e5 37
	mvp $19,$e6              ; $eb02: 44 19 e6
	ldy #$46                 ; $eb05: a0 46
	stz $e5                  ; $eb07: 64 e5
	stz $0a                  ; $eb09: 64 0a
	inc $af                  ; $eb0b: e6 af
	ldy #$d2                 ; $eb0d: a0 d2
	stz $e6                  ; $eb0f: 64 e6
	brk #$e6                 ; $eb11: 00 e6

; === Block $eaaf-$eab2 (Code) ===
loc_eaaf:
	rol $28eb                ; $eaaf: 2e eb 28

; === Block $eadd-$eaf3 (Code) ===
loc_eadd:
	adc ($71),y              ; $eadd: 71 71
	bra $ea61                ; $eadf: 80 80
	bra $ea63                ; $eae1: 80 80
	sta $8f8f8f              ; $eae3: 8f 8f 8f 8f
	bra $ea69                ; $eae7: 80 80
	bra $ea6b                ; $eae9: 80 80
	sbc ($5e),y              ; $eaeb: f1 5e
	adc $8f80                ; $eaed: 6d 80 8f
	adc $8f7c                ; $eaf0: 6d 7c 8f

; === Block $ec39-$ec41 (Code) ===
loc_ec39:
	asl                      ; $ec39: 0a
	ora [$e6],y              ; $ec3a: 17 e6
	ldy #$73                 ; $ec3c: a0 73
	ora $e537,y              ; $ec3e: 19 37 e5

; === Block $ec3d-$ee0a (Code) ===
sub_ec3d:
	adc ($19,s),y            ; $ec3d: 73 19
	and [$e5],y              ; $ec3f: 37 e5
	and [$e6],y              ; $ec41: 37 e6
	sta ($73),y              ; $ec43: 91 73
	stz $d2                  ; $ec45: 64 d2
	bvc $ec39                ; $ec47: 50 f0
loc_ec49:
	phd                      ; $ec49: 0b
	cmp $f1,s                ; $ec4a: c3 f1
	asl                      ; $ec4c: 0a
	stz $0a                  ; $ec4d: 64 0a
	ldy #$0a                 ; $ec4f: a0 0a
	sbc $0a                  ; $ec51: e5 0a
	ora [$e6],y              ; $ec53: 17 e6
	ldy #$73                 ; $ec55: a0 73
	ora $e537,y              ; $ec57: 19 37 e5
	and [$e6],y              ; $ec5a: 37 e6
	sta ($82),y              ; $ec5c: 91 82
	adc ($19,s),y            ; $ec5e: 73 19
	adc ($19,s),y            ; $ec60: 73 19
	lda $19e519              ; $ec62: af 19 e5 19
	rol $e6                  ; $ec66: 26 e6
	lda $462882              ; $ec68: af 82 28 46
	sbc $46                  ; $ec6c: e5 46
	inc $a0                  ; $ec6e: e6 a0
	sta ($82),y              ; $ec70: 91 82
	plp                      ; $ec72: 28
	brl $d19e                ; $ec73: 82 28 e5
	asl                      ; $ec76: 0a
	inc $28                  ; $ec77: e6 28
	sbc $28                  ; $ec79: e5 28
	and $0a,x                ; $ec7b: 35 0a
	inc $91                  ; $ec7d: e6 91
	and [$55],y              ; $ec7f: 37 55
	sbc $55                  ; $ec81: e5 55
	inc $af                  ; $ec83: e6 af
	ldy #$91                 ; $ec85: a0 91
	and [$91],y              ; $ec87: 37 91
	and [$e5],y              ; $ec89: 37 e5
	ora $37e6,y              ; $ec8b: 19 e6 37
	sbc $37                  ; $ec8e: e5 37
	mvp $19,$e6              ; $ec90: 44 19 e6
	ldy #$46                 ; $ec93: a0 46
	stz $e5                  ; $ec95: 64 e5
	stz $0a                  ; $ec97: 64 0a
	inc $af                  ; $ec99: e6 af
	ldy #$d2                 ; $ec9b: a0 d2
	trb $db                  ; $ec9d: 14 db
	bmi $ed20                ; $ec9f: 30 7f
loc_eca1:
	beq $ece2                ; $eca1: f0 3f
loc_eca3:
	sta $fadcf1              ; $eca3: 8f f1 dc fa
	lsr $ec                  ; $eca7: 46 ec
	cmp ($3c)                ; $eca9: d2 3c
	pei $c0                  ; $ecab: d4 c0
	nop                      ; $ecad: ea
	and [$e2]                ; $ecae: 27 e2
	cpx $04                  ; $ecb0: e4 04
	txs                      ; $ecb2: 9a
	lda #$e5                 ; $ecb3: a9 e5
	php                      ; $ecb5: 08
	ora [$e4],y              ; $ecb6: 17 e4
	tsb $f0                  ; $ecb8: 04 f0
	ora ($f0,x)              ; $ecba: 01 f0
	ora ($73,x)              ; $ecbc: 01 73
	and [$0a],y              ; $ecbe: 37 0a
	inc $73                  ; $ecc0: e6 73
	sbc $f1                  ; $ecc2: e5 f1
	beq $ecc7                ; $ecc4: f0 01
loc_ecc6:
	brl $f700                ; $ecc6: 82 37 0a
	inc $82                  ; $ecc9: e6 82
	sbc $f1                  ; $eccb: e5 f1
	beq $ecd0                ; $eccd: f0 01
loc_eccf:
	sta ($37),y              ; $eccf: 91 37
	asl                      ; $ecd1: 0a
	inc $91                  ; $ecd2: e6 91
	sbc $f1                  ; $ecd4: e5 f1
	beq $ecd9                ; $ecd6: f0 01
loc_ecd8:
	brl $f712                ; $ecd8: 82 37 0a
	inc $82                  ; $ecdb: e6 82
	sbc $f1                  ; $ecdd: e5 f1
	sbc ($f0),y              ; $ecdf: f1 f0
	ora ($f0,x)              ; $ece1: 01 f0
	ora ($73,x)              ; $ece3: 01 73
	lsr $19                  ; $ece5: 46 19
	inc $82                  ; $ece7: e6 82
	sbc $f1                  ; $ece9: e5 f1
	beq $ecee                ; $eceb: f0 01
loc_eced:
	brl $10636               ; $eced: 82 46 19
	inc $82                  ; $ecf0: e6 82
	sbc $f1                  ; $ecf2: e5 f1
	beq $ecf7                ; $ecf4: f0 01
loc_ecf6:
	sta ($46),y              ; $ecf6: 91 46
	ora $91e6,y              ; $ecf8: 19 e6 91
	sbc $f1                  ; $ecfb: e5 f1
	beq $ed00                ; $ecfd: f0 01
loc_ecff:
	brl $10648               ; $ecff: 82 46 19
	inc $82                  ; $ed02: e6 82
	sbc $f1                  ; $ed04: e5 f1
	sbc ($f0),y              ; $ed06: f1 f0
	ora ($f0,x)              ; $ed08: 01 f0
	ora ($73,x)              ; $ed0a: 01 73
	and [$0a],y              ; $ed0c: 37 0a
	inc $73                  ; $ed0e: e6 73
	sbc $f1                  ; $ed10: e5 f1
	beq $ed15                ; $ed12: f0 01
loc_ed14:
	brl $f74e                ; $ed14: 82 37 0a
	inc $82                  ; $ed17: e6 82
	sbc $f1                  ; $ed19: e5 f1
	beq $ed1e                ; $ed1b: f0 01
loc_ed1d:
	sta ($37),y              ; $ed1d: 91 37
	asl                      ; $ed1f: 0a
loc_ed20:
	inc $91                  ; $ed20: e6 91
	sbc $f1                  ; $ed22: e5 f1
	beq $ed27                ; $ed24: f0 01
loc_ed26:
	brl $f760                ; $ed26: 82 37 0a
	inc $82                  ; $ed29: e6 82
	sbc $f1                  ; $ed2b: e5 f1
	sbc ($9a),y              ; $ed2d: f1 9a
	lda #$e5                 ; $ed2f: a9 e5
	php                      ; $ed31: 08
	ora [$e6],y              ; $ed32: 17 e6
	lda #$e5                 ; $ed34: a9 e5
	tsb $17                  ; $ed36: 04 17
	rol $04                  ; $ed38: 26 04
	ora ($26,s),y            ; $ed3a: 13 26
	and $c3,x                ; $ed3c: 35 c3
	beq $ed43                ; $ed3e: f0 03
loc_ed40:
	inc $8c                  ; $ed40: e6 8c
	eor $32e58c,x            ; $ed42: 5f 8c e5 32
	sbc ($f0),y              ; $ed46: f1 f0
	ora ($05,x)              ; $ed48: 01 05
	inc $32                  ; $ed4a: e6 32
	sbc $05                  ; $ed4c: e5 05
	eor $01f0f1,x            ; $ed4e: 5f f1 f0 01
	inc $8c                  ; $ed52: e6 8c
	eor $32e58c,x            ; $ed54: 5f 8c e5 32
	sbc ($fa),y              ; $ed58: f1 fa
	lda [$ec],y              ; $ed5a: b7 ec
	cmp ($32)                ; $ed5c: d2 32
	pei $40                  ; $ed5e: d4 40
	nop                      ; $ed60: ea
	plp                      ; $ed61: 28
	sep #$eb                 ; $ed62: e2 eb
	ora $03e4                ; $ed64: 0d e4 03
	tsb $13                  ; $ed67: 04 13
	rol $35                  ; $ed69: 26 35
	cpx $04                  ; $ed6b: e4 04
	beq $ed8e                ; $ed6d: f0 1f
loc_ed6f:
	php                      ; $ed6f: 08
	sbc ($f0),y              ; $ed70: f1 f0
	ora $f0f117,x            ; $ed72: 1f 17 f1 f0
	ora $04f108,x            ; $ed76: 1f 08 f1 04
	ora ($26,s),y            ; $ed7a: 13 26
	and $13,x                ; $ed7c: 35 13
	jsl $224435              ; $ed7e: 22 35 44 22
loc_ed82:
	and ($44),y              ; $ed82: 31 44
	eor ($e6,s),y            ; $ed84: 53 e6
	and [$91],y              ; $ed86: 37 91
	and [$e5],y              ; $ed88: 37 e5
	ora $37e6,y              ; $ed8a: 19 e6 37
	sbc $37                  ; $ed8d: e5 37
	mvp $19,$e6              ; $ed8f: 44 19 e6
	ldy #$46                 ; $ed92: a0 46
	stz $e5                  ; $ed94: 64 e5
	stz $0a                  ; $ed96: 64 0a
	inc $af                  ; $ed98: e6 af
	ldy #$c3                 ; $ed9a: a0 c3
	cmp $c3,s                ; $ed9c: c3 c3
	sbc $e5                  ; $ed9e: e5 e5
	asl                      ; $eda0: 0a
	inc $af                  ; $eda1: e6 af
	sbc $0a                  ; $eda3: e5 0a
	and [$5b],y              ; $eda5: 37 5b
	mvp $31,$17              ; $eda7: 44 31 17
	tsb $e6                  ; $edaa: 04 e6
	stz $718b,x              ; $edac: 9e 8b 71
	lsr $08e5,x              ; $edaf: 5e e5 08
	inc $a9                  ; $edb2: e6 a9
	sbc $44                  ; $edb4: e5 44
	and ($71),y              ; $edb6: 31 71
	lsr $08e5,x              ; $edb8: 5e e5 08
	inc $a9                  ; $edbb: e6 a9
	plx                      ; $edbd: fa
	rtl                      ; $edbe: 6b
	sbc $aad2                ; $edbf: ed d2 aa
	pei $80                  ; $edc2: d4 80
	nop                      ; $edc4: ea
	rol $e3                  ; $edc5: 26 e3
	cpx $04                  ; $edc7: e4 04
	tsb $e6                  ; $edc9: 04 e6
	lda #$9e                 ; $edcb: a9 9e
	sta $e480d4              ; $edcd: 8f d4 80 e4
	tsb $f0                  ; $edd1: 04 f0
	ora $f0f108,x            ; $edd3: 1f 08 f1 f0
	ora $f0f117,x            ; $edd7: 1f 17 f1 f0
	ora $04f108,x            ; $eddb: 1f 08 f1 04
	ora ($26,s),y            ; $eddf: 13 26
	and $13,x                ; $ede1: 35 13
	jsl $224435              ; $ede3: 22 35 44 22
loc_ede7:
	and ($44),y              ; $ede7: 31 44
	eor ($e6,s),y            ; $ede9: 53 e6
	and [$91],y              ; $edeb: 37 91
	and [$e5],y              ; $eded: 37 e5
	ora $37e6,y              ; $edef: 19 e6 37
	sbc $37                  ; $edf2: e5 37
	mvp $19,$e6              ; $edf4: 44 19 e6
	ldy #$46                 ; $edf7: a0 46
	stz $e5                  ; $edf9: 64 e5
	stz $0a                  ; $edfb: 64 0a
	inc $af                  ; $edfd: e6 af
	ldy #$d4                 ; $edff: a0 d4
	cpy #$ea                 ; $ee01: c0 ea
	plp                      ; $ee03: 28
	xba                      ; $ee04: eb
	ora $64d2                ; $ee05: 0d d2 64
	cpx $03                  ; $ee08: e4 03
	brk #$e6                 ; $ee0a: 00 e6

; === Block $ecc7-$ecc9 (Code) ===
loc_ecc7:
	and [$0a],y              ; $ecc7: 37 0a

; === Block $ecd0-$ecd2 (Code) ===
loc_ecd0:
	and [$0a],y              ; $ecd0: 37 0a

; === Block $ecd9-$ecdb (Code) ===
loc_ecd9:
	and [$0a],y              ; $ecd9: 37 0a

; === Block $ece2-$ece9 (Code) ===
loc_ece2:
	beq $ece5                ; $ece2: f0 01
loc_ece4:
	adc ($46,s),y            ; $ece4: 73 46
	ora $82e6,y              ; $ece6: 19 e6 82

; === Block $ecee-$ecf0 (Code) ===
loc_ecee:
	lsr $19                  ; $ecee: 46 19

; === Block $ecf7-$ecfb (Code) ===
loc_ecf7:
	lsr $19                  ; $ecf7: 46 19
	inc $91                  ; $ecf9: e6 91

; === Block $ed00-$ed02 (Code) ===
loc_ed00:
	lsr $19                  ; $ed00: 46 19

; === Block $ed15-$ed17 (Code) ===
loc_ed15:
	and [$0a],y              ; $ed15: 37 0a

; === Block $ed1e-$ed20 (Code) ===
loc_ed1e:
	and [$0a],y              ; $ed1e: 37 0a

; === Block $ed27-$ed29 (Code) ===
loc_ed27:
	and [$0a],y              ; $ed27: 37 0a

; === Block $ed43-$ed46 (Code) ===
loc_ed43:
	sty $32e5                ; $ed43: 8c e5 32

; === Block $ed8e-$ed98 (Code) ===
loc_ed8e:
	and [$44],y              ; $ed8e: 37 44
	ora $a0e6,y              ; $ed90: 19 e6 a0
	lsr $64                  ; $ed93: 46 64
	sbc $64                  ; $ed95: e5 64
	asl                      ; $ed97: 0a

; === Block $f47b-$f48d (Code) ===
sub_f47b:
	adc [$f6]                ; $f47b: 67 f6
	lda $f871f7,x            ; $f47d: bf f7 71 f8
	lda ($f9),y              ; $f481: b1 f9
	inc $fa                  ; $f483: e6 fa
	cmp ($fb,s),y            ; $f485: d3 fb
	sed                      ; $f487: f8
	jml [$9bf3]              ; $f488: dc f3 9b
	sbc [$3c],y              ; $f48b: f7 3c
	brk #$f5                 ; $f48d: 00 f5

; === Block $f52f-$f5db (Code) ===
sub_f52f:
	beq $f534                ; $f52f: f0 03
loc_f531:
	adc $f123,x              ; $f531: 7d 23 f1
loc_f534:
	bvc $f54a                ; $f534: 50 14
loc_f536:
	bvc $f54c                ; $f536: 50 14
loc_f538:
	adc $7d14,x              ; $f538: 7d 14 7d
	trb $f0                  ; $f53b: 14 f0
	ora $41,s                ; $f53d: 03 41
	inc $8c                  ; $f53f: e6 8c
	sbc $f1                  ; $f541: e5 f1
	beq $f548                ; $f543: f0 03
loc_f545:
	eor $e5aae6,x            ; $f545: 5f e6 aa e5
	sbc ($f0),y              ; $f549: f1 f0
	ora ($88,x)              ; $f54b: 01 88
	adc $f1b4,x              ; $f54d: 7d b4 f1
	beq $f553                ; $f550: f0 01
loc_f552:
	cpx $04                  ; $f552: e4 04
	beq $f559                ; $f554: f0 03
loc_f556:
	tax                      ; $f556: aa
	eor ($f1,x)              ; $f557: 41 f1
loc_f559:
	eor $325f32,x            ; $f559: 5f 32 5f 32
sub_f55d:
	adc $5f32,x              ; $f55d: 7d 32 5f
	and ($f0)                ; $f560: 32 f0
	ora $7d,s                ; $f562: 03 7d
	and $f1,s                ; $f564: 23 f1
	bvc $f57c                ; $f566: 50 14
loc_f568:
	bvc $f57e                ; $f568: 50 14
loc_f56a:
	adc $7d14,x              ; $f56a: 7d 14 7d
	trb $f0                  ; $f56d: 14 f0
	ora $41,s                ; $f56f: 03 41
	inc $8c                  ; $f571: e6 8c
	sbc $f1                  ; $f573: e5 f1
	beq $f57a                ; $f575: f0 03
loc_f577:
	eor $e5aae6,x            ; $f577: 5f e6 aa e5
	sbc ($f0),y              ; $f57b: f1 f0
	ora ($88,x)              ; $f57d: 01 88
	adc $f1b4,x              ; $f57f: 7d b4 f1
	cpx $04                  ; $f582: e4 04
	beq $f589                ; $f584: f0 03
loc_f586:
	tax                      ; $f586: aa
	eor ($f1,x)              ; $f587: 41 f1
loc_f589:
	beq $f58e                ; $f589: f0 03
loc_f58b:
	txy                      ; $f58b: 9b
	trb $f1                  ; $f58c: 14 f1
loc_f58e:
	beq $f593                ; $f58e: f0 03
loc_f590:
	tax                      ; $f590: aa
	and $f1,s                ; $f591: 23 f1
loc_f593:
	beq $f598                ; $f593: f0 03
loc_f595:
	sbc $14                  ; $f595: e5 14
	inc $41                  ; $f597: e6 41
	sbc ($f0),y              ; $f599: f1 f0
	ora $e5,s                ; $f59b: 03 e5
	and $e6,s                ; $f59d: 23 e6
	bvc $f592                ; $f59f: 50 f1
loc_f5a1:
	beq $f5a6                ; $f5a1: f0 03
loc_f5a3:
	sbc $41                  ; $f5a3: e5 41
	inc $6e                  ; $f5a5: e6 6e
	sbc ($f0),y              ; $f5a7: f1 f0
	ora $e5,s                ; $f5a9: 03 e5
	trb $e6                  ; $f5ab: 14 e6
	bvc $f5a0                ; $f5ad: 50 f1
loc_f5af:
	sbc $3c                  ; $f5af: e5 3c
	bit $3c3c,x              ; $f5b1: 3c 3c 3c
	sbc ($ea),y              ; $f5b4: f1 ea
	and #$f0                 ; $f5b6: 29 f0
	cop #$69                 ; $f5b8: 02 69
	ldy $4b,x                ; $f5ba: b4 4b
	ldy $f1,x                ; $f5bc: b4 f1
	adc #$b4                 ; $f5be: 69 b4
	phk                      ; $f5c0: 4b
	cmp ($50)                ; $f5c1: d2 50
	phk                      ; $f5c3: 4b
	cmp ($00)                ; $f5c4: d2 00
	adc ($d2,s),y            ; $f5c6: 73 d2
	asl                      ; $f5c8: 0a
	cmp ($ff,s),y            ; $f5c9: d3 ff
	and ($71)                ; $f5cb: 32 71
	lda $d3,x                ; $f5cd: b5 d3
	sbc $d2b46e,x            ; $f5cf: ff 6e b4 d2
	ror $f26e                ; $f5d3: 6e 6e f2
	cmp ($46)                ; $f5d6: d2 46
	pei $64                  ; $f5d8: d4 64
	nop                      ; $f5da: ea
	brk #$e2                 ; $f5db: 00 e2

; === Block $f548-$f54a (Code) ===
loc_f548:
	sbc $f1                  ; $f548: e5 f1

; === Block $f54a-$f54d (Code) ===
loc_f54a:
	beq $f54d                ; $f54a: f0 01
loc_f54c:
	dey                      ; $f54c: 88

; === Block $f553-$f557 (Code) ===
loc_f553:
	tsb $f0                  ; $f553: 04 f0
	ora $aa,s                ; $f555: 03 aa

; === Block $f57a-$f57c (Code) ===
loc_f57a:
	sbc $f1                  ; $f57a: e5 f1

; === Block $f57c-$f57f (Code) ===
loc_f57c:
	beq $f57f                ; $f57c: f0 01
loc_f57e:
	dey                      ; $f57e: 88

; === Block $f592-$f598 (Code) ===
loc_f592:
	sbc ($f0),y              ; $f592: f1 f0
	ora $e5,s                ; $f594: 03 e5
	trb $e6                  ; $f596: 14 e6

; === Block $f598-$f5a9 (Code) ===
loc_f598:
	eor ($f1,x)              ; $f598: 41 f1
	beq $f59f                ; $f59a: f0 03
loc_f59c:
	sbc $23                  ; $f59c: e5 23
	inc $50                  ; $f59e: e6 50
loc_f5a0:
	sbc ($f0),y              ; $f5a0: f1 f0
	ora $e5,s                ; $f5a2: 03 e5
	eor ($e6,x)              ; $f5a4: 41 e6
loc_f5a6:
	ror $f0f1                ; $f5a6: 6e f1 f0

; === Block $f700-$f757 (Code) ===
loc_f700:
	wai                      ; $f700: cb
	lda $44e5                ; $f701: ad e5 44
	inc $ad                  ; $f704: e6 ad
	rol $41c8,x              ; $f706: 3e c8 41
	eor ($ad,x)              ; $f709: 41 ad
	sty $6280                ; $f70b: 8c 80 62
	bra $f76c                ; $f70e: 80 5c
	iny                      ; $f710: c8
	eor $e59e62,x            ; $f711: 5f 62 9e e5
	ora [$5f],y              ; $f715: 17 5f
	ora [$e6],y              ; $f717: 17 e6
	stz sub_6b62,x           ; $f719: 9e 62 6b
	iny                      ; $f71c: c8
	ror $e571                ; $f71d: 6e 71 e5
	adc ($26),y              ; $f720: 71 26
	inc $aa                  ; $f722: e6 aa
	adc ($ad),y              ; $f724: 71 ad
	sbc $26                  ; $f726: e5 26
	inc $89                  ; $f728: e6 89
	iny                      ; $f72a: c8
	sty $e58f                ; $f72b: 8c 8f e5
	ora [$26],y              ; $f72e: 17 26
	eor ($17,x)              ; $f730: 41 17
	rol $44                  ; $f732: 26 44
	inc $9e                  ; $f734: e6 9e
	eor ($e5,s),y            ; $f736: 53 e5
	eor ($23,s),y            ; $f738: 53 23
	inc $9e                  ; $f73a: e6 9e
	sta $cb989e              ; $f73c: 8f 9e 98 cb
	stz $08e5,x              ; $f740: 9e e5 08
	rol $08                  ; $f743: 26 08
	rol $08                  ; $f745: 26 08
	inc $6e                  ; $f747: e6 6e
	adc ($e5),y              ; $f749: 71 e5
	ora $41                  ; $f74b: 05 41
	inc $71                  ; $f74d: e6 71
	sbc $50                  ; $f74f: e5 50
	inc $71                  ; $f751: e6 71
	sbc $6e                  ; $f753: e5 6e
	ora ($e6,s),y            ; $f755: 13 e6
	jmp ($14e5,x)            ; $f757: 7c e5 14

; === Block $f712-$f715 (Code) ===
loc_f712:
	per $dcb3                ; $f712: 62 9e e5

; === Block $f74e-$f757 (Code) ===
loc_f74e:
	adc ($e5),y              ; $f74e: 71 e5
	bvc $f738                ; $f750: 50 e6
loc_f752:
	adc ($e5),y              ; $f752: 71 e5
	ror $e613                ; $f754: 6e 13 e6

; === Block $f760-$f760 (Code) ===
loc_f760:
	brk #$00                 ; $f760: 00 00

; === Block $f76c-$f7ac (Code) ===
loc_f76c:
	rtl                      ; $f76c: 6b
	sbc $20                  ; $f76d: e5 20
	inc $91                  ; $f76f: e6 91
	cmp $cdaf                ; $f771: cd af cd
	sbc $01                  ; $f774: e5 01
	lda $50e6,y              ; $f776: b9 e6 50
	ror $a78c                ; $f779: 6e 8c a7
	rtl                      ; $f77c: 6b
	sbc $20                  ; $f77d: e5 20
	inc $a7                  ; $f77f: e6 a7
	sta ($cd),y              ; $f781: 91 cd
	lda $01e5cd              ; $f783: af cd e5 01
	ldy $1f,x                ; $f787: b4 1f
	wai                      ; $f789: cb
	rol $6b                  ; $f78a: 26 6b
	sbc $20                  ; $f78c: e5 20
	inc $91                  ; $f78e: e6 91
	cmp $cdaf                ; $f790: cd af cd
	sbc $01                  ; $f793: e5 01
	lda $50e6,y              ; $f795: b9 e6 50
	ror $a78c                ; $f798: 6e 8c a7
	rtl                      ; $f79b: 6b
	sbc $20                  ; $f79c: e5 20
	inc $a7                  ; $f79e: e6 a7
	sbc $0a                  ; $f7a0: e5 0a
	cmp $afe6                ; $f7a2: cd e6 af
	cmp $8988                ; $f7a5: cd 88 89
	sbc $02                  ; $f7a8: e5 02
	inc $d2                  ; $f7aa: e6 d2
	brk #$73                 ; $f7ac: 00 73

; === Block $f7c7-$f963 (Code) ===
sub_f7c7:
	beq $f7d8                ; $f7c7: f0 0f
loc_f7c9:
	cmp $f1,s                ; $f7c9: c3 f1
	beq $f7ce                ; $f7cb: f0 01
loc_f7cd:
	nop                      ; $f7cd: ea
loc_f7ce:
	pld                      ; $f7ce: 2b
	cmp $c3,s                ; $f7cf: c3 c3
	cpx $04                  ; $f7d1: e4 04
	lda $c8                  ; $f7d3: a5 c8
	sbc $7d                  ; $f7d5: e5 7d
	sty $3caa                ; $f7d7: 8c aa 3c
	lda $4c                  ; $f7da: a5 4c
	per $ac5f                ; $f7dc: 62 80 b4
	cmp $c3,s                ; $f7df: c3 c3
	iny                      ; $f7e1: c8
	eor $a78c7d,x            ; $f7e2: 5f 7d 8c a7
	jml $3cb43c              ; $f7e6: 5c 3c b4 3c
	ldy $ea,x                ; $f7ea: b4 ea
	ora [$d2]                ; $f7ec: 07 d2
	plp                      ; $f7ee: 28
	cpx $ed00                ; $f7ef: ec 00 ed
	ora $ee,s                ; $f7f2: 03 ee
	tsb $e53e                ; $f7f4: 0c 3e e5
	rol $e6b4,x              ; $f7f7: 3e b4 e6
	jml $b45ce5              ; $f7fa: 5c e5 5c b4
	inc $20                  ; $f7fe: e6 20
	sbc $20                  ; $f800: e5 20
	ldy $e6,x                ; $f802: b4 e6
	rol $3ee5,x              ; $f804: 3e e5 3e
	ldy $e6,x                ; $f807: b4 e6
	eor $4de5                ; $f809: 4d e5 4d
	ldy $e6,x                ; $f80c: b4 e6
	rtl                      ; $f80e: 6b
	sbc $6b                  ; $f80f: e5 6b
	ldy $e6,x                ; $f811: b4 e6
	eor $7ae5                ; $f813: 4d e5 7a
	inc $98                  ; $f816: e6 98
	sbc $4d                  ; $f818: e5 4d
	bit $f0b4,x              ; $f81a: 3c b4 f0
	ora ($c3,x)              ; $f81d: 01 c3
	sbc ($f1),y              ; $f81f: f1 f1
	beq $f82a                ; $f821: f0 07
loc_f823:
	cmp $f1,s                ; $f823: c3 f1
	nop                      ; $f825: ea
	pld                      ; $f826: 2b
	beq $f848                ; $f827: f0 1f
loc_f829:
	inc $b1                  ; $f829: e6 b1
	sbc $0c                  ; $f82b: e5 0c
	sbc ($e6),y              ; $f82d: f1 e6
	beq $f850                ; $f82f: f0 1f
loc_f831:
	sta ($b1,s),y            ; $f831: 93 b1
	sbc ($f0),y              ; $f833: f1 f0
	ora $0ce5b1,x            ; $f835: 1f b1 e5 0c
	inc $f1                  ; $f839: e6 f1
	beq $f85c                ; $f83b: f0 1f
loc_f83d:
	sta ($b1,s),y            ; $f83d: 93 b1
	sbc ($d2),y              ; $f83f: f1 d2
	asl                      ; $f841: 0a
	cmp ($ff,s),y            ; $f842: d3 ff
	bit $1ff0,x              ; $f844: 3c f0 1f
	lda ($e5),y              ; $f847: b1 e5
	tsb $f1e6                ; $f849: 0c e6 f1
	sbc $58                  ; $f84c: e5 58
	adc [$75]                ; $f84e: 67 75
loc_f850:
	beq $f86a                ; $f850: f0 18
loc_f852:
	iny                      ; $f852: c8
	sbc ($d2),y              ; $f853: f1 d2
	plp                      ; $f855: 28
	pei $9a                  ; $f856: d4 9a
	nop                      ; $f858: ea
	ora $e4                  ; $f859: 05 e4
	ora [$c5]                ; $f85b: 07 c5
	xba                      ; $f85d: eb
	asl                      ; $f85e: 0a
	cmp [$00],y              ; $f85f: d7 00
	ora ($c8),y              ; $f861: 11 c8
	beq $f865                ; $f863: f0 00
loc_f865:
	dec $c0,x                ; $f865: d6 c0
	bcc $f87e                ; $f867: 90 15
loc_f869:
	cmp [$15]                ; $f869: c7 15
	dec $c0,x                ; $f86b: d6 c0
	bcc $f83a                ; $f86d: 90 cb
loc_f86f:
	ora $f1,x                ; $f86f: 15 f1
	cmp ($82)                ; $f871: d2 82
	pei $80                  ; $f873: d4 80
	nop                      ; $f875: ea
	rol                      ; $f876: 2a
	sep #$c8                 ; $f877: e2 c8
	cpx $04                  ; $f879: e4 04
	adc $46cb,y              ; $f87b: 79 cb 46
loc_f87e:
	cmp $a63c                ; $f87e: cd 3c a6
	wai                      ; $f881: cb
	sta ($cd),y              ; $f882: 91 cd
	adc $415f,x              ; $f884: 7d 5f 41
	and ($20)                ; $f887: 32 20
	ply                      ; $f889: 7a
	bit #$a7                 ; $f88a: 89 a7
	adc $cb17,y              ; $f88c: 79 17 cb
	ora $46cb3e              ; $f88f: 0f 3e cb 46
	cmp $cd91                ; $f893: cd 91 cd
	lda $13e5cd              ; $f896: af cd e5 13
	wai                      ; $f89a: cb
	inc $8b                  ; $f89b: e6 8b
	stz $cd                  ; $f89d: 64 cd
	ldx $cb                  ; $f89f: a6 cb
	stz $cd                  ; $f8a1: 64 cd
	jml $7d8ca7              ; $f8a3: 5c a7 8c 7d
	eor $cbb641,x            ; $f8a7: 5f 41 b6 cb
	brl $a87b                ; $f8ab: 82 cd af
	cmp $46e5                ; $f8ae: cd e5 46
	cmp $e614                ; $f8b1: cd 14 e6
	sty $aa41                ; $f8b4: 8c 41 aa
	ldy $f0,x                ; $f8b7: b4 f0
	ora ($e4,x)              ; $f8b9: 01 e4
	tsb $78                  ; $f8bb: 04 78
	rol $5ba7,x              ; $f8bd: 3e a7 5b
	and ($7a)                ; $f8c0: 32 7a
	jml $5f7d8c              ; $f8c2: 5c 8c 7d 5f
	eor ($b6,x)              ; $f8c6: 41 b6
	lda [$8c]                ; $f8c8: a7 8c
	ply                      ; $f8ca: 7a
	bvc $f886                ; $f8cb: 50 b9
loc_f8cd:
	bpl $f8b4                ; $f8cd: 10 e5
loc_f8cf:
	bpl $f8b7                ; $f8cf: 10 e6
loc_f8d1:
	eor ($89,x)              ; $f8d1: 41 89
	eor $e614e5,x            ; $f8d3: 5f e5 14 e6
	ldx $5f                  ; $f8d7: a6 5f
	lda $8c                  ; $f8d9: a5 8c
	adc $415f,x              ; $f8db: 7d 5f 41
	ldx $cb,y                ; $f8de: b6 cb
	lsr $cd                  ; $f8e0: 46 cd
	brl $a8b2                ; $f8e2: 82 cd af
	cmp $14e5                ; $f8e5: cd e5 14
	inc $8c                  ; $f8e8: e6 8c
	eor ($aa,x)              ; $f8ea: 41 aa
	ldy $e6,x                ; $f8ec: b4 e6
	lda $b6                  ; $f8ee: a5 b6
	sbc $3e                  ; $f8f0: e5 3e
	tcd                      ; $f8f2: 5b
	trb $e6                  ; $f8f3: 14 e6
	stx $a5,y                ; $f8f5: 96 a5
	ldx $e5,y                ; $f8f7: b6 e5
	jml $0f233d              ; $f8f9: 5c 3d 23 0f
	asl $204d,x              ; $f8fd: 1e 4d 20
	and $6950,x              ; $f900: 3d 50 69
	sei                      ; $f903: 78
	sbc $0f                  ; $f904: e5 0f
	inc $6d                  ; $f906: e6 6d
loc_f908:
	wai                      ; $f908: cb
	sbc $02                  ; $f909: e5 02
	ldy $e6,x                ; $f90b: b4 e6
	adc $e5cb                ; $f90d: 6d cb e5
	rol $f1b4,x              ; $f910: 3e b4 f1
	inc $a7                  ; $f913: e6 a7
	ldy $73cb,x              ; $f915: bc cb 73
	cmp $cdaf                ; $f918: cd af cd
	sbc $22                  ; $f91b: e5 22
	wai                      ; $f91d: cb
	php                      ; $f91e: 08
	wai                      ; $f91f: cb
	inc $ad                  ; $f920: e6 ad
	wai                      ; $f922: cb
	sbc $0a                  ; $f923: e5 0a
	cmp $afe6                ; $f925: cd e6 af
	cmp $e588                ; $f928: cd 88 e5
	lsr $cd                  ; $f92b: 46 cd
	plp                      ; $f92d: 28
	cmp $e601                ; $f92e: cd 01 e6
	rtl                      ; $f931: 6b
	ldy $73cb,x              ; $f932: bc cb 73
	cmp $cd73                ; $f935: cd 73 cd
	lda [$73]                ; $f938: a7 73
	cmp $cd91                ; $f93a: cd 91 cd
	tax                      ; $f93d: aa
	sbc $0a                  ; $f93e: e5 0a
	cmp $afe6                ; $f940: cd e6 af
	cmp $01e5                ; $f943: cd e5 01
	ldy $e6,x                ; $f946: b4 e6
	ror                      ; $f948: 6a
	wai                      ; $f949: cb
	adc ($cd,s),y            ; $f94a: 73 cd
	jsr $aa6e                ; $f94c: 20 6e aa
loc_f94f:
	sbc $07                  ; $f94f: e5 07
	cmp $88e6                ; $f951: cd e6 88
	sbc $43                  ; $f954: e5 43
	cmp $2001                ; $f956: cd 01 20
	ror $73cb                ; $f959: 6e cb 73
	cmp $a789                ; $f95c: cd 89 a7
	eor $cd,x                ; $f95f: 55 cd
	lsr $cd                  ; $f961: 46 cd
	jmp $5af3                ; $f963: 4c f3 5a

; === Block $f7d8-$f7dc (Code) ===
loc_f7d8:
	tax                      ; $f7d8: aa
	bit $4ca5,x              ; $f7d9: 3c a5 4c

; === Block $f82a-$f82f (Code) ===
loc_f82a:
	lda ($e5),y              ; $f82a: b1 e5
	tsb $e6f1                ; $f82c: 0c f1 e6

; === Block $f83a-$f842 (Code) ===
loc_f83a:
	sbc ($f0),y              ; $f83a: f1 f0
	ora $f1b193,x            ; $f83c: 1f 93 b1 f1
	cmp ($0a)                ; $f840: d2 0a

; === Block $f848-$f84c (Code) ===
loc_f848:
	sbc $0c                  ; $f848: e5 0c
	inc $f1                  ; $f84a: e6 f1

; === Block $f85c-$f85e (Code) ===
loc_f85c:
	cmp $eb                  ; $f85c: c5 eb

; === Block $f86a-$f86f (Code) ===
loc_f86a:
	ora $d6,x                ; $f86a: 15 d6
	cpy #$90                 ; $f86c: c0 90
	wai                      ; $f86e: cb

; === Block $f886-$f88f (Code) ===
loc_f886:
	eor ($32,x)              ; $f886: 41 32
	jsr $897a                ; $f888: 20 7a 89
loc_f88b:
	lda [$79]                ; $f88b: a7 79
	ora [$cb],y              ; $f88d: 17 cb

; === Block $f96a-$f96a (Code) ===
loc_f96a:
	brk #$e6                 ; $f96a: 00 e6

; === Block $f976-$f97a (Code) ===
loc_f976:
	sbc $f3b482,x            ; $f976: ff 82 b4 f3

; === Block $f978-$fabc (Code) ===
sub_f978:
	ldy $f3,x                ; $f978: b4 f3
	sei                      ; $f97a: 78
	nop                      ; $f97b: ea
	pld                      ; $f97c: 2b
	cmp ($28)                ; $f97d: d2 28
	cpx $05                  ; $f97f: e4 05
	cmp ($ff,s),y            ; $f981: d3 ff
	trb $f0                  ; $f983: 14 f0
	phd                      ; $f985: 0b
sub_f986:
	lda $917328              ; $f986: af 28 73 91
	sbc ($d3),y              ; $f98a: f1 d3
	sbc $0bf000,x            ; $f98c: ff 00 f0 0b
	lda $917328              ; $f990: af 28 73 91
	sbc ($d2),y              ; $f994: f1 d2
	plp                      ; $f996: 28
	pei $68                  ; $f997: d4 68
	nop                      ; $f999: ea
	ora $e4                  ; $f99a: 05 e4
	ora [$eb]                ; $f99c: 07 eb
	asl                      ; $f99e: 0a
	cmp [$00],y              ; $f99f: d7 00
	ora ($c8),y              ; $f9a1: 11 c8
	beq $f9a5                ; $f9a3: f0 00
loc_f9a5:
	dec $c0,x                ; $f9a5: d6 c0
	bcc $f9ae                ; $f9a7: 90 05
loc_f9a9:
	cmp [$06]                ; $f9a9: c7 06
	dec $c0,x                ; $f9ab: d6 c0
	bcc $f976                ; $f9ad: 90 c7
loc_f9af:
	asl $f1                  ; $f9af: 06 f1
	cmp ($ff)                ; $f9b1: d2 ff
	pei $80                  ; $f9b3: d4 80
	nop                      ; $f9b5: ea
	and [$e2]                ; $f9b6: 27 e2
	cpx $05                  ; $f9b8: e4 05
	iny                      ; $f9ba: c8
	beq $f9c8                ; $f9bb: f0 0b
loc_f9bd:
	cmp $f1,s                ; $f9bd: c3 f1
	nop                      ; $f9bf: ea
	jsr $ea02                ; $f9c0: 20 02 ea
loc_f9c3:
	and ($23,x)              ; $f9c3: 21 23
	nop                      ; $f9c5: ea
	jsr $bc05                ; $f9c6: 20 05 bc
loc_f9c9:
	cmp [$ea]                ; $f9c9: c7 ea
	and ($26,x)              ; $f9cb: 21 26
	jsl $0520ea              ; $f9cd: 22 ea 20 05
loc_f9d1:
	nop                      ; $f9d1: ea
	and $50,s                ; $f9d2: 23 50
	mvp $26,$ea              ; $f9d4: 44 26 ea
	jsr $c305                ; $f9d7: 20 05 c3
loc_f9da:
	cpx $05                  ; $f9da: e4 05
	beq $f9e2                ; $f9dc: f0 04
loc_f9de:
	nop                      ; $f9de: ea
	jsr $0501                ; $f9df: 20 01 05
loc_f9e2:
	cop #$ea                 ; $f9e2: 02 ea
	and ($20,x)              ; $f9e4: 21 20
	sbc ($ea),y              ; $f9e6: f1 ea
	jsr $0501                ; $f9e8: 20 01 05
loc_f9eb:
	php                      ; $f9eb: 08
	nop                      ; $f9ec: ea
	and $50,s                ; $f9ed: 23 50
	mvp $ea,$21              ; $f9ef: 44 ea 21
	rol $26                  ; $f9f2: 26 26
	nop                      ; $f9f4: ea
	jsr $0105                ; $f9f5: 20 05 01
loc_f9f8:
	ora $02                  ; $f9f8: 05 02
	nop                      ; $f9fa: ea
	and ($20,x)              ; $f9fb: 21 20
	nop                      ; $f9fd: ea
	jsr $0501                ; $f9fe: 20 01 05
loc_fa01:
	cop #$ea                 ; $fa01: 02 ea
	and ($23,x)              ; $fa03: 21 23
	nop                      ; $fa05: ea
	and $26,s                ; $fa06: 23 26
loc_fa08:
	rol $f0                  ; $fa08: 26 f0
	tsb $ea                  ; $fa0a: 04 ea
sub_fa0c:
	jsr $ea02                ; $fa0c: 20 02 ea
loc_fa0f:
	and ($23,x)              ; $fa0f: 21 23
	nop                      ; $fa11: ea
	jsr $0205                ; $fa12: 20 05 02
loc_fa15:
	nop                      ; $fa15: ea
	and ($20,x)              ; $fa16: 21 20
	sbc ($ea),y              ; $fa18: f1 ea
	jsr $02f0                ; $fa1a: 20 f0 02
loc_fa1d:
	cop #$ea                 ; $fa1d: 02 ea
	and ($23,x)              ; $fa1f: 21 23
	nop                      ; $fa21: ea
	jsr $f105                ; $fa22: 20 05 f1
loc_fa25:
	cop #$ea                 ; $fa25: 02 ea
	and ($26,x)              ; $fa27: 21 26
	rol $ea                  ; $fa29: 26 ea
	and $44,s                ; $fa2b: 23 44
	rol $f1                  ; $fa2d: 26 f1
	nop                      ; $fa2f: ea
	jsr $0200                ; $fa30: 20 00 02
loc_fa33:
	wai                      ; $fa33: cb
	nop                      ; $fa34: ea
	and $26,s                ; $fa35: 23 26
	ora $ea                  ; $fa37: 05 ea
	jsr $0800                ; $fa39: 20 00 08
loc_fa3c:
	nop                      ; $fa3c: ea
	and ($26,x)              ; $fa3d: 21 26
	rol $ea                  ; $fa3f: 26 ea
	and $50,s                ; $fa41: 23 50
	mvp $ea,$21              ; $fa43: 44 ea 21
	and [$ea]                ; $fa46: 27 ea
	and $27,s                ; $fa48: 23 27
	ora #$f0                 ; $fa4a: 09 f0
	tsb $ea                  ; $fa4c: 04 ea
	jsr $0501                ; $fa4e: 20 01 05
loc_fa51:
	cop #$ea                 ; $fa51: 02 ea
	and ($20,x)              ; $fa53: 21 20
	sbc ($ea),y              ; $fa55: f1 ea
	jsr $0501                ; $fa57: 20 01 05
loc_fa5a:
	php                      ; $fa5a: 08
	nop                      ; $fa5b: ea
	and $50,s                ; $fa5c: 23 50
	mvp $ea,$21              ; $fa5e: 44 ea 21
	rol $26                  ; $fa61: 26 26
	nop                      ; $fa63: ea
	jsr $0105                ; $fa64: 20 05 01
loc_fa67:
	ora $02                  ; $fa67: 05 02
	nop                      ; $fa69: ea
	and ($20,x)              ; $fa6a: 21 20
	nop                      ; $fa6c: ea
	jsr $0501                ; $fa6d: 20 01 05
loc_fa70:
	cop #$ea                 ; $fa70: 02 ea
	and ($23,x)              ; $fa72: 21 23
	nop                      ; $fa74: ea
	and $26,s                ; $fa75: 23 26
	rol $f0                  ; $fa77: 26 f0
	tsb $ea                  ; $fa79: 04 ea
	jsr $ea02                ; $fa7b: 20 02 ea
loc_fa7e:
	and ($23,x)              ; $fa7e: 21 23
	nop                      ; $fa80: ea
	jsr $0205                ; $fa81: 20 05 02
loc_fa84:
	nop                      ; $fa84: ea
	and ($20,x)              ; $fa85: 21 20
	sbc ($ea),y              ; $fa87: f1 ea
	jsr $02f0                ; $fa89: 20 f0 02
loc_fa8c:
	cop #$ea                 ; $fa8c: 02 ea
	and ($23,x)              ; $fa8e: 21 23
	nop                      ; $fa90: ea
	jsr $f105                ; $fa91: 20 05 f1
loc_fa94:
	cop #$ea                 ; $fa94: 02 ea
	and ($26,x)              ; $fa96: 21 26
	rol $ea                  ; $fa98: 26 ea
	and $44,s                ; $fa9a: 23 44
	rol $ea                  ; $fa9c: 26 ea
	jsr $0200                ; $fa9e: 20 00 02
loc_faa1:
	wai                      ; $faa1: cb
	nop                      ; $faa2: ea
	and $26,s                ; $faa3: 23 26
	ora $ea                  ; $faa5: 05 ea
	jsr $0800                ; $faa7: 20 00 08
loc_faaa:
	nop                      ; $faaa: ea
	and ($26,x)              ; $faab: 21 26
	rol $ea                  ; $faad: 26 ea
sub_faaf:
	and $50,s                ; $faaf: 23 50
	mvp $ea,$24              ; $fab1: 44 ea 24
	inc $e600                ; $fab4: ee 00 e6
	beq $fabd                ; $fab7: f0 04
loc_fab9:
	stz $f1,x                ; $fab9: 74 f1
	phd                      ; $fabb: 0b
	brk #$f0                 ; $fabc: 00 f0

; === Block $f9a0-$f9a0 (Code) ===
sub_f9a0:
	brk #$11                 ; $f9a0: 00 11

; === Block $f9ae-$f9b6 (Code) ===
loc_f9ae:
	cmp [$06]                ; $f9ae: c7 06
	sbc ($d2),y              ; $f9b0: f1 d2
	sbc $ea80d4,x            ; $f9b2: ff d4 80 ea

; === Block $f9c8-$f9cb (Code) ===
loc_f9c8:
	ldy $eac7,x              ; $f9c8: bc c7 ea

; === Block $faac-$faaf (Code) ===
loc_faac:
	rol $26                  ; $faac: 26 26
	nop                      ; $faae: ea

; === Block $fabd-$fad6 (Code) ===
loc_fabd:
	beq $fac5                ; $fabd: f0 06
loc_fabf:
	cmp $f1,s                ; $fabf: c3 f1
	sep #$ea                 ; $fac1: e2 ea
	and #$d2                 ; $fac3: 29 d2
loc_fac5:
	iny                      ; $fac5: c8
	cpx $02                  ; $fac6: e4 02
	xba                      ; $fac8: eb
	ora $6901f0              ; $fac9: 0f f0 01 69
	ldy $4b,x                ; $facd: b4 4b
	ldy $f1,x                ; $facf: b4 f1
	cmp ($fa)                ; $fad1: d2 fa
	nop                      ; $fad3: ea
	bit $ee                  ; $fad4: 24 ee
	brk #$e4                 ; $fad6: 00 e4

; === Block $fb31-$fb33 (Code) ===
loc_fb31:
	ora $ee                  ; $fb31: 05 ee
	brk #$23                 ; $fb33: 00 23

; === Block $fb4a-$fb5a (Code) ===
sub_fb4a:
	bvc $fb31                ; $fb4a: 50 e5
loc_fb4c:
	sbc $00ee05              ; $fb4c: ef 05 ee 00
	and $ef,s                ; $fb50: 23 ef
	ora $f0                  ; $fb52: 05 f0
	ora ($f0,x)              ; $fb54: 01 f0
	cop #$05                 ; $fb56: 02 05
	ora $ee                  ; $fb58: 05 ee
	brk #$23                 ; $fb5a: 00 23

; === Block $fbbb-$fbc5 (Code) ===
loc_fbbb:
	inc $890a                ; $fbbb: ee 0a 89
	nop                      ; $fbbe: ea
	jsl $ed00eb              ; $fbbf: 22 eb 00 ed
loc_fbc3:
	ora [$ee]                ; $fbc3: 07 ee
	brk #$4b                 ; $fbc5: 00 4b

; === Block $fbf0-$fc11 (Code) ===
sub_fbf0:
	cmp ($50)                ; $fbf0: d2 50
	pei $80                  ; $fbf2: d4 80
	sep #$d7                 ; $fbf4: e2 d7
	bmi $fc0c                ; $fbf6: 30 14
loc_fbf8:
	cmp #$ea                 ; $fbf8: c9 ea
	rol $e4                  ; $fbfa: 26 e4
	tsb $69                  ; $fbfc: 04 69
	sta [$69]                ; $fbfe: 87 69
	sta [$fa]                ; $fc00: 87 fa
	sbc $d2fb,x              ; $fc02: fd fb d2
	bit $40d4,x              ; $fc05: 3c d4 40
	nop                      ; $fc08: ea
	rol $e2                  ; $fc09: 26 e2
	cpx $05                  ; $fc0b: e4 05
	cmp [$30],y              ; $fc0d: d7 30
	trb $c9                  ; $fc0f: 14 c9
	brk #$1e                 ; $fc11: 00 1e

; === Block $fc0c-$fc3f (Code) ===
loc_fc0c:
	ora $d7                  ; $fc0c: 05 d7
	bmi $fc24                ; $fc0e: 30 14
loc_fc10:
	cmp #$00                 ; $fc10: c9 00
	asl $1e00,x              ; $fc12: 1e 00 1e
	plx                      ; $fc15: fa
	ora ($fc),y              ; $fc16: 11 fc
	cmp ($32)                ; $fc18: d2 32
	pei $c0                  ; $fc1a: d4 c0
	nop                      ; $fc1c: ea
	rol $e2                  ; $fc1d: 26 e2
	cpx $05                  ; $fc1f: e4 05
	xba                      ; $fc21: eb
	phd                      ; $fc22: 0b
	cmp [$30],y              ; $fc23: d7 30
	trb $c9                  ; $fc25: 14 c9
	bit $3c5a,x              ; $fc27: 3c 5a 3c
	phy                      ; $fc2a: 5a
	plx                      ; $fc2b: fa
	and [$fc]                ; $fc2c: 27 fc
	cmp ($1e)                ; $fc2e: d2 1e
	pei $ff                  ; $fc30: d4 ff
	cmp $e207ea              ; $fc32: cf ea 07 e2
	cpx $05                  ; $fc36: e4 05
	xba                      ; $fc38: eb
	ora $ed00ec              ; $fc39: 0f ec 00 ed
	ora [$ee]                ; $fc3d: 07 ee
	brk #$f0                 ; $fc3f: 00 f0

; === Block $fc24-$fc2c (Code) ===
loc_fc24:
	bmi $fc3a                ; $fc24: 30 14
loc_fc26:
	cmp #$3c                 ; $fc26: c9 3c
	phy                      ; $fc28: 5a
	bit $fa5a,x              ; $fc29: 3c 5a fa

; === Block $fc3a-$fc3d (Code) ===
loc_fc3a:
	cpx $ed00                ; $fc3a: ec 00 ed

; === Block $fc8f-$fcc2 (Code) ===
sub_fc8f:
	beq $fc94                ; $fc8f: f0 03
loc_fc91:
	plp                      ; $fc91: 28
	inc $28                  ; $fc92: e6 28
loc_fc94:
	stz $91                  ; $fc94: 64 91
	sbc $f1                  ; $fc96: e5 f1
	beq $fc9d                ; $fc98: f0 03
loc_fc9a:
	asl                      ; $fc9a: 0a
	inc $0a                  ; $fc9b: e6 0a
loc_fc9d:
	lsr $73                  ; $fc9d: 46 73
	sbc $f1                  ; $fc9f: e5 f1
	beq $fca6                ; $fca1: f0 03
loc_fca3:
	plp                      ; $fca3: 28
	inc $28                  ; $fca4: e6 28
loc_fca6:
	stz $91                  ; $fca6: 64 91
	sbc $f1                  ; $fca8: e5 f1
	plx                      ; $fcaa: fa
	bra $fca9                ; $fcab: 80 fc
	cmp ($46)                ; $fcad: d2 46
	pei $00                  ; $fcaf: d4 00
	sep #$ea                 ; $fcb1: e2 ea
	rol $eb                  ; $fcb3: 26 eb
	tsb $03e4                ; $fcb5: 0c e4 03
	sbc #$fd                 ; $fcb8: e9 fd
	cpx $03                  ; $fcba: e4 03
	rtl                      ; $fcbc: 6b
	ldy $4408,x              ; $fcbd: bc 08 44
sub_fcc0:
	adc ($5e),y              ; $fcc0: 71 5e
	rti                      ; $fcc2: 40

; === Block $fca9-$fcab (Code) ===
loc_fca9:
	sbc ($fa),y              ; $fca9: f1 fa

; === Block $fd25-$10000 (Code) ===
sub_fd25:
	pei $80                  ; $fd25: d4 80
	nop                      ; $fd27: ea
	rol $e2                  ; $fd28: 26 e2
	cpx $04                  ; $fd2a: e4 04
	cmp $c3,s                ; $fd2c: c3 c3
	cmp $c3,s                ; $fd2e: c3 c3
	sbc ($ff)                ; $fd30: f2 ff
	sbc $ffffff,x            ; $fd32: ff ff ff ff
	sbc $ffffff,x            ; $fd36: ff ff ff ff
	sbc $ffffff,x            ; $fd3a: ff ff ff ff
	sbc $ffffff,x            ; $fd3e: ff ff ff ff
	sbc $ffffff,x            ; $fd42: ff ff ff ff
	sbc $ffffff,x            ; $fd46: ff ff ff ff
	sbc $ffffff,x            ; $fd4a: ff ff ff ff
	sbc $ffffff,x            ; $fd4e: ff ff ff ff
	sbc $ffffff,x            ; $fd52: ff ff ff ff
	sbc $ffffff,x            ; $fd56: ff ff ff ff
	sbc $ffffff,x            ; $fd5a: ff ff ff ff
	sbc $ffffff,x            ; $fd5e: ff ff ff ff
	sbc $ffffff,x            ; $fd62: ff ff ff ff
	sbc $ffffff,x            ; $fd66: ff ff ff ff
	sbc $ffffff,x            ; $fd6a: ff ff ff ff
	sbc $ffffff,x            ; $fd6e: ff ff ff ff
	sbc $ffffff,x            ; $fd72: ff ff ff ff
	sbc $ffffff,x            ; $fd76: ff ff ff ff
	sbc $ffffff,x            ; $fd7a: ff ff ff ff
	sbc $ffffff,x            ; $fd7e: ff ff ff ff
	sbc $ffffff,x            ; $fd82: ff ff ff ff
	sbc $ffffff,x            ; $fd86: ff ff ff ff
	sbc $ffffff,x            ; $fd8a: ff ff ff ff
	sbc $ffffff,x            ; $fd8e: ff ff ff ff
	sbc $ffffff,x            ; $fd92: ff ff ff ff
	sbc $ffffff,x            ; $fd96: ff ff ff ff
	sbc $ffffff,x            ; $fd9a: ff ff ff ff
	sbc $ffffff,x            ; $fd9e: ff ff ff ff
	sbc $ffffff,x            ; $fda2: ff ff ff ff
	sbc $ffffff,x            ; $fda6: ff ff ff ff
	sbc $ffffff,x            ; $fdaa: ff ff ff ff
	sbc $ffffff,x            ; $fdae: ff ff ff ff
	sbc $ffffff,x            ; $fdb2: ff ff ff ff
	sbc $ffffff,x            ; $fdb6: ff ff ff ff
	sbc $ffffff,x            ; $fdba: ff ff ff ff
	sbc $ffffff,x            ; $fdbe: ff ff ff ff
	sbc $ffffff,x            ; $fdc2: ff ff ff ff
	sbc $ffffff,x            ; $fdc6: ff ff ff ff
	sbc $ffffff,x            ; $fdca: ff ff ff ff
	sbc $ffffff,x            ; $fdce: ff ff ff ff
	sbc $ffffff,x            ; $fdd2: ff ff ff ff
	sbc $ffffff,x            ; $fdd6: ff ff ff ff
	sbc $ffffff,x            ; $fdda: ff ff ff ff
	sbc $ffffff,x            ; $fdde: ff ff ff ff
	sbc $ffffff,x            ; $fde2: ff ff ff ff
	sbc $ffffff,x            ; $fde6: ff ff ff ff
	sbc $ffffff,x            ; $fdea: ff ff ff ff
	sbc $ffffff,x            ; $fdee: ff ff ff ff
	sbc $ffffff,x            ; $fdf2: ff ff ff ff
	sbc $ffffff,x            ; $fdf6: ff ff ff ff
	sbc $ffffff,x            ; $fdfa: ff ff ff ff
	sbc $ffffff,x            ; $fdfe: ff ff ff ff
	sbc $ffffff,x            ; $fe02: ff ff ff ff
	sbc $ffffff,x            ; $fe06: ff ff ff ff
	sbc $ffffff,x            ; $fe0a: ff ff ff ff
	sbc $ffffff,x            ; $fe0e: ff ff ff ff
	sbc $ffffff,x            ; $fe12: ff ff ff ff
	sbc $ffffff,x            ; $fe16: ff ff ff ff
	sbc $ffffff,x            ; $fe1a: ff ff ff ff
	sbc $ffffff,x            ; $fe1e: ff ff ff ff
	sbc $ffffff,x            ; $fe22: ff ff ff ff
	sbc $ffffff,x            ; $fe26: ff ff ff ff
	sbc $ffffff,x            ; $fe2a: ff ff ff ff
	sbc $ffffff,x            ; $fe2e: ff ff ff ff
	sbc $ffffff,x            ; $fe32: ff ff ff ff
	sbc $ffffff,x            ; $fe36: ff ff ff ff
	sbc $ffffff,x            ; $fe3a: ff ff ff ff
	sbc $ffffff,x            ; $fe3e: ff ff ff ff
	sbc $ffffff,x            ; $fe42: ff ff ff ff
	sbc $ffffff,x            ; $fe46: ff ff ff ff
	sbc $ffffff,x            ; $fe4a: ff ff ff ff
	sbc $ffffff,x            ; $fe4e: ff ff ff ff
	sbc $ffffff,x            ; $fe52: ff ff ff ff
	sbc $ffffff,x            ; $fe56: ff ff ff ff
	sbc $ffffff,x            ; $fe5a: ff ff ff ff
	sbc $ffffff,x            ; $fe5e: ff ff ff ff
	sbc $ffffff,x            ; $fe62: ff ff ff ff
	sbc $ffffff,x            ; $fe66: ff ff ff ff
	sbc $ffffff,x            ; $fe6a: ff ff ff ff
	sbc $ffffff,x            ; $fe6e: ff ff ff ff
	sbc $ffffff,x            ; $fe72: ff ff ff ff
	sbc $ffffff,x            ; $fe76: ff ff ff ff
sub_fe7a:
	sbc $ffffff,x            ; $fe7a: ff ff ff ff
	sbc $ffffff,x            ; $fe7e: ff ff ff ff
	sbc $ffffff,x            ; $fe82: ff ff ff ff
	sbc $ffffff,x            ; $fe86: ff ff ff ff
	sbc $ffffff,x            ; $fe8a: ff ff ff ff
	sbc $ffffff,x            ; $fe8e: ff ff ff ff
	sbc $ffffff,x            ; $fe92: ff ff ff ff
	sbc $ffffff,x            ; $fe96: ff ff ff ff
	sbc $ffffff,x            ; $fe9a: ff ff ff ff
	sbc $ffffff,x            ; $fe9e: ff ff ff ff
	sbc $ffffff,x            ; $fea2: ff ff ff ff
	sbc $ffffff,x            ; $fea6: ff ff ff ff
	sbc $ffffff,x            ; $feaa: ff ff ff ff
	sbc $ffffff,x            ; $feae: ff ff ff ff
	sbc $ffffff,x            ; $feb2: ff ff ff ff
	sbc $ffffff,x            ; $feb6: ff ff ff ff
	sbc $ffffff,x            ; $feba: ff ff ff ff
	sbc $ffffff,x            ; $febe: ff ff ff ff
	sbc $ffffff,x            ; $fec2: ff ff ff ff
	sbc $ffffff,x            ; $fec6: ff ff ff ff
	sbc $ffffff,x            ; $feca: ff ff ff ff
	sbc $ffffff,x            ; $fece: ff ff ff ff
	sbc $ffffff,x            ; $fed2: ff ff ff ff
	sbc $ffffff,x            ; $fed6: ff ff ff ff
	sbc $ffffff,x            ; $feda: ff ff ff ff
	sbc $ffffff,x            ; $fede: ff ff ff ff
	sbc $ffffff,x            ; $fee2: ff ff ff ff
	sbc $ffffff,x            ; $fee6: ff ff ff ff
	sbc $ffffff,x            ; $feea: ff ff ff ff
	sbc $ffffff,x            ; $feee: ff ff ff ff
	sbc $ffffff,x            ; $fef2: ff ff ff ff
	sbc $ffffff,x            ; $fef6: ff ff ff ff
	sbc $ffffff,x            ; $fefa: ff ff ff ff
	sbc $ffffff,x            ; $fefe: ff ff ff ff
	sbc $ffffff,x            ; $ff02: ff ff ff ff
	sbc $ffffff,x            ; $ff06: ff ff ff ff
	sbc $ffffff,x            ; $ff0a: ff ff ff ff
	sbc $ffffff,x            ; $ff0e: ff ff ff ff
	sbc $ffffff,x            ; $ff12: ff ff ff ff
	sbc $ffffff,x            ; $ff16: ff ff ff ff
	sbc $ffffff,x            ; $ff1a: ff ff ff ff
	sbc $ffffff,x            ; $ff1e: ff ff ff ff
	sbc $ffffff,x            ; $ff22: ff ff ff ff
	sbc $ffffff,x            ; $ff26: ff ff ff ff
	sbc $ffffff,x            ; $ff2a: ff ff ff ff
	sbc $ffffff,x            ; $ff2e: ff ff ff ff
	sbc $ffffff,x            ; $ff32: ff ff ff ff
	sbc $ffffff,x            ; $ff36: ff ff ff ff
	sbc $ffffff,x            ; $ff3a: ff ff ff ff
	sbc $ffffff,x            ; $ff3e: ff ff ff ff
	sbc $ffffff,x            ; $ff42: ff ff ff ff
	sbc $ffffff,x            ; $ff46: ff ff ff ff
	sbc $ffffff,x            ; $ff4a: ff ff ff ff
	sbc $ffffff,x            ; $ff4e: ff ff ff ff
	sbc $ffffff,x            ; $ff52: ff ff ff ff
	sbc $ffffff,x            ; $ff56: ff ff ff ff
	sbc $ffffff,x            ; $ff5a: ff ff ff ff
	sbc $ffffff,x            ; $ff5e: ff ff ff ff
	sbc $ffffff,x            ; $ff62: ff ff ff ff
	sbc $ffffff,x            ; $ff66: ff ff ff ff
	sbc $ffffff,x            ; $ff6a: ff ff ff ff
	sbc $ffffff,x            ; $ff6e: ff ff ff ff
	sbc $ffffff,x            ; $ff72: ff ff ff ff
	sbc $ffffff,x            ; $ff76: ff ff ff ff
	sbc $ffffff,x            ; $ff7a: ff ff ff ff
	sbc $ffffff,x            ; $ff7e: ff ff ff ff
sub_ff82:
	sbc $ffffff,x            ; $ff82: ff ff ff ff
	sbc $ffffff,x            ; $ff86: ff ff ff ff
	sbc $ffffff,x            ; $ff8a: ff ff ff ff
	sbc $ffffff,x            ; $ff8e: ff ff ff ff
	sbc $ffffff,x            ; $ff92: ff ff ff ff
	sbc $ffffff,x            ; $ff96: ff ff ff ff
	sbc $ffffff,x            ; $ff9a: ff ff ff ff
	sbc $ffffff,x            ; $ff9e: ff ff ff ff
	sbc $ffffff,x            ; $ffa2: ff ff ff ff
	sbc $ffffff,x            ; $ffa6: ff ff ff ff
	sbc $ffffff,x            ; $ffaa: ff ff ff ff
	sbc $ffffff,x            ; $ffae: ff ff ff ff
	sbc $ffffff,x            ; $ffb2: ff ff ff ff
	sbc $ffffff,x            ; $ffb6: ff ff ff ff
	sbc $ffffff,x            ; $ffba: ff ff ff ff
	sbc $ffffff,x            ; $ffbe: ff ff ff ff
sub_ffc2:
	sbc $ffffff,x            ; $ffc2: ff ff ff ff
	sbc $ffffff,x            ; $ffc6: ff ff ff ff
	sbc $ffffff,x            ; $ffca: ff ff ff ff
	sbc $ffffff,x            ; $ffce: ff ff ff ff
	sbc $ffffff,x            ; $ffd2: ff ff ff ff
	sbc $ffffff,x            ; $ffd6: ff ff ff ff
	sbc $ffffff,x            ; $ffda: ff ff ff ff
	sbc $ffffff,x            ; $ffde: ff ff ff ff
	sbc $ffffff,x            ; $ffe2: ff ff ff ff
	sbc $ffffff,x            ; $ffe6: ff ff ff ff
	sbc $ffffff,x            ; $ffea: ff ff ff ff
	sbc $ffffff,x            ; $ffee: ff ff ff ff
	sbc $ffffff,x            ; $fff2: ff ff ff ff
	sbc $ffffff,x            ; $fff6: ff ff ff ff
	sbc $ffffff,x            ; $fffa: ff ff ff ff
	???                      ; $fffe: ff
	???                      ; $ffff: ff

; === Block $fd51-$fffe (Code) ===
sub_fd51:
	sbc $ffffff,x            ; $fd51: ff ff ff ff
	sbc $ffffff,x            ; $fd55: ff ff ff ff
	sbc $ffffff,x            ; $fd59: ff ff ff ff
	sbc $ffffff,x            ; $fd5d: ff ff ff ff
	sbc $ffffff,x            ; $fd61: ff ff ff ff
	sbc $ffffff,x            ; $fd65: ff ff ff ff
	sbc $ffffff,x            ; $fd69: ff ff ff ff
	sbc $ffffff,x            ; $fd6d: ff ff ff ff
	sbc $ffffff,x            ; $fd71: ff ff ff ff
	sbc $ffffff,x            ; $fd75: ff ff ff ff
	sbc $ffffff,x            ; $fd79: ff ff ff ff
	sbc $ffffff,x            ; $fd7d: ff ff ff ff
	sbc $ffffff,x            ; $fd81: ff ff ff ff
	sbc $ffffff,x            ; $fd85: ff ff ff ff
	sbc $ffffff,x            ; $fd89: ff ff ff ff
	sbc $ffffff,x            ; $fd8d: ff ff ff ff
	sbc $ffffff,x            ; $fd91: ff ff ff ff
	sbc $ffffff,x            ; $fd95: ff ff ff ff
	sbc $ffffff,x            ; $fd99: ff ff ff ff
	sbc $ffffff,x            ; $fd9d: ff ff ff ff
	sbc $ffffff,x            ; $fda1: ff ff ff ff
	sbc $ffffff,x            ; $fda5: ff ff ff ff
	sbc $ffffff,x            ; $fda9: ff ff ff ff
	sbc $ffffff,x            ; $fdad: ff ff ff ff
	sbc $ffffff,x            ; $fdb1: ff ff ff ff
	sbc $ffffff,x            ; $fdb5: ff ff ff ff
	sbc $ffffff,x            ; $fdb9: ff ff ff ff
	sbc $ffffff,x            ; $fdbd: ff ff ff ff
	sbc $ffffff,x            ; $fdc1: ff ff ff ff
	sbc $ffffff,x            ; $fdc5: ff ff ff ff
	sbc $ffffff,x            ; $fdc9: ff ff ff ff
	sbc $ffffff,x            ; $fdcd: ff ff ff ff
	sbc $ffffff,x            ; $fdd1: ff ff ff ff
	sbc $ffffff,x            ; $fdd5: ff ff ff ff
	sbc $ffffff,x            ; $fdd9: ff ff ff ff
	sbc $ffffff,x            ; $fddd: ff ff ff ff
	sbc $ffffff,x            ; $fde1: ff ff ff ff
	sbc $ffffff,x            ; $fde5: ff ff ff ff
	sbc $ffffff,x            ; $fde9: ff ff ff ff
	sbc $ffffff,x            ; $fded: ff ff ff ff
	sbc $ffffff,x            ; $fdf1: ff ff ff ff
	sbc $ffffff,x            ; $fdf5: ff ff ff ff
	sbc $ffffff,x            ; $fdf9: ff ff ff ff
	sbc $ffffff,x            ; $fdfd: ff ff ff ff
	sbc $ffffff,x            ; $fe01: ff ff ff ff
	sbc $ffffff,x            ; $fe05: ff ff ff ff
	sbc $ffffff,x            ; $fe09: ff ff ff ff
	sbc $ffffff,x            ; $fe0d: ff ff ff ff
	sbc $ffffff,x            ; $fe11: ff ff ff ff
	sbc $ffffff,x            ; $fe15: ff ff ff ff
	sbc $ffffff,x            ; $fe19: ff ff ff ff
	sbc $ffffff,x            ; $fe1d: ff ff ff ff
	sbc $ffffff,x            ; $fe21: ff ff ff ff
	sbc $ffffff,x            ; $fe25: ff ff ff ff
	sbc $ffffff,x            ; $fe29: ff ff ff ff
	sbc $ffffff,x            ; $fe2d: ff ff ff ff
	sbc $ffffff,x            ; $fe31: ff ff ff ff
	sbc $ffffff,x            ; $fe35: ff ff ff ff
	sbc $ffffff,x            ; $fe39: ff ff ff ff
	sbc $ffffff,x            ; $fe3d: ff ff ff ff
	sbc $ffffff,x            ; $fe41: ff ff ff ff
	sbc $ffffff,x            ; $fe45: ff ff ff ff
	sbc $ffffff,x            ; $fe49: ff ff ff ff
	sbc $ffffff,x            ; $fe4d: ff ff ff ff
	sbc $ffffff,x            ; $fe51: ff ff ff ff
	sbc $ffffff,x            ; $fe55: ff ff ff ff
	sbc $ffffff,x            ; $fe59: ff ff ff ff
	sbc $ffffff,x            ; $fe5d: ff ff ff ff
	sbc $ffffff,x            ; $fe61: ff ff ff ff
	sbc $ffffff,x            ; $fe65: ff ff ff ff
	sbc $ffffff,x            ; $fe69: ff ff ff ff
	sbc $ffffff,x            ; $fe6d: ff ff ff ff
	sbc $ffffff,x            ; $fe71: ff ff ff ff
	sbc $ffffff,x            ; $fe75: ff ff ff ff
	sbc $ffffff,x            ; $fe79: ff ff ff ff
	sbc $ffffff,x            ; $fe7d: ff ff ff ff
	sbc $ffffff,x            ; $fe81: ff ff ff ff
	sbc $ffffff,x            ; $fe85: ff ff ff ff
sub_fe89:
	sbc $ffffff,x            ; $fe89: ff ff ff ff
sub_fe8d:
	sbc $ffffff,x            ; $fe8d: ff ff ff ff
	sbc $ffffff,x            ; $fe91: ff ff ff ff
	sbc $ffffff,x            ; $fe95: ff ff ff ff
	sbc $ffffff,x            ; $fe99: ff ff ff ff
	sbc $ffffff,x            ; $fe9d: ff ff ff ff
	sbc $ffffff,x            ; $fea1: ff ff ff ff
	sbc $ffffff,x            ; $fea5: ff ff ff ff
	sbc $ffffff,x            ; $fea9: ff ff ff ff
	sbc $ffffff,x            ; $fead: ff ff ff ff
	sbc $ffffff,x            ; $feb1: ff ff ff ff
	sbc $ffffff,x            ; $feb5: ff ff ff ff
	sbc $ffffff,x            ; $feb9: ff ff ff ff
	sbc $ffffff,x            ; $febd: ff ff ff ff
	sbc $ffffff,x            ; $fec1: ff ff ff ff
	sbc $ffffff,x            ; $fec5: ff ff ff ff
	sbc $ffffff,x            ; $fec9: ff ff ff ff
	sbc $ffffff,x            ; $fecd: ff ff ff ff
	sbc $ffffff,x            ; $fed1: ff ff ff ff
sub_fed5:
	sbc $ffffff,x            ; $fed5: ff ff ff ff
	sbc $ffffff,x            ; $fed9: ff ff ff ff
	sbc $ffffff,x            ; $fedd: ff ff ff ff
	sbc $ffffff,x            ; $fee1: ff ff ff ff
	sbc $ffffff,x            ; $fee5: ff ff ff ff
	sbc $ffffff,x            ; $fee9: ff ff ff ff
	sbc $ffffff,x            ; $feed: ff ff ff ff
	sbc $ffffff,x            ; $fef1: ff ff ff ff
	sbc $ffffff,x            ; $fef5: ff ff ff ff
	sbc $ffffff,x            ; $fef9: ff ff ff ff
	sbc $ffffff,x            ; $fefd: ff ff ff ff
	sbc $ffffff,x            ; $ff01: ff ff ff ff
	sbc $ffffff,x            ; $ff05: ff ff ff ff
	sbc $ffffff,x            ; $ff09: ff ff ff ff
	sbc $ffffff,x            ; $ff0d: ff ff ff ff
	sbc $ffffff,x            ; $ff11: ff ff ff ff
	sbc $ffffff,x            ; $ff15: ff ff ff ff
	sbc $ffffff,x            ; $ff19: ff ff ff ff
	sbc $ffffff,x            ; $ff1d: ff ff ff ff
	sbc $ffffff,x            ; $ff21: ff ff ff ff
	sbc $ffffff,x            ; $ff25: ff ff ff ff
	sbc $ffffff,x            ; $ff29: ff ff ff ff
	sbc $ffffff,x            ; $ff2d: ff ff ff ff
	sbc $ffffff,x            ; $ff31: ff ff ff ff
	sbc $ffffff,x            ; $ff35: ff ff ff ff
	sbc $ffffff,x            ; $ff39: ff ff ff ff
	sbc $ffffff,x            ; $ff3d: ff ff ff ff
	sbc $ffffff,x            ; $ff41: ff ff ff ff
	sbc $ffffff,x            ; $ff45: ff ff ff ff
	sbc $ffffff,x            ; $ff49: ff ff ff ff
sub_ff4d:
	sbc $ffffff,x            ; $ff4d: ff ff ff ff
	sbc $ffffff,x            ; $ff51: ff ff ff ff
	sbc $ffffff,x            ; $ff55: ff ff ff ff
	sbc $ffffff,x            ; $ff59: ff ff ff ff
	sbc $ffffff,x            ; $ff5d: ff ff ff ff
	sbc $ffffff,x            ; $ff61: ff ff ff ff
	sbc $ffffff,x            ; $ff65: ff ff ff ff
	sbc $ffffff,x            ; $ff69: ff ff ff ff
	sbc $ffffff,x            ; $ff6d: ff ff ff ff
	sbc $ffffff,x            ; $ff71: ff ff ff ff
	sbc $ffffff,x            ; $ff75: ff ff ff ff
	sbc $ffffff,x            ; $ff79: ff ff ff ff
	sbc $ffffff,x            ; $ff7d: ff ff ff ff
	sbc $ffffff,x            ; $ff81: ff ff ff ff
	sbc $ffffff,x            ; $ff85: ff ff ff ff
	sbc $ffffff,x            ; $ff89: ff ff ff ff
	sbc $ffffff,x            ; $ff8d: ff ff ff ff
	sbc $ffffff,x            ; $ff91: ff ff ff ff
	sbc $ffffff,x            ; $ff95: ff ff ff ff
	sbc $ffffff,x            ; $ff99: ff ff ff ff
	sbc $ffffff,x            ; $ff9d: ff ff ff ff
	sbc $ffffff,x            ; $ffa1: ff ff ff ff
	sbc $ffffff,x            ; $ffa5: ff ff ff ff
	sbc $ffffff,x            ; $ffa9: ff ff ff ff
	sbc $ffffff,x            ; $ffad: ff ff ff ff
	sbc $ffffff,x            ; $ffb1: ff ff ff ff
	sbc $ffffff,x            ; $ffb5: ff ff ff ff
	sbc $ffffff,x            ; $ffb9: ff ff ff ff
	sbc $ffffff,x            ; $ffbd: ff ff ff ff
	sbc $ffffff,x            ; $ffc1: ff ff ff ff
	sbc $ffffff,x            ; $ffc5: ff ff ff ff
	sbc $ffffff,x            ; $ffc9: ff ff ff ff
	sbc $ffffff,x            ; $ffcd: ff ff ff ff
	sbc $ffffff,x            ; $ffd1: ff ff ff ff
	sbc $ffffff,x            ; $ffd5: ff ff ff ff
	sbc $ffffff,x            ; $ffd9: ff ff ff ff
	sbc $ffffff,x            ; $ffdd: ff ff ff ff
	sbc $ffffff,x            ; $ffe1: ff ff ff ff
	sbc $ffffff,x            ; $ffe5: ff ff ff ff
	sbc $ffffff,x            ; $ffe9: ff ff ff ff
	sbc $ffffff,x            ; $ffed: ff ff ff ff
	sbc $ffffff,x            ; $fff1: ff ff ff ff
	sbc $ffffff,x            ; $fff5: ff ff ff ff
	sbc $ffffff,x            ; $fff9: ff ff ff ff
	???                      ; $fffd: ff

; === Block $fd7c-$10000 (Code) ===
sub_fd7c:
	sbc $ffffff,x            ; $fd7c: ff ff ff ff
	sbc $ffffff,x            ; $fd80: ff ff ff ff
	sbc $ffffff,x            ; $fd84: ff ff ff ff
	sbc $ffffff,x            ; $fd88: ff ff ff ff
	sbc $ffffff,x            ; $fd8c: ff ff ff ff
	sbc $ffffff,x            ; $fd90: ff ff ff ff
	sbc $ffffff,x            ; $fd94: ff ff ff ff
	sbc $ffffff,x            ; $fd98: ff ff ff ff
	sbc $ffffff,x            ; $fd9c: ff ff ff ff
	sbc $ffffff,x            ; $fda0: ff ff ff ff
	sbc $ffffff,x            ; $fda4: ff ff ff ff
	sbc $ffffff,x            ; $fda8: ff ff ff ff
	sbc $ffffff,x            ; $fdac: ff ff ff ff
	sbc $ffffff,x            ; $fdb0: ff ff ff ff
	sbc $ffffff,x            ; $fdb4: ff ff ff ff
	sbc $ffffff,x            ; $fdb8: ff ff ff ff
	sbc $ffffff,x            ; $fdbc: ff ff ff ff
	sbc $ffffff,x            ; $fdc0: ff ff ff ff
	sbc $ffffff,x            ; $fdc4: ff ff ff ff
	sbc $ffffff,x            ; $fdc8: ff ff ff ff
	sbc $ffffff,x            ; $fdcc: ff ff ff ff
	sbc $ffffff,x            ; $fdd0: ff ff ff ff
	sbc $ffffff,x            ; $fdd4: ff ff ff ff
	sbc $ffffff,x            ; $fdd8: ff ff ff ff
	sbc $ffffff,x            ; $fddc: ff ff ff ff
	sbc $ffffff,x            ; $fde0: ff ff ff ff
	sbc $ffffff,x            ; $fde4: ff ff ff ff
	sbc $ffffff,x            ; $fde8: ff ff ff ff
	sbc $ffffff,x            ; $fdec: ff ff ff ff
	sbc $ffffff,x            ; $fdf0: ff ff ff ff
	sbc $ffffff,x            ; $fdf4: ff ff ff ff
	sbc $ffffff,x            ; $fdf8: ff ff ff ff
	sbc $ffffff,x            ; $fdfc: ff ff ff ff
	sbc $ffffff,x            ; $fe00: ff ff ff ff
	sbc $ffffff,x            ; $fe04: ff ff ff ff
	sbc $ffffff,x            ; $fe08: ff ff ff ff
sub_fe0c:
	sbc $ffffff,x            ; $fe0c: ff ff ff ff
	sbc $ffffff,x            ; $fe10: ff ff ff ff
	sbc $ffffff,x            ; $fe14: ff ff ff ff
	sbc $ffffff,x            ; $fe18: ff ff ff ff
	sbc $ffffff,x            ; $fe1c: ff ff ff ff
	sbc $ffffff,x            ; $fe20: ff ff ff ff
	sbc $ffffff,x            ; $fe24: ff ff ff ff
	sbc $ffffff,x            ; $fe28: ff ff ff ff
	sbc $ffffff,x            ; $fe2c: ff ff ff ff
	sbc $ffffff,x            ; $fe30: ff ff ff ff
	sbc $ffffff,x            ; $fe34: ff ff ff ff
	sbc $ffffff,x            ; $fe38: ff ff ff ff
	sbc $ffffff,x            ; $fe3c: ff ff ff ff
	sbc $ffffff,x            ; $fe40: ff ff ff ff
	sbc $ffffff,x            ; $fe44: ff ff ff ff
	sbc $ffffff,x            ; $fe48: ff ff ff ff
	sbc $ffffff,x            ; $fe4c: ff ff ff ff
	sbc $ffffff,x            ; $fe50: ff ff ff ff
	sbc $ffffff,x            ; $fe54: ff ff ff ff
	sbc $ffffff,x            ; $fe58: ff ff ff ff
	sbc $ffffff,x            ; $fe5c: ff ff ff ff
	sbc $ffffff,x            ; $fe60: ff ff ff ff
	sbc $ffffff,x            ; $fe64: ff ff ff ff
	sbc $ffffff,x            ; $fe68: ff ff ff ff
sub_fe6c:
	sbc $ffffff,x            ; $fe6c: ff ff ff ff
	sbc $ffffff,x            ; $fe70: ff ff ff ff
	sbc $ffffff,x            ; $fe74: ff ff ff ff
	sbc $ffffff,x            ; $fe78: ff ff ff ff
	sbc $ffffff,x            ; $fe7c: ff ff ff ff
	sbc $ffffff,x            ; $fe80: ff ff ff ff
	sbc $ffffff,x            ; $fe84: ff ff ff ff
	sbc $ffffff,x            ; $fe88: ff ff ff ff
	sbc $ffffff,x            ; $fe8c: ff ff ff ff
	sbc $ffffff,x            ; $fe90: ff ff ff ff
	sbc $ffffff,x            ; $fe94: ff ff ff ff
	sbc $ffffff,x            ; $fe98: ff ff ff ff
	sbc $ffffff,x            ; $fe9c: ff ff ff ff
	sbc $ffffff,x            ; $fea0: ff ff ff ff
	sbc $ffffff,x            ; $fea4: ff ff ff ff
	sbc $ffffff,x            ; $fea8: ff ff ff ff
	sbc $ffffff,x            ; $feac: ff ff ff ff
	sbc $ffffff,x            ; $feb0: ff ff ff ff
	sbc $ffffff,x            ; $feb4: ff ff ff ff
	sbc $ffffff,x            ; $feb8: ff ff ff ff
	sbc $ffffff,x            ; $febc: ff ff ff ff
	sbc $ffffff,x            ; $fec0: ff ff ff ff
	sbc $ffffff,x            ; $fec4: ff ff ff ff
	sbc $ffffff,x            ; $fec8: ff ff ff ff
	sbc $ffffff,x            ; $fecc: ff ff ff ff
	sbc $ffffff,x            ; $fed0: ff ff ff ff
	sbc $ffffff,x            ; $fed4: ff ff ff ff
	sbc $ffffff,x            ; $fed8: ff ff ff ff
	sbc $ffffff,x            ; $fedc: ff ff ff ff
	sbc $ffffff,x            ; $fee0: ff ff ff ff
	sbc $ffffff,x            ; $fee4: ff ff ff ff
	sbc $ffffff,x            ; $fee8: ff ff ff ff
	sbc $ffffff,x            ; $feec: ff ff ff ff
	sbc $ffffff,x            ; $fef0: ff ff ff ff
	sbc $ffffff,x            ; $fef4: ff ff ff ff
	sbc $ffffff,x            ; $fef8: ff ff ff ff
	sbc $ffffff,x            ; $fefc: ff ff ff ff
	sbc $ffffff,x            ; $ff00: ff ff ff ff
	sbc $ffffff,x            ; $ff04: ff ff ff ff
	sbc $ffffff,x            ; $ff08: ff ff ff ff
	sbc $ffffff,x            ; $ff0c: ff ff ff ff
	sbc $ffffff,x            ; $ff10: ff ff ff ff
	sbc $ffffff,x            ; $ff14: ff ff ff ff
	sbc $ffffff,x            ; $ff18: ff ff ff ff
	sbc $ffffff,x            ; $ff1c: ff ff ff ff
	sbc $ffffff,x            ; $ff20: ff ff ff ff
	sbc $ffffff,x            ; $ff24: ff ff ff ff
	sbc $ffffff,x            ; $ff28: ff ff ff ff
	sbc $ffffff,x            ; $ff2c: ff ff ff ff
	sbc $ffffff,x            ; $ff30: ff ff ff ff
	sbc $ffffff,x            ; $ff34: ff ff ff ff
	sbc $ffffff,x            ; $ff38: ff ff ff ff
	sbc $ffffff,x            ; $ff3c: ff ff ff ff
	sbc $ffffff,x            ; $ff40: ff ff ff ff
	sbc $ffffff,x            ; $ff44: ff ff ff ff
	sbc $ffffff,x            ; $ff48: ff ff ff ff
	sbc $ffffff,x            ; $ff4c: ff ff ff ff
	sbc $ffffff,x            ; $ff50: ff ff ff ff
	sbc $ffffff,x            ; $ff54: ff ff ff ff
	sbc $ffffff,x            ; $ff58: ff ff ff ff
	sbc $ffffff,x            ; $ff5c: ff ff ff ff
	sbc $ffffff,x            ; $ff60: ff ff ff ff
	sbc $ffffff,x            ; $ff64: ff ff ff ff
	sbc $ffffff,x            ; $ff68: ff ff ff ff
	sbc $ffffff,x            ; $ff6c: ff ff ff ff
	sbc $ffffff,x            ; $ff70: ff ff ff ff
	sbc $ffffff,x            ; $ff74: ff ff ff ff
	sbc $ffffff,x            ; $ff78: ff ff ff ff
	sbc $ffffff,x            ; $ff7c: ff ff ff ff
	sbc $ffffff,x            ; $ff80: ff ff ff ff
	sbc $ffffff,x            ; $ff84: ff ff ff ff
	sbc $ffffff,x            ; $ff88: ff ff ff ff
	sbc $ffffff,x            ; $ff8c: ff ff ff ff
	sbc $ffffff,x            ; $ff90: ff ff ff ff
	sbc $ffffff,x            ; $ff94: ff ff ff ff
	sbc $ffffff,x            ; $ff98: ff ff ff ff
	sbc $ffffff,x            ; $ff9c: ff ff ff ff
	sbc $ffffff,x            ; $ffa0: ff ff ff ff
	sbc $ffffff,x            ; $ffa4: ff ff ff ff
	sbc $ffffff,x            ; $ffa8: ff ff ff ff
sub_ffac:
	sbc $ffffff,x            ; $ffac: ff ff ff ff
	sbc $ffffff,x            ; $ffb0: ff ff ff ff
	sbc $ffffff,x            ; $ffb4: ff ff ff ff
	sbc $ffffff,x            ; $ffb8: ff ff ff ff
	sbc $ffffff,x            ; $ffbc: ff ff ff ff
	sbc $ffffff,x            ; $ffc0: ff ff ff ff
	sbc $ffffff,x            ; $ffc4: ff ff ff ff
	sbc $ffffff,x            ; $ffc8: ff ff ff ff
	sbc $ffffff,x            ; $ffcc: ff ff ff ff
	sbc $ffffff,x            ; $ffd0: ff ff ff ff
	sbc $ffffff,x            ; $ffd4: ff ff ff ff
	sbc $ffffff,x            ; $ffd8: ff ff ff ff
	sbc $ffffff,x            ; $ffdc: ff ff ff ff
	sbc $ffffff,x            ; $ffe0: ff ff ff ff
	sbc $ffffff,x            ; $ffe4: ff ff ff ff
	sbc $ffffff,x            ; $ffe8: ff ff ff ff
	sbc $ffffff,x            ; $ffec: ff ff ff ff
	sbc $ffffff,x            ; $fff0: ff ff ff ff
	sbc $ffffff,x            ; $fff4: ff ff ff ff
	sbc $ffffff,x            ; $fff8: ff ff ff ff
	sbc $ffffff,x            ; $fffc: ff ff ff ff

; === Block $39030-$39035 (Code) ===
sub_39030:
	ora #$ff                 ; $39030: 09 ff
	ora $0890,y              ; $39032: 19 90 08

; === Block $3906d-$3907c (Code) ===
loc_3906d:
	bpl $3907a               ; $3906d: 10 0b
loc_3906f:
	sbc $0f9034,x            ; $3906f: ff 34 90 0f
loc_39073:
	eor $470501,x            ; $39073: 5f 01 05 47
	ora $2d,s                ; $39077: 03 2d
loc_39079:
	clv                      ; $39079: b8
loc_3907a:
	bpl $39081               ; $3907a: 10 05

; === Block $3908f-$390a2 (Code) ===
loc_3908f:
	sty $0f8e                ; $3908f: 8c 8e 0f
	ora ($00,x)              ; $39092: 01 00
	phd                      ; $39094: 0b
	tsb $4e                  ; $39095: 04 4e
	sta ($05),y              ; $39097: 91 05
	eor $1320                ; $39099: 4d 20 13
	clc                      ; $3909c: 18
	ora ($20),y              ; $3909d: 11 20
	tsb $020f                ; $3909f: 0c 0f 02
	brk #$05                 ; $390a2: 00 05

; === Block $390c5-$39127 (Code) ===
sub_390c5:
	bcc $390cf               ; $390c5: 90 08
	ora ($91,x)              ; $390c7: 01 91
	ora $8f                  ; $390c9: 05 8f
	jml [$0590]              ; $390cb: dc 90 05
	adc $148e05,x            ; $390ce: 7f 05 8e 14
	sta ($05),y              ; $390d2: 91 05
	adc $148e05,x            ; $390d4: 7f 05 8e 14
	sta ($0a),y              ; $390d8: 91 0a
	bmi $3906d               ; $390da: 30 91
	ora $7f                  ; $390dc: 05 7f
	ora $8f                  ; $390de: 05 8f
	bmi $39073               ; $390e0: 30 91
	ora $7f                  ; $390e2: 05 7f
	ora $8f                  ; $390e4: 05 8f
	bmi $39079               ; $390e6: 30 91
	asl                      ; $390e8: 0a
	trb $91                  ; $390e9: 14 91
	php                      ; $390eb: 08
	ora ($91,x)              ; $390ec: 01 91
	ora $8e                  ; $390ee: 05 8e
	trb $91                  ; $390f0: 14 91
	ora $7f                  ; $390f2: 05 7f
	ora $8e                  ; $390f4: 05 8e
	trb $91                  ; $390f6: 14 91
	ora $7f                  ; $390f8: 05 7f
	ora $8f                  ; $390fa: 05 8f
	bmi $3908f               ; $390fc: 30 91
	asl                      ; $390fe: 0a
	trb $91                  ; $390ff: 14 91
	ora $050001              ; $39101: 0f 01 00 05
	eor $10,s                ; $39105: 43 10
	sta ($03),y              ; $39107: 91 03
	ora $2c                  ; $39109: 05 2c
	stz $1400,x              ; $3910b: 9e 00 14
	sbc $050200,x            ; $3910e: ff 00 02 05
	tsb $1310                ; $39112: 0c 10 13
	and $005e11              ; $39115: 2f 11 5e 00
	php                      ; $39119: 08
	sta $83,s                ; $3911a: 83 83
	and $10                  ; $3911c: 25 10
	ora $03,x                ; $3911e: 15 03
	ora $19                  ; $39120: 05 19
	php                      ; $39122: 08
	ora $9b,s                ; $39123: 03 9b
	ora $8d                  ; $39125: 05 8d
	brk #$05                 ; $39127: 00 05

; === Block $390c7-$390da (Code) ===
loc_390c7:
	ora ($91,x)              ; $390c7: 01 91
	ora $8f                  ; $390c9: 05 8f
	jml [$0590]              ; $390cb: dc 90 05
	adc $148e05,x            ; $390ce: 7f 05 8e 14
	sta ($05),y              ; $390d2: 91 05
	adc $148e05,x            ; $390d4: 7f 05 8e 14
	sta ($0a),y              ; $390d8: 91 0a

; === Block $390cf-$39127 (Code) ===
loc_390cf:
	ora $8e                  ; $390cf: 05 8e
	trb $91                  ; $390d1: 14 91
	ora $7f                  ; $390d3: 05 7f
	ora $8e                  ; $390d5: 05 8e
	trb $91                  ; $390d7: 14 91
	asl                      ; $390d9: 0a
	bmi $3906d               ; $390da: 30 91
loc_390dc:
	ora $7f                  ; $390dc: 05 7f
	ora $8f                  ; $390de: 05 8f
	bmi $39073               ; $390e0: 30 91
loc_390e2:
	ora $7f                  ; $390e2: 05 7f
	ora $8f                  ; $390e4: 05 8f
	bmi $39079               ; $390e6: 30 91
loc_390e8:
	asl                      ; $390e8: 0a
	trb $91                  ; $390e9: 14 91
	php                      ; $390eb: 08
	ora ($91,x)              ; $390ec: 01 91
	ora $8e                  ; $390ee: 05 8e
	trb $91                  ; $390f0: 14 91
	ora $7f                  ; $390f2: 05 7f
	ora $8e                  ; $390f4: 05 8e
	trb $91                  ; $390f6: 14 91
	ora $7f                  ; $390f8: 05 7f
	ora $8f                  ; $390fa: 05 8f
	bmi $3908f               ; $390fc: 30 91
loc_390fe:
	asl                      ; $390fe: 0a
	trb $91                  ; $390ff: 14 91
	ora $050001              ; $39101: 0f 01 00 05
	eor $10,s                ; $39105: 43 10
	sta ($03),y              ; $39107: 91 03
	ora $2c                  ; $39109: 05 2c
	stz $1400,x              ; $3910b: 9e 00 14
	sbc $050200,x            ; $3910e: ff 00 02 05
	tsb $1310                ; $39112: 0c 10 13
	and $005e11              ; $39115: 2f 11 5e 00
	php                      ; $39119: 08
	sta $83,s                ; $3911a: 83 83
	and $10                  ; $3911c: 25 10
	ora $03,x                ; $3911e: 15 03
	ora $19                  ; $39120: 05 19
	php                      ; $39122: 08
	ora $9b,s                ; $39123: 03 9b
	ora $8d                  ; $39125: 05 8d
	brk #$05                 ; $39127: 00 05

; === Block $3912a-$39146 (Code) ===
sub_3912a:
	cpy $039a                ; $3912a: cc 9a 03
	asl                      ; $3912d: 0a
	and $91,x                ; $3912e: 35 91
	ora $3d                  ; $39130: 05 3d
	ora $9b,s                ; $39132: 03 9b
	ora $08,s                ; $39134: 03 08
	rol $a4                  ; $39136: 26 a4
	ora $03,x                ; $39138: 15 03
	ora $0c                  ; $3913a: 05 0c
	lsr $ff00,x              ; $3913c: 5e 00 ff
	and $10                  ; $3913f: 25 10
	ora $1105,y              ; $39141: 19 05 11
	ora $8d                  ; $39144: 05 8d
	brk #$0c                 ; $39146: 00 0c

; === Block $391c9-$391d7 (Code) ===
sub_391c9:
	adc [$05],y              ; $391c9: 77 05
	and [$13],y              ; $391cb: 37 13
	ora [$0a],y              ; $391cd: 17 0a
	trb $91                  ; $391cf: 14 91
	ora $1410b6              ; $391d1: 0f b6 10 14
	ora $0b,s                ; $391d5: 03 0b
	brk #$30                 ; $391d7: 00 30

; === Block $58000-$58000 (Code) ===
sub_58000:
	brk #$00                 ; $58000: 00 00

; === Block $580d9-$580de (Code) ===
sub_580d9:
	phy                      ; $580d9: 5a
	dec $51                  ; $580da: c6 51
	pld                      ; $580dc: 2b
	phy                      ; $580dd: 5a
	rti                      ; $580de: 40

; === Block $58149-$58151 (Code) ===
sub_58149:
	ply                      ; $58149: 7a
	cpy $69                  ; $5814a: c4 69
	per $5aaac               ; $5814c: 62 5d 29
	and $00                  ; $5814f: 25 00
	brk #$26                 ; $58151: 00 26

; === Block $583b8-$583be (Code) ===
sub_583b8:
	and $088a1d              ; $583b8: 2f 1d 8a 08
	and [$00]                ; $583bc: 27 00
	brk #$00                 ; $583be: 00 00

; === Block $583f2-$583fe (Code) ===
sub_583f2:
	cmp ($41),y              ; $583f2: d1 41
	cmp ($39)                ; $583f4: d2 39
	adc $1d0c2d              ; $583f6: 6f 2d 0c 1d
	inx                      ; $583fa: e8
	jsr $1ca6                ; $583fb: 20 a6 1c
	brk #$00                 ; $583fe: 00 00

; === Block $583fe-$583fe (Code) ===
loc_583fe:
	brk #$00                 ; $583fe: 00 00

; === Block $5841d-$58423 (Code) ===
sub_5841d:
	and $4c,x                ; $5841d: 35 4c
	and ($40,x)              ; $5841f: 21 40
	trb $00                  ; $58421: 14 00
	brk #$34                 ; $58423: 00 34

; === Block $58560-$58560 (Code) ===
sub_58560:
	brk #$00                 ; $58560: 00 00

; === Block $5857a-$58581 (Code) ===
sub_5857a:
	inc $34                  ; $5857a: e6 34
	ldy $2c                  ; $5857c: a4 2c
	per $585a1               ; $5857e: 62 20 00
	brk #$5a                 ; $58581: 00 5a

; === Block $585bf-$585bf (Code) ===
sub_585bf:
	brk #$00                 ; $585bf: 00 00

; === Block $5862e-$58630 (Code) ===
sub_5862e:
	rol $17                  ; $5862e: 26 17
	brk #$00                 ; $58630: 00 00

; === Block $58633-$5863f (Code) ===
sub_58633:
	and $1cee,y              ; $58633: 39 ee 1c
	dex                      ; $58636: ca
	jsr $20a4                ; $58637: 20 a4 20
	per $5a655               ; $5863a: 62 18 20
	bpl $5863f               ; $5863d: 10 00
	brk #$00                 ; $5863f: 00 00

; === Block $58634-$58637 (Code) ===
sub_58634:
	inc $ca1c                ; $58634: ee 1c ca

; === Block $5863a-$5863f (Code) ===
loc_5863a:
	per $5a655               ; $5863a: 62 18 20
	bpl $5863f               ; $5863d: 10 00
loc_5863f:
	brk #$00                 ; $5863f: 00 00

; === Block $58669-$58680 (Code) ===
sub_58669:
	jsr $20c5                ; $58669: 20 c5 20
	eor ($14,x)              ; $5866c: 41 14
	eor $000001,x            ; $5866e: 5f 01 00 00
	sbc [$1c]                ; $58672: e7 1c
	adc $22df2f,x            ; $58674: 7f 2f df 22
	eor $0ddf16,x            ; $58678: 5f 16 df 0d
	eor $00f601,x            ; $5867c: 5f 01 f6 00
	brk #$00                 ; $58680: 00 00

; === Block $5866c-$58680 (Code) ===
loc_5866c:
	eor ($14,x)              ; $5866c: 41 14
	eor $000001,x            ; $5866e: 5f 01 00 00
	sbc [$1c]                ; $58672: e7 1c
	adc $22df2f,x            ; $58674: 7f 2f df 22
	eor $0ddf16,x            ; $58678: 5f 16 df 0d
	eor $00f601,x            ; $5867c: 5f 01 f6 00
	brk #$00                 ; $58680: 00 00

; === Block $586ea-$586f0 (Code) ===
sub_586ea:
	inc $18                  ; $586ea: e6 18
	ldy $10                  ; $586ec: a4 10
	eor ($04,x)              ; $586ee: 41 04
	brk #$00                 ; $586f0: 00 00

; === Block $587b9-$587be (Code) ===
sub_587b9:
	trb $14a5                ; $587b9: 1c a5 14
	adc $0c,s                ; $587bc: 63 0c
	brk #$00                 ; $587be: 00 00

; === Block $6852b-$6852e (Code) ===
loc_6852b:
	per $6ec9a               ; $6852b: 62 6c 67
	jmp ($6677,x)            ; $6852e: 7c 77 66

; === Block $68536-$6853e (Code) ===
loc_68536:
	adc [$7c],y              ; $68536: 77 7c
	adc $7d69                ; $68538: 6d 69 7d
	adc $6868,y              ; $6853b: 79 68 68

; === Block $6853d-$6857e (Code) ===
loc_6853d:
	pla                      ; $6853d: 68
	sei                      ; $6853e: 78
	sei                      ; $6853f: 78
	ror $7e6b                ; $68540: 6e 6b 7e
	tdc                      ; $68543: 7b
	ror                      ; $68544: 6a
	ror                      ; $68545: 6a
	ply                      ; $68546: 7a
	ply                      ; $68547: 7a
	rtl                      ; $68548: 6b
	ror $7e7b                ; $68549: 6e 7b 7e
	adc #$6d                 ; $6854c: 69 6d
	adc $e07d,y              ; $6854e: 79 7d e0
	sbc ($f0),y              ; $68551: f1 f0
	sep #$e0                 ; $68553: e2 e0
	cpx #$f0                 ; $68555: e0 f0
	beq $6854a               ; $68557: f0 f1
loc_68559:
	cpx #$e2                 ; $68559: e0 e2
	beq $6854d               ; $6855b: f0 f0
loc_6855d:
	beq $6854f               ; $6855d: f0 f0
loc_6855f:
	beq $68551               ; $6855f: f0 f0
loc_68561:
	beq $68555               ; $68561: f0 f2
loc_68563:
	sbc ($f0)                ; $68563: f2 f0
	sbc ($f2,x)              ; $68565: e1 f2
	sbc ($f1,s),y            ; $68567: f3 f1
	sbc ($f3),y              ; $68569: f1 f3
	sbc ($e1,s),y            ; $6856b: f3 e1
	beq $68562               ; $6856d: f0 f3
loc_6856f:
	sbc ($e0)                ; $6856f: f2 e0
	sbc ($f2),y              ; $68571: f1 f2
	sbc ($c3,s),y            ; $68573: f3 c3
	rol                      ; $68575: 2a
	cmp $11,s                ; $68576: c3 11
	sbc ($e0),y              ; $68578: f1 e0
	sbc ($f2,s),y            ; $6857a: f3 f2
	xce                      ; $6857c: fb
	xce                      ; $6857d: fb

; === Block $6854a-$6854e (Code) ===
loc_6854a:
	tdc                      ; $6854a: 7b
	ror $6d69,x              ; $6854b: 7e 69 6d

; === Block $6854d-$6855c (Code) ===
loc_6854d:
	adc $7d79                ; $6854d: 6d 79 7d
loc_68550:
	cpx #$f1                 ; $68550: e0 f1
loc_68552:
	beq $68536               ; $68552: f0 e2
loc_68554:
	cpx #$e0                 ; $68554: e0 e0
	beq $68548               ; $68556: f0 f0
loc_68558:
	sbc ($e0),y              ; $68558: f1 e0
	sep #$f0                 ; $6855a: e2 f0

; === Block $6854f-$68552 (Code) ===
loc_6854f:
	adc $f1e0,x              ; $6854f: 7d e0 f1

; === Block $6855c-$68576 (Code) ===
loc_6855c:
	beq $6854e               ; $6855c: f0 f0
loc_6855e:
	beq $68550               ; $6855e: f0 f0
loc_68560:
	beq $68552               ; $68560: f0 f0
loc_68562:
	sbc ($f2)                ; $68562: f2 f2
	beq $68547               ; $68564: f0 e1
loc_68566:
	sbc ($f3)                ; $68566: f2 f3
	sbc ($f1),y              ; $68568: f1 f1
	sbc ($f3,s),y            ; $6856a: f3 f3
	sbc ($f0,x)              ; $6856c: e1 f0
	sbc ($f2,s),y            ; $6856e: f3 f2
	cpx #$f1                 ; $68570: e0 f1
	sbc ($f3)                ; $68572: f2 f3
	cmp $2a,s                ; $68574: c3 2a

; === Block $6857e-$68584 (Code) ===
loc_6857e:
	xce                      ; $6857e: fb
	xce                      ; $6857f: fb
	beq $68563               ; $68580: f0 e1
loc_68582:
	sbc ($f3)                ; $68582: f2 f3
	brk #$01                 ; $68584: 00 01

; === Block $68589-$685cf (Code) ===
loc_68589:
	beq $6857e               ; $68589: f0 f3
loc_6858b:
	sbc ($f1)                ; $6858b: f2 f1
	sbc ($f3),y              ; $6858d: f1 f3
	sbc ($fb,s),y            ; $6858f: f3 fb
	xce                      ; $68591: fb
	tsc                      ; $68592: 3b
	bit $3e3d,x              ; $68593: 3c 3d 3e
	xce                      ; $68596: fb
	xce                      ; $68597: fb
	txa                      ; $68598: 8a
	phb                      ; $68599: 8b
	txa                      ; $6859a: 8a
	phb                      ; $6859b: 8b
	and $292a,y              ; $6859c: 39 2a 29
	ora ($3a),y              ; $6859f: 11 3a
	and $3810,y              ; $685a1: 39 10 38
	xce                      ; $685a4: fb
	xce                      ; $685a5: fb
	and [$fb],y              ; $685a6: 37 fb
	bra $6852b               ; $685a8: 80 81
	bcc $6853d               ; $685aa: 90 91
loc_685ac:
	beq $6859e               ; $685ac: f0 f0
loc_685ae:
	beq $685a0               ; $685ae: f0 f0
loc_685b0:
	lsr $5e4f                ; $685b0: 4e 4f 5e
	eor $1f2f0f,x            ; $685b3: 5f 0f 2f 1f
	and $024f02,x            ; $685b7: 3f 02 4f 02
	eor $5e4f4e,x            ; $685bb: 5f 4e 4f 5e
	eor $124f02,x            ; $685bf: 5f 02 4f 12
	eor $918081,x            ; $685c3: 5f 81 80 91
	bcc $6854a               ; $685c7: 90 81
loc_685c9:
	bra $6855c               ; $685c9: 80 91
	bcc $68637               ; $685cb: 90 6a
loc_685cd:
	ror                      ; $685cd: 6a
	ply                      ; $685ce: 7a

; === Block $6859e-$685a1 (Code) ===
loc_6859e:
	and #$11                 ; $6859e: 29 11
loc_685a0:
	dec                      ; $685a0: 3a

; === Block $685cf-$685dc (Code) ===
loc_685cf:
	ply                      ; $685cf: 7a
	ror                      ; $685d0: 6a
	ror                      ; $685d1: 6a
	ply                      ; $685d2: 7a
	ply                      ; $685d3: 7a
	ldy #$a1                 ; $685d4: a0 a1
	bcs $68589               ; $685d6: b0 b1
loc_685d8:
	ldx #$a3                 ; $685d8: a2 a3
	lda ($b3)                ; $685da: b2 b3
	brk #$01                 ; $685dc: 00 01

; === Block $685e1-$685ef (Code) ===
loc_685e1:
	wdm #$52                 ; $685e1: 42 52
	eor ($fb)                ; $685e3: 52 fb
	xce                      ; $685e5: fb
	xce                      ; $685e6: fb
	xce                      ; $685e7: fb
	lsr $5e4f                ; $685e8: 4e 4f 5e
	eor $fbfbfb,x            ; $685eb: 5f fb fb fb

; === Block $685ed-$68600 (Code) ===
loc_685ed:
	xce                      ; $685ed: fb
	xce                      ; $685ee: fb
	xce                      ; $685ef: fb
	lsr $5ee1                ; $685f0: 4e e1 5e
	eor $5e4fe1,x            ; $685f3: 5f e1 4f 5e
	eor $fbfb37,x            ; $685f7: 5f 37 fb fb
	xce                      ; $685fb: fb
	xce                      ; $685fc: fb
	xce                      ; $685fd: fb
	xce                      ; $685fe: fb
	xce                      ; $685ff: fb
	brk #$01                 ; $68600: 00 01

; === Block $685fa-$68600 (Code) ===
sub_685fa:
	xce                      ; $685fa: fb
	xce                      ; $685fb: fb
	xce                      ; $685fc: fb
	xce                      ; $685fd: fb
	xce                      ; $685fe: fb
	xce                      ; $685ff: fb
	brk #$01                 ; $68600: 00 01

; === Block $68625-$68668 (Code) ===
sub_68625:
	cmp $d9c9,y              ; $68625: d9 c9 d9
	sty $85                  ; $68628: 84 85
	sty $95,x                ; $6862a: 94 95
	sty $85                  ; $6862c: 84 85
	sta $9699,y              ; $6862e: 99 99 96
	sta [$97],y              ; $68631: 97 97
	stx $98,y                ; $68633: 96 98
	tya                      ; $68635: 98
	xce                      ; $68636: fb
	xce                      ; $68637: fb
	ldy $a5                  ; $68638: a4 a5
	bcs $685ed               ; $6863a: b0 b1
	ldy $b5,x                ; $6863c: b4 b5
	lda ($b3)                ; $6863e: b2 b3
	dec $c7                  ; $68640: c6 c7
	dec $d7,x                ; $68642: d6 d7
	dec $c7                  ; $68644: c6 c7
	dec $c7,x                ; $68646: d6 c7
	dec $c7,x                ; $68648: d6 c7
	dec $c7,x                ; $6864a: d6 c7
	bra $685cf               ; $6864c: 80 81
	bcc $685e1               ; $6864e: 90 91
	brl $618d6               ; $68650: 82 83 92
	sta ($e4,s),y            ; $68653: 93 e4
	pea $e4f4                ; $68655: f4 f4 e4
	sbc $fb                  ; $68658: e5 fb
	sbc $fb,x                ; $6865a: f5 fb
	sbc $fb                  ; $6865c: e5 fb
	sbc $fb,s                ; $6865e: e3 fb
	phd                      ; $68660: 0b
	tsb $1c1b                ; $68661: 0c 1b 1c
	ora $04,s                ; $68664: 03 04
	ora ($14,s),y            ; $68666: 13 14
	brk #$01                 ; $68668: 00 01

; === Block $68637-$6863c (Code) ===
loc_68637:
	xce                      ; $68637: fb
	ldy $a5                  ; $68638: a4 a5
	bcs $685ed               ; $6863a: b0 b1

; === Block $6863c-$68668 (Code) ===
loc_6863c:
	ldy $b5,x                ; $6863c: b4 b5
	lda ($b3)                ; $6863e: b2 b3
	dec $c7                  ; $68640: c6 c7
	dec $d7,x                ; $68642: d6 d7
	dec $c7                  ; $68644: c6 c7
	dec $c7,x                ; $68646: d6 c7
	dec $c7,x                ; $68648: d6 c7
	dec $c7,x                ; $6864a: d6 c7
	bra $685cf               ; $6864c: 80 81
	bcc $685e1               ; $6864e: 90 91
loc_68650:
	brl $618d6               ; $68650: 82 83 92
	sta ($e4,s),y            ; $68653: 93 e4
	pea $e4f4                ; $68655: f4 f4 e4
	sbc $fb                  ; $68658: e5 fb
	sbc $fb,x                ; $6865a: f5 fb
	sbc $fb                  ; $6865c: e5 fb
	sbc $fb,s                ; $6865e: e3 fb
	phd                      ; $68660: 0b
	tsb $1c1b                ; $68661: 0c 1b 1c
	ora $04,s                ; $68664: 03 04
	ora ($14,s),y            ; $68666: 13 14
	brk #$01                 ; $68668: 00 01

