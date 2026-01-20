<#
.SYNOPSIS
	Verifies the ROM file for Final Fantasy: Mystic Quest.

.PARAMETER RomPath
	Path to the ROM file to verify.

.PARAMETER BuiltRom
	Path to the built ROM to compare (optional).
#>

param(
	[Parameter(Mandatory = $true)]
	[string]$RomPath,

	[string]$BuiltRom
)

$ScriptDir = Split-Path -Parent $MyInvocation.MyCommand.Path
$GameDir = Split-Path -Parent $ScriptDir
$RepoRoot = Split-Path -Parent (Split-Path -Parent (Split-Path -Parent $GameDir))

# Verify original ROM
Write-Host "🔍 Verifying ROM: $RomPath" -ForegroundColor Cyan
python "$RepoRoot\tools\verify-rom.py" $RomPath -c "$ScriptDir\checksums.json"

if ($LASTEXITCODE -ne 0) {
	Write-Host "❌ ROM verification failed!" -ForegroundColor Red
	exit 1
}

# Compare built ROM if provided
if ($BuiltRom) {
	Write-Host ""
	Write-Host "🔍 Comparing built ROM: $BuiltRom" -ForegroundColor Cyan

	if (!(Test-Path $RomPath) -or !(Test-Path $BuiltRom)) {
		Write-Host "❌ One or both ROM files not found!" -ForegroundColor Red
		exit 1
	}

	$OriginalHash = (Get-FileHash $RomPath -Algorithm SHA256).Hash
	$BuiltHash = (Get-FileHash $BuiltRom -Algorithm SHA256).Hash

	if ($OriginalHash -eq $BuiltHash) {
		Write-Host "✅ Built ROM is byte-identical to original!" -ForegroundColor Green
	} else {
		Write-Host "❌ Built ROM differs from original!" -ForegroundColor Red
		Write-Host "   Original: $OriginalHash" -ForegroundColor Gray
		Write-Host "   Built:    $BuiltHash" -ForegroundColor Gray
		exit 1
	}
}
