<#
.SYNOPSIS
	Disassemble a ROM using Peony with optional Pansy hints.

.DESCRIPTION
	Runs Peony disassembly on a ROM file, outputting .pasm source files
	and generating a Pansy metadata file. Optionally imports existing
	Pansy hints for improved analysis.

.PARAMETER Config
	Path to pipeline-config.json file.

.PARAMETER Rom
	Path to the ROM file (overrides config).

.PARAMETER Hints
	Path to an existing .pansy file to use as hints during disassembly.

.PARAMETER OutputDir
	Output directory for .pasm files (overrides config sourceDir).

.EXAMPLE
	.\pipeline-disassemble.ps1 -Config pipeline-config.json
	.\pipeline-disassemble.ps1 -Rom game.nes -OutputDir src/
	.\pipeline-disassemble.ps1 -Config pipeline-config.json -Hints metadata/game-nexen.pansy
#>

param(
	[string]$Config,
	[string]$Rom,
	[string]$Hints,
	[string]$OutputDir
)

$ErrorActionPreference = 'Stop'

function Load-Config {
	param([string]$Path)
	if (-not (Test-Path $Path)) {
		Write-Error "Config file not found: $Path"
		exit 1
	}
	return Get-Content $Path -Raw | ConvertFrom-Json
}

function Find-Tool {
	param([string]$ProjectPath, [string]$ToolName)
	if ($ProjectPath -and (Test-Path $ProjectPath)) {
		return @("run", "--project", $ProjectPath, "--")
	}
	$exe = Get-Command $ToolName -ErrorAction SilentlyContinue
	if ($exe) {
		return @()
	}
	Write-Error "$ToolName not found. Set the path in pipeline-config.json or add it to PATH."
	exit 1
}

# Load config if provided
$cfg = $null
if ($Config) {
	$cfg = Load-Config $Config
}

# Resolve parameters
$romPath = if ($Rom) { $Rom } elseif ($cfg) { $cfg.rom } else { Write-Error "No ROM specified. Use -Rom or -Config."; exit 1 }
$outDir = if ($OutputDir) { $OutputDir } elseif ($cfg) { $cfg.sourceDir } else { "src" }
$metaDir = if ($cfg) { $cfg.metadataDir } else { "metadata" }
$gameName = if ($cfg) { $cfg.game } else { [System.IO.Path]::GetFileNameWithoutExtension($romPath) }

if (-not (Test-Path $romPath)) {
	Write-Error "ROM not found: $romPath"
	exit 1
}

# Ensure output directories exist
New-Item -ItemType Directory -Path $outDir -Force | Out-Null
New-Item -ItemType Directory -Path $metaDir -Force | Out-Null

# Build Peony command
$peonyProject = if ($cfg) { $cfg.peony } else { $null }
$peonyArgs = Find-Tool $peonyProject "peony"

$args = @("disasm", $romPath, "--output", $outDir, "--pansy", "$metaDir/$gameName-peony.pansy")

if ($Hints -and (Test-Path $Hints)) {
	$args += @("--hints", $Hints)
	Write-Host "Using Pansy hints: $Hints" -ForegroundColor Cyan
}

Write-Host ""
Write-Host "Disassembling: $romPath" -ForegroundColor Green
Write-Host "  Output:   $outDir" -ForegroundColor Gray
Write-Host "  Metadata: $metaDir/$gameName-peony.pansy" -ForegroundColor Gray
Write-Host ""

if ($peonyProject) {
	dotnet @peonyArgs @args
} else {
	peony @args
}

if ($LASTEXITCODE -eq 0) {
	Write-Host ""
	Write-Host "Disassembly complete." -ForegroundColor Green
} else {
	Write-Error "Disassembly failed with exit code $LASTEXITCODE"
	exit $LASTEXITCODE
}
