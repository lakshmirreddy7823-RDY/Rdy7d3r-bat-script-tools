@echo off
title ULTIMATE POWER MENU
color 0A
:menu
cls
type power.txt 
echo.
echo  				DEVELOP BY @Th$run && @Rdy7d3r
echo .
echo 1. Shutdown PC
echo 2. Restart PC
echo 3. Sleep PC
echo 4. Lock PC
echo 5. sign Out
echo 6. Open Task Manager
echo 7. Open Control Panel
echo 8. Open System Information
echo 9. Open Network Settings
echo 10. Open CMD as Admin
echo 11. Open Disk Management
echo 12. Open Device Manager
echo 13. Restart Explorer
echo 14. Enable Dark Mode
echo 15. Exit
echo .
set /p choice=Select options:
if "%choice%"=="1" shutdown /f /s /t 0
if "%choice%"=="2" shutdown /r /t 0
if "%choice%"=="3" powershell -command "Add-Type -AssemblyName System.Windows.Forms; [System.Windows.Forms.Application]::SetSuspendState('Suspend',$false,$false)"
if "%choice%"=="4" rundll32.exe user32.dll,LockWorkStation
if "%choice%"=="5" shutdown /l
if "%choice%"=="6" start taskmgr
if "%choice%"=="7" control
if "%choice%"=="8" start msinfo32 
if "%choice%"=="9" start ms.settings:network
if "%choice%"=="10" powershell -command "Start-Process cmd -Verb runAs"
if "%choice%"=="11" diskmgmt.msc
if "%choice%"=="12" devmgmt.msc
if "%choice%"=="13" taskkill /f /im explorer.exe & start explorer.exe
if "%choice%"=="14" reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Themes\Personalize" /v AppsUseLightTheme /t REG_DWORD /d 0 /f
if "%choice%"=="15" exit
pause
goto menu