# 🌷 Flower Toolchain Pipeline Guide

> Complete workflow for disassembling, editing, and rebuilding retro game ROMs using the Flower Toolchain.

## Overview

The **Flower Toolchain** is an integrated set of tools for reverse engineering retro games:

| Tool | Role | Project |
|------|------|---------|
| 🎮 **Nexen** | Emulator & Debugger — play games, record CDL, export metadata | [TheAnsarya/Nexen](https://github.com/TheAnsarya/Nexen) |
| 🌺 **Peony** | Disassembler — ROM → `.pasm` source code | [TheAnsarya/peony](https://github.com/TheAnsarya/peony) |
| 🌸 **Poppy** | Assembler — `.pasm` source → ROM binary | [TheAnsarya/poppy](https://github.com/TheAnsarya/poppy) |
| 🌼 **Pansy** | Metadata Format — symbols, comments, code/data maps, cross-refs | [TheAnsarya/pansy](https://github.com/TheAnsarya/pansy) |
| 🌱 **Game Garden** | Meta-project — scripts, tests, game projects | [TheAnsarya/game-garden](https://github.com/TheAnsarya/game-garden) |

## The Pipeline

```
  ┌──────────┐     ┌──────────┐     ┌──────────┐
  │ 1. PLAY  │────▶│ 2. DEBUG │────▶│ 3. EXPORT│
  │ (Nexen)  │     │ (Nexen)  │     │(Nex→Pan) │
  └──────────┘     └──────────┘     └────┬─────┘
                                         │ .pansy
                                         ▼
  ┌──────────┐     ┌──────────┐     ┌──────────┐
  │ 5. EDIT  │◀────│ 4. DISA- │◀────│  .pansy  │
  │(VS Code) │     │ SSEMBLE  │     │  + ROM   │
  └─────┬────┘     │ (Peony)  │     └──────────┘
        │ .pasm    └──────────┘
        ▼
  ┌──────────┐     ┌──────────┐     ┌──────────┐
  │ 6. BUILD │────▶│ 7. VERI- │────▶│ 8. MERGE │
  │ (Poppy)  │     │   FY     │     │ (Pansy)  │
  └──────────┘     └──────────┘     └────┬─────┘
        │                                │
        ▼                                ▼
  ┌──────────┐                    ┌──────────┐
  │ 9. PLAY  │◀───────────────────│  Import  │
  │  AGAIN   │                    │  merged  │
  └─────┬────┘                    │  .pansy  │
        │                         └──────────┘
        ▼
  ┌──────────┐
  │ 10.DEBUG │──────▶ GOTO 3 (refine)
  │  AGAIN   │
  └──────────┘
```

Each iteration enriches the metadata — symbols get named, comments improve, code/data classification becomes more accurate.

---

## Prerequisites

### Required Tools

| Tool | Installation |
|------|-------------|
| **Nexen** | Download from [Releases](https://github.com/TheAnsarya/Nexen/releases) or build from source |
| **Peony** | `dotnet tool install -g peony` or clone and build |
| **Poppy** | `dotnet tool install -g poppy` or clone and build |
| **Pansy CLI** | `dotnet tool install -g pansy` or clone and build |
| **.NET 10 SDK** | [Download](https://dotnet.microsoft.com/download) |
| **Python 3.10+** | For game-garden scripts |
| **VS Code** | With [Poppy Assembly extension](https://marketplace.visualstudio.com/items?itemName=TheAnsarya.poppy-assembly) |

### ROM Files

Store ROMs in `C:\~reference-roms\` organized by platform:

```
C:\~reference-roms\
├── nes/         # .nes files
├── snes/        # .sfc/.smc files
├── gb/          # .gb/.gbc files
├── gba/         # .gba files
└── lynx/        # .lnx files
```

ROMs are never committed to the repository.

---

## Stage 1: Play (Nexen)

Load the ROM in Nexen and exercise code paths by playing the game.

```
Nexen.exe "C:\~reference-roms\nes\my-game.nes"
```

**What happens:**
- Nexen's CDL (Code/Data Log) system records which bytes execute as code vs. read as data
- CPU state snapshots capture register values and processor flags
- Breakpoints and watches help identify important routines

**Tips:**
- Play through as many game states as possible (menus, gameplay, cutscenes, game over)
- The more code paths exercised, the better the initial disassembly
- Use save states to revisit areas for deeper analysis

---

## Stage 2: Debug (Nexen)

Use Nexen's built-in debugger to understand code behavior.

**Key features:**
- **Breakpoints** — Pause on specific addresses or conditions
- **Memory viewer** — Watch RAM state in real time
- **Trace logger** — Record instruction execution traces
- **PPU viewer** — Inspect tiles, sprites, palettes, nametables
- **Call stack** — Track subroutine nesting

**Actions:**
- Name important RAM addresses (player health, game state, etc.)
- Identify interrupt handlers (NMI, IRQ, Reset)
- Note data table locations and formats

---

## Stage 3: Export (Nexen → Pansy)

Export emulator analysis data as a `.pansy` metadata file.

In Nexen: **Tools → Export Pansy Metadata**

Or from the debugger context menu on specific address ranges.

**What gets exported:**
- Code/Data Log (CDL) — which bytes are code, data, jump targets, subroutine entries
- Symbols — named labels from the debugger
- Comments — inline annotations
- CPU state — processor flags at known addresses (M/X flags for 65816)
- Bookmarks — saved debugger bookmarks
- Cross-references — JSR/JMP/branch targets

**Output:** `metadata/game-name.pansy`

---

## Stage 4: Disassemble (Peony)

Convert the ROM binary to editable `.pasm` source using Peony.

```powershell
# Basic disassembly
peony disasm "C:\~reference-roms\nes\my-game.nes" --output src/ --format poppy

# With Pansy metadata hints (much better output)
peony disasm "C:\~reference-roms\nes\my-game.nes" \
	--output src/ \
	--format poppy \
	--pansy metadata/game-name.pansy

# With CDL data from emulator
peony disasm "C:\~reference-roms\nes\my-game.nes" \
	--output src/ \
	--format poppy \
	--cdl metadata/game-name.cdl

# Generate enriched Pansy metadata as a side output
peony disasm "C:\~reference-roms\nes\my-game.nes" \
	--output src/ \
	--format poppy \
	--pansy metadata/game-name.pansy \
	--export-pansy metadata/game-name-enriched.pansy
```

**What Peony does:**
- Decodes CPU instructions into assembly mnemonics
- Uses CDL/Pansy hints to distinguish code from data
- Generates bank-organized `.pasm` files
- Preserves symbol names, types, and comments from the input `.pansy`
- Discovers additional symbols (jump targets, subroutine entries) via static analysis

**Output:** `src/*.pasm` + optionally an enriched `.pansy` file

---

## Stage 5: Edit (VS Code + Poppy Extension)

Open the disassembled source in VS Code with the Poppy Assembly extension.

```powershell
code games/nes/my-game/
```

**Editing tasks:**
- **Rename symbols** — Give meaningful names to `sub_8000`, `data_c000`, etc.
- **Add comments** — Document what routines do, what data tables contain
- **Fix disassembly errors** — Correct misidentified code/data boundaries
- **Modify code** — Change game behavior, fix bugs, add features
- **Extract assets** — Identify and extract graphics, text, music data

**The Poppy extension provides:**
- Syntax highlighting for `.pasm` files
- Symbol navigation (Go to Definition, Find References)
- Error diagnostics
- Hover documentation

---

## Stage 6: Build (Poppy)

Compile the edited `.pasm` source back to a ROM binary.

```powershell
# Build from main source file
poppy build src/main.pasm --output build/my-game.nes

# Generate Pansy metadata from the build
poppy build src/main.pasm --output build/my-game.nes --pansy metadata/build-output.pansy

# Verbose build with listing
poppy build src/main.pasm --output build/my-game.nes --listing build/my-game.lst
```

**What Poppy does:**
- Assembles `.pasm` source into a ROM binary
- Resolves all labels and expressions
- Generates optional Pansy metadata (symbol addresses, source map)
- Reports errors for undefined symbols, out-of-range values, etc.

**Output:** `build/my-game.nes` + optionally `metadata/build-output.pansy`

---

## Stage 7: Verify

Confirm the rebuilt ROM is byte-identical to the original.

```powershell
# Using game-garden verification script
python tools/verify-rom.py \
	--rom build/my-game.nes \
	--checksums games/nes/my-game/verify/checksums.json

# Or using the pipeline tool
python tools/pipeline.py verify \
	--rom build/my-game.nes \
	--expected "C:\~reference-roms\nes\my-game.nes"

# Quick manual check
certutil -hashfile build/my-game.nes SHA256
certutil -hashfile "C:\~reference-roms\nes\my-game.nes" SHA256
```

**If the ROM doesn't match:**
- Check Poppy build output for warnings
- Compare listing files to find differences
- Fix `.pasm` source and rebuild
- Common issues: incorrect data tables, wrong bank boundaries, missing bytes

---

## Stage 8: Merge (Pansy)

Merge metadata from multiple sources into a single enriched `.pansy` file.

```powershell
# Merge Nexen export + Peony analysis + Poppy build output
pansy merge \
	--base metadata/game-name.pansy \
	--overlay metadata/game-name-enriched.pansy \
	--overlay metadata/build-output.pansy \
	--output metadata/merged.pansy
```

**What merging does:**
- Combines CDL maps (union of code/data classifications)
- Merges symbol tables (keeping the most specific type)
- Combines comments (deduplicating identical entries)
- Unions cross-reference sets
- Preserves all bookmarks

---

## Stage 9 & 10: Play Again → Debug Again

Import the merged `.pansy` back into Nexen for an improved debugging experience.

In Nexen: **Tools → Import Pansy Metadata** → select `metadata/merged.pansy`

**The improved experience:**
- All named symbols appear in the debugger (function names, data labels, constants)
- Comments appear inline in the disassembly view
- Code/data map is more accurate — fewer misclassified bytes
- Cross-references enable "Find all callers" and "Find all references" navigation

**Then repeat the cycle:**
- Exercise new code paths
- Discover more code/data boundaries
- Export updated metadata
- Re-disassemble with enriched hints
- Each pass improves the disassembly quality

---

## Game Project Structure

Each game in game-garden follows this layout:

```
games/{platform}/{game-name}/
├── README.md               # Game overview, status, notes
├── build.ps1               # Build script
├── build.config.json       # Build configuration
├── verify/
│   ├── checksums.json      # Expected CRC32/MD5/SHA256
│   └── verify.ps1          # Verification script
├── src/                    # Disassembled source (.pasm)
│   ├── main.pasm
│   └── bank_*.pasm
├── metadata/               # Pansy metadata files
│   └── {game}.pansy
├── assets/                 # Game assets
│   ├── editable/           # Editable formats (PNG, JSON)
│   └── binary/             # Converted binary (gitignored)
├── build/                  # Build output (gitignored)
└── docs/                   # Game-specific documentation
```

---

## Quick Reference

### Common Commands

```powershell
# Create a new game project
.\tools\new-game.ps1 -Platform nes -Name "my-game"

# Disassemble with metadata
peony disasm ROM --output src/ --pansy metadata/input.pansy --export-pansy metadata/enriched.pansy

# Build from source
poppy build src/main.pasm --output build/game.nes --pansy metadata/build.pansy

# Verify byte-identical
python tools/verify-rom.py --rom build/game.nes --checksums verify/checksums.json

# Inspect Pansy file
pansy info metadata/game.pansy

# Merge metadata
pansy merge --base a.pansy --overlay b.pansy --output merged.pansy
```

### File Extensions

| Extension | Tool | Description |
|-----------|------|-------------|
| `.pasm` | Poppy | Poppy Assembly source files |
| `.pansy` | Pansy | Binary metadata files |
| `.cdl` | Nexen | Code/Data Log files |
| `.lst` | Poppy | Assembly listing output |
| `.diz` | Peony | DiztinGUIsh project import |
| `.nl` | — | FCEUX name list (label import) |
| `.mlb` | — | Mesen label format (label import) |

---

## See Also

- [Merge Workflow](MERGE-WORKFLOW.md) — How to merge Pansy metadata from multiple sources
- [Adding Games](adding-games.md) — How to add a new game to the garden
- [Master Pipeline Plan](https://github.com/TheAnsarya/pansy/blob/main/~Plans/integrated-pipeline-master-plan.md) — Detailed architecture
- [Pansy File Format](https://github.com/TheAnsarya/pansy/blob/main/docs/FILE-FORMAT.md) — Binary format specification
- [Poppy Documentation](https://github.com/TheAnsarya/poppy#-documentation) — Assembler reference
- [Peony Documentation](https://github.com/TheAnsarya/peony#-documentation) — Disassembler reference
