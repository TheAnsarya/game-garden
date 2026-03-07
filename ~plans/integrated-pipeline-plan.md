# Flower Toolchain — Integrated Pipeline Plan

**Created:** 2026-03-07
**Status:** Planning
**Scope:** Cross-project — Game Garden, Pansy, Peony, Poppy, Nexen

---

## Overview

The Flower Toolchain enables a **continuous refinement loop** for ROM hacking and reverse engineering:

```
Play → Debug → Export → Disassemble → Edit → Build → Verify → Merge → Play Again → Debug Again
```

Each iteration enriches the metadata, improving code understanding with every pass.

## The Pipeline

```
    ┌─────────────────────────────────────────────────────────────────────┐
    │                   THE FLOWER TOOLCHAIN PIPELINE                    │
    │                                                                     │
    │   ┌─────────┐     ┌─────────┐     ┌──────────┐                    │
    │   │ 1. PLAY │────▶│ 2. DEBUG│────▶│ 3. EXPORT│                    │
    │   │ (Nexen) │     │ (Nexen) │     │(Nex→Pan) │                    │
    │   └─────────┘     └─────────┘     └────┬─────┘                    │
    │                                         │ .pansy                   │
    │                                         ▼                          │
    │   ┌───────────┐    ┌──────────┐    ┌──────────┐                   │
    │   │ 5. EDIT   │◀───│ 4. DISA- │◀───│  .pansy  │                   │
    │   │(VS Code + │    │  SSEMBLE │    │  + ROM   │                   │
    │   │  Poppy    │    │ (Peony)  │    └──────────┘                   │
    │   │Extension) │    └──────────┘                                    │
    │   └─────┬─────┘         │                                          │
    │         │ .pasm         │ enriched .pansy                          │
    │         ▼               ▼                                          │
    │   ┌──────────┐    ┌──────────┐    ┌──────────┐                    │
    │   │ 6. BUILD │───▶│ 7. VERI- │───▶│ 8. MERGE │                    │
    │   │ (Poppy)  │    │    FY    │    │ (Pansy   │                    │
    │   └──────────┘    │ (Peony)  │    │  Tools)  │                    │
    │         │         └──────────┘    └────┬─────┘                    │
    │         │ ROM + .pansy                 │ merged .pansy             │
    │         │                              │                           │
    │         ▼                              ▼                           │
    │   ┌────────────┐    ┌─────────────────────┐                       │
    │   │ 9. PLAY    │◀───│ Import merged .pansy │                       │
    │   │   AGAIN    │    │ (symbols, comments,  │                       │
    │   │  (Nexen)   │    │  CDL, cross-refs)    │                       │
    │   └─────┬──────┘    └─────────────────────┘                       │
    │         │                                                          │
    │         ▼                                                          │
    │   ┌───────────┐                                                    │
    │   │ 10. DEBUG │──────────────────────▶ GOTO 3 (refine)            │
    │   │   AGAIN   │                                                    │
    │   │  (Nexen)  │                                                    │
    │   └───────────┘                                                    │
    │                                                                     │
    └─────────────────────────────────────────────────────────────────────┘
```

## Tool Roles

| Tool | Emoji | Role in Pipeline | Repo |
|------|-------|-----------------|------|
| Nexen | 🎮 | Play, Debug, Export .pansy (CDL, symbols, comments) | TheAnsarya/Nexen |
| Peony | 🌺 | Disassemble ROM → .pasm, Verify roundtrip | TheAnsarya/peony |
| Poppy | 🌸 | Compile .pasm → ROM + .pansy (source map, symbols) | TheAnsarya/poppy |
| Pansy | 🌼 | Central metadata format, merge, analyze, UI editing | TheAnsarya/pansy |
| Game Garden | 🌱 | Meta-project: pipeline scripts, integration tests, docs | TheAnsarya/game-garden |

## Pipeline Scripts (Planned)

Location: `game-garden/tools/pipeline/`

| Script | Purpose |
|--------|---------|
| `pipeline-disassemble` | Run Peony with .pansy hints |
| `pipeline-build` | Run Poppy with .pansy output |
| `pipeline-verify` | Run Peony roundtrip verification |
| `pipeline-merge` | Merge .pansy files via Pansy CLI |
| `pipeline-full` | Full pipeline in one command |
| `test-pipeline-e2e` | End-to-end integration test |

## GitHub Issue Tracker

| Epic | Repo | Issue | Description |
|------|------|-------|-------------|
| 1 | pansy | #55 | Format Completion — Data Types + Source Map |
| 2 | peony | #101 | Import Enhancement — Type Preservation + CDL Hints |
| 3 | poppy | #170 | Pansy Integration — Import Symbols + Source Map |
| 4 | Nexen | #581 | Pipeline Enhancements — Hot Reload + Folder Storage |
| 5 | game-garden | #12 | Documentation & Automation — Scripts + Guides |

## Current Status

| Capability | Nexen | Peony | Poppy | Pansy |
|------------|-------|-------|-------|-------|
| Write .pansy | ✅ 8 sections | ✅ 6 sections | ✅ All sections | N/A |
| Read .pansy | ✅ Full import | ⚠️ Partial (types lost) | ❌ Not yet | ✅ Full |
| Roundtrip | N/A | ✅ Verified | N/A | ✅ Merge/Diff |
| CLI Tools | N/A | ✅ Full | ✅ Full | ✅ 9 commands |
| Tests | 2,006 | 991 | 1,837 | 328 |

## See Also

- [Master Plan (detailed)](../../pansy/~Plans/integrated-pipeline-master-plan.md)
- [Peony Code Plan: Type-Preserving Import](../../peony/~Plans/code-plan-type-preserving-import.md)
- [Game Garden Roadmap](roadmap.md)
