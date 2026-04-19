# Code/Data Plan

## Goal

Improve confidence classification for Final Fantasy II so code and data are separated with reproducible evidence and roundtrip-safe output.

## Current Baseline

- Run mode: SNES all-banks, no hints
- Blocks: 1,634
- Classified code: 65,962 bytes (6.3%)
- Classified data: 0 bytes
- Unknown: 982,614 bytes (93.7%)

## Phase 1: Deterministic Anchors

1. Keep static analysis quarantined by default.
2. Expand entry anchors from vectors and known reset/NMI/IRQ targets.
3. Preserve platform default labels for $21xx/$42xx/$43xx regions.
4. Use bank-aware call/branch propagation only when target is deterministic.

## Phase 2: Metadata Seeding

1. Import Nexen-exported Pansy when available.
2. Import CDL when available to mark code/data execution evidence.
3. Merge symbol/comment/xref metadata before disassembly.
4. Re-run disassembly and compare coverage deltas.

## Phase 3: Data Region Identification

1. Detect pointer tables by monotonic address sequences and bounds checks.
2. Mark confirmed non-executable sections as data blocks.
3. Split mixed banks into code and data segments in source layout.
4. Export updated metadata back to .pansy.

## Phase 4: Roundtrip Validation

1. Assemble with Poppy from src/main.pasm.
2. Compare SHA256 with reference ROM.
3. If mismatch, diff by bank and classify root cause (addressing mode, labels, unresolved data gaps).
4. Repeat until byte-identical result.

## Immediate Next Actions

1. Acquire FF2 CDL file and rerun disasm with --cdl.
2. Generate Nexen metadata pack for FF2 and import to Pansy.
3. Promote high-confidence pointer tables into explicit data blocks.
