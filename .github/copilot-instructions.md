# 🌱 Game Garden - AI Copilot Directives

## Project Overview

**Game Garden** is a comprehensive games disassembly, asset extraction, editing, and recompilation repository. It proves the bidirectionality of the 🌷 Flower Toolchain:

```
ROM → 🌺 Peony (disassemble) → Source + 🌼 Pansy (metadata) → Edit → 🌸 Poppy (compile) → ROM ✓
```

**Goal:** Every game in the garden should be fully disassembled, have all assets extracted and editable, and be recompilable to a byte-identical ROM.

## 🌷 The Flower Toolchain

| Tool | Emoji | Purpose |
|------|-------|---------|
| Peony | 🌺 | Disassembler - ROM → Source |
| Pansy | 🌼 | Metadata Format - Symbols, comments, cross-refs |
| Poppy | 🌸 | Assembler - Source → ROM |

### ⚠️ Poppy-Only Policy

**All game-garden builds use 🌸 Poppy exclusively.** Legacy assemblers (ASAR, ca65, xkas, RGBDS) are **NOT** used in mainline pipelines.

- **Source files:** Use `.pasm` extension (Poppy Assembly)
- **Build scripts:** Call `poppy` compiler, never legacy tools
- **Converters:** Edge utilities exist to convert FROM legacy formats TO Poppy (see Poppy repo `tools/converters/`)
- **Legacy projects:** May reference ASAR/ca65 in documentation but game-garden pipelines use Poppy

## 📁 Repository Structure

```
/                           # Root
├── .github/                # GitHub configuration
│   └── copilot-instructions.md
├── docs/                   # User documentation
├── ~docs/                  # Development documentation
│   ├── chat-logs/          # AI conversation logs
│   └── session-logs/       # Session summaries
├── ~plans/                 # Short/long term plans
├── tools/                  # Shared tooling scripts
│   ├── verify-rom.py       # ROM verification
│   ├── extract-assets.py   # Asset extraction
│   └── build-game.ps1      # Build automation
├── games/                  # Game projects
│   ├── nes/                # NES games
│   │   └── {game-name}/
│   ├── snes/               # SNES games
│   │   └── {game-name}/
│   ├── gb/                 # Game Boy games
│   │   └── {game-name}/
│   └── gba/                # GBA games
│       └── {game-name}/
└── README.md
```

## 🎮 Game Project Structure

Each game follows this structure:

```
games/{platform}/{game-name}/
├── README.md               # Game overview, status, notes
├── build.ps1               # Build script
├── build.config.json       # Build configuration
├── verify/                 # ROM verification
│   ├── checksums.json      # Expected CRC32/MD5/SHA256
│   └── verify.ps1          # Verification script
├── reference/              # Reference material (no ROMs!)
│   ├── notes.md            # Research notes
│   └── links.md            # Useful links
├── src/                    # Disassembled source code
│   ├── main.pasm           # Main assembly file
│   ├── bank_00.pasm        # Bank files
│   └── includes/           # Include files
├── metadata/               # Pansy metadata files
│   ├── {game}.pansy        # Main metadata file
│   └── symbols.txt         # Symbol exports
├── assets/                 # Game assets
│   ├── extracted/          # Raw extracted (gitignored)
│   ├── editable/           # Editable formats (PNG, JSON)
│   │   ├── graphics/       # Graphics (PNG)
│   │   ├── tilemaps/       # Tilemaps (JSON/TMX)
│   │   ├── palettes/       # Palettes (JSON)
│   │   ├── text/           # Text/dialogue
│   │   └── data/           # Game data (JSON)
│   └── binary/             # Converted binary (gitignored)
├── build/                  # Build output (gitignored)
│   └── {game}.nes          # Built ROM
└── docs/                   # Game-specific documentation
    ├── rom-map.md          # ROM layout
    ├── ram-map.md          # RAM layout
    └── data-structures.md  # Data format docs
```

## 📋 Coding Standards

### Indentation & Whitespace
- **ALWAYS use TABS for indentation** - Never spaces, in any file type
- Tab width: 4 spaces
- Remove trailing whitespace from all lines
- Include a blank line at the end of every file

### Brace Style
- **K&R style** - Opening braces on the SAME line as the statement

### Hexadecimal Values
- **Always lowercase** for all hex values
- Use `$` as the hex indicator: `$ff00`, `$ca6e`
- Never use `0x` prefix unless required by the language

### Assembly Code
- Use `.pasm` extension for Poppy Assembly files
- All opcodes/operands in **lowercase**: `lda`, `sta`, `jsr`
- All hex values in **lowercase** with `$` prefix

### Encoding & Line Endings
- **UTF-8** encoding with BOM for all files
- **CRLF** line endings (Windows style)

## 🔄 Workflow

### 1. ROM Verification
```powershell
# Verify ROM matches expected checksums
.\verify\verify.ps1 -RomPath "C:\~reference-roms\{path}\{game}.nes"
```

### 2. Disassembly (Peony)
```powershell
# Disassemble ROM to source
peony disasm "{rom}" --output src/ --metadata metadata/
```

### 3. Asset Extraction
```powershell
# Extract all assets
python tools/extract-assets.py --rom "{rom}" --output assets/extracted/
# Convert to editable formats
python tools/convert-assets.py --input assets/extracted/ --output assets/editable/
```

### 4. Editing Phase
- Edit source code in `src/`
- Edit assets in `assets/editable/`
- Update metadata in `metadata/`

### 5. Asset Reinsertion
```powershell
# Convert editable back to binary
python tools/convert-assets.py --input assets/editable/ --output assets/binary/ --reverse
```

### 6. Build (Poppy)
```powershell
# Build ROM from source
.\build.ps1
# Or: poppy build src/main.pasm --output build/{game}.nes
```

### 7. Verification
```powershell
# Verify built ROM matches original
.\verify\verify.ps1 -BuiltRom build/{game}.nes
```

## 📝 Documentation Requirements

### Code Comments
- Comment ALL code thoroughly
- Document function parameters and return values
- Explain complex logic and algorithms

### ⚠️ MANDATORY: Session Logs

**Always create a session log at the end of every conversation that involves code changes, issue creation, or significant research.** This is non-negotiable.

- File: `~docs/session-logs/YYYY-MM-DD-session-NN.md`
- Increment `NN` if a log already exists for that date
- Include: summary of work done, issues created/closed, commits made, files changed, and next steps
- Commit the session log as part of the final commit

### Log Files

- Chat logs: `~docs/chat-logs/YYYY-MM-DD-chat-NN.md`
- Session logs: `~docs/session-logs/YYYY-MM-DD-session-NN.md`
- **NEVER edit** `~docs/game-garden-manual-prompts-log.txt` (user-maintained)

## 🔀 Git Workflow

### ⚠️ MANDATORY: Always Include Modified/Untracked Files

Always include unexpected/stray/untracked modified files in commits by default. Do not pause or ask follow-up questions about file selection.

- Stage all modified and untracked files along with task changes
- Commit and push without additional confirmation prompts
- Continue implementation work without stopping on dirty-tree surprises

### ⚠️ MANDATORY: Terminal and Process Cleanup

To reduce VS Code memory usage, always close terminals and extra background programs immediately after their related work is complete.

- After each build/test/script step, stop the related process if it is still running
- Close any no-longer-needed terminal sessions instead of leaving them open
- Keep only the minimum terminals required for active work

### Commits
- Logical, atomic commits
- Reference GitHub issues: `Brief description (#issue-number)`
- Use conventional commit prefixes: `feat:`, `fix:`, `docs:`, `refactor:`

### Issues
- Create GitHub issues for all planned work
- Use Kanban board for project management
- Label by game and phase

## 🎯 ROM Reference Locations

ROMs are stored in `C:\~reference-roms\` organized by system:
- Never commit ROMs to the repository
- Verify ROMs using checksums before use
- If a ROM is missing, add it to `C:\~reference-roms\{system}\{game}.{ext}`

## ⚠️ Important Notes

1. **Never commit ROMs** - Only source, metadata, and editable assets
2. **Never use spaces for indentation** - TABS ONLY
3. **Never use uppercase hex** - always lowercase
4. **Never modify** the manual prompts log file
5. **Always verify checksums** before disassembly
6. **Always verify byte-identical** after rebuild
7. **Always use Poppy** - Never ASAR, ca65, xkas, or other legacy assemblers in pipelines
8. **Always use .pasm extension** - Poppy Assembly format, not .asm

## 🎮 Target Systems

- **NES** (6502) - `.nes` files
- **SNES** (65816) - `.sfc`/`.smc` files
- **Game Boy** (Sharp LR35902) - `.gb`/`.gbc` files
- **GBA** (ARM7TDMI) - `.gba` files
- **Genesis** (68000) - `.md`/`.gen` files

## 📊 Game Status Tracking

Each game README should include:

| Phase | Status | Notes |
|-------|--------|-------|
| ROM Verified | ✅/❌ | Checksum validated |
| Disassembly | ✅/🔄/❌ | Source extracted |
| Metadata | ✅/🔄/❌ | Pansy file created |
| Graphics | ✅/🔄/❌ | Extracted & editable |
| Text | ✅/🔄/❌ | Extracted & editable |
| Data | ✅/🔄/❌ | Extracted & editable |
| Rebuild | ✅/❌ | Byte-identical |

Legend: ✅ Complete | 🔄 In Progress | ❌ Not Started

## Markdown Formatting

### ⚠️ MANDATORY: Fix Markdownlint Warnings

**Always fix markdownlint warnings when editing or creating markdown files.** This is non-negotiable.

Key rules to enforce:

- **MD022** — Blank lines above and below headings
- **MD031** — Blank lines around fenced code blocks
- **MD032** — Blank lines around lists (ordered and unordered)
- **MD047** — Files must end with a single newline character
- **MD007** — Disabled (tab indentation is 1 character, not 4)
- **MD010** — Disabled (hard tabs are REQUIRED per our indentation rules)

Always generate new markdown content with proper blank lines around headings, lists, and code fences so MD022/MD031/MD032 are satisfied on first write.

When generating new markdown content, **always include proper blank line spacing** around headings, lists, and code blocks.

### ⚠️ MANDATORY: Documentation Link-Tree

**Every markdown file in the repository must be reachable from `README.md` through a hierarchical link structure.**

- The main `README.md` must link to all documentation directories and key files
- Subdirectory docs should link back to parent and to sibling docs
- No orphan markdown files — if a `.md` file exists, it must be discoverable from the root README
- When adding new documentation, always update `README.md` with a link to it
- Internal docs (`~docs/`) should have their own index linked from the main README
