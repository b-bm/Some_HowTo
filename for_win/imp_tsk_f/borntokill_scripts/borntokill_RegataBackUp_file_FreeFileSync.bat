:: This command file runn next commands:
:: RMDIR /s /q or RD /s /q -> this removes all directorys and files from list below
:: del /f /q -> -> this removes all files from list below
:: copy 
:: xcopy /E -> copy all dirs,subdirs and files; /H + all hidden and system files; /Q - quiet copy 
:: MD -> Example C:\temp> MD MyFolder
:: and print some texts

:: Start Code

::ECHO OFF
::Mode Con: Cols=120 Lines=55

TITLE This is - FAST Rerata-1 and Regata-2 BackUp COMMAND FILE.
:: Show some title of my file  

ECHO OFF
:: CMD will no longer show us what command it’s executing(cleaner)
ECHO ######################################################################
ECHO !!! IMPORTANT - THIS WILL REMOVES OLD BackUps and Macke NEWONE. !!! 
ECHO !!!      DO YOU WANT TO CONTINUE - PRESS Some BUTTON !!!
ECHO ###################################################################### 
:: Print some text

PAUSE
:: Lets the user read the important network information
ECHO ########################################################
ECHO DELETING SPISACI and Ob6ti in ARHIV BEGIN ...
ECHO ########################################################
echo ... working .....
::del /f /q "D:\Arhiv\MyDocs_Arhiv\Tekusta\Ob6ti.rar"
rmdir /s /q "D:\Arhiv\MyDocs_Arhiv\Tekusta\Ob6ti"
MD "D:\Arhiv\MyDocs_Arhiv\Tekusta\Ob6ti"
rmdir /s /q "D:\Arhiv\MyDocs_Arhiv\Tekusta\SPISACI"
MD "D:\Arhiv\MyDocs_Arhiv\Tekusta\SPISACI"

echo .....
echo .....
ECHO !!! Done-1 - OLD SPISACI and Ob6ti are Delete !!!
echo .....
echo .....

ECHO ########################################################
echo *** Starting BackUp of SPISACI and Ob6ti ***
ECHO ########################################################
::echo ..... working - Ob6ti.rar .....
::xcopy "D:\Boyan_Documents\Tekusta\Ob6ti.rar" "D:\Arhiv\MyDocs_Arhiv\Tekusta\"
echo ..... working - Ob6ti .....
xcopy /H /E /Q "D:\Boyan_Documents\Tekusta\Ob6ti" "D:\Arhiv\MyDocs_Arhiv\Tekusta\Ob6ti"
echo ..... working - SPISACI .....
xcopy /H /E /Q "D:\Boyan_Documents\Tekusta\SPISACI" "D:\Arhiv\MyDocs_Arhiv\Tekusta\SPISACI"

echo .....
echo .....
ECHO !!! Done-2 - BackUp of SPISACI and Ob6ti - Complete !!!
echo .....
echo .....

ECHO ########################################################
ECHO DELETING REGATA 1 BEGIN ...
ECHO ########################################################
echo ..... working .....
rmdir /s /q "D:\Arhiv\Arh_REGATA\REGATA_1_D\Regata1\KSoft"
MD "D:\Arhiv\Arh_REGATA\REGATA_1_D\Regata1\KSoft"

ECHO ########################################################
ECHO DELETING REGATA 2 BEGIN ...
ECHO ########################################################
echo ..... working .....
rmdir /s /q "D:\Arhiv\Arh_REGATA\REGATA_2_E\Regata2\KSoft"
MD "D:\Arhiv\Arh_REGATA\REGATA_2_E\Regata2\KSoft"

echo .....
echo .....
ECHO !!! Done-3 - OLD REGATA BackUps are Delete !!!
echo .....
echo .....

ECHO ########################################################
echo *** Starting BackUp of Regata 1 ***
ECHO ########################################################
echo ..... working .....
"F:\PROGS\FreeFileSyncPortable_Official\FreeFileSync.exe" "F:\PROGS\FreeFileSyncPortable_Official\BackUp_Regata_1.ffs_batch"
if errorlevel 1 (
  ::if return code is 1 or greater, something went wrong, add special treatment here
  echo Errors occurred during synchronization, check what happened ERROR LEVEL 1 ...
  echo Return Codes: 
  echo 0 - Synchronization completed successfully; 
  echo 1 - Synchronization completed with warnings; 
  echo 2 - Synchronization completed with errors
  echo 3 - Synchronization was aborted 
  pause
) 

echo .....
echo .....
ECHO !!! Done-4 - BackUp of Regata 1 - Complete !!!
echo .....
echo .....

ECHO ########################################################
echo *** Starting BackUp of Regata 2 ***
ECHO ########################################################
echo ..... working .....
"F:\PROGS\FreeFileSyncPortable_Official\FreeFileSync.exe" "F:\PROGS\FreeFileSyncPortable_Official\BackUp_Regata_2.ffs_batch"
if errorlevel 1 (
  ::if return code is 1 or greater, something went wrong, add special treatment here
  echo Errors occurred during synchronization, check what happened ERROR LEVEL 1 ...
  echo Return Codes: 
  echo 0 - Synchronization completed successfully; 
  echo 1 - Synchronization completed with warnings; 
  echo 2 - Synchronization completed with errors
  echo 3 - Synchronization was aborted 
  pause
) 

echo .....
echo .....
ECHO !!! Done-5 - BackUp of Regata 2 - Complete !!!
echo .....
echo .....

ECHO ######################################################## 
Echo ***** ALL TASKS DONE !!! *****
ECHO ########################################################
PAUSE
:: Give the user some time to see the results. 
:: Because this is our last line, the program will exit and the command window will close once this line finishes.

::End Code