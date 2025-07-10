# Encerra processos cujo nome contenha 'syncthingtray'
Get-Process | Where-Object { $_.ProcessName -like "*syncthingtray*" } | ForEach-Object { 
    Stop-Process -Id $_.Id -Force 
}

# Encerra processos 'yasb.exe' e 'espansod.exe' pelo nome exato
Stop-Process -Name yasb, espansod -Force -ErrorAction SilentlyContinue

