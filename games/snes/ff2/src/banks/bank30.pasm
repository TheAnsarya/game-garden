; Disassembled by Peony
; Platform: SNES
; Mapper: FINAL FANTASY 2
; MapMode: LoRom
; RomSize: 1024K
; Banks: 32
; CopierHeader: False

.snes

; --- Block at $8000-$8000 ---
bank30_start:
	brk #$dc                     ; 8000: 00 dc

; --- Block at $fd91-$fd99 ---
loc_fd91:
	lda $e8                      ; fd91: a5 e8
loc_fd93:
	asl                          ; fd93: 0a
	sta $45                      ; fd94: 85 45
	asl                          ; fd96: 0a
	adc $45                      ; fd97: 65 45
	jmp $fe84                    ; fd99: 4c 84 fe

; --- Block at $fe84-$fe88 ---
loc_fe84:
	sta $43                      ; fe84: 85 43
	ldx $43                      ; fe86: a6 43
	rts                          ; fe88: 60

; --- Block at $1efccd-$1efd20 ---
loc_1efccd:
	lda.b #$02                   ; 1efccd: a9 02
	sta $01                      ; 1efccf: 85 01
	lda.b #$00                   ; 1efcd1: a9 00
	sta $02                      ; 1efcd3: 85 02
	sta $03                      ; 1efcd5: 85 03
	sta $05                      ; 1efcd7: 85 05
	sta $06                      ; 1efcd9: 85 06
	lda.b #$62                   ; 1efcdb: a9 62
	sta $07                      ; 1efcdd: 85 07
	lda.b #$6a                   ; 1efcdf: a9 6a
	sta $08                      ; 1efce1: 85 08
	lda.b #$72                   ; 1efce3: a9 72
	sta $09                      ; 1efce5: 85 09
	lda.b #$7a                   ; 1efce7: a9 7a
	sta $0a                      ; 1efce9: 85 0a
	lda.b #$22                   ; 1efceb: a9 22
	sta $0b                      ; 1efced: 85 0b
	lda.b #$22                   ; 1efcef: a9 22
	sta $0c                      ; 1efcf1: 85 0c
	lda.b #$00                   ; 1efcf3: a9 00
	sta $420b                    ; 1efcf5: 8d 0b 42 ; MDMAEN
	sta $420c                    ; 1efcf8: 8d 0c 42 ; HDMAEN
	lda.b #$80                   ; 1efcfb: a9 80
	sta $15                      ; 1efcfd: 85 15
	tdc                          ; 1efcff: 7b
	sta $16                      ; 1efd00: 85 16
	sta $17                      ; 1efd02: 85 17
	lda.b #$1f                   ; 1efd04: a9 1f
	sta $2c                      ; 1efd06: 85 2c
	tdc                          ; 1efd08: 7b
	sta $2d                      ; 1efd09: 85 2d
	sta $2e                      ; 1efd0b: 85 2e
	sta $2f                      ; 1efd0d: 85 2f
	sta $30                      ; 1efd0f: 85 30
	sta $31                      ; 1efd11: 85 31
	sta $33                      ; 1efd13: 85 33
	lda.b #$e0                   ; 1efd15: a9 e0
	sta $32                      ; 1efd17: 85 32
	rtl                          ; 1efd19: 6b
	rep #$20                     ; 1efd1a: c2 20
	ldx.b #$d0                   ; 1efd1c: a2 d0
	sta [$a0]                    ; 1efd1e: 87 a0
	brk #$a0                     ; 1efd20: 00 a0

; --- Block at $1efd5b-$1efd73 ---
loc_1efd5b:
	jsr $fe84                    ; 1efd5b: 20 84 fe
loc_1efd5e:
	lda $1efd66,x                ; 1efd5e: bf 66 fd 1e
	jml $01875c                  ; 1efd62: 5c 5c 87 01
	cli                          ; 1efd66: 58
	cli                          ; 1efd67: 58
	cli                          ; 1efd68: 58
	cli                          ; 1efd69: 58
	ror $27                      ; 1efd6a: 66 27
	and [$58]                    ; 1efd6c: 27 58
	cli                          ; 1efd6e: 58
	and $581f,x                  ; 1efd6f: 3d 1f 58
	cli                          ; 1efd72: 58
	brk #$48                     ; 1efd73: 00 48

; --- Block at $1efda6-$1efdb6 ---
loc_1efda6:
	tcs                          ; 1efda6: 1b
	lda $1bcf,x                  ; 1efda7: bd cf 1b
	sta $1b83                    ; 1efdaa: 8d 83 1b
	lda $1bd1,x                  ; 1efdad: bd d1 1b
	sta $1b85                    ; 1efdb0: 8d 85 1b
	sep #$20                     ; 1efdb3: e2 20
	rtl                          ; 1efdb5: 6b

; --- Block at $1efdb6-$1efe15 ---
loc_1efdb6:
	jsr $fd91                    ; 1efdb6: 20 91 fd
loc_1efdb9:
	rep #$20                     ; 1efdb9: c2 20
	lda $1b81                    ; 1efdbb: ad 81 1b
	sta $1bcd,x                  ; 1efdbe: 9d cd 1b
	lda $1b83                    ; 1efdc1: ad 83 1b
	sta $1bcf,x                  ; 1efdc4: 9d cf 1b
	lda $1b85                    ; 1efdc7: ad 85 1b
	sta $1bd1,x                  ; 1efdca: 9d d1 1b
	sep #$20                     ; 1efdcd: e2 20
	rtl                          ; 1efdcf: 6b
	lda $d9                      ; 1efdd0: a5 d9
	jsr $fd93                    ; 1efdd2: 20 93 fd
loc_1efdd5:
	txy                          ; 1efdd5: 9b
	lda $da                      ; 1efdd6: a5 da
	jsr $fd93                    ; 1efdd8: 20 93 fd
loc_1efddb:
	rep #$20                     ; 1efddb: c2 20
	lda $1bcd,x                  ; 1efddd: bd cd 1b
	pha                          ; 1efde0: 48
	lda $1bcf,x                  ; 1efde1: bd cf 1b
	pha                          ; 1efde4: 48
	lda $1bd1,x                  ; 1efde5: bd d1 1b
	pha                          ; 1efde8: 48
	lda $1bcd,y                  ; 1efde9: b9 cd 1b
	sta $1bcd,x                  ; 1efdec: 9d cd 1b
	lda $1bcf,y                  ; 1efdef: b9 cf 1b
	sta $1bcf,x                  ; 1efdf2: 9d cf 1b
	lda $1bd1,y                  ; 1efdf5: b9 d1 1b
	sta $1bd1,x                  ; 1efdf8: 9d d1 1b
	pla                          ; 1efdfb: 68
	sta $1bd1,y                  ; 1efdfc: 99 d1 1b
	pla                          ; 1efdff: 68
	sta $1bcf,y                  ; 1efe00: 99 cf 1b
	pla                          ; 1efe03: 68
	sta $1bcd,y                  ; 1efe04: 99 cd 1b
	sep #$20                     ; 1efe07: e2 20
	rtl                          ; 1efe09: 6b
	.db $10, $60                 ; 1efe0a: 10 60
loc_1efe0c:
	.db $10, $10                 ; 1efe0c: 10 10
loc_1efe0e:
	.db $10, $b0                 ; 1efe0e: 10 b0
loc_1efe10:
	clc                          ; 1efe10: 18
	sec                          ; 1efe11: 38
	clc                          ; 1efe12: 18
	dey                          ; 1efe13: 88
	clc                          ; 1efe14: 18
	rts                          ; 1efe15: 60

; --- Block at $1efdc0-$1efdc1 ---
loc_1efdc0:
	tcs                          ; 1efdc0: 1b

; --- Block at $1efe16-$1efe1c ---
loc_1efe16:
	clc                          ; 1efe16: 18
	.db $10, $18                 ; 1efe17: 10 18
loc_1efe19:
	.db $b0, $10                 ; 1efe19: b0 10
loc_1efe1b:
	sec                          ; 1efe1b: 38

; --- Block at $1efe1a-$1efe1e ---
loc_1efe1a:
	.db $10, $38                 ; 1efe1a: 10 38
loc_1efe1c:
	.db $10, $88                 ; 1efe1c: 10 88

; --- Block at $1efe1e-$1efe6f ---
loc_1efe1e:
	cpy $8fc0                    ; 1efe1e: cc c0 8f
	cpy.b #$90                   ; 1efe21: c0 90
	cpy.b #$91                   ; 1efe23: c0 91
	cpy.b #$92                   ; 1efe25: c0 92
	cpy.b #$93                   ; 1efe27: c0 93
	cpy.b #$94                   ; 1efe29: c0 94
	cpy.b #$95                   ; 1efe2b: c0 95
	cpy.b #$96                   ; 1efe2d: c0 96
	cpy.b #$97                   ; 1efe2f: c0 97
	cpy.b #$98                   ; 1efe31: c0 98
	cpy.b #$99                   ; 1efe33: c0 99
	cpy.b #$9a                   ; 1efe35: c0 9a
	cpy.b #$9b                   ; 1efe37: c0 9b
	cpy.b #$9c                   ; 1efe39: c0 9c
	cpy.b #$9d                   ; 1efe3b: c0 9d
	cpy.b #$a3                   ; 1efe3d: c0 a3
	cpy.b #$a4                   ; 1efe3f: c0 a4
	cpy.b #$a5                   ; 1efe41: c0 a5
	cpy.b #$a6                   ; 1efe43: c0 a6
	cpy.b #$a7                   ; 1efe45: c0 a7
	cpy.b #$a3                   ; 1efe47: c0 a3
	cmp ($a4,x)                  ; 1efe49: c1 a4
	cmp ($a5,x)                  ; 1efe4b: c1 a5
	cmp ($a6,x)                  ; 1efe4d: c1 a6
	cmp ($a7,x)                  ; 1efe4f: c1 a7
	cmp ($cf,x)                  ; 1efe51: c1 cf
	cpy.b #$d0                   ; 1efe53: c0 d0
	cpy.b #$d1                   ; 1efe55: c0 d1
	cpy.b #$d2                   ; 1efe57: c0 d2
	cpy.b #$d3                   ; 1efe59: c0 d3
	cpy.b #$d4                   ; 1efe5b: c0 d4
	cpy.b #$d5                   ; 1efe5d: c0 d5
	cpy.b #$d6                   ; 1efe5f: c0 d6
	cpy.b #$d7                   ; 1efe61: c0 d7
	cpy.b #$d8                   ; 1efe63: c0 d8
	cpy.b #$d9                   ; 1efe65: c0 d9
	cpy.b #$da                   ; 1efe67: c0 da
	cpy.b #$db                   ; 1efe69: c0 db
	cpy.b #$dc                   ; 1efe6b: c0 dc
	cpy.b #$dd                   ; 1efe6d: c0 dd

; --- Block at $1efe54-$1efe65 ---
loc_1efe54:
	.db $d0, $c0                 ; 1efe54: d0 c0
loc_1efe56:
	cmp ($c0),y                  ; 1efe56: d1 c0
	cmp ($c0)                    ; 1efe58: d2 c0
	cmp ($c0,s),y                ; 1efe5a: d3 c0
	pei $c0                      ; 1efe5c: d4 c0
	cmp $c0,x                    ; 1efe5e: d5 c0
	dec $c0,x                    ; 1efe60: d6 c0
	cmp [$c0],y                  ; 1efe62: d7 c0
	cld                          ; 1efe64: d8

; --- Block at $1efe6c-$1efe96 ---
loc_1efe6c:
	jml [$ddc0]                  ; 1efe6c: dc c0 dd
	cpy.b #$e3                   ; 1efe6f: c0 e3
	cpy.b #$e4                   ; 1efe71: c0 e4
	cpy.b #$e5                   ; 1efe73: c0 e5
	cpy.b #$e6                   ; 1efe75: c0 e6
	cpy.b #$e7                   ; 1efe77: c0 e7
	cpy.b #$e3                   ; 1efe79: c0 e3
	cmp ($e4,x)                  ; 1efe7b: c1 e4
	cmp ($e5,x)                  ; 1efe7d: c1 e5
	cmp ($e6,x)                  ; 1efe7f: c1 e6
	cmp ($e7,x)                  ; 1efe81: c1 e7
	cmp ($85,x)                  ; 1efe83: c1 85
	eor $a6,s                    ; 1efe85: 43 a6
	eor $60,s                    ; 1efe87: 43 60
	jsr $7000                    ; 1efe89: 20 00 70
loc_1efe8c:
	jsr $3088                    ; 1efe8c: 20 88 30
loc_1efe8f:
	dey                          ; 1efe8f: 88
	.db $30, $88                 ; 1efe90: 30 88
loc_1efe92:
	.db $30, $88                 ; 1efe92: 30 88
loc_1efe94:
	.db $30, $70                 ; 1efe94: 30 70
loc_1efe96:
	brk #$20                     ; 1efe96: 00 20

; --- Block at $1eff06-$1eff15 ---
loc_1eff06:
	tsb $ec                      ; 1eff06: 04 ec
	sty $aa64                    ; 1eff08: 8c 64 aa
	ror $42                      ; 1eff0b: 66 42
	stx $6ea2                    ; 1eff0d: 8e a2 6e
	cpx.b #$00                   ; 1eff10: e0 00
	.db $30, $00                 ; 1eff12: 30 00
loc_1eff14:
	sec                          ; 1eff14: 38
	brk #$1c                     ; 1eff15: 00 1c

