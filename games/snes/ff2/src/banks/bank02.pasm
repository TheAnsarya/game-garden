; Disassembled by Peony
; Platform: SNES
; Mapper: FINAL FANTASY 2
; MapMode: LoRom
; RomSize: 1024K
; Banks: 32
; CopierHeader: False

.snes

; --- Block at $8000-$8003 ---
bank2_start:
	nop                          ; 8000: ea
	nop                          ; 8001: ea
	nop                          ; 8002: ea
	jmp $800a                    ; 8003: 4c 0a 80

; --- Block at $800a-$801c ---
loc_800a:
	jsr $800e                    ; 800a: 20 0e 80
loc_800d:
	rtl                          ; 800d: 6b
loc_800e:
	asl                          ; 800e: 0a
	tax                          ; 800f: aa
	lda $02801f,x                ; 8010: bf 1f 80 02
	sta $02                      ; 8014: 85 02
	lda $028020,x                ; 8016: bf 20 80 02
	sta $03                      ; 801a: 85 03
	jmp.w ($0002)                ; 801c: 6c 02 00

; --- Block at $8513-$851d ---
loc_8513:
	phy                          ; 8513: 5a
	phx                          ; 8514: da
	lda.b #$0f                   ; 8515: a9 0f
	jsl $028003                  ; 8517: 22 03 80 02
loc_851b:
	plx                          ; 851b: fa
	ply                          ; 851c: 7a
	rts                          ; 851d: 60

; --- Block at $8560-$8563 ---
loc_8560:
	phx                          ; 8560: da
	ldx.b #$08                   ; 8561: a2 08
	brk #$64                     ; 8563: 00 64

; --- Block at $85d2-$85ea ---
loc_85d2:
	phx                          ; 85d2: da
	lda $1c                      ; 85d3: a5 1c
	sta.l $004202                ; 85d5: 8f 02 42 00 ; WRMPYA
	lda $1e                      ; 85d9: a5 1e
	sta.l $004203                ; 85db: 8f 03 42 00 ; WRMPYB
	phb                          ; 85df: 8b
	tdc                          ; 85e0: 7b
	pha                          ; 85e1: 48
	plb                          ; 85e2: ab
	ldx $4216                    ; 85e3: ae 16 42 ; RDMPYL
	stx $20                      ; 85e6: 86 20
	plb                          ; 85e8: ab
	plx                          ; 85e9: fa
	rts                          ; 85ea: 60

; --- Block at $889c-$889e ---
loc_889c:
	ldy.b #$00                   ; 889c: a0 00
	brk #$b9                     ; 889e: 00 b9

; --- Block at $8a66-$8a68 ---
loc_8a66:
	ldx.b #$00                   ; 8a66: a2 00
	brk #$c2                     ; 8a68: 00 c2

; --- Block at $8bc7-$8bcb ---
loc_8bc7:
	jsl $01e9e1                  ; 8bc7: 22 e1 e9 01
loc_8bcb:
	rts                          ; 8bcb: 60

; --- Block at $8bcc-$8bef ---
loc_8bcc:
	sta $f49e                    ; 8bcc: 8d 9e f4
	sty $f44f                    ; 8bcf: 8c 4f f4
	sta $26                      ; 8bd2: 85 26
	lda.b #$05                   ; 8bd4: a9 05
	sta $28                      ; 8bd6: 85 28
	lda.b #$20                   ; 8bd8: a9 20
	sta $f49d                    ; 8bda: 8d 9d f4
	jsr $8560                    ; 8bdd: 20 60 85
loc_8be0:
	ldx $2a                      ; 8be0: a6 2a
	tdc                          ; 8be2: 7b
	tay                          ; 8be3: a8
	lda $0fce00,x                ; 8be4: bf 00 ce 0f
	sta $efa3,y                  ; 8be8: 99 a3 ef
	inx                          ; 8beb: e8
	iny                          ; 8bec: c8
	cpy.b #$05                   ; 8bed: c0 05
	brk #$d0                     ; 8bef: 00 d0

; --- Block at $8d35-$8d6f ---
loc_8d35:
	jsr $8a66                    ; 8d35: 20 66 8a
loc_8d38:
	lda $f473                    ; 8d38: ad 73 f4
	.db $d0, $64                 ; 8d3b: d0 64
loc_8d3d:
	tdc                          ; 8d3d: 7b
	tax                          ; 8d3e: aa
	phx                          ; 8d3f: da
	txa                          ; 8d40: 8a
	sta $02                      ; 8d41: 85 02
	lda $29b5,x                  ; 8d43: bd b5 29
	cmp.b #$ff                   ; 8d46: c9 ff
	.db $f0, $50                 ; 8d48: f0 50
loc_8d4a:
	sta $0a                      ; 8d4a: 85 0a
	tax                          ; 8d4c: aa
	lda $29b1,x                  ; 8d4d: bd b1 29
	jsr $8ec1                    ; 8d50: 20 c1 8e
loc_8d53:
	lda $0fca00,x                ; 8d53: bf 00 ca 0f
	.db $10, $19                 ; 8d57: 10 19
loc_8d59:
	lda $02                      ; 8d59: a5 02
	tay                          ; 8d5b: a8
	lda $f2b4,y                  ; 8d5c: b9 b4 f2
	cmp.b #$ff                   ; 8d5f: c9 ff
	.db $d0, $09                 ; 8d61: d0 09
loc_8d63:
	lda $0fca00,x                ; 8d63: bf 00 ca 0f
	and.b #$3f                   ; 8d67: 29 3f
	sta $f2b4,y                  ; 8d69: 99 b4 f2
loc_8d6c:
	jsr $8bcc                    ; 8d6c: 20 cc 8b
loc_8d6f:
	jmp $8d9a                    ; 8d6f: 4c 9a 8d

; --- Block at $8d72-$8d9a ---
loc_8d72:
	lda $0a                      ; 8d72: a5 0a
	tax                          ; 8d74: aa
	asl                          ; 8d75: 0a
	tay                          ; 8d76: a8
	lda $6cc3,y                  ; 8d77: b9 c3 6c
	sta $00                      ; 8d7a: 85 00
	lda $6cc4,y                  ; 8d7c: b9 c4 6c
	sta $01                      ; 8d7f: 85 01
	plx                          ; 8d81: fa
	phx                          ; 8d82: da
	lda $29a5,x                  ; 8d83: bd a5 29
	and.b #$0f                   ; 8d86: 29 0f
	sta $05                      ; 8d88: 85 05
	lda $29a5,x                  ; 8d8a: bd a5 29
	and.b #$f0                   ; 8d8d: 29 f0
	lsr                          ; 8d8f: 4a
	lsr                          ; 8d90: 4a
	lsr                          ; 8d91: 4a
	lsr                          ; 8d92: 4a
	inc                          ; 8d93: 1a
	inc                          ; 8d94: 1a
	sta $04                      ; 8d95: 85 04
	jsr $8da8                    ; 8d97: 20 a8 8d

; --- Block at $8d9a-$8d9e ---
loc_8d9a:
	plx                          ; 8d9a: fa
	inx                          ; 8d9b: e8
	cpx.b #$08                   ; 8d9c: e0 08
	brk #$d0                     ; 8d9e: 00 d0

; --- Block at $8da1-$8da5 ---
loc_8da1:
	jsl $01f02f                  ; 8da1: 22 2f f0 01
loc_8da5:
	jmp $889c                    ; 8da5: 4c 9c 88

; --- Block at $8da8-$8e3b ---
loc_8da8:
	lda $02                      ; 8da8: a5 02
	sta $26                      ; 8daa: 85 26
	lda.b #$80                   ; 8dac: a9 80
	sta $28                      ; 8dae: 85 28
	jsr $8560                    ; 8db0: 20 60 85
loc_8db3:
	ldx $2a                      ; 8db3: a6 2a
	lda $2285,x                  ; 8db5: bd 85 22
	and.b #$20                   ; 8db8: 29 20
	.db $d0, $09                 ; 8dba: d0 09
loc_8dbc:
	lda $2283,x                  ; 8dbc: bd 83 22
	and.b #$38                   ; 8dbf: 29 38
	.db $f0, $57                 ; 8dc1: f0 57
loc_8dc3:
	sta $06                      ; 8dc3: 85 06
loc_8dc5:
	lda $00                      ; 8dc5: a5 00
	lsr                          ; 8dc7: 4a
	dec                          ; 8dc8: 3a
	clc                          ; 8dc9: 18
	adc $04                      ; 8dca: 65 04
	sta $04                      ; 8dcc: 85 04
	lda $01                      ; 8dce: a5 01
	lsr                          ; 8dd0: 4a
	dec                          ; 8dd1: 3a
	clc                          ; 8dd2: 18
	adc $05                      ; 8dd3: 65 05
	sta $05                      ; 8dd5: 85 05
	lda.b #$02                   ; 8dd7: a9 02
	sta $00                      ; 8dd9: 85 00
	sta $01                      ; 8ddb: 85 01
	lda.b #$3a                   ; 8ddd: a9 3a
	sta $07                      ; 8ddf: 85 07
	lda $2285,x                  ; 8de1: bd 85 22
	and.b #$20                   ; 8de4: 29 20
	.db $f0, $0e                 ; 8de6: f0 0e
loc_8de8:
	dec $04                      ; 8de8: c6 04
	dec $05                      ; 8dea: c6 05
	lda.b #$04                   ; 8dec: a9 04
	sta $00                      ; 8dee: 85 00
	sta $01                      ; 8df0: 85 01
	lda.b #$41                   ; 8df2: a9 41
	.db $80, $20                 ; 8df4: 80 20
loc_8df6:
	lda $06                      ; 8df6: a5 06
	and.b #$20                   ; 8df8: 29 20
	.db $f0, $04                 ; 8dfa: f0 04
loc_8dfc:
	lda.b #$2d                   ; 8dfc: a9 2d
	.db $80, $16                 ; 8dfe: 80 16
loc_8e00:
	lda $06                      ; 8e00: a5 06
	and.b #$10                   ; 8e02: 29 10
	.db $d0, $0e                 ; 8e04: d0 0e
loc_8e06:
	dec $04                      ; 8e06: c6 04
	dec $05                      ; 8e08: c6 05
	lda.b #$04                   ; 8e0a: a9 04
	sta $00                      ; 8e0c: 85 00
	sta $01                      ; 8e0e: 85 01
	lda.b #$31                   ; 8e10: a9 31
	.db $80, $02                 ; 8e12: 80 02
loc_8e14:
	lda.b #$29                   ; 8e14: a9 29
loc_8e16:
	sta $06                      ; 8e16: 85 06
	.db $80, $22                 ; 8e18: 80 22
loc_8e1a:
	lda $0a                      ; 8e1a: a5 0a
	tax                          ; 8e1c: aa
	lda $6cdb,x                  ; 8e1d: bd db 6c
	sta $07                      ; 8e20: 85 07
	lda $6cdf,x                  ; 8e22: bd df 6c
	sta $06                      ; 8e25: 85 06
	lda $ed4e                    ; 8e27: ad 4e ed
	and.b #$10                   ; 8e2a: 29 10
	.db $f0, $0e                 ; 8e2c: f0 0e
loc_8e2e:
	jsr $8ea5                    ; 8e2e: 20 a5 8e
loc_8e31:
	lda $07                      ; 8e31: a5 07
	eor.b #$40                   ; 8e33: 49 40
	sta $07                      ; 8e35: 85 07
	jsl $01f2b8                  ; 8e37: 22 b8 f2 01
loc_8e3b:
	rts                          ; 8e3b: 60

; --- Block at $8e3c-$8e95 ---
loc_8e3c:
	jsr $8ea5                    ; 8e3c: 20 a5 8e
loc_8e3f:
	lda $00                      ; 8e3f: a5 00
	tax                          ; 8e41: aa
	tdc                          ; 8e42: 7b
	tay                          ; 8e43: a8
	rep #$20                     ; 8e44: c2 20
	lda $06                      ; 8e46: a5 06
	sta ($04),y                  ; 8e48: 91 04
	iny                          ; 8e4a: c8
	iny                          ; 8e4b: c8
	inc $06                      ; 8e4c: e6 06
	dex                          ; 8e4e: ca
	.db $d0, $f5                 ; 8e4f: d0 f5
loc_8e51:
	lda $04                      ; 8e51: a5 04
	clc                          ; 8e53: 18
	adc.w #$0040                 ; 8e54: 69 40 00
	sta $04                      ; 8e57: 85 04
	tdc                          ; 8e59: 7b
	sep #$20                     ; 8e5a: e2 20
	dec $01                      ; 8e5c: c6 01
	.db $d0, $df                 ; 8e5e: d0 df
loc_8e60:
	rep #$20                     ; 8e60: c2 20
	lda $04                      ; 8e62: a5 04
	clc                          ; 8e64: 18
	adc.w #$0040                 ; 8e65: 69 40 00
	sta $04                      ; 8e68: 85 04
	tdc                          ; 8e6a: 7b
	sep #$20                     ; 8e6b: e2 20
	lda $ed4e                    ; 8e6d: ad 4e ed
	and.b #$40                   ; 8e70: 29 40
	.db $f0, $30                 ; 8e72: f0 30
loc_8e74:
	tdc                          ; 8e74: 7b
	tay                          ; 8e75: a8
	lda.b #$51                   ; 8e76: a9 51
	sta ($04),y                  ; 8e78: 91 04
	iny                          ; 8e7a: c8
	lda.b #$3a                   ; 8e7b: a9 3a
	sta ($04),y                  ; 8e7d: 91 04
	lda $00                      ; 8e7f: a5 00
	dec                          ; 8e81: 3a
	asl                          ; 8e82: 0a
	tay                          ; 8e83: a8
	lda.b #$51                   ; 8e84: a9 51
	sta ($04),y                  ; 8e86: 91 04
	iny                          ; 8e88: c8
	lda.b #$7a                   ; 8e89: a9 7a
	sta ($04),y                  ; 8e8b: 91 04
	dec $00                      ; 8e8d: c6 00
	dec $00                      ; 8e8f: c6 00
	.db $f0, $11                 ; 8e91: f0 11
loc_8e93:
	ldy.b #$02                   ; 8e93: a0 02
	brk #$a9                     ; 8e95: 00 a9

; --- Block at $8ea4-$8ea4 ---
loc_8ea4:
	rts                          ; 8ea4: 60

; --- Block at $8ea5-$8ec0 ---
loc_8ea5:
	lda $05                      ; 8ea5: a5 05
	sta $26                      ; 8ea7: 85 26
	lda.b #$40                   ; 8ea9: a9 40
	sta $28                      ; 8eab: 85 28
	jsr $8560                    ; 8ead: 20 60 85
loc_8eb0:
	lda $04                      ; 8eb0: a5 04
	asl                          ; 8eb2: 0a
	rep #$20                     ; 8eb3: c2 20
	clc                          ; 8eb5: 18
	adc $2a                      ; 8eb6: 65 2a
	adc.w #$6cfd                 ; 8eb8: 69 fd 6c
	sta $04                      ; 8ebb: 85 04
	tdc                          ; 8ebd: 7b
	sep #$20                     ; 8ebe: e2 20
	rts                          ; 8ec0: 60

; --- Block at $8ec1-$8ec9 ---
loc_8ec1:
	rep #$20                     ; 8ec1: c2 20
	asl                          ; 8ec3: 0a
	asl                          ; 8ec4: 0a
	tax                          ; 8ec5: aa
	tdc                          ; 8ec6: 7b
	sep #$20                     ; 8ec7: e2 20
	rts                          ; 8ec9: 60

; --- Block at $bcab-$bcad ---
loc_bcab:
	ldy.b #$00                   ; bcab: a0 00
	rts                          ; bcad: 60

; --- Block at $bcb0-$bcbc ---
loc_bcb0:
	ldy.b #$00                   ; bcb0: a0 00
	stz $a2                      ; bcb2: 64 a2
	.db $80, $04                 ; bcb4: 80 04
	stx $00                      ; bcb6: 86 00
	lda.b #$7e                   ; bcb8: a9 7e
loc_bcba:
	ldx.b #$fd                   ; bcba: a2 fd
	jmp ($b24c)                  ; bcbc: 6c 4c b2

; --- Block at $bcc0-$bcc2 ---
loc_bcc0:
	ldx.b #$00                   ; bcc0: a2 00
	brk #$9d                     ; bcc2: 00 9d

; --- Block at $be54-$be88 ---
loc_be54:
	phx                          ; be54: da
	lda.b #$07                   ; be55: a9 07
	sta $f314                    ; be57: 8d 14 f3
	lda $f314                    ; be5a: ad 14 f3
	sta $f315                    ; be5d: 8d 15 f3
	jsr $8513                    ; be60: 20 13 85
loc_be63:
	tdc                          ; be63: 7b
	jsr $bcc0                    ; be64: 20 c0 bc
loc_be67:
	dec $f315                    ; be67: ce 15 f3
	.db $d0, $f4                 ; be6a: d0 f4
loc_be6c:
	lda.b #$08                   ; be6c: a9 08
	sec                          ; be6e: 38
	sbc $f314                    ; be6f: ed 14 f3
	sta $f315                    ; be72: 8d 15 f3
	jsr $8513                    ; be75: 20 13 85
loc_be78:
	lda.b #$01                   ; be78: a9 01
	jsr $bcc0                    ; be7a: 20 c0 bc
loc_be7d:
	dec $f315                    ; be7d: ce 15 f3
	.db $d0, $f3                 ; be80: d0 f3
loc_be82:
	dec $f314                    ; be82: ce 14 f3
	.db $d0, $d3                 ; be85: d0 d3
loc_be87:
	plx                          ; be87: fa
	rts                          ; be88: 60

; --- Block at $c029-$c030 ---
loc_c029:
	ldx $3f                      ; c029: a6 3f
	inx                          ; c02b: e8
	stx $3f                      ; c02c: 86 3f
	lda ($3f)                    ; c02e: b2 3f
	rts                          ; c030: 60

; --- Block at $cc66-$cc68 ---
loc_cc66:
	ldx.b #$00                   ; cc66: a2 00
	brk #$20                     ; cc68: 00 20

; --- Block at $ccc7-$ccdb ---
loc_ccc7:
	and.b #$0f                   ; ccc7: 29 0f
	.db $f0, $17                 ; ccc9: f0 17
loc_cccb:
	cmp.b #$01                   ; cccb: c9 01
	.db $f0, $3f                 ; cccd: f0 3f
loc_cccf:
	cmp.b #$02                   ; cccf: c9 02
	.db $f0, $30                 ; ccd1: f0 30
loc_ccd3:
	cmp.b #$03                   ; ccd3: c9 03
	.db $f0, $17                 ; ccd5: f0 17
loc_ccd7:
	cmp.b #$04                   ; ccd7: c9 04
	.db $f0, $03                 ; ccd9: f0 03
loc_ccdb:
	jmp $cc66                    ; ccdb: 4c 66 cc

; --- Block at $ccde-$cce2 ---
loc_ccde:
	jsl $03f980                  ; ccde: 22 80 f9 03

; --- Block at $cce2-$cceb ---
loc_cce2:
	lda.b #$01                   ; cce2: a9 01
	jsr $bcc0                    ; cce4: 20 c0 bc
loc_cce7:
	jsr $bcab                    ; cce7: 20 ab bc
loc_ccea:
	tdc                          ; ccea: 7b
	jmp $bcc0                    ; cceb: 4c c0 bc

; --- Block at $ccee-$cd00 ---
loc_ccee:
	lda.b #$30                   ; ccee: a9 30
	sta $4e                      ; ccf0: 85 4e
	jsr $8513                    ; ccf2: 20 13 85
loc_ccf5:
	stz $38e6                    ; ccf5: 9c e6 38
	jsl $03fac8                  ; ccf8: 22 c8 fa 03
loc_ccfc:
	dec $4e                      ; ccfc: c6 4e
	.db $d0, $f2                 ; ccfe: d0 f2
loc_cd00:
	jmp $cce2                    ; cd00: 4c e2 cc

; --- Block at $cd03-$cd0b ---
loc_cd03:
	lda.b #$59                   ; cd03: a9 59
	jsr $f5dc                    ; cd05: 20 dc f5
loc_cd08:
	jsr $be54                    ; cd08: 20 54 be
loc_cd0b:
	jmp $cce2                    ; cd0b: 4c e2 cc

; --- Block at $cd0e-$cd12 ---
loc_cd0e:
	stz $4e                      ; cd0e: 64 4e
	ldx.b #$08                   ; cd10: a2 08
	brk #$20                     ; cd12: 00 20

; --- Block at $e015-$e02b ---
loc_e015:
	tax                          ; e015: aa
	lda $1cff00,x                ; e016: bf 00 ff 1c
	.db $10, $10                 ; e01a: 10 10
loc_e01c:
	eor.b #$ff                   ; e01c: 49 ff
	sta $1c                      ; e01e: 85 1c
	jsr $85d2                    ; e020: 20 d2 85
loc_e023:
	lda $21                      ; e023: a5 21
	eor.b #$ff                   ; e025: 49 ff
	inc                          ; e027: 1a
	.db $10, $0b                 ; e028: 10 0b
loc_e02a:
	sec                          ; e02a: 38
	rts                          ; e02b: 60

; --- Block at $e02c-$e036 ---
loc_e02c:
	sta $1c                      ; e02c: 85 1c
	jsr $85d2                    ; e02e: 20 d2 85
loc_e031:
	lda $21                      ; e031: a5 21
	.db $30, $f5                 ; e033: 30 f5
loc_e035:
	clc                          ; e035: 18
	rts                          ; e036: 60

; --- Block at $e704-$e707 ---
loc_e704:
	phx                          ; e704: da
	ldx.b #$00                   ; e705: a2 00
	brk #$a9                     ; e707: 00 a9

; --- Block at $e744-$e746 ---
loc_e744:
	ldx.b #$00                   ; e744: a2 00
	brk #$a9                     ; e746: 00 a9

; --- Block at $f5dc-$f5e1 ---
loc_f5dc:
	sta $f47f                    ; f5dc: 8d 7f f4
	phx                          ; f5df: da
	phy                          ; f5e0: 5a
	jmp $f5f2                    ; f5e1: 4c f2 f5

; --- Block at $f5e4-$f622 ---
loc_f5e4:
	phx                          ; f5e4: da
	phy                          ; f5e5: 5a
	lda $f47f                    ; f5e6: ad 7f f4
	cmp.b #$ff                   ; f5e9: c9 ff
	.db $f0, $33                 ; f5eb: f0 33
loc_f5ed:
	tax                          ; f5ed: aa
	lda $0fa350,x                ; f5ee: bf 50 a3 0f
loc_f5f2:
	pha                          ; f5f2: 48
	cmp.b #$31                   ; f5f3: c9 31
	.db $f0, $04                 ; f5f5: f0 04
loc_f5f7:
	cmp.b #$33                   ; f5f7: c9 33
	.db $d0, $04                 ; f5f9: d0 04
loc_f5fb:
	lda.b #$80                   ; f5fb: a9 80
	.db $80, $0b                 ; f5fd: 80 0b
loc_f5ff:
	lda $f485                    ; f5ff: ad 85 f4
	.db $30, $04                 ; f602: 30 04
loc_f604:
	lda.b #$c0                   ; f604: a9 c0
	.db $80, $02                 ; f606: 80 02
loc_f608:
	lda.b #$40                   ; f608: a9 40
loc_f60a:
	sta $f414                    ; f60a: 8d 14 f4
	pla                          ; f60d: 68
	sta $f413                    ; f60e: 8d 13 f4
	lda.b #$ff                   ; f611: a9 ff
	sta $f415                    ; f613: 8d 15 f4
	lda.b #$02                   ; f616: a9 02
	sta $f412                    ; f618: 8d 12 f4
	lda $f412                    ; f61b: ad 12 f4
	.db $d0, $fb                 ; f61e: d0 fb
loc_f620:
	ply                          ; f620: 7a
	plx                          ; f621: fa
	rts                          ; f622: 60

; --- Block at $f62b-$f630 ---
loc_f62b:
	lda $f457                    ; f62b: ad 57 f4
	ldx.b #$0f                   ; f62e: a2 0f
	brk #$20                     ; f630: 00 20

; --- Block at $f638-$f649 ---
loc_f638:
	phx                          ; f638: da
	pha                          ; f639: 48
	and.b #$08                   ; f63a: 29 08
	.db $f0, $32                 ; f63c: f0 32
loc_f63e:
	pla                          ; f63e: 68
	pha                          ; f63f: 48
	and.b #$f0                   ; f640: 29 f0
	.db $d0, $06                 ; f642: d0 06
loc_f644:
	jsr $f62b                    ; f644: 20 2b f6
loc_f647:
	pla                          ; f647: 68
	plx                          ; f648: fa
	rts                          ; f649: 60

; --- Block at $f64a-$f66f ---
loc_f64a:
	lsr                          ; f64a: 4a
	lsr                          ; f64b: 4a
	lsr                          ; f64c: 4a
	tax                          ; f64d: aa
	rep #$20                     ; f64e: c2 20
	lda $16ffc6,x                ; f650: bf c6 ff 16
	sta $f455                    ; f654: 8d 55 f4
	tdc                          ; f657: 7b
	sep #$20                     ; f658: e2 20
	pla                          ; f65a: 68
	and.b #$07                   ; f65b: 29 07
	tax                          ; f65d: aa
	lda $03f678,x                ; f65e: bf 78 f6 03
	sta $f452                    ; f662: 8d 52 f4
	inc $f451                    ; f665: ee 51 f4
	stz $f453                    ; f668: 9c 53 f4
	stz $f454                    ; f66b: 9c 54 f4
	plx                          ; f66e: fa
	rts                          ; f66f: 60

; --- Block at $f670-$f691 ---
loc_f670:
	pla                          ; f670: 68
	pha                          ; f671: 48
	and.b #$e0                   ; f672: 29 e0
	sta $ef88                    ; f674: 8d 88 ef
	pla                          ; f677: 68
	pha                          ; f678: 48
	lda.b #$1f                   ; f679: a9 1f
	sta $f435                    ; f67b: 8d 35 f4
	sta $f434                    ; f67e: 8d 34 f4
	sta $f433                    ; f681: 8d 33 f4
	stz $ef8a                    ; f684: 9c 8a ef
	stz $ef89                    ; f687: 9c 89 ef
	pla                          ; f68a: 68
	and.b #$07                   ; f68b: 29 07
	sta $ef87                    ; f68d: 8d 87 ef
	plx                          ; f690: fa
	rts                          ; f691: 60

; --- Block at $28003-$28003 ---
loc_28003:
	jmp $800a                    ; 28003: 4c 0a 80

; --- Block at $28006-$2801c ---
loc_28006:
	jsr $8513                    ; 28006: 20 13 85
loc_28009:
	rtl                          ; 28009: 6b
	jsr $800e                    ; 2800a: 20 0e 80
loc_2800d:
	rtl                          ; 2800d: 6b
	asl                          ; 2800e: 0a
	tax                          ; 2800f: aa
	lda $02801f,x                ; 28010: bf 1f 80 02
	sta $02                      ; 28014: 85 02
	lda $028020,x                ; 28016: bf 20 80 02
	sta $03                      ; 2801a: 85 03
	jmp.w ($0002)                ; 2801c: 6c 02 00

; --- Block at $2855c-$28563 ---
loc_2855c:
	jsr $8560                    ; 2855c: 20 60 85
loc_2855f:
	rtl                          ; 2855f: 6b
	phx                          ; 28560: da
	ldx.b #$08                   ; 28561: a2 08
	brk #$64                     ; 28563: 00 64

; --- Block at $28d2b-$28d32 ---
loc_28d2b:
	jsr $8d35                    ; 28d2b: 20 35 8d
loc_28d2e:
	rtl                          ; 28d2e: 6b
	jsr $8d35                    ; 28d2f: 20 35 8d
loc_28d32:
	jmp $8bc7                    ; 28d32: 4c c7 8b

; --- Block at $2cc96-$2ccbe ---
loc_2cc96:
	pha                          ; 2cc96: 48
	jsr $bcb0                    ; 2cc97: 20 b0 bc
loc_2cc9a:
	pla                          ; 2cc9a: 68
	jsr $ccc7                    ; 2cc9b: 20 c7 cc
loc_2cc9e:
	rtl                          ; 2cc9e: 6b
	stz $f482                    ; 2cc9f: 9c 82 f4
	jsr $c029                    ; 2cca2: 20 29 c0
loc_2cca5:
	pha                          ; 2cca5: 48
	lsr                          ; 2cca6: 4a
	lsr                          ; 2cca7: 4a
	lsr                          ; 2cca8: 4a
	lsr                          ; 2cca9: 4a
	lsr                          ; 2ccaa: 4a
	lsr                          ; 2ccab: 4a
	tay                          ; 2ccac: a8
	pla                          ; 2ccad: 68
	and.b #$3f                   ; 2ccae: 29 3f
	sta $f2b4,y                  ; 2ccb0: 99 b4 f2
	jsr $8bcc                    ; 2ccb3: 20 cc 8b
loc_2ccb6:
	jsr $8bc7                    ; 2ccb6: 20 c7 8b
loc_2ccb9:
	lda $f482                    ; 2ccb9: ad 82 f4
	.db $f0, $03                 ; 2ccbc: f0 03
loc_2ccbe:
	jmp $bcab                    ; 2ccbe: 4c ab bc

; --- Block at $2ccc1-$2ccdb ---
loc_2ccc1:
	jsr $bcb0                    ; 2ccc1: 20 b0 bc
loc_2ccc4:
	lda $efa6                    ; 2ccc4: ad a6 ef
	and.b #$0f                   ; 2ccc7: 29 0f
	.db $f0, $17                 ; 2ccc9: f0 17
loc_2cccb:
	cmp.b #$01                   ; 2cccb: c9 01
	.db $f0, $3f                 ; 2cccd: f0 3f
loc_2cccf:
	cmp.b #$02                   ; 2cccf: c9 02
	.db $f0, $30                 ; 2ccd1: f0 30
loc_2ccd3:
	cmp.b #$03                   ; 2ccd3: c9 03
	.db $f0, $17                 ; 2ccd5: f0 17
loc_2ccd7:
	cmp.b #$04                   ; 2ccd7: c9 04
	.db $f0, $03                 ; 2ccd9: f0 03
loc_2ccdb:
	jmp $cc66                    ; 2ccdb: 4c 66 cc

; --- Block at $2ccde-$2cce2 ---
loc_2ccde:
	jsl $03f980                  ; 2ccde: 22 80 f9 03

; --- Block at $2cce2-$2cceb ---
loc_2cce2:
	lda.b #$01                   ; 2cce2: a9 01
	jsr $bcc0                    ; 2cce4: 20 c0 bc
loc_2cce7:
	jsr $bcab                    ; 2cce7: 20 ab bc
loc_2ccea:
	tdc                          ; 2ccea: 7b
	jmp $bcc0                    ; 2cceb: 4c c0 bc

; --- Block at $2ccee-$2cd00 ---
loc_2ccee:
	lda.b #$30                   ; 2ccee: a9 30
	sta $4e                      ; 2ccf0: 85 4e
	jsr $8513                    ; 2ccf2: 20 13 85
loc_2ccf5:
	stz $38e6                    ; 2ccf5: 9c e6 38
	jsl $03fac8                  ; 2ccf8: 22 c8 fa 03
loc_2ccfc:
	dec $4e                      ; 2ccfc: c6 4e
	.db $d0, $f2                 ; 2ccfe: d0 f2
loc_2cd00:
	jmp $cce2                    ; 2cd00: 4c e2 cc

; --- Block at $2cd03-$2cd0b ---
loc_2cd03:
	lda.b #$59                   ; 2cd03: a9 59
	jsr $f5dc                    ; 2cd05: 20 dc f5
loc_2cd08:
	jsr $be54                    ; 2cd08: 20 54 be
loc_2cd0b:
	jmp $cce2                    ; 2cd0b: 4c e2 cc

; --- Block at $2cd0e-$2cd12 ---
loc_2cd0e:
	stz $4e                      ; 2cd0e: 64 4e
	ldx.b #$08                   ; 2cd10: a2 08
	brk #$20                     ; 2cd12: 00 20

; --- Block at $2e011-$2e02b ---
loc_2e011:
	jsr $e015                    ; 2e011: 20 15 e0
loc_2e014:
	rtl                          ; 2e014: 6b
	tax                          ; 2e015: aa
	lda $1cff00,x                ; 2e016: bf 00 ff 1c
	.db $10, $10                 ; 2e01a: 10 10
loc_2e01c:
	eor.b #$ff                   ; 2e01c: 49 ff
	sta $1c                      ; 2e01e: 85 1c
	jsr $85d2                    ; 2e020: 20 d2 85
loc_2e023:
	lda $21                      ; 2e023: a5 21
	eor.b #$ff                   ; 2e025: 49 ff
	inc                          ; 2e027: 1a
	.db $10, $0b                 ; 2e028: 10 0b
loc_2e02a:
	sec                          ; 2e02a: 38
	rts                          ; 2e02b: 60

; --- Block at $2e02c-$2e036 ---
loc_2e02c:
	sta $1c                      ; 2e02c: 85 1c
	jsr $85d2                    ; 2e02e: 20 d2 85
loc_2e031:
	lda $21                      ; 2e031: a5 21
	.db $30, $f5                 ; 2e033: 30 f5
loc_2e035:
	clc                          ; 2e035: 18
	rts                          ; 2e036: 60

; --- Block at $2e700-$2e707 ---
loc_2e700:
	jsr $e704                    ; 2e700: 20 04 e7
loc_2e703:
	rtl                          ; 2e703: 6b
	phx                          ; 2e704: da
	ldx.b #$00                   ; 2e705: a2 00
	brk #$a9                     ; 2e707: 00 a9

; --- Block at $2e740-$2e746 ---
loc_2e740:
	jsr $e744                    ; 2e740: 20 44 e7
loc_2e743:
	rtl                          ; 2e743: 6b
	ldx.b #$00                   ; 2e744: a2 00
	brk #$a9                     ; 2e746: 00 a9

; --- Block at $2f5d4-$2f5e1 ---
loc_2f5d4:
	jsr $f5dc                    ; 2f5d4: 20 dc f5
loc_2f5d7:
	rtl                          ; 2f5d7: 6b
	jsr $f5e4                    ; 2f5d8: 20 e4 f5
loc_2f5db:
	rtl                          ; 2f5db: 6b
	sta $f47f                    ; 2f5dc: 8d 7f f4
	phx                          ; 2f5df: da
	phy                          ; 2f5e0: 5a
	jmp $f5f2                    ; 2f5e1: 4c f2 f5

; --- Block at $2f623-$2f630 ---
loc_2f623:
	jsr $f638                    ; 2f623: 20 38 f6
loc_2f626:
	rtl                          ; 2f626: 6b
	jsr $f62b                    ; 2f627: 20 2b f6
loc_2f62a:
	rtl                          ; 2f62a: 6b
	lda $f457                    ; 2f62b: ad 57 f4
	ldx.b #$0f                   ; 2f62e: a2 0f
	brk #$20                     ; 2f630: 00 20

