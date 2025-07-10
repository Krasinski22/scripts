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


# Verifica se o script está sendo executado como administrador
if (-NOT ([Security.Principal.WindowsPrincipal][Security.Principal.WindowsIdentity]::GetCurrent()).IsInRole([Security.Principal.WindowsBuiltInRole] "Administrator")) {
    Write-Host "Run as admin"
    exit
}

Safe-Symlink "$env:APPDATA\alacritty\" "$HOME\dotfiles\alacritty"

Safe-Symlink '$HOME\Documents\My Games\mages_steam' D:\games\saves\mages_steam\

Safe-Symlink "$HOME\Documents\PowerShell" "$HOME\dotfiles\windows\powershell"

Safe-Symlink "$env:LOCALAPPDATA\nvim" "$HOME\dotfiles\nvim"

Safe-Symlink "$env:LOCALAPPDATA\Packages\Microsoft.WindowsTerminal_8wekyb3d8bbwe\LocalState\settings.json" "$HOME\dotfiles\windows\windows-terminal\settings.json"

Safe-Symlink "$env:APPDATA\mpv" "$HOME\dotfiles\mpv"

Safe-Symlink "$env:APPDATA\FlowLauncher\Settings" "$HOME\dotfiles\windows\FlowLauncher\Settings"

Safe-Symlink "$HOME\.glzr\glazewm\config.yaml" "$HOME\dotfiles\windows\glazewm\config.yaml"

Safe-Symlink "$HOME\.config\yasb" "$HOME\dotfiles\windows\yasb"

Safe-Symlink "$env:APPDATA\DS4Windows" "$HOME\dotfiles\windows\ds4windows"

#sublime
Safe-Symlink "$env:APPDATA\Sublime Text\Packages\User\" "$HOME\dotfiles\sublime-text\User"
Safe-Symlink "$env:APPDATA\Sublime Text\Installed Packages" "$HOME\dotfiles\sublime-text\Installed Packages"

#shortcuts games
Safe-Symlink "C:\ProgramData\Microsoft\Windows\Start Menu\Programs\Games" "$HOME\dotfiles\windows\shortcuts\Games"

# Safe-Symlink "$HOME\monitors.cfg" "$HOME\dotfiles\monitors.cfg"






#Safe-Symlink "$env:APPDATA\mpv\input.conf" "$HOME\dotfiles\mpv\input.conf"
#Safe-Symlink "$env:APPDATA\mpv\mpv.conf" "$HOME\dotfiles\mpv\mpv.conf"
#Safe-Symlink "$env:APPDATA\mpv\scripts" "$HOME\dotfiles\mpv\scripts"
#Safe-Symlink "$env:APPDATA\mpv\script-opts" "$HOME\dotfiles\mpv\script-opts"

# Safe-Symlink "$HOME\.wezterm.lua" "$HOME\dotfiles\wezterm\wezterm-windows.lua" 

# Safe-Symlink "$env:LOCALAPPDATA\Google\Chrome" "D:\software\chrome-data"
# Safe-Symlink "$env:APPDATA\Telegram Desktop\tdata" "D:\software\telegram-data"
# Safe-Symlink "C:\ProgramData\Microsoft\Windows\Start Menu\Programs\my-software" "D:\software\"
# Safe-Symlink "$env:LOCALAPPDATA\AutoDarkMode" "$HOME\dotfiles\autodarkmode"
# Safe-Symlink "$env:APPDATA\AutoDarkMode" "$HOME\dotfiles\autodarkmode"

#$myuser = $env:username
