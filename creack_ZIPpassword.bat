REM ============================================================
REM errorcode401.blogspot.in
@echo off
title Rar Password Unlocker
mode con: cols=47 lines=20
copy "C:\Program Files\WinRAR\Unrar.exe"
SET PSWD=0
SET DEST=%TEMP%\%RANDOM%
MD %DEST%
:RAR
cls
echo 覧覧覧覧覧覧覧�-
echo GET DETAIL
echo 覧覧覧覧覧覧覧�-
echo.
SET/P "NAME=Enter File Name : "
IF "%NAME%"=="" goto NERROR
goto GPATH
:NERROR
echo 覧覧覧覧覧覧覧�-
echo ERROR
echo 覧覧覧覧覧覧覧�-
echo Sorry you can't leave it blank.
pause
goto RAR
:GPATH
SET/P "PATH=Enter Full Path : "
IF "%PATH%"=="" goto PERROR
goto NEXT
:PERROR
echo 覧覧覧覧覧覧覧�-
echo ERROR
echo 覧覧覧覧覧覧覧�-
echo Sorry you can't leave it blank.
pause
goto RAR
:NEXT
IF EXIST "%PATH%\%NAME%" GOTO START
goto PATH
:PATH
cls
echo 覧覧覧覧覧覧覧�-
echo ERROR
echo 覧覧覧覧覧覧覧�-
echo Opppss File is not Found..
pause
goto RAR
:START
SET /A PSWD=%PSWD%+1
echo 0 1 0 1 1 1 0 0 1 0 0 1 1 0 0 1 0 1 0 0 1 0 1
echo 1 0 1 0 0 1 0 1 1 1 1 0 0 1 0 0 1 1 1 1 0 0 0
echo 1 1 1 1 1 0 1 1 0 0 0 1 1 0 1 0 1 0 0 0 1 1 1
echo 0 0 0 0 1 1 1 1 1 0 1 0 1 0 1 0 0 1 0 0 0 0 0
echo 1 0 1 0 1 1 1 0 0 1 0 1 0 1 0 0 0 0 1 0 1 0 0
echo 1 1 1 1 1 0 1 1 0 0 0 1 1 0 1 0 1 0 1 1 1 1 0
echo 0 0 0 0 1 1 1 1 1 0 1 0 1 0 1 0 0 0 0 0 1 1 0
echo 1 0 1 0 1 1 1 0 0 1 0 1 0 1 0 0 0 0 1 1 1 1 0
echo 0 1 0 1 1 1 0 0 1 0 0 1 1 0 0 1 0 1 0 0 1 1 0
echo 1 0 1 0 0 1 0 1 1 1 1 0 0 1 0 0 1 0 1 0 1 0 0
echo 0 0 0 0 1 1 1 1 1 0 1 0 1 0 1 0 0 1 1 0 1 0 1
echo 1 0 1 0 1 1 1 0 0 1 0 1 0 1 0 0 0 0 1 0 1 0 0
echo 0 1 0 1 1 1 0 0 1 0 0 1 1 0 0 1 0 1 0 0 1 1 0
echo 1 0 1 0 0 1 0 1 1 1 1 0 0 1 0 0 1 1 0 1 0 0 1
echo 1 1 1 1 1 0 1 1 0 0 0 1 1 0 1 0 1 0 1 1 1 0 0
echo 0 0 0 0 1 1 1 1 1 0 1 0 1 0 1 0 0 1 1 1 0 1 1
echo 1 0 1 0 1 1 1 0 0 1 0 1 0 1 0 0 0 0 0 0 1 1 0
echo 1 0 1 0 0 1 0 1 1 1 1 0 0 1 0 0 1 0 1 0 1 0 0
echo 0 1 0 1 1 1 0 0 1 0 0 1 1 0 0 1 0 1 1 1 0 1 1
echo 1 0 1 0 0 1 0 1 1 1 1 0 0 1 0 0 1 0 0 1 1 0 1
echo 1 1 1 1 1 0 1 1 0 0 0 1 1 0 1 0 1 0 1 1 0 1 1
echo 0 0 0 0 1 1 1 1 1 0 1 0 1 0 1 0 0 1 1 0 1 1 0
echo 1 1 1 1 1 0 1 1 0 0 0 1 1 0 1 0 1 0 1 1 0 0 0
echo 0 0 0 0 1 1 1 1 1 0 1 0 1 0 1 0 0 0 0 1 1 0 1
echo 1 0 1 0 1 1 1 0 0 1 0 1 0 1 0 0 0 0 0 1 0 1 1
UNRAR E -INUL -P%PSWD% "%PATH%\%NAME%" "%DEST%"
IF /I %ERRORLEVEL% EQU 0 GOTO FINISH
GOTO START
:FINISH
RD %DEST% /Q /S
Del "Unrar.exe"
cls
echo 覧覧覧覧覧覧覧�-
echo UNLCKED
echo 覧覧覧覧覧覧覧�-
echo.
echo PASSWORD FOUND!
echo FILE = %NAME%
echo CRACKED PASSWORD = %PSWD%
pause>NUL
exit
REM ============================================================