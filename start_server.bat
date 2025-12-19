@echo off
cd /d "%~dp0"

python --version >nul 2>&1
if %errorlevel% neq 0 (
    echo Python not found! Install from https://python.org
    pause
    exit /b
)

echo Starting server at http://localhost:8000/index.html
start "" "http://localhost:8000/index.html"
python -m http.server 8000
