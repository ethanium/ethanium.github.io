param(
    [string]$Message = "Deploy site",
    [switch]$SkipPush,
    [switch]$SkipBuild
)

Set-StrictMode -Version Latest
$ErrorActionPreference = 'Stop'

$repoRoot = Split-Path -Parent $PSScriptRoot
Set-Location $repoRoot

if (-not $SkipBuild) {
    & "$PSScriptRoot\build.ps1"
}

$filesToStage = @(
    "index.html",
    "_config.yml",
    "_data",
    "_includes",
    "_layouts",
    "_posts",
    "assets",
    "blog",
    "Gemfile",
    "Gemfile.lock",
    "README.md"
)

foreach ($path in $filesToStage) {
    if (Test-Path $path) {
        git add -- $path
    }
}

git diff --cached --quiet
if ($LASTEXITCODE -eq 0) {
    Write-Host "No staged site changes detected; nothing to deploy." -ForegroundColor Yellow
    return
}

Write-Host "`n==> Creating deploy commit" -ForegroundColor Cyan
git commit -m $Message

if (-not $SkipPush) {
    git push origin HEAD
}
