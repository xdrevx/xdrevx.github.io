@echo off
:home
color 4
mode 80, 31
title DrevOS Installer (beta-11497)
cls
echo DDDDD   RRRR    EEEEE   V   V
echo D    D  R   R   E       V   V
echo D    D  RRRR    EEE      V V 
echo D    D  R   R   E        V  
echo DDDDD   R    R  EEEE     V  
echo.
echo.
echo Install DrevOS?
echo.
echo Version: Dev Beta (beta-11497)
echo.
echo Press any key to install . . . 
pause >nul
cd %userprofile%\documents
mkdir DrevOS
cd DrevOS
curl -s -o main.bat ""
cd %userprofile%\desktop
curl -s -o DrevOS ""