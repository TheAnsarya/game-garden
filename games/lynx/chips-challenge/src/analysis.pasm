; =============================================================================
; Chip's Challenge - Atari Lynx
; Disassembly and Analysis Project
; =============================================================================
;
; This source file represents the Chip's Challenge ROM structure.
; The ROM contains compressed/encrypted data that gets processed by the
; Lynx boot ROM. Full disassembly requires understanding the decompression.
;
; ROM Info:
;   File: Chip's Challenge (1989).lnx
;   Size: 131,136 bytes (64-byte LNX header + 131,072 ROM data)
;   MD5:  ad3d091ba4250d0354bc6d3fd8c9a882
;   Cart: chipchal.lnx
;
; =============================================================================

.platform "lynx"

; Lynx cart metadata (from LNX header)
.lynx_name "chipchal.lnx"
.lynx_manufacturer "Atari"
.lynx_rotation none
.lynx_bank0_size 512		; 512 pages * 256 bytes = 128KB
.lynx_bank1_size 0

; =============================================================================
; Include hardware definitions
; =============================================================================

.include "hardware.pasm"

; =============================================================================
; ROM DATA ANALYSIS
; =============================================================================
;
; The Lynx boot ROM ($FE00-$FFFF) handles cartridge loading:
; 1. Reads cart header to determine bank sizes
; 2. Loads a small boot stub into RAM
; 3. Boot stub typically decompresses/copies main code to RAM
; 4. Jumps to game entry point (usually $0200 or specified in stub)
;
; The first bytes of this ROM (FB C5 BF A3...) do NOT decode as valid
; 65SC02 code. This indicates either:
;   a) Compressed data that gets decompressed by boot stub
;   b) Encrypted data processed by Lynx boot ROM
;   c) A custom loading format
;
; Game Data (estimated structure):
;   $0000-$????: Boot stub / loader
;   $????-$????: Compressed game code
;   $????-$????: Level data (144 levels)
;   $????-$????: Graphics tiles
;   $????-$????: Sound/music data
;
; =============================================================================

; =============================================================================
; KNOWN CODE BLOCKS (from Peony analysis)
; =============================================================================
;
; Peony identified 4 code blocks by following jumps. These may be:
; - False positives from compressed data
; - Small uncompressed stubs
; - Actual code that happens to be at these addresses
;
; Block 1: $0200-$0226 (39 bytes) - Entry point area
; Block 2: $025C-$0289 (46 bytes) - Jumped from block 1
; Block 3: $D51D-$D558 (60 bytes) - Jumped from block 2
; Block 4: $D545-$D546 (2 bytes)  - Branch target in block 3
;
; =============================================================================

; =============================================================================
; RESEARCH NOTES
; =============================================================================
;
; Windows Chip's Challenge level format (for reference):
;   - 32x32 tile grid per level
;   - 2 layers (lower + upper)
;   - Monster list with positions and types
;   - Trap connections
;   - Clone machine connections
;   - Level password, time limit, chip count
;
; Lynx version likely uses similar structure but may be compressed.
; The 144 levels alone would need ~144KB uncompressed, but ROM is only 128KB,
; so compression is definitely used.
;
; =============================================================================

; =============================================================================
; NEXT STEPS
; =============================================================================
;
; 1. Load ROM in Nexen debugger
; 2. Set breakpoint at reset vector
; 3. Step through boot process to find actual code entry
; 4. Identify decompression routine
; 5. Document compressed data format
; 6. Extract and analyze level data
;
; =============================================================================

; For now, include the raw ROM data as binary
; This will be replaced with actual disassembly as analysis progresses

.org $0200

; Placeholder - raw ROM data needs analysis
; The bytes here are from the Lynx boot loader format, not direct code

; First 512 bytes of ROM data (for verification)
rom_data_start:
	.byte $fb, $c5, $bf, $a3, $9a, $f7, $15, $80
	.byte $72, $68, $bd, $31, $b9, $6e, $20, $04
	.byte $ca, $5e, $42, $55, $e4, $62, $d3, $28
	.byte $c4, $dc, $ee, $57, $9a, $97, $50, $3c
	; ... (remaining bytes from ROM)

; =============================================================================
; END OF FILE
; =============================================================================
