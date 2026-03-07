<#
.SYNOPSIS
	Run the full Flower Toolchain pipeline.

.DESCRIPTION
	Executes the complete pipeline: disassemble, build, verify, and merge.
	Requires a pipeline-config.json in the game project directory.

.PARAMETER Config
	Path to pipeline-config.json file.

.PARAMETER SkipDisassemble
	Skip the disassembly step (use existing .pasm files).

.PARAMETER SkipBuild
	Skip the build step.

.PARAMETER SkipVerify
	Skip the verification step.

.PARAMETER SkipMerge
	Skip the metadata merge step.

.PARAMETER Hints
	Path to an existing .pansy file to use as hints during disassembly.

.EXAMPLE
	.\pipeline-full.ps1 -Config pipeline-config.json
	.\pipeline-full.ps1 -Config pipeline-config.json -SkipDisassemble
	.\pipeline-full.ps1 -Config pipeline-config.json -Hints metadata/game-nexen.pansy
#>

param(
	[Parameter(Mandatory)]
	[string]$Config,
	[switch]$SkipDisassemble,
	[switch]$SkipBuild,
	[switch]$SkipVerify,
	[switch]$SkipMerge,
	[string]$Hints
)

$ErrorActionPreference = 'Stop'

$scriptDir = Split-Path -Parent $MyInvocation.MyCommand.Definition

function Load-Config {
	param([string]$Path)
	if (-not (Test-Path $Path)) {
		Write-Error "Config file not found: $Path"
		exit 1
	}
	return Get-Content $Path -Raw | ConvertFrom-Json
}

$cfg = Load-Config $Config

Write-Host ""
Write-Host "==============================" -ForegroundColor Cyan
Write-Host " Flower Toolchain Pipeline" -ForegroundColor Cyan
Write-Host " Game: $($cfg.game)" -ForegroundColor Cyan
Write-Host "==============================" -ForegroundColor Cyan
Write-Host ""

$failed = $false

# Step 1: Disassemble
if (-not $SkipDisassemble) {
	Write-Host "[1/4] Disassembling..." -ForegroundColor Yellow
	$disasmArgs = @("-Config", $Config)
	if ($Hints) { $disasmArgs += @("-Hints", $Hints) }
	& "$scriptDir\pipeline-disassemble.ps1" @disasmArgs
	if ($LASTEXITCODE -ne 0) {
		Write-Host "Disassembly failed!" -ForegroundColor Red
		$failed = $true
	}
} else {
	Write-Host "[1/4] Disassembly skipped." -ForegroundColor DarkGray
}

# Step 2: Build
if (-not $failed -and -not $SkipBuild) {
	Write-Host ""
	Write-Host "[2/4] Building..." -ForegroundColor Yellow
	& "$scriptDir\pipeline-build.ps1" -Config $Config
	if ($LASTEXITCODE -ne 0) {
		Write-Host "Build failed!" -ForegroundColor Red
		$failed = $true
	}
} elseif ($SkipBuild) {
	Write-Host "[2/4] Build skipped." -ForegroundColor DarkGray
}

# Step 3: Verify
if (-not $failed -and -not $SkipVerify) {
	Write-Host ""
	Write-Host "[3/4] Verifying..." -ForegroundColor Yellow
	& "$scriptDir\pipeline-verify.ps1" -Config $Config -Detailed
	if ($LASTEXITCODE -ne 0) {
		Write-Host "Verification failed!" -ForegroundColor Red
		$failed = $true
	}
} elseif ($SkipVerify) {
	Write-Host "[3/4] Verification skipped." -ForegroundColor DarkGray
}

# Step 4: Merge metadata
if (-not $failed -and -not $SkipMerge) {
	Write-Host ""
	Write-Host "[4/4] Merging metadata..." -ForegroundColor Yellow

	$metaDir = if ($cfg.metadataDir) { $cfg.metadataDir } else { "metadata" }
	$gameName = $cfg.game

	# Collect available .pansy files for merge
	$pansyFiles = @()
	$nexenFile = "$metaDir/$gameName-nexen.pansy"
	$peonyFile = "$metaDir/$gameName-peony.pansy"
	$poppyFile = "$metaDir/$gameName-poppy.pansy"
	$manualFile = "$metaDir/$gameName-manual.pansy"

	if (Test-Path $nexenFile) { $pansyFiles += $nexenFile }
	if (Test-Path $peonyFile) { $pansyFiles += $peonyFile }
	if (Test-Path $poppyFile) { $pansyFiles += $poppyFile }
	if (Test-Path $manualFile) { $pansyFiles += $manualFile }

	if ($pansyFiles.Count -ge 2) {
		$mergeArgs = @("-Config", $Config, "-Files", ($pansyFiles -join ","), "-Output", "$metaDir/$gameName.pansy")
		& "$scriptDir\pipeline-merge.ps1" @mergeArgs
		if ($LASTEXITCODE -ne 0) {
			Write-Host "Merge failed!" -ForegroundColor Red
			$failed = $true
		}
	} elseif ($pansyFiles.Count -eq 1) {
		Write-Host "  Only one .pansy file found, copying as authoritative." -ForegroundColor Gray
		Copy-Item $pansyFiles[0] "$metaDir/$gameName.pansy" -Force
	} else {
		Write-Host "  No .pansy files found to merge." -ForegroundColor DarkGray
	}
} elseif ($SkipMerge) {
	Write-Host "[4/4] Merge skipped." -ForegroundColor DarkGray
}

# Summary
Write-Host ""
Write-Host "==============================" -ForegroundColor Cyan
if ($failed) {
	Write-Host " Pipeline FAILED" -ForegroundColor Red
	exit 1
} else {
	Write-Host " Pipeline complete!" -ForegroundColor Green
	exit 0
}
