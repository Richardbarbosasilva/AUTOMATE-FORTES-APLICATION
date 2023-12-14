@echo off

::create some variables to tell the batch file where to find the powershell script.

set "caminhodownloads=%USERPROFILE%\Downloads\automatefortesag.ps1"
set "caminhoareadetrabalho=%USERPROFILE%\Desktop\automatefortesag.ps1"
set "caminhodocumentos=%USERPROFILE%\Documents\automatefortesag.ps1"
set "caminhopastafortes=C:\Fortes\AC\automateFortesag.ps1"
set "caminhopastaatual=%~dp0automatefortesag.ps1"

:: Verify if the file does exists

if exist "%caminhodownloads%" (
    echo Arquivo encontrado. Iniciando PowerShell.
    :: Bypasses powershell's policy execution, executes it with admin privileges and close the powershell's window after concludes the process.
    PowerShell -NoProfile -ExecutionPolicy Bypass -Command "& {Start-Process PowerShell -ArgumentList '-NoProfile -ExecutionPolicy Bypass -File \"%~dp0automatefortesag.ps1\"' -Verb RunAs}"
) else if exist "%caminhoareadetrabalho%" (
    echo Arquivo encontrado. Iniciando PowerShell.
     :: Bypasses powershell's policy execution, executes it with admin privileges and close the powershell's window after concludes the process.
  PowerShell -NoProfile -ExecutionPolicy Bypass -Command "& {Start-Process PowerShell -ArgumentList '-NoProfile -ExecutionPolicy Bypass -File \"%~dp0automatefortesag.ps1\"' -Verb RunAs}"
) else if exist "%caminhodocumentos%" (
    echo Arquivo encontrado. Iniciando PowerShell.
    :: Bypasses powershell's policy execution, executes it with admin privileges and close the powershell's window after concludes the process.
    PowerShell -NoProfile -ExecutionPolicy Bypass -Command "& {Start-Process PowerShell -ArgumentList '-NoProfile -ExecutionPolicy Bypass -File \"%~dp0automatefortesag.ps1\"' -Verb RunAs}"
) else if exist "%caminhopastafortes%" (
    echo Arquivo encontrado. Iniciando PowerShell.
    :: Bypasses powershell's policy execution, executes it with admin privileges and close the powershell's window after concludes the process.
   PowerShell -NoProfile -ExecutionPolicy Bypass -Command "& {Start-Process PowerShell -ArgumentList '-NoProfile -ExecutionPolicy Bypass -File \"%~dp0automatefortesag.ps1\"' -Verb RunAs}"
) else if exist "%caminhopastaatual%" (    
   echo Arquivo encontrado. Iniciando PowerShell.
    :: Bypasses powershell's policy execution, executes it with admin privileges and close the powershell's window after concludes the process.
    PowerShell -NoProfile -ExecutionPolicy Bypass -Command "& {Start-Process PowerShell -ArgumentList '-NoProfile -ExecutionPolicy Bypass -File \"%~dp0automatefortesag.ps1\"' -Verb RunAs}"
) else (
    goto :Filenotfound
)

:Filenotfound

echo Script PowerShell automatefortesag.ps1 not found, verify it's path and try once again.

:: exit or pause

exit 
