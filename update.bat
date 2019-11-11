@echo off
title ArcherOS Updater
set "URL=https://archermancool.github.io/archeros.zip"
for %%a in (%URL%) do Set "File=%%~nxa"
Set "DownloadFolder=c:\ArcherOS\UF\"
Call :Download "%URL%" "%DownloadFolder%\%File%"
for /f "tokens=*" %%A in ('Type "%DownloadFolder%\%File%"') do (echo %%A)
pause>nul & Exit
::--------------------------------------------
:Download <Url> <File>
certutil.exe -urlcache -split -f %1 %2 >nul
exit /b
::-------------------------------------------
