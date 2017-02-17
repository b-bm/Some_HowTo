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
:: v.1.0 - 08.02.2015
:: v.2.0 - 08.01.2016
:: v.3.0 - 06.04.2016
:: v.3.1 - 19.12.2016
:: v.3.2 - 04.01.2017

:: Start Code

TITLE This is - FAST BackUp COMMAND FILE.
:: Show some title of my file  

ECHO OFF
:: CMD will no longer show us what command it’s executing(cleaner)
::========================================================================================================== 
:: 		SOME EXAMPLE:
::
::ECHO !!! TASK START WITH CREATION OF SOME NEW DIRS !!! 
::ECHO !!! DO YOU WANT TO CONTINUE-PRESS Some BUTTON !!! 
:: Print some text

::PAUSE
:: Lets the user read the important network information
::ECHO ... working ... creating " DIR_CURRENT_DATE " 
::MD "D:\Arhiv\Compresia-ABAK\AbakArh2015\%date:/=%"

::ECHO ... working ... creating " DIR_Firmi_CurrentDate "
::MD "D:\Arhiv\Compresia-ABAK\AbakArh2015\%date:/=%\Firmi_%date:/=%"

::ECHO ... working ... creating " DIR_Vinola_CurrentDate "
::MD "D:\Arhiv\Compresia-ABAK\AbakArh2015\%date:/=%\Vinola_%date:/=%"
::ECHO ... working ... creating
::MD ""

::ECHO ################################################################################
::ECHO !!! NEW DIRS %date:/=% ; Firmi_%date:/=% AND Vinola_%date:/=% ARE CREATED !!!
::ECHO ################################################################################
::ECHO ...
::ECHO ...
::==========================================================================================================
echo.
echo.

echo 1. Delete old files Register Sofia - 2015; 2016; 2017 and backup new one
echo 2. Delete old files Register Rakovski - 2015; 2016; 2017 and backup new one
echo 3. Delete old files Register Petrich - 2016; 2017 and backup new one
echo 4. Delete old files Register Sevlievo - 2016; 2017 and backup new one
echo 5. Delete old files All Registers - 2015; 2016; 2017 and backup new one / Backup Overtime Requests from Local Server
echo 6. Backup ONLY Overtime Requests from Local Server.
echo 7. Exit
echo.
echo.

:choose
set PROFILE=
set /P PROFILE=Enter your selection (1-6):
if "%PROFILE%"=="1" goto RegSofia
if "%PROFILE%"=="2" goto RegRakovski
if "%PROFILE%"=="3" goto RegPetrich
if "%PROFILE%"=="4" goto RegSevlievo
if "%PROFILE%"=="5" goto RegAll
if "%PROFILE%"=="6" goto Overtimes
if "%PROFILE%"=="7" goto nochoice
goto choose

REM Delete old files Register Sofia - 2015; 2016; 2017 and backup new one
:RegSofia
ECHO ... working ... DELETING " Register_Sofia_2017 "
ECHO ... working ... DELETING " Register_Sofia_2017 "
del /f /q "C:\Users\BGBOVAR\Documents\my_tmp\Arh_Registers\Register_Sofia_2017*.xlsx"
ECHO ... working ... DELETING " Register_Sofia_2016 "
ECHO ... working ... DELETING " Register_Sofia_2016 "
del /f /q "C:\Users\BGBOVAR\Documents\my_tmp\Arh_Registers\Register_Sofia_2016*.xlsx"
ECHO ... working ... DELETING " Register_Sofia_2015 "
ECHO ... working ... DELETING " Register_Sofia_2015 "
del /f /q "C:\Users\BGBOVAR\Documents\my_tmp\Arh_Registers\Register_Sofia_2015*.xlsx"

ECHO ... working ... macking " Register_Sofia_2017-%date%-%time% "
ECHO ... working ... macking " Register_Sofia_2017-%date:/=%-%time::=.% "
copy "R:\Payroll_and_PA\Sofia\Register_Sofia_2017.xlsx" "C:\Users\BGBOVAR\Documents\my_tmp\Arh_Registers\Register_Sofia_2017-%date:/=%-%time::=.%.xlsx"
ECHO ... working ... macking " Register_Sofia_2016-%date%-%time% "
ECHO ... working ... macking " Register_Sofia_2016-%date:/=%-%time::=.% "
copy "R:\Payroll_and_PA\Sofia\Register_Sofia_2016.xlsx" "C:\Users\BGBOVAR\Documents\my_tmp\Arh_Registers\Register_Sofia_2016-%date:/=%-%time::=.%.xlsx"
ECHO ... working ... macking " Register_Sofia_2015-%date%-%time% "
ECHO ... working ... macking " Register_Sofia_2015-%date:/=%-%time::=.% "
copy "R:\Payroll_and_PA\Sofia\Register_Sofia_2015.xlsx" "C:\Users\BGBOVAR\Documents\my_tmp\Arh_Registers\Register_Sofia_2015-%date:/=%-%time::=.%.xlsx"

goto eof

REM Delete old files Register Rakovski - 2015; 2016; 2017 and backup new one
:RegRakovski
ECHO ... working ... DELETING " Register_Rakovski_2017 "
ECHO ... working ... DELETING " Register_Rakovski_2017 "
del /f /q "C:\Users\BGBOVAR\Documents\my_tmp\Arh_Registers\Register_Rakovski_2017*.xlsx"
ECHO ... working ... DELETING " Register_Rakovski_2016 "
ECHO ... working ... DELETING " Register_Rakovski_2016 "
del /f /q "C:\Users\BGBOVAR\Documents\my_tmp\Arh_Registers\Register_Rakovski_2016*.xlsx"
ECHO ... working ... DELETING " Register_Rakovski_2015 "
ECHO ... working ... DELETING " Register_Rakovski_2015 "
del /f /q "C:\Users\BGBOVAR\Documents\my_tmp\Arh_Registers\Register_Rakovski_2015*.xlsx"

ECHO ... working ... macking " Register_Rakovski_2017-%date%-%time% "
ECHO ... working ... macking " Register_Rakovski_2017-%date:/=%-%time::=.% "
copy "R:\Payroll_and_PA\Rakovski\Register_Rakovski_2017.xlsx" "C:\Users\BGBOVAR\Documents\my_tmp\Arh_Registers\Register_Rakovski_2017-%date:/=%-%time::=.%.xlsx"
ECHO ... working ... macking " Register_Rakovski_2016-%date%-%time% "
ECHO ... working ... macking " Register_Rakovski_2016-%date:/=%-%time::=.% "
copy "R:\Payroll_and_PA\Rakovski\Register_Rakovski_2016.xlsx" "C:\Users\BGBOVAR\Documents\my_tmp\Arh_Registers\Register_Rakovski_2016-%date:/=%-%time::=.%.xlsx"
ECHO ... working ... macking " Register_Rakovski_2015-%date%-%time% "
ECHO ... working ... macking " Register_Rakovski_2015-%date:/=%-%time::=.% "
copy "R:\Payroll_and_PA\Rakovski\Register_Rakovski_2015.xlsx" "C:\Users\BGBOVAR\Documents\my_tmp\Arh_Registers\Register_Rakovski_2015-%date:/=%-%time::=.%.xlsx"

goto eof

REM Delete old files Register Petrich - 2016; 2017 and backup new one
:RegPetrich
ECHO ... working ... DELETING " Register_Petrich_2017 "
ECHO ... working ... DELETING " Register_Petrich_2017 "
del /f /q "C:\Users\BGBOVAR\Documents\my_tmp\Arh_Registers\Register_Petrich_2017*.xlsx"
ECHO ... working ... DELETING " Register_Petrich_2016 "
ECHO ... working ... DELETING " Register_Petrich_2016 "
del /f /q "C:\Users\BGBOVAR\Documents\my_tmp\Arh_Registers\Register_Petrich_2016*.xlsx"

ECHO ... working ... macking " Register_Petrich_2017-%date%-%time% "
ECHO ... working ... macking " Register_Petrich_2017-%date:/=%-%time::=.% "
copy "R:\Payroll_and_PA\Petrich\Register_Petrich_2017.xlsx" "C:\Users\BGBOVAR\Documents\my_tmp\Arh_Registers\Register_Petrich_2017-%date:/=%-%time::=.%.xlsx"
ECHO ... working ... macking " Register_Petrich_2016-%date%-%time% "
ECHO ... working ... macking " Register_Petrich_2016-%date:/=%-%time::=.% "
copy "R:\Payroll_and_PA\Petrich\Register_Petrich_2016.xlsx" "C:\Users\BGBOVAR\Documents\my_tmp\Arh_Registers\Register_Petrich_2016-%date:/=%-%time::=.%.xlsx"

goto eof

REM Delete old files Register Sevlievo - 2016; 2017 and backup new one
:RegSevlievo
ECHO ... working ... DELETING "Register_Sevlievo_2017 "
ECHO ... working ... DELETING " Register_Sevlievo_2017 "
del /f /q "C:\Users\BGBOVAR\Documents\my_tmp\Arh_Registers\Register_Sevlievo_2017*.xlsx"
ECHO ... working ... DELETING "Register_Sevlievo_2016 "
ECHO ... working ... DELETING " Register_Sevlievo_2016 "
del /f /q "C:\Users\BGBOVAR\Documents\my_tmp\Arh_Registers\Register_Sevlievo_2016*.xlsx"

ECHO ... working ... macking " Register_Sevlievo_2017-%date%-%time% "
ECHO ... working ... macking " Register_Sevlievo_2017-%date:/=%-%time::=.% "
copy "R:\Payroll_and_PA\Sevlievo\Register_Sevlievo_2017.xlsx" "C:\Users\BGBOVAR\Documents\my_tmp\Arh_Registers\Register_Sevlievo_2017-%date:/=%-%time::=.%.xlsx"
ECHO ... working ... macking " Register_Sevlievo_2016-%date%-%time% "
ECHO ... working ... macking " Register_Sevlievo_2016-%date:/=%-%time::=.% "
copy "R:\Payroll_and_PA\Sevlievo\Register_Sevlievo_2016.xlsx" "C:\Users\BGBOVAR\Documents\my_tmp\Arh_Registers\Register_Sevlievo_2016-%date:/=%-%time::=.%.xlsx"

goto eof

REM Delete old files All Registers - 2015; 2016; 2017 and backup new one / And Backup OVER TIME REQUEST TABLE - "Over table_12.2016.xlsm"
:RegAll
:: SOFIA
ECHO ... working ... DELETING " Register_Sofia_2017 "
ECHO ... working ... DELETING " Register_Sofia_2017 "
del /f /q "C:\Users\BGBOVAR\Documents\my_tmp\Arh_Registers\Register_Sofia_2017*.xlsx"
ECHO ... working ... DELETING " Register_Sofia_2016 "
ECHO ... working ... DELETING " Register_Sofia_2016 "
del /f /q "C:\Users\BGBOVAR\Documents\my_tmp\Arh_Registers\Register_Sofia_2016*.xlsx"
ECHO ... working ... DELETING " Register_Sofia_2015 "
ECHO ... working ... DELETING " Register_Sofia_2015 "
del /f /q "C:\Users\BGBOVAR\Documents\my_tmp\Arh_Registers\Register_Sofia_2015*.xlsx"

ECHO ... working ... macking " Register_Sofia_2017-%date%-%time% "
ECHO ... working ... macking " Register_Sofia_2017-%date:/=%-%time::=.% "
copy "R:\Payroll_and_PA\Sofia\Register_Sofia_2017.xlsx" "C:\Users\BGBOVAR\Documents\my_tmp\Arh_Registers\Register_Sofia_2017-%date:/=%-%time::=.%.xlsx"
ECHO ... working ... macking " Register_Sofia_2016-%date%-%time% "
ECHO ... working ... macking " Register_Sofia_2016-%date:/=%-%time::=.% "
copy "R:\Payroll_and_PA\Sofia\Register_Sofia_2016.xlsx" "C:\Users\BGBOVAR\Documents\my_tmp\Arh_Registers\Register_Sofia_2016-%date:/=%-%time::=.%.xlsx"
ECHO ... working ... macking " Register_Sofia_2015-%date%-%time% "
ECHO ... working ... macking " Register_Sofia_2015-%date:/=%-%time::=.% "
copy "R:\Payroll_and_PA\Sofia\Register_Sofia_2015.xlsx" "C:\Users\BGBOVAR\Documents\my_tmp\Arh_Registers\Register_Sofia_2015-%date:/=%-%time::=.%.xlsx"

::RAKOVSKI
ECHO ... working ... DELETING " Register_Rakovski_2017 "
ECHO ... working ... DELETING " Register_Rakovski_2017 "
del /f /q "C:\Users\BGBOVAR\Documents\my_tmp\Arh_Registers\Register_Rakovski_2017*.xlsx"
ECHO ... working ... DELETING " Register_Rakovski_2016 "
ECHO ... working ... DELETING " Register_Rakovski_2016 "
del /f /q "C:\Users\BGBOVAR\Documents\my_tmp\Arh_Registers\Register_Rakovski_2016*.xlsx"
ECHO ... working ... DELETING " Register_Rakovski_2015 "
ECHO ... working ... DELETING " Register_Rakovski_2015 "
del /f /q "C:\Users\BGBOVAR\Documents\my_tmp\Arh_Registers\Register_Rakovski_2015*.xlsx"

ECHO ... working ... macking " Register_Rakovski_2017-%date%-%time% "
ECHO ... working ... macking " Register_Rakovski_2017-%date:/=%-%time::=.% "
copy "R:\Payroll_and_PA\Rakovski\Register_Rakovski_2017.xlsx" "C:\Users\BGBOVAR\Documents\my_tmp\Arh_Registers\Register_Rakovski_2017-%date:/=%-%time::=.%.xlsx"
ECHO ... working ... macking " Register_Rakovski_2016-%date%-%time% "
ECHO ... working ... macking " Register_Rakovski_2016-%date:/=%-%time::=.% "
copy "R:\Payroll_and_PA\Rakovski\Register_Rakovski_2016.xlsx" "C:\Users\BGBOVAR\Documents\my_tmp\Arh_Registers\Register_Rakovski_2016-%date:/=%-%time::=.%.xlsx"
ECHO ... working ... macking " Register_Rakovski_2015-%date%-%time% "
ECHO ... working ... macking " Register_Rakovski_2015-%date:/=%-%time::=.% "
copy "R:\Payroll_and_PA\Rakovski\Register_Rakovski_2015.xlsx" "C:\Users\BGBOVAR\Documents\my_tmp\Arh_Registers\Register_Rakovski_2015-%date:/=%-%time::=.%.xlsx"

::PETRICH
ECHO ... working ... DELETING " Register_Petrich_2017 "
ECHO ... working ... DELETING " Register_Petrich_2017 "
del /f /q "C:\Users\BGBOVAR\Documents\my_tmp\Arh_Registers\Register_Petrich_2017*.xlsx"
ECHO ... working ... DELETING " Register_Petrich_2016 "
ECHO ... working ... DELETING " Register_Petrich_2016 "
del /f /q "C:\Users\BGBOVAR\Documents\my_tmp\Arh_Registers\Register_Petrich_2016*.xlsx"

ECHO ... working ... macking " Register_Petrich_2017-%date%-%time% "
ECHO ... working ... macking " Register_Petrich_2017-%date:/=%-%time::=.% "
copy "R:\Payroll_and_PA\Petrich\Register_Petrich_2017.xlsx" "C:\Users\BGBOVAR\Documents\my_tmp\Arh_Registers\Register_Petrich_2017-%date:/=%-%time::=.%.xlsx"
ECHO ... working ... macking " Register_Petrich_2016-%date%-%time% "
ECHO ... working ... macking " Register_Petrich_2016-%date:/=%-%time::=.% "
copy "R:\Payroll_and_PA\Petrich\Register_Petrich_2016.xlsx" "C:\Users\BGBOVAR\Documents\my_tmp\Arh_Registers\Register_Petrich_2016-%date:/=%-%time::=.%.xlsx"

::SEVLIEVO
ECHO ... working ... DELETING "Register_Sevlievo_2017 "
ECHO ... working ... DELETING " Register_Sevlievo_2017 "
del /f /q "C:\Users\BGBOVAR\Documents\my_tmp\Arh_Registers\Register_Sevlievo_2017*.xlsx"
ECHO ... working ... DELETING "Register_Sevlievo_2016 "
ECHO ... working ... DELETING " Register_Sevlievo_2016 "
del /f /q "C:\Users\BGBOVAR\Documents\my_tmp\Arh_Registers\Register_Sevlievo_2016*.xlsx"

ECHO ... working ... macking " Register_Sevlievo_2017-%date%-%time% "
ECHO ... working ... macking " Register_Sevlievo_2017-%date:/=%-%time::=.% "
copy "R:\Payroll_and_PA\Sevlievo\Register_Sevlievo_2017.xlsx" "C:\Users\BGBOVAR\Documents\my_tmp\Arh_Registers\Register_Sevlievo_2017-%date:/=%-%time::=.%.xlsx"
ECHO ... working ... macking " Register_Sevlievo_2016-%date%-%time% "
ECHO ... working ... macking " Register_Sevlievo_2016-%date:/=%-%time::=.% "
copy "R:\Payroll_and_PA\Sevlievo\Register_Sevlievo_2016.xlsx" "C:\Users\BGBOVAR\Documents\my_tmp\Arh_Registers\Register_Sevlievo_2016-%date:/=%-%time::=.%.xlsx"

::OVERTIME REQUESTS
::ECHO ... working ... macking " All_Overtime_Requests-%date%-%time% "
::ECHO ... working ... macking " All_Overtime_Requests-%date:/=%-%time::=.% "
::copy "R:\Documents_by_post\Rakovski\Over table_*.xlsm" "C:\Users\bgbovar\Documents\my_tmp\Arh_OverTime_Table\Over table_*-%date:/=%-%time::=.%.xlsm"

ECHO ... working ... creating " DIR_All_Overtime_Requests_CurrentDate "
::MD "C:\Users\bgbovar\Documents\my_tmp\Arh_OverTime_Table\All_Overtime_Requests_%date:/=%"
MD "C:\Users\bgbovar\Documents\my_tmp\Arh_OverTime_Table\All_Overtime_Requests_%date:/=%-%time::=.%"

ECHO ... working ... macking " All_Overtime_Requests-%date%-%time% "
ECHO ... working ... macking " All_Overtime_Requests-%date:/=%-%time::=.% "
::copy "R:\Documents_by_post\Rakovski\All_Overtime_Requests\*" "C:\Users\bgbovar\Documents\my_tmp\Arh_OverTime_Table\All_Overtime_Requests_%date:/=%"
copy "R:\Documents_by_post\Rakovski\All_Overtime_Requests\*" "C:\Users\bgbovar\Documents\my_tmp\Arh_OverTime_Table\All_Overtime_Requests_%date:/=%-%time::=.%"

goto eof

REM Backup Overtime Requests from Local Server.
:Overtimes
::ECHO ... working ... macking " All_Overtime_Requests-%date%-%time% "
::ECHO ... working ... macking " All_Overtime_Requests-%date:/=%-%time::=.% "
::copy "R:\Documents_by_post\Rakovski\Over table_*.xlsm" "C:\Users\bgbovar\Documents\my_tmp\Arh_OverTime_Table\Over table_*-%date:/=%-%time::=.%.xlsm"

ECHO ... working ... creating " DIR_All_Overtime_Requests_CurrentDate "
::MD "C:\Users\bgbovar\Documents\my_tmp\Arh_OverTime_Table\All_Overtime_Requests_%date:/=%"
MD "C:\Users\bgbovar\Documents\my_tmp\Arh_OverTime_Table\All_Overtime_Requests_%date:/=%-%time::=.%"

ECHO ... working ... macking " All_Overtime_Requests-%date%-%time% "
ECHO ... working ... macking " All_Overtime_Requests-%date:/=%-%time::=.% "
::copy "R:\Documents_by_post\Rakovski\All_Overtime_Requests\*" "C:\Users\bgbovar\Documents\my_tmp\Arh_OverTime_Table\All_Overtime_Requests_%date:/=%"
copy "R:\Documents_by_post\Rakovski\All_Overtime_Requests\*" "C:\Users\bgbovar\Documents\my_tmp\Arh_OverTime_Table\All_Overtime_Requests_%date:/=%-%time::=.%"

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

::==================================== OLD SCRIPT - v.2.0 ==================================================
::ECHO ###################################
::ECHO *** NOW START NEW BACKUP WORK ***
::ECHO ###################################

::ECHO ... working ... macking " Register_Rakovski_2016-%date%-%time% "
::ECHO ... working ... macking " Register_Rakovski_2016-%date:/=%-%time::=.% "
::copy "R:\Payroll_and_PA\Rakovski\Register_Rakovski_2016.xlsx" "C:\Users\BGBOVAR\Documents\my_tmp\Register_Rakovski_2016-%date:/=%-%time::=.%.xlsx"

::ECHO ... working ... macking " Register_Sofia_2016-%date%-%time% "
::ECHO ... working ... macking " Register_Sofia_2016-%date:/=%-%time::=.% "
::copy "R:\Payroll_and_PA\Sofia\Register_Sofia_2016.xlsx" "C:\Users\BGBOVAR\Documents\my_tmp\Register_Sofia_2016-%date:/=%-%time::=.%.xlsx"

::ECHO ... working ... macking " Register_Rakovski_2015-%date%-%time% "
::ECHO ... working ... macking " Register_Rakovski_2015-%date:/=%-%time::=.% "
::copy "R:\Payroll_and_PA\Rakovski\Register_Rakovski_2015.xlsx" "C:\Users\BGBOVAR\Documents\my_tmp\Arh_Registers\Register_Rakovski_2015-%date:/=%-%time::=.%.xlsx"

::ECHO ... working ... macking " Register_Sofia_2015-%date%-%time% "
::ECHO ... working ... macking " Register_Sofia_2015-%date:/=%-%time::=.% "
::copy "R:\Payroll_and_PA\Sofia\Register_Sofia_2015.xlsx" "C:\Users\BGBOVAR\Documents\my_tmp\Arh_Registers\Register_Sofia_2015-%date:/=%-%time::=.%.xlsx"

::ECHO ... working ... macking " Register_Petrich_2015-%date%-%time% "
::ECHO ... working ... macking " Register_Petrich_2015-%date:/=%-%time::=.% "
::copy "R:\Payroll_and_PA\Petrich\Register_Petrich_2015.xlsx" "C:\Users\BGBOVAR\Documents\my_tmp\Register_Petrich_2015-%date:/=%-%time::=.%.xlsx"

::ECHO ... working ... macking " Register_Sevlievo_2015-%date%-%time% "
::ECHO ... working ... macking " Register_Sevlievo_2015-%date:/=%-%time::=.% "
::copy "R:\Payroll_and_PA\Sevlievo\Register_Sevlievo_2015.xlsx" "C:\Users\BGBOVAR\Documents\my_tmp\Register_Sevlievo_2015-%date:/=%-%time::=.%.xlsx"

::==================================== OLD SCRIPT - v.2.0 ==================================================
::========================================================================================================== 
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
::==========================================================================================================

ECHO ################################ 
Echo ***** ALL TASKS DONE !!! *****
ECHO ################################
PAUSE
:: Give the user some time to see the results. 
:: Because this is our last line, the program will exit and the command window will close once this line finishes.

::End Code