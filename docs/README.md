# 🌱 Game Garden Documentation

Welcome to the Game Garden documentation! This guide covers everything you need to know about working with game disassembly and recompilation projects.

## 📚 Documentation Index

### Getting Started
- [Quick Start Guide](quick-start.md) - Get up and running quickly
- [Prerequisites](prerequisites.md) - Required tools and setup
- [Repository Structure](structure.md) - Understanding the project layout

### Workflow Guides
- [🌷 Pipeline Guide](PIPELINE-GUIDE.md) - **Complete Flower Toolchain workflow** (play → debug → disassemble → edit → build → verify)
- [Adding a New Game](adding-games.md) - Step-by-step game setup
- [Disassembly Workflow](disassembly.md) - Using Peony for disassembly
- [Asset Extraction](asset-extraction.md) - Extracting and converting assets
- [Build Pipeline](build-pipeline.md) - Rebuilding ROMs with Poppy
- [Verification](verification.md) - Ensuring byte-identical output

### Reference
- [Supported Platforms](platforms.md) - NES, SNES, GB, GBA details
- [File Formats](file-formats.md) - Asset and metadata formats
- [Troubleshooting](troubleshooting.md) - Common issues and solutions

### The Flower Toolchain
- [� Nexen](https://github.com/TheAnsarya/Nexen) - Emulator & Debugger
- [�🌺 Peony](https://github.com/TheAnsarya/peony) - Disassembler
- [🌼 Pansy](https://github.com/TheAnsarya/pansy) - Metadata Format
- [🌸 Poppy](https://github.com/TheAnsarya/poppy) - Assembler

## 🔄 The Bidirectional Workflow

```
┌────────────────────────────────────────────────────────────────┐
│                     DISASSEMBLY PHASE                          │
├────────────────────────────────────────────────────────────────┤
│ 1. Verify ROM checksums                                        │
│ 2. Disassemble with Peony → source code                        │
│ 3. Generate Pansy metadata → symbols, cross-refs               │
│ 4. Extract assets → graphics, text, data                       │
│ 5. Convert to editable → PNG, JSON, TXT                        │
└────────────────────────────────────────────────────────────────┘
                              │
                              ▼
┌────────────────────────────────────────────────────────────────┐
│                       EDITING PHASE                            │
├────────────────────────────────────────────────────────────────┤
│ • Edit source code (bug fixes, features)                       │
│ • Edit graphics in image editor                                │
│ • Edit text/dialogue                                           │
│ • Edit game data (stats, tables)                               │
│ • Update Pansy metadata (labels, comments)                     │
└────────────────────────────────────────────────────────────────┘
                              │
                              ▼
┌────────────────────────────────────────────────────────────────┐
│                    COMPILATION PHASE                           │
├────────────────────────────────────────────────────────────────┤
│ 1. Convert assets → binary format                              │
│ 2. Insert assets into build pipeline                           │
│ 3. Assemble with Poppy → ROM                                   │
│ 4. Verify checksums → byte-identical ✓                         │
└────────────────────────────────────────────────────────────────┘
```

## 📊 Game Status Definitions

| Status | Meaning |
|--------|---------|
| ✅ Complete | Fully working, byte-identical rebuild |
| 🔄 In Progress | Partially complete, work ongoing |
| ❌ Not Started | Planned but not yet begun |
| ⚠️ Issues | Has problems that need resolution |

## 🎯 Project Goals

1. **Prove Bidirectionality** - Every game should rebuild to byte-identical ROM
2. **Complete Asset Extraction** - All graphics, text, data extractable
3. **Editable Formats** - Assets in human-editable formats (PNG, JSON)
4. **Documentation** - Full ROM/RAM maps, data structure docs
5. **Reproducibility** - Anyone can clone and rebuild
