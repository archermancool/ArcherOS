@echo off
title no u
echo me: open the door for me.
timeout /t 5 >nul.
echo human: no u
timeout /t 1 >nul.
:loop
echo me: no u
timeout /t 1 >nul.
echo human: no u
timeout /t 1 >nul.
goto loop