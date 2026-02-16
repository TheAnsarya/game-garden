# 🦁 Hello Lynx

A minimal Atari Lynx example demonstrating the 🌷 Flower Toolchain:
- **🌸 Poppy** - Assembling the source
- **🌼 Pansy** - Metadata format
- **🌺 Peony** - Disassembly (verification)

## Status

| Phase | Status | Notes |
|-------|--------|-------|
| ROM Verified | ⬜ | No reference ROM (original example) |
| Source | ✅ | Created from scratch |
| Metadata | ✅ | Pansy file created |
| Build | 🔄 | Requires Poppy Lynx support |
| Rebuild | ⬜ | Pending toolchain |

## Build

```powershell
# Using Poppy (when Lynx support is complete)
poppy build src/main.pasm --output build/hello-lynx.lnx

# Or with platform directive in source
poppy build src/main.pasm --output build/hello-lynx.o
```

## Platform Details

- **CPU**: WDC 65SC02 @ 4 MHz
- **RAM**: 64KB
- **Display**: 160x102, 4096 colors
- **Hardware**: Suzy (graphics/math), Mikey (audio/timers)

## Memory Map

| Range | Description |
|-------|-------------|
| $0000-$00ff | Zero Page (fast access) |
| $0100-$01ff | Stack |
| $0200-$fbff | RAM |
| $fc00-$fcff | Suzy hardware registers |
| $fd00-$fdff | Mikey hardware registers |
| $fe00-$fff7 | Boot ROM |
| $fff8-$ffff | Vectors (NMI, RST, IRQ/BRK) |

## Files

- [src/main.pasm](src/main.pasm) - Main source file
- [metadata/hello-lynx.pansy](metadata/hello-lynx.pansy) - Pansy metadata
- [docs/notes.md](docs/notes.md) - Development notes
