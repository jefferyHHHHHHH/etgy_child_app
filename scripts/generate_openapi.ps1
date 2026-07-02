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

# The dart-dio generator emits json_serializable/copy_with part files via
# build_runner. Keep the generated package language level aligned with current
# generated code before running builders.
$generatedPubspec = Join-Path $resolvedOutputDir "pubspec.yaml"
if (Test-Path $generatedPubspec) {
  $pubspecContent = Get-Content $generatedPubspec -Raw
  $pubspecContent = $pubspecContent -replace "sdk:\s*'>=3\.5\.0 <4\.0\.0'", "sdk: '>=3.8.0 <4.0.0'"
  Set-Content -Path $generatedPubspec -Value $pubspecContent -Encoding UTF8 -NoNewline
}

# openapi-generator dart-dio emits invalid enum default constructors for some schemas.
Get-ChildItem -Path $resolvedOutputDir -Recurse -Filter "*.dart" | ForEach-Object {
  $content = Get-Content $_.FullName -Raw
  $patched = $content -replace "const (\w+Enum)\._\('(\w+)'\)", '$1.$2'
  $patched = $patched -replace "defaultValue: 'study',(\s*name: r'mode',)", 'defaultValue: ApiAiTutorChatPostRequestModeEnum.study,$1'
  $patched = $patched -replace "\?\?\s*'study',", '?? ApiAiTutorChatPostRequestModeEnum.study,'
  if ($patched -ne $content) {
    Set-Content -Path $_.FullName -Value $patched -Encoding UTF8 -NoNewline
    Write-Host "Patched enum default in: $($_.FullName)"
  }
}

Push-Location $resolvedOutputDir
try {
  dart pub get
  dart run build_runner build --delete-conflicting-outputs
}
finally {
  Pop-Location
}

Write-Host "OpenAPI client generated at: $resolvedOutputDir"
