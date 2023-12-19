#This Fortes automation is a junction of three another automations, made to run for all users inside a domain.

# path to AC network folder 
$pasta_redeAC = "\\arquivos.clickip.local\UPGRADEFORTES\Fortes\AC"

# Path to AC localhost folder
$destinoAC = "C:\Fortes\AC"

# Verify if the network's AC folder does exist
if (Test-Path $pasta_redeAC -PathType Container) {
    # Verify if the local's AC folder does exist
    #Only if both exists, it will apply the automation
    if (Test-Path $destinoAC -PathType Container) {
        # Extensions to be copied
        $extensoes = @("dll", "exe")
        Write-Host "Both network and localhost AC's folder were found. Initializing automation."
        # Counts files inside the $pasta_redeAC folder
        foreach ($extensao in $extensoes) {
            $arquivos = Get-ChildItem -Path $pasta_redeAC -Filter "*.$extensao"

            # Lists AC .dll and .exe files
            if ($arquivos.Count -gt 0) {
                # Copy all files to $destinoAC
                Copy-Item -Path $arquivos.FullName -Destination $destinoAC -Force
                Write-Host "$extensao files copied with success."
            } else {
                Write-Host "No $extensao file found."
            }
        }
        Write-Host "FortesAC was updated!"
    } else {
        Write-Host "Localhost's AC folder wasn't found. Automation will not be made."
    }
} else {
    Write-Host "Network's AC folder wasn't found. Automation will not be made."
}


# path to AG network folder
$pasta_redeAG = "\\arquivos.clickip.local\UPGRADEFORTES\Fortes\AG"

# Path to AG localhost folder
$destinoAG = "C:\Fortes\AG"

# Verify if the network's AG folder does exist
if (Test-Path $pasta_redeAG -PathType Container) {
    # Verify if the local's AG folder does exist
    #Only if both exists, it will apply the automation
    if (Test-Path $destinoAG -PathType Container) {
        # Extensions to be copied
        $extensoes = @("dll", "exe")
        Write-Host "Both network and localhost AG's folder were found. Initializing automation."         
        # Lists files inside the $pasta_redeAC folder
        foreach ($extensao in $extensoes) {
            $arquivos = Get-ChildItem -Path $pasta_redeAG -Filter "*.$extensao"

             # Counts AG .dll and .exe files
            if ($arquivos.Count -gt 0) {
               # Copy all files to $destinoAG
                Copy-Item -Path $arquivos.FullName -Destination $destinoAG -Force
                Write-Host "$extensao files copied with success."
            } else {
                Write-Host "No $extensao file found."
            }
        }
        Write-Host "Fortes AG was apdated!"
    } else {
        Write-Host "Localhost's AG folder wasn't found. Automation will not be made."
    }
} else {
    Write-Host "Network's AC folder wasn't found. Automation will not be made."
}



# path to Ponto network folder
$pasta_redePONTO = "\\arquivos.clickip.local\UPGRADEFORTES\Fortes\Ponto"

# Path to Ponto localhost's folder
$destinoPONTO = "C:\Fortes\Ponto"

# Verify if the network's Ponto folder does exist
if (Test-Path $pasta_redePONTO -PathType Container) {
    # Verify if local's Ponto folder does exist
    # Only if both exists, it will apply the automation
    if (Test-Path $destinoPONTO -PathType Container) {
        # Extensions to be copied
        $extensoes = @("dll", "exe")

 Write-Host "Both network and localhost AG's folder were found. Initializing automation."        
    #Counts Ponto .dll and .exe files
        foreach ($extensao in $extensoes) {
            $arquivos = Get-ChildItem -Path $pasta_redePONTO -Filter "*.$extensao"

            # Verifica se há arquivos com a extensão especificada
            if ($arquivos.Count -gt 0) {
                # Copia os arquivos para a pasta de destino
                Copy-Item -Path $arquivos.FullName -Destination $destinoPONTO -Force
                Write-Host "$extensao files copied with success."
            } else {
                Write-Host "No $extensao file found."
            }
        }
        Write-Host "Fortes Ponto was updated!"
    } else {
        Write-Host "Localhost's Ponto folder wasn't found. Automation will not be made."
    }
} else {
    Write-Host "Network's AC folder wasn't found. Automation will not be made."
}

pause
