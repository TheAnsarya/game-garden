# Build Test Hardware Registers ROM
# Creates an LNX file for Atari Lynx

$ErrorActionPreference = "Stop"

$projectDir = $PSScriptRoot
$srcDir = Join-Path $projectDir "src"
$buildDir = Join-Path $projectDir "build"

# Create build directory if needed
if (-not (Test-Path $buildDir)) {
	New-Item -ItemType Directory -Path $buildDir -Force | Out-Null
}

# Build with Poppy
$mainAsm = Join-Path $srcDir "main.pasm"
$outputLnx = Join-Path $buildDir "test-hardware-regs.lnx"

Write-Host "Building test-hardware-regs.lnx..." -ForegroundColor Cyan

try {
	poppy build $mainAsm -o $outputLnx --platform lynx --game-name "HW Reg Test" --manufacturer "GameGarden"

	if (Test-Path $outputLnx) {
		$size = (Get-Item $outputLnx).Length
		Write-Host "SUCCESS: Built $outputLnx ($size bytes)" -ForegroundColor Green
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

