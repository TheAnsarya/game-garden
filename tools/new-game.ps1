<#
.SYNOPSIS
	Creates a new game project folder structure in Game Garden.

.DESCRIPTION
	Sets up the standard folder structure for a new game project including:
	- Source, metadata, and assets folders
	- Build configuration files
	- Verification folder with checksum template
	- Documentation templates

.PARAMETER Platform
	The target platform (nes, snes, gb, gba, genesis)

.PARAMETER GameName
	The name of the game (folder name, lowercase with hyphens)

.PARAMETER DisplayName
	The display name of the game (for README)

.EXAMPLE
	.\new-game.ps1 -Platform snes -GameName ffmq -DisplayName "Final Fantasy: Mystic Quest"
#>

param(
	[Parameter(Mandatory = $true)]
	[ValidateSet('nes', 'snes', 'gb', 'gba', 'genesis')]
	[string]$Platform,

	[Parameter(Mandatory = $true)]
	[string]$GameName,

	[Parameter(Mandatory = $true)]
	[string]$DisplayName
)

$ErrorActionPreference = 'Stop'

# Get script directory and repo root
$ScriptDir = Split-Path -Parent $MyInvocation.MyCommand.Path
$RepoRoot = Split-Path -Parent $ScriptDir
$GamePath = Join-Path $RepoRoot "games\$Platform\$GameName"

# Check if game already exists
if (Test-Path $GamePath) {
	Write-Error "Game already exists: $GamePath"
	exit 1
}

Write-Host "🌱 Creating new game project: $DisplayName ($Platform)" -ForegroundColor Green
Write-Host "   Path: $GamePath" -ForegroundColor Gray

# Create directory structure
$Folders = @(
	"",
	"verify",
	"reference",
	"src",
	"src/includes",
	"metadata",
	"assets",
	"assets/extracted",
	"assets/editable",
	"assets/editable/graphics",
	"assets/editable/tilemaps",
	"assets/editable/palettes",
	"assets/editable/text",
	"assets/editable/data",
	"assets/binary",
	"build",
	"docs"
)

foreach ($Folder in $Folders) {
	$Path = Join-Path $GamePath $Folder
	New-Item -ItemType Directory -Path $Path -Force | Out-Null
}

Write-Host "   ✅ Created directory structure" -ForegroundColor Gray

# Platform-specific file extension
$RomExt = switch ($Platform) {
	'nes' { '.nes' }
	'snes' { '.sfc' }
	'gb' { '.gb' }
	'gba' { '.gba' }
	'genesis' { '.md' }
}

# Create README.md
$ReadmeContent = @"
# $DisplayName

**Platform:** $($Platform.ToUpper())
**Status:** 🔴 Not Started

## 📊 Progress

| Phase | Status | Notes |
|-------|--------|-------|
| ROM Verified | ❌ | Checksum validated |
| Disassembly | ❌ | Source extracted |
| Metadata | ❌ | Pansy file created |
| Graphics | ❌ | Extracted & editable |
| Text | ❌ | Extracted & editable |
| Data | ❌ | Extracted & editable |
| Rebuild | ❌ | Byte-identical |

Legend: ✅ Complete | 🔄 In Progress | ❌ Not Started

## 🔧 Build

``````powershell
# Verify ROM
.\verify\verify.ps1 -RomPath "C:\~reference-roms\$Platform\{rom-name}$RomExt"

# Build ROM
.\build.ps1
``````

## 📁 Structure

``````
$GameName/
├── src/            # Disassembled source (.pasm)
├── metadata/       # Pansy metadata files
├── assets/         # Extracted and editable assets
├── build/          # Build output (gitignored)
├── verify/         # ROM verification
└── docs/           # Game documentation
``````

## 📝 Notes

_Add research notes, discoveries, and observations here._
"@

Set-Content -Path (Join-Path $GamePath "README.md") -Value $ReadmeContent -Encoding UTF8

# Create checksums.json template
$ChecksumsContent = @"
{
	"name": "$DisplayName",
	"platform": "$Platform",
	"region": "US",
	"version": "1.0",
	"crc32": "",
	"md5": "",
	"sha256": "",
	"size": 0,
	"notes": "Fill in checksums using: python tools/verify-rom.py --calculate {rom}"
}
"@

Set-Content -Path (Join-Path $GamePath "verify\checksums.json") -Value $ChecksumsContent -Encoding UTF8

# Create verify.ps1
$VerifyContent = @"
<#
.SYNOPSIS
	Verifies the ROM file for $DisplayName.

.PARAMETER RomPath
	Path to the ROM file to verify.

.PARAMETER BuiltRom
	Path to the built ROM to compare (optional).
#>

param(
	[Parameter(Mandatory = `$true)]
	[string]`$RomPath,

	[string]`$BuiltRom
)

`$ScriptDir = Split-Path -Parent `$MyInvocation.MyCommand.Path
`$GameDir = Split-Path -Parent `$ScriptDir
`$RepoRoot = Split-Path -Parent (Split-Path -Parent (Split-Path -Parent `$GameDir))

# Verify original ROM
Write-Host "🔍 Verifying ROM: `$RomPath" -ForegroundColor Cyan
python "`$RepoRoot\tools\verify-rom.py" `$RomPath -c "`$ScriptDir\checksums.json"

if (`$LASTEXITCODE -ne 0) {
	Write-Host "❌ ROM verification failed!" -ForegroundColor Red
	exit 1
}

# Compare built ROM if provided
if (`$BuiltRom) {
	Write-Host ""
	Write-Host "🔍 Comparing built ROM: `$BuiltRom" -ForegroundColor Cyan

	if (!(Test-Path `$RomPath) -or !(Test-Path `$BuiltRom)) {
		Write-Host "❌ One or both ROM files not found!" -ForegroundColor Red
		exit 1
	}

	`$OriginalHash = (Get-FileHash `$RomPath -Algorithm SHA256).Hash
	`$BuiltHash = (Get-FileHash `$BuiltRom -Algorithm SHA256).Hash

	if (`$OriginalHash -eq `$BuiltHash) {
		Write-Host "✅ Built ROM is byte-identical to original!" -ForegroundColor Green
	} else {
		Write-Host "❌ Built ROM differs from original!" -ForegroundColor Red
		Write-Host "   Original: `$OriginalHash" -ForegroundColor Gray
		Write-Host "   Built:    `$BuiltHash" -ForegroundColor Gray
		exit 1
	}
}
"@

Set-Content -Path (Join-Path $GamePath "verify\verify.ps1") -Value $VerifyContent -Encoding UTF8

# Create build.ps1 template
$BuildContent = @"
<#
.SYNOPSIS
	Builds $DisplayName from source.

.DESCRIPTION
	Assembles the disassembled source back into a ROM file.

.PARAMETER Clean
	Clean build output before building.
#>

param(
	[switch]`$Clean
)

`$ErrorActionPreference = 'Stop'
`$ScriptDir = Split-Path -Parent `$MyInvocation.MyCommand.Path

Write-Host "🌸 Building $DisplayName..." -ForegroundColor Magenta

# Clean if requested
if (`$Clean) {
	Write-Host "   🧹 Cleaning build output..." -ForegroundColor Gray
	Remove-Item -Path "`$ScriptDir\build\*" -Recurse -Force -ErrorAction SilentlyContinue
}

# TODO: Add Poppy assembly command
# poppy build src/main.pasm --output build/$GameName$RomExt

Write-Host "⚠️  Build not yet implemented - waiting for Poppy integration" -ForegroundColor Yellow
"@

Set-Content -Path (Join-Path $GamePath "build.ps1") -Value $BuildContent -Encoding UTF8

# Create build.config.json
$ConfigContent = @"
{
	"`$schema": "https://game-garden.example.com/schemas/build-config.json",
	"project": {
		"name": "$DisplayName",
		"shortName": "$GameName",
		"platform": "$Platform",
		"version": "1.0.0"
	},
	"source": {
		"assembler": "poppy",
		"mainFile": "src/main.pasm",
		"includes": ["src/", "src/includes/"],
		"outputRom": "build/$GameName$RomExt"
	},
	"assets": {
		"extractDir": "assets/extracted",
		"editableDir": "assets/editable",
		"binaryDir": "assets/binary"
	},
	"metadata": {
		"pansyFile": "metadata/$GameName.pansy"
	}
}
"@

Set-Content -Path (Join-Path $GamePath "build.config.json") -Value $ConfigContent -Encoding UTF8

# Create docs templates
$RomMapContent = @"
# $DisplayName - ROM Map

## Overview

| Range | Size | Description |
|-------|------|-------------|
| `$000000-`$?????? | ??? | Header |

## Banks

_Document ROM bank layout here._

## Data Sections

_Document major data sections here._
"@

Set-Content -Path (Join-Path $GamePath "docs\rom-map.md") -Value $RomMapContent -Encoding UTF8

$RamMapContent = @"
# $DisplayName - RAM Map

## Overview

| Range | Size | Description |
|-------|------|-------------|
| `$0000-`$00ff | 256 | Zero Page |

## Variables

_Document RAM variables here._

## Buffers

_Document RAM buffers here._
"@

Set-Content -Path (Join-Path $GamePath "docs\ram-map.md") -Value $RamMapContent -Encoding UTF8

# Create .gitkeep files for empty directories
$KeepDirs = @(
	"assets/extracted",
	"assets/binary",
	"build",
	"reference"
)

foreach ($Dir in $KeepDirs) {
	$KeepPath = Join-Path $GamePath "$Dir\.gitkeep"
	Set-Content -Path $KeepPath -Value "" -Encoding UTF8
}

Write-Host ""
Write-Host "✅ Game project created successfully!" -ForegroundColor Green
Write-Host ""
Write-Host "Next steps:" -ForegroundColor Yellow
Write-Host "   1. Find ROM in C:\~reference-roms\$Platform\" -ForegroundColor Gray
Write-Host "   2. Calculate checksums: python tools/verify-rom.py --calculate {rom}" -ForegroundColor Gray
Write-Host "   3. Update verify\checksums.json with the checksums" -ForegroundColor Gray
Write-Host "   4. Verify ROM: .\verify\verify.ps1 -RomPath {rom}" -ForegroundColor Gray
Write-Host "   5. Begin disassembly with Peony" -ForegroundColor Gray
