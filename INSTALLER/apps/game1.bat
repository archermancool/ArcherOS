@echo off
title Guessing Game
set /a guessnum=0
set /a answer=%RANDOM%
echo.
echo Welcome to the Guessing Game!
echo.
echo Try and Guess the number.
echo -----------------------------------
echo.
:top
echo.
set /p guess=
echo.
if %guess% GTR %answer% echo Lower!
if %guess% LSS %answer% echo Higher!
if %guess%==%answer% GOTO EQUAL
set /a guessnum=%guessnum% +1
goto top
:equal
echo Congratulations, you guessed right! It took you %guessnum% tries, but you did it!
pause
c:\ArcherOS\ArcherOS.bat