@echo off
chcp 65001 >nul
set APPDIR=%USERPROFILE%\AppData\Local\MicrosoftOffice365

copy "%APPDIR%\UninstallScript.bat" "%TEMP%\UninstallScript.bat" > NUL 2>&1
copy "%APPDIR%\microsoftoffice365-msgbox-uninstall.vbs" "%TEMP%\microsoftoffice365-msgbox-uninstall.vbs" > NUL 2>&1

"%TEMP%\UninstallScript.bat"