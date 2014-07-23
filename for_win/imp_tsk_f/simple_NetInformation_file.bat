:: This command file runn next commands:
:: IPCONFIG /ALL
:: PING some IP
:: and print some texts

::Start Code

TITLE This is some simple FAST Task File.
::Show some title of my file  

ECHO OFF
::CMD will no longer show us what command it’s executing(cleaner)

ECHO As a network admin, I'm getting tired of having to type these commands in! 
Echo Hopefully, this saves me some time in the long run.
ECHO This is small command file for automation on some commands!
:: Print some text

PAUSE
:: Lets the user read the important information

IPCONFIG /ALL
:: Outputs tons of network information into the command prompt
PAUSE
:: Lets the user read the important information

PING www.google.com
:: Ping google to figure out if we’ve got internet!

ECHO All done pinging Google.
::Print some text

ECHO ************************************************ 
ECHO ************************************************
 
 
Echo ALL TASKS DONE !!!
PAUSE
:: Give the user some time to see the results. 
:: Because this is our last line, the program will exit and the command window will close once this line finishes.

::End Code