@echo off
rem "Changes operating directory to directory of winscp.com"
cd "C:\Program Files (x86)\WinSCP"

rem "Writes start of script time to log file, log file location may need to manually be changed."
echo ----Script Start----- >> "C:\SFTP Sync tool\log.txt"
echo %date% %time% >> "C:\SFTP Sync tool\log.txt"
echo --------------------- >> "C:\SFTP Sync tool\log.txt"

rem "Calls winscp.com, sets log file for application and passes script for application. Waits for winscp.com to compl
ete."
WinSCP.com /log=>>"C:\SFTP Sync tool\log.txt" /script="C:\SFTP Sync tool\script.txt" /wait

rem "Writes end of script time to log file, log file location may need to manually be changed."
echo ----Script End----- >> "C:\SFTP Sync tool\log.txt"
echo %date% %time% >> "C:\SFTP Sync tool\log.txt"
echo ------------------- >> "C:\SFTP Sync tool\log.txt"
