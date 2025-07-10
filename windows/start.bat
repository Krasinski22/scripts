@echo off

start "" "%localappdata%\FlowLauncher\Flow.Launcher.exe"
start "" "%localappdata%\Microsoft\WinGet\Links\syncthingtray.exe"
start "" "%ProgramFiles%\Everything\Everything.exe" -startup
start "" "%ProgramFiles%\Cloudflare\Cloudflare WARP\Cloudflare WARP.exe"
start "" "%ProgramData%\chocolatey\lib\eartrumpet\tools\EarTrumpet\EarTrumpet.exe"
start "" "%LocalAppData%\Programs\Espanso\espansod.exe" start

