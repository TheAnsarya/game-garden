# Test 65SC02 Opcodes

A test ROM demonstrating all WDC 65SC02-specific instructions for Atari Lynx.

## Purpose

Validates that Poppy correctly assembles and Peony correctly disassembles
all 65SC02 instructions that differ from the standard 6502.

## 65SC02 Extensions Tested

### New Instructions
- `stz` - Store Zero (direct page, absolute, indexed)
- `bra` - Branch Always
- `phx` / `plx` - Push/Pull X
- `phy` / `ply` - Push/Pull Y
- `trb` / `tsb` - Test and Reset/Set Bits

### New Addressing Modes
- Indirect without indexing: `lda ($10)`
- Absolute indexed indirect: `jmp ($1000,x)`

### Modified Instructions
- `adc` / `sbc` - Clear decimal flag in binary mode
- All branch instructions - extended range

## Build

```powershell
.\build.ps1
```

## Files

- `src/main.pasm` - Main source with all 65SC02 opcode tests
- `build/` - Output directory for built ROM

