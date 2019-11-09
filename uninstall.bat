@echo off
echo Are you sure you want to uninstall?
pause
del "c:\ArcherOS\ArcherOS.bat"
del "c:\ArcherOS\
del "c:\ArcherOS\apps"
del "%userprofile%\desktop\ArcherOS.bat"
 del "%userprofile%\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup\ArcherOS.bat"
del "c:\ArcherOS\uninstall"
cls
echo uninstall complete!
pause