@echo off

::The following command makes the CMD's window do not open when starting to execute
if not DEFINED IS_MINIMIZED set IS_MINIMIZED=1 && start "" /min "%~dpnx0" %* && exit

:: Criar as variáveis responsáveis por identificar o caminho do script PowerShell nos principais pontos de salvamento de arquivos do PC do usuário 

set "caminhodownloads=%USERPROFILE%\Downloads\INTEGRACAOFORTES.ps1"
set "caminhoareadetrabalho=%USERPROFILE%\Desktop\INTEGRACAOFORTES.ps1"
set "caminhodocumentos=%USERPROFILE%\Documents\INTEGRACAOFORTES.ps1"
set "caminhopastafortes=C:\Fortes\AC\INTEGRACAOFORTES.ps1"
set "caminhopastaatual=%~dp0INTEGRACAOFORTES.ps1"

:: Verificar se o arquivo existe
if exist "%caminhodownloads%" (
    echo Arquivo encontrado. Iniciando PowerShell minimizado.
    :: Comando para executar o script em modo admin e burlar a política de execução do PowerShell
    powershell.exe -WindowStyle Minimized -NoProfile -ExecutionPolicy Bypass -File "%~dp0INTEGRACAOFORTES.ps1" -Verb RunAs
) else if exist "%caminhoareadetrabalho%" (
    echo Arquivo encontrado. Iniciando PowerShell minimizado.
    :: Comando para executar o script em modo admin e burlar a política de execução do PowerShell
    powershell.exe -WindowStyle Minimized -NoProfile -ExecutionPolicy Bypass -File "%~dp0INTEGRACAOFORTES.ps1" -Verb RunAs
) else if exist "%caminhodocumentos%" (
    echo Arquivo encontrado. Iniciando PowerShell minimizado.
    :: Comando para executar o script em modo admin e burlar a política de execução do PowerShell
    powershell.exe -WindowStyle Minimized -NoProfile -ExecutionPolicy Bypass -File "%~dp0INTEGRACAOFORTES.ps1" -Verb RunAs
) else if exist "%caminhopastafortes%" (
    echo Arquivo encontrado. Iniciando PowerShell minimizado.
    :: Comando para executar o script em modo admin e burlar a política de execução do PowerShell
    powershell.exe -WindowStyle Minimized -NoProfile -ExecutionPolicy Bypass -File "%~dp0INTEGRACAOFORTES.ps1" -Verb RunAs
) else if exist "%caminhopastaatual%" (    
    echo Arquivo encontrado. Iniciando PowerShell minimizado.
    :: Comando para executar o script em modo admin e burlar a política de execução do PowerShell
    powershell.exe -WindowStyle Minimized -NoProfile -ExecutionPolicy Bypass -File "%~dp0INTEGRACAOFORTES.ps1" -Verb RunAs
) else (
    goto :ArquivoNaoEncontrado 
)

:ArquivoNaoEncontrado
echo Script PowerShell INTEGRACAOFORTES.ps1 not found, verify its path and try once again.

:: exit
exit


