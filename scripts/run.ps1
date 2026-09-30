param(
    [int]$Port = 4000,
    [string]$BindAddress = "127.0.0.1",
    [switch]$Drafts,
    [switch]$Future,
    [switch]$Incremental
)

Set-StrictMode -Version Latest
$ErrorActionPreference = 'Stop'

$repoRoot = Split-Path -Parent $PSScriptRoot
Set-Location $repoRoot

$bundleApplication = Get-Command bundle -CommandType Application -ErrorAction SilentlyContinue |
    Select-Object -First 1

$bundleCommand = if ($bundleApplication) {
    $bundleApplication.Path
}

if (-not $bundleCommand) {
    $bundleCommand = (Get-ChildItem -Path 'C:\Ruby*\bin\bundle.bat' -File -ErrorAction SilentlyContinue |
        Select-Object -First 1).FullName
}

if (-not $bundleCommand) {
    throw "Bundler was not found. Install Ruby with Bundler, then reopen your terminal."
}

if (-not $bundleApplication) {
    $env:Path = "$(Split-Path -Parent $bundleCommand);$env:Path"
}

$jekyllArguments = @('exec', 'jekyll', 'serve', '--host', $BindAddress, '--port', $Port)

if ($Drafts) {
    $jekyllArguments += '--drafts'
}

if ($Future) {
    $jekyllArguments += '--future'
}

if ($Incremental) {
    $jekyllArguments += '--incremental'
}

Write-Host "==> Serving the Jekyll site at http://${BindAddress}:$Port" -ForegroundColor Cyan
& $bundleCommand @jekyllArguments

if ($LASTEXITCODE -ne 0) {
    throw "Jekyll server stopped with exit code $LASTEXITCODE."
}
