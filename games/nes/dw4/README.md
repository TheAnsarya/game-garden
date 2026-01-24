# Dragon Warrior IV

**Platform:** NES (6502)
**ROM:** Dragon Warrior IV (1992-10)(Enix)(US).nes
**Size:** 512 KB (4 Mbit)
**Status:** 🟡 In Progress

## 📊 Progress

| Phase | Status | Notes |
|-------|--------|-------|
| ROM Verified | ✅ | CRC32: `f6b24806` |
| Disassembly | ✅ | 770 blocks via Peony + CDL |
| Metadata | ✅ | Pansy file with 10,924 symbols, 30,019 xrefs |
| CDL Coverage | ✅ | 6.2% (24K code, 8K data, 570 subroutines) |
| Graphics | ❌ | Not yet extracted |
| Palettes | ❌ | Not yet extracted |
| Text | ❌ | Not yet extracted |
| Data | 🔄 | 8 JSON files in dragon-warrior-4-info |
| Rebuild | ❌ | Byte-identical pending |

Legend: ✅ Complete | 🔄 In Progress | ❌ Not Started

## 🔗 Disassembly Source

### Local Source (`src/`)
- `main.pasm` - Peony disassembly with 770 blocks
- Generated using CDL file with 565 entry points

### Full Disassembly
The complete disassembly is in [dragon-warrior-4-info](https://github.com/TheAnsarya/dragon-warrior-4-info):

- **32 bank files** with full disassembly (bank00-bank31)
- **38 source files** total including special banks
- **16,880 labels** extracted from disassembly
- **Multiple formats** (.asm and .pasm for Poppy)

See `c:\Users\me\source\repos\dragon-warrior-4-info\disasm\` for the source files.

## 🌼 Pansy Metadata

The `metadata/` folder contains extracted symbols and cross-references:

| File | Size | Contents |
|------|------|----------|
| `dw4.pansy` | 471 KB | Binary Pansy format for Peony/Poppy |
| `dw4_metadata.json` | - | Full JSON (symbols, comments, xrefs) |
| `dw4_symbols.txt` | - | Address=symbol pairs |
| `dw4_comments.txt` | - | Extracted comments |

**Statistics:**
- 10,924 symbols loaded
- 103 comments preserved
- 30,019 cross-references

**Usage with Peony:**
```powershell
# Load symbols for enhanced disassembly
peony disasm rom.nes -s metadata/dw4.pansy
```

**Note:** Source files remain in dragon-warrior-4-info - this metadata is extracted, not duplicated.

## 📁 Structure

```
dw4/
├── metadata/
│   ├── dw4.pansy           # Binary Pansy metadata (471 KB)
│   ├── dw4_metadata.json   # Full JSON metadata
│   ├── dw4_symbols.txt     # Address=Symbol mappings
│   └── dw4_comments.txt    # Extracted comments
├── assets/                 # Game assets (pending)
├── verify/                 # ROM verification
└── docs/                   # Game documentation
```

## 📝 Notes

### Game Overview
Dragon Warrior IV (Dragon Quest IV in Japan) is a 1992 RPG by Enix for the NES.
It features a chapter-based narrative with 5 playable chapters and multiple 
party members.

### Technical Details
- **CPU:** 6502 (NES)
- **Mapper:** MMC5 (complex memory management)
- **ROM Size:** 512 KB (32 banks × 16 KB)
- **CHR-ROM:** 256 KB
- **Battery:** Yes (SRAM for saves)

### Key ROM Addresses
The dragon-warrior-4-info repo contains extensive research on ROM addresses.
See the disasm files for bank-specific label information.

### Resources
- dragon-warrior-4-info has extensive disassembly and research
- GameInfo provides ROM analysis infrastructure
- 32 banks of disassembled 6502 code

