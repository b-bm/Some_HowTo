:: This command file runn next commands:
:: IPCONFIG /ALL
:: PING some IP
:: and print some texts

::Start Code

TITLE This is some simple FAST Task File.
::Show some title of my file  

ECHO OFF
::CMD will no longer show us what command it�s executing(cleaner)

ECHO *** As a admin, I'm lazy man and I'm tired to type these commands often! 
Echo *** Hopefully, this saves me some time in the long run.
ECHO *** This is small command file for automation on some commands!
echo **********************************************************************
:: Print some text

PAUSE
:: Lets the user read the important information

IPCONFIG /ALL
:: Outputs tons of network information into the command prompt
PAUSE
:: Lets the user read the important information
PING 46.35.170.12
:: Ping my IP - my new n3 real IP
::PING 85.187.248.24
:: Ping my IP - my old visio-evronet IP

ECHO All done pinging My IP.
::Print some text

::PING 
:: Ping my Internet Provider IP - n3
::PING 80.72.72.164
:: Ping my Internet Provider IP - old visio-evronet

ECHO *** All done pinging My IP's. ***
::Print some text


ECHO ************************************************ 
ECHO ************************************************
 
 
Echo ALL TASKS DONE !!!
PAUSE
:: Give the user some time to see the results. 
:: Because this is our last line, the program will exit and the command window will close once this line finishes.

::End Code