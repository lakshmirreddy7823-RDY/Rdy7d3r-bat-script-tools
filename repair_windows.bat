@echo off 
title WINDOWS REPAIR 
color 0D
:menu
cls
type windows_repair.txt 
echo.
echo 						DEV by @Rdy7d3r
echo 1. Computer disk Management
echo 2. Application Files Scann
echo 3. Repair Windows System Files 
echo 4. Information Complete System 
echo 5. Details For Network
echo 6. Exit 
========================================================================
set /p choice=Select Options: 
if %choice%==1 goto chkdsk 
if %choice%==2 goto scan
if %choice%==3 goto repair
if %choice%==4 goto sysinfo
if %choice%==5 goto network
if %choice%==6 exit
:chkdsk
echo Running Disk Check...
chkdsk
pause
goto menu 
:scan
echo Scanning System Files...
sfc /scannow 
pause
goto menu
:repair
echo Repairying System Info....
DISM /Online /Cleanup-Image /RestoreHealth
pause
goto menu
:sysinfo
echo Displying System Information....
systeminfo 
pause
goto menu
:network
echo Showing Network Details...
netsh interface show interfaces & ipconfig /all
pause 
goto menu 
