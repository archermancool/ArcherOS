@echo off
title AmcWeb
set "text=Error, you might of typed in the wrong amcsite or you have no internet"
set /p "URL1=what is the name of the site EX homepage.amc 
set "URL=https://stepupa-m-c.github.io/ArcherOSsites/%URL1%/index.amc"
powershell Start-BitsTransfer -Source %URL% -Destination C:\ArcherOS\AMCWEBDATA
cls
set /p text=<c:\ArcherOS\AMCWEBDATA\index.amc
cls
echo %text%
pause
del c:\ArcherOS\AMCWEBDATA\index.amc
c:\ArcherOS\ArcherOS.bat