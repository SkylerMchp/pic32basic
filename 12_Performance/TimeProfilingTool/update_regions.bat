@ECHO OFF
PowerShell.exe -NoProfile -ExecutionPolicy Bypass -Command "& '%~dpn0.ps1'" > ..\src\Profiler\region.c
REM PAUSE
