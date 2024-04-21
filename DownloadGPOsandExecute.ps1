# Specify the URL of the zip file
$url = "https://github.com/firebird5589/Files/archive/refs/heads/main.zip"
# Specify the download location
$downloadLocation = "D:\Documents\main.zip"
# Specify the extraction location
$extractLocation = "D:\Documents"
# Specify the desktop location
$desktopLocation = "C:\Users\User\Desktop\"

# Download the zip file
Invoke-WebRequest -Uri $url -OutFile $downloadLocation

# Extract the zip file
Expand-Archive -Path $downloadLocation -DestinationPath $extractLocation

# Get the name of the extracted folder
$extractedContents = Get-ChildItem -Path $extractLocation

# Move the extracted folder to the desktop
$extractedContents | ForEach-Object {
    Move-Item -Path $_.FullName -Destination $desktopLocation
}
cmd.exe /c "C:\Users\User\Desktop\Restore_Local_Group_Policy.vbs" /NoLogo /B
