# Chip's Challenge Disassembly Plan

## Overview

Complete disassembly of Chip's Challenge for Atari Lynx with full level data
extraction and documentation.

## Phase 1: Foundation (Current)

**Status:** ✅ Complete

- [x] Extract ROM from archive
- [x] Verify checksums
- [x] Create project scaffold
- [x] Initial Peony disassembly
- [x] Create GitHub issue #11
- [x] Hardware definitions file

## Phase 2: ROM Analysis with Nexen

**Status:** Not Started

- [ ] Load ROM in Nexen debugger
- [ ] Set breakpoints at entry point ($0200)
- [ ] Trace boot sequence execution
- [ ] Identify main game loop
- [ ] Document code entry points
- [ ] Add labels to Poppy source

**Notes:**
- Use Nexen's debugger to step through code
- Identify subroutine boundaries
- Watch for jumps to high memory addresses

## Phase 3: Level Data Research

**Status:** Not Started

### Reference: Windows CC Format

The Windows version uses a well-documented format:
- Levels stored as tile data + monster lists + other metadata
- Each level: 32x32 tile map (top and bottom layers)
- Monster coordinates and movement patterns

### Lynx Format Investigation

- [ ] Locate level data boundaries in ROM
- [ ] Compare with Windows format structure
- [ ] Identify compression (if any)
- [ ] Document level header structure
- [ ] Map all 144 levels

### Expected Level Structure

```
Level Header (TBD bytes):
  - Level number
  - Time limit
  - Chips required
  - Level name offset?

Tile Data:
  - 32x32 grid = 1024 tiles per layer
  - 2 layers (floor + overlay)?
  - Possibly compressed

Monster Data:
  - Monster type
  - Starting position
  - Movement pattern
```

## Phase 4: Graphics Extraction

**Status:** Not Started

- [ ] Identify tile graphics location
- [ ] Extract raw tile data
- [ ] Determine palette
- [ ] Convert to PNG
- [ ] Create tile atlas

### Expected Tiles

- Floor types (ice, water, fire, force floors)
- Wall types (regular, invisible, blue fake)
- Items (keys, boots, chips)
- Doors
- Monsters (various types)
- Special (teleporters, clone machines, etc.)

## Phase 5: Code Documentation

**Status:** Not Started

- [ ] Label game loop
- [ ] Document input handling
- [ ] Identify collision detection
- [ ] Document monster AI routines
- [ ] Label level loading code
- [ ] Document save/load (if present)

## Phase 6: Audio Extraction

**Status:** Not Started

- [ ] Locate audio data
- [ ] Identify music format
- [ ] Extract sound effects
- [ ] Document audio playback code

## Phase 7: Rebuild Verification

**Status:** Not Started

- [ ] Ensure all data accounted for
- [ ] Build with Poppy
- [ ] Verify byte-identical to original
- [ ] Test in emulator

## Resources

### Documentation

- [Chip's Challenge Wiki](https://chipschallenge.fandom.com/)
- [Windows CC File Format](https://www.seasip.info/ccfile.html)
- [Lynx Programming Manual](https://archive.org/details/AtariLynxProgrammersGuide)

### Tools

- **Poppy:** Assembly and rebuild
- **Peony:** Initial disassembly
- **Nexen:** Debugging and analysis
- **game-garden tools:** Asset extraction

## Timeline Estimate

- Phase 2 (CDL): 1 session
- Phase 3 (Levels): 2-3 sessions
- Phase 4 (Graphics): 1 session
- Phase 5 (Code): 2-3 sessions
- Phase 6 (Audio): 1 session
- Phase 7 (Rebuild): 1 session

**Total:** ~8-10 sessions for complete disassembly

## Priority Order

1. Nexen analysis (understand code structure)
2. Level data (most interesting part)
3. Graphics (needed for level editors)
4. Poppy rebuild (verify correctness)
5. Audio (nice to have)
6. Full documentation
