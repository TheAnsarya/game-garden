# Chip's Challenge - Atari Lynx Disassembly

## Status

| Phase | Status | Notes |
|-------|--------|-------|
| ROM Verified | ✅ | Checksums verified (GoodLynx 2.01) |
| Disassembly | 🔄 | Initial pass complete, needs CDL data |
| Metadata | ❌ | Not started |
| Graphics | ❌ | Not started |
| Text | ❌ | Not started |
| Data | ❌ | Not started |
| Rebuild | ❌ | Not started |

## ROM Information

- **Platform:** Atari Lynx
- **ROM File:** Chip's Challenge (1989).lnx
- **Size:** 131,136 bytes (64-byte LNX header + 131,072-byte ROM)
- **Format:** LNX (standard Lynx format)
- **MD5:** `ad3d091ba4250d0354bc6d3fd8c9a882`
- **SHA1:** `92af2d566c6bbf626a21dbfa41af16d73e0a774d`
- **SHA256:** `5a55f01511e382297f86b073f71f7e1b504762d323a0c7e8ee2bbc1e6633ce45`
- **Cart Name:** chipchal.lnx
- **Manufacturer:** Atari
- **Release Year:** 1989

## Game Overview

Chip's Challenge is a tile-based puzzle game developed by Epyx. It was one of
the Lynx launch titles and later became famous through its Windows port.

### Gameplay
- Navigate Chip through 144 increasingly difficult levels
- Collect computer chips to unlock the exit
- Avoid monsters, water, fire, and other hazards
- Use keys, boots, and other items to overcome obstacles
- Time limit on each level

### Technical Interest
This game is notable for:
- Complex level data structures (144 levels!)
- Multiple tile types with interaction rules
- Pathfinding AI for monsters
- Sprite-based graphics for tiles
- Music and sound effects

## Disassembly Notes

Initial disassembly shows limited code detection (encrypted boot loader).
Key challenges:

1. **Boot Loader:** Lynx boot ROM loads program from cartridge
2. **Level Data:** 144 levels with tile maps need identification
3. **Code Coverage:** Manual analysis and Nexen debugging

### Expected Data Structures

- Level tile maps (144 levels)
- Tile graphics (walls, floors, items, monsters)
- Monster movement patterns/AI
- Sound/music data
- Text strings (level names, hints)

## Technical Notes

### Memory Layout

- **$0000-$00FF:** Zero Page (fast access variables)
- **$0100-$01FF:** Stack
- **$0200-$FBFF:** RAM (program code and data)
- **$FC00-$FCFF:** Suzy (sprite engine, math)
- **$FD00-$FDFF:** Mikey (timers, audio, display, I/O)
- **$FE00-$FFFF:** Boot ROM / vectors

### Tile Types (Research Target)

- Floors, Walls, Chips, Sockets
- Keys (blue, red, green, yellow)
- Doors (matching keys)
- Boots (fire, water, ice, suction)
- Monsters (bugs, balls, tanks, etc.)
- Special (teleporters, clone machines, etc.)

## Next Steps

1. ~~Extract and verify ROM~~ ✅
2. ~~Run Peony disassembler~~ ✅ (initial pass complete)
3. Analyze ROM structure in Nexen debugger
4. Manually identify code/data boundaries
5. Add labels and comments in Poppy source
6. Extract tile graphics
7. Document game mechanics
8. Verify byte-identical rebuild with Poppy

## References

- [Chip's Challenge Wiki](https://chipschallenge.fandom.com/)
- [Level file format documentation](https://www.seasip.info/ccfile.html)
- [Atari Lynx Development](https://atarilynxdeveloper.wordpress.com/)
- [Lynx Programming Manual](https://archive.org/details/AtariLynxProgrammersGuide)
- [Nexen Emulator](https://github.com/TheAnsarya/Nexen) - For debugging and analysis

## Related Projects

- Windows Chip's Challenge (Microsoft Entertainment Pack)
- Tile World (open-source clone)
- Chip's Challenge 2 (Steam release)
