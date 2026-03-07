<#
.SYNOPSIS
	Merge multiple Pansy metadata files.

.DESCRIPTION
	Invokes the Pansy CLI merge command to combine a base and overlay .pansy file.
	For 3+ files, chains merges sequentially.

.PARAMETER Config
	Path to pipeline-config.json (used for Pansy CLI path).

.PARAMETER Base
	Path to the base .pansy file.

.PARAMETER Overlay
	Path to the overlay .pansy file.

.PARAMETER Output
	Path for the merged output file.

.PARAMETER Files
	List of .pansy files to merge sequentially (alternative to Base/Overlay).
	First file is base, each subsequent is overlay merged in order.

.EXAMPLE
	.\pipeline-merge.ps1 -Base game-nexen.pansy -Overlay game-peony.pansy -Output game.pansy
	.\pipeline-merge.ps1 -Files game-nexen.pansy,game-peony.pansy,game-manual.pansy -Output game.pansy
#>

param(
	[string]$Config,
	[string]$Base,
	[string]$Overlay,
	[string]$Output = "merged.pansy",
	[string[]]$Files
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

function Find-Tool {
	param([string]$ProjectPath, [string]$ToolName)
	if ($ProjectPath -and (Test-Path $ProjectPath)) {
		return @("run", "--project", $ProjectPath, "--")
	}
	$exe = Get-Command $ToolName -ErrorAction SilentlyContinue
	if ($exe) {
		return @()
	}
	Write-Error "$ToolName not found. Set the path in pipeline-config.json or add it to PATH."
	exit 1
}

function Invoke-PansyMerge {
	param([string]$BasePath, [string]$OverlayPath, [string]$OutputPath, $PansyProject)
	$pansyArgs = Find-Tool $PansyProject "pansy"
	$mergeArgs = @("merge", $BasePath, $OverlayPath, "-o", $OutputPath)

	Write-Host "  Merging: $(Split-Path $BasePath -Leaf) + $(Split-Path $OverlayPath -Leaf) -> $(Split-Path $OutputPath -Leaf)" -ForegroundColor Gray

	if ($PansyProject) {
		dotnet @pansyArgs @mergeArgs
	} else {
		pansy @mergeArgs
	}

	if ($LASTEXITCODE -ne 0) {
		Write-Error "Merge failed with exit code $LASTEXITCODE"
		exit $LASTEXITCODE
	}
}

# Load config if provided
$cfg = $null
$pansyProject = $null
if ($Config) {
	$cfg = Load-Config $Config
	$pansyProject = $cfg.pansy
}

Write-Host ""
Write-Host "Merging Pansy files" -ForegroundColor Green
Write-Host ""

if ($Files -and $Files.Count -ge 2) {
	# Multi-file sequential merge
	foreach ($f in $Files) {
		if (-not (Test-Path $f)) {
			Write-Error "File not found: $f"
			exit 1
		}
	}

	$tempFile = [System.IO.Path]::GetTempFileName() + ".pansy"
	try {
		# Merge first two
		Invoke-PansyMerge $Files[0] $Files[1] $tempFile $pansyProject

		# Chain remaining files
		for ($i = 2; $i -lt $Files.Count; $i++) {
			$nextTemp = [System.IO.Path]::GetTempFileName() + ".pansy"
			Invoke-PansyMerge $tempFile $Files[$i] $nextTemp $pansyProject
			Remove-Item $tempFile -Force
			$tempFile = $nextTemp
		}

		# Move final result to output
		Copy-Item $tempFile $Output -Force
		Remove-Item $tempFile -Force
	} catch {
		if (Test-Path $tempFile) { Remove-Item $tempFile -Force }
		throw
	}

	Write-Host ""
	Write-Host "Merged $($Files.Count) files -> $Output" -ForegroundColor Green
} elseif ($Base -and $Overlay) {
	# Simple two-file merge
	if (-not (Test-Path $Base)) { Write-Error "Base file not found: $Base"; exit 1 }
	if (-not (Test-Path $Overlay)) { Write-Error "Overlay file not found: $Overlay"; exit 1 }

	Invoke-PansyMerge $Base $Overlay $Output $pansyProject

	Write-Host ""
	Write-Host "Merged -> $Output" -ForegroundColor Green
} else {
	Write-Error "Specify either -Base and -Overlay, or -Files with 2+ paths."
	exit 1
}
