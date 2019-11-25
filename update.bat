@echo off
title ArcherOS Updater
set "URL=https://archermancool.github.io/spyteam/archeros.zip"
for %%a in (%URL%) do Set "File=%%~nxa"
Set "DownloadFolder=c:\ArcherOS\UF\"
Call :Download "%URL%" "%DownloadFolder%\%File%"
for /f "tokens=*" %%A in ('Type "%DownloadFolder%\%File%"') do (echo %%A)
::--------------------------------------------
:Download <Url> <File>
certutil.exe -urlcache -split -f %1 %2 >nul
::-------------------------------------------
powershell.exe -nologo -noprofile -command "& { $shell = New-Object -COM Shell.Application; $target = $shell.NameSpace('C:\ArcherOS\UF\'); $zip = $shell.NameSpace('C:\ArcherOS\UF\archeros.zip'); $target.CopyHere($zip.Items(), 16); }"
del c:\ArcherOS\UF\archeros.zip
copy /y "C:\ArcherOS\UF\archer os\INSTALLER\ArcherOS.bat" "c:\ArcherOS"
copy /y "C:\ArcherOS\UF\archer os\INSTALLER\apps" c:\ArcherOS\apps"
copy /y "C:\ArcherOS\UF\archer os\INSTALLER\ArcherOS.bat" "%userprofile%\desktop"
copy /y "C:\ArcherOS\UF\archer os\INSTALLER\ArcherOS.bat" "%userprofile%\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup"
@RD /S /Q "c:\ArcherOS\UF\archer os"