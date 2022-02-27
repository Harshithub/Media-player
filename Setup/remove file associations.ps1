
function Test-Administrator
{
    $user = [Security.Principal.WindowsIdentity]::GetCurrent();
    (New-Object Security.Principal.WindowsPrincipal $user).IsInRole([Security.Principal.WindowsBuiltinRole]::Administrator)
}

if (-not (Test-Administrator)) {
    Write-Host "Uninstall script requires admin rights." -ForegroundColor Red
    exit
}

function Get-RootRegKey($path)
{
    switch ($path.Substring(0, 4))
    {
        "HKLM" { [Microsoft.Win32.Registry]::LocalMachine }
        "HKCU" { [Microsoft.Win32.Registry]::CurrentUser }
        "HKCR" { [Microsoft.Win32.Registry]::ClassesRoot }
    }
}

function Remove-RegKey($path)
{
    $rootKey = Get-RootRegKey $path

    if ($null -eq $rootKey)
    {
        return
    }

    $rootKey.DeleteSubKeyTree($path.Substring(5), $false)
}

function Remove-RegValue($path, $name)
{
    $rootKey = Get-RootRegKey $path

    if ($null -eq $rootKey)
    {
        return
    }

    $subKey = $rootKey.OpenSubKey($path.Substring(5), $true)

    if ($null -eq $subKey)
    {
        return
    }

    $subKey.DeleteValue($name, $false)
    $subKey.Close()
}

$FileName = 'mpvnet'
$AppName  = 'mpv.net'

Remove-RegKey "HKCU\Software\Microsoft\Windows\CurrentVersion\App Paths\$FileName.exe"
Remove-RegKey "HKCR\Applications\$FileName.exe"
Remove-RegKey "HKLM\SOFTWARE\Clients\Media\$AppName"
Remove-RegKey "HKCR\SystemFileAssociations\video\OpenWithList\$FileName.exe"
Remove-RegKey "HKCR\SystemFileAssociations\audio\OpenWithList\$FileName.exe"

Remove-RegValue "HKLM\SOFTWARE\RegisteredApplications" $AppName

$keyNames = [Microsoft.Win32.Registry]::ClassesRoot.GetSubKeyNames()

foreach ($id in $keyNames)
{
    if ($id.StartsWith($FileName + "."))
    {
        [Microsoft.Win32.Registry]::ClassesRoot.DeleteSubKeyTree($id)
        $ext = $id -replace $FileName, ''
        Remove-RegValue HKCR\$ext\OpenWithProgIDs $id
        Remove-RegValue HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\FileExts\$ext\OpenWithProgids $id
        Remove-RegValue HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\ApplicationAssociationToasts Applications\$FileName.exe_$ext
    }
}

Write-Host
Write-Host "File associations successfully removed." -ForegroundColor Green
Write-Host
