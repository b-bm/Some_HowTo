:: This command file runn next commands:
:: RMDIR /s /q or RD /s /q -> this removes all directorys and files from list below
:: del /f /q -> -> this removes all files from list below
:: copy 
:: xcopy /E -> copy all dirs,subdirs and files; /H + all hidden and system files; /Q - quiet copy 
:: and print some texts

:: Start Code

TITLE This is - FAST Rerata-1 and Regata-2 BackUp COMMAND FILE.
:: Show some title of my file  

ECHO OFF
:: CMD will no longer show us what command it’s executing(cleaner)

ECHO !!! IMPORTANT - THIS WILL REMOVES OLD BackUps and Macke NEWONE !!! 
:: Print some text

PAUSE
:: Lets the user read the important network information
ECHO DELETING REGATA 1 BEGIN ...
rmdir /s /q "D:\Arhiv\Arh_REGATA\REGATA_1_D\Regata1\KSoft"

ECHO DELETING REGATA 2 BEGIN ...
rmdir /s /q "D:\Arhiv\Arh_REGATA\REGATA_2_E\Regata2\KSoft"

ECHO !!! Done-1 - OLD BackUps are Delete !!!

echo *** Starting BackUp of Regata 1 ***
xcopy /H /E /Q "D:\KSoft" "D:\Arhiv\Arh_REGATA\REGATA_1_D\Regata1\KSoft\"
ECHO !!! Done-2 - BackUp of Regata 1 - Complete !!!

echo *** Starting BackUp of Regata 2 ***
xcopy /H /E /Q "E:\KSoft" "D:\Arhiv\Arh_REGATA\REGATA_2_E\Regata2\KSoft\"
ECHO !!! Done-3 - BackUp of Regata 2 - Complete !!!

ECHO ************************************* 
echo *************************************
 
Echo ***** ALL TASKS DONE !!! *****
PAUSE
:: Give the user some time to see the results. 
:: Because this is our last line, the program will exit and the command window will close once this line finishes.

::End Code