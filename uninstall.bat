@echo off
echo Are you sure you want to uninstall?
pause
del "%userprofile%\desktop\ArcherOS.bat"
 del "%userprofile%\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup\ArcherOS.bat"
@RD /S /Q "c:\ArcherOS"
cls
echo uninstall complete!
pause