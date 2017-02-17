:: This command file run next commands:
:: https://technet.microsoft.com/en-us/library/bb490890.aspx
::
:: To-Do: 

:: Author: nighthawk - bgbovar
:: v.1.0 - 15.05.2015 - test ver.
:: 

:: Start Code

TITLE This is - Fast COMMAND FILE.
:: Show some title of my file  

ECHO OFF
rem

echo .....working...working..working.

call :Logit>>C:\Users\BGBOVAR\Documents\my_sys_info\mylog_outputs\netstat_batch.log.txt 2>&1
:Logit
echo off
echo ####################################################################################
echo                           Backup Start at - %date% %time%
C:
cd \Users\BGBOVAR\Documents\my_sys_info\mylog_outputs\
set parvar=%date:~-4%%date:~-10,2%%date:~-7,2%%time:~0,2%%time:~3,2%%time:~6,2%
set parvar=%parvar: =0%
rem The work variable is equal to ~%parvar%~
rem md %SomeDirName% 		:: - some example 
rem xcopy c:\someDir1\someDir2\*.xls %SomeDirName%\*.* /v /y 		:: - some example

hostname
netstat /a
tracert 
::net view /all 		rem /domain:bgabb 
getmac /fo table /nh /v 
::getmac /s srvmain 
::getmac /s srvmain /u maindom\hiropln 

 
rem cd \someDir1\someDir2\cmd\ 		rem - some example

echo                          Backup Complete at - %date% %time%
echo ####################################################################################
exit /b 		rem this exit cmd batch work.


