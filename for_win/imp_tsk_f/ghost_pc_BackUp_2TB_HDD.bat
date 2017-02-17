:: This command file runn next commands:
:: RMDIR /s /q or RD /s /q -> this removes all directorys and files from list below
:: del /f /q -> -> this removes all files from list below
:: copy 
:: xcopy /E -> copy all dirs,subdirs and files; /H + all hidden and system files; /Q - quiet copy 
:: MD -> Example C:\temp> MD MyFolder
:: and print some texts
:: NOTES - TO DO:  ; 

:: Start Code

TITLE This is - FAST 2TB HDD BackUp COMMAND FILE.
:: Show some title of my file  

ECHO OFF
:: CMD will no longer show us what command it’s executing(cleaner)

ECHO !!! IMPORTANT - THIS WILL REMOVES OLD BackUps and Macke NEWONE. !!! 
ECHO !!! DO YOU WANT TO CONTINUE !!! 
:: Print some text

PAUSE
:: Lets the user read the important network information
ECHO ############################################################
ECHO *** DELETING OLD FOLDERS in Arhiv_Disks BEGIN ... ***
ECHO ############################################################
ECHO working .....
ECHO ... DELETING BoianArh ...
rmdir /s /q "S:\Arhiv_Disks\BoianArh"
MD "S:\Arhiv_Disks\BoianArh"
ECHO working .....
ECHO ... DELETING My_Office ...
rmdir /s /q "S:\Arhiv_Disks\My_Office"
MD "S:\Arhiv_Disks\My_Office"
::rmdir /s /q ""
::MD ""

ECHO ********************************************************
ECHO !!! Done-1 - ALL THINGS IN Arhiv_Disks are Delete !!!
ECHO ********************************************************
ECHO .....
ECHO #########################################################
ECHO *** Starting BackUp with FreeFileSync for NEW FOLDERS ***
ECHO #########################################################
"C:\Progs Portable\FreeFileSync\FreeFileSync.exe" "D:\2TB_HDDBackUp_jobs\ghost_pc_2TB_HDD_backUp.ffs_batch"
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

ECHO .....
ECHO ********************************************************************
ECHO !!! Done-2 - BackUp with FreeFileSync for NEW FOLDERS - Complete !!!
ECHO ********************************************************************
ECHO .....
ECHO ########################################## 
ECHO ***** ALL TASKS COMPLETED SUCCESSFUL *****
ECHO ##########################################
PAUSE
:: Give the user some time to see the results. 
:: Because this is our last line, the program will exit and the command window will close once this line finishes.

::End Code