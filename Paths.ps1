function Add-To-Path {
    param(
        [string]$novoCaminho
    )

    # Verifica se o caminho já está na PATH
    if ($env:PATH -notcontains $novoCaminho) {
        # Adiciona o caminho à PATH do usuário
        [System.Environment]::SetEnvironmentVariable("PATH", "$env:PATH;$novoCaminho", [System.EnvironmentVariableTarget]::User)
        Write-Host "Caminho '$novoCaminho' adicionado à PATH."
    } else {
        Write-Host "Caminho '$novoCaminho' já está na PATH."
    }

}

Add-To-Path "C:\Program Files\Sublime Text\"