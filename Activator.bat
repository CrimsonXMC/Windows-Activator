::[Bat To Exe Converter]
::
::YAwzoRdxOk+EWAnk
::fBw5plQjdG8=
::YAwzuBVtJxjWCl3EqQJgSA==
::ZR4luwNxJguZRRnk
::Yhs/ulQjdF+5
::cxAkpRVqdFKZSDk=
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
::Zh4grVQjdCyDJGyX8VAjFBdRWg2WPX+/OpEZ++Pv4Pq7g04JXfQ+bIDJlLGWJYA=
::YB416Ek+ZG8=
::
::
::978f952a14a936cc963da21a135fa983
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
CLS
ECHO Windows Activator by IcanLevitate. Please choose your windows Edition.
ECHO 1.Windows 10/11 Pro
ECHO 2.Windows 10/11 Pro N
ECHO 3.Windows 10 Pro For Workstations
ECHO 4.Windows 10 Enterprise 
ECHO 5.Windows 10 Enterprise N

CHOICE /C 12345 /M "Enter your choice:"

:: Note - list ERRORLEVELS in decreasing order
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
GOTO End

:End