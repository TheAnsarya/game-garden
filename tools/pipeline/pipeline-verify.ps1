<#
.SYNOPSIS
	Verify a built ROM matches the original (byte-identical).

.DESCRIPTION
	Compares a built ROM against the original ROM using CRC32, MD5, and SHA256
	checksums. Also supports byte-by-byte comparison for detailed diff output.

.PARAMETER Config
	Path to pipeline-config.json file.

.PARAMETER OriginalRom
	Path to the original ROM file (overrides config).

.PARAMETER BuiltRom
	Path to the built ROM file (overrides config).

.PARAMETER Detailed
	Show byte-by-byte differences when ROMs don't match.

.EXAMPLE
	.\pipeline-verify.ps1 -Config pipeline-config.json
	.\pipeline-verify.ps1 -OriginalRom original.nes -BuiltRom build/game.nes
	.\pipeline-verify.ps1 -Config pipeline-config.json -Detailed
#>

param(
	[string]$Config,
	[string]$OriginalRom,
	[string]$BuiltRom,
	[switch]$Detailed
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

function Get-FileHash-All {
	param([string]$Path)
	$bytes = [System.IO.File]::ReadAllBytes($Path)
	$crc32 = [System.IO.Hashing.Crc32]::Hash($bytes)
	[System.Array]::Reverse($crc32)
	$crc = [System.BitConverter]::ToString($crc32) -replace '-', ''
	$md5 = (Get-FileHash $Path -Algorithm MD5).Hash
	$sha256 = (Get-FileHash $Path -Algorithm SHA256).Hash
	return @{
		CRC32 = $crc.ToLower()
		MD5 = $md5.ToLower()
		SHA256 = $sha256.ToLower()
		Size = $bytes.Length
		Bytes = $bytes
	}
}

# Load config if provided
$cfg = $null
if ($Config) {
	$cfg = Load-Config $Config
}

# Resolve parameters
$original = if ($OriginalRom) { $OriginalRom } elseif ($cfg) { $cfg.rom } else { Write-Error "No original ROM specified."; exit 1 }
$buildDir = if ($cfg) { $cfg.buildDir } else { "build" }
$gameName = if ($cfg) { $cfg.game } else { [System.IO.Path]::GetFileNameWithoutExtension($original) }
$platform = if ($cfg) { $cfg.platform } else { "nes" }
$built = if ($BuiltRom) { $BuiltRom } else { "$buildDir/$gameName.$platform" }

if (-not (Test-Path $original)) {
	Write-Error "Original ROM not found: $original"
	exit 1
}
if (-not (Test-Path $built)) {
	Write-Error "Built ROM not found: $built"
	exit 1
}

Write-Host ""
Write-Host "Verifying ROM" -ForegroundColor Green
Write-Host "  Original: $original" -ForegroundColor Gray
Write-Host "  Built:    $built" -ForegroundColor Gray
Write-Host ""

$origInfo = Get-FileHash-All $original
$builtInfo = Get-FileHash-All $built

# Size check
if ($origInfo.Size -ne $builtInfo.Size) {
	Write-Host "FAIL: Size mismatch" -ForegroundColor Red
	Write-Host "  Original: $($origInfo.Size) bytes" -ForegroundColor Red
	Write-Host "  Built:    $($builtInfo.Size) bytes" -ForegroundColor Red
	exit 1
}

# Hash comparison
$match = $true
Write-Host "Size:   $($origInfo.Size) bytes" -ForegroundColor Gray

if ($origInfo.CRC32 -eq $builtInfo.CRC32) {
	Write-Host "CRC32:  $($origInfo.CRC32) MATCH" -ForegroundColor Green
} else {
	Write-Host "CRC32:  $($origInfo.CRC32) vs $($builtInfo.CRC32) MISMATCH" -ForegroundColor Red
	$match = $false
}

if ($origInfo.MD5 -eq $builtInfo.MD5) {
	Write-Host "MD5:    $($origInfo.MD5) MATCH" -ForegroundColor Green
} else {
	Write-Host "MD5:    $($origInfo.MD5) vs $($builtInfo.MD5) MISMATCH" -ForegroundColor Red
	$match = $false
}

if ($origInfo.SHA256 -eq $builtInfo.SHA256) {
	Write-Host "SHA256: $($origInfo.SHA256) MATCH" -ForegroundColor Green
} else {
	Write-Host "SHA256: $($origInfo.SHA256) vs $($builtInfo.SHA256) MISMATCH" -ForegroundColor Red
	$match = $false
}

if ($match) {
	Write-Host ""
	Write-Host "PASS: ROMs are byte-identical." -ForegroundColor Green
	exit 0
} else {
	if ($Detailed) {
		Write-Host ""
		Write-Host "Byte differences (first 20):" -ForegroundColor Yellow
		$diffCount = 0
		for ($i = 0; $i -lt $origInfo.Size -and $diffCount -lt 20; $i++) {
			if ($origInfo.Bytes[$i] -ne $builtInfo.Bytes[$i]) {
				$addr = '0x{0:x6}' -f $i
				$origByte = '0x{0:x2}' -f $origInfo.Bytes[$i]
				$builtByte = '0x{0:x2}' -f $builtInfo.Bytes[$i]
				Write-Host "  $addr : $origByte -> $builtByte" -ForegroundColor Yellow
				$diffCount++
			}
		}
		$totalDiffs = 0
		for ($i = 0; $i -lt $origInfo.Size; $i++) {
			if ($origInfo.Bytes[$i] -ne $builtInfo.Bytes[$i]) { $totalDiffs++ }
		}
		Write-Host "  Total differing bytes: $totalDiffs" -ForegroundColor Yellow
	}
	Write-Host ""
	Write-Host "FAIL: ROMs do not match." -ForegroundColor Red
	exit 1
}
