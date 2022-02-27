
$startupDir = (Split-Path $PSScriptRoot)
$path = [Environment]::GetEnvironmentVariable('Path', 'User')

if ($path.Contains($startupDir + ';')) {
    [Environment]::SetEnvironmentVariable('Path', $path.Replace($startupDir + ';', ""), 'User')
    Write-Host 'mpv.net was successfully removed from Path.' -ForegroundColor Green
}
elseif ($path.Contains($startupDir + '\;')) {
    [Environment]::SetEnvironmentVariable('Path', $path.Replace($startupDir + '\;', ""), 'User')
    Write-Host 'mpv.net was successfully removed from Path.' -ForegroundColor Green
}
else {
    Write-Host 'Path was not containing mpv.net.' -ForegroundColor Red
}
