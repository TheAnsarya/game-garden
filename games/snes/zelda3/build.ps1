<#
.SYNOPSIS
	Builds The Legend of Zelda: A Link to the Past from source.

.DESCRIPTION
	Assembles the disassembled source back into a ROM file using Poppy.
	Also reconverts editable assets back to binary .inc files.

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

# Step 1: Reconvert editable assets to binary .inc files
Write-Host "   📦 Reconverting assets..." -ForegroundColor Cyan

# Convert JSON data files to .pasm .inc files
$dataDir = "$ScriptDir\assets\editable\data"
$binaryDir = "$ScriptDir\assets\binary\data"
if (Test-Path $dataDir) {
	New-Item -ItemType Directory -Path $binaryDir -Force | Out-Null
	Get-ChildItem "$dataDir\*.json" | ForEach-Object {
		$outName = $_.BaseName + ".inc"
		Write-Host "      data-gen: $($_.Name) -> $outName" -ForegroundColor Gray
		dotnet run --project "$PoppyDir\src\Poppy.CLI" -c Release --no-build -- data-gen $_.FullName -o "$binaryDir\$outName" --name $_.BaseName
	}
}

# Convert PNG graphics to CHR binary .inc files
$gfxDir = "$ScriptDir\assets\editable\graphics"
$binaryGfxDir = "$ScriptDir\assets\binary\graphics"
if (Test-Path $gfxDir) {
	New-Item -ItemType Directory -Path $binaryGfxDir -Force | Out-Null
	Get-ChildItem "$gfxDir\*.png" | ForEach-Object {
		$outName = $_.BaseName + ".inc"
		Write-Host "      gfx-convert: $($_.Name) -> $outName" -ForegroundColor Gray
		dotnet run --project "$PoppyDir\src\Poppy.CLI" -c Release --no-build -- gfx-convert $_.FullName -o "$binaryGfxDir\$outName" --tile-format snes4 --format pasm --name $_.BaseName
	}
}

# Convert text files to encoded binary .inc files
$textDir = "$ScriptDir\assets\editable\text"
$binaryTextDir = "$ScriptDir\assets\binary\text"
if (Test-Path $textDir) {
	New-Item -ItemType Directory -Path $binaryTextDir -Force | Out-Null
	Get-ChildItem "$textDir\*.txt" | ForEach-Object {
		if (Test-Path "$textDir\zelda3.tbl") {
			$outName = $_.BaseName + ".inc"
			Write-Host "      text-encode: $($_.Name) -> $outName" -ForegroundColor Gray
			dotnet run --project "$PoppyDir\src\Poppy.CLI" -c Release --no-build -- text-encode -i $_.FullName --table "$textDir\zelda3.tbl" -o "$binaryTextDir\$outName" --format asm
		}
	}
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
