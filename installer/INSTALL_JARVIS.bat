@echo off
setlocal
title Install J.A.R.V.I.S.
cd /d "%~dp0"

echo.
echo  Installing J.A.R.V.I.S.
echo  Folder: %~dp0
echo.

rem Double-clicking a file inside a .zip runs it from a temporary folder, which
rem is what makes Windows Installer close during "Preparing to install...".
echo %~dp0| find /i "\Temp\" >nul
if not errorlevel 1 goto inzip

if not exist "%~dp0JARVIS_V4_3_CLASSIC_APP.msi" goto missing

echo  Windows will ask for administrator permission. Choose Yes.
echo.
msiexec /i "%~dp0JARVIS_V4_3_CLASSIC_APP.msi" /l*v "%~dp0jarvis_install_log.txt"
set RC=%ERRORLEVEL%
echo.
if "%RC%"=="0" goto done
if "%RC%"=="1602" goto cancelled
echo  Windows Installer stopped with code %RC%.
echo  The reason is at the end of this file:
echo    %~dp0jarvis_install_log.txt
echo.
echo  You can skip the installer completely: download the
echo  "Portable EXE" artifact from the same GitHub build and run JARVIS.exe.
goto end

:done
echo  Installed. Open J.A.R.V.I.S. from the Windows Start menu.
goto end

:cancelled
echo  You cancelled the installation.
goto end

:inzip
echo  This is running from inside the downloaded .zip.
echo.
echo  Close this window, right-click the .zip, choose "Extract All",
echo  then run INSTALL_JARVIS.bat from the extracted folder.
goto end

:missing
echo  JARVIS_V4_3_CLASSIC_APP.msi is not in this folder.
echo  Extract the whole .zip, keeping all files together, then run this again.
goto end

:end
echo.
pause
