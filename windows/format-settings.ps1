# Verifica se o script está sendo executado como administrador
if (-NOT ([Security.Principal.WindowsPrincipal][Security.Principal.WindowsIdentity]::GetCurrent()).IsInRole([Security.Principal.WindowsBuiltInRole] "Administrator")) {
    Write-Host "Run as admin"
    exit
}



#### FUNCTIONS
function Safe-Symlink {
    param (
        [string]$LinkPath,
        [string]$TargetPath
    )

    # Verifica se o destino existe
    if (-Not (Test-Path $TargetPath)) {
        Write-Error "ERRO: O caminho de destino NÃO existe: $TargetPath"
        exit 1
    }

    # Cria o diretório pai do link, se necessário
    $LinkParent = Split-Path $LinkPath -Parent
    if (-Not (Test-Path $LinkParent)) {
        Write-Host "Diretório pai do link não encontrado. Criando: $LinkParent"
        New-Item -ItemType Directory -Path $LinkParent -Force | Out-Null
    }

    # Remove link ou pasta existente no caminho do link
    if (Test-Path $LinkPath) {
        Write-Host "Removendo: $LinkPath"
        Remove-Item -Path $LinkPath -Force -Recurse
    }

    Write-Host "Criando link: $LinkPath -> $TargetPath"
    New-Item -ItemType SymbolicLink -Path $LinkPath -Target $TargetPath | Out-Null

}

####

Set-ExecutionPolicy RemoteSigned -Scope CurrentUser

####

$UserScriptPath = Join-Path $env:USERPROFILE "scripts\windows\start.ps1"
$StartupPath = (Get-ItemProperty "HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\User Shell Folders").Startup


Safe-Symlink (Join-Path $StartupPath "start.ps1") $UserScriptPath


#### winget installs
