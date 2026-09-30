Set-StrictMode -Version Latest
$ErrorActionPreference = 'Stop'

$repoRoot = Split-Path -Parent $PSScriptRoot
Set-Location $repoRoot

Write-Host "==> Building the Jekyll site" -ForegroundColor Cyan
bundle exec jekyll build

if ($LASTEXITCODE -ne 0) {
    throw "Jekyll build failed."
}

Write-Host "Build complete." -ForegroundColor Green
