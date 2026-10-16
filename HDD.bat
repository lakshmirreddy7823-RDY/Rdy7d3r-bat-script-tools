@echo  off
whoami /groups | find "S-1-5-32-544" >nul
if errorlevel 1 (
    echo NOT ADMIN
) else (
    echo ADMIN
)
pause
title HDD REPAIR TOOLKIT
color 0E
:menu
cls
type hdd.txt
echo.
echo 								Create by @RDY7D3R
echo 1. Checking Disk For Errors
echo 2. Scanning System Files
echo 3. Repairing Windows Image
echo 4. Open Disk Management
echo 5. HDD Repair Process
echo 6. Exit

set /p choice=Select Options: 

if "%choice%"=="1" goto chkdsk 
if "%choice%"=="2" goto scan 
if "%choice%"=="3" goto repair 
if "%choice%"=="4" goto disk 
if "%choice%"=="5" goto hdd 
if "%choice%"=="6" goto 
echo Invalid Options!
pause 
goto menu

:chkdsk
net session >nul 2>&1
if not %errorlevel%==0 (
    powershell -Command "Start-Process '%~f0' -Verb RunAs"
    pause
    goto menu
)
echo Checking Errors Files...
chkdsk C: /f 
pause 
goto menu

:scan 
net session >null 2>&1
if not %errorlevel%==0 (
	powershell -Command "Start-Process '%~f0' -Verb RunAs"
	pause
	goto menu
)
echo Scanning Errors Files...
sfc /scannow 
pause
goto menu

:repair
net session >null 2>&1
if not %errorlevel%==0 (
	powershell -Command "Start-Process '%~f0' -Verb RunAs"
	pause
	goto menu
)
echo Repairing Windows Images...
DISM /Online /Cleanup-Image /RestoreHealth
pause
goto menu

:disk
echo Opening Disk Management...
start diskmgmt.msc
pause
goto menu

:hdd
net session >null 2>&1
if not %errorlevel%==0 (
	powershell -Command "Start-Process '%~f0' -Verb RunAs"
	pause
	goto menu
)
echo ============================================================
echo 				Checking HDD Repair Process...
echo =============================================================
echo.
echo [1/3] Checking Disk...
chkdsk C: /f /r


echo.
echo [2/3] Scanning System Files...
sfc /scannow 

echo. 
echo [3/3] Repairing Windows Image....
DISM /Online /Cleanup-Image /RestoreHealth

echo.
echo =================================================
echo 		Repair Process Completed!
echo =================================================
pause
goto menu



