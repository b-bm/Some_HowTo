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

rmdir /s /q "F:\PROGS\FileZillaPortable"
rmdir /s /q "F:\PROGS\KiTTYPortable"
rmdir /s /q "F:\PROGS\Password Notebook Plus"
rmdir /s /q "F:\PROGS\PuTTYPortable"
rmdir /s /q "F:\Downloads"

echo DONE-1

:: !!! This removes dirs on D !!!

rmdir /s /q "D:\Install"
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

del /f /q "D:\Downloads\ARHIV REGATA *.*"
del /f /q "D:\Downloads\GFO ALL *.*"
del /f /q "D:\Downloads\Arh_Tunderbird Portable on F_*.*"

echo DONE-3

:: !!! This removes dirs on D !!!

rmdir /s /q "D:\Boyan_Documents\ViberDownloads"
rmdir /s /q "D:\Boyan_Documents\Tekusta\Deklaracii&Spravki\DHarakteristiki"
rmdir /s /q "D:\Boyan_Documents\Tekusta\Ob6ti"
rmdir /s /q "D:\Boyan_Documents\Tekusta\Osiguriavane_Naredbi\Arhv_Ukaz_NAP"
rmdir /s /q "D:\Boyan_Documents\Tekusta\Osiguriavane_Naredbi\VedZaplatiXL_Arhiv"

echo DONE-4

:: !!! This removes filess on D !!!

del /f /q "D:\Boyan_Documents\Tekusta\Osiguriavane_Naredbi\*.*"

echo DONE-5

:: !!! This removes dirs on D !!!

rmdir /s /q "D:\Boyan_Documents\Tekusta\SPISACI"

echo DONE-6

:: !!! This removes files on D !!!

del /f /q "D:\Boyan_Documents\Tekusta\*.*"

echo DONE-7

:: !!! This removes dirs on D !!!

rmdir /s /q "D:\Arhiv\1_Programs_Inst_C"
rmdir /s /q "D:\Arhiv\2_GInsp_Truda"
rmdir /s /q "D:\Arhiv\3_GFO_FIRMI"
rmdir /s /q "D:\Arhiv\6_Dogovori Schetovodstvo"
rmdir /s /q "D:\Arhiv\7_OFFICE_PC_ALL"
rmdir /s /q "D:\Arhiv\10_ MY_Phones"
rmdir /s /q "D:\Arhiv\Arh_Tunderbird Portable on F_*"
rmdir /s /q "D:\Arhiv\Mreja_Nastr_Cucekova"
rmdir /s /q "D:\Arhiv\MyDocs_*"
rmdir /s /q "D:\Arhiv\REGISTRACIA-DOGOVORI"
rmdir /s /q "D:\Arhiv\SUPPORT_Sertificati"

echo DONE-8

:: !!! This removes filess on D !!!

del /f /q "D:\Arhiv\*.*"

echo DONE-9

ECHO ******************************************************* 
echo *******************************************************
 
Echo ***** !!! ALL TASKS DONE !!! *****
PAUSE
:: Give the user some time to see the results. 
:: Because this is our last line, the program will exit and the command window will close once this line finishes.

::End Code