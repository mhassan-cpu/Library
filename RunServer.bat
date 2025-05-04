@echo off
echo Installing dependencies...
call npm install

IF %ERRORLEVEL% NEQ 0 (
    echo Failed to install dependencies.
    pause
    exit /b %ERRORLEVEL%
)

echo.
echo Waiting for 10 seconds before starting the server...
timeout /t 10 /nobreak

echo.
echo Starting development server...
call npm run start:dev

echo.
echo Script finished. Press any key to close.
pause
