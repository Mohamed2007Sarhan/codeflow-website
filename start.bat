@echo off
title Code Analysis Launcher
echo ==========================================
echo   Starting Code Analysis & Debugging Tool
echo ==========================================

echo.
echo [1/3] Starting Backend Server...
start "Backend API" cmd /k "cd backend && ..\.venv\Scripts\python main.py"

echo.
echo [2/3] Starting Frontend Interface...
start "Frontend UI" cmd /k "cd frontend && npm run dev"

echo.
echo [3/3] Launching Browser in 5 seconds...
timeout /t 5 >nul
start http://localhost:5173

echo.
echo Done! You can close this window, but keep the other two open.
pause