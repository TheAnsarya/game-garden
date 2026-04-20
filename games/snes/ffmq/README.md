# Final Fantasy: Mystic Quest

**Platform:** SNES (65816)
**ROM:** Final Fantasy - Mystic Quest (U) (V1.1).sfc
**Size:** 512 KB (4 Mbit)
**Status:** 🟡 In Progress

## 📊 Progress

| Phase | Status | Notes |
|-------|--------|-------|
| ROM Verified | ✅ | CRC32: `2c52c792` |
| Disassembly | ✅ | 1826 blocks via Peony + CDL |
| Metadata | ✅ | Pansy file with 2,928 symbols, 1,797 comments |
| CDL Coverage | ✅ | 48.7% (60K code, 195K data, 797 subroutines) |
| Graphics | ✅ | 10 tile regions extracted to PNG |
| Palettes | ✅ | 81 palettes (1544 colors) |
| Text | ✅ | Table files (simple.tbl, complex.tbl) |
| Data | ✅ | Enemies, attacks, spells, maps, NPCs |
| Rebuild | ❌ | Blocked - see [Known Issues](#-known-issues) |

Legend: ✅ Complete | 🔄 In Progress | ❌ Not Started

## ⚠️ Known Issues

### Peony → Poppy Roundtrip Status

Previously blocking issues have been **resolved**:

1. ~~**Unknown Opcodes** ([peony#41](https://github.com/TheAnsarya/peony/issues/41))~~ — ✅ Fixed
2. ~~**CDL Not Used in Export** ([peony#42](https://github.com/TheAnsarya/peony/issues/42))~~ — ✅ Fixed
3. ~~**No Pansy Merge** ([pansy#16](https://github.com/TheAnsarya/pansy/issues/16))~~ — ✅ Merge functionality implemented

### Remaining Work

- Re-run full pipeline with latest Peony/Poppy/Pansy to verify roundtrip
- Generate fresh disassembly with CDL-enriched Pansy metadata
- Verify byte-identical rebuild through Poppy

> **Policy:** All game-garden builds use 🌸 Poppy. Legacy assemblers (ASAR, ca65, xkas) are not used in mainline pipelines.

## 🔗 Disassembly Source

### Local Source (`src/`)
- `main.pasm` - Peony disassembly with 1826 blocks
- Generated using CDL file with 798 entry points

### Full Disassembly
The complete documented disassembly is in [ffmq-info](https://github.com/TheAnsarya/ffmq-info):

- **16 bank files** with full documented disassembly
- **15,000+ lines** in bank_00 alone (core game engine)
- **SNES register definitions** and symbol tables
- **DiztinGUIsh integration** with CDL data

See `c:\Users\me\source\repos\ffmq-info\src\asm\` for the source files.

## 📦 Extracted Data

All data in `assets/editable/data/`:

| File | Entries | Description |
|------|---------|-------------|
| `enemies.json` | 83 | Full enemy stats (HP, ATK, DEF, weaknesses) |
| `attacks.json` | 169 | Battle actions with power and animation |
| `spells.json` | 16 | Core spell data |
| `spells_full.json` | 16 | Extended spell data with types |
| `characters.json` | 4 | Benjamin, Kaeli, Phoebe, Reuben |
| `maps.json` | 7+ | Map headers with tileset/music IDs |
| `npcs.json` | varies | NPC positions and behavior |
| `chests.json` | varies | Treasure chest contents |
| `encounters.json` | varies | Enemy encounter data |
| `element_types.json` | 8 | Fire, Water, Earth, Wind, etc. |

## 🎨 Extracted Graphics

All graphics in `assets/extracted/graphics/`:

| File | Tiles | BPP | Description |
|------|-------|-----|-------------|
| `font_2bpp.png` | 128 | 2 | Font tiles |
| `extra_tiles.png` | 192 | 4 | Extra tile set |
| `main_tiles_bank1.png` | 512 | 4 | Main tiles (bank 1) |
| `main_tiles_bank2.png` | 512 | 4 | Main tiles (bank 2) |
| `sprite_tiles.png` | 512 | 4 | Sprite graphics |
| `graphics_03f000.png` | 256 | 4 | Graphics bank $03F000 |
| `graphics_064000.png` | 256 | 4 | Graphics bank $064000 |
| `graphics_06b000.png` | 256 | 4 | Graphics bank $06B000 |
| `graphics_071000.png` | 256 | 4 | Graphics bank $071000 |
| `graphics_076000.png` | 256 | 4 | Graphics bank $076000 |

## 🎨 Palettes

All palettes in `assets/editable/palettes/`:

| File | Count | Description |
|------|-------|-------------|
| `all_palettes.json` | 81 | All game palettes (1544 colors) |
| `enemy_palettes.json` | - | Enemy sprite palettes |
| `character_palettes.json` | - | Player character palettes |
| `bg_palettes.json` | - | Background palettes |
| `battle_bg_palettes.json` | - | Battle background palettes |

## 📝 Text Resources

All text tables in `assets/editable/text/`:

| File | Description |
|------|-------------|
| `simple.tbl` | Simple text encoding (items, names, menus) |
| `complex.tbl` | Complex text encoding (DTE compressed dialog) |

## 🔗 Related Projects

- [ffmq-info](https://github.com/TheAnsarya/ffmq-info) - FFMQ documentation and research
- [games.darkrepos.com/SNES/FFMQ](https://games.darkrepos.com/wiki/SNES/FFMQ) - Wiki documentation

## 🔧 Build

```powershell
# Verify ROM
.\verify\verify.ps1 -RomPath "C:\~reference-roms\extracted\snes\ffmq\Final Fantasy - Mystic Quest (U) (V1.1).smc"

# Build ROM (when disassembly complete)
.\build.ps1
```

## 📁 Structure

```
ffmq/
├── src/                    # Disassembled source (.pasm) - see ffmq-info
│   └── main-nexen.pasm     # Nexen CDL+Pansy disassembly (58K lines)
├── metadata/
│   ├── ffmq.pansy          # Binary Pansy metadata (392 KB)
│   ├── ffmq-nexen.pansy    # Nexen Pansy metadata (981 KB)
│   ├── ffmq-nexen-coverage.cdl  # Nexen CDL (77.6% coverage)
│   ├── ffmq-nexen.cdl      # Nexen CDL with header
│   ├── ffmq_metadata.json  # Full JSON metadata (1 MB)
│   ├── ffmq_symbols.txt    # Address=Symbol mappings (93 KB)
│   └── ffmq_comments.txt   # Extracted comments (419 KB)
├── assets/
│   ├── extracted/          # Raw binary assets (gitignored)
│   └── editable/
│       ├── graphics/       # PNG tile sheets with metadata
│       └── data/           # JSON game data (18 files)
├── build/                  # Build output (gitignored)
├── verify/                 # ROM verification scripts
│   └── checksums.json      # Expected ROM checksums
├── tools/
│   └── measure-quality.ps1 # Disassembly quality metrics
└── docs/
    ├── rom-map.md          # Comprehensive ROM documentation
    └── disassembly-quality-analysis.md  # Quality analysis (Peony #179)
```

## 🌼 Pansy Metadata

The `metadata/` folder contains extracted symbols and comments from multiple sources:

### ffmq-info Disassembly

| File | Size | Contents |
|------|------|----------|
| `ffmq.pansy` | 392 KB | Binary Pansy format for Peony/Poppy |
| `ffmq_metadata.json` | 1 MB | Full JSON (symbols, comments, xrefs) |
| `ffmq_symbols.txt` | 93 KB | 2,994 address=symbol pairs |
| `ffmq_comments.txt` | 419 KB | 10,262 lines of documentation |

### Nexen Game Package (2026-04-20)

Exported from Nexen emulator after ~75% gameplay coverage:

| File | Size | Contents |
|------|------|----------|
| `ffmq-nexen.pansy` | 981 KB | Pansy metadata (192 symbols, 2469 jump targets, 947 subs) |
| `ffmq-nexen-coverage.cdl` | 512 KB | CDL - 73K code, 334K data (77.6% coverage) |
| `ffmq-nexen.cdl` | 512 KB | CDL with 9-byte header |

See [Disassembly Quality Analysis](docs/disassembly-quality-analysis.md) for bug findings (Peony #179).

**Statistics:**
- 2,928 symbols loaded
- 1,797 comments preserved
- 135 cross-references

**Usage with Peony:**
```powershell
# Load symbols for enhanced disassembly
peony disasm rom.sfc -s metadata/ffmq.pansy
```

**Note:** Source files remain in ffmq-info - this metadata is extracted, not duplicated.

## 📝 Notes

### Game Overview
Final Fantasy: Mystic Quest (known as Mystic Quest Legend in PAL regions) is a 1992 action RPG 
developed by Square for the SNES. It was designed as an entry-level RPG for Western audiences.

### Technical Details
- **CPU:** 65816 (SNES)
- **Mapping:** LoROM
- **ROM Size:** 512 KB (4 Mbit)
- **SRAM:** 8 KB (battery backed)
- **Special Chips:** None

### Key ROM Addresses
| Address | Contents |
|---------|----------|
| $02:C275 | Enemy stats (83 × 14 bytes) |
| $02:BC78 | Attack data (169 × 7 bytes) |
| $06:0F36 | Spell data |
| $06:50B0 | Character data (4 × 80 bytes) |
| $04:F000 | Item names text |

### Resources
- ffmq-info has extensive extraction tools and documentation
- GameInfo provides ROM analysis infrastructure
- See [rom-map.md](docs/rom-map.md) for complete memory map
