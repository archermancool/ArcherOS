@echo off
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
mkdir c:\ArcherOS\uninstall
copy /y "INSTALLER\ArcherOS.bat" "c:\ArcherOS"
copy /y "INSTALLER\apps" c:\ArcherOS\apps"
copy /y "INSTALLER\ArcherOS.bat" "%userprofile%\desktop"
cls
set /p startup=do you want ArcherOS to run on startup? (y or n)
 
IF "%startup%"=="y" (
copy /y "INSTALLER\ArcherOS.bat" "%userprofile%\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup"
)
copy /y "uninstall.bat" "c:\ArcherOS\uninstall"
cls
echo Install worked!
echo Go to c:\ArcherOS and run ArcherOS.bat to start or open the shortcut on your desktop.
pause
exit