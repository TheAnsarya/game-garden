<#
.SYNOPSIS
	Build a ROM using Poppy with Pansy metadata output.

.DESCRIPTION
	Runs Poppy assembler on .pasm source files, producing a ROM binary
	and optionally generating a Pansy metadata file with source map.

.PARAMETER Config
	Path to pipeline-config.json file.

.PARAMETER MainFile
	Path to the main .pasm file (overrides config).

.PARAMETER OutputRom
	Path for the output ROM (overrides config).

.EXAMPLE
	.\pipeline-build.ps1 -Config pipeline-config.json
	.\pipeline-build.ps1 -MainFile src/main.pasm -OutputRom build/game.nes
#>

param(
	[string]$Config,
	[string]$MainFile,
	[string]$OutputRom
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
$main = if ($MainFile) { $MainFile } elseif ($cfg) { $cfg.mainFile } else { "src/main.pasm" }
$buildDir = if ($cfg) { $cfg.buildDir } else { "build" }
$metaDir = if ($cfg) { $cfg.metadataDir } else { "metadata" }
$gameName = if ($cfg) { $cfg.game } else { [System.IO.Path]::GetFileNameWithoutExtension($main) }
$platform = if ($cfg) { $cfg.platform } else { "nes" }
$output = if ($OutputRom) { $OutputRom } else { "$buildDir/$gameName.$platform" }

if (-not (Test-Path $main)) {
	Write-Error "Main source file not found: $main"
	exit 1
}

# Ensure output directories exist
New-Item -ItemType Directory -Path $buildDir -Force | Out-Null
New-Item -ItemType Directory -Path $metaDir -Force | Out-Null

# Build Poppy command
$poppyProject = if ($cfg) { $cfg.poppy } else { $null }
$poppyArgs = Find-Tool $poppyProject "poppy"

$args = @("build", $main, "--output", $output, "--pansy", "$metaDir/$gameName-poppy.pansy")

Write-Host ""
Write-Host "Building: $main" -ForegroundColor Green
Write-Host "  Output: $output" -ForegroundColor Gray
Write-Host "  Pansy:  $metaDir/$gameName-poppy.pansy" -ForegroundColor Gray
Write-Host ""

if ($poppyProject) {
	dotnet @poppyArgs @args
} else {
	poppy @args
}

if ($LASTEXITCODE -eq 0) {
	Write-Host ""
	Write-Host "Build complete." -ForegroundColor Green
} else {
	Write-Error "Build failed with exit code $LASTEXITCODE"
	exit $LASTEXITCODE
}
