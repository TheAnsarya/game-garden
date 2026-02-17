# California Games - Atari Lynx Disassembly

## Status

| Phase | Status | Notes |
|-------|--------|-------|
| ROM Verified | ✅ | Checksums verified (GoodLynx 2.01) |
| Disassembly | 🔄 | Initial pass complete, needs manual analysis |
| Metadata | ❌ | Not started |
| Graphics | ❌ | Not started |
| Text | ❌ | Not started |
| Data | ❌ | Not started |
| Rebuild | ❌ | Not started |

## ROM Information

- **Platform:** Atari Lynx
- **ROM File:** California Games (1991).lnx
- **Size:** 131,136 bytes (64-byte LNX header + 131,072-byte ROM)
- **Format:** LNX (standard Lynx format)
- **MD5:** `35a63e6ff2516c670fa6e72baf57f9ab`
- **SHA1:** `ae369a7a3f076de1449097d3b926e3ab4dae242c`
- **Cart Name:** calgames.lyx
- **Manufacturer:** Atari

## Disassembly Notes

The initial disassembly shows limited code detection because Lynx ROMs
typically contain boot loader data at the load address ($0200). Key challenges:

1. **Boot Loader:** The Lynx boot ROM loads the game from cartridge
2. **Compressed Data:** Much of the ROM may be compressed graphics/data
3. **Code Coverage:** Manual analysis with Nexen debugger needed

### To Improve Disassembly

1. Load ROM in Nexen and use debugger
2. Trace execution from entry point
3. Add labels and comments in Poppy source
4. Rebuild with Poppy to verify

## Game Overview

California Games is an Epyx sports compilation featuring:
- Surfing
- Skateboarding (Half-pipe)
- BMX
- Foot Bag (Hacky Sack)

It was one of the launch titles for the Atari Lynx and showcases
the system's sprite scaling and rotation capabilities.

## Technical Notes

### Memory Layout

- **$0000-$00FF:** Zero Page (fast access variables)
- **$0100-$01FF:** Stack
- **$0200-$FBFF:** RAM (program code and data)
- **$FC00-$FCFF:** Suzy (sprite engine, math)
- **$FD00-$FDFF:** Mikey (timers, audio, display, I/O)
- **$FE00-$FFFF:** Boot ROM / vectors

### Expected Structures

- Sprite control blocks for player/obstacle sprites
- Tile graphics for backgrounds
- Level/event data tables
- Audio sequences for music and sound effects

## Next Steps

1. ~~Extract and verify ROM~~ ✅
2. ~~Run Peony disassembler~~ ✅ (initial pass complete)
3. Generate CDL file by tracing game execution in Mednafen
4. Re-run disassembly with CDL data for better code coverage
5. Review output and add labels/comments
6. Extract graphics assets (sprite data)
7. Document data structures
8. Verify byte-identical rebuild

## References

- [Atari Lynx Development](https://atarilynxdeveloper.wordpress.com/)
- [Lynx Programming Manual](https://archive.org/details/AtariLynxProgrammersGuide)
- [Mednafen Lynx Source](https://github.com/libretro/beetle-lynx-libretro)
