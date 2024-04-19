# Download the file
$sourceUri = "https://raw.githubusercontent.com/firebird5589/VariousBatchFiles/main/hosts"
$downloadPath = "D:\"
Invoke-WebRequest -Uri $sourceUri -OutFile $downloadPath

# Move the file
$destinationPath = "D:\Documents"
Move-Item -Path $downloadPath -Destination $destinationPath
