; Disassembled by Peony
; Platform: Atari Lynx
; Format: LNX
; CartName: chipchal.lnx
; Manufacturer: Atari
; Rotation: None
; Bank0Size: 128KB
; Bank1Size: None
; Version: 1
; RomSize: 128KB

.system:Atari Lynx

; --- Block at $0200-$0226 ---
reset:
	nop                     ; 0200: fb          
	cmp $bf                 ; 0201: c5 bf       
	nop                     ; 0203: a3          
	txs                     ; 0204: 9a          
	nop                     ; 0205: f7          
	ora $80,x               ; 0206: 15 80       
	adc ($68)               ; 0208: 72 68       
	lda $b931,x             ; 020a: bd 31 b9    
	ror $0420               ; 020d: 6e 20 04    
	dex                     ; 0210: ca          
	lsr $5542,x             ; 0211: 5e 42 55    
	cpx $62                 ; 0214: e4 62       
	nop                     ; 0216: d3          
	plp                     ; 0217: 28          
	cpy $dc                 ; 0218: c4 dc       
	inc $9a57               ; 021a: ee 57 9a    
	nop                     ; 021d: 97          
	bvc loc_025c            ; 021e: 50 3c       
; Referenced by: Branch from $021e
loc_0220:
	nop                     ; 0220: db          
	bcs $01d5               ; 0221: b0 b2       
; Referenced by: Branch from $0221
loc_0223:
	rol $e68d               ; 0223: 2e 8d e6    
	jmp ($0eb2,x)           ; 0226: 7c b2 0e    

; --- Block at $025c-$0289 ---
; Referenced by: Branch from $021e
loc_025c:
	dec $a99b               ; 025c: ce 9b a9    
	nop                     ; 025f: d4          
	sta $71                 ; 0260: 85 71       
	plx                     ; 0262: fa          
	nop                     ; 0263: 1f          
	stx $02                 ; 0264: 86 02       
	plp                     ; 0266: 28          
	adc $e66e,y             ; 0267: 79 6e e6    
	ldy $b5c1,x             ; 026a: bc c1 b5    
	sta $ef04,x             ; 026d: 9d 04 ef    
	eor $e64e,x             ; 0270: 5d 4e e6    
	dey                     ; 0273: 88          
	pha                     ; 0274: 48          
	sta ($6c)               ; 0275: 92 6c       
	dec $15                 ; 0277: c6 15       
	cpx $f8                 ; 0279: e4 f8       
	nop                     ; 027b: 5b          
	nop                     ; 027c: c3          
	sta $d0                 ; 027d: 85 d0       
	tax                     ; 027f: aa          
	cmp ($a2)               ; 0280: d2 a2       
	lda $9935,y             ; 0282: b9 35 99    
	bit $fec4,x             ; 0285: 3c c4 fe    
	nop                     ; 0288: 4f          
	jmp loc_d51d            ; 0289: 4c 1d d5    

; --- Block at $d51d-$d558 ---
; Referenced by: Jump from $0289
loc_d51d:
	stx $4e06               ; d51d: 8e 06 4e    
	nop                     ; d520: 07          
	nop                     ; d521: fc          
	lda $630d               ; d522: ad 0d 63    
	ora #$60                ; d525: 09 60       
	and #$7f                ; d527: 29 7f       
	sta $320d               ; d529: 8d 0d 32    
	sta ($20),y             ; d52c: 91 20       
	ora #$6c                ; d52e: 09 6c       
	nop                     ; d530: af          
	lda $630e               ; d531: ad 0e 63    
	ora #$01                ; d534: 09 01       
	sta $320e               ; d536: 8d 0e 32    
	sta ($7b)               ; d539: 92 7b       
	adc $62a2,x             ; d53b: 7d a2 62    
	sta $00                 ; d53e: 85 00       
	stx $01                 ; d540: 86 01       
	ldy #$14                ; d542: a0 14       
	ldx #$07                ; d544: a2 07       
	tya                     ; d546: 98          
	sta ($00)               ; d547: 92 00       
	clc                     ; d549: 18          
	adc $00                 ; d54a: 65 00       
	sta $00                 ; d54c: 85 00       
	bit $65,x               ; d54e: 34 65       
	ora ($85,x)             ; d550: 01 85       
	ora ($ca,x)             ; d552: 01 ca       
	bne loc_d545            ; d554: d0 ef       
; Referenced by: Branch from $d554
loc_d556:
	bit $92,x               ; d556: 34 92       
	brk                     ; d558: 00          

; --- Block at $d545-$d546 ---
; Referenced by: Branch from $d554
loc_d545:
	nop                     ; d545: 07          

