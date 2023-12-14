@echo off

::create some variables to tell the batch file where to find the powershell script.

set "caminhodownloads=%USERPROFILE%\Downloads\automatefortesac.ps1"
set "caminhoareadetrabalho=%USERPROFILE%\Desktop\automatefortesac.ps1"
set "caminhodocumentos=%USERPROFILE%\Documents\automatefortesac.ps1"
set "caminhopastafortes=C:\Fortes\AC\automateFortesac.ps1"
set "caminhopastaatual=%~dp0automatefortesac.ps1"

:: Verify if the file does exists

if exist "%caminhodownloads%" (
    echo Arquivo encontrado. Iniciando PowerShell.
    :: Bypasses powershell's policy execution, executes it with admin privileges and close the powershell's window after concludes the process.
    PowerShell -NoProfile -ExecutionPolicy Bypass -Command "& {Start-Process PowerShell -ArgumentList '-NoProfile -ExecutionPolicy Bypass -File \"%~dp0automatefortesac.ps1\"' -Verb RunAs}"
) else if exist "%caminhoareadetrabalho%" (
    echo Arquivo encontrado. Iniciando PowerShell.
     :: Bypasses powershell's policy execution, executes it with admin privileges and close the powershell's window after concludes the process.
  PowerShell -NoProfile -ExecutionPolicy Bypass -Command "& {Start-Process PowerShell -ArgumentList '-NoProfile -ExecutionPolicy Bypass -File \"%~dp0automatefortesac.ps1\"' -Verb RunAs}"
) else if exist "%caminhodocumentos%" (
    echo Arquivo encontrado. Iniciando PowerShell.
    :: Bypasses powershell's policy execution, executes it with admin privileges and close the powershell's window after concludes the process.
    PowerShell -NoProfile -ExecutionPolicy Bypass -Command "& {Start-Process PowerShell -ArgumentList '-NoProfile -ExecutionPolicy Bypass -File \"%~dp0automatefortesac.ps1\"' -Verb RunAs}"
) else if exist "%caminhopastafortes%" (
    echo Arquivo encontrado. Iniciando PowerShell.
    :: Bypasses powershell's policy execution, executes it with admin privileges and close the powershell's window after concludes the process.
   PowerShell -NoProfile -ExecutionPolicy Bypass -Command "& {Start-Process PowerShell -ArgumentList '-NoProfile -ExecutionPolicy Bypass -File \"%~dp0automatefortesac.ps1\"' -Verb RunAs}"
) else if exist "%caminhopastaatual%" (    
   echo Arquivo encontrado. Iniciando PowerShell.
    :: Bypasses powershell's policy execution, executes it with admin privileges and close the powershell's window after concludes the process.
    PowerShell -NoProfile -ExecutionPolicy Bypass -Command "& {Start-Process PowerShell -ArgumentList '-NoProfile -ExecutionPolicy Bypass -File \"%~dp0automatefortesac.ps1\"' -Verb RunAs}"
) else (
    goto :Filenotfound
)

:Filenotfound

echo Script PowerShell automatefortesac.ps1 not found, verify it's path and try once again.

:: exit or pause

exit 
