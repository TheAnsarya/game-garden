# The Legend of Zelda: A Link to the Past

**Platform:** SNES (65816)
**ROM:** Legend of Zelda, The - A Link to the Past (1992)(Nintendo)(US).smc
**Size:** 1 MB (8 Mbit)
**Mapping:** HiROM
**Status:** ✅ Rebuild Verified (byte-identical)

## 📊 Progress

| Phase | Status | Notes |
|-------|--------|-------|
| ROM Verified | ✅ | CRC32: `777aac2f`, SHA256 verified |
| Disassembly | ✅ | 633 blocks, 34,802 bytes code, 66,592 lines (all-banks mode) |
| Metadata | ✅ | 215 labels exported to `zelda3.pansy` |
| Graphics | ✅ | 49 tilesets (20,496 tiles) extracted as PNG, reconverted to `.inc` |
| Text | ❌ | Not yet extracted (needs CDL or manual analysis) |
| Data | ❌ | Not yet extracted (needs CDL or manual analysis) |
| Rebuild | ✅ | Byte-identical output confirmed via SHA256 |

Legend: ✅ Complete | 🔄 In Progress | ❌ Not Started

## 🔧 Build Pipeline

### Asset Reconversion

The build script (`build.ps1`) automatically reconverts editable assets back into includable `.inc` files:

- **JSON data** → `.inc` via `poppy data-gen` (`.db` commands)
- **PNG graphics** → `.inc` via `poppy gfx-convert` (CHR tile data as `.db`)
- **Text** → `.inc` via `poppy text-encode` (encoded bytes as `.db`)

These `.inc` files are included in the main disassembly source and assembled by Poppy.

### Build

```powershell
# Full build (reconvert assets + assemble)
.\build.ps1

# Clean build
.\build.ps1 -Clean

# Verify against original ROM
.\verify\verify.ps1 -RomPath "C:\~reference-roms\Legend of Zelda, The - A Link to the Past (1992)(Nintendo)(US).smc" -BuiltRom build\zelda3.sfc
```

## 📦 Extracted Data

All data in `assets/editable/data/`:

| File | Description |
|------|-------------|
| *None yet* | Awaiting CDL-guided extraction from Nexen |

## 🎨 Extracted Graphics

All graphics in `assets/editable/graphics/` (49 tilesets, 20,496 tiles):

| Tileset | Offset | Size |
|---------|--------|------|
| `tileset_000_000000.png` | `$000000` | 290.9 KB (.inc) |
| `tileset_001_011c00.png` | `$011c00` | 14.6 KB (.inc) |
| `tileset_002_013c00.png` | `$013c00` | 96.9 KB (.inc) |
| `tileset_003_01b000.png` | `$01b000` | 107.7 KB (.inc) |
| ... | ... | ... |
| `tileset_048_0ffc00.png` | `$0ffc00` | 14.6 KB (.inc) |

All 49 tilesets are editable PNGs that reconvert to `.byte` directive `.inc` files via `reconvert-assets.ps1`.

## 🎨 Extracted Palettes

491 palettes (14,176 colors) extracted to `assets/extracted/` as PNG swatches.

## 📝 Notes

- Zelda 3 is a 1MB HiROM SNES game
- No CDL file available yet — disassembly uses Peony's all-banks mode (`-b` flag)
- 633 blocks disassembled, 34,802 bytes of code identified (~3.3% of ROM as code)
- A CDL file from Nexen would significantly improve disassembly quality and enable data/text extraction
- The game uses DMA-based graphics transfer, compressed tilesets, and a custom text engine
- 2 instructions required manual `.db` workaround due to Poppy `jsr.w ($addr,x)` bug where addr < `$100`

## ⚠️ Known Issues

- **Poppy bug:** `jsr.w ($0082,x)` and `jsr.w ($0069,x)` fail because Poppy treats addresses < `$100` as zero-page, preventing promotion to `AbsoluteIndexedIndirect`. Workaround: replaced with `.db $fc, $82, $00` and `.db $fc, $69, $00` directives in `src/main.pasm`.

> **Policy:** All game-garden builds use 🌸 Poppy. Legacy assemblers (ASAR, ca65, xkas) are not used in mainline pipelines.

## 🔗 Links

- [Game Garden README](../../../README.md)
- [SNES Games](../../)
- [Pipeline Guide](../../../docs/PIPELINE-GUIDE.md)
