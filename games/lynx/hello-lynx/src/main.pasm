; =============================================================================
; Hello Lynx - Minimal Atari Lynx Example
; Demonstrates .platform directive and 65SC02 instructions
; =============================================================================

; Set platform to Atari Lynx (WDC 65SC02)
.platform "lynx"

; =============================================================================
; Lynx Memory Map Constants
; =============================================================================

; Hardware register base addresses
SUZY_BASE	= $fc00		; Suzy (graphics coprocessor)
MIKEY_BASE	= $fd00		; Mikey (audio/timers)

; Mikey registers
MIKEY_INTSET	= MIKEY_BASE + $80	; Interrupt set register
MIKEY_INTRST	= MIKEY_BASE + $81	; Interrupt reset register
MIKEY_IODIR	= MIKEY_BASE + $8a	; I/O direction register
MIKEY_IODAT	= MIKEY_BASE + $8b	; I/O data register
MIKEY_SERCTL	= MIKEY_BASE + $8c	; Serial control
MIKEY_SERDAT	= MIKEY_BASE + $8d	; Serial data
MIKEY_SDONEACK	= MIKEY_BASE + $8e	; Serial done acknowledge
MIKEY_CPUSLEEP	= MIKEY_BASE + $91	; CPU sleep register
MIKEY_DISPCTL	= MIKEY_BASE + $92	; Display control
MIKEY_PBKUP	= MIKEY_BASE + $93	; Display backup
MIKEY_GREEN	= MIKEY_BASE + $a0	; Green palette (16 bytes)
MIKEY_BLUERED	= MIKEY_BASE + $b0	; Blue/Red palette (16 bytes)

; Suzy registers
SUZY_TMPADR	= SUZY_BASE + $00	; Temporary address
SUZY_SPRSYS	= SUZY_BASE + $91	; Sprite system control
SUZY_SPRCTL0	= SUZY_BASE + $80	; Sprite control 0
SUZY_SPRCTL1	= SUZY_BASE + $81	; Sprite control 1
SUZY_SPRCOLL	= SUZY_BASE + $82	; Sprite collision

; =============================================================================
; Zero Page Variables
; =============================================================================

.segment "ZEROPAGE"
.org $00

frame_count:	.ds 2		; Frame counter
temp:		.ds 2		; Temporary variable

; =============================================================================
; Code Segment
; =============================================================================

.segment "CODE"
.org $0200

; -----------------------------------------------------------------------------
; Reset vector entry point
; -----------------------------------------------------------------------------
reset:
	; Disable interrupts and clear decimal mode
	sei
	cld

	; Initialize stack pointer
	ldx #$ff
	txs

	; Initialize zero page variables using STZ (65C02)
	stz frame_count
	stz frame_count+1
	stz temp
	stz temp+1

	; Initialize hardware
	jsr init_mikey
	jsr init_suzy

	; Enable interrupts
	cli

; -----------------------------------------------------------------------------
; Main loop
; -----------------------------------------------------------------------------
main_loop:
	; Wait for VBlank using BRA (65C02 unconditional branch)
	jsr wait_vblank

	; Increment frame counter
	inc frame_count
	bne .no_carry
	inc frame_count+1
.no_carry:

	; Loop forever
	bra main_loop

; -----------------------------------------------------------------------------
; Initialize Mikey hardware
; -----------------------------------------------------------------------------
init_mikey:
	; Set up display control
	lda #$08
	sta MIKEY_DISPCTL

	; Initialize palette - simple grayscale
	ldx #$0f
.palette_loop:
	txa
	sta MIKEY_GREEN,x
	txa
	sta MIKEY_BLUERED,x
	dex
	bpl .palette_loop

	rts

; -----------------------------------------------------------------------------
; Initialize Suzy hardware
; -----------------------------------------------------------------------------
init_suzy:
	; Enable Suzy
	lda #$00
	sta SUZY_SPRSYS

	rts

; -----------------------------------------------------------------------------
; Wait for VBlank
; Uses PHX/PLX (65C02 push/pull X)
; -----------------------------------------------------------------------------
wait_vblank:
	phx			; Save X (65C02)
	phy			; Save Y (65C02)

	; Simple delay loop (replace with proper VBlank detection)
	ldx #$ff
.wait_outer:
	ldy #$ff
.wait_inner:
	nop
	dey
	bne .wait_inner
	dex
	bne .wait_outer

	ply			; Restore Y (65C02)
	plx			; Restore X (65C02)
	rts

; -----------------------------------------------------------------------------
; IRQ/BRK handler
; -----------------------------------------------------------------------------
irq_handler:
	rti

; -----------------------------------------------------------------------------
; NMI handler
; -----------------------------------------------------------------------------
nmi_handler:
	rti

; =============================================================================
; Vectors
; =============================================================================

.segment "VECTORS"
.org $fff8

	.dw nmi_handler		; NMI vector
	.dw reset		; Reset vector
	.dw irq_handler		; IRQ/BRK vector
