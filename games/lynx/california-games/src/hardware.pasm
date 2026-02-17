; =============================================================================
; Atari Lynx Hardware Definitions
; =============================================================================

.platform "lynx"

; =============================================================================
; Memory Map
; =============================================================================

; RAM
RAM_START	= $0000
RAM_END		= $fbff
STACK_TOP	= $01ff

; Suzy Registers ($fc00-$fcff)
SUZY_BASE	= $fc00

; Math Hardware
MATHD		= $fc52		; Divide/multiply result
MATHC		= $fc53
MATHB		= $fc54
MATHA		= $fc55
MATHP		= $fc56		; Multiply high result
MATHN		= $fc57

; Sprite Hardware
TMPADR		= $fc00		; Temp address
TILTACUM	= $fc02		; Tilt accumulator
HOFF		= $fc04		; H offset
VOFF		= $fc06		; V offset
VIDBAS		= $fc08		; Video base address
COLLBAS		= $fc0a		; Collision base address
VIDADR		= $fc0c		; Video address
COLLADR		= $fc0e		; Collision address
SCBNEXT		= $fc10		; Next SCB address
SPRDLINE	= $fc12		; Sprite data line
HPOSSTRT	= $fc14		; H position start
VPOSSTRT	= $fc16		; V position start
SPRHSIZ		= $fc18		; Sprite H size
SPRVSIZ		= $fc1a		; Sprite V size
STRETCH		= $fc1c		; Stretch value
TILT		= $fc1e		; Tilt value
SPRDOFF		= $fc20		; Sprite data offset
SPRVPOS		= $fc22		; Sprite V position
COLLOFF		= $fc24		; Collision offset
VSIZACUM	= $fc26		; V size accumulator
HSIZOFF		= $fc28		; H size offset
VSIZOFF		= $fc2a		; V size offset
SCBADR		= $fc2c		; SCB address
PROCADR		= $fc2e		; Process address

; Sprite control
SPRCTL0		= $fc80		; Sprite control 0
SPRCTL1		= $fc81		; Sprite control 1
SPRCOLL		= $fc82		; Sprite collision
SPRINIT		= $fc83		; Sprite init
SUZYBUSEN	= $fc90		; Suzy bus enable
SPRGO		= $fc91		; Sprite go
SPRSYS		= $fc92		; Sprite system

; Joystick (active low)
JOYSTICK	= $fcb0		; Joystick input
SWITCHES	= $fcb1		; System switches

; =============================================================================
; Mikey Registers ($fd00-$fdff)
; =============================================================================

MIKEY_BASE	= $fd00

; Timers
TIM0BKUP	= $fd00
TIM0CTLA	= $fd01
TIM0CNT		= $fd02
TIM0CTLB	= $fd03
TIM1BKUP	= $fd04
TIM1CTLA	= $fd05
TIM1CNT		= $fd06
TIM1CTLB	= $fd07
TIM2BKUP	= $fd08
TIM2CTLA	= $fd09
TIM2CNT		= $fd0a
TIM2CTLB	= $fd0b
TIM3BKUP	= $fd0c
TIM3CTLA	= $fd0d
TIM3CNT		= $fd0e
TIM3CTLB	= $fd0f
TIM4BKUP	= $fd10
TIM4CTLA	= $fd11
TIM4CNT		= $fd12
TIM4CTLB	= $fd13
TIM5BKUP	= $fd14
TIM5CTLA	= $fd15
TIM5CNT		= $fd16
TIM5CTLB	= $fd17
TIM6BKUP	= $fd18
TIM6CTLA	= $fd19
TIM6CNT		= $fd1a
TIM6CTLB	= $fd1b
TIM7BKUP	= $fd1c
TIM7CTLA	= $fd1d
TIM7CNT		= $fd1e
TIM7CTLB	= $fd1f

; Audio Channels
AUD0VOL		= $fd20
AUD0SHFTFB	= $fd21
AUD0OUTVAL	= $fd22
AUD0L8SHFT	= $fd23
AUD0TBACK	= $fd24
AUD0CTL		= $fd25
AUD0COUNT	= $fd26
AUD0MISC	= $fd27

AUD1VOL		= $fd28
AUD1SHFTFB	= $fd29
AUD1OUTVAL	= $fd2a
AUD1L8SHFT	= $fd2b
AUD1TBACK	= $fd2c
AUD1CTL		= $fd2d
AUD1COUNT	= $fd2e
AUD1MISC	= $fd2f

AUD2VOL		= $fd30
AUD2SHFTFB	= $fd31
AUD2OUTVAL	= $fd32
AUD2L8SHFT	= $fd33
AUD2TBACK	= $fd34
AUD2CTL		= $fd35
AUD2COUNT	= $fd36
AUD2MISC	= $fd37

AUD3VOL		= $fd38
AUD3SHFTFB	= $fd39
AUD3OUTVAL	= $fd3a
AUD3L8SHFT	= $fd3b
AUD3TBACK	= $fd3c
AUD3CTL		= $fd3d
AUD3COUNT	= $fd3e
AUD3MISC	= $fd3f

; Stereo/Attenuation
APTS_0		= $fd40		; Attenuation pair timer sync
APTS_1		= $fd41
APTS_2		= $fd42
APTS_3		= $fd43

MSTEREO		= $fd50		; Stereo enable

; Interrupt control
INTRST		= $fd80		; Interrupt reset (write clears flags)
INTSET		= $fd81		; Interrupt set (read: flags, write: force)
MAGRDY0		= $fd84		; Mag tape ready 0
MAGRDY1		= $fd85		; Mag tape ready 1
AUDIN		= $fd86		; Audio in
SYSCTL1		= $fd87		; System control 1
IODIR		= $fd8a		; I/O direction
IODAT		= $fd8b		; I/O data
SERCTL		= $fd8c		; Serial control
SERDAT		= $fd8d		; Serial data
CPUSLEEP	= $fd91		; CPU sleep

; Display
DISPCTL		= $fd92		; Display control
PBKUP		= $fd93		; P backup (timer backup)
DISPADR		= $fd94		; Display address
DISPADRH	= $fd95		; Display address high
MTEST		= $fd9c		; Mikey test
MAGCTL		= $fd9d		; Mag tape control

; Palette (Green, then Blue/Red interleaved)
GREEN0		= $fda0		; Green palette 0-f
GREEN1		= $fda1
GREEN2		= $fda2
GREEN3		= $fda3
GREEN4		= $fda4
GREEN5		= $fda5
GREEN6		= $fda6
GREEN7		= $fda7
GREEN8		= $fda8
GREEN9		= $fda9
GREENA		= $fdaa
GREENB		= $fdab
GREENC		= $fdac
GREEND		= $fdad
GREENE		= $fdae
GREENF		= $fdaf

BLUERED0	= $fdb0		; Blue/Red palette 0-f
BLUERED1	= $fdb1
BLUERED2	= $fdb2
BLUERED3	= $fdb3
BLUERED4	= $fdb4
BLUERED5	= $fdb5
BLUERED6	= $fdb6
BLUERED7	= $fdb7
BLUERED8	= $fdb8
BLUERED9	= $fdb9
BLUEREDA	= $fdba
BLUEREDB	= $fdbb
BLUEREDC	= $fdbc
BLUEREDD	= $fdbd
BLUEREDE	= $fdbe
BLUEREDF	= $fdbf

; =============================================================================
; Boot ROM and Vectors ($fe00-$ffff)
; =============================================================================

; Memory map control
MAPCTL		= $fff9

; CPU Vectors (directly in memory, not via hardware)
; These mirror standard 6502 vectors when boot ROM is disabled
NMI_VECTOR	= $fffa
RES_VECTOR	= $fffc
IRQ_VECTOR	= $fffe

; =============================================================================
; SPRCTL0 Bits
; =============================================================================

SPR_4BPP	= %11000000	; 16 colors
SPR_3BPP	= %10000000	; 8 colors
SPR_2BPP	= %01000000	; 4 colors
SPR_1BPP	= %00000000	; 2 colors

SPR_HFLIP	= %00100000	; Horizontal flip
SPR_VFLIP	= %00010000	; Vertical flip

SPR_SHADOW	= %00000111	; Shadow (don't draw, draw shadow)
SPR_XOR		= %00000110	; XOR draw
SPR_BACKDROP	= %00000101	; Backdrop (draw behind sprites)
SPR_BSHADOW	= %00000011	; Boundary shadow
SPR_BOUNDARY	= %00000010	; Boundary (non-collideable)
SPR_NORMAL	= %00000001	; Normal

; =============================================================================
; SPRCTL1 Bits
; =============================================================================

SPR_LITERAL	= %10000000	; Literal (not packed)
SPR_ALGO3	= %01000000	; Algorithm 3

SPR_RELOADHV	= %00110000	; Reload HV position
SPR_RELOADHVS	= %00100000	; Reload HV pos + size
SPR_RELOADHVST	= %00010000	; Reload HV pos + size + tilt

SPR_SKIP	= %00000100	; Skip this sprite
SPR_DRAWUP	= %00000010	; Draw up (from current position)
SPR_DRAWLEFT	= %00000001	; Draw left (from current position)

; =============================================================================
; Display Control Bits
; =============================================================================

DISP_COLOR	= %00001000	; Color mode (vs mono)
DISP_FOURBIT	= %00000100	; 4-bit color
DISP_FLIP	= %00000010	; Screen flip
DISP_ENABLE	= %00000001	; Display enable

; =============================================================================
; Interrupt Bits
; =============================================================================

INT_TIMER7	= %10000000	; Timer 7
INT_TIMER6	= %01000000	; Timer 6
INT_TIMER5	= %00100000	; Timer 5
INT_TIMER4	= %00010000	; Timer 4
INT_TIMER3	= %00001000	; Timer 3
INT_TIMER2	= %00000100	; Timer 2
INT_TIMER1	= %00000010	; Timer 1
INT_TIMER0	= %00000001	; Timer 0

; =============================================================================
; Joystick Bits (active low - 0 = pressed)
; =============================================================================

JOY_RIGHT	= %00010000
JOY_LEFT	= %00001000
JOY_DOWN	= %00000100
JOY_UP		= %00000010
JOY_OPTION1	= %00000001

JOY_OPTION2	= %00000010	; In SWITCHES register
JOY_PAUSE	= %00000001	; In SWITCHES register
