param(
  [string]$InputSpecPath = "openapi/openapi.yaml",
  [string]$InputSpecUrl = "",
  [string]$OutputDir = "lib/generated/openapi"
)

$ErrorActionPreference = "Stop"

$projectRoot = Split-Path -Parent $PSScriptRoot
Set-Location $projectRoot

if (-not (Get-Command openapi-generator-cli -ErrorAction SilentlyContinue)) {
  Write-Host "openapi-generator-cli is not installed. Run: npm i -g @openapitools/openapi-generator-cli"
  exit 1
}

$resolvedSpecPath = Join-Path $projectRoot $InputSpecPath
$resolvedOutputDir = Join-Path $projectRoot $OutputDir

if ($InputSpecUrl -ne "") {
  New-Item -ItemType Directory -Force -Path (Split-Path -Parent $resolvedSpecPath) | Out-Null
  Write-Host "Downloading OpenAPI spec: $InputSpecUrl"
  Invoke-WebRequest -Uri $InputSpecUrl -OutFile $resolvedSpecPath
}

if (-not (Test-Path $resolvedSpecPath)) {
  Write-Host "OpenAPI spec not found: $resolvedSpecPath"
  Write-Host "You can pass -InputSpecUrl to download then generate."
  exit 1
}

openapi-generator-cli generate -c openapi-generator-config.yaml -i $resolvedSpecPath -o $resolvedOutputDir

Write-Host "OpenAPI client generated at: $resolvedOutputDir"
