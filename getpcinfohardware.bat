@echo off

if not DEFINED IS_MINIMIZED set IS_MINIMIZED=1 && start "" /min "%~dpnx0" %* && exit

::create some variables to tell the batch file where to find the powershell script.

set "caminhopastaatual=%~dp0getpchardwaredata.ps1"

:: Verify if the file does exists

if exist "%caminhopastaatual%" (
    echo powershell file found. Starting powershell in loop.
    :loop
    powershell.exe -WindowStyle Hidden -NoProfile -ExecutionPolicy Bypass -File "%~dp0getpchardwaredata.ps1" timeout /t 60 > nul
    goto :loop
) else (
    goto :Filenotfound
)

:Filenotfound

echo getpcinfohardware.ps1 script not found, verify it's path and try once again.

:: exit or pause

exit
