@echo off
title WIFI: REPAIR TOOLKIT
color 0A
:menu
cls
type wifi.txt
echo. 
echo  				DEVELOP BY @Rdy7d3r
echo 1. Show Wi-Fi Profiles
echo 2. Show Wi-Fi Password
echo 3. Flush DNS
echo 4. Release and Renew IP
echo 5. Restart Network
echo 6. Full Network Repair
echo 7. Ping Google Test
echo 8. Open Network Connections
echo 9. Show IP Configuration
echo 10. Exit
echo ===========================================
set /p choice=Select options:
if %choice%==1 netsh wlan show profiles
if %choice%==2 goto password
if %choice%==3 ipconfig /flushdns
if %choice%==4 ipconfig /release & ipconfig /renew
if %choice%==5 netsh winsock reset
if %choice%==6  goto repair
if %choice%==7 ping google.com		
if %choice%==8 ncpa.cpl
if %choice%==9 ipconfig /all 
if %choice%==10 exit
pause
goto menu 
:password
netsh wlan show profiles
echo.
set /p wifi=Enter Wi-Fi Name:
netsh wlan show profile name="%wifi% key=clear
pause
goto menu
:repair
echo Repairing network...
ipconfig /flushdns
netsh winsock reset 
netsh int ip reset 
ipconfig /renew 
ipconfig /release
echo Repair Complete...
pause
goto menu