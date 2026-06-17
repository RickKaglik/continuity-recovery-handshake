param(
    [string]$ManifestPath = ".\BOOTSTRAP-CRITICAL.sha256"
)

Write-Host "CRH Bootstrap-Critical Verification"
Write-Host "-----------------------------------"

if (-not (Test-Path $ManifestPath)) {
    Write-Error "Manifest file not found: $ManifestPath"
    exit 1
}

$failed = $false
$lines = Get-Content $ManifestPath | Where-Object { $_.Trim() -ne "" }

foreach ($line in $lines) {
    $parts = $line -split '\s+', 2

    if ($parts.Count -ne 2) {
        Write-Error "Invalid manifest line: $line"
        $failed = $true
        continue
    }

    $expectedHash = $parts[0].ToLower()
    $filePath = $parts[1].Trim()

    if (-not (Test-Path $filePath)) {
        Write-Error "Missing file: $filePath"
        $failed = $true
        continue
    }

    $actualHash = (Get-FileHash -Algorithm SHA256 $filePath).Hash.ToLower()

    Write-Host ""
    Write-Host "File          : $filePath"
    Write-Host "Expected hash : $expectedHash"
    Write-Host "Actual hash   : $actualHash"

    if ($actualHash -ne $expectedHash) {
        Write-Error "FAILED: $filePath"
        $failed = $true
    }
    else {
        Write-Host "PASSED"
    }
}

Write-Host ""

if ($failed) {
    Write-Error "BOOTSTRAP-CRITICAL VERIFICATION FAILED"
    exit 2
}

Write-Host "BOOTSTRAP-CRITICAL VERIFICATION PASSED"
exit 0
