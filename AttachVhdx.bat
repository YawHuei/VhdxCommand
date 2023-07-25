@echo off
if [%~1]==[] exit /b 1
if [%~2]==[] exit /b 1
chcp 437 >nul
setlocal
set "vhdxfile=%~1"

for /f "tokens=1*" %%I in ('fsutil fsinfo drives') do set "drives1=%%~J"
Storage_%PROCESSOR_ARCHITECTURE%.exe AttachVirtualDisk "%vhdxfile%" true >nul
if %errorlevel% NEQ 0 goto :nexta
for /f "tokens=1*" %%I in ('fsutil fsinfo drives') do set "drives2=%%~J"
for %%I in (%drives2%) do echo %drives1% | find /v /i "%%~I" >nul && set "cdrv=%%~I" && goto nexta
:nexta
endlocal & set "%~2=%cdrv:~0,-1%"

rem call AttachVhdx.bat "\\?\Volume{398717dc-0000-0000-0000-100000000000}\Sources\BlackBox.vhdx" "vhdxdrv"
rem echo %vhdxdrv%