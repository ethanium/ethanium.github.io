param(
    [string]$Message = "Deploy site",
    [ValidatePattern('^(0|[1-9]\d*)\.(0|[1-9]\d*)\.(0|[1-9]\d*)(?:-((?:0|[1-9]\d*|\d*[A-Za-z-][0-9A-Za-z-]*)(?:\.(?:0|[1-9]\d*|\d*[A-Za-z-][0-9A-Za-z-]*))*))?(?:\+([0-9A-Za-z-]+(?:\.[0-9A-Za-z-]+)*))?$')]
    [string]$Version,
    [switch]$SkipPush,
    [switch]$SkipBuild
)

Set-StrictMode -Version Latest
$ErrorActionPreference = 'Stop'

$repoRoot = Split-Path -Parent $PSScriptRoot
Set-Location $repoRoot

$tagName = if ($Version) { "v$Version" }

if ($tagName) {
    git show-ref --tags --verify --quiet "refs/tags/$tagName"
    if ($LASTEXITCODE -eq 0) {
        throw "Tag '$tagName' already exists. Choose a new version."
    }
}

if (-not $SkipBuild) {
    & "$PSScriptRoot\build.ps1"
}

git add --all

git diff --cached --quiet
if ($LASTEXITCODE -eq 0) {
    Write-Host "No changes detected; nothing to deploy." -ForegroundColor Yellow
    return
}

Write-Host "`n==> Creating deploy commit" -ForegroundColor Cyan
git commit -m $Message
if ($LASTEXITCODE -ne 0) {
    throw "Deploy commit failed."
}

if ($tagName) {
    Write-Host "`n==> Creating release tag $tagName" -ForegroundColor Cyan
    git tag --annotate $tagName --message "Release $tagName"
    if ($LASTEXITCODE -ne 0) {
        throw "Release tag creation failed."
    }
}

if (-not $SkipPush) {
    if ($tagName) {
        git push origin HEAD "refs/tags/$tagName"
    }
    else {
        git push origin HEAD
    }
}
