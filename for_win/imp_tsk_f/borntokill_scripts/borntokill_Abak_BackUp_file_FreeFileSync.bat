:: This command file runn next commands:
:: RMDIR /s /q or RD /s /q -> this removes all directorys and files from list below
:: del /f /q -> -> this removes all files from list below
:: copy 
:: xcopy /E -> copy all dirs,subdirs and files; /H + all hidden and system files; /Q - quiet copy 
:: MD -> Example C:\temp> MD MyFolder
:: DATE /T -> to display the date
:: %date:/=% -> variable for current date
:: and print some texts

:: Start Code

TITLE This is - FAST ABAK (abacus) BackUp COMMAND FILE.
:: Show some title of my file  

ECHO OFF
:: CMD will no longer show us what command it’s executing(cleaner)

ECHO !!! TASK START WITH CRATION FO SOME NEW DIRS !!! 
ECHO !!! DO YOU WANT TO CONTINUE !!! 
:: Print some text

PAUSE
:: Lets the user read the important network information
ECHO ... working ... creating " DIR_CURRENT_DATE " 
MD "D:\Arhiv\Compresia-ABAK\AbakArh2014\%date:/=%"

ECHO ... working ... creating " DIR_Firmi_CurrentDate "
MD "D:\Arhiv\Compresia-ABAK\AbakArh2014\%date:/=%\Firmi_%date:/=%"

ECHO ... working ... creating " DIR_Vinola_CurrentDate "
MD "D:\Arhiv\Compresia-ABAK\AbakArh2014\%date:/=%\Vinola_%date:/=%"
::ECHO ... working ... creating
::MD ""

ECHO ################################################################################
ECHO !!! NEW DIRS %date:/=% ; Firmi_%date:/=% AND Vinola_%date:/=% ARE CREATED !!!
ECHO ################################################################################
ECHO ...
ECHO ...
ECHO ###################################
ECHO *** NOW START NEW BACKUP WORK ***
ECHO ###################################

ECHO ... working ... macking " Firmi_%date:/=%\Abak_Old "
xcopy /H /E /Q "L:\Abak_Old" "D:\Arhiv\Compresia-ABAK\AbakArh2014\%date:/=%\Firmi_%date:/=%\Abak_Old\"
ECHO ...
ECHO ... working ... macking " Firmi_%date:/=%\Alhilal "
xcopy /H /E /Q "L:\Alhilal" "D:\Arhiv\Compresia-ABAK\AbakArh2014\%date:/=%\Firmi_%date:/=%\Alhilal\"
ECHO ...
ECHO ... working ... macking " Firmi_%date:/=%\no212 "
xcopy /H /E /Q "L:\no212" "D:\Arhiv\Compresia-ABAK\AbakArh2014\%date:/=%\Firmi_%date:/=%\no212\"
ECHO ...
ECHO ... working ... macking " Firmi_%date:/=%\Aback_D is Everything Else "
xcopy /H /E /Q "L:\Aback_D" "D:\Arhiv\Compresia-ABAK\AbakArh2014\%date:/=%\Firmi_%date:/=%\Aback_D\"
ECHO ...
ECHO ... working ... macking " Vinola_%date:/=% "
xcopy /H /E /Q "L:\Vinola" "D:\Arhiv\Compresia-ABAK\AbakArh2014\%date:/=%\Vinola_%date:/=%\"

::
::xcopy "D:\DIR1\DIR2\SOME_FILE" "D:\DIR1\DIR2\DIR3\"

::ECHO ############################################################
::echo *** Starting BackUp of  ABAK (abacus) With FreeFileSync***
::ECHO ############################################################
::"F:\PROGS\FreeFileSyncPortable_Official\FreeFileSync.exe" "F:\PROGS\FreeFileSyncPortable_Official\BackUp_Abak1.ffs_batch"
::if errorlevel 1 (
  ::if return code is 1 or greater, something went wrong, add special treatment here
::  echo Errors occurred during synchronization, check what happened ERROR LEVEL 1 ...
::  echo Return Codes: 
::  echo 0 - Synchronization completed successfully; 
::  echo 1 - Synchronization completed with warnings; 
::  echo 2 - Synchronization completed with errors
::  echo 3 - Synchronization was aborted 
::  pause
::) 

ECHO ################################ 
Echo ***** ALL TASKS DONE !!! *****
ECHO ################################
PAUSE
:: Give the user some time to see the results. 
:: Because this is our last line, the program will exit and the command window will close once this line finishes.

::End Code