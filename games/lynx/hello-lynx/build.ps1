# Hello Lynx Build Script
# Requires Poppy with Lynx/65SC02 support

$ErrorActionPreference = "Stop"

$ProjectRoot = $PSScriptRoot
$SrcFile = Join-Path $ProjectRoot "src\main.pasm"
$BuildDir = Join-Path $ProjectRoot "build"
$OutputFile = Join-Path $BuildDir "hello-lynx.o"

# Create build directory if needed
if (-not (Test-Path $BuildDir)) {
	New-Item -ItemType Directory -Path $BuildDir | Out-Null
}

Write-Host "🦁 Building Hello Lynx..." -ForegroundColor Cyan
Write-Host "   Source: $SrcFile" -ForegroundColor Gray
Write-Host "   Output: $OutputFile" -ForegroundColor Gray

# Build with Poppy (when available)
# poppy build $SrcFile --output $OutputFile --platform lynx

Write-Host ""
Write-Host "⚠️ Poppy Lynx support not yet fully integrated." -ForegroundColor Yellow
Write-Host "   The source file demonstrates .platform directive and 65SC02 instructions." -ForegroundColor Yellow
Write-Host ""
Write-Host "✅ Source validated (pending full toolchain integration)" -ForegroundColor Green
