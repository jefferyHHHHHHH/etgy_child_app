param(
  [string]$InputSpecPath = "openapi/openapi.yaml",
  [string]$InputSpecUrl = "",
  [string]$OutputDir = "generated/openapi"
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

# openapi-generator dart-dio emits invalid enum default constructors for some schemas.
Get-ChildItem -Path $resolvedOutputDir -Recurse -Filter "*.dart" | ForEach-Object {
  $content = Get-Content $_.FullName -Raw
  $patched = $content -replace "const (\w+Enum)\._\('(\w+)'\)", '$1.$2'
  if ($patched -ne $content) {
    Set-Content -Path $_.FullName -Value $patched -Encoding UTF8 -NoNewline
    Write-Host "Patched enum default in: $($_.FullName)"
  }
}

Write-Host "OpenAPI client generated at: $resolvedOutputDir"
