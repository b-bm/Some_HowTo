:: This command file runn next commands:
:: start some Directoryes with windows Explorer
:: start Mozilla Firefox
:: start some Apps
:: and print some texts

::Start Code

TITLE This is some simple FAST Task File.
::Show some title of my file  

ECHO OFF
::CMD will no longer show us what command it’s executing(cleaner)

ECHO *** As a network admin, I'm getting tired of having to type these commands in! 
Echo *** Hopefully, this saves me some time in the long run.
ECHO *** This is small command file for automation on some commands!
echo *** This Open some directory or directories and start Apps!
echo ********************************************************************************
:: Print some text

PAUSE
:: Lets the user read the important information

"C:\WINDOWS\explorer.exe" D:\Downloads
"C:\WINDOWS\explorer.exe" D:\Arhiv
"C:\WINDOWS\explorer.exe" D:\Boyan_Documents\Tekusta
"C:\WINDOWS\explorer.exe" D:\Downloads\Cloud Drives 
::"C:\WINDOWS\explorer.exe"
::"C:\WINDOWS\explorer.exe"
::"C:\WINDOWS\explorer.exe"


:: This Open some directory or directories

echo Task - 1 Done.

PAUSE
:: Lets the user read the important information

::start "C:\Program Files\Mozilla Firefox\firefox.exe"
::start "C:\Program Files\TrueCrypt\TrueCrypt.exe"

:: or

start firefox.exe
::start TrueCrypt.exe
::start chrome.exe
::start vlc.exe

:: This start some apps

ECHO Task - 2 Done.
::Print some text

ECHO ************************************************ 
ECHO ************************************************
 
 
Echo ALL TASKS DONE !!!
PAUSE
:: Give the user some time to see the results. 
:: Because this is our last line, the program will exit and the command window will close once this line finishes.

::End Code

 
