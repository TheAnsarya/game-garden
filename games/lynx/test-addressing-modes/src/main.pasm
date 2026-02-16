; =============================================================================
; Test Addressing Modes - Atari Lynx Test ROM
; Tests all 65SC02 addressing modes
; =============================================================================

.platform "lynx"

; =============================================================================
; Zero Page Variables
; =============================================================================

.segment "ZEROPAGE"
.org $00

zp_val:		.ds 1		; Zero page value
zp_ptr:		.ds 2		; Zero page pointer
zp_idx:		.ds 1		; Zero page for indexed

; =============================================================================
; Fixed Test Data
; =============================================================================

.segment "DATA"
.org $0300

test_data:
	.byte $11, $22, $33, $44, $55, $66, $77, $88

jump_table:
	.word target_a
	.word target_b
	.word target_c

; =============================================================================
; Code Segment
; =============================================================================

.segment "CODE"
.org $0200

; -----------------------------------------------------------------------------
; Entry Point
; -----------------------------------------------------------------------------
reset:
	sei
	cld
	ldx #$ff
	txs

	; Run addressing mode tests
	jsr test_implied
	jsr test_accumulator
	jsr test_immediate
	jsr test_zero_page
	jsr test_absolute
	jsr test_indexed
	jsr test_indirect
	jsr test_indirect_65c02
	jsr test_relative

	; Done
.loop:
	bra .loop

; =============================================================================
; Test 1: Implied Addressing
; No operand - operation is implicit
; =============================================================================
test_implied:
	clc			; Clear carry
	sec			; Set carry
	cld			; Clear decimal
	sed			; Set decimal
	cli			; Clear interrupt disable
	sei			; Set interrupt disable
	clv			; Clear overflow
	nop			; No operation
	tax			; Transfer A to X
	tay			; Transfer A to Y
	txa			; Transfer X to A
	tya			; Transfer Y to A
	txs			; Transfer X to SP
	tsx			; Transfer SP to X
	pha			; Push A
	pla			; Pull A
	php			; Push processor status
	plp			; Pull processor status
	cld			; Restore decimal mode off
	rts

; =============================================================================
; Test 2: Accumulator Addressing
; Operates on accumulator
; =============================================================================
test_accumulator:
	lda #$80
	asl			; Shift left (should get $00, C=1)
	lda #$01
	lsr			; Shift right (should get $00, C=1)
	lda #$80
	rol			; Rotate left through carry
	lda #$01
	ror			; Rotate right through carry
	; 65SC02 additions
	lda #$10
	inc			; Increment A (should get $11)
	dec			; Decrement A (should get $10)
	rts

; =============================================================================
; Test 3: Immediate Addressing
; Operand is a constant value
; =============================================================================
test_immediate:
	lda #$12		; Load immediate
	ldx #$34		; Load X immediate
	ldy #$56		; Load Y immediate
	cmp #$12		; Compare immediate
	cpx #$34		; Compare X immediate
	cpy #$56		; Compare Y immediate
	adc #$10		; Add with carry immediate
	sbc #$05		; Subtract with borrow immediate
	and #$0f		; AND immediate
	ora #$f0		; OR immediate
	eor #$ff		; XOR immediate
	; BIT immediate is 65SC02 only
	bit #$ff		; Test bits immediate
	rts

; =============================================================================
; Test 4: Zero Page Addressing
; 8-bit address in zero page ($00-$FF)
; =============================================================================
test_zero_page:
	lda #$42
	sta zp_val		; Store to zero page
	lda zp_val		; Load from zero page
	asl zp_val		; Shift left zero page
	lsr zp_val		; Shift right zero page
	rol zp_val		; Rotate left zero page
	ror zp_val		; Rotate right zero page
	inc zp_val		; Increment zero page
	dec zp_val		; Decrement zero page
	bit zp_val		; Test bits zero page
	; 65SC02 additions
	stz zp_val		; Store zero to zero page
	trb zp_val		; Test and reset bits
	tsb zp_val		; Test and set bits
	rts

; =============================================================================
; Test 5: Absolute Addressing
; Full 16-bit address
; =============================================================================
test_absolute:
	lda #$99
	sta $0300		; Store absolute
	lda $0300		; Load absolute
	asl $0300		; Shift left absolute
	lsr $0300		; Shift right absolute
	rol $0300		; Rotate left absolute
	ror $0300		; Rotate right absolute
	inc $0300		; Increment absolute
	dec $0300		; Decrement absolute
	bit $0300		; Test bits absolute
	; 65SC02 additions
	stz $0300		; Store zero absolute
	trb $0300		; Test and reset bits absolute
	tsb $0300		; Test and set bits absolute
	rts

; =============================================================================
; Test 6: Indexed Addressing
; Address + X or Y index
; =============================================================================
test_indexed:
	; Zero Page,X
	ldx #$01
	lda #$55
	sta zp_val,x		; Store zero page,X
	lda zp_val,x		; Load zero page,X
	inc zp_val,x		; Increment zero page,X
	dec zp_val,x		; Decrement zero page,X
	stz zp_val,x		; Store zero (65SC02)

	; Zero Page,Y (only LDX, STX)
	ldy #$02
	ldx zp_val,y		; Load X zero page,Y

	; Absolute,X
	ldx #$02
	lda test_data,x		; Load absolute,X (should get $33)
	sta $0310,x		; Store absolute,X
	inc $0310,x		; Increment absolute,X
	dec $0310,x		; Decrement absolute,X
	stz $0310,x		; Store zero absolute,X (65SC02)

	; Absolute,Y
	ldy #$03
	lda test_data,y		; Load absolute,Y (should get $44)
	sta $0320,y		; Store absolute,Y

	rts

; =============================================================================
; Test 7: Indirect Addressing (Standard 6502)
; Access memory through a pointer
; =============================================================================
test_indirect:
	; Set up pointer to test_data
	lda #<test_data
	sta zp_ptr
	lda #>test_data
	sta zp_ptr+1

	; (Indirect,X) - Pre-indexed indirect
	ldx #$00
	lda (zp_ptr,x)		; Load via pointer at zp_ptr+X

	; (Indirect),Y - Post-indexed indirect
	ldy #$04
	lda (zp_ptr),y		; Load test_data[4] = $55
	sta (zp_ptr),y		; Store indirect,Y
	cmp (zp_ptr),y		; Compare indirect,Y
	adc (zp_ptr),y		; Add indirect,Y
	sbc (zp_ptr),y		; Subtract indirect,Y
	and (zp_ptr),y		; AND indirect,Y
	ora (zp_ptr),y		; OR indirect,Y
	eor (zp_ptr),y		; XOR indirect,Y

	; JMP (Indirect)
	lda #<.after_jmp
	sta zp_ptr
	lda #>.after_jmp
	sta zp_ptr+1
	jmp (zp_ptr)
.after_jmp:

	rts

; =============================================================================
; Test 8: 65SC02 New Indirect Modes
; =============================================================================
test_indirect_65c02:
	; Set up pointer
	lda #<test_data
	sta zp_ptr
	lda #>test_data
	sta zp_ptr+1

	; (Zero Page) - Indirect without indexing (65SC02 only)
	lda (zp_ptr)		; Load via pointer directly
	sta (zp_ptr)		; Store indirect
	cmp (zp_ptr)		; Compare indirect
	adc (zp_ptr)		; Add indirect
	sbc (zp_ptr)		; Subtract indirect
	and (zp_ptr)		; AND indirect
	ora (zp_ptr)		; OR indirect
	eor (zp_ptr)		; XOR indirect

	; JMP (Absolute,X) - Absolute indexed indirect (65SC02 only)
	ldx #$00
	jmp (jump_table,x)	; Jump via table[X]

target_a:
	ldx #$02
	jmp (jump_table,x)	; Jump to target_b

target_b:
	ldx #$04
	jmp (jump_table,x)	; Jump to target_c

target_c:
	rts

; =============================================================================
; Test 9: Relative Addressing
; Branch instructions (signed 8-bit offset)
; =============================================================================
test_relative:
	; Standard branch instructions
	clc
	bcc .br1		; Branch if carry clear
.br1:
	sec
	bcs .br2		; Branch if carry set
.br2:
	lda #$00
	beq .br3		; Branch if equal (zero)
.br3:
	lda #$01
	bne .br4		; Branch if not equal
.br4:
	lda #$80
	bmi .br5		; Branch if minus
.br5:
	lda #$00
	bpl .br6		; Branch if plus
.br6:
	clv
	bvc .br7		; Branch if overflow clear
.br7:

	; 65SC02 BRA - Branch Always
	bra .br8		; Unconditional branch
	nop			; Should not execute
.br8:

	; 65SC02 BBR/BBS - Branch on Bit Reset/Set
	; Note: These are Rockwell/WDC extensions, may not be in 65SC02
	; Skipping for standard 65SC02 compatibility

	rts

; =============================================================================
; Vectors
; =============================================================================
.segment "VECTORS"
.org $fffa
	.word reset
	.word reset
	.word reset

