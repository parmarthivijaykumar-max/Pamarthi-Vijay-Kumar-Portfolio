@echo off
title PAMARTHI VIJAY KUMAR - DEV SERVER
color 0d
echo ===================================================
echo   STARTING VITE DEV SERVER FOR LOCALHOST:5173
echo ===================================================
echo.
set PATH=%~dp0node\node-v20.15.1-win-x64;%PATH%
start http://localhost:5173
call "%~dp0node\node-v20.15.1-win-x64\npm.cmd" run dev
pause
