# 🌱 Game Garden Tools

Shared tooling for the Game Garden project.

## 📁 Available Tools

| Tool | Language | Description |
|------|----------|-------------|
| [new-game.ps1](new-game.ps1) | PowerShell | Create new game project structure |
| [verify-rom.py](verify-rom.py) | Python | ROM checksum verification |

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

## 🎯 Planned Tools

- `extract-assets.py` - Extract assets from ROMs
- `convert-assets.py` - Convert between binary and editable formats
- `build-game.ps1` - Build ROM from source
- `compare-roms.py` - Detailed ROM comparison

## 📋 Requirements

- Python 3.11+
- PowerShell 7+
- Flower Toolchain (🌺 Peony, 🌼 Pansy, 🌸 Poppy)
