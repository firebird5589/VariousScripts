Set-Variable ProgressPreference SilentlyContinue ; Invoke-RestMethod -Uri "https://raw.githubusercontent.com/firebird5589/RegFiles/main/DisableWebcam.reg" -OutFile D:\Documents\DisableWebcam.reg

Start-Process -filepath "C:\windows\regedit.exe" -argumentlist "/s D:\Documents\DisableWebcam.reg"

Remove-Item -path D:\Documents\DisableWebcam.reg

Restart-Computer -Force
