@echo off
REM Change directory to script location
cd /d "%~dp0"

echo -------------------------------------------------
echo Converting Excel to JSON...
python convert_excel_to_json.py
IF %ERRORLEVEL% NEQ 0 (
    echo ❌ Failed to run Python script. Make sure pandas and openpyxl are installed.
    pause
    exit /b
)

echo ✅ Excel converted successfully.
echo -------------------------------------------------

echo Starting local server at http://localhost:8000 ...
python -m http.server 8000

pause
