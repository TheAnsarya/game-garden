# 🌱 Game Garden Tools

Comprehensive tooling for game asset extraction, conversion, and build pipeline management.

## Quick Start

```bash
# Show ROM information
python tools/pipeline.py info path/to/rom.sfc

# Verify ROM checksums
python tools/pipeline.py verify path/to/rom.sfc --crc32 2c52c792

# Extract assets using config
python tools/pipeline.py extract path/to/rom.sfc --config extraction-config.json --output output/

# Run tests
python tests/test_pipeline.py
```

## 📁 Available Tools

| Tool | Language | Description |
|------|----------|-------------|
| [pipeline.py](pipeline.py) | Python | Main asset pipeline (extraction, verification) |
| [new-game.ps1](new-game.ps1) | PowerShell | Create new game project structure |
| [verify-rom.py](verify-rom.py) | Python | ROM checksum verification |
| [extract-snes-assets.py](extract-snes-assets.py) | Python | SNES graphics/data extraction |

## Pipeline Commands

### `info` - ROM Information

Display ROM details including checksums and detected platform.

```bash
python tools/pipeline.py info "path/to/rom.sfc"
```

Output:
```
ROM: Final Fantasy - Mystic Quest (U) (V1.1).smc
Size: 524,288 bytes
Platform: snes
Has Header: False
CRC32: 2c52c792
MD5: f7faeae5a847c098d677070920769ca2
```

### `verify` - Checksum Verification

```bash
# Verify CRC32
python tools/pipeline.py verify rom.sfc --crc32 2c52c792

# Verify from checksums file
python tools/pipeline.py verify rom.sfc --checksums checksums.json
```

### `extract` - Asset Extraction

```bash
python tools/pipeline.py extract rom.sfc \
    --config extraction-config.json \
    --output ./extracted/
```

## Extraction Configuration

Create an `extraction-config.json` file:

```json
{
    "game": { "name": "Game Name", "platform": "snes" },
    "graphics": [
        {
            "name": "tiles_bank1",
            "offset": "0x020000",
            "tiles": 256,
            "bpp": 4
        }
    ]
}
```

### Graphics Region Options

| Field | Type | Description |
|-------|------|-------------|
| `name` | string | Output filename |
| `offset` | string/int | ROM offset (hex or int) |
| `tiles` | int | Number of tiles |
| `bpp` | int | Bits per pixel (2, 4, 8) |

## Game-Specific Tools

### FFMQ Tools (`tools/ffmq/`)

- `snes_graphics.py` - SNES tile/palette library
- `convert_graphics.py` - PNG conversion utilities
- `extract_graphics.py` - FFMQ graphics extractor

## Testing

```bash
# Run all tests (18 tests)
python tests/test_pipeline.py
```

## 🔧 Legacy Usage

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

## 📋 Requirements

- Python 3.11+
- PowerShell 7+
- Pillow (for graphics): `pip install Pillow`
- Flower Toolchain (🌺 Peony, 🌼 Pansy, 🌸 Poppy)
