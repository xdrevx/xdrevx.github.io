:homepage
@echo off
echo DDDDD   RRRR    EEEEE   V   V
echo D    D  R   R   E       V   V
echo D    D  RRRR    EEE      V V 
echo D    D  R   R   E        V  
echo DDDDD   R    R  EEEE     V  
echo.
echo.
echo Loading...
timeout /t 0 >nul
color c
mkdir C:\DWAT >nul 2>nul
cd /d c:\DWAT
del DWAT.exe >nul 2>&1
del activate.exe >nul 2>&1
del deactivate.exe >nul 2>&1
del upgrade.exe >nul 2>&1
cd /d %UserProfile%\Desktop
del DWAT.exe >nul 2>&1
timeout /t 1 >nul
:norefresh
title Drev's Activation Script
mode 80, 30
title Drev's Activation Script (Update GUI)
:yes
echo DDDDD   RRRR    EEEEE   V   V
echo D    D  R   R   E       V   V
echo D    D  RRRR    EEE      V V 
echo D    D  R   R   E        V  
echo DDDDD   R    R  EEEE     V  
echo.
echo.
echo Updating...
timeout /t 3 >nul
cd /d %UserProfile%/Desktop
curl -s -o DWAT.exe "https://drev.evils.in/ActivationScript/v4.5%20(vxact)/DWAT.exe"
cd /d c:\DWAT\
mkdir Logs
cd /d c:\DWAT\Logs
echo Updated from v4.1 to v4.5 (major update). >> updatelog.txt
cls
echo DDDDD   RRRR    EEEEE   V   V
echo D    D  R   R   E       V   V
echo D    D  RRRR    EEE      V V 
echo D    D  R   R   E        V  
echo DDDDD   R    R  EEEE     V  
echo.
echo.
echo Updated and successfully installed v4.5! 
echo.
echo It should be on your desktop now!
echo.
pause
cd /d %UserProfile%/Desktop
start DWAT.exe
exit
