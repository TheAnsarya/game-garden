# 🌷 Flower Toolchain Version Compatibility

## Compatibility Matrix

This document tracks which versions of each Flower Toolchain tool are compatible with which Pansy format versions.

### Pansy Format Versions

| Format Version | Header Value | Sections Supported |
|:--------------:|:------------:|:-------------------|
| 1.0 | `0x0100` | All 10 sections (0x0001–0x000a) |

### Tool Compatibility

| Tool | Min Version | Pansy Format | Notes |
|------|:-----------:|:------------:|-------|
| **Pansy.Core** | 1.0.0 | 1.0 | Canonical reader/writer |
| **Peony** | 0.1.0 | 1.0 | Uses Pansy.Core NuGet |
| **Poppy** | 0.1.0 | 1.0 | Uses Pansy.Core NuGet |
| **Nexen** | 1.0.0 | 1.0 | Native C++ writer |

### Section Support by Tool

| Section | Pansy.Core | Peony | Poppy | Nexen |
|---------|:----------:|:-----:|:-----:|:-----:|
| Code/Data Map (0x0001) | R/W | R/W | — | W |
| Symbols (0x0002) | R/W | R/W | R | W |
| Comments (0x0003) | R/W | R/W | — | W |
| Memory Regions (0x0004) | R/W | R/W | — | W |
| Data Types (0x0005) | R/W | R/W | — | — |
| Cross-References (0x0006) | R/W | R/W | R | W |
| Source Map (0x0007) | R/W | R | W | — |
| Metadata (0x0008) | R/W | R/W | W | W |
| CPU State (0x0009) | R/W | R/W | — | W |
| Bookmarks (0x000a) | R/W | R/W | — | W |

**Legend:** R = reads, W = writes, R/W = both, — = not supported

## Version Validation Rules

### Header Version Check

All tools should check the Pansy file header version before processing:

```
If file.version > tool.maxSupportedVersion:
    WARN: "File uses Pansy format vX.Y, tool supports up to vA.B"
    Continue with best-effort parsing (skip unknown sections)

If file.version < tool.minSupportedVersion:
    ERROR: "File uses Pansy format vX.Y, tool requires at least vA.B"
```

### Unknown Section Handling

When a tool encounters an unknown section type:

1. **Log a warning** with the section type ID
2. **Preserve the section data** (pass through on merge/export)
3. **Do not fail** — unknown sections are forward-compatible

### Flag Handling

When a tool encounters unknown header flags:

1. **Log a warning** with the flag bits
2. **Continue processing** — unknown flags are informational

## Pipeline Compatibility Check

The `test-pipeline-e2e.ps1` script validates tool availability. For version checks, each tool should report its supported Pansy format version:

```powershell
# Check tool versions
dotnet run --project <pansy-cli> -- version
dotnet run --project <peony-cli> -- version
dotnet run --project <poppy-cli> -- version
```

### Breaking Changes Policy

- **Pansy format**  changes require a major version bump (e.g., 1.0 → 2.0)
- **New sections** can be added without a version bump (forward-compatible)
- **Section schema changes** require a format version bump
- **All tools** in Peony/Poppy/Nexen should be updated when Pansy.Core bumps

## NuGet Version Alignment

Peony and Poppy consume Pansy.Core as a NuGet package. Version alignment:

| Pansy.Core Version | Required By |
|:-------------------:|:------------|
| ≥ 1.0.0 | Peony ≥ 0.1.0, Poppy ≥ 0.1.0 |

When updating Pansy.Core:
1. Publish new NuGet package
2. Update Peony's package reference
3. Update Poppy's package reference
4. Run all tests in both projects
5. Verify roundtrip compatibility

## See Also

- [Pipeline Guide](PIPELINE-GUIDE.md) — Full workflow documentation
- [Pansy File Format](https://github.com/TheAnsarya/pansy/blob/main/docs/FILE-FORMAT.md) — Binary format spec
