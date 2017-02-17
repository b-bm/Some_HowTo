:: This command file runn next commands:
:: RMDIR /s /q or RD /s /q -> this removes all directorys and files from list below
:: del /f /q -> -> this removes all files from list below
:: copy 
:: xcopy /E -> copy all dirs,subdirs and files; /H + all hidden and system files; /Q - quiet copy; /G - Creates decrypted destination files. 
:: xcopy info at: https://technet.microsoft.com/en-us/library/bb491035.aspx 
:: MD -> Example C:\temp> MD MyFolder
:: DATE /T -> to display the date
:: %date:/=% -> variable for current date
:: %time::=.% -> variable for current time (h:m:s:hundredths)
:: CIPHER /? for more info.
:: rem -> print some texts when echo is off
:: and print some texts
:: USB DRIVE MUST BE = "F"
:: To-Do: improve error levels

:: Author: nighthawk - bgbovar
:: v.1.1 - 14.05.2015 - added EFS copy support and new functions
:: v.2.0 - 18.05.2016 - added functions

:: Start Code

TITLE This is - FAST BackUp COMMAND FILE.
:: Show some title of my file  

ECHO OFF
:: CMD will no longer show us what command it’s executing(cleaner)

ECHO !!! TASK START WITH CREATION OF SOME NEW DIRS !!! 
ECHO !!! DO YOU WANT TO CONTINUE-PRESS Some BUTTON !!! 
:: Print some text

PAUSE
:: Lets the user read the important network information

::=======================================================================
:: THIS IS SOME EXAMPLE:
::
::ECHO ... working ... creating " DIR_CURRENT_DATE " 
::MD "D:\Arhiv\Compresia-ABAK\AbakArh2015\%date:/=%"
::ECHO ... working ... creating " DIR_Firmi_CurrentDate "
::MD "D:\Arhiv\Compresia-ABAK\AbakArh2015\%date:/=%\Firmi_%date:/=%"
::ECHO ... working ... creating " DIR_Vinola_CurrentDate "
::MD "D:\Arhiv\Compresia-ABAK\AbakArh2015\%date:/=%\Vinola_%date:/=%"
::=======================================================================

echo.
echo.

echo 1. BACK UP on USB Drive "F"
echo 2. BACK UP on USB HDD "G"
echo 3. Exit
echo.
echo.

:choose
set PROFILE=
set /P PROFILE=Enter your selection (1-3):
if "%PROFILE%"=="1" goto BackupUSBDrive
if "%PROFILE%"=="2" goto BackupUSBHDD
if "%PROFILE%"=="3" goto nochoice
goto choose

REM Delete old files on USB Drive and backup new one
:BackupUSBDrive

:: automatic search for drive name = LIVE/USB ABB HR and assign drive letter = F 

for /f "tokens=2,3 delims= " %%A in ('echo list volume ^| diskpart ^| findstr "LIVE"') do (
set Acedrive=%%B
(echo select volume %%A
echo assign letter=F) | diskpart
)

for /f "tokens=2,3 delims= " %%A in ('echo list volume ^| diskpart ^| findstr "USB ABB HR"') do (
set Acedrive=%%B
(echo select volume %%A
echo assign letter=F) | diskpart
)
ECHO ... now drive letter is equal to "F"
pause

ECHO ... working ... Deleting OLD " My Documents " 
RD /s /q "F:\abb_bgbovar\My Documents"
MD "F:\abb_bgbovar\My Documents"

ECHO ... working ... Deleting OLD "bgbovar_arh_web"
RD /s /q "F:\abb_bgbovar\bgbovar_arh_web"
MD "F:\abb_bgbovar\bgbovar_arh_web"

::ECHO ... working ... creating
::MD ""

::ECHO ################################################################################
::ECHO !!! NEW DIRS %date:/=% ; Dir1_%date:/=% AND Dir2_%date:/=% ARE CREATED !!!
::ECHO ################################################################################
::ECHO ...
::ECHO ...
ECHO ###################################
ECHO *** NOW START NEW BACKUP WORK ***
ECHO ###################################

::=================================================================================================================================================
:: THIS IS NEW VERSION OF COPY SCRIPT
:: Some info:
:: xcopy %1 %2 /G /E /Q
:: The command interpreter substitutes C:\SomeDir1 for %1 and D:\SomeDir2 for %2, then uses xcopy with the /e and /q command-line options. 
:: If xcopy encounters an error, the batch program reads the exit code and goes to the label indicated in the appropriate IF ERRORLEVEL statement,
:: then displays the appropriate message and exits from the batch program.
::=================================================================================================================================================

::xcopy %1 %2 /G /E /Q 
::if errorlevel 3 goto lowmemory 
::if errorlevel 2 goto someerror
::if errorlevel 1 goto abort 
::if errorlevel 0 goto exit 
:::lowmemory 
::echo Insufficient memory to copy files or 
::echo invalid drive or command-line syntax. 
::goto exit 
:::someerror
::echo Some thing is wrong, maybe command-line syntax
::goto exit
:::abort 
::echo You pressed CTRL+C to end the copy operation. 
::goto exit 
:::exit 

ECHO... Working on "My Documents"
xcopy /G /E /Q "C:\Users\BGBOVAR\Documents" "F:\abb_bgbovar\My Documents\"
ECHO...
ECHO... DONE with "My Documents"
ECHO...
ECHO... Working on "bgbovar_arh_web"
xcopy /G /E /Q "C:\Users\BGBOVAR\Downloads\bgbovar_arh_web" "F:\abb_bgbovar\bgbovar_arh_web\"
ECHO... DONE with "bgbovar_arh_web"
ECHO...

goto eof

REM Delete old files on USB HDD and backup new one
:BackupUSBHDD

ECHO ... working ... Deleting OLD " My Documents " 
RD /s /q "G:\Arh_bgbovar\My Documents"
MD "G:\Arh_bgbovar\My Documents"

ECHO ... working ... Deleting OLD "bgbovar_arh_web"
RD /s /q "G:\Arh_bgbovar\bgbovar_arh_web"
MD "G:\Arh_bgbovar\bgbovar_arh_web"

::ECHO ... working ... creating
::MD ""

::ECHO ################################################################################
::ECHO !!! NEW DIRS %date:/=% ; Dir1_%date:/=% AND Dir2_%date:/=% ARE CREATED !!!
::ECHO ################################################################################
::ECHO ...
::ECHO ...
ECHO ###################################
ECHO *** NOW START NEW BACKUP WORK ***
ECHO ###################################

::=================================================================================================================================================
:: THIS IS NEW VERSION OF COPY SCRIPT
:: Some info:
:: xcopy %1 %2 /G /E /Q
:: The command interpreter substitutes C:\SomeDir1 for %1 and D:\SomeDir2 for %2, then uses xcopy with the /e and /q command-line options. 
:: If xcopy encounters an error, the batch program reads the exit code and goes to the label indicated in the appropriate IF ERRORLEVEL statement,
:: then displays the appropriate message and exits from the batch program.
::=================================================================================================================================================

ECHO... Working on "My Documents"
xcopy /G /E /Q "C:\Users\BGBOVAR\Documents" "G:\Arh_bgbovar\My Documents\"
ECHO...
CIPHER /D /S:"G:\Arh_bgbovar\My Documents"
ECHO... DONE with "My Documents"
ECHO...
ECHO... Working on "bgbovar_arh_web"
xcopy /G /E /Q "C:\Users\BGBOVAR\Downloads\bgbovar_arh_web" "G:\Arh_bgbovar\bgbovar_arh_web\"
ECHO...
CIPHER /D /S:"G:\Arh_bgbovar\bgbovar_arh_web"
ECHO... DONE with "bgbovar_arh_web"
ECHO...

goto eof

:nochoice
echo.
echo.
echo No selection made - script exited
:eof

endlocal

echo.
echo "Task Completed"
echo.


::========================================
:: THIS IS OLD OUTDATED VERSION OF SCRIPT
::========================================

::ECHO ... working ... macking NEW " My Documents "
::xcopy /G /E /Q "C:\Users\BGBOVAR\Documents" "F:\abb_bgbovar\My Documents\"

::========================================================================================================
:: THIS IS SOME EXAMPLE:
:: 
::ECHO ... working ... macking " Firmi_%date:/=%\Abak_Old "
::xcopy /H /E /Q "L:\Abak_Old" "D:\Arhiv\Compresia-ABAK\AbakArh2015\%date:/=%\Firmi_%date:/=%\Abak_Old\"
::ECHO ...
::ECHO ... working ... macking " Firmi_%date:/=%\Alhilal "
::xcopy /H /E /Q "L:\Alhilal" "D:\Arhiv\Compresia-ABAK\AbakArh2015\%date:/=%\Firmi_%date:/=%\Alhilal\"
::ECHO ...
::ECHO ... working ... macking " Firmi_%date:/=%\no212 "
::xcopy /H /E /Q "L:\no212" "D:\Arhiv\Compresia-ABAK\AbakArh2015\%date:/=%\Firmi_%date:/=%\no212\"
::ECHO ...
::ECHO ... working ... macking " Firmi_%date:/=%\Aback_D is Everything Else "
::xcopy /H /E /Q "L:\Aback_D" "D:\Arhiv\Compresia-ABAK\AbakArh2015\%date:/=%\Firmi_%date:/=%\Aback_D\"
::ECHO ...
::ECHO ... working ... macking " Vinola_%date:/=% "
::xcopy /H /E /Q "L:\Vinola" "D:\Arhiv\Compresia-ABAK\AbakArh2015\%date:/=%\Vinola_%date:/=%\"
::
::xcopy "D:\DIR1\DIR2\SOME_FILE" "D:\DIR1\DIR2\DIR3\"
::========================================================================================================
ECHO ################################ 
Echo ***** ALL TASKS DONE !!! *****
ECHO ################################
PAUSE
:: Give the user some time to see the results. 
:: Because this is our last line, the program will exit and the command window will close once this line finishes.

::End Code