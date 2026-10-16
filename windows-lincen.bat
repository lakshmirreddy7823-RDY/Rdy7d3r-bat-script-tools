@echo off
title Windows Product Key Finder
color 0A
cls
type licens.txt
echo.
wmic path softwarelicensingservice get QAJxOriginalProductkey
echo.
echo ============================================================
echo  if no key appears, Windows may be activated
echo  using a digital license or another activation method.
echo ============================================================
pause