# Verifica se o script está sendo executado como administrador
if (-NOT ([Security.Principal.WindowsPrincipal][Security.Principal.WindowsIdentity]::GetCurrent()).IsInRole([Security.Principal.WindowsBuiltInRole] "Administrator")) {
    Write-Host "Run as admin"
    exit
}

$apps = @(
    "gerardog.gsudo",
    "FlorianHeidenreich.Mp3tag",
    "7zip.7zip",
    "Obsidian.Obsidian",
    "DuongDieuPhap.ImageGlass",
    "Chocolatey.Chocolatey",
    "Flow-Launcher.Flow-Launcher",
    "Cloudflare.Warp",
    #"File-New-Project.EarTrumpet",
    "Espanso.Espanso",
    "git.git",
    "glzr-io.glazewm",
    "KeePassXCTeam.KeePassXC",
    "CrystalRich.LockHunter",
    "ShareX.ShareX",
    "Neovim.Neovim",
    "Microsoft.PowerShell",
    "Valve.Steam",
    "SublimeHQ.SublimeText.4",
    "Telegram.TelegramDesktop",
    "AntibodySoftware.WizTree",
    "AmN.yasb",
    "yt-dlp.yt-dlp",
    "Martchus.syncthingtray",
    "Gyan.FFmpeg",
    #"GNU.Nano",
    "JanDeDobbeleer.OhMyPosh",
    "Google.Chrome",
    "voidtools.Everything",
    "gnu.wget2",
    "CrystalDewWorld.CrystalDiskInfo.KureiKeiEdition",
    "Rclone.Rclone",
    "Ventoy.Ventoy",
    "WinFsp.WinFsp",
    "qBittorrent.qBittorrent",
    "MusicBee",
    "Telegram.TelegramDesktop",
    "voidtools.Everything.Cli",
    "voidtools.Everything",
    "Obsidian.Obsidian",
    "Rclone.Rclone",
    "Gyan.FFmpeg",
    "Jackett.Jackett",
    "WinFsp.WinFsp.Beta",
    "qBittorrent.qBittorrent",
    "Valve.Steam",
    "OBSProject.OBSStudio",
    "KeePassXCTeam.KeePassXC",
    "Cloudflare.Warp",
    "DuongDieuPhap.ImageGlass",
    "Google.Chrome",
    "CrystalDewWorld.CrystalDiskInfo.KureiKeiEdition"
)

foreach ($app in $apps) {
    winget install --id $app --silent
}

# winget install AutoHotkey.AutoHotkey
# winget install Discord.Discord
# winget install AntoineAflalo.SoundSwitch
# winget install Armin2208.WindowsAutoNightMode
# winget install voidtools.Everything.Alpha
