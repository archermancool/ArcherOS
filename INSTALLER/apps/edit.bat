@echo off
title ArcherOS Editor
echo Welcome to ArcherOS Text Editor
echo ONLY ONE WORD FILE NAMES
set /p name=please enter the name of your project  
set /p text=please enter text for inside your project 
echo %text% >c:\ArcherOS\%name%.txt
echo Saved! it is stored in c:\ArcherOS
pause
c:\ArcherOS\ArcherOS.bat