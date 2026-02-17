# Chip's Challenge - Atari Lynx Build Script
# Assembles disassembled source back into ROM using Poppy

param(
	[switch]$Clean,
	[switch]$Verify
)

$ErrorActionPreference = "Stop"
$ProjectRoot = $PSScriptRoot
$SrcDir = Join-Path $ProjectRoot "src"
$BuildDir = Join-Path $ProjectRoot "build"
$MainAsm = Join-Path $SrcDir "main.pasm"
$OutputRom = Join-Path $BuildDir "chips-challenge.lnx"

# Expected original ROM location
$OriginalRom = "C:\~reference-roms\Lynx\Chip's Challenge (1989).lnx"

Write-Host "🎮 Chip's Challenge - Lynx Build" -ForegroundColor Cyan
Write-Host "================================" -ForegroundColor Cyan

# Clean build directory
if ($Clean -or !(Test-Path $BuildDir)) {
	Write-Host "Cleaning build directory..." -ForegroundColor Yellow
	if (Test-Path $BuildDir) {
		Remove-Item $BuildDir -Recurse -Force
	}
	New-Item -ItemType Directory -Path $BuildDir | Out-Null
}

# Check for source file
if (!(Test-Path $MainAsm)) {
	Write-Host "ERROR: Source file not found: $MainAsm" -ForegroundColor Red
	Write-Host "Run Peony disassembler first to generate source." -ForegroundColor Yellow
	exit 1
}

# Build with Poppy
Write-Host "Building with Poppy..." -ForegroundColor Green
$poppyPath = "C:\Users\me\source\repos\poppy"
Push-Location $poppyPath
try {
	dotnet run --project src/Poppy.Cli -- build $MainAsm --output $OutputRom
	if ($LASTEXITCODE -ne 0) {
		Write-Host "ERROR: Build failed!" -ForegroundColor Red
		exit 1
	}
} finally {
	Pop-Location
}

Write-Host "Build complete: $OutputRom" -ForegroundColor Green

# Verify against original
if ($Verify) {
	Write-Host ""
	Write-Host "Verifying against original ROM..." -ForegroundColor Cyan

	if (!(Test-Path $OriginalRom)) {
		Write-Host "WARNING: Original ROM not found: $OriginalRom" -ForegroundColor Yellow
		Write-Host "Cannot verify byte-identical rebuild." -ForegroundColor Yellow
		exit 0
	}

	$originalHash = (Get-FileHash $OriginalRom -Algorithm SHA256).Hash
	$builtHash = (Get-FileHash $OutputRom -Algorithm SHA256).Hash

	if ($originalHash -eq $builtHash) {
		Write-Host "✅ SUCCESS: Built ROM is byte-identical to original!" -ForegroundColor Green
	} else {
		Write-Host "❌ MISMATCH: Built ROM differs from original." -ForegroundColor Red
		Write-Host "Original: $originalHash" -ForegroundColor Gray
		Write-Host "Built:    $builtHash" -ForegroundColor Gray
		exit 1
	}
}

Write-Host ""
Write-Host "Done!" -ForegroundColor Green
