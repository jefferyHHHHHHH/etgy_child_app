param(
  [string]$InputSpecUrl = 'http://8.148.215.20/api/docs.json',
  [string]$OutputPath = 'openapi/openapi.yaml'
)

$ErrorActionPreference = 'Stop'

$projectRoot = Split-Path -Parent $PSScriptRoot
Set-Location $projectRoot

$resolvedOutputPath = Join-Path $projectRoot $OutputPath
New-Item -ItemType Directory -Force -Path (Split-Path -Parent $resolvedOutputPath) | Out-Null

Write-Host "拉取 OpenAPI 文档: $InputSpecUrl"
Invoke-WebRequest -Uri $InputSpecUrl -OutFile $resolvedOutputPath
Write-Host "已保存到: $resolvedOutputPath"
