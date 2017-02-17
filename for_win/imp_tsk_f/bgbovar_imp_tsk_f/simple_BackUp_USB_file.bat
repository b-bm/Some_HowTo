:: This command file runn next commands:
:: Author: nighthawk - bgbovar
:: ver.: 1.0 - 05.01.2015
::
:: RMDIR /s /q or RD /s /q -> this removes all directorys and files from list below
:: del /f /q -> -> this removes all files from list below
:: copy 
:: xcopy /E -> copy all dirs,subdirs and files; /H + all hidden and system files; /Q - quiet copy 
:: MD -> Example C:\temp> MD MyFolder
:: and print some texts
:: NOTES - TO DO: to add " ";   


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
ECHO ############################################################
ECHO *** DELETING OLD FILES and FOLDERS in BoianArh BEGIN ... ***
ECHO ############################################################
ECHO working .....
ECHO ... DELETING imp_tsk_f in BoianArh ...
rmdir /s /q "E:\BoianArh\imp_tsk_f"
MD "E:\BoianArh\imp_tsk_f"

ECHO working .....
ECHO ... DELETING InterL_Fakturi\TOYOTA_COROLLA_Docs_MY ...
rmdir /s /q "E:\BoianArh\InterL_Fakturi\TOYOTA_COROLLA_Docs_MY"
MD "E:\BoianArh\InterL_Fakturi\TOYOTA_COROLLA_Docs_MY"

ECHO ... DELETING FOLDERS in Danni ...
::rmdir /s /q ""
::MD ""
ECHO working .....ArhivPSW 
rmdir /s /q "E:\BoianArh\Danni\ArhivPSW"
MD "E:\BoianArh\Danni\ArhivPSW"
ECHO working .....EVN_VIK_info
rmdir /s /q "E:\BoianArh\Danni\EVN_VIK_info"
MD "E:\BoianArh\Danni\EVN_VIK_info"
ECHO working .....PIB_Izvl_Visa
rmdir /s /q "E:\BoianArh\Danni\PIB_Izvl_Visa"
MD "E:\BoianArh\Danni\PIB_Izvl_Visa"
ECHO working .....sys_info_nosec
rmdir /s /q "E:\BoianArh\Danni\sys_info_nosec"
MD "E:\BoianArh\Danni\sys_info_nosec"

ECHO ... DELETING FOLDERS in Danni\ArhUSB_Prog ...
::rmdir /s /q ""
::MD ""
ECHO working .....EssentialPIM
rmdir /s /q "E:\BoianArh\Danni\ArhUSB_Prog\Programs\EssentialPIM"
MD "E:\BoianArh\Danni\ArhUSB_Prog\Programs\EssentialPIM"
ECHO working .....FileZillaPortable
rmdir /s /q "E:\BoianArh\Danni\ArhUSB_Prog\Programs\FileZillaPortable"
MD "E:\BoianArh\Danni\ArhUSB_Prog\Programs\FileZillaPortable"
ECHO working .....FileZillaPortable_WinXP
rmdir /s /q "E:\BoianArh\Danni\ArhUSB_Prog\Programs\FileZillaPortable_WinXP"
MD "E:\BoianArh\Danni\ArhUSB_Prog\Programs\FileZillaPortable_WinXP"
ECHO working .....KiTTYPortable
rmdir /s /q "E:\BoianArh\Danni\ArhUSB_Prog\Programs\KiTTYPortable"
MD "E:\BoianArh\Danni\ArhUSB_Prog\Programs\KiTTYPortable"
ECHO working .....Notepad++Portable
rmdir /s /q "E:\BoianArh\Danni\ArhUSB_Prog\Programs\Notepad++Portable"
MD "E:\BoianArh\Danni\ArhUSB_Prog\Programs\Notepad++Portable"
ECHO working .....PuTTYPortable
rmdir /s /q "E:\BoianArh\Danni\ArhUSB_Prog\Programs\PuTTYPortable"
MD "E:\BoianArh\Danni\ArhUSB_Prog\Programs\PuTTYPortable"
ECHO working .....ThunderbirdPortable
rmdir /s /q "E:\BoianArh\Danni\ArhUSB_Prog\Programs\ThunderbirdPortable"
MD "E:\BoianArh\Danni\ArhUSB_Prog\Programs\ThunderbirdPortable"
ECHO working .....WinSCPPortable
rmdir /s /q "E:\BoianArh\Danni\ArhUSB_Prog\Programs\WinSCPPortable"
MD "E:\BoianArh\Danni\ArhUSB_Prog\Programs\WinSCPPortable"

::rmdir /s /q ""
::MD ""

ECHO ... DELETING FILES in Danni ...
::del /f /q ""
::ECHO working .....Myfin_2014.xls
::del /f /q "E:\BoianArh\Danni\MyFinance\Myfin_2014.xls"
ECHO working .....Myfin_2015.xls
del /f /q "E:\BoianArh\Danni\MyFinance\Myfin_2015.xls"
ECHO working .....c_s_info*
del /f /q "E:\BoianArh\Danni\c_s_info*"
ECHO working .....DNI.rar
del /f /q "E:\BoianArh\Danni\DNI.rar"
ECHO working .....Programs.rar
del /f /q "E:\BoianArh\Danni\ArhUSB_Prog\Programs.rar"
::ECHO working .....
::del /f /q ""

ECHO ***********************************************
ECHO !!! Done-1 - ALL THINGS IN DANNI are Delete !!!
ECHO ***********************************************
ECHO .....
ECHO #########################################################
ECHO *** DELETING in Kursove - all about info - Some_HowTo ***
ECHO #########################################################

rmdir /s /q "E:\BoianArh\UROCI\all about info\Some_HowTo"
MD "E:\BoianArh\UROCI\all about info\Some_HowTo"

ECHO .....
ECHO ******************************************************************
ECHO !!! Done-2 in Kursove - all about info - Some_HowTo are Delete !!!
ECHO ******************************************************************
ECHO .....
ECHO ###############################################################
ECHO *** DELETING OLD FILES and FOLDERS in BoianArh\Office BEGIN ***
ECHO ###############################################################
::rmdir /s /q ""
::MD ""
ECHO working .....Bio_Kamini
rmdir /s /q "E:\BoianArh\Office\Bio_Kamini"
MD "E:\BoianArh\Office\Bio_Kamini"
ECHO working .....HRA_Junona
rmdir /s /q "E:\BoianArh\Office\UCHR\HRA_Junona"
MD "E:\BoianArh\Office\UCHR\HRA_Junona"
ECHO working .....MY CV_CL_R
rmdir /s /q "E:\BoianArh\Office\MY CV_CL_R"
MD "E:\BoianArh\Office\MY CV_CL_R"
ECHO working .....Izcisliteli_xls
rmdir /s /q "E:\BoianArh\Office\Izcisliteli_xls"
MD "E:\BoianArh\Office\Izcisliteli_xls"
::del /f /q ""

del /f /q "E:\BoianArh\Office\MY CV_CL_R.rar"
del /f /q "E:\BoianArh\Office\my_sap_info.txt"

ECHO **************************************************************
ECHO !!! Done-3 FILES and FOLDERS in BoianArh\Office are Delete !!!
ECHO **************************************************************
ECHO .....
ECHO #########################################################
ECHO *** DELETING OLD FILES and FOLDERS in My_Office BEGIN ***
ECHO #########################################################
::rmdir /s /q ""
::MD ""
ECHO working .....Bio_Kamini
rmdir /s /q "E:\My_Office\Bio_Kamini"
MD "E:\My_Office\Bio_Kamini"
ECHO working .....HRA_Junona
rmdir /s /q "E:\My_Office\HRA_Junona"
MD "E:\My_Office\HRA_Junona"
ECHO working .....MY CV_CL_R
rmdir /s /q "E:\My_Office\MY CV_CL_R"
MD "E:\My_Office\MY CV_CL_R"
ECHO working .....Izcisliteli_xls
rmdir /s /q "E:\My_Office\Izcisliteli_xls"
MD "E:\My_Office\Izcisliteli_xls"
::del /f /q ""
ECHO working .....my_sap_info.txt
del /f /q "E:\My_Office\my_sap_info.txt"

ECHO ********************************************************
ECHO !!! Done-4 FILES and FOLDERS in My_Office are Delete !!!
ECHO !!! ALL OLD FILES and FOLDERS ARE DELETE             !!!
ECHO ********************************************************
ECHO .....
ECHO #########################################################
echo *** Starting COPY of NEW FILES AND FOLDERS for BackUp ***
ECHO #########################################################
::xcopy
::xcopy /H /E /Q "" ""

::ECHO Copy - Myfin_2014.xls
::xcopy "H:\Danni\Myfin_2014.xls" "E:\BoianArh\Danni\MyFinance\"
ECHO Copy - Myfin_2015.xls
xcopy "H:\Danni\Myfin_2015.xls" "E:\BoianArh\Danni\MyFinance\"
ECHO Copy - c_s_info
xcopy "H:\Danni\c_s_info*" "E:\BoianArh\Danni\"
ECHO Copy - DNI.rar
xcopy "H:\Danni\DNI.rar" "E:\BoianArh\Danni\"
ECHO Copy - MY CV_CL_R.rar
xcopy "H:\Office\MY CV_CL_R.rar" "E:\BoianArh\Office\"
ECHO Copy - BoianArh\Office\my_sap_info.txt
xcopy "H:\Office\my_sap_info.txt" "E:\BoianArh\Office\"
ECHO Copy - My_Office - my_sap_info.txt
xcopy "H:\Office\my_sap_info.txt" "E:\My_Office\"

ECHO *********************************************
ECHO !!! Done-1 - Copy of NEW FILES - Complete !!!
ECHO *********************************************
ECHO .....
ECHO Copy - BoianArh\imp_tsk_f
xcopy /H /E /Q "H:\imp_tsk_f" "E:\BoianArh\imp_tsk_f"
ECHO Copy - InterL_Fakturi\TOYOTA_COROLLA_Docs_MY
xcopy /H /E /Q "H:\Danni\InterL_Fakturi\TOYOTA_COROLLA_Docs_MY" "E:\BoianArh\InterL_Fakturi\TOYOTA_COROLLA_Docs_MY"
ECHO Copy - BoianArh\Office\Izcisliteli_xls
xcopy /H /E /Q "H:\Office\Izcisliteli_xls" "E:\BoianArh\Office\Izcisliteli_xls"
ECHO Copy - My_Office\Izcisliteli_xls
xcopy /H /E /Q "H:\Office\Izcisliteli_xls" "E:\My_Office\Izcisliteli_xls"

ECHO ***************************************************
ECHO !!! Done-2 - Copy of NEW COMMON DIRS - Complete !!!
ECHO ***************************************************

ECHO #########################################################
ECHO *** Starting BackUp with FreeFileSync for NEW FOLDERS ***
ECHO #########################################################
"C:\Progs Portable\FreeFileSync\FreeFileSync.exe" "E:\BoianArh\ghost-pc_FreeFileSync_batch_files\ghost_pc_usb_backUp.ffs_batch"
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
ECHO !!! Done-3 - BackUp with FreeFileSync for NEW FOLDERS - Complete !!!
ECHO ********************************************************************
ECHO .....
ECHO ################################################
echo *** Starting BackUp of NEW C:\Progs Portable ***
ECHO ################################################

ECHO ... DELETING OLD FOLDERS ...
::rmdir /s /q ""
::MD ""
ECHO working .....FileZillaPortable
rmdir /s /q "C:\Progs Portable\FileZillaPortable"
MD "C:\Progs Portable\FileZillaPortable"
ECHO working .....KiTTYPortable
rmdir /s /q "C:\Progs Portable\KiTTYPortable"
MD "C:\Progs Portable\KiTTYPortable"
ECHO working .....PuTTYPortable
rmdir /s /q "C:\Progs Portable\PuTTYPortable"
MD "C:\Progs Portable\PuTTYPortable"
ECHO working .....WinSCPPortable
rmdir /s /q "C:\Progs Portable\WinSCPPortable"
MD "C:\Progs Portable\WinSCPPortable"
ECHO working .....Notepad++Portable
rmdir /s /q "C:\Progs Portable\Notepad++Portable"
MD "C:\Progs Portable\Notepad++Portable"

::rmdir /s /q ""
::MD ""
::rmdir /s /q ""
::MD ""

ECHO ***************************************************
ECHO !!! Done-1 - DELETING OF OLD FOLDERS - Complete !!!
ECHO ***************************************************
ECHO .....
ECHO #################################################################
ECHO *** Starting COPY with FreeFileSync for NEW C:\Progs Portable ***
ECHO #################################################################

"C:\Progs Portable\FreeFileSync\FreeFileSync.exe" "E:\BoianArh\ghost-pc_FreeFileSync_batch_files\ghost_pc_Progs_Portable_backUp.ffs_batch"
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
ECHO ****************************************************************************
ECHO !!! Done-2 - COPY with FreeFileSync for NEW C:\Progs Portable - Complete !!!
ECHO ****************************************************************************
ECHO .....
ECHO ########################################## 
ECHO ***** ALL TASKS COMPLETED SUCCESSFUL *****
ECHO ##########################################
PAUSE
:: Give the user some time to see the results. 
:: Because this is our last line, the program will exit and the command window will close once this line finishes.

::End Code