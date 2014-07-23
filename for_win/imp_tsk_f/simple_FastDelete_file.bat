:: This command file runn next commands:
:: RMDIR /s /q or RD /s /q -> this removes all directorys and files from list below
:: del /f /q -> -> this removes all files from list below
:: and print some texts

:: Start Code

TITLE This is - FAST REMOVE COMMAND FILE.
:: Show some title of my file  

ECHO OFF
:: CMD will no longer show us what command it’s executing(cleaner)

ECHO IMPORTANT - THIS WILL REMOVES SOME FILES AND DIRECTORYES!!! 
:: Print some text

PAUSE
:: Lets the user read the important network information

::rmdir /s /q "A:\somedir"
::rmdir /s /q "A:\somedir"
::rmdir /s /q "A:\somedir"
::rmdir /s /q "A:\somedir"
 
ECHO Done-1 - All Directoryes are Delete

::del /f /q ""A:\somedir\name_of_somefile_*.*"

ECHO Done-2 - All Fileses are Delete

ECHO ************************************* 
echo *************************************
 
Echo ***** ALL TASKS DONE !!! *****
PAUSE
:: Give the user some time to see the results. 
:: Because this is our last line, the program will exit and the command window will close once this line finishes.

::End Code