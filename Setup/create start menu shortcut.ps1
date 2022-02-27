
$file = 'C:\ProgramData\Microsoft\Windows\Start Menu\Programs\mpv.net'

if (Test-Path $file) {
    Write-Host ("There is already a shortcut located at:`n" + $file)
    exit
}

$file = [Environment]::GetFolderPath('StartMenu') + '\Programs\mpv.net.lnk'

if (Test-Path $file) {
    Remove-Item $file
}

$shell = New-Object -ComObject WScript.Shell
$link = $shell.CreateShortcut($file)
# in the next two lines quotes are not needed
$link.TargetPath = Join-Path (Split-Path $PSScriptRoot) mpvnet.exe
$link.WorkingDirectory = Split-Path $PSScriptRoot
$link.Save()

if (Test-Path $file) {
    Write-Host ("Start menu shortcut successfully created at:`n" + $file) -ForegroundColor Green
}
else {
    Write-Host ("Failed to create start menu shortcut at:`n" + $file) -ForegroundColor Red
}

[Runtime.Interopservices.Marshal]::ReleaseComObject($link)  | Out-Null
[Runtime.Interopservices.Marshal]::ReleaseComObject($shell) | Out-Null
