<#
.SYNOPSIS
	Builds Final Fantasy: Mystic Quest from source.

.DESCRIPTION
	Assembles the disassembled source back into a ROM file.

.PARAMETER Clean
	Clean build output before building.
#>

param(
	[switch]$Clean
)

$ErrorActionPreference = 'Stop'
$ScriptDir = Split-Path -Parent $MyInvocation.MyCommand.Path

Write-Host "🌸 Building Final Fantasy: Mystic Quest..." -ForegroundColor Magenta

# Clean if requested
if ($Clean) {
	Write-Host "   🧹 Cleaning build output..." -ForegroundColor Gray
	Remove-Item -Path "$ScriptDir\build\*" -Recurse -Force -ErrorAction SilentlyContinue
}

# TODO: Add Poppy assembly command
# poppy build src/main.pasm --output build/ffmq.sfc

Write-Host "⚠️  Build not yet implemented - waiting for Poppy integration" -ForegroundColor Yellow
