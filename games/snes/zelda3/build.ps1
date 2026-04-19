<#
.SYNOPSIS
	Builds The Legend of Zelda: A Link to the Past from source.

.DESCRIPTION
	Assembles the disassembled source back into a ROM file using Poppy.
	Also reconverts editable assets back to binary .inc-<purpose> files.

.PARAMETER Clean
	Clean build output before building.
#>

param(
	[switch]$Clean
)

$ErrorActionPreference = 'Stop'
$ScriptDir = Split-Path -Parent $MyInvocation.MyCommand.Path
$PoppyDir = "C:\Users\me\source\repos\poppy"

Write-Host "🌸 Building The Legend of Zelda: A Link to the Past..." -ForegroundColor Magenta

# Clean if requested
if ($Clean) {
	Write-Host "   🧹 Cleaning build output..." -ForegroundColor Gray
	Remove-Item -Path "$ScriptDir\build\*" -Recurse -Force -ErrorAction SilentlyContinue
	Remove-Item -Path "$ScriptDir\assets\binary\*" -Recurse -Force -ErrorAction SilentlyContinue
}

# Step 1: Reconvert editable assets to binary .inc-<purpose> files
Write-Host "   📦 Reconverting assets..." -ForegroundColor Cyan

& "$ScriptDir\reconvert-assets.ps1" -PoppyDir $PoppyDir
if ($LASTEXITCODE -ne 0) {
	Write-Host "❌ Asset reconversion failed!" -ForegroundColor Red
	exit 1
}

# Step 2: Assemble with Poppy
Write-Host "   🌸 Assembling with Poppy..." -ForegroundColor Magenta
New-Item -ItemType Directory -Path "$ScriptDir\build" -Force | Out-Null
dotnet run --project "$PoppyDir\src\Poppy.CLI" -c Release --no-build -- "$ScriptDir\src\main.pasm" -o "$ScriptDir\build\zelda3.sfc" -t snes --pansy "$ScriptDir\metadata\zelda3-built.pansy"

if ($LASTEXITCODE -ne 0) {
	Write-Host "❌ Assembly failed!" -ForegroundColor Red
	exit 1
}

Write-Host "✅ Build complete: build\zelda3.sfc" -ForegroundColor Green
