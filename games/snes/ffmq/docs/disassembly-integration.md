# FFMQ Disassembly Integration

## Overview

The FFMQ disassembly is maintained in the [ffmq-info](https://github.com/TheAnsarya/ffmq-info) repository. Rather than duplicating this work, game-garden references and integrates with that project.

## ⚠️ IMPORTANT: Preserving Knowledge

**The ffmq-info repository contains extensive documentation and comments that represent significant research effort.** This includes:

- Detailed function descriptions explaining what each routine does
- Hardware register explanations
- Data structure documentation
- Cross-references between routines
- Game mechanics explanations
- Boot sequence documentation
- Memory map annotations

**NEVER delete or overwrite the ffmq-info source files.** The integration strategy is:
1. **ffmq-info** = Source of truth for documented disassembly
2. **game-garden** = References ffmq-info, extracts metadata to Pansy format
3. **Poppy conversion** = When needed, converts *copies* while preserving comments

## Source Location

```
c:\Users\me\source\repos\ffmq-info\src\asm\
├── bank_00_documented.asm    # Core game engine (15,000+ lines)
├── bank_01_documented.asm    # Additional code
├── bank_02_documented.asm    # ...
├── ...
├── bank_0f_documented.asm
├── snes_registers.asm        # Hardware definitions
├── graphics_engine.asm       # Graphics subsystem
└── text_engine.asm           # Text/dialog system
```

## Format

The ffmq-info disassembly uses **ASAR/ca65-compatible syntax**:
- `.org $xxxxxx` for origin
- `label:` for labels (with colon)
- `.w` and `.l` suffixes for addressing modes
- `;` for comments

## Converting to Poppy (.pasm)

To convert for Poppy assembler (used by game-garden):

1. Add `.system:snes` at file start
2. Change `.org` to Poppy's `.org` (same syntax)
3. Use `@label` for local labels
4. Remove `.w`/`.l` suffixes (Poppy infers from operand)
5. Update any ASAR-specific macros

### Example Conversion

**ASAR Style (ffmq-info):**
```asm
	org $008000

RESET_Handler:
	clc
	xce
	jsr.w Init_Hardware
	jsl.l Primary_APU_Upload_Entry_Point
```

**Poppy Style (game-garden):**
```pasm
.system:snes

.org $808000

RESET_Handler:
	clc
	xce
	jsr Init_Hardware
	jsl Primary_APU_Upload_Entry_Point
```

## Integration Strategy

1. **Data Assets** - Use game-garden's extracted JSON/PNG files
2. **Source Code** - Reference ffmq-info disassembly
3. **Build** - Use ffmq-info's existing build system until Poppy is mature
4. **Metadata** - Generate Pansy files from ffmq-info symbols

## Build Process

### Using ffmq-info Build System

```powershell
cd C:\Users\me\source\repos\ffmq-info
.\build.ps1
```

### Future: Poppy Build

```powershell
cd C:\Users\me\source\repos\game-garden\games\snes\ffmq
poppy build src/main.pasm --output build/ffmq.sfc
```

## Status

| Item | Status |
|------|--------|
| Disassembly Complete | ✅ (in ffmq-info) |
| Symbols Documented | 🔄 Ongoing |
| Byte-identical Build | ✅ (with ffmq-info) |
| Poppy Conversion | ❌ Not started |
| Pansy Metadata | ❌ Not started |

## Related Issues

- [#2](https://github.com/TheAnsarya/game-garden/issues/2) - FFMQ: Disassemble ROM with Peony
- [#5](https://github.com/TheAnsarya/game-garden/issues/5) - FFMQ: Create Pansy metadata files
- [#6](https://github.com/TheAnsarya/game-garden/issues/6) - FFMQ: Implement byte-identical ROM rebuild
