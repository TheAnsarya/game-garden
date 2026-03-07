<#
.SYNOPSIS
	End-to-end integration test for the Flower Toolchain pipeline.

.DESCRIPTION
	Tests the complete pipeline flow:
	1. Disassemble a test ROM with Peony -> .pasm source + .pansy metadata
	2. Build with Poppy -> assembled ROM + build .pansy
	3. Verify byte-identical match against original
	4. Merge .pansy files with Pansy CLI
	5. Validate merged .pansy contains expected sections

	Requires Peony, Poppy, and Pansy CLI to be built. Skips with a warning
	if tools are not available.

.PARAMETER PeonyProject
	Path to Peony.Cli .csproj file.

.PARAMETER PoppyProject
	Path to Poppy.CLI .csproj file.

.PARAMETER PansyProject
	Path to Pansy.Cli .csproj file.

.PARAMETER TestRom
	Path to a test ROM. Defaults to hello-lynx.lnx in-repo fixture.

.PARAMETER WorkDir
	Temp directory for test artifacts. Defaults to a temp folder.

.EXAMPLE
	.\test-pipeline-e2e.ps1
	.\test-pipeline-e2e.ps1 -PeonyProject C:\repos\peony\src\Peony.Cli\Peony.Cli.csproj

.NOTES
	Exit codes:
	  0 - All tests passed
	  1 - Test failure
	  2 - Skipped (tools not available)
#>

param(
	[string]$PeonyProject,
	[string]$PoppyProject,
	[string]$PansyProject,
	[string]$TestRom,
	[string]$WorkDir
)

$ErrorActionPreference = 'Stop'

# Resolve script and repo directories
$scriptDir = Split-Path -Parent $MyInvocation.MyCommand.Definition
$repoRoot = Resolve-Path (Join-Path $scriptDir "../..")

# Default tool locations (sibling repos)
$parentDir = Split-Path (Split-Path $repoRoot -Parent) -Parent
if (-not $PeonyProject) {
	$PeonyProject = Join-Path $parentDir "peony/src/Peony.Cli/Peony.Cli.csproj"
}
if (-not $PoppyProject) {
	$PoppyProject = Join-Path $parentDir "poppy/src/Poppy.CLI/Poppy.CLI.csproj"
}
if (-not $PansyProject) {
	$PansyProject = Join-Path $parentDir "pansy/src/Pansy.Cli/Pansy.Cli.csproj"
}

# Default test ROM
if (-not $TestRom) {
	$TestRom = Join-Path $repoRoot "games/lynx/hello-lynx/build/hello-lynx.lnx"
}

# Create temp work directory
if (-not $WorkDir) {
	$WorkDir = Join-Path ([System.IO.Path]::GetTempPath()) "gg-e2e-$(Get-Date -Format 'yyyyMMdd-HHmmss')"
}

$passed = 0
$failed = 0
$skipped = 0

function Test-Assert {
	param([string]$Name, [scriptblock]$Test)
	try {
		$result = & $Test
		if ($result) {
			Write-Host "  PASS: $Name" -ForegroundColor Green
			$script:passed++
		} else {
			Write-Host "  FAIL: $Name" -ForegroundColor Red
			$script:failed++
		}
	} catch {
		Write-Host "  FAIL: $Name ($($_.Exception.Message))" -ForegroundColor Red
		$script:failed++
	}
}

function Test-Skip {
	param([string]$Name, [string]$Reason)
	Write-Host "  SKIP: $Name ($Reason)" -ForegroundColor Yellow
	$script:skipped++
}

# ─── Prerequisite Checks ───

Write-Host ""
Write-Host "=====================================" -ForegroundColor Cyan
Write-Host " E2E Pipeline Integration Test" -ForegroundColor Cyan
Write-Host "=====================================" -ForegroundColor Cyan
Write-Host ""

Write-Host "Checking prerequisites..." -ForegroundColor Gray

$hasPeony = Test-Path $PeonyProject
$hasPoppy = Test-Path $PoppyProject
$hasPansy = Test-Path $PansyProject
$hasRom = Test-Path $TestRom

Write-Host "  Peony CLI: $(if ($hasPeony) { 'Found' } else { 'NOT FOUND' })" -ForegroundColor $(if ($hasPeony) { 'Green' } else { 'Yellow' })
Write-Host "  Poppy CLI: $(if ($hasPoppy) { 'Found' } else { 'NOT FOUND' })" -ForegroundColor $(if ($hasPoppy) { 'Green' } else { 'Yellow' })
Write-Host "  Pansy CLI: $(if ($hasPansy) { 'Found' } else { 'NOT FOUND' })" -ForegroundColor $(if ($hasPansy) { 'Green' } else { 'Yellow' })
Write-Host "  Test ROM:  $(if ($hasRom) { 'Found' } else { 'NOT FOUND' })" -ForegroundColor $(if ($hasRom) { 'Green' } else { 'Yellow' })

if (-not ($hasPeony -and $hasPoppy -and $hasPansy -and $hasRom)) {
	Write-Host ""
	Write-Host "One or more tools not found. Skipping E2E tests." -ForegroundColor Yellow
	Write-Host "Build all tools first, or pass explicit paths." -ForegroundColor Yellow
	exit 2
}

# Create work directory
New-Item -ItemType Directory -Path $WorkDir -Force | Out-Null
$srcDir = Join-Path $WorkDir "src"
$metaDir = Join-Path $WorkDir "metadata"
$buildDir = Join-Path $WorkDir "build"
New-Item -ItemType Directory -Path $srcDir -Force | Out-Null
New-Item -ItemType Directory -Path $metaDir -Force | Out-Null
New-Item -ItemType Directory -Path $buildDir -Force | Out-Null

Write-Host ""
Write-Host "Work directory: $WorkDir" -ForegroundColor Gray
Write-Host ""

# ─── Step 1: Disassemble with Peony ───

Write-Host "[Step 1] Disassemble with Peony" -ForegroundColor Yellow

$peonyPansy = Join-Path $metaDir "test-peony.pansy"
$peonyResult = $null

try {
	$peonyResult = dotnet run --project $PeonyProject -- disasm $TestRom --output $srcDir --pansy $peonyPansy 2>&1
	$peonyExitCode = $LASTEXITCODE
} catch {
	$peonyExitCode = 1
}

Test-Assert "Peony exits successfully" { $peonyExitCode -eq 0 }
Test-Assert "Source files generated" { (Get-ChildItem $srcDir -Filter "*.pasm" -ErrorAction SilentlyContinue).Count -gt 0 }
Test-Assert "Peony .pansy file created" { Test-Path $peonyPansy }

if (Test-Path $peonyPansy) {
	Test-Assert "Peony .pansy file is non-empty" { (Get-Item $peonyPansy).Length -gt 32 }
}

# ─── Step 2: Build with Poppy ───

Write-Host ""
Write-Host "[Step 2] Build with Poppy" -ForegroundColor Yellow

$mainPasm = Get-ChildItem $srcDir -Filter "main.pasm" -ErrorAction SilentlyContinue | Select-Object -First 1
if (-not $mainPasm) {
	$mainPasm = Get-ChildItem $srcDir -Filter "*.pasm" -ErrorAction SilentlyContinue | Select-Object -First 1
}

$builtRom = Join-Path $buildDir "test-output.lnx"
$poppyPansy = Join-Path $metaDir "test-poppy.pansy"

if ($mainPasm) {
	try {
		$poppyResult = dotnet run --project $PoppyProject -- build $mainPasm.FullName --output $builtRom --pansy $poppyPansy 2>&1
		$poppyExitCode = $LASTEXITCODE
	} catch {
		$poppyExitCode = 1
	}

	Test-Assert "Poppy exits successfully" { $poppyExitCode -eq 0 }
	Test-Assert "Built ROM exists" { Test-Path $builtRom }
	Test-Assert "Poppy .pansy file created" { Test-Path $poppyPansy }
} else {
	Test-Skip "Poppy build" "No .pasm files from disassembly"
	Test-Skip "Built ROM exists" "Build skipped"
	Test-Skip "Poppy .pansy file" "Build skipped"
}

# ─── Step 3: Verify byte-identical ───

Write-Host ""
Write-Host "[Step 3] Verify byte-identical" -ForegroundColor Yellow

if ((Test-Path $builtRom) -and (Test-Path $TestRom)) {
	$origBytes = [System.IO.File]::ReadAllBytes($TestRom)
	$builtBytes = [System.IO.File]::ReadAllBytes($builtRom)

	Test-Assert "ROM sizes match" { $origBytes.Length -eq $builtBytes.Length }

	if ($origBytes.Length -eq $builtBytes.Length) {
		$identical = $true
		for ($i = 0; $i -lt $origBytes.Length; $i++) {
			if ($origBytes[$i] -ne $builtBytes[$i]) {
				$identical = $false
				break
			}
		}
		Test-Assert "ROMs are byte-identical" { $identical }
	} else {
		Test-Skip "Byte-identical check" "Size mismatch"
	}
} else {
	Test-Skip "Verification" "Built ROM not available"
}

# ─── Step 4: Merge .pansy files ───

Write-Host ""
Write-Host "[Step 4] Merge Pansy metadata" -ForegroundColor Yellow

$mergedPansy = Join-Path $metaDir "test-merged.pansy"

$filesToMerge = @()
if (Test-Path $peonyPansy) { $filesToMerge += $peonyPansy }
if (Test-Path $poppyPansy) { $filesToMerge += $poppyPansy }

if ($filesToMerge.Count -ge 2) {
	try {
		$mergeResult = dotnet run --project $PansyProject -- merge $filesToMerge[0] $filesToMerge[1] -o $mergedPansy 2>&1
		$mergeExitCode = $LASTEXITCODE
	} catch {
		$mergeExitCode = 1
	}

	Test-Assert "Pansy merge exits successfully" { $mergeExitCode -eq 0 }
	Test-Assert "Merged .pansy file created" { Test-Path $mergedPansy }

	if (Test-Path $mergedPansy) {
		Test-Assert "Merged .pansy is non-empty" { (Get-Item $mergedPansy).Length -gt 32 }
	}
} elseif ($filesToMerge.Count -eq 1) {
	Test-Skip "Pansy merge" "Only one .pansy file available"
} else {
	Test-Skip "Pansy merge" "No .pansy files available"
}

# ─── Step 5: Validate merged .pansy ───

Write-Host ""
Write-Host "[Step 5] Validate merged Pansy file" -ForegroundColor Yellow

$validateTarget = if (Test-Path $mergedPansy) { $mergedPansy } elseif (Test-Path $peonyPansy) { $peonyPansy } else { $null }

if ($validateTarget) {
	try {
		$infoResult = dotnet run --project $PansyProject -- info $validateTarget 2>&1 | Out-String
		$infoExitCode = $LASTEXITCODE
	} catch {
		$infoExitCode = 1
		$infoResult = ""
	}

	Test-Assert "Pansy info exits successfully" { $infoExitCode -eq 0 }
	Test-Assert "Info output contains PANSY magic" { $infoResult -match "PANSY|pansy|Platform" }
} else {
	Test-Skip "Pansy validation" "No .pansy file to validate"
}

# ─── Summary ───

Write-Host ""
Write-Host "=====================================" -ForegroundColor Cyan
Write-Host " Results: $passed passed, $failed failed, $skipped skipped" -ForegroundColor $(if ($failed -gt 0) { 'Red' } else { 'Green' })
Write-Host "=====================================" -ForegroundColor Cyan

# Cleanup
try {
	if (Test-Path $WorkDir) {
		Remove-Item $WorkDir -Recurse -Force -ErrorAction SilentlyContinue
	}
} catch {
	Write-Host "Note: Could not clean up $WorkDir" -ForegroundColor DarkGray
}

if ($failed -gt 0) {
	exit 1
} else {
	exit 0
}
