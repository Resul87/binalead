@echo off
chcp 65001 >nul
title BinaLeadPro Cloud v4.0 — Enhanced Edition

echo.
echo ════════════════════════════════════════════════════════════════════
echo   🚀 BINA LEAD PRO CLOUD v4.0 — WEB SERVER İŞƏ SALINIR
echo   ✨ Yeni: AI Lead Scoring, CRM Export, WhatsApp Bulk, PWA
echo ════════════════════════════════════════════════════════════════════
echo.

cd /d "%~dp0"

REM Check if Python is installed
python --version >nul 2>&1
if errorlevel 1 (
    echo [!] Xəta: Python quraşdırılmayıb!
    echo     Python 3.8+ yükləyin: https://www.python.org/downloads/
    pause
    exit /b 1
)

REM Install dependencies
echo [i] Asılılıqlar yoxlanılır...
pip install -q -r requirements.txt 2>nul
if errorlevel 1 (
    echo [!] Asılılıqların quraşdırılması uğursuz oldu.
    pause
    exit /b 1
)

echo.
echo ✅ Bütün asılılıqlar hazırdır.
echo.
echo [▶] Server işə salınır...
echo.
echo ════════════════════════════════════════════════════════════════════
echo.

REM Open browser automatically
start "" "http://127.0.0.1:8000"

REM Run the enhanced server
python web_server_v2.py

pause
