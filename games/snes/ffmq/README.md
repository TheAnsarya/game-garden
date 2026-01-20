# Final Fantasy: Mystic Quest

**Platform:** SNES (65816)
**ROM:** Final Fantasy - Mystic Quest (U) (V1.1).sfc
**Size:** 512 KB (4 Mbit)
**Status:** 🟡 In Progress

## 📊 Progress

| Phase | Status | Notes |
|-------|--------|-------|
| ROM Verified | ✅ | CRC32: `2c52c792` |
| Disassembly | ❌ | Pending - use Peony |
| Metadata | ❌ | Pansy file pending |
| Graphics | ✅ | 6 tile sheets extracted to PNG |
| Text | 🔄 | Partial - text system documented |
| Data | ✅ | Enemies, attacks, spells, maps, NPCs |
| Rebuild | ❌ | Byte-identical pending |

Legend: ✅ Complete | 🔄 In Progress | ❌ Not Started

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
├── src/                    # Disassembled source (.pasm) - pending
├── metadata/               # Pansy metadata files - pending
├── assets/
│   ├── extracted/          # Raw binary assets (gitignored)
│   └── editable/
│       ├── graphics/       # PNG tile sheets with metadata
│       └── data/           # JSON game data (18 files)
├── build/                  # Build output (gitignored)
├── verify/                 # ROM verification scripts
│   └── checksums.json      # Expected ROM checksums
└── docs/
    └── rom-map.md          # Comprehensive ROM documentation
```

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
