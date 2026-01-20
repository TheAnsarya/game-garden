# 🌱 Game Garden Tools

Shared tooling for the Game Garden project.

## 📁 Available Tools

| Tool | Language | Description |
|------|----------|-------------|
| [new-game.ps1](new-game.ps1) | PowerShell | Create new game project structure |
| [verify-rom.py](verify-rom.py) | Python | ROM checksum verification |
| [extract-snes-assets.py](extract-snes-assets.py) | Python | SNES graphics/data extraction |

## 🔧 Usage

### Create a New Game Project

```powershell
.\tools\new-game.ps1 -Platform snes -GameName ffmq -DisplayName "Final Fantasy: Mystic Quest"
```

### Verify ROM Checksums

```bash
# Calculate checksums for a ROM
python tools/verify-rom.py --calculate "C:\~reference-roms\snes\ffmq.sfc"

# Verify ROM against checksums.json
python tools/verify-rom.py "path/to/rom.sfc" -c games/snes/ffmq/verify/checksums.json
```

### Extract SNES Assets

```bash
# Extract using config file
python tools/extract-snes-assets.py "path/to/rom.sfc" -c extraction-config.json -o output/

# Quick graphics extraction
python tools/extract-snes-assets.py "path/to/rom.sfc" -g 0x64000,256,4 -o output/

# Quick palette extraction
python tools/extract-snes-assets.py "path/to/rom.sfc" -p 0x1000,16 -o output/
```

## 🎯 Planned Tools

- `convert-assets.py` - Convert between binary and editable formats
- `insert-snes-assets.py` - Insert modified assets back into ROM
- `build-game.ps1` - Build ROM from source
- `compare-roms.py` - Detailed ROM comparison

## 📋 Requirements

- Python 3.11+
- PowerShell 7+
- Pillow (for graphics): `pip install Pillow`
- Flower Toolchain (🌺 Peony, 🌼 Pansy, 🌸 Poppy)
