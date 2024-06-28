Disable-PnpDevice -InstanceId (Get-PnpDevice -FriendlyName *webcam* -Status OK).InstanceId -Confirm:$false
