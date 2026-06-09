@echo off
title Autism Care Dashboard Launcher
color 0A

echo.
echo  ==========================================
echo    Autism Care Dashboard - Launcher
echo  ==========================================
echo.
echo  Step 1: Checking Python...

python --version
if %errorlevel% neq 0 (
    echo.
    echo  [ERROR] Python not found.
    echo  Download from: https://www.python.org/downloads/
    echo  During install check "Add Python to PATH"
    echo.
    pause
    exit /b 1
)

echo  Python OK.
echo.
echo  Step 2: Finding HTML file...

cd /d "%~dp0"

if exist "autism-care-dashboard.html" goto :usedashedname
if exist "Autism Care Dashboard.html" goto :usespacedname

echo  [ERROR] HTML file not found in: %~dp0
echo.
dir /b
echo.
pause
exit /b 1

:usedashedname
echo  Found: autism-care-dashboard.html
echo.
echo  Step 3: Starting server...
echo.
echo  ==========================================
echo   Open this address in Chrome:
echo.
echo   http://localhost:8080/autism-care-dashboard.html
echo.
echo   (browser opens automatically in 3 seconds)
echo  ==========================================
echo.
echo  Keep this window open while using the app.
echo.
start "" /b cmd /c "timeout /t 3 /nobreak >nul && start chrome http://localhost:8080/autism-care-dashboard.html"
python -m http.server 8080
goto :done

:usespacedname
echo  Found: Autism Care Dashboard.html
echo.
echo  Step 3: Starting server...
echo.
echo  ==========================================
echo   Open this address in Chrome:
echo.
echo   http://localhost:8080/Autism%%20Care%%20Dashboard.html
echo.
echo   (browser opens automatically in 3 seconds)
echo  ==========================================
echo.
echo  Keep this window open while using the app.
echo.
start "" /b cmd /c "timeout /t 3 /nobreak >nul && start chrome http://localhost:8080/Autism%%20Care%%20Dashboard.html"
python -m http.server 8080

:done
echo.
echo  Server stopped.
pause
