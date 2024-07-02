#Set-Variable ProgressPreference SilentlyContinue ; Invoke-RestMethod -Uri "https://github.com/firebird5589/PrinchInstallers/raw/main/Lincoln%20Central%20Library-PCP.exe" -OutFile "D:\Downloads\Lincoln Central Library-PCP.exe"

cmd.exe START /WAIT /c "D:\Downloads\Lincoln Central Library-PCP.exe" /s

#Remove-Item -path "D:\Downloads\Lincoln Central Library-PCP.exe"
