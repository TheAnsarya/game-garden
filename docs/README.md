# 🌱 Game Garden Documentation

Welcome to the Game Garden documentation! This guide covers everything you need to know about working with game disassembly and recompilation projects.

## 📚 Documentation Index

### Getting Started

- [Adding a New Game](adding-games.md) - Step-by-step game setup

### Workflow Guides

- [🌷 Pipeline Guide](PIPELINE-GUIDE.md) - **Complete Flower Toolchain workflow** (play → debug → disassemble → edit → build → verify)
- [🌼 Merge Workflow](MERGE-WORKFLOW.md) - Merging Pansy metadata from multiple sources
- [🌸 Project Config](flower-project.schema.json) - Unified `flower-project.json` schema ([example](flower-project.example.json))
- [🔧 Version Compatibility](VERSION-COMPATIBILITY.md) - Cross-project version matrix and validation rules

### The Flower Toolchain

- [🎮 Nexen](https://github.com/TheAnsarya/Nexen) - Emulator & Debugger
- [🌺 Peony](https://github.com/TheAnsarya/peony) - Disassembler
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
