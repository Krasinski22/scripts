Start-Process "$env:localappdata\FlowLauncher\Flow.Launcher.exe"
Start-Process "$env:localappdata\Microsoft\WinGet\Links\syncthingtray.exe"
Start-Process "$env:ProgramFiles\Everything\Everything.exe" -ArgumentList "-startup"
Start-Process "$env:ProgramFiles\Cloudflare\Cloudflare WARP\Cloudflare WARP.exe"
Start-Process "$env:ProgramData\chocolatey\lib\eartrumpet\tools\EarTrumpet\EarTrumpet.exe"
#Start-Process "$env:LocalAppData\Programs\Espanso\espansod.exe" -ArgumentList "start"
espanso start & 
