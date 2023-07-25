@echo off
cls
call AttachVhdx.bat "\\?\Volume{398717dc-0000-0000-0000-100000000000}\Sources\BlackBox.vhdx" "vhdxdrv"
rem call AttachVhdx.bat "J:\Sources\BlackBox.vhdx" "vhdxdrv"
echo %vhdxdrv%
pause