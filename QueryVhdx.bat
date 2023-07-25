@echo off
cls
echo.
echo. == Current OS File: ==
echo.
Storage_%PROCESSOR_ARCHITECTURE%.exe GetAllAttachedVirtualDiskPhysicalPaths

echo.
echo.
Storage_%PROCESSOR_ARCHITECTURE%.exe GetStorageDependencyInformation %SystemDrive%
echo.
echo.

pause