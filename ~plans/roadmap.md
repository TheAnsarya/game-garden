# 🗺️ Game Garden Roadmap

*Last Updated: 2026-01-23*

## Phase 1: Foundation ✅
- [x] Repository structure
- [x] Documentation framework
- [x] Copilot instructions
- [x] First game: FFMQ (SNES) - disassembly & assets extracted
- [x] Verification tooling (checksums.json per game)
- [x] Build pipeline templates (build.ps1, build.config.json)

## Phase 2: Prove Bidirectionality 🔄
### FFMQ (SNES)
- [x] Disassembly via Peony (1826 blocks)
- [x] Pansy metadata (2,928 symbols, 1,797 comments)
- [x] Extract all assets (graphics, data, text)
- [ ] **BLOCKED:** Rebuild byte-identical via Poppy
  - See [peony#41](https://github.com/TheAnsarya/peony/issues/41) - Unknown opcodes
  - See [peony#42](https://github.com/TheAnsarya/peony/issues/42) - CDL export
  - See [ffmq-info#91](https://github.com/TheAnsarya/ffmq-info/issues/91) - Migrate ffmq-info to Poppy

### Dragon Warrior (NES)
- [x] Disassembly via Peony + CDL (364 blocks, PRG1)
- [x] Pansy metadata (extracted from dragon-warrior-info)
- [x] Assets extracted (graphics, text, data)
- [ ] Rebuild byte-identical

### Dragon Warrior IV (NES)
- [x] Disassembly via Peony + CDL (770 blocks)
- [x] Assets extracted
- [ ] Rebuild byte-identical

## Phase 3: Fix Toolchain Blockers
- [ ] [peony#41](https://github.com/TheAnsarya/peony/issues/41): Handle unknown opcodes as .db
- [ ] [peony#42](https://github.com/TheAnsarya/peony/issues/42): Add CDL support to export
- [ ] [pansy#16](https://github.com/TheAnsarya/pansy/issues/16): Pansy file merge functionality
- [ ] Test end-to-end: ROM → Peony → Pansy → Poppy → ROM ✓

## Phase 4: More SNES Games
- [ ] Dragon Quest III Remake (SNES)
- [ ] Dragon Quest IV Remake (SNES)  
- [ ] Other SNES games

## Phase 5: Other Platforms
- [ ] Game Boy games
- [ ] GBA games
- [ ] Genesis games
- [ ] Atari 2600 games

## Phase 6: Tooling
- [x] Automated ROM verification
- [x] Asset extraction pipeline (per-game scripts)
- [ ] Build system improvements
- [ ] CI/CD for testing rebuilds

## Long-term Goals
- 100+ games in the garden
- Full documentation for each game
- Community contributions
- Integration with GameInfo wiki
