# 🌷 Flower Toolchain Pipeline Scripts

Automation scripts for the complete [Flower Toolchain](../docs/PIPELINE-GUIDE.md) pipeline.

## Scripts

| Script | Purpose |
|--------|---------|
| `pipeline-disassemble.ps1` | Disassemble a ROM with Peony, optionally importing Pansy hints |
| `pipeline-build.ps1` | Build a ROM with Poppy, generating Pansy metadata |
| `pipeline-verify.ps1` | Verify a built ROM matches the original (byte-identical) |
| `pipeline-merge.ps1` | Merge multiple `.pansy` files into one |
| `pipeline-full.ps1` | Run the full pipeline (disassemble → build → verify → merge) |

## Prerequisites

All tools must be on your PATH or configured in `pipeline-config.json`:

- **Peony** (`peony` or `dotnet run --project <peony-path>`)
- **Poppy** (`poppy` or `dotnet run --project <poppy-path>`)
- **Pansy CLI** (`pansy` or `dotnet run --project <pansy-path>`)

## Configuration

Each game project can have a `pipeline-config.json`:

```json
{
	"game": "my-game",
	"platform": "nes",
	"rom": "C:\\~reference-roms\\nes\\my-game.nes",
	"peony": "C:\\Users\\me\\source\\repos\\peony\\src\\Peony.Cli\\Peony.Cli.csproj",
	"poppy": "C:\\Users\\me\\source\\repos\\poppy\\src\\Poppy.CLI\\Poppy.CLI.csproj",
	"pansy": "C:\\Users\\me\\source\\repos\\pansy\\src\\Pansy.Cli\\Pansy.Cli.csproj",
	"sourceDir": "src",
	"metadataDir": "metadata",
	"buildDir": "build",
	"mainFile": "src/main.pasm"
}
```

## Usage

```powershell
# From a game project directory (e.g., games/nes/my-game/)

# Disassemble
..\..\..\.tools\pipeline\pipeline-disassemble.ps1 -Config pipeline-config.json

# Build
..\..\..\.tools\pipeline\pipeline-build.ps1 -Config pipeline-config.json

# Verify
..\..\..\.tools\pipeline\pipeline-verify.ps1 -Config pipeline-config.json

# Merge Nexen export + Peony analysis
..\..\..\.tools\pipeline\pipeline-merge.ps1 -Base metadata\game-nexen.pansy -Overlay metadata\game-peony.pansy -Output metadata\game.pansy

# Full pipeline
..\..\..\.tools\pipeline\pipeline-full.ps1 -Config pipeline-config.json
```
