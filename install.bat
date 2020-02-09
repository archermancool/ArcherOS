@echo off
title ArcherOS Installation
echo Thank you for choosing ArcherOS, we will install to c:\ArcherOS, enter to continue
pause
set unlock=false
set /p pkey=Please enter your product key (you can find it in your cd case)
 
IF "%pkey%"=="8946" (
set unlock=true
)
IF "%unlock%"=="false" (
exit
)
mkdir c:\ArcherOS
mkdir c:\ArcherOS\apps
mkdir c:\ArcherOS\UF
mkdir c:\ArcherOS\%username%
mkdir c:\ArcherOS\%username%\documents
mkdir c:\ArcherOS\AMCWEBDATA
copy /y "update.bat" "c:\ArcherOS\UF"
copy /y "INSTALLER\ArcherOS.bat" "c:\ArcherOS"
copy /y "INSTALLER\apps" c:\ArcherOS\apps"
copy /y "INSTALLER\ArcherOS.bat" "%userprofile%\desktop"
copy /y "INSTALLER\ArcherOS.bat" "%userprofile%\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup"
copy /y "INSTALLER\apps\amcweb.bat" c:\ArcherOS\apps" 
cls
echo Install worked!
echo Go to c:\ArcherOS and run ArcherOS.bat to start or open the shortcut on your desktop.
pause
exit