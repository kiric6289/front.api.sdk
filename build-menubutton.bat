@echo off
setlocal

set PROJECT_DIR=MenuButtonPlugin
set PROJECT_FILE=%PROJECT_DIR%\MenuButtonPlugin.csproj
set OUTPUT_DIR=%PROJECT_DIR%\bin\Release\net472
set PLUGIN_NAME=MenuButtonPlugin

echo ========================================
echo    MenuButton Plugin - Build Script
echo    for iikoFront API v9
echo ========================================
echo.

echo Cleaning previous build...
if exist "%PROJECT_DIR%\bin" rmdir /s /q "%PROJECT_DIR%\bin"
if exist "%PROJECT_DIR%\obj" rmdir /s /q "%PROJECT_DIR%\obj"
echo.

echo Building %PLUGIN_NAME%...
cd %PROJECT_DIR%
dotnet build MenuButtonPlugin.csproj --configuration Release --verbosity minimal

if %ERRORLEVEL% neq 0 (
    echo.
    echo ERROR: Build failed!
    echo Check the error messages above.
    pause
    exit /b 1
)

cd ..
echo.
echo Build completed successfully!
echo.

echo ========================================
echo    BUILD RESULTS
echo ========================================
echo.
echo Plugin files created:
echo - %PROJECT_DIR%\bin\Release\net472\%PLUGIN_NAME%.dll
echo - %PROJECT_DIR%\bin\Release\net472\%PLUGIN_NAME%.pdb
echo - %PROJECT_DIR%\Manifest.xml
echo.

echo ========================================
echo    INSTALLATION INSTRUCTIONS
echo ========================================
echo.
echo 1. Copy these files to iikoFront Plugins folder:
echo    - %PROJECT_DIR%\bin\Release\net472\%PLUGIN_NAME%.dll
echo    - %PROJECT_DIR%\Manifest.xml
echo.
echo 2. Restart iikoFront
echo.
echo 3. The plugin will appear in the Plugins menu as:
echo    "Тестовая кнопка плагина"
echo.

echo ========================================
echo    FEATURES
echo ========================================
echo.
echo ✅ Simple menu button in iikoFront Plugins menu
echo ✅ Test dialog when button is clicked
echo ✅ Comprehensive logging of all operations
echo ✅ Compatible with iikoFront API v9
echo ✅ Based on working MyFirstPlugin structure
echo.

echo ========================================
echo    READY TO INSTALL!
echo ========================================
echo.
pause
