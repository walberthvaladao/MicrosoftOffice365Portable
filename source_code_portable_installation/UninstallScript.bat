@echo off
chcp 65001 >nul
set APPDIR=%USERPROFILE%\AppData\Local\MicrosoftOffice365
set DESKTOPSHORTCUT=%USERPROFILE%\Desktop\Microsoft Office 365.lnk
set STARTMENU=%APPDATA%\Microsoft\Windows\Start Menu\Programs

echo (pt-br) Desinstalar Microsoft Office 365 Portátil
echo (en) Uninstall Microsoft Office 365 Portable
echo -------------------------------------------------------

echo (pt-br) Apagar atalho da área de trabalho
echo (en) Delete desktop shortcut
echo -------------------------------------------------------

del /F /Q "%DESKTOPSHORTCUT%" > NUL 2>&1

echo (pt-br) Apagar atalho do Menu Inciar
echo (en) Delete Start Menu shortcut
echo -------------------------------------------------------

del /F /Q "%STARTMENU%\Microsoft Office 365.lnk" > NUL 2>&1
del /F /Q "%STARTMENU%\Desinstalar Microsoft Office 365 (Uninstall).lnk" > NUL 2>&1

echo (pt-br) Apagar pasta do aplicativo
echo (en) Delete application folder
echo -------------------------------------------------------

rmdir /S /Q "%APPDIR%" > NUL 2>&1

echo (pt-br) Aplicativo desinstalado com sucesso!
echo (en) Application uninstalled successfully!

cscript //nologo "%TEMP%\microsoftoffice365-msgbox-uninstall.vbs"