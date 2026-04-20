# FFMQ Disassembly Quality Metrics
# Parses .pasm output and reports key metrics
# Usage: .\measure-quality.ps1 -PasmFile <path>

param(
	[Parameter(Mandatory = $true)]
	[string]$PasmFile
)

if (-not (Test-Path $PasmFile)) {
	Write-Error "File not found: $PasmFile"
	exit 1
}

Write-Host "Analyzing: $PasmFile" -ForegroundColor Cyan
Write-Host ""

$lines = Get-Content $PasmFile
$totalLines = $lines.Count

# Count instruction lines (lines starting with whitespace then a mnemonic)
$instructions = ($lines | Select-String '^\s+[a-z]{2,4}\s' | Where-Object {
	$_.Line -notmatch '^\s+\.d[bwl]\s' -and
	$_.Line -notmatch '^\s+\.org\s' -and
	$_.Line -notmatch '^\s+\.bank\s' -and
	$_.Line -notmatch '^\s+\.base\s'
} | Measure-Object).Count

# Count .db lines
$dbLines = ($lines | Select-String '^\s+\.db\s' | Measure-Object).Count

# Count .dw lines
$dwLines = ($lines | Select-String '^\s+\.dw\s' | Measure-Object).Count

# Count labels
$labels = ($lines | Select-String '^[a-zA-Z_].*:' | Measure-Object).Count

# Count bank directives
$banks = ($lines | Select-String '^\s*\.bank\s' | Measure-Object).Count

# Count banks with actual code
$currentBank = -1
$banksWithCode = @{}
foreach ($line in $lines) {
	if ($line -match '^\s*\.bank\s+(\d+)') {
		$currentBank = [int]$Matches[1]
	} elseif ($currentBank -ge 0 -and $line -match '^\s+[a-z]{2,4}\s' -and
		$line -notmatch '^\s+\.d[bwl]\s' -and
		$line -notmatch '^\s+\.org\s' -and
		$line -notmatch '^\s+\.bank\s') {
		$banksWithCode[$currentBank] = $true
	}
}

# Count comment lines
$comments = ($lines | Select-String '^\s*;' | Measure-Object).Count

# Count empty/whitespace lines
$emptyLines = ($lines | Where-Object { $_.Trim() -eq '' } | Measure-Object).Count

Write-Host "=== FFMQ Disassembly Quality Report ===" -ForegroundColor Yellow
Write-Host ""
Write-Host "Total lines:        $totalLines"
Write-Host "Instructions:       $instructions" -ForegroundColor $(if ($instructions -gt 40000) { 'Green' } else { 'Red' })
Write-Host ".db lines:          $dbLines" -ForegroundColor $(if ($dbLines -lt 10000) { 'Green' } else { 'Red' })
Write-Host ".dw lines:          $dwLines"
Write-Host "Labels:             $labels"
Write-Host "Comments:           $comments"
Write-Host "Empty lines:        $emptyLines"
Write-Host "Banks declared:     $banks"
Write-Host "Banks with code:    $($banksWithCode.Count)/$banks" -ForegroundColor $(if ($banksWithCode.Count -eq $banks) { 'Green' } else { 'Red' })
Write-Host ""

if ($instructions + $dbLines -gt 0) {
	$codeRatio = [math]::Round(($instructions / ($instructions + $dbLines)) * 100, 1)
	Write-Host "Code ratio:         $codeRatio% (instructions / (instructions + .db))" -ForegroundColor $(if ($codeRatio -gt 70) { 'Green' } else { 'Red' })
}

Write-Host ""
Write-Host "Banks with code:" -ForegroundColor Cyan
for ($i = 0; $i -lt $banks; $i++) {
	$status = if ($banksWithCode.ContainsKey($i)) { "code" } else { "NO CODE" }
	$color = if ($banksWithCode.ContainsKey($i)) { "Green" } else { "Red" }
	Write-Host "  Bank $($i.ToString().PadLeft(2)): $status" -ForegroundColor $color
}
