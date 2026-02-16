; =============================================================================
; Test 65SC02 Opcodes - Atari Lynx Test ROM
; Tests all WDC 65SC02-specific instructions
; =============================================================================

.platform "lynx"

; =============================================================================
; Zero Page Variables
; =============================================================================

.segment "ZEROPAGE"
.org $00

zp_temp:	.ds 2		; Temporary variable
zp_ptr:		.ds 2		; Pointer for indirect addressing
zp_result:	.ds 1		; Test result

; =============================================================================
; Code Segment - Loaded at $0200
; =============================================================================

.segment "CODE"
.org $0200

; -----------------------------------------------------------------------------
; Entry Point
; -----------------------------------------------------------------------------
reset:
	sei			; Disable interrupts
	cld			; Clear decimal mode
	ldx #$ff		; Initialize stack
	txs

	; Initialize zero page
	jsr test_stz		; Test STZ instruction
	jsr test_branch		; Test BRA instruction
	jsr test_stack		; Test PHX/PLX/PHY/PLY
	jsr test_bits		; Test TRB/TSB
	jsr test_indirect	; Test indirect addressing modes
	jsr test_increment	; Test INC/DEC Accumulator

	; Done - loop forever
.loop:
	bra .loop

; =============================================================================
; Test STZ (Store Zero) - 65SC02 only
; =============================================================================
test_stz:
	; STZ direct page
	lda #$ff
	sta zp_temp
	stz zp_temp		; Should store $00
	lda zp_temp
	bne .fail_dp

	; STZ direct page,X
	lda #$ff
	sta zp_temp+1
	ldx #$01
	stz zp_temp,x		; Should store $00 at zp_temp+1
	lda zp_temp+1
	bne .fail_dpx

	; STZ absolute
	lda #$ff
	sta $0300
	stz $0300		; Should store $00
	lda $0300
	bne .fail_abs

	; STZ absolute,X
	lda #$ff
	sta $0301
	ldx #$01
	stz $0300,x		; Should store $00 at $0301
	lda $0301
	bne .fail_absx

	rts

.fail_dp:
.fail_dpx:
.fail_abs:
.fail_absx:
	brk			; Test failed

; =============================================================================
; Test BRA (Branch Always) - 65SC02 only
; =============================================================================
test_branch:
	ldx #$00

	; Test forward branch
	bra .forward
	inx			; Should be skipped
	inx
.forward:
	cpx #$00
	bne .fail_forward

	; Test backward branch
	ldy #$03
.backward_loop:
	dey
	bne .backward_loop	; Loop until Y = 0
	cpy #$00
	bne .fail_backward

	rts

.fail_forward:
.fail_backward:
	brk

; =============================================================================
; Test PHX/PLX/PHY/PLY - 65SC02 only
; =============================================================================
test_stack:
	; Test PHX/PLX
	ldx #$42
	phx			; Push X
	ldx #$00		; Clear X
	plx			; Pull X - should restore $42
	cpx #$42
	bne .fail_x

	; Test PHY/PLY
	ldy #$37
	phy			; Push Y
	ldy #$00		; Clear Y
	ply			; Pull Y - should restore $37
	cpy #$37
	bne .fail_y

	; Test push/pull order
	ldx #$11
	ldy #$22
	phx
	phy
	ldx #$00
	ldy #$00
	ply			; Should get $22 (LIFO)
	plx			; Should get $11
	cpy #$22
	bne .fail_order
	cpx #$11
	bne .fail_order

	rts

.fail_x:
.fail_y:
.fail_order:
	brk

; =============================================================================
; Test TRB/TSB (Test and Reset/Set Bits) - 65SC02 only
; =============================================================================
test_bits:
	; TSB - Test and Set Bits
	lda #$f0
	sta zp_temp
	lda #$0f		; Bits to set
	tsb zp_temp		; zp_temp should be $ff
	lda zp_temp
	cmp #$ff
	bne .fail_tsb

	; TRB - Test and Reset Bits
	lda #$ff
	sta zp_temp
	lda #$f0		; Bits to reset
	trb zp_temp		; zp_temp should be $0f
	lda zp_temp
	cmp #$0f
	bne .fail_trb

	; Test Z flag with TRB
	lda #$ff
	sta zp_temp
	lda #$ff		; All bits overlap
	trb zp_temp		; Z should be clear (bits were set)
	beq .fail_trb_z		; Should NOT branch

	; Test Z flag with no overlap
	lda #$0f
	sta zp_temp
	lda #$f0		; No overlap
	trb zp_temp		; Z should be set (no bits overlapped)
	bne .fail_trb_z2	; Should NOT branch

	rts

.fail_tsb:
.fail_trb:
.fail_trb_z:
.fail_trb_z2:
	brk

; =============================================================================
; Test Indirect Addressing Modes - 65SC02 only
; =============================================================================
test_indirect:
	; Set up pointer at zp_ptr -> $0300
	lda #$00
	sta zp_ptr
	lda #$03
	sta zp_ptr+1

	; Store test value at $0300
	lda #$55
	sta $0300

	; LDA (zp) - Indirect without indexing (65SC02 only)
	lda (zp_ptr)		; Should load $55
	cmp #$55
	bne .fail_ind

	; STA (zp)
	lda #$aa
	sta (zp_ptr)		; Store at $0300
	lda $0300
	cmp #$aa
	bne .fail_ind_sta

	; CMP (zp)
	lda #$aa
	cmp (zp_ptr)		; Compare with $0300
	bne .fail_ind_cmp

	; ORA (zp)
	lda #$00
	sta $0300
	lda #$0f
	ora (zp_ptr)		; Should be $0f
	cmp #$0f
	bne .fail_ind_ora

	; AND (zp)
	lda #$ff
	sta $0300
	lda #$0f
	and (zp_ptr)		; Should be $0f
	cmp #$0f
	bne .fail_ind_and

	; EOR (zp)
	lda #$ff
	sta $0300
	lda #$f0
	eor (zp_ptr)		; Should be $0f
	cmp #$0f
	bne .fail_ind_eor

	; ADC (zp)
	lda #$10
	sta $0300
	clc
	lda #$05
	adc (zp_ptr)		; Should be $15
	cmp #$15
	bne .fail_ind_adc

	; SBC (zp)
	lda #$20
	sta $0300
	sec
	lda #$25
	sbc (zp_ptr)		; Should be $05
	cmp #$05
	bne .fail_ind_sbc

	rts

.fail_ind:
.fail_ind_sta:
.fail_ind_cmp:
.fail_ind_ora:
.fail_ind_and:
.fail_ind_eor:
.fail_ind_adc:
.fail_ind_sbc:
	brk

; =============================================================================
; Test INC/DEC Accumulator - 65SC02 only
; =============================================================================
test_increment:
	; INC A
	lda #$41
	inc			; Should be $42 (no operand = accumulator)
	cmp #$42
	bne .fail_inc_a

	; DEC A
	lda #$42
	dec			; Should be $41 (no operand = accumulator)
	cmp #$41
	bne .fail_dec_a

	; INC A wrap
	lda #$ff
	inc			; Should wrap to $00
	bne .fail_inc_wrap

	; DEC A wrap
	lda #$00
	dec			; Should wrap to $ff
	cmp #$ff
	bne .fail_dec_wrap

	rts

.fail_inc_a:
.fail_dec_a:
.fail_inc_wrap:
.fail_dec_wrap:
	brk

; =============================================================================
; Vectors - Point back to reset for now
; =============================================================================
.segment "VECTORS"
.org $fffa
	.word reset		; NMI vector
	.word reset		; Reset vector
	.word reset		; IRQ/BRK vector

