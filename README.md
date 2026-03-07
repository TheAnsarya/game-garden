# 🌱 Game Garden

> *Where ROMs bloom into source code and back again*

**Game Garden** is a comprehensive games disassembly, asset extraction, editing, and recompilation repository. It proves the bidirectionality of the 🌷 Flower Toolchain — every game can be disassembled to source, have all assets extracted, be edited, and rebuilt to a **byte-identical ROM**.

## 🌷 The Flower Toolchain

```
┌─────────────────────────────────────────────────────────────────┐
│                    🌱 Game Garden Workflow                      │
├─────────────────────────────────────────────────────────────────┤
│                                                                 │
│   Original ROM ──► 🌺 Peony ──► Source Code                     │
│        │                            │                           │
│        │                            ▼                           │
│        │                      🌼 Pansy Metadata                 │
│        │                            │                           │
│        │                            ▼                           │
│        │                     Extract Assets                     │
│        │                            │                           │
│        │              ◄──── Edit ───┘                           │
│        │              │                                         │
│        │              ▼                                         │
│        │        Convert Assets                                  │
│        │              │                                         │
│        │              ▼                                         │
│        │         🌸 Poppy ──► Built ROM                         │
│        │                          │                             │
│        └──────── Verify ══════════┘                             │
│                   ✓ Byte-identical                              │
└─────────────────────────────────────────────────────────────────┘
```

| Tool | Emoji | Purpose | Direction |
|------|-------|---------|-----------|
| [Nexen](https://github.com/TheAnsarya/Nexen) | 🎮 | Emulator & Debugger | Play & Export |
| [Peony](https://github.com/TheAnsarya/peony) | 🌺 | Disassembler | ROM → Source |
| [Pansy](https://github.com/TheAnsarya/pansy) | 🌼 | Metadata Format | Symbols & Analysis |
| [Poppy](https://github.com/TheAnsarya/poppy) | 🌸 | Assembler | Source → ROM |

## 🎮 Games in the Garden

### NES Games
| Game | Status | Disasm | Metadata | Assets | Rebuild |
|------|--------|--------|----------|--------|---------|
| [Dragon Warrior](games/nes/dw1/) | 🔄 | ✅ 364 blocks | ✅ Pansy | ✅ 144 PNG, 20 JSON | ❌ |
| [Dragon Warrior IV](games/nes/dw4/) | 🔄 | ✅ 770 blocks | ✅ Pansy | 🔄 8 JSON | ❌ |

### SNES Games
| Game | Status | Disasm | Metadata | Assets | Rebuild |
|------|--------|--------|----------|--------|---------|
| [Final Fantasy: Mystic Quest](games/snes/ffmq/) | 🔄 | ✅ 1826 blocks | ✅ Pansy | ✅ Full | ❌ |

### Game Boy Games
| Game | Status | Disasm | Metadata | Assets | Rebuild |
|------|--------|--------|----------|--------|---------|
| *Coming soon* | | | | | |

### Atari Lynx Games
| Game | Status | Disasm | Metadata | Assets | Rebuild |
|------|--------|--------|----------|--------|---------|
| [California Games](games/lynx/california-games/) | 🔄 | 🔄 | 🔄 | ❌ | ❌ |
| [Chip's Challenge](games/lynx/chips-challenge/) | 🔄 | 🔄 | 🔄 | ❌ | ❌ |
| [Test: Hello Lynx](games/lynx/hello-lynx/) | ✅ | ✅ | ✅ | N/A | ✅ |

**Legend:** ✅ Complete | 🔄 In Progress | ❌ Not Started

## 📁 Repository Structure

```
game-garden/
├── .github/                # GitHub configuration
├── docs/                   # User documentation
├── ~docs/                  # Development documentation
│   ├── chat-logs/          # AI conversation logs
│   └── session-logs/       # Session summaries
├── ~plans/                 # Roadmap and planning
├── tools/                  # Shared tooling scripts
└── games/                  # Game projects
    ├── nes/                # NES games
    ├── snes/               # SNES games
    ├── gb/                 # Game Boy games
    └── gba/                # GBA games
```

## 🚀 Quick Start

### Prerequisites
- [.NET 10 SDK](https://dotnet.microsoft.com/download)
- [Python 3.11+](https://www.python.org/downloads/)
- [Poppy](https://github.com/TheAnsarya/poppy) assembler
- [Peony](https://github.com/TheAnsarya/peony) disassembler
- [Pansy](https://github.com/TheAnsarya/pansy) metadata tools

### Working with a Game

1. **Navigate to a game folder:**
   ```powershell
   cd games/snes/ffmq
   ```

2. **Verify your ROM** (ROMs stored in `C:\~reference-roms\`):
   ```powershell
   .\verify\verify.ps1 -RomPath "C:\~reference-roms\snes\ffmq.sfc"
   ```

3. **Build the ROM:**
   ```powershell
   .\build.ps1
   ```

4. **Verify byte-identical:**
   ```powershell
   .\verify\verify.ps1 -BuiltRom build/ffmq.sfc
   ```

## 📋 Adding a New Game

1. Create the game folder structure:
   ```powershell
   .\tools\new-game.ps1 -Platform snes -Name "my-game"
   ```

2. Add ROM checksums to `verify/checksums.json`

3. Run disassembly with Peony

4. Extract and convert assets

5. Set up build pipeline

6. Verify byte-identical rebuild

See [docs/adding-games.md](docs/adding-games.md) for detailed instructions.

## 🔗 Integrated Pipeline

Game Garden is the **meta-project** that ties the Flower Toolchain together into a continuous refinement loop:

```
Play (Nexen) → Debug → Export .pansy
  → Disassemble (Peony) → Edit .pasm → Build (Poppy)
  → Verify → Merge .pansy → Play Again → REPEAT
```

Each iteration enriches the metadata — the more you play, debug, and analyze, the better the disassembly becomes.

| Stage | Tool | Input | Output |
|-------|------|-------|--------|
| 1-2. Play & Debug | [Nexen](https://github.com/TheAnsarya/Nexen) | ROM | CDL data, labels, comments |
| 3. Export | Nexen → Pansy | Debug state | `.pansy` file |
| 4. Disassemble | [Peony](https://github.com/TheAnsarya/peony) | ROM + `.pansy` | `.pasm` source + enriched `.pansy` |
| 5. Edit | VS Code + Poppy Extension | `.pasm` files | Modified source |
| 6. Build | [Poppy](https://github.com/TheAnsarya/poppy) | `.pasm` files | ROM + `.pansy` |
| 7. Verify | Peony | Original + built ROM | Byte-identical ✓ |
| 8. Merge | [Pansy CLI](https://github.com/TheAnsarya/pansy) | Multiple `.pansy` | Combined `.pansy` |
| 9-10. Play & Debug Again | Nexen | ROM + merged `.pansy` | Richer analysis |

**Pipeline documentation:** [~plans/integrated-pipeline-plan.md](~plans/integrated-pipeline-plan.md)
**Pipeline scripts:** [tools/pipeline/](tools/pipeline/) *(planned)*
**Detailed master plan:** [pansy ~Plans/integrated-pipeline-master-plan.md](https://github.com/TheAnsarya/pansy/blob/main/~Plans/integrated-pipeline-master-plan.md)

## 🔗 Related Projects

- [� Nexen](https://github.com/TheAnsarya/Nexen) - Multi-system emulator with Pansy integration
- [�🌸 Poppy](https://github.com/TheAnsarya/poppy) - Multi-system assembler
- [🌺 Peony](https://github.com/TheAnsarya/peony) - Multi-system disassembler
- [🌼 Pansy](https://github.com/TheAnsarya/pansy) - Metadata format & tools
- [GameInfo](https://github.com/TheAnsarya/GameInfo) - ROM hacking toolkit
- [ffmq-info](https://github.com/TheAnsarya/ffmq-info) - FFMQ disassembly project

## 📄 License

MIT License - See [LICENSE](LICENSE) for details.

## 🤝 Contributing

Contributions welcome! Please read [CONTRIBUTING.md](CONTRIBUTING.md) first.

---

*🌱 Plant a ROM, watch it bloom into source code* 🦕
