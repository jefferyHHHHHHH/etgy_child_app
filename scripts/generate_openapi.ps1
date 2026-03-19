$ErrorActionPreference = 'Stop'

$projectRoot = Split-Path -Parent $PSScriptRoot
Set-Location $projectRoot

if (-not (Get-Command openapi-generator-cli -ErrorAction SilentlyContinue)) {
  Write-Host 'openapi-generator-cli 未安装，请先安装：npm i -g @openapitools/openapi-generator-cli'
  exit 1
}

if (-not (Test-Path "$projectRoot\openapi\openapi.yaml")) {
  Write-Host '缺少 openapi/openapi.yaml，请先放入后端 OpenAPI 文档。'
  exit 1
}

openapi-generator-cli generate -c openapi-generator-config.yaml

Write-Host 'OpenAPI 客户端生成完成：lib/generated/openapi'
