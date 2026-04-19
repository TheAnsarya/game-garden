; Disassembled by Peony
; Platform: SNES
; Mapper: FINAL FANTASY 2
; MapMode: LoRom
; RomSize: 1024K
; Banks: 32
; CopierHeader: False

.snes

; --- Block at $8000-$8038 ---
bank20_start:
	bit $d0                      ; 8000: 24 d0
	ldy $0604                    ; 8002: ac 04 06
	stx $6060                    ; 8005: 8e 60 60
	ldy $868c                    ; 8008: ac 8c 86
	sty $80                      ; 800b: 84 80
	iny                          ; 800d: c8
	dex                          ; 800e: ca
	tsb $1128                    ; 800f: 0c 28 11
	jsl $842624                  ; 8012: 22 24 26 84
loc_8016:
	ldy $8e95                    ; 8016: ac 95 8e
	.db $80, $80                 ; 8019: 80 80
	.db $80, $80                 ; 801b: 80 80
	inx                          ; 801d: e8
	nop                          ; 801e: ea
	tsb $1148                    ; 801f: 0c 48 11
	wdm #$44                     ; 8022: 42 44
	lsr $92                      ; 8024: 46 92
	.db $90, $00                 ; 8026: 90 00
loc_8028:
	dey                          ; 8028: 88
	.db $80, $8a                 ; 8029: 80 8a
	.db $f0, $10                 ; 802b: f0 10
loc_802d:
	ldy $0caf                    ; 802d: ac af 0c
	bit $11                      ; 8030: 24 11
	ldy $c1c4                    ; 8032: ac c4 c1
	ldy $6563                    ; 8035: ac 63 65
	rti                          ; 8038: 40

; --- Block at $803d-$804e ---
loc_803d:
	inx                          ; 803d: e8
	nop                          ; 803e: ea
	lsr $7a2f                    ; 803f: 4e 2f 7a
	dec $11                      ; 8042: c6 11
	ora ($67),y                  ; 8044: 11 67
	jsr $9021                    ; 8046: 20 21 90
loc_8049:
	php                          ; 8049: 08
	php                          ; 804a: 08
	ldy $e1e4                    ; 804b: ac e4 e1
	brk #$df                     ; 804e: 00 df

; --- Block at $9021-$9037 ---
loc_9021:
	tsb $00                      ; 9021: 04 00
	tsb $00                      ; 9023: 04 00
	tsb $00                      ; 9025: 04 00
	tsb $00                      ; 9027: 04 00
	tsb $00                      ; 9029: 04 00
	tsb $00                      ; 902b: 04 00
	tsb $00                      ; 902d: 04 00
	tsb $00                      ; 902f: 04 00
	tsb $00                      ; 9031: 04 00
	tsb $00                      ; 9033: 04 00
	tsb $01                      ; 9035: 04 01
	rti                          ; 9037: 40

; --- Block at $fd12-$fd54 ---
loc_fd12:
	phb                          ; fd12: 8b
	phx                          ; fd13: da
	phy                          ; fd14: 5a
	phd                          ; fd15: 0b
	lda.b #$00                   ; fd16: a9 00
	pha                          ; fd18: 48
	plb                          ; fd19: ab
	ldx.b #$00                   ; fd1a: a2 00
	ora ($da,x)                  ; fd1c: 01 da
	pld                          ; fd1e: 2b
	lda $4212                    ; fd1f: ad 12 42 ; HVBJOY
	and.b #$01                   ; fd22: 29 01
	.db $d0, $f9                 ; fd24: d0 f9
loc_fd26:
	stz $ec                      ; fd26: 64 ec
	ldy.b #$18                   ; fd28: a0 18
	wdm #$a2                     ; fd2a: 42 a2
	tsb $00                      ; fd2c: 04 00
	lda.b #$04                   ; fd2e: a9 04
	pha                          ; fd30: 48
	phy                          ; fd31: 5a
	jsr $fd90                    ; fd32: 20 90 fd
loc_fd35:
	ply                          ; fd35: 7a
	pla                          ; fd36: 68
	inx                          ; fd37: e8
	iny                          ; fd38: c8
	dec                          ; fd39: 3a
	.db $d0, $f4                 ; fd3a: d0 f4
loc_fd3c:
	lda $1a64                    ; fd3c: ad 64 1a
	and.b #$01                   ; fd3f: 29 01
	asl                          ; fd41: 0a
	asl                          ; fd42: 0a
	sta $1d                      ; fd43: 85 1d
	asl                          ; fd45: 0a
	adc $1d                      ; fd46: 65 1d
	asl                          ; fd48: 0a
	sta $43                      ; fd49: 85 43
	ldx $43                      ; fd4b: a6 43
	rep #$20                     ; fd4d: c2 20
	lda $04                      ; fd4f: a5 04
	phx                          ; fd51: da
	ldy.b #$0c                   ; fd52: a0 0c
	brk #$85                     ; fd54: 00 85

; --- Block at $fd90-$fdc8 ---
loc_fd90:
	lda $16b8                    ; fd90: ad b8 16
	and $40                      ; fd93: 25 40
	.db $f0, $1d                 ; fd95: f0 1d
loc_fd97:
	lda.l $001822                ; fd97: af 22 18 00
	sta $43                      ; fd9b: 85 43
	phy                          ; fd9d: 5a
	ldy $43                      ; fd9e: a4 43
	lda $16b9,y                  ; fda0: b9 b9 16
	ply                          ; fda3: 7a
	sta $43                      ; fda4: 85 43
	rep #$20                     ; fda6: c2 20
	tya                          ; fda8: 98
	clc                          ; fda9: 18
	adc $43                      ; fdaa: 65 43
	tay                          ; fdac: a8
	sep #$20                     ; fdad: e2 20
	lda.w $0000,y                ; fdaf: b9 00 00
	.db $80, $06                 ; fdb2: 80 06
loc_fdb4:
	lda.w $0000,y                ; fdb4: b9 00 00
	ora.w $0002,y                ; fdb7: 19 02 00
loc_fdba:
	.db $f0, $04                 ; fdba: f0 04
loc_fdbc:
	cmp $04,x                    ; fdbc: d5 04
	.db $f0, $09                 ; fdbe: f0 09
loc_fdc0:
	sta $04,x                    ; fdc0: 95 04
	sta $00,x                    ; fdc2: 95 00
	lda.b #$18                   ; fdc4: a9 18
	sta $08,x                    ; fdc6: 95 08
	rts                          ; fdc8: 60

; --- Block at $fdc9-$fdcf ---
loc_fdc9:
	dec $08,x                    ; fdc9: d6 08
	.db $f0, $03                 ; fdcb: f0 03
loc_fdcd:
	stz $00,x                    ; fdcd: 74 00
	rts                          ; fdcf: 60

; --- Block at $fdd0-$fdd8 ---
loc_fdd0:
	lda.b #$03                   ; fdd0: a9 03
	sta $08,x                    ; fdd2: 95 08
	lda $04,x                    ; fdd4: b5 04
	sta $00,x                    ; fdd6: 95 00
	rts                          ; fdd8: 60

; --- Block at $fdd9-$fe3c ---
loc_fdd9:
	phb                          ; fdd9: 8b
	phd                          ; fdda: 0b
	ldx.b #$00                   ; fddb: a2 00
	ora ($da,x)                  ; fddd: 01 da
	pld                          ; fddf: 2b
	rep #$20                     ; fde0: c2 20
	lda.w #$0017                 ; fde2: a9 17 00
	ldx.b #$86                   ; fde5: a2 86
	inc $05a0,x                  ; fde7: fe a0 05
	inc                          ; fdea: 1a
	mvn $7e,$14                  ; fdeb: 54 7e 14
	lda.w #$0017                 ; fdee: a9 17 00
	ldx.b #$86                   ; fdf1: a2 86
	inc $1da0,x                  ; fdf3: fe a0 1d
	inc                          ; fdf6: 1a
	mvn $7e,$14                  ; fdf7: 54 7e 14
	sep #$20                     ; fdfa: e2 20
	lda $16a9                    ; fdfc: ad a9 16
	sta $1a64                    ; fdff: 8d 64 1a
	lda $1a3a                    ; fe02: ad 3a 1a
	asl                          ; fe05: 0a
	sta $43                      ; fe06: 85 43
	ldx $43                      ; fe08: a6 43
	rep #$20                     ; fe0a: c2 20
	stz $1a2d                    ; fe0c: 9c 2d 1a
	stz $1a1d                    ; fe0f: 9c 1d 1a
	stz $1a2f                    ; fe12: 9c 2f 1a
	stz $1a1f                    ; fe15: 9c 1f 1a
	stz $1a21                    ; fe18: 9c 21 1a
	lda $14fe7e,x                ; fe1b: bf 7e fe 14
	sta $1a31                    ; fe1f: 8d 31 1a
	sep #$20                     ; fe22: e2 20
	lda $1a3b                    ; fe24: ad 3b 1a
	asl                          ; fe27: 0a
	sta $43                      ; fe28: 85 43
	rep #$20                     ; fe2a: c2 20
	ldx $43                      ; fe2c: a6 43
	lda $14fe7e,x                ; fe2e: bf 7e fe 14
	sta $1a23                    ; fe32: 8d 23 1a
	sep #$20                     ; fe35: e2 20
	lda $1a37                    ; fe37: ad 37 1a
	ldx.b #$80                   ; fe3a: a2 80
	brk #$20                     ; fe3c: 00 20

; --- Block at $fed6-$ff0a ---
loc_fed6:
	ldx $16aa                    ; fed6: ae aa 16
	stx $a002                    ; fed9: 8e 02 a0
	stx $a00a                    ; fedc: 8e 0a a0
	stx $a012                    ; fedf: 8e 12 a0
	stx $a01a                    ; fee2: 8e 1a a0
	stx $a042                    ; fee5: 8e 42 a0
	stx $a04a                    ; fee8: 8e 4a a0
	stx $a052                    ; feeb: 8e 52 a0
	stx $a05a                    ; feee: 8e 5a a0
	stx $a082                    ; fef1: 8e 82 a0
	stx $a08a                    ; fef4: 8e 8a a0
	stx $a092                    ; fef7: 8e 92 a0
	stx $a09a                    ; fefa: 8e 9a a0
	stx $a0c2                    ; fefd: 8e c2 a0
	stx $a0ca                    ; ff00: 8e ca a0
	stx $a0d2                    ; ff03: 8e d2 a0
	stx $a0da                    ; ff06: 8e da a0
	rtl                          ; ff09: 6b

; --- Block at $ff0a-$ff62 ---
loc_ff0a:
	pha                          ; ff0a: 48
	phb                          ; ff0b: 8b
	tdc                          ; ff0c: 7b
	pha                          ; ff0d: 48
	plb                          ; ff0e: ab
	lda $8a                      ; ff0f: a5 8a
	sta $210f                    ; ff11: 8d 0f 21 ; BG2HOFS
	lda $8b                      ; ff14: a5 8b
	sta $210f                    ; ff16: 8d 0f 21 ; BG2HOFS
	lda $8d                      ; ff19: a5 8d
	sta $2110                    ; ff1b: 8d 10 21 ; BG2VOFS
	lda $8e                      ; ff1e: a5 8e
	sta $2110                    ; ff20: 8d 10 21 ; BG2VOFS
	lda $90                      ; ff23: a5 90
	sta $210d                    ; ff25: 8d 0d 21 ; BG1HOFS
	lda $91                      ; ff28: a5 91
	sta $210d                    ; ff2a: 8d 0d 21 ; BG1HOFS
	lda $93                      ; ff2d: a5 93
	sta $210e                    ; ff2f: 8d 0e 21 ; BG1VOFS
	lda $94                      ; ff32: a5 94
	sta $210e                    ; ff34: 8d 0e 21 ; BG1VOFS
	lda $96                      ; ff37: a5 96
	sta $2113                    ; ff39: 8d 13 21 ; BG4HOFS
	lda $97                      ; ff3c: a5 97
	sta $2113                    ; ff3e: 8d 13 21 ; BG4HOFS
	lda $99                      ; ff41: a5 99
	sta $2114                    ; ff43: 8d 14 21 ; BG4VOFS
	lda $9a                      ; ff46: a5 9a
	sta $2114                    ; ff48: 8d 14 21 ; BG4VOFS
	lda $9c                      ; ff4b: a5 9c
	sta $2111                    ; ff4d: 8d 11 21 ; BG3HOFS
	lda $9d                      ; ff50: a5 9d
	sta $2111                    ; ff52: 8d 11 21 ; BG3HOFS
	lda $9f                      ; ff55: a5 9f
	sta $2112                    ; ff57: 8d 12 21 ; BG3VOFS
	lda $a0                      ; ff5a: a5 a0
	sta $2112                    ; ff5c: 8d 12 21 ; BG3VOFS
	plb                          ; ff5f: ab
	pla                          ; ff60: 68
	rtl                          ; ff61: 6b

; --- Block at $ff62-$ff7e ---
loc_ff62:
	phb                          ; ff62: 8b
	tdc                          ; ff63: 7b
	pha                          ; ff64: 48
	plb                          ; ff65: ab
	lda.b #$80                   ; ff66: a9 80
	sta $2100                    ; ff68: 8d 00 21 ; INIDISP
	sta $88                      ; ff6b: 85 88
	lda.b #$80                   ; ff6d: a9 80
	sta $2115                    ; ff6f: 8d 15 21 ; VMAIN
	ldx.b #$00                   ; ff72: a2 00
	jsr $168e                    ; ff74: 20 8e 16
loc_ff77:
	and ($ae,x)                  ; ff77: 21 ae
	and $a921,y                  ; ff79: 39 21 a9
	sta ($8d,x)                  ; ff7c: 81 8d
	brk #$43                     ; ff7e: 00 43

; --- Block at $14fd00-$14fd00 ---
loc_14fd00:
	jmp $fdd9                    ; 14fd00: 4c d9 fd

; --- Block at $14fd03-$14fd03 ---
loc_14fd03:
	jmp $fd12                    ; 14fd03: 4c 12 fd

; --- Block at $14fd09-$14fd09 ---
loc_14fd09:
	jmp $fed6                    ; 14fd09: 4c d6 fe

; --- Block at $14fd0c-$14fd0c ---
loc_14fd0c:
	jmp $ff0a                    ; 14fd0c: 4c 0a ff

; --- Block at $14fd0f-$14fd0f ---
loc_14fd0f:
	jmp $ff62                    ; 14fd0f: 4c 62 ff

; --- Block at $14ffd6-$14ffe1 ---
loc_14ffd6:
	lda.b #$00                   ; 14ffd6: a9 00
	pha                          ; 14ffd8: 48
	plb                          ; 14ffd9: ab
	ldx.b #$00                   ; 14ffda: a2 00
	jsr $1d8e                    ; 14ffdc: 20 8e 1d
loc_14ffdf:
	ora ($a2,x)                  ; 14ffdf: 01 a2
	brk #$e6                     ; 14ffe1: 00 e6

