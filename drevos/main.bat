@echo off
:home
color 4
mode 80, 31
title DrevOS.exe
cls
echo DDDDD   RRRR    EEEEE   V   V
echo D    D  R   R   E       V   V
echo D    D  RRRR    EEE      V V 
echo D    D  R   R   E        V  
echo DDDDD   R    R  EEEE     V  
echo.
echo.
echo Personalization
echo.
echo 1. Enable Branding
echo 2. Disable Branding
echo.
echo OEM
echo.
echo 3. Remove DrevOS OEM
echo 4. Set DrevOS OEM
echo 5. Set AtlasOS OEM
echo 6. Set Acer OEM (partner)
echo.
echo System
echo.
echo i. Info
echo r. Reset/Update DrevOS
echo u. Uninstall DrevOS
echo.
echo DrevOS.exe
echo.
echo x. Exit
echo.
set /p choice=Please select your option: 

if "%choice%"=="1" (
    cd %UserProfile%\AppData\Roaming\Microsoft\Windows\Themes
    del TranscodedWallpaper
    curl -s -o TranscodedWallpaper "https://drev.evils.in/DrevOS/themes/background/red_drevos.png"
    taskkill /f /im explorer.exe
    start explorer.exe
    goto home
) else if "%choice%"=="2" (
    cd %UserProfile%\AppData\Roaming\Microsoft\Windows\Themes
    del TranscodedWallpaper
    curl -s -o TranscodedWallpaper "https://drev.evils.in/DrevOS/themes/background/red.png"
    taskkill /f /im explorer.exe
    start explorer.exe
    goto home
) else if "%choice%"=="3" (
    cd %userprofile%\documents\DrevOS
    curl -s -o oemre.reg "https://raw.githubusercontent.com/DrevilYT/DrevOS/main/oem/revert.reg"
    reg import oemre.reg
    start ms-settings:about
    goto home
) else if "%choice%"=="4" (
    cd %userprofile%\documents\DrevOS
    curl -s -o oemdrev.reg "https://raw.githubusercontent.com/DrevilYT/DrevOS/main/oem/drev_os_oem.reg"
    reg import oemdrev.reg
    start ms-settings:about
    goto home
) else if "%choice%"=="5" (
    cd %userprofile%\documents\DrevOS
    curl -s -o atlas.reg "https://raw.githubusercontent.com/DrevilYT/DrevOS/main/oem/atlas.reg"
    reg import atlas.reg
    start ms-settings:about
    goto home
) else if "%choice%"=="6" (
    cd %userprofile%\documents\DrevOS
    curl -s -o acer.reg "https://raw.githubusercontent.com/DrevilYT/DrevOS/main/oem/acer.reg"
    reg import acer.reg
    start ms-settings:about
    goto home
) else if "%choice%"=="x" (
    exit
) else if "%choice%"=="atlas" (
    cd c:\windows\atlasdesktop
    start .
    goto home
) else if "%choice%"=="r" (
    cls
    echo DDDDD   RRRR    EEEEE   V   V
    echo D    D  R   R   E       V   V
    echo D    D  RRRR    EEE      V V 
    echo D    D  R   R   E        V  
    echo DDDDD   R    R  EEEE     V  
    echo.
    echo.
    echo No updates available.
    echo.
    timeout /t 3 >nul
    goto home
) else if "%choice%"=="i" (
    cls
    echo DDDDD   RRRR    EEEEE   V   V
    echo D    D  R   R   E       V   V
    echo D    D  RRRR    EEE      V V 
    echo D    D  R   R   E        V  
    echo DDDDD   R    R  EEEE     V  
    echo.
    echo.
    echo Running Windows 10/11
    echo.
    echo Manufacturer: Drev
    echo.
    echo Model: DrevOS Red
    echo.
    echo DrevOS Red Key: Active
    echo.
    echo Optimizations by: Atlas/AtlasOS
    echo.
    echo Press any key to return . . . 
    pause >nul
    goto home
)
cls
echo DDDDD   RRRR    EEEEE   V   V
echo D    D  R   R   E       V   V
echo D    D  RRRR    EEE      V V 
echo D    D  R   R   E        V  
echo DDDDD   R    R  EEEE     V  
echo.
echo.
echo Failed to connect to Atlas/DrevOS.
echo.
timeout /t 2 >nul
goto home