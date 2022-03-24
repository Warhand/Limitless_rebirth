@echo off
cd "C:\Users\Kylie\curseforge\minecraft\Instances\Limitless Rebirth\mods"
:start
tree /f /a > test4.txt
echo "file generated"
date /t
time /t
Timeout /T 10 /NOBREAK
cls
goto start