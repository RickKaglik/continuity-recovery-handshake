param(
    [string]$BootstrapPath = ".\BOOTSTRAP.md",
    [string]$ChecksumPath = ".\BOOTSTRAP.sha256"
)

Write-Host "CRH Bootstrap Verification"
Write-Host "--------------------------"

if (-not (Test-Path $BootstrapPath)) {
    Write-Error "Bootstrap file not found: $BootstrapPath"
    exit 1
}

if (-not (Test-Path $ChecksumPath)) {
    Write-Error "Checksum file not found: $ChecksumPath"
    exit 1
}

$actualHash = (Get-FileHash -Algorithm SHA256 $BootstrapPath).Hash.ToLower()

$checksumLine = Get-Content $ChecksumPath | Select-Object -First 1
$expectedHash = ($checksumLine -split '\s+')[0].ToLower()

Write-Host "Bootstrap file: $BootstrapPath"
Write-Host "Checksum file : $ChecksumPath"
Write-Host "Expected hash : $expectedHash"
Write-Host "Actual hash   : $actualHash"

if ($actualHash -eq $expectedHash) {
    Write-Host ""
    Write-Host "VERIFICATION PASSED"
    exit 0
}
else {
    Write-Host ""
    Write-Error "VERIFICATION FAILED"
    exit 2
}
