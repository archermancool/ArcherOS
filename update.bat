@echo off
title ArcherOS Updater
set "URL=https://archermancool.github.io/archeros.zip"
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