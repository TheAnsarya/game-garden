# Final Fantasy: Mystic Quest

**Platform:** SNES (65816)
**ROM:** Final Fantasy - Mystic Quest (U) (V1.1).sfc
**Size:** 512 KB (4 Mbit)
**Status:** 🟡 In Progress

## 📊 Progress

| Phase | Status | Notes |
|-------|--------|-------|
| ROM Verified | ✅ | CRC32: 2c52c792 |
| Disassembly | ❌ | Source extracted |
| Metadata | ❌ | Pansy file created |
| Graphics | ✅ | 6 tile sheets extracted to PNG |
| Text | 🔄 | Partial - character/spell data |
| Data | ✅ | Characters, spells, elements |
| Rebuild | ❌ | Byte-identical |

Legend: ✅ Complete | 🔄 In Progress | ❌ Not Started

## 🔗 Related Projects

- [ffmq-info](https://github.com/TheAnsarya/ffmq-info) - FFMQ documentation and research
- [games.darkrepos.com/SNES/FFMQ](https://games.darkrepos.com/wiki/SNES/FFMQ) - Wiki documentation

## 🔧 Build

```powershell
# Verify ROM
.\verify\verify.ps1 -RomPath "C:\~reference-roms\snes\Final Fantasy - Mystic Quest (U) (V1.1).sfc"

# Build ROM
.\build.ps1
```

## 📁 Structure

```
ffmq/
├── src/            # Disassembled source (.pasm)
├── metadata/       # Pansy metadata files
├── assets/         # Extracted and editable assets
├── build/          # Build output (gitignored)
├── verify/         # ROM verification
└── docs/           # Game documentation
```

## 📝 Notes

### Game Overview
Final Fantasy: Mystic Quest (known as Mystic Quest Legend in PAL regions) is a 1992 action RPG 
developed by Square for the SNES. It was designed as an entry-level RPG for Western audiences.

### Technical Details
- CPU: 65816 (SNES)
- ROM Size: 512 KB (4 Mbit)
- SRAM: None
- Special Chips: None

### Resources
- ffmq-info project has extensive documentation
- Existing disassembly work can be leveraged
