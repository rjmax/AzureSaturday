New-AzureRmResourceGroup -Name msiLinux -Location WestEurope -Force

$deployment = New-AzureRmResourceGroupDeployment -ResourceGroupName msiLinux -TemplateUri https://raw.githubusercontent.com/rjmax/AzureSaturday/master/Demo02.ManagedServiceIdentity/demo07.msiLinuxToArm.json

$deployment

$deployment.Outputs.commandToGetAToken.Value

Remove-AzureRmResourceGroup -Name msiLinux