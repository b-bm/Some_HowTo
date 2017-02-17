:: This command file runn next commands:
:: RMDIR /s /q or RD /s /q -> this removes all directorys and files from list below
:: del /f /q -> -> this removes all files from list below
:: copy 
:: xcopy /E -> copy all dirs,subdirs and files; /H + all hidden and system files; /Q - quiet copy 
:: MD -> Example C:\temp> MD MyFolder
:: and print some texts

:: Start Code

TITLE This is - FAST USB to R: BackUp COMMAND FILE.
:: Show some title of my file  

ECHO OFF
:: CMD will no longer show us what command it’s executing(cleaner)

ECHO !!! IMPORTANT - THIS WILL REMOVES OLD BackUps and Macke NEWONE. !!! 
ECHO !!! DO YOU WANT TO CONTINUE !!! 
:: Print some text

PAUSE
:: Lets the user read the important network information
ECHO #######################################################
ECHO # DELETING Danni, imp_tsk_f, Office, Programs and  
ECHO # Kursove - allAboutInfo - Some_HowTo in R: BEGIN ....
ECHO #######################################################

ECHO working .....

::rmdir /s /q ""
::MD ""
rmdir /s /q "R:\Danni"
MD "R:\Danni"
ECHO working .....
rmdir /s /q "R:\imp_tsk_f"
MD "R:\imp_tsk_f"
ECHO working .....
rmdir /s /q "R:\Office"
MD "R:\Office"
ECHO working .....
rmdir /s /q "R:\Programs"
MD "R:\Programs"
ECHO working .....
rmdir /s /q "R:\Kursove\all about info\Some_HowTo"
MD "R:\Kursove\all about info\Some_HowTo"

ECHO ****************************************
ECHO * !!! Done-1 - OLD THINGS are Delete !!!
ECHO ****************************************

ECHO ############################################################
ECHO # Starting BackUp of Danni, imp_tsk_f, Office, Programs and 
ECHO # Kursove - allAboutInfo - Some_HowTo in R: BEGIN ...
ECHO ############################################################

"F:\PROGS\FreeFileSyncPortable_Official\FreeFileSync.exe" "F:\PROGS\FreeFileSyncPortable_Official\USB_to_R.ffs_batch"
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

ECHO ****************************************************************
ECHO * !!! Done-2 - BackUp of Danni, imp_tsk_f, Office, Programs and 
ECHO * Kursove - allAboutInfo - Some_HowTo in R: - Complete !!!
ECHO ****************************************************************

ECHO #################################### 
ECHO ## ***** ALL TASKS DONE !!! ***** ##
ECHO ####################################
PAUSE
:: Give the user some time to see the results. 
:: Because this is our last line, the program will exit and the command window will close once this line finishes.

::End Code