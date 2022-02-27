
$startupDir = (Split-Path $PSScriptRoot)
$path = [Environment]::GetEnvironmentVariable('Path', 'User')

if ($path.Contains($startupDir + ';') -or $path.Contains($startupDir + '\;')) {
    Write-Host 'Path was already containing mpv.net.' -ForegroundColor Red
}
else {
    [Environment]::SetEnvironmentVariable('Path', $startupDir + ';' + $path, 'User')
    Write-Host 'mpv.net was successfully added to Path.' -ForegroundColor Green
}
