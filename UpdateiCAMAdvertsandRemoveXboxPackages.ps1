#Download iCAM reg file from my github repo and save to D:\Documents folder
Invoke-WebRequest -Uri https://raw.githubusercontent.com/firebird5589/RegFiles/main/ApplyingiCAMAdverts.reg -OutFile D:\Documents\ApplyingiCAMAdverts.reg -UseBasicParsing

#Applying .reg file that sets the Adverts profile in iCAMConfig
regedit D:\Documents\ApplyingiCAMAdverts.reg

#Search for packages with the Name "xbox" and removes them
dism /Online /Get-ProvisionedAppxPackages | `Select-String PackageName | `Select-String xbox | `ForEach-Object {$_.Line.Split(':')[1].Trim()} | `ForEach-Object { dism /Online /Remove-ProvisionedAppxPackage /PackageName:$_}

#5 seconds pause
Start-Sleep -Seconds 5

#Search for packages with the name "xbox" and removes for all users accounts
Get-ProvisionedAppxPackage -Online | `Where-Object { $_.PackageName -match "xbox"} | `ForEach-Object { Remove-ProvisionedAppxPackage -Online -AllUsers -PackageName $} 

#5 seconds pause
Start-Sleep -Seconds 5

#Removes the Xbox Gaminng Overlay package for all users accounts
Get-AppxPackage -AllUsers -PackageTypeFilter Bundle -Name "*Microsoft.XboxGamingOverlay*" | Remove-AppxPackage -AllUsers 

#Delete reg file from D:\Documents folder
Remove-Item -path D:\Documents\ApplyingiCAMAdverts.reg
