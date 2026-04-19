<#
.SYNOPSIS
	Builds Final Fantasy II from source using Poppy.

.PARAMETER Clean
	Clean build output before building.
#>

param(
	[switch]$Clean
)

$ErrorActionPreference = 'Stop'
$ScriptDir = Split-Path -Parent $MyInvocation.MyCommand.Path
$PoppyCli = 'C:\Users\me\source\repos\poppy\src\Poppy.CLI'
$MainFile = Join-Path $ScriptDir 'src\main.pasm'
$OutputRom = Join-Path $ScriptDir 'build\ff2.smc'

Write-Host '🌸 Building Final Fantasy II...' -ForegroundColor Magenta

if ($Clean) {
	Write-Host '   🧹 Cleaning build output...' -ForegroundColor Gray
	Remove-Item -Path (Join-Path $ScriptDir 'build\*') -Recurse -Force -ErrorAction SilentlyContinue
}

if (!(Test-Path $MainFile)) {
	throw "Main source file not found: $MainFile"
}

New-Item -ItemType Directory -Force -Path (Join-Path $ScriptDir 'build') | Out-Null

Write-Host '   🔧 Running Poppy compiler...' -ForegroundColor Gray
dotnet run --project $PoppyCli -c Release -- "$MainFile" -o "$OutputRom"
if ($LASTEXITCODE -ne 0) {
	throw 'Poppy build failed.'
}

Write-Host "✅ Build complete: $OutputRom" -ForegroundColor Green
