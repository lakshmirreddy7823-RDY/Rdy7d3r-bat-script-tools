@echo off 
title ADVANCED USB TOOLKIT
color 0A
:menu
cls
type usb.txt
echo.
echo  				Dev by  @Rdy7d3r
echo.
echo 1. Open Device Manager
echo 2. View Connected USB Devices
echo 3. Open Disk Management
echo 4. Safely Remove Hardware
echo 5. Show All Driver Information
echo 6. List of All Drivers
echo 7. Format USB Drive
echo 8. Eject USB Driver
echo 9. Open BitLocker Drive Encryption
echo 10. Computer Management
echo 11. Event Viewer 
echo 12. Restart Windows Explorer
echo 13. Exit
echo ===================================
set /p choice=Select options

if %choice%==1 start devmgm.msc
if %choice%==2 (
 	wmic path Win32_USBHUB get DeviceID,Name
    pause
)
if %choice%==3 start diskmgmt.msc
if %choice%==4 control /name Microsoft.DeviceAndPrinters
if %choice%==5 driverquery /fo table /si | find "USB"
if %choice%==6 wmic logicaldisk get name,description
if %choice%==7(
	set /p drive=Enter drive letter (e.g E:):
	format %driver% /FS:NFTS /Q /V:USB_DRIVE
)
if %choice%==8 (
	echo USB ejection requires a separate powershell script or third-party tool.
) 
if %choice%==9 start control.exe /name Microsoft.BitLockerDriveEncryption
if %choice%==10 start compmgmt.msc
if %choice%==11 start eventvwr.msc
if %choice%==12 taskkill /f /im explorer.exe & start explorer.exe
if %choice%==13 exit
pause
goto menu

