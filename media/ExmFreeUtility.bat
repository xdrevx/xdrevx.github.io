@echo off
set w=[97m
set p=[95m
set b=[96m

::Enable Restore points 

powershell -ExecutionPolicy Unrestricted -NoProfile Enable-ComputerRestore -Drive 'C:\'>nul 2>&1
Reg.exe delete "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\WindowsNT\CurrentVersion\SystemRestore" /v "RPSessionInterval" /f  >nul 2>&1
Reg.exe delete "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\WindowsNT\CurrentVersion\SystemRestore" /v "DisableConfig" /f >nul 2>&1
Reg.exe add "HKLM\Software\Microsoft\Windows NT\CurrentVersion\SystemRestore" /v "SystemRestorePointCreationFrequency" /t REG_DWORD /d 0 /f  >nul 2>&1


echo Creating Restore Point 
POWERSHELL "Checkpoint-Computer -Description \"Exm Free Tweaks\" -RestorePointType \"MODIFY_SETTINGS\""


::Disable UAC
Reg.exe ADD "HKLM\Software\Microsoft\Windows\CurrentVersion\Policies\System" /v "EnableLUA" /t REG_DWORD /d "0" /f > nul

curl -g -k -L -# -o "%temp%\nvidiaProfileInspector.zip" "https://github.com/Orbmu2k/nvidiaProfileInspector/releases/latest/download/nvidiaProfileInspector.zip" >nul 2>&1
cls
powershell -NoProfile Expand-Archive '%temp%\nvidiaProfileInspector.zip' -DestinationPath 'C:\Exmfree\' >nul 2>&1
cls 
%b%
:: Enable ANSI Escape Sequences
Reg.exe add "HKCU\CONSOLE" /v "VirtualTerminalLevel" /t REG_DWORD /d "1" /f  > nul

::Enable Delayed Expansion
setlocal EnableDelayedExpansion > nul
cls 




cls
echo.
echo. ═════════════════════════════
echo.
echo     %w% Downloading rescorses %b%
echo.
echo. ═════════════════════════════
echo.



chcp 431 >nul 2>&1

md C:\exmfree

curl -g -k -L -# -o "C:\exmfree\Exm_Free_Power_Plan_V1.pow" "https://cdn.discordapp.com/attachments/1116106444513747056/1166804375939862640/Exm_Free_Power_Plan_V1.pow?ex=654bd241&is=65395d41&hm=80189d5ba629740af1c9cef5068d8f005ba3d67111f0b6cdb109927f102b4fd0&" 

curl -g -k -L -# -o "C:\exmfree\Exm_Free_Settings_V3.nip" "https://cdn.discordapp.com/attachments/1116106444513747056/1166804153226514442/Exm_Free_Settings_V3.nip?ex=654bd20c&is=65395d0c&hm=9a4bb0a08f8b9d52dcb9ff1033d831427b3380739495357c4e8979b863801372&" 

curl -g -k -L -# -o "C:\exmfree\autoruns.exe" "https://cdn.discordapp.com/attachments/1116106444513747056/1166803727441727599/autoruns.exe?ex=654bd1a6&is=65395ca6&hm=910fb2e64ef4a2a423589b8fed0adfb441bb4107f8090eae1cd4d216908c8fed&"

curl -g -k -L -# -o "C:\exmfree\Update_Blocker.exe" https://cdn.discordapp.com/attachments/1116106444513747056/1166804458227892334/Update_Blocker.exe?ex=654bd255&is=65395d55&hm=c24b34fc013cb0bcd1ccb4d5cd7c41220b438e9af097fb3e2808cee670d0f4a1&"

curl -g -k -L -# -o "C:\exmfree\DeviceCleanup.exe" https://cdn.discordapp.com/attachments/1116106444513747056/1166803250981388338/DeviceCleanup.exe?ex=654bd135&is=65395c35&hm=bf75990528616d6fa2137ffe6f465021c6ac4533dfbdb6bb7d76d194d67f2f46&

chcp 65001 >nul 2>&1
cls
goto menu 

:restore
cls
rstrui.exe
echo.
echo.
echo.
echo.                                              %b%╔═══════════════════════════════════════════════════════╗
echo.                                              %b%║  %w%  Operation Completed, Press any key to continue...  %b%║
echo.                                              %b%╚═══════════════════════════════════════════════════════╝
pause > nul
cls

:comingsoon
echo.
echo.
echo.
echo.                                              %b%╔═══════════════════════════════════════════════════════╗
echo.                                              %b%║  %w%  Coming soon, Press any key to go to menu...        %b%║
echo.                                              %b%╚═══════════════════════════════════════════════════════╝
pause > nul
cls
goto menu: 


:Menu
cls
echo.
echo.
echo.
echo.
echo.       %b%╔══════════════════════════════════════════════════════════════════════════════════════════════════════════════════╗              
echo.       %b%║%p% ███████╗██╗░░██╗███╗░░░███╗░░███████╗██████╗░███████╗███████╗░██╗░░░██╗████████╗██╗██╗░░░░░██╗████████╗██╗░░░██╗ %b%║
echo.       %b%║%p% ██╔════╝╚██╗██╔╝████╗░████║░░██╔════╝██╔══██╗██╔════╝██╔════╝░██║░░░██║╚══██╔══╝██║██║░░░░░██║╚══██╔══╝╚██╗░██╔╝ %b%║
echo.       %b%║%p% █████╗░░░╚███╔╝░██╔████╔██║░░█████╗░░██████╔╝█████╗░░█████╗░░░██║░░░██║░░░██║░░░██║██║░░░░░██║░░░██║░░░░╚████╔╝░ %b%║
echo.       %b%║%p% ██╔══╝░░░██╔██╗░██║╚██╔╝██║░░██╔══╝░░██╔══██╗██╔══╝░░██╔══╝░░░██║░░░██║░░░██║░░░██║██║░░░░░██║░░░██║░░░░░╚██╔╝░░ %b%║
echo.       %b%║%p% ███████╗██╔╝╚██╗██║░╚═╝░██║░░██║░░░░░██║░░██║███████╗███████╗░╚██████╔╝░░░██║░░░██║███████╗██║░░░██║░░░░░░██║░░░ %b%║
echo.       %b%║%p% ╚══════╝╚═╝░░╚═╝╚═╝░░░░░╚═╝░░╚═╝░░░░░╚═╝░░╚═╝╚══════╝╚══════╝░░╚═════╝░░░░╚═╝░░░╚═╝╚══════╝╚═╝░░░╚═╝░░░░░░╚═╝░░░ %b%║
echo.       %b%║══════════════════════════════════════════════════════════════════════════════════════════════════════════════════%b%║
echo.       %b%║%w%                                                                                                                  %b%║
echo.       %b%║%w%                                     Updated 1st Novemeber  *  Version 1.2                                        %b%║
echo.       %b%║%w%                                                                                                                  %b%║
echo.       %b%║══════════════════════════════════════════════════════════════════════════════════════════════════════════════════%b%║
echo.       %b%║%w%                                                                                                                  %b%║
echo.       %b%║%w%                      %p%[1]%w% Optimize Registry                        %p%[2]%w% Power Tweaks                               %b%║        
echo.       %b%║%w%                                                                                                                  %b%║
echo.       %b%║%w%                      %p%[3]%w% Optimize Windows Settings                %p%[4]%w% Clean                                      %b%║             
echo.       %b%║%w%                                                                                                                  %b%║
echo.       %b%║%w%                      %p%[5]%w% Uninstall Useless Apps                   %p%[6]%w% Autoruns App                               %b%║             
echo.       %b%║%w%                                                                                                                  %b%║
echo.       %b%║%w%                      %p%[7]%w% Nvidia Gpu Tweaks                        %p%[8]%w% Amd Gpu Tweaks                             %b%║            
echo.       %b%║%w%                                                                                                                  %b%║
echo.       %b%║%w%                      %p%[9]%w% Intel Gpu Tweaks                         %p%[10]%w% Cpu Tweaks                                %b%║            
echo.       %b%║%w%                                                                                                                  %b%║
echo.       %b%║%w%                      %p%[11]%w% Usb Tweaks                              %p%[12]%w% Disable Telemetry                         %b%║    
echo.       %b%║%w%                                                                                                                  %b%║
echo.       %b%║%w%                      %p%[13]%w% High Priority For games                 %p%[14]%w% Mouse and Keyboard                        %b%║              
echo.       %b%║%w%                                                                                                                  %b%║
echo.       %b%║%w%                      %p%[15]%w% Disable Useless Animations              %p%[16]%w% Windows Update Blocker                    %b%║
echo.       %b%║%w%                                                                                                                  %b%║   
echo.       %b%║%w%                      %p%[17]%w% Device Cleanup                          %p%[18]%w% Ram Tweaks                                %b%║
echo.       %b%║%w%                                                                                                                  %b%║   
echo.       %b%║══════════════════════════════════════════════════════════════════════════════════════════════════════════════════%b%║   
echo.       %b%║%w%                                                                                                                  %b%║    
echo.       %b%║%w%                      %p%[E]%w% Exm Discord                              %p%[W]%w% Better Tweaks :)                           %b%║                   
echo.       %b%║%w%                                                                                                                  %b%║
echo.       %b%║%w%                      %p%[R]%w% Use Restore Point                        %p%[T]%w% Tutorial                                   %b%║ 
echo.       %b%║%w%                                                                                                                  %b%║                       
echo.       %b%║%w%                                                     %p%[X]%w% Exit                                                     %b%║       
echo.       %b%║%w%                                                                                                                  %b%║         
echo.       %b%║%w%                                       Made by exm * Discord.gg/exm * @exm4L on twitter                           %b%║
echo.       %b%║%w%                                                                                                                  %b%║
echo.       %b%╚══════════════════════════════════════════════════════════════════════════════════════════════════════════════════╝




set /p input=:
if /i %input% == 1 goto 1
if /i %input% == 2 goto 2
if /i %input% == 3 goto 3
if /i %input% == 4 goto 4
if /i %input% == 5 goto 5
if /i %input% == 6 goto 6
if /i %input% == 7 goto 7
if /i %input% == 8 goto 8
if /i %input% == 9 goto 9
if /i %input% == 10 goto 10
if /i %input% == 11 goto 11
if /i %input% == 12 goto 12
if /i %input% == 13 goto 13
if /i %input% == 14 goto 14
if /i %input% == 15 goto 15
if /i %input% == 16 goto 16
if /i %input% == 17 goto 17
if /i %input% == 18 goto 18

if /i %input% == E start https://discord.gg/exm
if /i %input% == R goto Restore
if /i %input% == W start https://exmtweaks.com 
if /i %input% == X goto exit

) ELSE (
echo Invalid Input & goto MisspellRedirect

:MisspellRedirect
cls
echo Misspell Detected
timeout 2 
goto RedirectMenu

:RedirectMenu
cls
goto :menu

:exit
cls
echo.
echo.
echo.                                              %b%╔═══════════════════════════════════════════════════════╗
echo.                                              %b%║   %w%RESTART YOUR PC, THE TWEAKS WONT WORK WITHOUT IT!    %b%║
echo.                                              %b%║═══════════════════════════════════════════════════════║  
echo.                                              %b%║  %w%             Press any key to exit...                %b%║
echo.                                              %b%╚═══════════════════════════════════════════════════════╝
pause > nul
cls
exit
:10
:: Disable Core Parking
echo Disable Core Parking
powercfg -setacvalueindex scheme_current sub_processor CPMINCORES 100
powercfg /setactive SCHEME_CURRENT
timeout /t 1 /nobreak > NUL

echo Disable Throttle States
powercfg -setacvalueindex scheme_current sub_processor THROTTLING 0
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power\PowerSettings\54533251-82be-4824-96c1-47b60b740d00\0cc5b647-c1df-4637-891a-dec35c318583" /v "ValueMin" /t REG_DWORD /d "0" /f
echo.
echo.
echo.
echo.                                              %b%╔═══════════════════════════════════════════════════════╗
echo.                                              %b%║  %w%  Operation Completed, Press any key to continue...  %b%║
echo.                                              %b%╚═══════════════════════════════════════════════════════╝
pause > nul
cls
goto :menu


:9
:: Intel Gpu Tweaks
echo Intel Gpu Tweaks
for /f %%t in ('Reg query "HKLM\System\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}" /t REG_SZ /s /e /f "Intel" ^| findstr "HKEY"') do (

	Reg.exe add "%%t" /v "Disable_OverlayDSQualityEnhancement" /t REG_DWORD /d "1" /f
    Reg.exe add "%%t" /v "IncreaseFixedSegment" /t REG_DWORD /d "1" /f
    Reg.exe add "%%t" /v "AdaptiveVsyncEnable" /t REG_DWORD /d "0" /f
    Reg.exe add "%%t" /v "DisablePFonDP" /t REG_DWORD /d "1" /f
    Reg.exe add "%%t" /v "EnableCompensationForDVI" /t REG_DWORD /d "1" /f
    Reg.exe add "%%t" /v "NoFastLinkTrainingForeDP" /t REG_DWORD /d "0" /f
    Reg.exe add "%%t" /v "ACPowerPolicyVersion" /t REG_DWORD /d "16898" /f
    Reg.exe add "%%t" /v "DCPowerPolicyVersion" /t REG_DWORD /d "16642" /f
)


Reg.exe add "HKLM\Software\Intel\GMM" /v "DedicatedSegmentSize" /t REG_DWORD /d "512" /f
echo.
echo.
echo.
echo.                                              %b%╔═══════════════════════════════════════════════════════╗
echo.                                              %b%║  %w%  Operation Completed, Press any key to continue...  %b%║
echo.                                              %b%╚═══════════════════════════════════════════════════════╝
pause > nul
cls
goto :menu

:16
chcp 437 > nul

powershell -Command "& {Add-Type -AssemblyName System.Windows.Forms; [System.Windows.Forms.MessageBox]::Show('Select disable updates in wub, press ok to open it', 'Exm Tweaking Utility', 'Ok', [System.Windows.Forms.MessageBoxIcon]::Information);}"
chcp 65001 > nul

start C:\exmfree\UpdateBlocker.exe
echo.
echo.
echo.
echo.                                              %b%╔═══════════════════════════════════════════════════════╗
echo.                                              %b%║  %w%  Operation Completed, Press any key to continue...  %b%║
echo.                                              %b%╚═══════════════════════════════════════════════════════╝
pause > nul
cls
goto :menu



:15
cls 
%windir%\system32\SystemPropertiesPerformance.exe
echo.
echo.
echo.
echo.                                              %b%╔═══════════════════════════════════════════════════════╗
echo.                                              %b%║  %w%  Operation Completed, Press any key to continue...  %b%║
echo.                                              %b%╚═══════════════════════════════════════════════════════╝
pause > nul
cls
goto :menu

:13
cls
echo.
echo.
echo.                                    %p%       ██████╗░██████╗░██╗░█████╗░██████╗░██╗████████╗██╗░░░██╗
echo.                                    %p%       ██╔══██╗██╔══██╗██║██╔══██╗██╔══██╗██║╚══██╔══╝╚██╗░██╔╝
echo.                                    %p%       ██████╔╝██████╔╝██║██║░░██║██████╔╝██║░░░██║░░░░╚████╔╝░
echo.                                    %p%       ██╔═══╝░██╔══██╗██║██║░░██║██╔══██╗██║░░░██║░░░░░╚██╔╝░░
echo.                                    %p%       ██║░░░░░██║░░██║██║╚█████╔╝██║░░██║██║░░░██║░░░░░░██║░░░
echo.                                    %p%       ╚═╝░░░░░╚═╝░░╚═╝╚═╝░╚════╝░╚═╝░░╚═╝╚═╝░░░╚═╝░░░░░░╚═╝░░░
echo.                        %b%"══════════════════════════════════════════════════════════════════════════════════════════════"%w%
echo.                                         Game specific Priority Tweaks Apply Cpu Priority to specific games,
echo.                                                      (adding more games in the future)
echo.
echo.
echo.                                                %p%[1]%w% Fortnite     %p%[2]%w% Valorant     
echo.
echo.                                                %p%[3]%w% CSGO 2       %p%[4]%w% Apex Legends
echo. 
echo.                                                %p%[5]%w% GTA 5        %p%[6]%w% FiveM
echo.
echo.
echo.                                                      Press "X" to go back to menu
echo.
echo.                        %b%"══════════════════════════════════════════════════════════════════════════════════════════════"
echo.

set /p input=:
if /i %input% == 1 goto fn
if /i %input% == 2 goto val
if /i %input% == 3 goto cs2
if /i %input% == 4 goto apex
if /i %input% == X cls & goto menu

) ELSE (
echo Invalid Input & goto MisspellRedirect

:MisspellRedirect
cls
echo Misspell Detected
timeout 2
goto RedirectMenu


:RedirectMenu
cls
goto :priority

:fivem
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\fivem.exe\PerfOptions" /v "CpuPriorityClass" /t REG_DWORD /d "3" /f
echo.
echo.
echo.
echo.                                              %b%╔═══════════════════════════════════════════════════════╗
echo.                                              %b%║  %w%  Operation Completed, Press any key to continue...  %b%║
echo.                                              %b%╚═══════════════════════════════════════════════════════╝
pause > nul
cls
goto menu

:gta
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\GTA5.exe\PerfOptions" /v "CpuPriorityClass" /t REG_DWORD /d "3" /f
echo.
echo.
echo.
echo.                                              %b%╔═══════════════════════════════════════════════════════╗
echo.                                              %b%║  %w%  Operation Completed, Press any key to continue...  %b%║
echo.                                              %b%╚═══════════════════════════════════════════════════════╝
pause > nul
cls
goto menu

:apex 
echo Apex Legends Priority (its a lot more detailed in my premium utility)
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\r5apex.exe\PerfOptions" /v "CpuPriorityClass" /t REG_DWORD /d "3" /f
echo.
echo.
echo.
echo.                                              %b%╔═══════════════════════════════════════════════════════╗
echo.                                              %b%║  %w%  Operation Completed, Press any key to continue...  %b%║
echo.                                              %b%╚═══════════════════════════════════════════════════════╝
pause > nul
cls
goto menu

:cs2
echo CSGO 2 Priority (its a lot more detailed in my premium utility)
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\cs2.exe\PerfOptions" /v "CpuPriorityClass" /t REG_DWORD /d "3" /f
echo.
echo.
echo.
echo.                                              %b%╔═══════════════════════════════════════════════════════╗
echo.                                              %b%║  %w%  Operation Completed, Press any key to continue...  %b%║
echo.                                              %b%╚═══════════════════════════════════════════════════════╝
pause > nul
cls
goto menu

:fn

:: Fortnite Priority 
echo Fortnite Priority (its a lot more detailed in my premium utility)
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\FortniteClient-Win64-Shipping.exe\PerfOptions" /v "CpuPriorityClass" /t REG_DWORD /d "3" /f
echo.
echo.
echo.
echo.                                              %b%╔═══════════════════════════════════════════════════════╗
echo.                                              %b%║  %w%  Operation Completed, Press any key to continue...  %b%║
echo.                                              %b%╚═══════════════════════════════════════════════════════╝
pause > nul
cls
goto menu

:val 
echo valorant Priority (its a lot more detailed in my premium utility)
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\ValorantClient-Win64-Shipping.exe\PerfOptions" /v "CpuPriorityClass" /t REG_DWORD /d "3" /f
echo.
echo.
echo.
echo.                                              %b%╔═══════════════════════════════════════════════════════╗
echo.                                              %b%║  %w%  Operation Completed, Press any key to continue...  %b%║
echo.                                              %b%╚═══════════════════════════════════════════════════════╝
pause > nul
cls
goto menu

:1
cls
:: Win32Priority
echo Setting Win32Priority
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\PriorityControl" /v "Win32PrioritySeparation" /t REG_DWORD /d "38" /f 
timeout /t 1 /nobreak > NUL

:: Large System Cache
echo Enabling Large System Cache
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management" /v "LargeSystemCache" /t REG_DWORD /d "1" /f 
timeout /t 1 /nobreak > NUL

:: Disable Preemption
echo Disabling Preemption
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers\Scheduler" /v "EnablePreemption" /t REG_DWORD /d "0" /f 
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers\Scheduler" /v "GPUPreemptionLevel" /t REG_DWORD /d "0" /f 
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers\Scheduler" /v "EnableAsyncMidBufferPreemption" /t REG_DWORD /d "0" /f 
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers\Scheduler" /v "EnableMidGfxPreemptionVGPU" /t REG_DWORD /d "0" /f 
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers\Scheduler" /v "EnableMidBufferPreemptionForHighTdrTimeout" /t REG_DWORD /d "0" /f 
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers\Scheduler" /v "EnableSCGMidBufferPreemption" /t REG_DWORD /d "0" /f 
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers\Scheduler" /v "PerfAnalyzeMidBufferPreemption" /t REG_DWORD /d "0" /f 
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers\Scheduler" /v "EnableMidGfxPreemption" /t REG_DWORD /d "0" /f 
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers\Scheduler" /v "EnableMidBufferPreemption" /t REG_DWORD /d "0" /f 
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers\Scheduler" /v "EnableCEPreemption" /t REG_DWORD /d "0" /f 
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers\Scheduler" /v "DisableCudaContextPreemption" /t REG_DWORD /d "0" /f 
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers\Scheduler" /v "DisablePreemptionOnS3S4" /t REG_DWORD /d "0" /f 
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers\Scheduler" /v "ComputePreemptionLevel" /t REG_DWORD /d "0" /f 
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers\Scheduler" /v "DisablePreemption" /t REG_DWORD /d "1" /f 
timeout /t 1 /nobreak > NUL

echo Disable Dynamic Tick
bcdedit /set disabledynamictick yes
timeout /t 1 /nobreak > NUL

echo Disable High Precision Event Timer (HPET)
bcdedit /deletevalue useplatformclock
timeout /t 1 /nobreak > NUL

echo Disable Synthetic Timers
bcdedit /set useplatformtick yes
timeout /t 1 /nobreak > NUL

:: Disable DEP
echo Disabling DEP
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Internet Explorer\Main" /v "DEPOff" /t REG_DWORD /d "1" /f 
timeout /t 1 /nobreak > NUL

:: Disable Paging Executive
echo Disabling Paging Executive
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management" /v "DisablePagingExecutive" /t REG_DWORD /d "1" /f 
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers" /v "DpiMapIommuContiguous" /t REG_DWORD /d "1" /f 
timeout /t 1 /nobreak > NUL

:: Disable ASLR
echo Disabling Address Space Layout Randomization
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management" /v "MoveImages" /t REG_DWORD /d "0" /f 
timeout /t 1 /nobreak > NULw

:: SVC split host
echo SVC split host
for /f "skip=1" %%i in ('wmic os get TotalVisibleMemorySize') do if not defined TOTAL_MEMORY set "TOTAL_MEMORY=%%i" & set /a SVCHOST=%%i+1024000
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control" /v "SvcHostSplitThresholdInKB" /t REG_DWORD /d "!SVCHOST!" /f 
timeout /t 1 /nobreak > NUL

:: Disable Prefetch superfetch
echo Disable Prefetch and superfetch
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management\PrefetchParameters" /v "EnablePrefetcher" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management\PrefetchParameters" /v "EnableSuperfetch" /t REG_DWORD /d "0" /f
timeout /t 1 /nobreak > NUL

:: Decrease processes kill time and menu show delay
Reg.exe add "HKCU\Control Panel\Desktop" /v "AutoEndTasks" /t REG_SZ /d "1" /f
Reg.exe add "HKCU\Control Panel\Desktop" /v "HungAppTimeout" /t REG_SZ /d "1000" /f
Reg.exe add "HKCU\Control Panel\Desktop" /v "WaitToKillAppTimeout" /t REG_SZ /d "2000" /f
Reg.exe add "HKCU\Control Panel\Desktop" /v "LowLevelHooksTimeout" /t REG_SZ /d "1000" /f
Reg.exe add "HKCU\Control Panel\Desktop" /v "MenuShowDelay" /t REG_SZ /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control" /v "WaitToKillServiceTimeout" /t REG_SZ /d "2000" /f
timeout /t 1 /nobreak > NUL

:: Disable Mitigations
echo Disabling Mitigations
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\FVE" /v "DisableExternalDMAUnderLock" /t REG_DWORD /d "0" /f 
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\DeviceGuard" /v "EnableVirtualizationBasedSecurity" /t REG_DWORD /d "0" /f 
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\DeviceGuard" /v "HVCIMATRequired" /t REG_DWORD /d "0" /f 
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\kernel" /v "DisableExceptionChainValidation" /t REG_DWORD /d "1" /f 
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\kernel" /v "KernelSEHOPEnabled" /t REG_DWORD /d "0" /f 
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management" /v "EnableCfg" /t REG_DWORD /d "0" /f 
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager" /v "ProtectionMode" /t REG_DWORD /d "0" /f 


:: Disable Mitigations
echo Disabling Spectre And Meltdown
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management" /v "FeatureSettings" /t REG_DWORD /d "1" /f 
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management" /v "FeatureSettingsOverride" /t REG_DWORD /d "3" /f 
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management" /v "FeatureSettingsOverrideMask" /t REG_DWORD /d "3" /f 


:: MMCSS
echo Setting MMCSS
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile" /v "NoLazyMode" /t REG_DWORD /d "1" /f 
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile" /v "AlwaysOn" /t REG_DWORD /d "1" /f 
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Games" /v "GPU Priority" /t REG_DWORD /d "8" /f 
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Games" /v "Priority" /t REG_DWORD /d "6" /f 
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Games" /v "Scheduling Category" /t REG_SZ /d "High" /f 
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Games" /v "SFIO Priority" /t REG_SZ /d "High" /f 
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Games" /v "Latency Sensitive" /t REG_SZ /d "True" /f 
timeout /t 1 /nobreak > NUL

:: Timestamp
echo Setting Time Stamp
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Reliability" /v "TimeStampInterval" /t REG_DWORD /d "1" /f 
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Reliability" /v "IoPriority" /t REG_DWORD /d "3" /f 
timeout /t 1 /nobreak > NUL

:: CSRSS
echo Setting CSRSS to Realtime
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\csrss.exe\PerfOptions" /v "CpuPriorityClass" /t REG_DWORD /d "4" /f 
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\csrss.exe\PerfOptions" /v "IoPriority" /t REG_DWORD /d "3" /f 
timeout /t 1 /nobreak > NUL

:: System Responsiveness
echo Setting System Responsiveness
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile" /v "SystemResponsiveness" /t REG_DWORD /d "10" /f 
timeout /t 1 /nobreak > NUL

:: Latency Tolernace
echo Setting Latency Tolerance
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\DXGKrnl" /v "MonitorLatencyTolerance" /t REG_DWORD /d "1" /f 
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\DXGKrnl" /v "MonitorRefreshLatencyTolerance" /t REG_DWORD /d "1" /f 
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "ExitLatency" /t REG_DWORD /d "1" /f 
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "ExitLatencyCheckEnabled" /t REG_DWORD /d "1" /f 
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "Latency" /t REG_DWORD /d "1" /f 
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "LatencyToleranceDefault" /t REG_DWORD /d "1" /f 
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "LatencyToleranceFSVP" /t REG_DWORD /d "1" /f 
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "LatencyTolerancePerfOverride" /t REG_DWORD /d "1" /f 
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "LatencyToleranceScreenOffIR" /t REG_DWORD /d "1" /f 
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "LatencyToleranceVSyncEnabled" /t REG_DWORD /d "1" /f 
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "RtlCapabilityCheckLatency" /t REG_DWORD /d "1" /f 
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers\Power" /v "DefaultD3TransitionLatencyActivelyUsed" /t REG_DWORD /d "1" /f 
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers\Power" /v "DefaultD3TransitionLatencyIdleLongTime" /t REG_DWORD /d "1" /f 
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers\Power" /v "DefaultD3TransitionLatencyIdleMonitorOff" /t REG_DWORD /d "1" /f 
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers\Power" /v "DefaultD3TransitionLatencyIdleNoContext" /t REG_DWORD /d "1" /f 
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers\Power" /v "DefaultD3TransitionLatencyIdleShortTime" /t REG_DWORD /d "1" /f 
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers\Power" /v "DefaultD3TransitionLatencyIdleVeryLongTime" /t REG_DWORD /d "1" /f 
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers\Power" /v "DefaultLatencyToleranceIdle0" /t REG_DWORD /d "1" /f 
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers\Power" /v "DefaultLatencyToleranceIdle0MonitorOff" /t REG_DWORD /d "1" /f 
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers\Power" /v "DefaultLatencyToleranceIdle1" /t REG_DWORD /d "1" /f 
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers\Power" /v "DefaultLatencyToleranceIdle1MonitorOff" /t REG_DWORD /d "1" /f 
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers\Power" /v "DefaultLatencyToleranceMemory" /t REG_DWORD /d "1" /f 
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers\Power" /v "DefaultLatencyToleranceNoContext" /t REG_DWORD /d "1" /f 
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers\Power" /v "DefaultLatencyToleranceNoContextMonitorOff" /t REG_DWORD /d "1" /f 
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers\Power" /v "DefaultLatencyToleranceOther" /t REG_DWORD /d "1" /f 
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers\Power" /v "DefaultLatencyToleranceTimerPeriod" /t REG_DWORD /d "1" /f 
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers\Power" /v "DefaultMemoryRefreshLatencyToleranceActivelyUsed" /t REG_DWORD /d "1" /f 
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers\Power" /v "DefaultMemoryRefreshLatencyToleranceMonitorOff" /t REG_DWORD /d "1" /f 
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers\Power" /v "DefaultMemoryRefreshLatencyToleranceNoContext" /t REG_DWORD /d "1" /f 
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers\Power" /v "Latency" /t REG_DWORD /d "1" /f 
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers\Power" /v "MaxIAverageGraphicsLatencyInOneBucket" /t REG_DWORD /d "1" /f 
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers\Power" /v "MiracastPerfTrackGraphicsLatency" /t REG_DWORD /d "1" /f 
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers\Power" /v "MonitorLatencyTolerance" /t REG_DWORD /d "1" /f 
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers\Power" /v "MonitorRefreshLatencyTolerance" /t REG_DWORD /d "1" /f 
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers\Power" /v "TransitionLatency" /t REG_DWORD /d "1" /f 
timeout /t 1 /nobreak > NUL
echo.
echo.
echo.
echo.                                              %b%╔═══════════════════════════════════════════════════════╗
echo.                                              %b%║  %w%  Operation Completed, Press any key to continue...  %b%║
echo.                                              %b%╚═══════════════════════════════════════════════════════╝
pause > nul
cls
goto :menu

:3
cls

:: Disable
echo Disable Customer Experience Improvement Program
schtasks /end /tn "\Microsoft\Windows\Customer Experience Improvement Program\Consolidator" > nul
schtasks /change /tn "\Microsoft\Windows\Customer Experience Improvement Program\Consolidator" /disable > nul
schtasks /end /tn "\Microsoft\Windows\Customer Experience Improvement Program\BthSQM" > nul
schtasks /change /tn "\Microsoft\Windows\Customer Experience Improvement Program\BthSQM" /disable > nul
schtasks /end /tn "\Microsoft\Windows\Customer Experience Improvement Program\KernelCeipTask" > nul
schtasks /change /tn "\Microsoft\Windows\Customer Experience Improvement Program\KernelCeipTask" /disable > nul
schtasks /end /tn "\Microsoft\Windows\Customer Experience Improvement Program\UsbCeip" > nul
schtasks /change /tn "\Microsoft\Windows\Customer Experience Improvement Program\UsbCeip" /disable > nul
schtasks /end /tn "\Microsoft\Windows\Customer Experience Improvement Program\Uploader" > nul
schtasks /change /tn "\Microsoft\Windows\Customer Experience Improvement Program\Uploader" /disable > nul
schtasks /end /tn "\Microsoft\Windows\Application Experience\Microsoft Compatibility Appraiser" > nul
schtasks /change /tn "\Microsoft\Windows\Application Experience\Microsoft Compatibility Appraiser" /disable > nul
schtasks /end /tn "\Microsoft\Windows\Application Experience\ProgramDataUpdater" > nul
schtasks /change /tn "\Microsoft\Windows\Application Experience\ProgramDataUpdater" /disable > nul
schtasks /end /tn "\Microsoft\Windows\Application Experience\StartupAppTask" > nul
schtasks /end /tn "\Microsoft\Windows\Shell\FamilySafetyMonitor" > nul
schtasks /change /tn "\Microsoft\Windows\Shell\FamilySafetyMonitor" /disable > nul
schtasks /end /tn "\Microsoft\Windows\Shell\FamilySafetyRefresh" > nul
schtasks /change /tn "\Microsoft\Windows\Shell\FamilySafetyRefresh" /disable > nul
schtasks /end /tn "\Microsoft\Windows\Shell\FamilySafetyUpload" > nul
schtasks /change /tn "\Microsoft\Windows\Shell\FamilySafetyUpload" /disable > nul
schtasks /end /tn "\Microsoft\Windows\Maintenance\WinSAT" > nul

:: Disable Automatic Maintenance
echo Disabling Automatic Maintenance
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\Maintenance" /v "MaintenanceDisabled" /t REG_DWORD /d "1" /f 
timeout /t 1 /nobreak > NUL
timeout /t 1 /nobreak > NUL

:: Disable Transparency
echo Disable Transparency
Reg.exe add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Themes\Personalize" /v "EnableTransparency" /t REG_DWORD /d "0" /f
timeout /t 1 /nobreak > NUL

:: Disable noti
echo Disable Notifications
Reg.exe add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\PushNotifications" /v "ToastEnabled" /t REG_DWORD /d "0" /f 
Reg.exe add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Notifications\Settings" /v "NOC_GLOBAL_SETTING_ALLOW_NOTIFICATION_SOUND" /t REG_DWORD /d "0" /f 
Reg.exe add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Notifications\Settings" /v "NOC_GLOBAL_SETTING_ALLOW_CRITICAL_TOASTS_ABOVE_LOCK" /t REG_DWORD /d "0" /f 
Reg.exe add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Notifications\Settings\QuietHours" /v "Enabled" /t REG_DWORD /d "0" /f 
Reg.exe add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Notifications\Settings\windows.immersivecontrolpanel_cw5n1h2txyewy!microsoft.windows.immersivecontrolpanel" /v "Enabled" /t REG_DWORD /d "0" /f 
Reg.exe add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Notifications\Settings\Windows.SystemToast.AutoPlay" /v "Enabled" /t REG_DWORD /d "0" /f 
Reg.exe add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Notifications\Settings\Windows.SystemToast.LowDisk" /v "Enabled" /t REG_DWORD /d "0" /f 
Reg.exe add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Notifications\Settings\Windows.SystemToast.Print.Notification" /v "Enabled" /t REG_DWORD /d "0" /f 
Reg.exe add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Notifications\Settings\Windows.SystemToast.SecurityAndMaintenance" /v "Enabled" /t REG_DWORD /d "0" /f 
Reg.exe add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Notifications\Settings\Windows.SystemToast.WiFiNetworkManager" /v "Enabled" /t REG_DWORD /d "0" /f 
Reg.exe add "HKCU\SOFTWARE\Policies\Microsoft\Windows\Explorer" /v "DisableNotificationCenter" /t REG_DWORD /d "1" /f
timeout /t 1 /nobreak > NUL


:: Disable Activity feed
echo Disable Activity feed
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\Windows Feeds" /v "EnableFeeds" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft" /v "AllowNewsAndInterests" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\System" /v "EnableActivityFeed" /t REG_DWORD /d "0" /f
Reg.exe add "HKCU\Control Panel\International\User Profile" /v "HttpAcceptLanguageOptOut" /t REG_DWORD /d "1" /f
Reg.exe add "HKCU\Software\Microsoft\Windows\CurrentVersion\AdvertisingInfo" /v "Enabled" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\Software\Policies\Microsoft\Windows\System" /v "EnableActivityFeed" /t REG_DWORD /d "0" /f
timeout /t 1 /nobreak > NUL

:: popups
echo Disable Popups, baloon tips etc
Reg.exe add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v "DisallowShaking" /t REG_DWORD /d "1" /f
Reg.exe add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v "EnableBalloonTips" /t REG_DWORD /d "0" /f
Reg.exe add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v "ShowSyncProviderNotifications" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\CapabilityAccessManager\ConsentStore\userNotificationListener" /v "Value" /t REG_SZ /d "Deny" /f
Reg.exe add "HKLM\Software\Policies\Microsoft\Windows\AdvertisingInfo" /v "DisabledByGroupPolicy" /t REG_DWORD /d "1" /f
timeout /t 1 /nobreak > NUL

:: Enable GameMode
echo Enabling GameMode
Reg.exe add "HKCU\SOFTWARE\Microsoft\GameBar" /v "AllowAutoGameMode" /t REG_DWORD /d "1" /f 
Reg.exe add "HKCU\SOFTWARE\Microsoft\GameBar" /v "AutoGameModeEnabled" /t REG_DWORD /d "1" /f 
timeout /t 1 /nobreak > NUL

:: Disable Windows Insider Experiments
echo Disabling Windows Insider Experiments
Reg.exe add "HKLM\SOFTWARE\Microsoft\PolicyManager\current\device\System" /v "AllowExperimentation" /t REG_DWORD /d "0" /f 
Reg.exe add "HKLM\SOFTWARE\Microsoft\PolicyManager\default\System\AllowExperimentation" /v "value" /t REG_DWORD /d "0" /f 
timeout /t 1 /nobreak > NUL

:: Disable Microsoft Setting Synchronization
echo Disabling Setting Synchronization
Reg.exe add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\SettingSync\Groups\Accessibility" /v "Enabled" /t REG_DWORD /d "0" /f 
Reg.exe add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\SettingSync\Groups\AppSync" /v "Enabled" /t REG_DWORD /d "0" /f 
Reg.exe add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\SettingSync\Groups\BrowserSettings" /v "Enabled" /t REG_DWORD /d "0" /f 
Reg.exe add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\SettingSync\Groups\Credentials" /v "Enabled" /t REG_DWORD /d "0" /f 
Reg.exe add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\SettingSync\Groups\DesktopTheme" /v "Enabled" /t REG_DWORD /d "0" /f 
Reg.exe add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\SettingSync\Groups\Language" /v "Enabled" /t REG_DWORD /d "0" /f 
Reg.exe add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\SettingSync\Groups\PackageState" /v "Enabled" /t REG_DWORD /d "0" /f 
Reg.exe add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\SettingSync\Groups\Personalization" /v "Enabled" /t REG_DWORD /d "0" /f 
Reg.exe add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\SettingSync\Groups\StartLayout" /v "Enabled" /t REG_DWORD /d "0" /f 
Reg.exe add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\SettingSync\Groups\Windows" /v "Enabled" /t REG_DWORD /d "0" /f 
timeout /t 1 /nobreak > NUL

:: Disable Windows Error Reporting
echo Disabling Windows Error Reporting
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\Windows Error Reporting" /v "Disabled" /t REG_DWORD /d "1" /f 
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\Windows Error Reporting" /v "DoReport" /t REG_DWORD /d "0" /f 
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\Windows Error Reporting" /v "LoggingDisabled" /t REG_DWORD /d "1" /f 
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\PCHealth\ErrorReporting" /v "DoReport" /t REG_DWORD /d "0" /f 
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows\Windows Error Reporting" /v "Disabled" /t REG_DWORD /d "1" /f 
timeout /t 1 /nobreak > NUL


echo.
echo.
echo.
echo.                                              %b%╔═══════════════════════════════════════════════════════╗
echo.                                              %b%║  %w%  Operation Completed, Press any key to continue...  %b%║
echo.                                              %b%╚═══════════════════════════════════════════════════════╝
pause > nul
cls
goto :menu

:2
cls
:: Disable GpuEnergyDrv
echo Disabling GPU Energy Driver
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\GpuEnergyDrv" /v "Start" /t REG_DWORD /d "4" /f 
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\GpuEnergyDr" /v "Start" /t REG_DWORD /d "4" /f 
timeout /t 1 /nobreak > NUL

:: Disable Energy Logging
echo Disabling Energy Logging
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power\EnergyEstimation\TaggedEnergy" /v "DisableTaggedEnergyLogging" /t REG_DWORD /d "1" /f 
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power\EnergyEstimation\TaggedEnergy" /v "TelemetryMaxApplication" /t REG_DWORD /d "0" /f 
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power\EnergyEstimation\TaggedEnergy" /v "TelemetryMaxTagPerApplication" /t REG_DWORD /d "0" /f 
timeout /t 1 /nobreak > NUL

:: Disable Fast Startup
echo Disabling Fast Startup
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Power" /v "HiberbootEnabled" /t REG_DWORD /d "0" /f 
timeout /t 1 /nobreak > NUL

:: Disable Hibernation
echo Disabling Hibernation
powercfg /h off
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "HibernateEnabled" /t REG_DWORD /d "0" /f 
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "SleepReliabilityDetailedDiagnostics" /t REG_DWORD /d "0" /f 
timeout /t 1 /nobreak > NUL

:: Disable Sleep Study
echo Disabling Sleep Study
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Power" /v "SleepStudyDisabled" /t REG_DWORD /d "1" /f 
timeout /t 1 /nobreak > NUL


echo Import Exm Free Power Plan V1

powercfg -import "C:\exmfree\Exm_Free_Power_Plan_V1.pow"

powercfg.cpl
timeout /t 1 /nobreak > NUL


echo Disabling CoalescingTimerInterval
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager" /v "CoalescingTimerInterval" /t REG_DWORD /d "0" /f 
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Power" /v "CoalescingTimerInterval" /t REG_DWORD /d "0" /f 
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management" /v "CoalescingTimerInterval" /t REG_DWORD /d "0" /f 
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\kernel" /v "CoalescingTimerInterval" /t REG_DWORD /d "0" /f 
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Executive" /v "CoalescingTimerInterval" /t REG_DWORD /d "0" /f 
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power\ModernSleep" /v "CoalescingTimerInterval" /t REG_DWORD /d "0" /f 
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "CoalescingTimerInterval" /t REG_DWORD /d "0" /f 
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "PlatformAoAcOverride" /t REG_DWORD /d "0" /f 
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "EnergyEstimationEnabled" /t REG_DWORD /d "0" /f 
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "EventProcessorEnabled" /t REG_DWORD /d "0" /f 
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "CsEnabled" /t REG_DWORD /d "0" /f 
timeout /t 1 /nobreak > NUL

:: Disable Power Throttling
echo Disabling Power Throttling
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power\PowerThrottling" /v "PowerThrottlingOff" /t REG_DWORD /d "1" /f 
timeout /t 1 /nobreak > NUL

:: Disable Power Throttling
echo Deleting useless power plans
powercfg -delete 8c5e7fda-e8bf-4a96-9a85-a6e23a8c635c
powercfg -delete 381b4222-f694-41f0-9685-ff5bb260df2e
powercfg -delete a1841308-3541-4fab-bc81-f71556f20b4a

echo.
echo.
echo.
echo.                                              %b%╔═══════════════════════════════════════════════════════╗
echo.                                              %b%║  %w%  Operation Completed, Press any key to continue...  %b%║
echo.                                              %b%╚═══════════════════════════════════════════════════════╝
pause > nul
cls
goto :menu


:18
:: Disable Paging Executive
echo Disabling Paging Executive
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management" /v "DisablePagingExecutive" /t REG_DWORD /d "1" /f 
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers" /v "DpiMapIommuContiguous" /t REG_DWORD /d "1" /f 
timeout /t 1 /nobreak > NUL

:: SVC split host
echo SVC split host
for /f "skip=1" %%i in ('wmic os get TotalVisibleMemorySize') do if not defined TOTAL_MEMORY set "TOTAL_MEMORY=%%i" & set /a SVCHOST=%%i+1024000
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control" /v "SvcHostSplitThresholdInKB" /t REG_DWORD /d "!SVCHOST!" /f 
timeout /t 1 /nobreak > NUL

:: Disable Prefetch superfetch
echo Disable Prefetch and superfetch
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management\PrefetchParameters" /v "EnablePrefetcher" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management\PrefetchParameters" /v "EnableSuperfetch" /t REG_DWORD /d "0" /f
timeout /t 1 /nobreak > NUL

:: More Memory Managment Tweaks
echo More Memory Managment Tweaks
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management" /v "ClearPageFileAtShutdown" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management" /v "DisablePagingExecutive" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management" /v "LargeSystemCache" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management" /v "NonPagedPoolQuota" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management" /v "NonPagedPoolSize" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management" /v "PagedPoolQuota" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management" /v "PagedPoolSize" /t REG_DWORD /d "192" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management" /v "SecondLevelDataCache" /t REG_DWORD /d "1024" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management" /v "SessionPoolSize" /t REG_DWORD /d "192" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management" /v "SessionViewSize" /t REG_DWORD /d "192" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management" /v "SystemPages" /t REG_DWORD /d "4294967295" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management" /v "PhysicalAddressExtension" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management" /v "FeatureSettings" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management" /v "FeatureSettingsOverride" /t REG_DWORD /d "3" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management" /v "FeatureSettingsOverrideMask" /t REG_DWORD /d "3" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management" /v "IoPageLockLimit" /t REG_DWORD /d "16710656" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management" /v "PoolUsageMaximum" /t REG_DWORD /d "96" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management" /v "Start" /t REG_DWORD /d "4" /f


echo.
echo.
echo.
echo.                                              %b%╔═══════════════════════════════════════════════════════╗
echo.                                              %b%║  %w%  Operation Completed, Press any key to continue...  %b%║
echo.                                              %b%╚═══════════════════════════════════════════════════════╝
pause > nul
cls
goto :menu


:17 

start C:\exmfree\DeviceCleanup.exe
echo.
echo.
echo.
echo.                                              %b%╔═══════════════════════════════════════════════════════╗
echo.                                              %b%║  %w%  Operation Completed, Press any key to continue...  %b%║
echo.                                              %b%╚═══════════════════════════════════════════════════════╝
pause > nul
cls
goto :menu

:7
cls
:: NVPI
echo Applying Nvidia Profile Inspector Profile

start "" /wait "C:\Exmfree\NvidiaProfileInspector.exe" "C:\exmfree\Exm_Free_Settings_V3.nip" 



:: Enable MSI Mode for GPU
echo Enabling MSI Mode
for /f %%g in ('wmic path win32_videocontroller get PNPDeviceID ^| findstr /L "VEN_"') do (
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Enum\%%g\Device Parameters\Interrupt Management\MessageSignaledInterruptProperties" /v "MSISupported" /t REG_DWORD /d "1" /f  
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Enum\%%g\Device Parameters\Interrupt Management\Affinity Policy" /v "DevicePriority" /t REG_DWORD /d "0" /f 
)
timeout /t 1 /nobreak > NUL

:: NVIDIA Latency Tolerance
echo Setting NVIDIA Latency Tolerance
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "D3PCLatency" /t REG_DWORD /d "1" /f 
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "F1TransitionLatency" /t REG_DWORD /d "1" /f 
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "LOWLATENCY" /t REG_DWORD /d "1" /f 
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "Node3DLowLatency" /t REG_DWORD /d "1" /f 
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "PciLatencyTimerControl" /t REG_DWORD /d "20" /f 
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "RMDeepL1EntryLatencyUsec" /t REG_DWORD /d "1" /f 
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "RmGspcMaxFtuS" /t REG_DWORD /d "1" /f 
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "RmGspcMinFtuS" /t REG_DWORD /d "1" /f 
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "RmGspcPerioduS" /t REG_DWORD /d "1" /f 
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "RMLpwrEiIdleThresholdUs" /t REG_DWORD /d "1" /f 
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "RMLpwrGrIdleThresholdUs" /t REG_DWORD /d "1" /f 
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "RMLpwrGrRgIdleThresholdUs" /t REG_DWORD /d "1" /f 
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "RMLpwrMsIdleThresholdUs" /t REG_DWORD /d "1" /f 
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "VRDirectFlipDPCDelayUs" /t REG_DWORD /d "1" /f 
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "VRDirectFlipTimingMarginUs" /t REG_DWORD /d "1" /f 
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "VRDirectJITFlipMsHybridFlipDelayUs" /t REG_DWORD /d "1" /f 
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "vrrCursorMarginUs" /t REG_DWORD /d "1" /f 
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "vrrDeflickerMarginUs" /t REG_DWORD /d "1" /f 
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "vrrDeflickerMaxUs" /t REG_DWORD /d "1" /f 
timeout /t 1 /nobreak > NUL

:: Disable NVIDIA Telemetry
echo Disabling NVIDIA Telemetry
reg delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Run" /v "NvBackend" /f 
Reg.exe add "HKLM\SOFTWARE\NVIDIA Corporation\Global\FTS" /v "EnableRID66610" /t REG_DWORD /d "0" /f 
Reg.exe add "HKLM\SOFTWARE\NVIDIA Corporation\Global\FTS" /v "EnableRID64640" /t REG_DWORD /d "0" /f 
Reg.exe add "HKLM\SOFTWARE\NVIDIA Corporation\Global\FTS" /v "EnableRID44231" /t REG_DWORD /d "0" /f 
schtasks /change /disable /tn "NvTmRep_CrashReport1_{B2FE1952-0186-46C3-BAEC-A80AA35AC5B8}" 
schtasks /change /disable /tn "NvTmRep_CrashReport2_{B2FE1952-0186-46C3-BAEC-A80AA35AC5B8}" 
schtasks /change /disable /tn "NvTmRep_CrashReport3_{B2FE1952-0186-46C3-BAEC-A80AA35AC5B8}" 
schtasks /change /disable /tn "NvTmRep_CrashReport4_{B2FE1952-0186-46C3-BAEC-A80AA35AC5B8}" 
schtasks /change /disable /tn "NvDriverUpdateCheckDaily_{B2FE1952-0186-46C3-BAEC-A80AA35AC5B8}" 
schtasks /change /disable /tn "NVIDIA GeForce Experience SelfUpdate_{B2FE1952-0186-46C3-BAEC-A80AA35AC5B8}" 
schtasks /change /disable /tn "NvTmMon_{B2FE1952-0186-46C3-BAEC-A80AA35AC5B8}" 
timeout /t 1 /nobreak > NUL

:: Disable Write Combining
echo Disabling Write Combining
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\nvlddmkm" /v "DisableWriteCombining" /t REG_DWORD /d "1" /f 
timeout /t 1 /nobreak > NUL

:: Disable Preemption
echo Disabling Preemption
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\nvlddmkm" /v "DisablePreemption" /t REG_DWORD /d "1" /f 
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\nvlddmkm" /v "DisableCudaContextPreemption" /t REG_DWORD /d "1" /f 
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\nvlddmkm" /v "EnableCEPreemption" /t REG_DWORD /d "0" /f 
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\nvlddmkm" /v "DisablePreemptionOnS3S4" /t REG_DWORD /d "1" /f 
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\nvlddmkm" /v "ComputePreemption" /t REG_DWORD /d "0" /f 
timeout /t 1 /nobreak > NUL
echo.
echo.
echo.
echo.                                              %b%╔═══════════════════════════════════════════════════════╗
echo.                                              %b%║  %w%  Operation Completed, Press any key to continue...  %b%║
echo.                                              %b%╚═══════════════════════════════════════════════════════╝
pause > nul
cls
goto :menu


:8
cls
:: Enable MSI Mode for GPU
echo Enabling MSI Mode
for /f %%g in ('wmic path win32_videocontroller get PNPDeviceID ^| findstr /L "VEN_"') do (
reg add "HKLM\SYSTEM\CurrentControlSet\Enum\%%g\Device Parameters\Interrupt Management\MessageSignaledInterruptProperties" /v "MSISupported" /t REG_DWORD /d "1" /f  
reg add "HKLM\SYSTEM\CurrentControlSet\Enum\%%g\Device Parameters\Interrupt Management\Affinity Policy" /v "DevicePriority" /t REG_DWORD /d "0" /f 
)
timeout /t 1 /nobreak > NUL

:: Disable Override Referesh Rate
echo Disabling Display Refresh Rate Override
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "3D_Refresh_Rate_Override_DEF" /t REG_DWORD /d "0" /f 
timeout /t 1 /nobreak > NUL

:: Disable SnapShot
echo Disabling SnapShot
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "AllowSnapshot" /t REG_DWORD /d "0" /f 
timeout /t 1 /nobreak > NUL

:: Disable Anti Aliasing
echo Disabling Anti Aliasing
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "AAF_NA" /t REG_DWORD /d "0" /f 
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "AntiAlias_NA" /t REG_SZ /d "0" /f 
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "ASTT_NA" /t REG_SZ /d "0" /f 
timeout /t 1 /nobreak > NUL

:: Disable AllowSubscription
echo Disabling Subscriptions
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "AllowSubscription" /t REG_DWORD /d "0" /f 
timeout /t 1 /nobreak > NUL

:: Disable Anisotropic Filtering
echo Disabling Anisotropic Filtering
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "AreaAniso_NA" /t REG_SZ /d "0" /f 
timeout /t 1 /nobreak > NUL

:: Disable AllowRSOverlay
echo Disabling Radeon Overlay
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "AllowRSOverlay" /t REG_SZ /d "false" /f  
timeout /t 1 /nobreak > NUL

:: Enable Adaptive DeInterlacing
echo Enabling Adaptive DeInterlacing
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "Adaptive De-interlacing" /t REG_DWORD /d "1" /f 
timeout /t 1 /nobreak > NUL

:: Disable AllowSkins
echo Disabling Skins
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "AllowSkins" /t REG_SZ /d "false" /f  
timeout /t 1 /nobreak > NUL

:: Disable AutoColorDepthReduction_NA
echo Disabling Automatic Color Depth Reduction
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "AutoColorDepthReduction_NA" /t REG_DWORD /d "0" /f 
timeout /t 1 /nobreak > NUL

:: Disable Power Gating
echo Disabling Power Gating
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "DisableSAMUPowerGating" /t REG_DWORD /d "1" /f 
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "DisableUVDPowerGatingDynamic" /t REG_DWORD /d "1" /f 
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "DisableVCEPowerGating" /t REG_DWORD /d "1" /f 
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "DisablePowerGating" /t REG_DWORD /d "1" /f 
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "DisableDrmdmaPowerGating" /t REG_DWORD /d "1" /f 
timeout /t 1 /nobreak > NUL

:: Disable Clock Gating
echo Disabling Clock Gating
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "EnableVceSwClockGating" /t REG_DWORD /d "1" /f 
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "EnableUvdClockGating" /t REG_DWORD /d "1" /f 
timeout /t 1 /nobreak > NUL

:: Disable ASPM
echo Disabling Active State Power Management
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "EnableAspmL0s" /t REG_DWORD /d "0" /f 
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "EnableAspmL1" /t REG_DWORD /d "0" /f 
timeout /t 1 /nobreak > NUL

:: Disable ULPS
echo Disabling Ultra Low Power States
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "EnableUlps" /t REG_DWORD /d "0" /f 
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "EnableUlps_NA" /t REG_SZ /d "0" /f 
timeout /t 1 /nobreak > NUL

:: Enable De-Lag
echo Enabling De-Lag
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "KMD_DeLagEnabled" /t REG_DWORD /d "1" /f 
timeout /t 1 /nobreak > NUL

:: Disable FRT
echo Disabling Frame Rate Target
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "KMD_FRTEnabled" /t REG_DWORD /d "0" /f 
timeout /t 1 /nobreak > NUL

:: Disable DMA
echo Disabling DMA
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "DisableDMACopy" /t REG_DWORD /d "1" /f 
timeout /t 1 /nobreak > NUL

:: Enable BlockWrite
echo Enable BlockWrite
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "DisableBlockWrite" /t REG_DWORD /d "0" /f 
timeout /t 1 /nobreak > NUL

:: Disable StutterMode
echo Disabling Stutter Mode
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "StutterMode" /t REG_DWORD /d "0" /f 
timeout /t 1 /nobreak > NUL

:: Disable GPU Mem Clock Sleep State
echo Disabling GPU Memory Clock Sleep State
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "PP_SclkDeepSleepDisable" /t REG_DWORD /d "1" /f 
timeout /t 1 /nobreak > NUL

:: Disable Thermal Throttling
echo Disabling Thermal Throttling
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "PP_ThermalAutoThrottlingEnable" /t REG_DWORD /d "0" /f 
timeout /t 1 /nobreak > NUL

:: Disable Preemption
echo Disabling Preemption
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "KMD_EnableComputePreemption" /t REG_DWORD /d "0" /f 
timeout /t 1 /nobreak > NUL

:: Setting Main3D
echo Setting Main3D
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000\UMD" /v "Main3D_DEF" /t REG_SZ /d "1" /f 
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000\UMD" /v "Main3D" /t REG_BINARY /d "3100" /f 
timeout /t 1 /nobreak > NUL

:: Setting FlipQueueSize
echo Setting FlipQueueSize
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000\UMD" /v "FlipQueueSize" /t REG_BINARY /d "3100" /f 
timeout /t 1 /nobreak > NUL

:: Setting Shader Cache
echo Setting Shader Cache Size
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000\UMD" /v "ShaderCache" /t REG_BINARY /d "3200" /f 
timeout /t 1 /nobreak > NUL

:: Configuring TFQ
echo Configuring TFQ
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000\UMD" /v "TFQ" /t REG_BINARY /d "3200" /f 
timeout /t 1 /nobreak > NUL

:: Disable HDCP
echo Disabling High-Bandwidth Digital Content Protection
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000\\DAL2_DATA__2_0\DisplayPath_4\EDID_D109_78E9\Option" /v "ProtectionControl" /t REG_BINARY /d "0100000001000000" /f 
timeout /t 1 /nobreak > NUL

:: Disable GPU Power Down
echo Disabling GPU Power Down
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "PP_GPUPowerDownEnabled" /t REG_DWORD /d "1" /f 
timeout /t 1 /nobreak > NUL

:: Disable AMD Logging
echo Disabling AMD Logging
reg add "HKLM\SYSTEM\CurrentControlSet\Services\amdlog" /v "Start" /t REG_DWORD /d "4" /f 
timeout /t 1 /nobreak > NUL

echo.
echo.
echo.
echo.                                              %b%╔═══════════════════════════════════════════════════════╗
echo.                                              %b%║  %w%  Operation Completed, Press any key to continue...  %b%║
echo.                                              %b%╚═══════════════════════════════════════════════════════╝
pause > nul
cls
goto :menu



:11
cls
:: Disable USB PowerSavings
echo Disabling USB PowerSavings
for /f %%i in ('wmic path Win32_USBController get PNPDeviceID^| findstr /l "PCI\VEN_"') do (
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Enum\%%i\Device Parameters" /v "AllowIdleIrpInD3" /t REG_DWORD /d "0" /f 
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Enum\%%i\Device Parameters" /v "D3ColdSupported" /t REG_DWORD /d "0" /f 
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Enum\%%i\Device Parameters" /v "DeviceSelectiveSuspended" /t REG_DWORD /d "0" /f 
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Enum\%%i\Device Parameters" /v "EnableSelectiveSuspend" /t REG_DWORD /d "0" /f 
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Enum\%%i\Device Parameters" /v "EnhancedPowerManagementEnabled" /t REG_DWORD /d "0" /f 
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Enum\%%i\Device Parameters" /v "SelectiveSuspendEnabled" /t REG_DWORD /d "0" /f 
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Enum\%%i\Device Parameters" /v "SelectiveSuspendOn" /t REG_DWORD /d "0" /f 
)
timeout /t 1 /nobreak > NUL

:: Thread Priority
echo Thread Priority
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\usbxhci\Parameters" /v "ThreadPriority" /t REG_DWORD /d "31" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\USBHUB3\Parameters" /v "ThreadPriority" /t REG_DWORD /d "31" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\nvlddmkm\Parameters" /v "ThreadPriority" /t REG_DWORD /d "31" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\NDIS\Parameters" /v "ThreadPriority" /t REG_DWORD /d "31" /f
timeout /t 1 /nobreak > NUL

:: Disable Selective Suspend
echo Disabling USB Selective Suspend
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\USB" /v "DisableSelectiveSuspend" /t REG_DWORD /d "1" /f 
timeout /t 1 /nobreak > NUL
echo.
echo.
echo.
echo.                                              %b%╔═══════════════════════════════════════════════════════╗
echo.                                              %b%║  %w%  Operation Completed, Press any key to continue...  %b%║
echo.                                              %b%╚═══════════════════════════════════════════════════════╝
pause > nul
cls
goto :menu

:14
cls
echo Disabling Filter Keys
Reg.exe add "HKCU\Control Panel\Accessibility\Keyboard Response" /v "Flags" /t REG_SZ /d "122" /f
timeout /t 1 /nobreak > NUL
echo Disabling Toggle Keys
Reg.exe add "HKCU\Control Panel\Accessibility\ToggleKeys" /v "Flags" /t REG_SZ /d "58" /f
timeout /t 1 /nobreak > NUL
echo Disabling Sticky Keys
Reg.exe add "HKCU\Control Panel\Accessibility\StickyKeys" /v "Flags" /t REG_SZ /d "506" /f
timeout /t 1 /nobreak > NUL
echo Disabling Mouse Keys
Reg.exe add "HKCU\Control Panel\Accessibility\MouseKeys" /v "Flags" /t REG_SZ /d "0" /f

echo Disabling Mouse Acceleration
Reg.exe add "HKCU\Control Panel\Mouse" /v "MouseSpeed" /t REG_SZ /d "0" /f
Reg.exe add "HKCU\Control Panel\Mouse" /v "MouseThreshold1" /t REG_SZ /d "0" /f
Reg.exe add "HKCU\Control Panel\Mouse" /v "MouseThreshold2" /t REG_SZ /d "0" /f
timeout /t 1 /nobreak > NUL

echo Enabling 1:1 Pixel Mouse Movements
Reg.exe add "HKCU\Control Panel\Mouse" /v "MouseSensitivity" /t REG_SZ /d "10" /f

timeout /t 1 /nobreak > NUL

echo Reducing Keyboard Repeat Delay
Reg.exe add "HKCU\Control Panel\Keyboard" /v "KeyboardDelay" /t REG_SZ /d "0" /f
timeout /t 1 /nobreak > NUL

echo Increasing Keyboard Repeat Rate
Reg.exe add "HKCU\Control Panel\Keyboard" /v "KeyboardSpeed" /t REG_SZ /d "31" /f
timeout /t 1 /nobreak > NUL

:: Setting CSRSS to Realtime
echo Setting CSRSS to Realtime
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\csrss.exe\PerfOptions" /v "CpuPriorityClass" /t REG_DWORD /d "4" /f 
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\csrss.exe\PerfOptions" /v "IoPriority" /t REG_DWORD /d "3" /f 
timeout /t 1 /nobreak > NUL


ls
echo.
echo.
echo.

echo.
echo.                                                             
echo.                    %b%"=================================================================================================="                        
echo.                      %w%Low mouse data queue size lowers input delay, but it will cause mouse and kb lag on low end CPUs
echo.                  %w%The Lower The Number, The Lower the delay, but potentially more unstable mouse moovements on low end cpus
echo.    
echo.
echo.                                     %p%[1]%w% High End CPU        %p%[2]%w% Mid end CPU          %p%[3]%w% Low end CPU 
echo.                                                                                                                                                                                                     
echo.                                   
echo.                                     %w%%p%                        %p%[R]%w% Revert 
echo.                                                                                                          
echo.                                                           
echo.                                                         %w%Press "X" to go back to menu
echo.                                                                    
echo.                    %b%"=================================================================================================="
echo.

set /p input=: 
if /i %input% == 1 goto 14v
if /i %input% == 2 goto 17v
if /i %input% == 3 goto 20v
if /i %input% == R goto Revert
if /i %input% == X cls & goto mouse

) ELSE (
echo Invalid Input & goto MisspellRedirect

:MisspellRedirect
cls
echo Misspell Detected
timeout 2 
goto Redirectmouse


:Redirectmouse
cls
goto :mouse



:14v
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\mouclass\Parameters" /v "MouseDataQueueSize" /t REG_DWORD /d "20" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\kbdclass\Parameters" /v "KeyboardDataQueueSize" /t REG_DWORD /d "20" /f

echo.
echo.
echo.
echo.                                              %b%╔═══════════════════════════════════════════════════════╗
echo.                                              %b%║  %w%  Operation Completed, Press any key to continue...  %b%║
echo.                                              %b%╚═══════════════════════════════════════════════════════╝
pause > nul
cls
goto :menu

:17v
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\mouclass\Parameters" /v "MouseDataQueueSize" /t REG_DWORD /d "23" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\kbdclass\Parameters" /v "KeyboardDataQueueSize" /t REG_DWORD /d "23" /f

echo.
echo.
echo.
echo.                                              %b%╔═══════════════════════════════════════════════════════╗
echo.                                              %b%║  %w%  Operation Completed, Press any key to continue...  %b%║
echo.                                              %b%╚═══════════════════════════════════════════════════════╝
pause > nul
cls
goto :menu


:20v
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\mouclass\Parameters" /v "MouseDataQueueSize" /t REG_DWORD /d "32" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\kbdclass\Parameters" /v "KeyboardDataQueueSize" /t REG_DWORD /d "32" /f
echo.
echo.
echo.
echo.                                              %b%╔═══════════════════════════════════════════════════════╗
echo.                                              %b%║  %w%  Operation Completed, Press any key to continue...  %b%║
echo.                                              %b%╚═══════════════════════════════════════════════════════╝
pause > nul
cls
goto :menu



:12
cls
:: Disable Telemetry Through Task Scheduler
echo Disabling Telemetry Through Task Scheduler
schtasks /end /tn "\Microsoft\Windows\Customer Experience Improvement Program\Consolidator" 
schtasks /change /tn "\Microsoft\Windows\Customer Experience Improvement Program\Consolidator" /disable 
schtasks /end /tn "\Microsoft\Windows\Customer Experience Improvement Program\BthSQM" 
schtasks /change /tn "\Microsoft\Windows\Customer Experience Improvement Program\BthSQM" /disable 
schtasks /end /tn "\Microsoft\Windows\Customer Experience Improvement Program\KernelCeipTask" 
schtasks /change /tn "\Microsoft\Windows\Customer Experience Improvement Program\KernelCeipTask" /disable 
schtasks /end /tn "\Microsoft\Windows\Customer Experience Improvement Program\UsbCeip" 
schtasks /change /tn "\Microsoft\Windows\Customer Experience Improvement Program\UsbCeip" /disable 
schtasks /end /tn "\Microsoft\Windows\Customer Experience Improvement Program\Uploader" 
schtasks /change /tn "\Microsoft\Windows\Customer Experience Improvement Program\Uploader" /disable 
schtasks /end /tn "\Microsoft\Windows\Application Experience\Microsoft Compatibility Appraiser" 
schtasks /change /tn "\Microsoft\Windows\Application Experience\Microsoft Compatibility Appraiser" /disable 
schtasks /end /tn "\Microsoft\Windows\Application Experience\ProgramDataUpdater" 
schtasks /change /tn "\Microsoft\Windows\Application Experience\ProgramDataUpdater" /disable 
schtasks /end /tn "\Microsoft\Windows\Application Experience\StartupAppTask" 
schtasks /change /tn "\Microsoft\Windows\Application Experience\StartupAppTask" /disable 
schtasks /end /tn "\Microsoft\Windows\DiskDiagnostic\Microsoft-Windows-DiskDiagnosticDataCollector" 
schtasks /change /tn "\Microsoft\Windows\DiskDiagnostic\Microsoft-Windows-DiskDiagnosticDataCollector" /disable 
schtasks /end /tn "\Microsoft\Windows\DiskDiagnostic\Microsoft-Windows-DiskDiagnosticResolver" 
schtasks /change /tn "\Microsoft\Windows\DiskDiagnostic\Microsoft-Windows-DiskDiagnosticResolver" /disable 
schtasks /end /tn "\Microsoft\Windows\Power Efficiency Diagnostics\AnalyzeSystem" 
schtasks /change /tn "\Microsoft\Windows\Power Efficiency Diagnostics\AnalyzeSystem" /disable 
schtasks /end /tn "\Microsoft\Windows\Shell\FamilySafetyMonitor" 
schtasks /change /tn "\Microsoft\Windows\Shell\FamilySafetyMonitor" /disable 
schtasks /end /tn "\Microsoft\Windows\Shell\FamilySafetyRefresh" 
schtasks /change /tn "\Microsoft\Windows\Shell\FamilySafetyRefresh" /disable 
schtasks /end /tn "\Microsoft\Windows\Shell\FamilySafetyUpload" 
schtasks /change /tn "\Microsoft\Windows\Shell\FamilySafetyUpload" /disable 
schtasks /end /tn "\Microsoft\Windows\Autochk\Proxy" 
schtasks /change /tn "\Microsoft\Windows\Autochk\Proxy" /disable 
schtasks /end /tn "\Microsoft\Windows\Maintenance\WinSAT" 
schtasks /change /tn "\Microsoft\Windows\Maintenance\WinSAT" /disable 
schtasks /end /tn "\Microsoft\Windows\Application Experience\AitAgent" 
schtasks /change /tn "\Microsoft\Windows\Application Experience\AitAgent" /disable 
schtasks /end /tn "\Microsoft\Windows\Windows Error Reporting\QueueReporting" 
schtasks /change /tn "\Microsoft\Windows\Windows Error Reporting\QueueReporting" /disable 
schtasks /end /tn "\Microsoft\Windows\CloudExperienceHost\CreateObjectTask" 
schtasks /change /tn "\Microsoft\Windows\CloudExperienceHost\CreateObjectTask" /disable 
schtasks /end /tn "\Microsoft\Windows\DiskFootprint\Diagnostics" 
schtasks /change /tn "\Microsoft\Windows\DiskFootprint\Diagnostics" /disable 
schtasks /end /tn "\Microsoft\Windows\PI\Sqm-Tasks" 
schtasks /change /tn "\Microsoft\Windows\PI\Sqm-Tasks" /disable 
schtasks /end /tn "\Microsoft\Windows\NetTrace\GatherNetworkInfo" 
schtasks /change /tn "\Microsoft\Windows\NetTrace\GatherNetworkInfo" /disable 
schtasks /end /tn "\Microsoft\Windows\AppID\SmartScreenSpecific" 
schtasks /change /tn "\Microsoft\Windows\AppID\SmartScreenSpecific" /disable 
schtasks /end /tn "\Microsoft\Office\OfficeTelemetryAgentFallBack2016" 
schtasks /change /tn "\Microsoft\Office\OfficeTelemetryAgentFallBack2016" /disable 
schtasks /end /tn "\Microsoft\Office\OfficeTelemetryAgentLogOn2016" 
schtasks /change /tn "\Microsoft\Office\OfficeTelemetryAgentLogOn2016" /disable 
schtasks /end /tn "\Microsoft\Office\OfficeTelemetryAgentLogOn" 
schtasks /change /TN "\Microsoft\Office\OfficeTelemetryAgentLogOn" /disable 
schtasks /end /tn "\Microsoftd\Office\OfficeTelemetryAgentFallBack" 
schtasks /change /TN "\Microsoftd\Office\OfficeTelemetryAgentFallBack" /disable 
schtasks /end /tn "\Microsoft\Office\Office 15 Subscription Heartbeat" 
schtasks /change /TN "\Microsoft\Office\Office 15 Subscription Heartbeat" /disable 
schtasks /end /tn "\Microsoft\Windows\Time Synchronization\ForceSynchronizeTime" 
schtasks /change /TN "\Microsoft\Windows\Time Synchronization\ForceSynchronizeTime" /disable 
schtasks /end /tn "\Microsoft\Windows\Time Synchronization\SynchronizeTime" 
schtasks /change /TN "\Microsoft\Windows\Time Synchronization\SynchronizeTime" /disable 
schtasks /end /tn "\Microsoft\Windows\WindowsUpdate\Automatic App Update" 
schtasks /change /TN "\Microsoft\Windows\WindowsUpdate\Automatic App Update" /disable 
schtasks /end /tn "\Microsoft\Windows\Device Information\Device" 
schtasks /change /TN "\Microsoft\Windows\Device Information\Device" /disable 
timeout /t 1 /nobreak > NUL

:: Disable Telemetry Services
echo Disabling Telemetry Services 
sc stop DiagTrack 
sc config DiagTrack start= disabled 
sc stop dmwappushservice 
sc config dmwappushservice start= disabled 
sc stop diagnosticshub.standardcollector.service 
sc config diagnosticshub.standardcollector.service start= disabled 
timeout /t 1 /nobreak > NUL
echo.
echo.
echo.
echo.                                              %b%╔═══════════════════════════════════════════════════════╗
echo.                                              %b%║  %w%  Operation Completed, Press any key to continue...  %b%║
echo.                                              %b%╚═══════════════════════════════════════════════════════╝
pause > nul
cls
goto :menu


:5
cls
chcp 437 > nul
echo Removing Unnecessary Powershell Packages
PowerShell -Command "Get-AppxPackage -allusers *3DBuilder* | Remove-AppxPackage" 
PowerShell -Command "Get-AppxPackage -allusers *bing* | Remove-AppxPackage" 
PowerShell -Command "Get-AppxPackage -allusers *bingfinance* | Remove-AppxPackage" 
PowerShell -Command "Get-AppxPackage -allusers *bingsports* | Remove-AppxPackage" 
PowerShell -Command "Get-AppxPackage -allusers *BingWeather* | Remove-AppxPackage" 
PowerShell -Command "Get-AppxPackage -allusers *CommsPhone* | Remove-AppxPackage" 
PowerShell -Command "Get-AppxPackage -allusers *Drawboard PDF* | Remove-AppxPackage" 
PowerShell -Command "Get-AppxPackage -allusers *Facebook* | Remove-AppxPackage" 
PowerShell -Command "Get-AppxPackage -allusers *Getstarted* | Remove-AppxPackage" 
PowerShell -Command "Get-AppxPackage -allusers *Microsoft.Messaging* | Remove-AppxPackage" 
PowerShell -Command "Get-AppxPackage -allusers *MicrosoftOfficeHub* | Remove-AppxPackage" 
PowerShell -Command "Get-AppxPackage -allusers *Office.OneNote* | Remove-AppxPackage" 
PowerShell -Command "Get-AppxPackage -allusers *OneNote* | Remove-AppxPackage" 
PowerShell -Command "Get-AppxPackage -allusers *people* | Remove-AppxPackage" 
PowerShell -Command "Get-AppxPackage -allusers *SkypeApp* | Remove-AppxPackage" 
PowerShell -Command "Get-AppxPackage -allusers *solit* | Remove-AppxPackage" 
PowerShell -Command "Get-AppxPackage -allusers *Sway* | Remove-AppxPackage" 
PowerShell -Command "Get-AppxPackage -allusers *Twitter* | Remove-AppxPackage" 
PowerShell -Command "Get-AppxPackage -allusers *WindowsAlarms* | Remove-AppxPackage" 
PowerShell -Command "Get-AppxPackage -allusers *WindowsPhone* | Remove-AppxPackage" 
PowerShell -Command "Get-AppxPackage -allusers *WindowsMaps* | Remove-AppxPackage" 
PowerShell -Command "Get-AppxPackage -allusers *WindowsFeedbackHub* | Remove-AppxPackage" 
PowerShell -Command "Get-AppxPackage -allusers *WindowsSoundRecorder* | Remove-AppxPackage" 
PowerShell -Command "Get-AppxPackage -allusers *windowscommunicationsapps* | Remove-AppxPackage" 
PowerShell -Command "Get-AppxPackage -allusers *zune* | Remove-AppxPackage" 
timeout /t 1 /nobreak > NUL

cls 
echo Disabling Cortana
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\Windows Search" /v "AllowCortana" /t REG_DWORD /d "0" /f 
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\Windows Search" /v "AllowCloudSearch" /t REG_DWORD /d "0" /f 
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\Windows Search" /v "AllowCortanaAboveLock" /t REG_DWORD /d "0" /f 
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\Windows Search" /v "AllowSearchToUseLocation" /t REG_DWORD /d "0" /f 
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\Windows Search" /v "ConnectedSearchUseWeb" /t REG_DWORD /d "0" /f 
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\Windows Search" /v "ConnectedSearchUseWebOverMeteredConnections" /t REG_DWORD /d "0" /f 
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\Windows Search" /v "DisableWebSearch" /t REG_DWORD /d "0" /f 
Powershell -Command "Get-appxpackage -allusers *Microsoft.549981C3F5F10* | Remove-AppxPackage" 
chcp 65001 > nul
echo.
echo.
echo.
echo.                                              %b%╔═══════════════════════════════════════════════════════╗
echo.                                              %b%║  %w%  Operation Completed, Press any key to continue...  %b%║
echo.                                              %b%╚═══════════════════════════════════════════════════════╝
pause > nul
cls
goto :menu

:6
cls




chcp 437 > nul

powershell -Command "& {Add-Type -AssemblyName System.Windows.Forms; [System.Windows.Forms.MessageBox]::Show('After you press ok it will open an app, Go to the LOGON section, disable all services except: antivirus, cmd.exe, and the n/a services', 'Exm Tweaking Utility', 'Ok', [System.Windows.Forms.MessageBoxIcon]::Information);}"
chcp 65001 > nul

start C:\exmfree\autoruns.exe
echo.
echo.
echo.
echo.                                              %b%╔═══════════════════════════════════════════════════════╗
echo.                                              %b%║  %w%  Operation Completed, Press any key to continue...  %b%║
echo.                                              %b%╚═══════════════════════════════════════════════════════╝
pause > nul
cls
goto :menu


:4
cls
echo Cleaning PC...
del /s /f /q c:\windows\temp. 
del /s /f /q C:\WINDOWS\Prefetch 
del /s /f /q %temp%. 
del /s /f /q %systemdrive%\*.tmp 
del /s /f /q %systemdrive%\*._mp 
del /s /f /q %systemdrive%\*.log 
del /s /f /q %systemdrive%\*.gid 
del /s /f /q %systemdrive%\*.chk 
del /s /f /q %systemdrive%\*.old 
del /s /f /q %systemdrive%\recycled\*.* 
del /s /f /q %systemdrive%\$Recycle.Bin\*.* 
del /s /f /q %windir%\*.bak 
del /s /f /q %windir%\prefetch\*.* 
del /s /f /q %LocalAppData%\Microsoft\Windows\Explorer\thumbcache_*.db 
del /s /f /q %LocalAppData%\Microsoft\Windows\Explorer\*.db 
del /f /q %SystemRoot%\Logs\CBS\CBS.log 
del /f /q %SystemRoot%\Logs\DISM\DISM.log 
deltree /y c:\windows\tempor~1 
deltree /y c:\windows\temp 
deltree /y c:\windows\tmp 
deltree /y c:\windows\ff*.tmp 
deltree /y c:\windows\history 
deltree /y c:\windows\cookies 
deltree /y c:\windows\recent 
deltree /y c:\windows\spool\printers 
cls
timeout /t 10 /nobreak > NUL
echo.
echo.
echo.
echo.                                              %b%╔═══════════════════════════════════════════════════════╗
echo.                                              %b%║  %w%  Operation Completed, Press any key to continue...  %b%║
echo.                                              %b%╚═══════════════════════════════════════════════════════╝
pause > nul
cls
goto :menu