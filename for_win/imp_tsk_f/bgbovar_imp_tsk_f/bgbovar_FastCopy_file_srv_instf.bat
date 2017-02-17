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

:: Author: nighthawk - bgbovar
:: v.1.0 - 11.05.2015

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

:: -----------------START Script Creating New Dirs-----------------

::ECHO ... working ... Creating in BGBOVAR-Downloads " From_10.28.38.4_Install_%date:/=% " 
::MD "C:\Users\BGBOVAR\Downloads\From_10.28.38.4_Install_%date:/=%"
::ECHO ... it's OK

::ECHO ... working ... creating
::MD ""
:: -----------------END Script Creating New Dirs-----------------

ECHO ###################################
ECHO *** NOW START COPY WORK ***
ECHO ###################################
:: -----------------START Script Copy work----------------- 

::ECHO ... working ... copying " task 1 "
::xcopy /Q "\\10.28.38.4\Install\Office2010\Office Professional Plus 2010 with SP1 32&64Bit\SW_DVD5_Office_Professional_Plus_2010w_SP1_64Bit_English_CORE_MLF_X17-76756.ISO" "C:\Users\BGBOVAR\Downloads\From_10.28.38.4_Install_%date:/=%\Office Professional Plus 2010 with SP1 32&64Bit\" 

::ECHO ... working ... copying " task 2 "
::xcopy /Q "\\10.28.38.4\Install\Office2010\Office Professional Plus 2010 with SP1 32&64Bit\SW_DVD5_Office_Professional_Plus_2010w_SP1_W32_English_CORE_MLF_X17-76748.ISO" "C:\Users\BGBOVAR\Downloads\From_10.28.38.4_Install_%date:/=%\Office Professional Plus 2010 with SP1 32&64Bit\"

::ECHO ... working ... copying " task 3 "
::xcopy /E /Q "\\10.28.38.4\Install\Win7\Windows 7 Enterprise with SP1_64Bit" "C:\Users\BGBOVAR\Downloads\From_10.28.38.4_Install_%date:/=%\Windows 7 Enterprise with SP1_64Bit\"

::ECHO ... working ... copying " task 4 "
::xcopy /E /Q "\\10.28.38.4\Install\Win7\Windows 7 Enterprise with SP1_32Bit" "C:\Users\BGBOVAR\Downloads\From_10.28.38.4_Install_%date:/=%\Windows 7 Enterprise with SP1_32Bit\"

::xcopy /E /Q "" ""
::xcopy /E /Q "" ""
::xcopy /E /Q "" ""
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