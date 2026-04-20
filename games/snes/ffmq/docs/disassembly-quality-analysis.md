# FFMQ Disassembly Quality Analysis

> Date: 2026-04-20 | Peony Version: current main

## Source Data

| Item | Details |
|------|---------|
| ROM | Final Fantasy - Mystic Quest (U) (V1.1) |
| Platform | SNES (LoROM) |
| Size | 524,288 bytes (512K) |
| CRC32 | `2c52c792` |
| Banks | 16 |

### Nexen Game Package

Exported from Nexen after ~75% playthrough:

- **CDL** (`ffmq-nexen-coverage.cdl`): 524,288 bytes raw format
  - 73,089 code bytes
  - 333,827 data bytes
  - 77.6% total coverage
  - 7,123 subroutines detected
- **Pansy** (`ffmq-nexen.pansy`): 981,168 bytes
  - 192 symbols
  - 2,469 jump targets
  - 947 sub-entry points
  - 5 cross-references
  - 978 data type entries
  - 4 memory regions (LowRAM, PPU_Registers, CPU_Registers, WRAM)

## Disassembly Results

### Variant Comparison

| Variant | Instructions | .db Lines | File Size | Lines |
|---------|-------------|-----------|-----------|-------|
| No hints | 8 | ~43,000 | 2.8 MB | ~42,000 |
| CDL only | 1,390 | ~25,000 | 408 KB | ~6,000 |
| Old Pansy (ffmq.pansy) | 12,071 | ~33,000 | 3.8 MB | 56,028 |
| **Nexen CDL+Pansy** | **10,279** | **38,246** | **3.96 MB** | **58,438** |

### Bank Coverage (Nexen CDL+Pansy)

| Bank | Blocks | Status |
|------|--------|--------|
| 0 | 0 | All .db (BUG: bank 0 mapping broken) |
| 1 | 323 | Partial code |
| 2 | 150 | Partial code |
| 3-10 | 0 each | All .db |
| 11 | 74 | Partial code |
| 12 | 112 | Partial code |
| 13 | 29 | Partial code |
| 14 | 0 | All .db |
| 15 | 1,172 | Most code (fixedBank target) |

### Key Metrics

| Metric | Value |
|--------|-------|
| Total instructions | 10,279 |
| Total .db lines | 38,246 |
| Code bytes produced | 44,583 |
| Data bytes marked | 0 |
| Unknown bytes | 479,705 |
| Banks with code | 6/16 |
| Total blocks | 1,860 |

## Bugs Found

See Peony Epic #179 for full details.

1. **CRITICAL** (#180): SNES bank 0 address mapping treats bank 0 as unspecified
2. **CRITICAL** (#181): `IsUnconditionalBranch` missing `jml`, `rtl`, `bra`, `brl`
3. **HIGH** (#182): CDL JumpTargets (0x04 flag) never seeded as entry points
4. **MEDIUM** (#183): CDL labels use raw ROM offset instead of CPU address
5. **MEDIUM** (#184): Bank from 24-bit addresses not propagated to queue

## Target After Fixes

| Metric | Current | Target |
|--------|---------|--------|
| Instructions | 10,279 | 40,000+ |
| Banks with code | 6/16 | 16/16 |
| CDL code coverage | 61% | 100% |
| CDL data marked | 0% | 100% |
| Unknown bytes | 479,705 | <117,372 |
