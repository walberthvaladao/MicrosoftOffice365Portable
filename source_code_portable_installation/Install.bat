@echo off
chcp 65001 >nul
set APPDIR=%USERPROFILE%\AppData\Local\MicrosoftOffice365
set DIRWINUNPACKED=%~dp0win-unpacked
set DESKTOPSHORTCUT=%USERPROFILE%\Desktop\Microsoft Office 365.lnk
set STARTMENU=%APPDATA%\Microsoft\Windows\Start Menu\Programs

echo (pt-br) Instalador do Microsoft Office 365 Portátil
echo (en) Microsoft Office 365 Portable Installer
echo -------------------------------------------------------

echo (pt-br) Aplicativo instalado na pasta do usuário
echo (en) Application installed in the user's folder
echo -------------------------------------------------------

robocopy "%DIRWINUNPACKED%" "%APPDIR%" /E /Z /NP > NUL 2>&1

echo (pt-br) Criar atalho do aplicativo no menu iniciar
echo (en) Create application shortcut in the Start menu
echo -------------------------------------------------------

cscript //nologo "%~dp0create-shortcut.vbs"

echo (pt-br) Criar atalho do aplicativo na área de trabalho
echo (en) Create application shortcut on the desktop
echo -------------------------------------------------------

copy "%STARTMENU%\Microsoft Office 365.lnk" "%DESKTOPSHORTCUT%" > NUL 2>&1

echo (pt-br) Aplicativo instalado com sucesso! A pasta que você baixou não é mais necessária, você pode apagá-la
echo (en) Application installed successfully! The folder you downloaded is no longer needed, you can delete it.
cscript //nologo "%~dp0microsoftoffice365-msgbox.vbs"