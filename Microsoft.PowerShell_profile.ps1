Set-Alias rc Edit-PowershellProfile

$a = (Get-Host).UI.RawUI
$a.BackgroundColor = "black"
$a.ForegroundColor = "white"
$a.WindowTitle = "PowerShell Windows 8"

$strUser = $env:username
$strHost = $env:computername

function Prompt
{

    $path = (Get-Location).Path
    $path = $path.Replace( $HOME, '~' )
    
    Write-Host ($strUser) -NoNewline -ForegroundColor Yellow
    Write-Host (" at ") -NoNewline -ForegroundColor Gray
    Write-Host ($strHost) -NoNewline -ForegroundColor Magenta
    Write-Host (" in ") -NoNewline -ForegroundColor Gray
    Write-Host ("" + $path) -ForegroundColor Blue
    Write-Host ("$") -NoNewline -ForegroundColor Gray
    return " "
}

function Edit-PowershellProfile
{
    notepad $Profile
}