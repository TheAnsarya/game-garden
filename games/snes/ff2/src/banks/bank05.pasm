; Disassembled by Peony
; Platform: SNES
; Mapper: FINAL FANTASY 2
; MapMode: LoRom
; RomSize: 1024K
; Banks: 32
; CopierHeader: False

.snes

; --- Block at $8000-$807d ---
bank5_start:
	asl $2c0d,x                  ; 8000: 1e 0d 2c
	and $100020                  ; 8003: 2f 20 00 10
	pha                          ; 8007: 48
	cop #$d0                     ; 8008: 02 d0
	sbc $1f3f5f,x                ; 800a: ff 5f 3f 1f
	sbc $5d480e                  ; 800e: ef 0e 48 5d
	ora $d3,s                    ; 8012: 03 d3
	cmp $af,x                    ; 8014: d5 af
	sbc $e502                    ; 8016: ed 02 e5
	cli                          ; 8019: 58
	sbc ($f3),y                  ; 801a: f1 f3
	sbc ($ff,x)                  ; 801c: e1 ff
	ora.l $002f11,x              ; 801e: 1f 11 2f 00
	pha                          ; 8022: 48
	cmp $5f6a2c,x                ; 8023: df 2c 6a 5f
	sbc ($f5),y                  ; 8027: f1 f5
	lda $48fe,x                  ; 8029: bd fe 48
	cpx.b #$4e                   ; 802c: e0 4e
	and ($e7,x)                  ; 802e: 21 e7
	ldx $a4                      ; 8030: a6 a4
	ldy $e3                      ; 8032: a4 e3
	sec                          ; 8034: 38
	eor ($01,x)                  ; 8035: 41 01
	nop                          ; 8037: ea
	.db $f0, $32                 ; 8038: f0 32
loc_803a:
	lda $0d,x                    ; 803a: b5 0d
	.db $30, $48                 ; 803c: 30 48
loc_803e:
	ora $0edd,x                  ; 803e: 1d dd 0e
	lsr $204e                    ; 8041: 4e 4e 20
	and $482e,x                  ; 8044: 3d 2e 48
	ora $01f4f4                  ; 8047: 0f f4 f4 01
	lda ($e0),y                  ; 804b: b1 e0
	and $483c,x                  ; 804d: 3d 3c 48
	and $dd1f5b,x                ; 8050: 3f 5b 1f dd
	sbc ($1f),y                  ; 8054: f1 1f
	ora ($11),y                  ; 8056: 11 11
	sec                          ; 8058: 38
	and $c63dc0,x                ; 8059: 3f c0 3d c6
	eor $b4                      ; 805d: 45 b4
	cmp $2048ce,x                ; 805f: df ce 48 20
	sbc ($c2,s),y                ; 8063: f3 c2
	and $0dec0f                  ; 8065: 2f 0f ec 0d
	eor $3338,x                  ; 8069: 5d 38 33
loc_806c:
	ora ($0e,s),y                ; 806c: 13 0e
	lsr $21ed                    ; 806e: 4e ed 21
	adc ($2b,x)                  ; 8071: 61 2b
	pha                          ; 8073: 48
	rol $42ed,x                  ; 8074: 3e ed 42
	cpy.b #$3d                   ; 8077: c0 3d
	and $58dc10,x                ; 8079: 3f 10 dc 58
	brk #$e1                     ; 807d: 00 e1

; --- Block at $8042-$804b ---
loc_8042:
	lsr $3d20                    ; 8042: 4e 20 3d
	rol $0f48                    ; 8045: 2e 48 0f
	pea $01f4                    ; 8048: f4 f4 01

; --- Block at $8086-$8098 ---
loc_8086:
	eor ($01),y                  ; 8086: 51 01
	sbc ($d1,x)                  ; 8088: e1 d1
	pei $d2                      ; 808a: d4 d2
	dec $d0,x                    ; 808c: d6 d0
	pha                          ; 808e: 48
	.db $10, $b1                 ; 808f: 10 b1
loc_8091:
	plx                          ; 8091: fa
	lsr $614b                    ; 8092: 4e 4b 61
	sep #$1e                     ; 8095: e2 1e
	pha                          ; 8097: 48
	brk #$c6                     ; 8098: 00 c6

