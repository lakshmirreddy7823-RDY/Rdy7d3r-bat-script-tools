@echo off 
title Setting BIOS_TPM
color 0A
:menu
cls
type banner.txt	
echo.
echo 			Dev by  @Rdy7d3r
echo 1. Reboot into BIOS/UEFI
echo 2. Advanced Startup Options
echo 3. System Information
echo 4. TPM Management
echo 5. Check BIOS Secure
echo 6. Check BIOS Version 
echo 7. Check Boot Configuration
echo 8. Open Disk Management
echo 9. Open Device Manager
echo 10. Exit
echo ==========================================================================
set /p choice=Select Options: 
if %choice%==1  shutdown /r /fw /t 0
if %choice%==2 start ms-settings:recovery
if %choice%==3 msinfo32
if %choice%==4 tpm.msc
if %choice%==5 powershell "Confirm-SecureBootUEI"
if %choice%==6  wmic bios get smbiosbiosversion
if %choice%==7 bcdedit
if %choice%==8 diskmgmt.msc 
if %choice%==9 devmgmt.msc
if %choice%==10 exit
pause 
goto menu