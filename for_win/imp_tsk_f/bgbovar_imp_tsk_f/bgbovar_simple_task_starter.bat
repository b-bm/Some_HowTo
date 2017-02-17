:: This command file runn next commands:
:: Author: nighthawk - bgbovar
:: v.1.2 - 15.09.2015
::
:: start some Directoryes with windows Explorer
:: start Mozilla Firefox
:: start some Apps
:: and print some texts

::Start Code

TITLE This is some simple FAST Task File.
::Show some title of my file  

ECHO OFF
::CMD will no longer show us what command it’s executing(cleaner)

Echo *** Hopefully, this saves me some time in the long run.
ECHO *** This is small command file for automation on some commands!
echo *** This Open some directory or directories and start Apps!
echo ********************************************************************************
:: Print some text

::PAUSE
:: Lets the user read the important information

"C:\WINDOWS\explorer.exe" C:\Users\BGBOVAR\Documents
::"C:\WINDOWS\explorer.exe" R:\Payroll_and_PA\Rakovski
"C:\WINDOWS\explorer.exe"
"C:\WINDOWS\explorer.exe" C:\Users\BGBOVAR\Documents\my_tmp 
"C:\WINDOWS\explorer.exe" C:\Users\BGBOVAR\Documents\1MY_WORK_Docs\AllLoc_Closing_period_info 
::"C:\WINDOWS\explorer.exe"
::"C:\WINDOWS\explorer.exe"
::"C:\WINDOWS\explorer.exe"


:: This Open some directory or directories

echo Task - 1 Done.

::PAUSE
:: Lets the user read the important information

::start "C:\Program Files\Mozilla Firefox\firefox.exe"
::start "C:\Program Files\Microsoft Office 15\root\office15\outlook.exe"
::start "C:\Program Files\Microsoft Office 15\root\office15\lync.exe"
::start "C:\Program Files (x86)\SAP\FrontEnd\SAPgui\saplogon.exe"
::start ""
::start ""
::start ""
::start ""
::start ""

:: or

start firefox.exe
start outlook.exe
start lync.exe
start saplogon.exe
start iexplore.exe 
::start 
::start 

:: This start some apps

ECHO Task - 2 Done.
::Print some text

ECHO ************************************************ 
ECHO ************************************************
 
 
Echo ALL TASKS DONE !!!
::PAUSE
:: Give the user some time to see the results. 
:: Because this is our last line, the program will exit and the command window will close once this line finishes.

::End Code

 
