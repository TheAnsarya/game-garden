# Dragon Warrior

**Platform:** NES (6502)
**ROM:** Dragon Warrior (U) (PRG0) [!].nes
**Size:** 80 KB
**Status:** 🟡 In Progress

## 📊 Progress

| Phase | Status | Notes |
|-------|--------|-------|
| ROM Verified | ✅ | CRC32: `caaf5c6b` |
| Disassembly | 🔄 | Available in dragon-warrior-info repo |
| Metadata | ✅ | Pansy file with 1,406 symbols, 526 comments |
| Graphics | ❌ | Not yet extracted |
| Palettes | ❌ | Not yet extracted |
| Text | ❌ | Not yet extracted |
| Data | ❌ | Not yet extracted |
| Rebuild | ❌ | Byte-identical pending |

Legend: ✅ Complete | 🔄 In Progress | ❌ Not Started

## 🔗 Disassembly Source

The complete disassembly for Dragon Warrior is maintained in the [dragon-warrior-info](https://github.com/TheAnsarya/dragon-warrior-info) repository:

- **4 bank files** with full documented disassembly (Bank00-Bank03)
- **2,139 labels** extracted from disassembly
- **Well-documented** with extensive comments
- **Ophis assembler** compatible source

See `c:\Users\me\source\repos\dragon-warrior-info\source_files\` for the source files.

## 🌼 Pansy Metadata

The `metadata/` folder contains extracted symbols and comments:

| File | Size | Contents |
|------|------|----------|
| `dw1.pansy` | 86 KB | Binary Pansy format for Peony/Poppy |
| `dw1_metadata.json` | - | Full JSON (symbols, comments, xrefs) |
| `dw1_symbols.txt` | - | Address=symbol pairs |
| `dw1_comments.txt` | - | Extracted comments |

**Statistics:**
- 1,406 symbols loaded
- 526 comments preserved
- 6 cross-references

**Usage with Peony:**
```powershell
# Load symbols for enhanced disassembly
peony disasm rom.nes -s metadata/dw1.pansy
```

**Note:** Source files remain in dragon-warrior-info - this metadata is extracted, not duplicated.

## 📁 Structure

```
dw1/
├── metadata/
│   ├── dw1.pansy           # Binary Pansy metadata (86 KB)
│   ├── dw1_metadata.json   # Full JSON metadata
│   ├── dw1_symbols.txt     # Address=Symbol mappings
│   └── dw1_comments.txt    # Extracted comments
├── assets/                 # Game assets (pending)
├── verify/                 # ROM verification
└── docs/                   # Game documentation
```

## 📝 Notes

### Game Overview
Dragon Warrior (Dragon Quest I in Japan) is the original 1986 RPG by Enix that 
started the legendary franchise. The NES version was released in North America 
in 1989.

### Technical Details
- **CPU:** 6502 (NES)
- **Mapper:** MMC1 (SxROM)
- **ROM Size:** 64 KB PRG + 16 KB CHR = 80 KB
- **Battery:** Yes (SRAM for saves)

### Key ROM Addresses
The dragon-warrior-info repo contains extensive research on ROM addresses.
See the disasm files for bank-specific label information.

### Resources
- dragon-warrior-info has complete disassembly and research
- GameInfo provides ROM analysis infrastructure
- Well-documented 6502 code with comments

