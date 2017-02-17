:: This command file runn next commands:
:: RMDIR /s /q or RD /s /q -> this removes all directorys and files from list below
:: del /f /q -> -> this removes all files from list below
:: copy 
:: xcopy /H /E /Q 
:: xcopy /E -> copy all dirs,subdirs and files; /H + all hidden and system files; /Q - quiet copy 
:: MD -> Example C:\temp> MD MyFolder
:: and print some texts
:: NOTES - TO DO:  ; 


:: Start Code

::ECHO OFF
::Mode Con: Cols=120 Lines=55

TITLE This is - FAST USB BackUp COMMAND FILE.
:: Show some title of my file  

ECHO OFF
:: CMD will no longer show us what command it’s executing(cleaner)
ECHO ###################################################################
ECHO !!! IMPORTANT - THIS WILL REMOVES OLD BackUps and Macke NEWONE. !!! 
ECHO !!! DO YOU WANT TO CONTINUE !!!
ECHO ################################################################### 
:: Print some text

PAUSE
:: Lets the user read the important network information
ECHO ########################################################
ECHO DELETING OLD FILES and FOLDERS in Boyan's Docs BEGIN ...
ECHO ########################################################
ECHO .....
ECHO ..... DELETING InterL_Fakturi\TOYOTA_COROLLA_Docs_MY ...

rmdir /s /q "D:\Boyan's Docs\InterL_Fakturi\TOYOTA_COROLLA_Docs_MY"
MD "D:\Boyan's Docs\InterL_Fakturi\TOYOTA_COROLLA_Docs_MY"

ECHO .....
ECHO ..... DELETING FOLDERS in Danni ...
::rmdir /s /q ""
::MD ""
ECHO ... working ArhivPSW
rmdir /s /q "D:\Boyan's Docs\Danni\ArhivPSW"
MD "D:\Boyan's Docs\Danni\ArhivPSW"
ECHO ... working EVN_VIK_info
rmdir /s /q "D:\Boyan's Docs\Danni\EVN_VIK_info"
MD "D:\Boyan's Docs\Danni\EVN_VIK_info"
ECHO ... working PIB_Izvl_Visa
rmdir /s /q "D:\Boyan's Docs\Danni\PIB_Izvl_Visa"
MD "D:\Boyan's Docs\Danni\PIB_Izvl_Visa"
ECHO ... working UniCrBul_Izvl
rmdir /s /q "D:\Boyan's Docs\Danni\UniCrBul_Izvl"
MD "D:\Boyan's Docs\Danni\UniCrBul_Izvl"
ECHO ... working sys_info_nosec
rmdir /s /q "D:\Boyan's Docs\Danni\sys_info_nosec"
MD "D:\Boyan's Docs\Danni\sys_info_nosec"

ECHO ..... DELETING FILES in Danni ...
::del /f /q ""
ECHO ... working Myfin_2016.xls
del /f /q "D:\Boyan's Docs\Danni\My_Fin\Myfin_2016.xls"
ECHO ... working Myfin_2015.xls
del /f /q "D:\Boyan's Docs\Danni\My_Fin\Myfin_2015.xls"
ECHO ... working c_s_info*
del /f /q "D:\Boyan's Docs\Danni\c_s_info*"
ECHO ... working DNI.rar
del /f /q "D:\Boyan's Docs\Danni\DNI.rar"
::del /f /q ""

ECHO ***********************************************
ECHO !!! Done-1 - ALL THINGS IN DANNI are Delete !!!
ECHO ***********************************************
ECHO DELETING imp_tsk_f in Boyan's Docs ...

rmdir /s /q "D:\Boyan's Docs\imp_tsk_f"
MD "D:\Boyan's Docs\imp_tsk_f"

ECHO ***************************************************
ECHO !!! Done-2 imp_tsk_f in Boyan's Docs are Delete !!!
ECHO ***************************************************
ECHO DELETING in Kursove - all about info - Some_HowTo ...

rmdir /s /q "D:\Boyan's Docs\Kursove\all about info\Some_HowTo"
MD "D:\Boyan's Docs\Kursove\all about info\Some_HowTo"

ECHO ******************************************************************
ECHO !!! Done-3 in Kursove - all about info - Some_HowTo are Delete !!!
ECHO ******************************************************************
ECHO ..... DELETING FOLDERS in USB Programs ...
::rmdir /s /q ""
::MD ""
ECHO ... working EssentialPIM
rmdir /s /q "D:\Boyan's Docs\USB Programs\EssentialPIM"
MD "D:\Boyan's Docs\USB Programs\EssentialPIM"
ECHO ... working FileZillaPortable 
rmdir /s /q "D:\Boyan's Docs\USB Programs\FileZillaPortable"
MD "D:\Boyan's Docs\USB Programs\FileZillaPortable"
ECHO ... working KiTTYPortable
rmdir /s /q "D:\Boyan's Docs\USB Programs\KiTTYPortable"
MD "D:\Boyan's Docs\USB Programs\KiTTYPortable"
ECHO ... working PuTTYPortable
rmdir /s /q "D:\Boyan's Docs\USB Programs\PuTTYPortable"
MD "D:\Boyan's Docs\USB Programs\PuTTYPortable"
ECHO ... working ThunderbirdPortable
rmdir /s /q "D:\Boyan's Docs\USB Programs\ThunderbirdPortable"
MD "D:\Boyan's Docs\USB Programs\ThunderbirdPortable"
ECHO ... working WinSCPPortable
rmdir /s /q "D:\Boyan's Docs\USB Programs\WinSCPPortable"
MD "D:\Boyan's Docs\USB Programs\WinSCPPortable"

ECHO *************************************************
ECHO !!! Done-4 FOLDERS in USB Programs are Delete !!!
ECHO *************************************************
ECHO ##################################################
ECHO DELETING OLD FILES and FOLDERS in Office BEGIN ...
ECHO ##################################################
::rmdir /s /q ""
::MD ""
ECHO ... working Bio_Kamini
rmdir /s /q "D:\Office\Bio_Kamini"
MD "D:\Office\Bio_Kamini"
ECHO ... working HRA_Junona
rmdir /s /q "D:\Office\HRA_Junona"
MD "D:\Office\HRA_Junona"
ECHO ... working MY CV_CL_R
rmdir /s /q "D:\Office\MY CV_CL_R"
MD "D:\Office\MY CV_CL_R"
ECHO ... working Izcisliteli_xls
rmdir /s /q "D:\Office\Izcisliteli_xls"
MD "D:\Office\Izcisliteli_xls"

::del /f /q ""
ECHO ... working MY CV_CL_R.rar
del /f /q "D:\Office\MY CV_CL_R.rar"
ECHO ... working my_sap_info.txt
del /f /q "D:\Office\my_sap_info.txt"

ECHO *****************************************************
ECHO !!! Done-5 FILES and FOLDERS in Office are Delete !!!
ECHO !!!     ALL OLD FILES and FOLDERS ARE DELETE      !!!
ECHO *****************************************************
ECHO #########################################################
echo *** Starting COPY of NEW FILES AND FOLDERS for BackUp ***
ECHO #########################################################
::xcopy
::xcopy /H /E /Q "" ""

ECHO Copy - Myfin_2016.xls
xcopy "G:\Danni\Myfin_2016.xls" "D:\Boyan's Docs\Danni\My_Fin\"
ECHO Copy - Myfin_2015.xls
xcopy "G:\Danni\Myfin_2015.xls" "D:\Boyan's Docs\Danni\My_Fin\"
ECHO Copy - c_s_info
xcopy "G:\Danni\c_s_info*" "D:\Boyan's Docs\Danni\"
ECHO Copy - DNI.rar
xcopy "G:\Danni\DNI.rar" "D:\Boyan's Docs\Danni\"
ECHO Copy - MY CV_CL_R.rar
xcopy "G:\Office\MY CV_CL_R.rar" "D:\Office\"
ECHO Copy - my_sap_info.txt
xcopy "G:\Office\my_sap_info.txt" "D:\Office\"

ECHO .....
ECHO !!! Done-1 - Copy of NEW FILES - Complete !!!
ECHO .....

ECHO Copy - UniCrBul_Izvl
xcopy /H /E /Q "G:\Danni\UniCrBul_Izvl" "D:\Boyan's Docs\Danni\UniCrBul_Izvl"
ECHO Copy - InterL_Fakturi\TOYOTA_COROLLA_Docs_MY
xcopy /H /E /Q "G:\Danni\InterL_Fakturi\TOYOTA_COROLLA_Docs_MY" "D:\Boyan's Docs\InterL_Fakturi\TOYOTA_COROLLA_Docs_MY"
ECHO Copy - Office\Izcisliteli_xls
xcopy /H /E /Q "G:\Office\Izcisliteli_xls" "D:\Office\Izcisliteli_xls"

ECHO .....
ECHO !!! Done-2 - Copy of NEW COMMON DIRS - Complete !!!
ECHO .....

ECHO #########################################################
ECHO *** Starting BackUp with FreeFileSync for NEW FOLDERS ***
ECHO #########################################################
"C:\Progs_Portable\FreeFileSync_Portable\FreeFileSync.exe" "D:\Boyan's Docs\nighthawk_usb_backUp.ffs_batch"
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
ECHO !!! Done-3 - BackUp with FreeFileSync for NEW FOLDERS - Complete !!!
ECHO .....

ECHO ################################################
echo *** Starting BackUp of NEW Programs_Portable ***
ECHO ################################################

ECHO ..... DELETING OLD FOLDERS ...
::rmdir /s /q ""
::MD ""
ECHO ... working FileZillaPortable
rmdir /s /q "C:\Progs_Portable\FileZillaPortable"
MD "C:\Progs_Portable\FileZillaPortable"
ECHO ... working KiTTYPortable
rmdir /s /q "C:\Progs_Portable\KiTTYPortable"
MD "C:\Progs_Portable\KiTTYPortable"
ECHO ... working PuTTYPortable
rmdir /s /q "C:\Progs_Portable\PuTTYPortable"
MD "C:\Progs_Portable\PuTTYPortable"
ECHO ... working WinSCPPortable
rmdir /s /q "C:\Progs_Portable\WinSCPPortable"
MD "C:\Progs_Portable\WinSCPPortable"

::rmdir /s /q ""
::MD ""
::rmdir /s /q ""
::MD ""
::rmdir /s /q ""
::MD ""
ECHO .....
ECHO !!! Done-4 - DELETING OF OLD FOLDERS - Complete !!!
ECHO .....
ECHO *****************************************************************
ECHO *** Starting COPY with FreeFileSync for NEW Programs_Portable ***
ECHO *****************************************************************

"C:\Progs_Portable\FreeFileSync_Portable\FreeFileSync.exe" "D:\Boyan's Docs\nighthawk_Progs_Portable_backUp.ffs_batch"
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
ECHO !!! Done-5 - COPY with FreeFileSync for NEW Programs_Portable - Complete !!!
ECHO .....
::ECHO ************************************* 
::ECHO *************************************

ECHO ############################### 
ECHO ***** ALL TASKS DONE !!! *****
ECHO ###############################
PAUSE
:: Give the user some time to see the results. 
:: Because this is our last line, the program will exit and the command window will close once this line finishes.

::End Code