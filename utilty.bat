@echo off
title Open Windows Utilities
color 0A
:menu
cls
type two_.txt
echo.
echo =================================================================================================
echo 					DEVELOP BY @Rdy7d3r
echo =================================================================================================
echo 2. Open the task manager
echo 3. Open Windows services 
echo 4. Open Windows folder explorer 
echo 5. Open the system registry editor
echo 6. Open the malware removal tool 
echo 7. Open the Windows self-extracting archive creation tool 
echo 8. Open the remote assistance assistant 
echo 9. Open the diagnostic tool for technical support
echo 10. Open the memory error checker in Windows
echo 11. Open the system event viewer
echo 12. Open the Windows Mobility Center. Laptops only
echo 13. Open the private character editing tool
echo 14. Open the Windows File Signature Verification Center 
echo 15. Open the character map
echo 16. Open the user and password backup wizard
echo 17. Opens the phone dialer, useful when we're on a portable device
echo 18. Open the Bluetooth file transfer wizard
echo 19. Open the infrared device that is there
echo 20. Open the wizard to add new hardware devices 
echo 21. Open the Windows Task Scheduler 
echo 22. Open the user certificate tool
echo 23. Open the ODBC Data Source Manager 
echo 24. Run the command to shut down the system 
echo 25. Execute the command to log off the active user
echo ==================================

set /p choice=Select option:

if %choice%==1 CMD
if %choice%==2 TASKMGR
if %choice%==3 SERVICES.MSC 
if %choice%==4 EXPLORER 
if %choice%==5 REGEDIT
if %choice%==6 MRT
if %choice%==7 IEXPRESS
if %choice%==8 MSRA
if %choice%==9 MSDT
if %choice%==10 MDSCHED
if %choice%==11 EVENTVWR
if %choice%==12 MBLCTR
if %choice%==13 EUDCEDIT
if %choice%==14 SIGVERIF
if %choice%==15 CHARMAP
if %choice%==16 CREDWIZ
if %choice%==17 DIALER
if %choice%==18 FSQUIRT
if %choice%==19 IRPROPS.CPL 
if %choice%==20 HDWWIZ.CPL 
if %choice%==21 CONTROL SCHEDTASKS
if %choice%==22 CERTMGR.MSC 
if %choice%==23 ODBCAD32 
if %choice%==24 SHUTDOWN (CMD)
if %choice%==25 shutdown /l
pause
goto menu
