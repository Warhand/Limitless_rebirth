@echo off
cd "C:\Users\Kylie\curseforge\minecraft\Instances\Limitless Rebirth\mods"
:start
tree /f /a > "C:\Users\Kylie\curseforge\minecraft\Instances\Limitless Rebirth\Automodlist.txt"
echo "file generated"
date /t
time /t
date /t >> "C:\Users\Kylie\curseforge\minecraft\Instances\Limitless Rebirth\Automodlist.txt"
time /t >> "C:\Users\Kylie\curseforge\minecraft\Instances\Limitless Rebirth\Automodlist.txt"
Timeout /T 60 /NOBREAK
cls
goto start