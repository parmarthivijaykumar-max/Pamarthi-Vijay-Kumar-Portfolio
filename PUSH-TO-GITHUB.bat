@echo off
title Push Portfolio to GitHub
echo ========================================================
echo   Pushing Portfolio to GitHub (parmarthivijaykumar-max)
echo ========================================================
echo.

git add .
git commit -m "Update portfolio files" 2>nul
git branch -M main

echo Pushing to https://github.com/parmarthivijaykumar-max/portfolio ...
echo (If prompted, click Sign in with your browser)
echo.

git push -u origin main

if %ERRORLEVEL% EQU 0 (
    echo.
    echo ========================================================
    echo   SUCCESS! Your portfolio has been pushed to GitHub!
    echo   View it at: https://github.com/parmarthivijaykumar-max/portfolio
    echo ========================================================
) else (
    echo.
    echo If the repository was not found, create it on GitHub first:
    echo 1. Go to: https://github.com/new
    echo 2. Repository name: portfolio
    echo 3. Choose Public and click 'Create repository'
    echo 4. Run this script again!
)

echo.
pause
