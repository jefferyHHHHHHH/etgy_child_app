$ErrorActionPreference = "Stop"

$projectRoot = Split-Path -Parent $PSScriptRoot
$clientRoot = Join-Path $projectRoot "generated/openapi"

if (-not (Test-Path (Join-Path $clientRoot "pubspec.yaml"))) {
  Write-Host "Generated OpenAPI client not found. Run scripts/generate_openapi.ps1 first."
  exit 1
}

Set-Location $clientRoot

$pubspecPath = Join-Path $clientRoot "pubspec.yaml"
$pubspecText = Get-Content $pubspecPath -Raw
$pubspecText = $pubspecText -replace "sdk:\s*'[^']+'", "sdk: '^3.8.0'"
Set-Content -Path $pubspecPath -Value $pubspecText -Encoding UTF8

dart pub get
dart run build_runner build --delete-conflicting-outputs

if ($LASTEXITCODE -ne 0) {
  exit $LASTEXITCODE
}

Write-Host "OpenAPI client codegen companion files generated (g.dart)."
