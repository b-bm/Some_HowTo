:: This command file runn next commands:
:: RMDIR /s /q or RD /s /q -> this removes all directorys and files from list below
:: and print some texts

:: Start Code

TITLE This is - FAST REMOVE COMMAND FILE for borntokill PC!
:: Show some title of my file  

ECHO OFF
:: CMD will no longer show us what command it’s executing(cleaner)

ECHO !!!!! IMPORTANT-WARNING - THIS WILL REMOVES SOME FILES AND DIRECTORYES !!!!! 
:: Print some text

PAUSE
:: Lets the user read the important information

ECHO !!! WARNING - DO YOU WANT TO PROCEED IF ^"YES^" Press any key !!! 
:: Print some text

PAUSE
:: Lets the user read the important information

:: !!! This removes dirs on F !!!
echo START TASK-1

rmdir /s /q "F:\PROGS\FileZillaPortable"
rmdir /s /q "F:\PROGS\KiTTYPortable"
rmdir /s /q "F:\PROGS\Password Notebook Plus"
rmdir /s /q "F:\PROGS\PuTTYPortable"
rmdir /s /q "F:\Downloads"

echo DONE-1

:: !!! This removes dirs on D !!!
echo START TASK-2

::rmdir /s /q "D:\Install"
rmdir /s /q "D:\Downloads\temp_my folder"
rmdir /s /q "D:\Downloads\FireF"
rmdir /s /q "D:\Downloads\Movie\New Media"
rmdir /s /q "D:\Downloads\Movie\1_torr"
rmdir /s /q "D:\Downloads\Movie\2_torr"
rmdir /s /q "D:\Downloads\software"
rmdir /s /q "D:\Downloads\Cloud Drives"
rmdir /s /q "D:\Downloads\Chrome"
rmdir /s /q "D:\Downloads\Ofis_2014*"
rmdir /s /q "D:\Downloads\Izcisliteli"
rmdir /s /q "D:\Downloads\temp_INFO"

echo DONE-2

:: !!! This removes files on D !!!
echo START TASK-3

del /f /q "D:\Downloads\ARHIV REGATA *.*"
del /f /q "D:\Downloads\GFO ALL *.*"
del /f /q "D:\Downloads\Arh_Tunderbird Portable on F_*.*"

echo DONE-3

:: !!! This removes dirs on D !!!
echo START TASK-4

rmdir /s /q "D:\Boyan_Documents\ViberDownloads"

echo DONE-4

:: !!! This removes filess on D !!!

echo it's OK 


echo DONE-5

:: !!! This removes dirs on D !!!

echo it's OK

echo DONE-6

:: !!! This removes files on D !!!

echo it's OK

echo DONE-7

:: !!! This removes dirs on D !!!
echo START TASK-8

rmdir /s /q "D:\Arhiv\1_Programs_Inst_C"
rmdir /s /q "D:\Arhiv\10_ MY_Phones"

echo DONE-8

:: !!! This removes filess on D !!!
echo START TASK-9

del /f /q "D:\Arhiv\Arh_FileZilla on F_20.12.2012.rar"
del /f /q "D:\Arhiv\Cucekova_www_v2.ace"
del /f /q "D:\Arhiv\Cucekova_www_v2_new 24.02.2011.ace"

echo DONE-9

:: !!! This removes dirs on C:\Documents and Settings\All Users\Documents !!! (Shared Documents)
echo START TASK-10

rmdir /s /q "C:\Documents and Settings\All Users\Documents\ls_tmp_folder"

echo DONE-10

ECHO ******************************************************* 
echo *******************************************************
 
Echo ***** !!! ALL TASKS DONE !!! *****
PAUSE
:: Give the user some time to see the results. 
:: Because this is our last line, the program will exit and the command window will close once this line finishes.

::End Code