$pasta_rede = "insert a UNC path here"

# localhost destiny
$destino = "insert a local path where your fortes ag files are in"

# Verify if the Fortes Folder does exists
if (Test-Path $pasta_rede) {
    # Lista de extensões de arquivo a serem copiadas
    $extensoes = @("dll", "exe")

    # Lists all dll and exe
    foreach ($extensao in $extensoes) {
        $arquivos = Get-ChildItem -Path $pasta_rede -Filter "*.$extensao"
        
        # else if to copy the .dll and .exe files of the Fortes network's folder and paste it on the Fortes localhost's folder 
        if ($arquivos.Count -gt 0) {
            Copy-Item -Path $arquivos.FullName -Destination $destino
            Write-Host "Arquivos $extensao copiados com sucesso."
        } else {
            Write-Host "No file $extensao found."
        }
    }
} else {
}

# Minimize powershell's window and stop the process
$host.UI.RawUI.WindowState = 'Minimized'
Stop-Process -Id $PID
