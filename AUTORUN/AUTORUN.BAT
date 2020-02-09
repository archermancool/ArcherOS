@echo off
title Welcome To ArcherOS
echo Hello welcome to ArcherOS, please select the following
echo 1 = install
echo 2 = new profile
echo 3 = uninstall
set /p pkey= 
IF "%pkey%"=="1" (
cls
cd ..
install.bat
)

 IF "%pkey%"=="2" (
cls
mkdir c:\ArcherOS\%userprofile%
mkdir c:\ArcherOS\%userprofile%\documents
echo Done
pause )
 IF "%pkey%"=="3" (
cls
cd ..
uninstall.bat
)


