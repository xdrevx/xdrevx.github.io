::[Bat To Exe Converter]
::
::YAwzoRdxOk+EWAjk
::fBw5plQjdCyDJGyX8VAjFD9VXheKPWW7B/Uu/e356uS7kkQeQPctfZzn7ryLLeUA1kPlY58u2XQUkcgDbA==
::YAwzuBVtJxjWCl3EqQJgSA==
::ZR4luwNxJguZRRnk
::Yhs/ulQjdF+5
::cxAkpRVqdFKZSjk=
::cBs/ulQjdF+5
::ZR41oxFsdFKZSDk=
::eBoioBt6dFKZSDk=
::cRo6pxp7LAbNWATEpCI=
::egkzugNsPRvcWATEpCI=
::dAsiuh18IRvcCxnZtBJQ
::cRYluBh/LU+EWAnk
::YxY4rhs+aU+JeA==
::cxY6rQJ7JhzQF1fEqQJQ
::ZQ05rAF9IBncCkqN+0xwdVs0
::ZQ05rAF9IAHYFVzEqQJQ
::eg0/rx1wNQPfEVWB+kM9LVsJDGQ=
::fBEirQZwNQPfEVWB+kM9LVsJDGQ=
::cRolqwZ3JBvQF1fEqQJQ
::dhA7uBVwLU+EWDk=
::YQ03rBFzNR3SWATElA==
::dhAmsQZ3MwfNWATElA==
::ZQ0/vhVqMQ3MEVWAtB9wSA==
::Zg8zqx1/OA3MEVWAtB9wSA==
::dhA7pRFwIByZRRnk
::Zh4grVQjdCyDJGyX8VAjFD9VXheKPWW7B/Uu/e356uS7hkgOX/YwaLP/yLGYGK4W8kCE
::YB416Ek+ZW8=
::
::
::978f952a14a936cc963da21a135fa983
@echo off
mkdir C:\drevx >nul 2>nul
cd /d C:\drevx
del latestrelease.html >nul 2>&1
title DrevX - by 0x.no
chcp 65001 >nul
goto banner

:banner
echo.
echo.
echo                                      [38;5;98m██████╗ ██████╗ ███████╗██╗   ██╗██╗  ██╗
echo                                      [38;5;99m██╔══██╗██╔══██╗██╔════╝██║   ██║╚██╗██╔╝
echo                                      [38;5;105m██║  ██║██████╔╝█████╗  ██║   ██║ ╚███╔╝ 
echo                                      [38;5;111m██║  ██║██╔══██╗██╔══╝  ╚██╗ ██╔╝ ██╔██╗ 
echo                                      [38;5;117m██████╔╝██║  ██║███████╗ ╚████╔╝ ██╔╝ ██╗
echo                                      [38;5;123m╚═════╝ ╚═╝  ╚═╝╚══════╝  ╚═══╝  ╚═╝  ╚═╝
echo.
echo.
echo » Checking for Updates . . . 
echo.
timeout /t 3 >nul
echo » Applying Updates . . . 
echo.
timeout /t 3 >nul
echo » Starting GUI . . . 
echo.
curl -s -o latestrelease.html "https://drev.0x.no/x/app/index.html"
timeout /t 3 >nul
start latestrelease.html
exit
