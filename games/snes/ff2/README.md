# Final Fantasy II

**Platform:** SNES (65816)
**ROM:** Final Fantasy II (U) (V1.1).smc
**Size:** 1 MB (8 Mbit)
**Status:** 🔄 In Progress

## 📊 Progress

| Phase | Status | Notes |
|-------|--------|-------|
| ROM Verified | ✅ | CRC32: `23084fcd` |
| Disassembly | ✅ | 1634 blocks (Peony, all banks, no hints) |
| Metadata | ✅ | Pansy exported (`metadata/ff2.pansy`) |
| Graphics | ✅ | 4 CHR tile dumps (BMP) |
| Text | ✅ | 21,153 scanned text blocks |
| Data | 🔄 | Code/data split plan created |
| Rebuild | ✅ | Byte-identical ROM rebuild verified |

Legend: ✅ Complete | 🔄 In Progress | ❌ Not Started

## 🌷 Full Pipeline Status

Pipeline target: Nexen -> pansy -> peony -> poppy -> Nexen

1. Nexen -> pansy: Pending dedicated FF2 Nexen export run.
2. pansy -> peony: Enabled via `metadata/ff2.pansy` integration path.
3. peony -> poppy: Source generated at `src/main.pasm`.
4. poppy -> Nexen: Build verified byte-identical and launched in Nexen.

## 📁 Key Outputs

- Source: `src/main.pasm`
- Metadata: `metadata/ff2.pansy`, `metadata/ff2-peony.pansy`
- Coverage: `metadata/ff2_coverage.json`
- Graphics: `assets/editable/graphics/ff2_chr_*.bmp`
- Text: `assets/editable/text/ff2_text_scan.json`

## 📚 Documentation

- [ROM Map](docs/rom-map.md)
- [RAM Map](docs/ram-map.md)
- [Data Structures](docs/data-structures.md)
- [Code/Data Plan](docs/code-data-plan.md)
- [Reference Notes](reference/notes.md)

## 🔧 Build And Verify

```powershell
# Verify reference ROM
.\verify\verify.ps1 -RomPath "C:\~reference-roms\Final Fantasy II (U) (V1.1).smc"

# Build via Poppy
.\build.ps1

# Compare built ROM against reference
.\verify\verify.ps1 -RomPath "C:\~reference-roms\Final Fantasy II (U) (V1.1).smc" -BuiltRom .\build\ff2.smc
```

## 📝 Notes

- This entry intentionally keeps static analysis quarantined/off by default.
- CDL was not available at the expected reference path during this run.
- No ROM binary is stored in this repository entry.
