; =============================================================================
; Test Hardware Registers - Atari Lynx Test ROM
; Tests Suzy and Mikey hardware register access
; =============================================================================

.platform "lynx"

; =============================================================================
; Hardware Register Definitions - Mikey ($FD00-$FDFF)
; =============================================================================

; Timer registers
TIM0BKUP	= $fd00		; Timer 0 backup
TIM0CTLA	= $fd01		; Timer 0 control A
TIM0CNT		= $fd02		; Timer 0 count
TIM0CTLB	= $fd03		; Timer 0 control B
TIM1BKUP	= $fd04		; Timer 1 backup
TIM1CTLA	= $fd05		; Timer 1 control A
TIM1CNT		= $fd06		; Timer 1 count
TIM1CTLB	= $fd07		; Timer 1 control B
TIM2BKUP	= $fd08		; Timer 2 backup
TIM2CTLA	= $fd09		; Timer 2 control A
TIM2CNT		= $fd0a		; Timer 2 count
TIM2CTLB	= $fd0b		; Timer 2 control B
TIM3BKUP	= $fd0c		; Timer 3 backup
TIM3CTLA	= $fd0d		; Timer 3 control A
TIM3CNT		= $fd0e		; Timer 3 count
TIM3CTLB	= $fd0f		; Timer 3 control B
TIM4BKUP	= $fd10		; Timer 4 backup
TIM4CTLA	= $fd11		; Timer 4 control A
TIM4CNT		= $fd12		; Timer 4 count
TIM4CTLB	= $fd13		; Timer 4 control B
TIM5BKUP	= $fd14		; Timer 5 backup (audio 0)
TIM5CTLA	= $fd15
TIM5CNT		= $fd16
TIM5CTLB	= $fd17
TIM6BKUP	= $fd18		; Timer 6 (audio 1)
TIM6CTLA	= $fd19
TIM6CNT		= $fd1a
TIM6CTLB	= $fd1b
TIM7BKUP	= $fd1c		; Timer 7 (audio 2)
TIM7CTLA	= $fd1d
TIM7CNT		= $fd1e
TIM7CTLB	= $fd1f

; Audio registers
AUD0VOL		= $fd20		; Audio 0 volume
AUD0SHFTFB	= $fd21		; Audio 0 shift feedback
AUD0OUTVAL	= $fd22		; Audio 0 output value
AUD0L8SHFT	= $fd23		; Audio 0 L8 shifter
AUD0TBACK	= $fd24		; Audio 0 timer backup
AUD0CTL		= $fd25		; Audio 0 control
AUD0COUNT	= $fd26		; Audio 0 count
AUD0MISC	= $fd27		; Audio 0 misc
AUD1VOL		= $fd28		; Audio 1 volume
AUD1SHFTFB	= $fd29
AUD1OUTVAL	= $fd2a
AUD1L8SHFT	= $fd2b
AUD1TBACK	= $fd2c
AUD1CTL		= $fd2d
AUD1COUNT	= $fd2e
AUD1MISC	= $fd2f
AUD2VOL		= $fd30		; Audio 2 volume
AUD2SHFTFB	= $fd31
AUD2OUTVAL	= $fd32
AUD2L8SHFT	= $fd33
AUD2TBACK	= $fd34
AUD2CTL		= $fd35
AUD2COUNT	= $fd36
AUD2MISC	= $fd37
AUD3VOL		= $fd38		; Audio 3 volume
AUD3SHFTFB	= $fd39
AUD3OUTVAL	= $fd3a
AUD3L8SHFT	= $fd3b
AUD3TBACK	= $fd3c
AUD3CTL		= $fd3d
AUD3COUNT	= $fd3e
AUD3MISC	= $fd3f

; System control
INTSET		= $fd80		; Interrupt set
INTRST		= $fd81		; Interrupt reset
MAODO		= $fd84		; Math done
AUDIN		= $fd86		; Audio in
SYSCTL1		= $fd87		; System control 1
IODIR		= $fd8a		; I/O direction
IODAT		= $fd8b		; I/O data
SERCTL		= $fd8c		; Serial control
SERDAT		= $fd8d		; Serial data
SDONEACK	= $fd90		; UART done acknowledge
CPUSLEEP	= $fd91		; CPU sleep
DISPCTL		= $fd92		; Display control
PBKUP		= $fd93		; Display backup
DISPADRL	= $fd94		; Display address low
DISPADRH	= $fd95		; Display address high

; Palette
GREEN0		= $fda0		; Green palette entry 0
BLUERED0	= $fdb0		; Blue/Red palette entry 0

; =============================================================================
; Hardware Register Definitions - Suzy ($FC00-$FCFF)
; =============================================================================

; Temporary/math registers
TMPADR_L	= $fc00		; Temporary address low
TMPADR_H	= $fc01		; Temporary address high
TILTACUM_L	= $fc02		; Tilt accumulator low
TILTACUM_H	= $fc03		; Tilt accumulator high
HOFF_L		= $fc04		; Horizontal offset low
HOFF_H		= $fc05		; Horizontal offset high
VOFF_L		= $fc06		; Vertical offset low
VOFF_H		= $fc07		; Vertical offset high
VIDBAS_L	= $fc08		; Video base low
VIDBAS_H	= $fc09		; Video base high
COLLBAS_L	= $fc0a		; Collision base low
COLLBAS_H	= $fc0b		; Collision base high
VIDADR_L	= $fc0c		; Video address low
VIDADR_H	= $fc0d		; Video address high
COLLADR_L	= $fc0e		; Collision address low
COLLADR_H	= $fc0f		; Collision address high

; Math coprocessor
MATH_A		= $fc52		; Math register A
MATH_B		= $fc54		; Math register B
MATH_C		= $fc56		; Math register C
MATH_D		= $fc58		; Math register D
MATH_E		= $fc60		; Math register E (result)
MATH_F		= $fc62		; Math register F (result)
MATH_G		= $fc64		; Math register G (result)
MATH_H		= $fc66		; Math register H (result)

MATHSIGN	= $fc6c		; Math sign register
MATHS		= $fc6d		; Math status

; Sprite control
SPRCTL0		= $fc80		; Sprite control 0
SPRCTL1		= $fc81		; Sprite control 1
SPRCOLL		= $fc82		; Sprite collision
SPRINIT		= $fc83		; Sprite initialize
SPRGO		= $fc91		; Sprite go
SPRSYS		= $fc92		; Sprite system
SUZYHREV	= $fc88		; Suzy hardware revision
SUZYSREV	= $fc89		; Suzy software revision

; =============================================================================
; Zero Page Variables
; =============================================================================

.segment "ZEROPAGE"
.org $00

test_val:	.ds 2

; =============================================================================
; Code Segment
; =============================================================================

.segment "CODE"
.org $0200

reset:
	sei
	cld
	ldx #$ff
	txs

	; Test Mikey register access
	jsr test_mikey_timers
	jsr test_mikey_audio
	jsr test_mikey_display
	jsr test_mikey_palette

	; Test Suzy register access
	jsr test_suzy_math
	jsr test_suzy_sprite

	; Done
.loop:
	bra .loop

; =============================================================================
; Test Mikey Timer Registers
; =============================================================================
test_mikey_timers:
	; Set up Timer 0
	lda #$00
	sta TIM0CTLA		; Disable timer 0
	lda #$ff
	sta TIM0BKUP		; Set backup value
	lda #$18		; Enable, linking, reset on match
	sta TIM0CTLA

	; Read timer count
	lda TIM0CNT

	; Set timer control B
	stz TIM0CTLB		; Clear control B

	rts

; =============================================================================
; Test Mikey Audio Registers
; =============================================================================
test_mikey_audio:
	; Initialize audio channel 0
	stz AUD0VOL		; Mute
	lda #$00
	sta AUD0CTL		; Disable
	sta AUD0SHFTFB		; Clear shift feedback

	; Read audio status
	lda AUD0OUTVAL
	lda AUD0COUNT

	rts

; =============================================================================
; Test Mikey Display Registers
; =============================================================================
test_mikey_display:
	; Set display control
	lda #$08		; Enable color, normal mode
	sta DISPCTL

	; Set display address
	lda #$00
	sta DISPADRL
	lda #$c0
	sta DISPADRH		; Display buffer at $c000

	; Set backup value for line timing
	lda #$68		; Standard value
	sta PBKUP

	rts

; =============================================================================
; Test Mikey Palette Registers
; =============================================================================
test_mikey_palette:
	; Set palette entry 0 (background color)
	lda #$0f		; Bright green
	sta GREEN0
	lda #$ff		; Bright blue/red
	sta BLUERED0

	; Set palette entry 1
	lda #$00
	sta GREEN0+1
	sta BLUERED0+1

	rts

; =============================================================================
; Test Suzy Math Coprocessor
; =============================================================================
test_suzy_math:
	; Simple multiplication test: 10 * 20
	lda #10
	sta MATH_A
	stz MATH_A+1
	lda #20
	sta MATH_B
	stz MATH_B+1

	; Read result from MATH_E/F
	lda MATH_E
	sta test_val
	lda MATH_E+1
	sta test_val+1

	rts

; =============================================================================
; Test Suzy Sprite System
; =============================================================================
test_suzy_sprite:
	; Read Suzy revision
	lda SUZYHREV
	lda SUZYSREV

	; Initialize sprite system
	lda #$00
	sta SPRCTL0
	sta SPRCTL1
	stz SPRCOLL

	; Read sprite status
	lda SPRSYS

	rts

; =============================================================================
; Vectors
; =============================================================================
.segment "VECTORS"
.org $fffa
	.word reset
	.word reset
	.word reset

