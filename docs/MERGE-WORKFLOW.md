# 🌼 Pansy Merge Workflow Guide

> How to merge metadata from multiple pipeline stages into a unified `.pansy` file

## Overview

The 🌷 Flower Toolchain produces `.pansy` metadata files at multiple stages — Nexen exports CDL and symbols during gameplay, Peony generates analysis during disassembly, and Poppy creates source maps during assembly. The **Pansy merge** command combines these into a single authoritative metadata file for each game project.

## When to Merge

Merging is needed whenever you have metadata from more than one source. Common scenarios:

| Scenario | Base | Overlay | Result |
|----------|------|---------|--------|
| After emulator + disassembly | Nexen CDL export | Peony analysis | Combined CDL + symbols + cross-refs |
| After editing + rebuild | Original analysis | Poppy build metadata | Updated source map + original symbols |
| After manual annotation | Automated analysis | Hand-edited `.pansy` | Preserved manual work + machine analysis |
| Multi-session | Previous session export | New session export | Accumulated CDL coverage |

**Rule of thumb:** Merge after completing any pipeline stage that produces new metadata.

## Merge Semantics

The Pansy merge uses a **base + overlay** strategy. The base file provides the foundation (ROM info, initial data), and the overlay adds or supplements it.

### Per-Section Merge Rules

| Section | Strategy | Details |
|---------|----------|---------|
| **Code/Data Map** | Flag union (OR) | All CDL flags are OR'd together — bits accumulate, never lost |
| **Symbols** | Union, base-first | Overlay symbols appended after base; duplicates (same address + name + type) removed |
| **Comments** | Union, base-first | Same as symbols — base ordering preserved, overlay additions appended |
| **Cross-References** | Deduplicated union | Unique by `(from, to, type)` tuple — no duplicate xrefs |
| **Memory Regions** | Union, overlay wins | If both files define a region with the same name, overlay's definition wins |
| **Bookmarks** | Deduplicated union | Unique bookmarks preserved from both files |
| **Data Types** | Deduplicated union | Unique data type entries preserved |
| **Source Map** | File index remapping | Source file tables merged; overlay entries remapped to unified index |
| **CPU State** | Union | All CPU state entries from both files |
| **Metadata** | Overlay wins | Project name, author, version taken from overlay if present; falls back to base |

### Key Principles

1. **Additive** — merging never removes data (CDL flags OR'd, symbols unioned)
2. **Base-first ordering** — base entries appear before overlay entries in output
3. **Overlay wins on conflict** — for metadata and memory region name conflicts
4. **Deduplication** — identical entries from both files aren't doubled

## CLI Usage

```bash
# Basic merge
pansy merge <base.pansy> <overlay.pansy> -o <output.pansy>

# Using dotnet run
dotnet run --project src/Pansy.Cli -- merge base.pansy overlay.pansy -o merged.pansy
```

**Arguments:**

- `<base>` — Base Pansy file (provides ROM info and foundation)
- `<overlay>` — Overlay Pansy file (adds or supplements data)

**Options:**

- `-o`, `--output <file>` — Output path (default: `merged.pansy`)

## Examples

### Example 1: Nexen CDL Export + Peony Disassembly

The most common workflow — combine emulator coverage data with static analysis.

**Step 1:** Play the game in Nexen, generating CDL data

```
Nexen export → game-nexen.pansy
  Contains: Code/Data Map (played paths), some symbols
```

**Step 2:** Disassemble the ROM with Peony

```
Peony disassemble → game-peony.pansy
  Contains: Symbols, Comments, Cross-refs, Memory Regions
```

**Step 3:** Merge — use Nexen export as base (it has CDL), overlay Peony analysis

```bash
pansy merge game-nexen.pansy game-peony.pansy -o game.pansy
```

**Result:** `game.pansy` contains:

- CDL map from Nexen (which bytes were executed/read/drawn)
- Full symbol table from Peony
- Cross-references from Peony
- Memory regions from Peony
- Combined metadata

**Why this order?** Nexen's CDL data provides runtime coverage that Peony can't generate statically. Peony provides deep static analysis (symbols, xrefs) that the emulator doesn't produce. Together they give you the most complete picture.

### Example 2: Original Analysis + Poppy Build Metadata

After editing source and rebuilding with Poppy, merge the build output back.

**Setup:** You already have `game.pansy` from a previous merge/analysis.

**Step 1:** Edit `.pasm` source files

**Step 2:** Build with Poppy, generating source map

```bash
poppy build src/main.pasm --output build/game.nes --pansy build/game-poppy.pansy
```

**Step 3:** Merge — use original analysis as base, overlay the build metadata

```bash
pansy merge game.pansy build/game-poppy.pansy -o game-updated.pansy
```

**Result:** `game-updated.pansy` contains:

- All original symbols, comments, CDL data, cross-refs
- Updated source map from Poppy (which source line produces which byte)
- Build metadata (author, version from Poppy project)

### Example 3: 3-Way Merge for FFMQ

A complex scenario with data from three sources — requires two sequential merges.

**Sources:**

1. `ffmq-nexen.pansy` — Nexen CDL export (runtime coverage)
2. `ffmq-peony.pansy` — Peony full disassembly analysis
3. `ffmq-manual.pansy` — Hand-edited annotations (custom symbols, TODO comments)

**Step 1:** Merge Nexen + Peony (machine analysis)

```bash
pansy merge ffmq-nexen.pansy ffmq-peony.pansy -o ffmq-analysis.pansy
```

**Step 2:** Merge analysis + manual edits (overlay manual last so manual wins on conflicts)

```bash
pansy merge ffmq-analysis.pansy ffmq-manual.pansy -o ffmq.pansy
```

**Result:** `ffmq.pansy` is the authoritative metadata file containing:

- Runtime CDL coverage from Nexen
- Static analysis from Peony
- Hand-crafted annotations (manual wins on any metadata conflicts)

**3-way ordering matters:** Manual edits are the overlay in the final merge so they take precedence for metadata fields and memory region name conflicts.

### Example 4: Multi-Session CDL Accumulation

Accumulate CDL coverage across multiple play sessions.

```bash
# Session 1: Play through world 1
# Nexen exports → session1.pansy

# Session 2: Play through world 2
# Nexen exports → session2.pansy

# Merge sessions (CDL flags OR'd — coverage accumulates)
pansy merge session1.pansy session2.pansy -o combined.pansy

# Session 3: Play through world 3
# Nexen exports → session3.pansy

# Merge again
pansy merge combined.pansy session3.pansy -o combined.pansy
```

Each merge OR's the CDL flags, so code/data coverage accumulates across sessions. Nothing is lost.

## Game Project Integration

In a game-garden project, the conventional location for Pansy files:

```
games/nes/my-game/
├── metadata/
│   ├── my-game.pansy           # Authoritative merged file
│   ├── my-game-nexen.pansy     # Nexen CDL export (gitignored or committed)
│   ├── my-game-peony.pansy     # Peony analysis output
│   └── my-game-manual.pansy    # Manual annotations (always committed)
```

### Recommended `.gitignore` entries

```gitignore
# Generated pansy files (can be recreated)
metadata/*-nexen.pansy
metadata/*-peony.pansy

# Keep the authoritative merged file and manual annotations
!metadata/*.pansy
```

### Build Script Integration

Your game's `build.ps1` can automate merging:

```powershell
# After Peony disassembly
pansy merge metadata/game-nexen.pansy metadata/game-peony.pansy -o metadata/game.pansy

# After Poppy build
poppy build src/main.pasm --output build/game.nes --pansy metadata/game-build.pansy
pansy merge metadata/game.pansy metadata/game-build.pansy -o metadata/game.pansy
```

## Conflict Resolution

### Symbols

When both files have a symbol at the same address:

- **Same name + type** → Deduplicated (kept once)
- **Different name or type** → Both kept (Pansy supports multiple symbols per address)

This means you can have both a Peony-generated label (`sub_$8000`) and a manually-named label (`PlayerUpdate`) at the same address.

### Comments

Same rules as symbols — duplicates removed, different comments at the same address are all preserved (Pansy supports multiple comments per address).

### CDL Flags

**Always OR'd** — once a byte is marked as CODE, it stays CODE even if the overlay doesn't mark it. This is correct because CDL is cumulative evidence.

### Memory Regions

**Overlay wins** on name conflicts. If base defines `PPU_REGISTERS` as `$2000-$2007` and overlay defines `PPU_REGISTERS` as `$2000-$200f`, the overlay's wider range is used.

### Metadata

**Overlay wins** with base fallback. If overlay has a project name, it's used. If overlay's project name is empty, base's project name is used.

## Tips

1. **Order matters** — put the "less authoritative" file as base and "more authoritative" as overlay
2. **Use the CLI `info` command** to inspect merge results: `pansy info merged.pansy -v`
3. **Validate after merge** to check structural integrity: `pansy validate merged.pansy`
4. **Keep manual annotations separate** — easier to re-merge if automated analysis is regenerated
5. **Chain merges** for 3+ sources — merge two at a time, using the result as base for the next

## See Also

- [Pipeline Guide](PIPELINE-GUIDE.md) — Full 10-stage pipeline overview
- [Pansy CLI Reference](https://github.com/TheAnsarya/pansy/blob/main/docs/CLI-REFERENCE.md) — Complete CLI documentation
- [Pansy File Format](https://github.com/TheAnsarya/pansy/blob/main/docs/FILE-FORMAT.md) — Binary format specification
