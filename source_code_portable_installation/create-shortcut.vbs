Set WshShell = WScript.CreateObject("WScript.Shell")

startMenuPath = WshShell.SpecialFolders("StartMenu")
userProfile = WshShell.ExpandEnvironmentStrings("%USERPROFILE%")
appDir = userProfile & "\AppData\Local\MicrosoftOffice365"

Set shortcut = WshShell.CreateShortcut(startMenuPath & "\Programs\Microsoft Office 365.lnk")
shortcut.TargetPath = appDir & "\Microsoft Office 365.exe"
shortcut.WorkingDirectory = appDir
shortcut.IconLocation = appDir & "\Microsoft Office 365.exe"
shortcut.Save

Set shortcut2 = WshShell.CreateShortcut(startMenuPath & "\Programs\Desinstalar Microsoft Office 365 (Uninstall).lnk")
shortcut2.TargetPath = appDir & "\Uninstall.bat"
shortcut2.WorkingDirectory = appDir
shortcut2.IconLocation = appDir & "\microsoft-office-365-uninstall.ico"
shortcut2.Save