:: This command file runn next commands:
:: RMDIR /s /q or RD /s /q -> this removes all directorys and files from list below
:: del /f /q -> -> this removes all files from list below
:: copy 
:: xcopy /E -> copy all dirs,subdirs and files; /H + all hidden and system files; /Q - quiet copy 
:: MD -> Example C:\temp> MD MyFolder
:: DATE /T -> to display the date
:: %date:/=% -> variable for current date
:: %time::=.% -> variable for current time (h:m:s:hundredths)
:: and print some texts

:: Author: nighthawk
:: v.1.0 - 18.08.2015

:: Start Code

TITLE This is - FAST FolderCopy COMMAND FILE.
:: Show some title of my file  

ECHO OFF
:: CMD will no longer show us what command it’s executing(cleaner)

ECHO !!! TASK START WITH CREATION OF SOME NEW DIRS !!! 
ECHO !!! DO YOU WANT TO CONTINUE-PRESS Some BUTTON !!! 
:: Print some text

PAUSE
:: Lets the user read the important network information
::============================================================================================= 
:: 		SOME EXAMPLE:
::
::ECHO ... working ... Deleting OLD " DIR_CURRENT_DATE " 
::RD /s /q "F:\abb_bgbovar\My Documents"
::MD "F:\abb_bgbovar\My Documents"
::ECHO ... working ... creating " DIR_CURRENT_DATE " 
::MD "D:\Arhiv\Compresia-ABAK\AbakArh2015\%date:/=%"
::ECHO ... working ... creating " DIR_Firmi_CurrentDate "
::MD "D:\Arhiv\Compresia-ABAK\AbakArh2015\%date:/=%\Firmi_%date:/=%"
::ECHO ... working ... creating " DIR_Vinola_CurrentDate "
::MD "D:\Arhiv\Compresia-ABAK\AbakArh2015\%date:/=%\Vinola_%date:/=%"

::ECHO ################################################################################
::ECHO !!! NEW DIRS %date:/=% ; Firmi_%date:/=% AND Vinola_%date:/=% ARE CREATED !!!
::ECHO ################################################################################
::ECHO ...
::ECHO ...
::=============================================================================================

:: -----------------START Script Del. and Creating New Dirs-----------------
::ECHO ... working ... Deleting OLD " Lokal_Install " 
::RD /s /q "G:\BackUp_beast_pc\Lokal_Install"
::MD "G:\BackUp_beast_pc\Lokal_Install"
ECHO ... working ... Deleting OLD " Data_folder " 
RD /s /q "G:\BackUp_beast_pc\Data_folder"
MD "G:\BackUp_beast_pc\Data_folder"
ECHO ... working ... Deleting OLD " Public_FTP_Folder " 
RD /s /q "G:\BackUp_beast_pc\Public_FTP_Folder"
MD "G:\BackUp_beast_pc\Public_FTP_Folder"
ECHO ... working ... Deleting OLD " bgbovar_soft "
RD /s /q "G:\BackUp_beast_pc\bgbovar_soft" 
MD "MD "G:\BackUp_beast_pc\bgbovar_soft"
::ECHO ... working ... Deleting OLD " xFolder "
::RD /s /q "G:\BackUp_beast_pc\xFolder" 
::MD "MD "G:\BackUp_beast_pc\xFolder"
del /f /q "G:\BackUp_beast_pc\xFolder\priv"
ECHO ... it's OK

::ECHO ... working ... creating
::MD ""
:: -----------------END Script Del. and Creating New Dirs-----------------

ECHO ###################################
ECHO *** NOW START COPY WORK ***
ECHO ###################################
:: -----------------START Script Copy work----------------- 

::ECHO ... working ... copying " task 1 - Lokal_Install"
::xcopy /H /E /Q "E:\Public_FTP_Folder\soft\Lokal_Install" "G:\BackUp_beast_pc\Lokal_Install\" 
ECHO ... working ... copying " task 1 - Data_folder"
xcopy /H /E /Q "E:\Data_folder" "G:\BackUp_beast_pc\Data_folder\" 
ECHO ... working ... copying " task 2 - Public_FTP_Folder"
xcopy /H /E /Q "E:\Public_FTP_Folder" "G:\BackUp_beast_pc\Public_FTP_Folder\" 
ECHO ... working ... copying " task 3 - bgbovar_soft "
xcopy /H /E /Q "D:\MOVIES\tmp_soft\bgbovar_soft" "G:\BackUp_beast_pc\bgbovar_soft\"
ECHO ... working ... copying " task 4 - xFile in xFolder "
xcopy /H /E /Q "C:\Downloads\1_torr\priv" "G:\BackUp_beast_pc\xFolder\"


:: -----------------END Script Copy work-----------------

::=========================================================================================================== 
:: 		SOME EXAMPLE:
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
::===========================================================================================================


ECHO ################################ 
Echo ***** ALL TASKS DONE !!! *****
ECHO ################################
PAUSE
:: Give the user some time to see the results. 
:: Because this is our last line, the program will exit and the command window will close once this line finishes.

::End Code