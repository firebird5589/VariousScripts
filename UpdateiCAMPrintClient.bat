#Download iCAM Printer Control v5.0.1.0 installer from my github repo and save to D:\Downloads folder
Set-Variable ProgressPreference SilentlyContinue ; Invoke-RestMethod -Uri "https://github.com/firebird5589/iCAMFiles/raw/main/iCAM_Print_Client_5.0.1.0.msi" -OutFile D:\Downloads\iCAM_Print_Client_5.0.1.0.msi

#Remove iCAM Printer
Remove-Printer -Name "iCAM Printer"

#Remove iCAM Printer (Copy 1)
Remove-Printer -Name "iCAM Printer (Copy 1)"

#Install iCAM Print Client V5.0.1.0
msiexec /i "D:\Downloads\iCAM_Print_Client_5.0.1.0.msi" /Passive

#Delete iCAM Printer Control v5.0.1.0 from D:\Downloads folder
Remove-Item -path D:\Downloads\iCAM_Print_Client_5.0.1.0.msi
