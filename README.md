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
| [Peony](https://github.com/TheAnsarya/peony) | 🌺 | Disassembler | ROM → Source |
| [Pansy](https://github.com/TheAnsarya/pansy) | 🌼 | Metadata Format | Symbols & Analysis |
| [Poppy](https://github.com/TheAnsarya/poppy) | 🌸 | Assembler | Source → ROM |

## 🎮 Games in the Garden

### NES Games
| Game | Status | Disasm | Assets | Rebuild |
|------|--------|--------|--------|---------|
| *Coming soon* | | | | |

### SNES Games
| Game | Status | Disasm | Assets | Rebuild |
|------|--------|--------|--------|---------|
| [Final Fantasy: Mystic Quest](games/snes/ffmq/) | 🔄 | ❌ | ✅ | ❌ |

### Game Boy Games
| Game | Status | Disasm | Assets | Rebuild |
|------|--------|--------|--------|---------|
| *Coming soon* | | | | |

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

## 🔗 Related Projects

- [🌸 Poppy](https://github.com/TheAnsarya/poppy) - Multi-system assembler
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
