<#
.SYNOPSIS
	Reconverts editable assets back to binary .inc files for assembly.

.DESCRIPTION
	Converts PNG graphics, JSON data, and text files back into
	.pasm-format .inc files with .db commands that can be .include'd
	in the main disassembly source.

.PARAMETER PoppyDir
	Path to the Poppy compiler directory.
#>

param(
	[string]$PoppyDir = "C:\Users\me\source\repos\poppy"
)

$ErrorActionPreference = 'Stop'
$ScriptDir = Split-Path -Parent $MyInvocation.MyCommand.Path
$EditableDir = "$ScriptDir\assets\editable"
$BinaryDir = "$ScriptDir\assets\binary"

Write-Host "📦 Reconverting editable assets to binary .inc files..." -ForegroundColor Cyan

# ─── Graphics (PNG → BMP → CHR → .inc) ─────────────────────────────
$gfxDir = "$EditableDir\graphics"
$binaryGfxDir = "$BinaryDir\graphics"
$gfxCount = 0

if (Test-Path $gfxDir) {
	New-Item -ItemType Directory -Path $binaryGfxDir -Force | Out-Null
	$pngs = Get-ChildItem "$gfxDir\*.png"

	foreach ($png in $pngs) {
		# Determine BPP from extraction metadata in filename
		# tileset_NNN_OFFSET.png — look up the extraction-config or use default 4bpp
		$bmpPath = [System.IO.Path]::ChangeExtension($png.FullName, ".bmp")
		$incName = $png.BaseName + ".inc"
		$incPath = "$binaryGfxDir\$incName"

		# Convert PNG to BMP using .NET System.Drawing
		try {
			Add-Type -AssemblyName System.Drawing -ErrorAction SilentlyContinue
			$img = [System.Drawing.Image]::FromFile($png.FullName)
			$img.Save($bmpPath, [System.Drawing.Imaging.ImageFormat]::Bmp)
			$img.Dispose()
		} catch {
			Write-Host "   ⚠️  Skipping $($png.Name) - System.Drawing not available" -ForegroundColor Yellow
			continue
		}

		# Convert BMP to .inc (PASM format with .db commands)
		Write-Host "   🎨 $($png.Name) → $incName" -ForegroundColor Gray
		dotnet run --project "$PoppyDir\src\Poppy.CLI" -c Release --no-build -- gfx-convert $bmpPath -o $incPath --tile-format snes4 --format pasm --name $png.BaseName 2>&1

		# Clean up temporary BMP
		Remove-Item $bmpPath -Force -ErrorAction SilentlyContinue

		if ($LASTEXITCODE -eq 0) {
			$gfxCount++
		} else {
			Write-Host "   ⚠️  Failed: $($png.Name)" -ForegroundColor Yellow
		}
	}
}

Write-Host "   ✅ Graphics: $gfxCount files converted" -ForegroundColor Green

# ─── Data (JSON → .inc) ────────────────────────────────────────────
$dataDir = "$EditableDir\data"
$binaryDataDir = "$BinaryDir\data"
$dataCount = 0

if (Test-Path $dataDir) {
	$jsons = Get-ChildItem "$dataDir\*.json" -ErrorAction SilentlyContinue
	if ($jsons) {
		New-Item -ItemType Directory -Path $binaryDataDir -Force | Out-Null
		foreach ($json in $jsons) {
			$incName = $json.BaseName + ".inc"
			$incPath = "$binaryDataDir\$incName"

			Write-Host "   📊 $($json.Name) → $incName" -ForegroundColor Gray
			dotnet run --project "$PoppyDir\src\Poppy.CLI" -c Release --no-build -- data-gen $json.FullName -o $incPath --name $json.BaseName 2>&1

			if ($LASTEXITCODE -eq 0) {
				$dataCount++
			} else {
				Write-Host "   ⚠️  Failed: $($json.Name)" -ForegroundColor Yellow
			}
		}
	}
}

Write-Host "   ✅ Data: $dataCount files converted" -ForegroundColor Green

# ─── Text (TXT + TBL → .inc) ───────────────────────────────────────
$textDir = "$EditableDir\text"
$binaryTextDir = "$BinaryDir\text"
$textCount = 0

if (Test-Path $textDir) {
	$tblFile = Get-ChildItem "$textDir\*.tbl" -ErrorAction SilentlyContinue | Select-Object -First 1
	$txts = Get-ChildItem "$textDir\*.txt" -ErrorAction SilentlyContinue
	if ($tblFile -and $txts) {
		New-Item -ItemType Directory -Path $binaryTextDir -Force | Out-Null
		foreach ($txt in $txts) {
			$incName = $txt.BaseName + ".inc"
			$incPath = "$binaryTextDir\$incName"

			Write-Host "   📝 $($txt.Name) → $incName" -ForegroundColor Gray
			dotnet run --project "$PoppyDir\src\Poppy.CLI" -c Release --no-build -- text-encode -i $txt.FullName --table $tblFile.FullName -o $incPath --format asm 2>&1

			if ($LASTEXITCODE -eq 0) {
				$textCount++
			} else {
				Write-Host "   ⚠️  Failed: $($txt.Name)" -ForegroundColor Yellow
			}
		}
	}
}

Write-Host "   ✅ Text: $textCount files converted" -ForegroundColor Green
Write-Host ""
Write-Host "📦 Reconversion complete: $($gfxCount + $dataCount + $textCount) total files" -ForegroundColor Cyan
