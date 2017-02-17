:: This command file runn next commands:
:: IPCONFIG /ALL
:: net view -> Show machines on some network
:: tracert and_PC_name -> Show IP on some machine
:: shutdown –m \\computername –r –f -> Restart Remote computer immediately
:: psshutdown -> start psshutdown tool for remote shutdown
:: and print some texts
::cd /d "C:\Documents and Settings\B\Desktop\SP\SysinternalsSuite\psshutdown"
::Start Code

TITLE This is some simple FAST Task File.
::Show some title of my file  

ECHO OFF
::CMD will no longer show us what command it’s executing(cleaner)

ECHO *** As a admin, I'm getting tired of having to type these commands in! 
Echo *** Hopefully, this saves me some time in the long run.
ECHO *** This is small command file for automation on some commands!
echo *******************************************************************************
:: Print some text

PAUSE
:: Lets the user read the important information

IPCONFIG /ALL
:: Outputs tons of network information into the command prompt

PAUSE
:: Lets the user read the important information

net view 
:: Show machines on some network!

::PAUSE
:: Lets the user read the important information

ECHO TIPE command "tracert" and some PC name from list in CONSOLE PORTABLE !!! 
ECHO *************************************************************************

start %SystemRoot%\system32\cmd.exe
::start "F:\PROGS\ConsolePortable\ConsolePortable.exe"
:: This start some apps

PAUSE

::cd /d "C:\Documents and Settings\B\Desktop\SP\SysinternalsSuite\"

:: Change dir to tool dir

::echo !!! Loading psshutdown command from list !!!

:: psshutdown \\comuter_name -u user -f -r
:: This will restart machine immediately

:: psshutdown \\comuter_name -u user -f -s
:: This will shutdown machine immediately 

::psshutdown \\rumen -u user -f -r

ECHO ************************************************ 
ECHO ************************************************

 
Echo ALL TASKS DONE !!!
PAUSE
:: Give the user some time to see the results. 
:: Because this is our last line, the program will exit and the command window will close once this line finishes.

::End Code