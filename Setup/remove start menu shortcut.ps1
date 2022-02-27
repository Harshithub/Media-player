
$file = [Environment]::GetFolderPath('StartMenu') + '\Programs\mpv.net.lnk'

if (Test-Path $file) {
    Remove-Item $file

    if (Test-Path $file) {
        Write-Host ("Failed to remove start menu shortcut at:`n" + $file) -ForegroundColor Red
    }
    else {
        Write-Host ("Start menu shortcut successfully removed at:`n" + $file) -ForegroundColor Green
    }
}
else {
    Write-Host 'Start menu shortcut does not exist.'
}
