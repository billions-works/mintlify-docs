$ErrorActionPreference = 'Stop'

$sourceUrl = 'https://api.billions.works/public/v1/swagger.json'
$targetPath = Join-Path (Split-Path -Parent $PSScriptRoot) 'openapi/public-v1.json'
$response = Invoke-WebRequest -Uri $sourceUrl -TimeoutSec 30
$spec = $response.Content | ConvertFrom-Json

if (-not $spec.openapi -or -not $spec.paths.'/public/v1/invoices/create'.post) {
    throw 'Production Swagger is missing its version or create-invoice operation.'
}

$targetDirectory = Split-Path -Parent $targetPath
if (-not (Test-Path -LiteralPath $targetDirectory)) {
    New-Item -ItemType Directory -Path $targetDirectory | Out-Null
}

[System.IO.File]::WriteAllText(
    $targetPath,
    ($response.Content.TrimEnd() + "`n"),
    [System.Text.UTF8Encoding]::new($false)
)

Write-Output "Updated $targetPath from $sourceUrl"
