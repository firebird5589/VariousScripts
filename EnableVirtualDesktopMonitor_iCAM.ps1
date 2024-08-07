#Download iCAM reg file from my github repo and saves to D:\Documents folder
Set-Variable ProgressPreference SilentlyContinue ; Invoke-RestMethod -Uri "https://raw.githubusercontent.com/firebird5589/RegFiles/main/EnableVirtualDesktopMonitor_iCAM.reg" -OutFile D:\Documents\EnableVirtualDesktopMonitor_iCAM.reg

#Applying .reg file that sets the enable virtual desktop monitor in iCAM
Start-Process -filepath "C:\windows\regedit.exe" -argumentlist "/s D:\Documents\EnableVirtualDesktopMonitor_iCAM.reg"

#Delete reg file from D:\Documents folder
Remove-Item -path D:\Documents\EnableVirtualDesktopMonitor_iCAM.reg
