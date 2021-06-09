cls
@echo off
title Backup
:ConfirmChoice
echo Backup E:\Calibrate_Plan to E:\Backup
echo Do you want to backup data (Y/N)
set /p "retV=>"
if %retV%==Y goto goBackup
if %retV%==y goto goBackup
if %retV%==n goto goEnd
if %retV%==N goto goEnd
echo Invalid choice.
goto ConfirmChoice

:goBackup
echo --------------Backup start--------------
robocopy D:\D\เอกสาร "C:\temp" /s /b /r:3 /w:10 /log+:c:\log.txt
echo ==============Backup is complet==============
pause
goto pexit

:goEnd
echo Cancelled backup
pause
:pexit