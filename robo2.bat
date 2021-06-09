:goBackup
echo --------------Backup start--------------
robocopy D:\D\เอกสาร  "C:\temp" /e /b /r:2 /w:2 /log+:C:\log.txt
echo ==============Backup is complet==============
pause
goto pexit