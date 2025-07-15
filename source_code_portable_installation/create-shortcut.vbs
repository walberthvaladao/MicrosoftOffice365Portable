Set WshShell = WScript.CreateObject("WScript.Shell")

userProfile = WshShell.ExpandEnvironmentStrings("%USERPROFILE%")
appDir = userProfile & "\AppData\Local\MicrosoftOffice365"

desktopPath = WshShell.SpecialFolders("Desktop")
shortcutPath = desktopPath & "\Microsoft Office 365.lnk"

targetPath = appDir & "\Microsoft Office 365.exe"

Set shortcut = WshShell.CreateShortcut(shortcutPath)
shortcut.TargetPath = targetPath
shortcut.WorkingDirectory = appDir
shortcut.IconLocation = targetPath
shortcut.Save