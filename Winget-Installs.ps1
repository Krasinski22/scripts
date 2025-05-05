# Verifica se o script está sendo executado como administrador
if (-NOT ([Security.Principal.WindowsPrincipal][Security.Principal.WindowsIdentity]::GetCurrent()).IsInRole([Security.Principal.WindowsBuiltInRole] "Administrator")) {
    Write-Host "Run as admin"
    exit
}

winget install 7zip
# winget install AutoHotkey.AutoHotkey
winget install Cloudflare.Warp
# winget install Discord.Discord
winget install File-New-Project.EarTrumpet
winget install git.git
winget install glzr-io.glazewm
winget install KeePassXCTeam.KeePassXC
winget install CrystalRich.LockHunter
winget install Neovim.Neovim
winget install Microsoft.PowerShell
# winget install AntoineAflalo.SoundSwitch
winget install Valve.Steam
winget install SublimeHQ.SublimeText.4
winget install Telegram.TelegramDesktop
winget install AntibodySoftware.WizTree
winget install AmN.yasb
# winget install Armin2208.WindowsAutoNightMode
# winget install Python.Python.3.13
winget install yt-dlp.yt-dlp
# winget install Syncthing.Syncthing 
winget install Martchus.syncthingtray
winget install Gyan.FFmpeg 
winget install GNU.Nano 
winget install JanDeDobbeleer.OhMyPosh 
winget install Google.Chrome 
winget install gerardog.gsudo 
winget install voidtools.Everything
winget install gnu.wget2
# winget install voidtools.Everything.Alpha
winget install CrystalDewWorld.CrystalDiskInfo.KureiKeiEdition