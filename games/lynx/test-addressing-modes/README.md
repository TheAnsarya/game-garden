# Test Addressing Modes

A test ROM demonstrating all 65SC02 addressing modes for Atari Lynx.

## Purpose

Tests that Poppy correctly assembles and Peony correctly disassembles
all addressing modes supported by the WDC 65SC02.

## Addressing Modes Tested

### Standard 6502 Modes
1. Implied - `clc`, `sec`, `rts`
2. Accumulator - `asl a`, `ror a`
3. Immediate - `lda #$12`
4. Zero Page - `lda $10`
5. Zero Page,X - `lda $10,x`
6. Zero Page,Y - `ldx $10,y`
7. Absolute - `lda $1234`
8. Absolute,X - `lda $1234,x`
9. Absolute,Y - `lda $1234,y`
10. (Indirect,X) - `lda ($10,x)`
11. (Indirect),Y - `lda ($10),y`
12. Relative - `bne label`
13. Indirect - `jmp ($1234)`

### 65SC02 New Modes
14. (Zero Page) - `lda ($10)` - Indirect without indexing
15. (Absolute,X) - `jmp ($1234,x)` - Absolute indexed indirect

## Build

```powershell
.\build.ps1
```

