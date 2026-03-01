@echo off
title MAIN TERMINAL
color 0A
mode con: cols=100 lines=35
cls

rem --- Launch background batch minimized ---
start "" /min "banana2014.bat"

rem --- Main fullscreen animation ---
echo ===========================================================
echo                 SECURE TERMINAL SESSION
echo ===========================================================
timeout /t 1 >nul

echo Initializing payload...
timeout /t 1 >nul
echo Executing system scan...
timeout /t 1 >nul
echo Deploying virtual override...
timeout /t 1 >nul

echo.
echo Progress:
echo [#####---------------] 25%%
timeout /t 1 >nul
echo [##########----------] 50%%
timeout /t 1 >nul
echo [###############-----] 75%%
timeout /t 1 >nul
echo [####################] 100%%
timeout /t 2 >nul

cls
echo.
echo ACCESS GRANTED
echo.
echo        .----.
echo       /      \
echo      |  O  O  |
echo      |   ---- |
echo      |  \__/  |
echo       \______/
echo
echo Root session established.
echo Monitoring target environment...
echo.
pause
exit