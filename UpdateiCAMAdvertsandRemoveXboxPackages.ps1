 #Applying .reg file that sets the Adverts profile in iCAMConfig
 regedit /s C:\Users\Administrator\Desktop\ApplyingiCAMAdverts.reg

 #Search for all packages with the Name "xbox" and removes them
 dism /Online /Get-ProvisionedAppxPackages | `Select-String PackageName | `Select-String xbox | `ForEach-Object {$_.Line.Split(':')[1].Trim()} | `ForEach-Object { dism /Online /Remove-ProvisionedAppxPackage /PackageName:$_}

 #5 seconds pause
 Start-Sleep -Seconds 5

 #Search for packages with the name "xbox" and removes them
 Get-ProvisionedAppxPackage -Online | `Where-Object { $_.PackageName -match "xbox"} | `ForEach-Object { Remove-ProvisionedAppxPackage -Online -AllUsers -PackageName $} 

  #5 seconds pause
 Start-Sleep -Seconds 5

 #Removes the Xbox Gaminng Overlay package for all users accounts
 Get-AppxPackage -AllUsers -PackageTypeFilter Bundle -Name "*Microsoft.XboxGamingOverlay*" | Remove-AppxPackage -AllUsers 
