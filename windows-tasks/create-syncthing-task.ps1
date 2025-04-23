schtasks /create `
  /tn "Syncthing" `
  /tr "`"C:\ProgramData\Microsoft\Windows\Start Menu\Programs\my-software\just in case\syncthing\syncthing.exe`" --no-console --no-browser --home `"D:\OneDrive\configs\Syncthing`"" `
  /sc onlogon `
  /ru $env:USERNAME `
  /f
