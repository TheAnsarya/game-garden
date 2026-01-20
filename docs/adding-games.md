# Adding a New Game to Game Garden

This guide walks through the process of adding a new game to the garden.

## Prerequisites

- ROM file stored in `C:\~reference-roms\{platform}\{game}.{ext}`
- Peony disassembler installed
- Pansy metadata tools installed
- Poppy assembler installed

## Step 1: Create Game Folder Structure

Run the new-game script:

```powershell
.\tools\new-game.ps1 -Platform snes -Name "my-game-name"
```

This creates:
```
games/snes/my-game-name/
├── README.md
├── build.ps1
├── build.config.json
├── verify/
│   ├── checksums.json
│   └── verify.ps1
├── reference/
│   ├── notes.md
│   └── links.md
├── src/
├── metadata/
├── assets/
│   ├── editable/
│   │   ├── graphics/
│   │   ├── tilemaps/
│   │   ├── palettes/
│   │   ├── text/
│   │   └── data/
├── build/
└── docs/
```

## Step 2: Add ROM Checksums

Edit `verify/checksums.json`:

```json
{
	"name": "My Game Name",
	"platform": "snes",
	"region": "US",
	"version": "1.0",
	"checksums": {
		"crc32": "abcd1234",
		"md5": "0123456789abcdef0123456789abcdef",
		"sha256": "0123456789abcdef..."
	},
	"fileSize": 1048576,
	"romPath": "C:\\~reference-roms\\snes\\my-game.sfc"
}
```

Get checksums using PowerShell:
```powershell
Get-FileHash "C:\~reference-roms\snes\my-game.sfc" -Algorithm SHA256
Get-FileHash "C:\~reference-roms\snes\my-game.sfc" -Algorithm MD5
# For CRC32, use a tool like 7-Zip or Python
```

## Step 3: Verify ROM

```powershell
.\verify\verify.ps1 -RomPath "C:\~reference-roms\snes\my-game.sfc"
```

## Step 4: Disassemble with Peony

```powershell
peony disasm "C:\~reference-roms\snes\my-game.sfc" `
    --output src/ `
    --metadata metadata/ `
    --platform snes
```

## Step 5: Extract Assets

```powershell
# Extract raw assets
python ..\..\..\.tools\extract-assets.py `
    --rom "C:\~reference-roms\snes\my-game.sfc" `
    --output assets\extracted\ `
    --config build.config.json

# Convert to editable formats
python ..\..\..\.tools\convert-assets.py `
    --input assets\extracted\ `
    --output assets\editable\
```

## Step 6: Configure Build

Edit `build.config.json`:

```json
{
	"$schema": "../../schemas/build-config.schema.json",
	"game": {
		"name": "My Game Name",
		"shortName": "my-game",
		"platform": "snes",
		"region": "US"
	},
	"source": {
		"mainFile": "src/main.pasm",
		"includes": ["src/", "src/includes/"]
	},
	"assets": {
		"extractDir": "assets/extracted",
		"editableDir": "assets/editable",
		"binaryDir": "assets/binary"
	},
	"build": {
		"outputDir": "build",
		"outputRom": "my-game.sfc"
	},
	"verify": {
		"checksumsFile": "verify/checksums.json"
	}
}
```

## Step 7: Build and Verify

```powershell
# Build ROM
.\build.ps1

# Verify byte-identical
.\verify\verify.ps1 -BuiltRom build\my-game.sfc
```

## Step 8: Update Documentation

1. Update game README.md with status
2. Add to main README.md games table
3. Create docs/rom-map.md
4. Create docs/ram-map.md
5. Document any game-specific notes

## Step 9: Commit

```powershell
git add games/snes/my-game-name/
git commit -m "feat(snes): Add my-game-name to the garden"
```

## Troubleshooting

### Disassembly Issues
- Check ROM header detection
- Try specifying mapper manually
- Review Peony logs

### Build Failures
- Verify all includes are present
- Check for missing labels
- Review Poppy error messages

### Checksum Mismatch
- Compare file sizes first
- Check for header differences
- Review asset conversion

See [troubleshooting.md](troubleshooting.md) for more help.
