@echo off

:: BatchGotAdmin
:-------------------------------------
REM  --> Check for permissions
>nul 2>&1 "%SYSTEMROOT%\system32\cacls.exe" "%SYSTEMROOT%\system32\config\system"

REM --> If error flag set, we do not have admin.
if '%errorlevel%' NEQ '0' (
    echo Requesting administrative privileges...
    goto UACPrompt
) else ( goto gotAdmin )

:UACPrompt
    echo Set UAC = CreateObject^("Shell.Application"^) > "%temp%\getadmin.vbs"
    set params = %*:"=""
    echo UAC.ShellExecute "cmd.exe", "/c %~s0 %params%", "", "runas", 1 >> "%temp%\getadmin.vbs"

    "%temp%\getadmin.vbs"
    del "%temp%\getadmin.vbs"
    exit /B

:gotAdmin
    pushd "%CD%"
    CD /D "%~dp0"
:--------------------------------------

@ECHO OFF
color a
CLS
:: this ascii art is really hacky... if someone else wants to remake it to not be hacky, feel free.
powershell -Command "(New-Object Net.WebClient).DownloadFile('https://raw.githubusercontent.com/CrimsonXMC/Windows-Activator/main/ascii.txt', '%tmp%\ascii.txt')"
powershell -Command "Invoke-WebRequest https://raw.githubusercontent.com/CrimsonXMC/Windows-Activator/main/ascii.txt -OutFile %tmp%\ascii.txt"
TYPE %TMP%\ascii.txt
DEL %TMP%\ascii.txt
:: i mean at least i delete the text file after its done with 
ECHO Pick which version of Windows you want to activate.
ECHO 1.Windows 10/11 Pro
ECHO 2.Windows 10/11 Pro N
ECHO 3.Windows 10/11 Pro For Workstations
ECHO 4.Windows 10/11 Enterprise 
ECHO 5.Windows 10/11 Enterprise N
ECHO 6. Windows 10/11 Home
ECHO 7. Windows 10/11 Home N

CHOICE /C 1234567 /M "Enter your choice:"

:: Note - list ERRORLEVELS in decreasing order
IF ERRORLEVEL 7 GOTO W10HOMEN
IF ERRORLEVEL 6 GOTO W10HOME
IF ERRORLEVEL 5 GOTO W10ENTERPRISEN
IF ERRORLEVEL 4 GOTO W10ENTERPRISE
IF ERRORLEVEL 3 GOTO W10PROWORKSTATION
IF ERRORLEVEL 2 GOTO W10PRON
IF ERRORLEVEL 1 GOTO W10PRO

:W10PRO
cd C:\Windows\System32
@ECHO ON
cscript slmgr.vbs /ipk "W269N-WFGWX-YVC9B-4J6C9-T83GX" 
cscript slmgr.vbs /skms kms.lotro.cc
cscript slmgr.vbs /ato
@ECHO OFF
GOTO End

:W10PRON
cd C:\Windows\System32
@ECHO ON
cscript slmgr.vbs /ipk "MH37W-N47XK-V7XM9-C7227-GCQG9" 
cscript slmgr.vbs /skms kms.lotro.cc
cscript slmgr.vbs /ato
@ECHO OFF
pause
GOTO End

:W10PROWORKSTATION
cd C:\Windows\System32
@ECHO ON
cscript slmgr.vbs /ipk "NRG8B-VKK3Q-CXVCJ-9G2XF-6Q84J" 
cscript slmgr.vbs /skms kms.lotro.cc
cscript slmgr.vbs /ato
@ECHO OFF
GOTO End

:W10ENTERPRISE
cd C:\Windows\System32
@ECHO ON
cscript slmgr.vbs /ipk "FWDCX-D2C8J-H872K-2YT43" 
cscript slmgr.vbs /skms kms.lotro.cc
cscript slmgr.vbs /ato
@ECHO OFF
GOTO End

:W10ENTERPRISEN
cd C:\Windows\System32
@ECHO ON
cscript slmgr.vbs /ipk "TTNVB-4X9Q3-TJR4H-KHJW4" 
cscript slmgr.vbs /skms kms.lotro.cc
cscript slmgr.vbs /ato
@ECHO OFF

:W10HOME
cd C:\Windows\System32
@ECHO ON
cscript slmgr.vbs /ipk "TX9XD-98N7V-6WMQ6-BX7FG-H8Q99" 
cscript slmgr.vbs /skms kms.lotro.cc
cscript slmgr.vbs /ato
pause
@ECHO OFF
GOTO END

:W10HOMEN
cd C:\Windows\System32
@ECHO ON
cscript slmgr.vbs /ipk "3KHY7-WNT83-DGQKR-F7HPR-844BM" 
cscript slmgr.vbs /skms kms.lotro.cc
cscript slmgr.vbs /ato
@ECHO OFF
GOTO End

:End
