@echo off
title Screenshare commands

:: Admin
net session >nul 2>&1
if %errorLevel% neq 0 (
   
    powershell -Command "Start-Process '%~f0' -Verb RunAs"
    exit /b
)

echo 
echo.

:: Nustatomas Minecraft mods kelias kintamajam
set "MODS_PATH=%APPDATA%\.minecraft\mods"

:: 1 KOMANDA:  (DoomsDayDetector)
echo [1/4]  DoomsDayDetector...
powershell -ExecutionPolicy Bypass -Command "$modsPath = '%MODS_PATH%'; function Read-Host { param($p) return $modsPath }; Invoke-Expression (Invoke-RestMethod 'https://raw.githubusercontent.com/zedoonvm1/powershell-scripts/refs/heads/main/DoomsDayDetector.ps1')"
echo.
pause
echo.

:: 2 KOMANDA: (MeowModAnalyzer)
echo [2/4]  MeowModAnalyzer...
powershell -ExecutionPolicy Bypass -Command "$modsPath = '%MODS_PATH%'; function Read-Host { param($p) return $modsPath }; Invoke-Expression (Invoke-RestMethod 'https://raw.githubusercontent.com/MeowTonynoh/MeowModAnalyzer/main/MeowModAnalyzer.ps1')"
echo.
pause
echo.

:: 3 KOMANDA: (YarpsModAnalyzer6.0)
echo [3/4]  YarpsModAnalyzer6.0...
powershell -ExecutionPolicy Bypass -Command "Invoke-Expression (Invoke-RestMethod 'https://raw.githubusercontent.com/YarpLetapStan/PowershellScripts/refs/heads/main/YarpsModAnalyzer6.0.ps1')"
echo.
pause
echo.

:: 4 KOMANDA: (TriggerbotModAnalyzer)
echo [4/4]  TriggerbotModAnalyzer...
powershell -ExecutionPolicy Bypass -Command "Invoke-Expression (Invoke-RestMethod 'https://raw.githubusercontent.com/nbme-ss/powershell-scripts/refs/heads/main/triggerbotmodanalyzer.ps1')"
echo.

pause



