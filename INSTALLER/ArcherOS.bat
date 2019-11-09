@echo off
title ArcherOS
cls
echo Welcome to ArcherOS
:start
cls
set /p cmd=enter command (type help for help)  
IF "%cmd%"=="calc" (
Cls
c:\ArcherOS\apps\calc.bat
 )

IF "%cmd%"=="run" (
Cls
c:\ArcherOS\apps\run.bat
 )

IF "%cmd%"=="about" (
Cls
echo ArcherOS Beta W.I.P
pause
goto start
 )
IF "%cmd%"=="exit" (
Cls
exit
 )
IF "%cmd%"=="edit" (
Cls
c:\ArcherOS\apps\edit.bat
 )
IF "%cmd%"=="game1" (
Cls
c:\ArcherOS\apps\game1.bat
 )
IF "%cmd%"=="help" (
Cls
echo apps:
echo calc
echo edit
echo run
echo games:
echo game1
pause
goto start
 )
IF "%cmd%"=="no_u" (
Cls
"c:\ArcherOS\apps\no u.bat"
 )
IF "%cmd%"=="you_looked" (
Cls
start c:\ArcherOS\apps\founder.bat
start c:\ArcherOS\apps\thanks.bat
 )
 IF "%cmd%"=="feedback" (
Cls
echo if you have feedback, contact me at archerpokemongo@gmail.com
pause
 )
IF "%cmd%"=="uninstall" (
Cls
c:\ArcherOS\uninstall\uninstall.bat
 )
goto start