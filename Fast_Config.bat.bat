@echo off
title Configuration

:menu
cls
echo =================================================================
echo     Configuration     Create by @Rdy7d3r
echo =================================================================
echo 1. Control center
echo 2. System properties 
echo 3. Add/Remove Programs control  
echo 4. Date/Time Properties control 
echo 5. Display Properties control 
echo 6. Open Devices
echo 7. Internet Properties control 
echo 8. Joystick Properties control 
echo 9. Privacy App Diagnostics
echo 10. Sound Properties control
echo 11. Properties is Network
echo 12. Power Management Energy control
echo 13. Regional Settings control
echo 14. Open Printers Settings
echo 15. Application - Installation
echo 16. Your information
echo 17. Bluetooh
echo 18. Camera
echo 19. USB
echo 20. Game Bar
echo 21. Network - Status
echo 22. Network - Ethernet
echo 23. Network - VPN
echo 24. Network - Wifi
echo 25. Privacy - Account Info
echo 26. Privacy - Documents
echo 27. Search
echo 28. About
echo 29. Time - Date
echo 30. Windows Update
echo 31. Language
echo 32. Storage
echo 33. Lock Screen
echo 34. Fonts
echo 35. Access Mouse
echo 36. Access Keyboard
echo 37. Keyboard
echo 38. Mouse
echo 39. Privacy Pictures
echo 40. Privacy Videos
echo 41. Sound Devices
echo 42. Battery Saver
echo 43. Taskbar
echo 44. Activation
echo 45. Recovery
echo 46. Windows Defender
echo 47. Open the administrative tools folder
echo 48. Open keyboard properties
echo 49. Open mouse properties
echo 50. Open the system startup and boot settings
echo 51. Open advanced user account settings 
echo 52. Accessibility settings
echo 53. Visit my channel instagram
echo 54. Exit
echo ==================================

set /p choice=Select option:

if %choice%==1 start ms-settings:controlcenter
if %choice%==2 sysdm.cpl
if %choice%==3 appwiz.cpl
if %choice%==4 timedate.cpl
if %choice%==5 desk.cpl
if %choice%==6 control printers
if %choice%==7 inetcpl.cpl
if %choice%==8 joy.cpl
if %choice%==9 start ms-settings:privacy-appdiagnostics
if %choice%==10 mmsys.cpl
if %choice%==11 Ncpa.cpl
if %choice%==12 powercfg.cpl
if %choice%==13 intl.cpl
if %choice%==14 start ms-settings:printers
if %choice%==15 start ms-settings:appsfeatures
if %choice%==16 start ms-settings:yourinfo
if %choice%==17 start ms-settings:bluetooth
if %choice%==18 start ms-settings:camera
if %choice%==19 start ms-settings:usb
if %choice%==20 start ms-settings:gaming-gamebar
if %choice%==21 start ms-settings:network-status
if %choice%==22 start ms-settings:network-ethernet
if %choice%==23 start ms-settings:network-vpn
if %choice%==24 start ms-settings:network-wifi
if %choice%==25 start ms-settings:privacy-accountinfo
if %choice%==26 start ms-settings:privacy-documents
if %choice%==27 start ms-settings:search
if %choice%==28 start ms-settings:about
if %choice%==29 start ms-settings:dateandtime
if %choice%==30 start ms-settings:windowsupdate
if %choice%==31	start ms-settings:keyboard
if %choice%==32	start ms-settings:storagesense
if %choice%==33 start ms-settings:lockscreen
if %choice%==34 start ms-settings:fonts
if %choice%==35 start ms-settings:easeofaccess-mouse
if %choice%==36 start ms-settings:easeofaccess-keyboard
if %choice%==37 start ms-settings:devices-keyboard
if %choice%==38 start ms-settings:mousetouchpad
if %choice%==39 start ms-settings:privacy-pictures
if %choice%==40 start ms-settings:privacy-videos
if %choice%==41 start ms-settings:sound-devices
if %choice%==42 start ms-settings:batterysaver
if %choice%==43 start ms-settings:taskbar
if %choice%==44 start ms-settings:activation
if %choice%==45 start ms-settings:recovery	
if %choice%==46 start ms-settings:windowsdefender
if %choice%==47 CONTROL ADMINTOOLS
if %choice%==48 CONTROL KEYBOARD 
if %choice%==49 CONTROL MOUSE
if %choice%==50 MSCONFIG
if %choice%==51 NETPLWIZ
if %choice%==52 UTILMAN
if %choice%==53 goto Instagram
if %choice%==54 exit

pause
goto menu
:Instagram
@echo off 
start  https://www.instagram.com/malware680
goto menu 