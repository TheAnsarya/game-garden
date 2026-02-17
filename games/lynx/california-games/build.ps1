# Build California Games Disassembly
# Rebuilds the disassembled source to ROM

$ErrorActionPreference = "Stop"

$projectDir = $PSScriptRoot
$srcDir = Join-Path $projectDir "src"
$buildDir = Join-Path $projectDir "build"
$verifyDir = Join-Path $projectDir "verify"

# Create directories if needed
if (-not (Test-Path $buildDir)) {
	New-Item -ItemType Directory -Path $buildDir -Force | Out-Null
}

# Source paths
$mainAsm = Join-Path $srcDir "main.pasm"
$outputLnx = Join-Path $buildDir "california-games.lnx"

# Check if source exists
if (-not (Test-Path $mainAsm)) {
	Write-Host "ERROR: Source file not found. Run disassembly first." -ForegroundColor Red
	Write-Host "       peony disasm <rom_path> -o src/" -ForegroundColor Yellow
	exit 1
}

Write-Host "Building california-games.lnx..." -ForegroundColor Cyan

try {
	# Build with Poppy
	poppy build $mainAsm -o $outputLnx --platform lynx --game-name "California Games" --manufacturer "Epyx"

	if (Test-Path $outputLnx) {
		$size = (Get-Item $outputLnx).Length
		Write-Host "SUCCESS: Built $outputLnx ($size bytes)" -ForegroundColor Green

		# Verify against original if available
		$checksumsFile = Join-Path $verifyDir "checksums.json"
		if (Test-Path $checksumsFile) {
			Write-Host "Verifying against original ROM..." -ForegroundColor Cyan
			# TODO: Add verification logic
		}
	}
	else {
		Write-Host "ERROR: Output file not created" -ForegroundColor Red
		exit 1
	}
}
catch {
	Write-Host "ERROR: Build failed - $_" -ForegroundColor Red
	exit 1
}
