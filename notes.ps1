powershell - add to path all files in text files
cat .\Paths.ps1 | foreach { .\Add-Path.ps1 $_ }
