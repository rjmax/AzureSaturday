New-AzureRmResourceGroup -Name msiWindows -Location westus -Force

$deployment = New-AzureRmResourceGroupDeployment -ResourceGroupName msiWindows -TemplateUri https://raw.githubusercontent.com/rjmax/AzureSaturday/master/Demo02.ManagedServiceIdentity/demo08.msiWindowsToKeyvault.json

$deployment

$deployment.Outputs.PowerShellCommandToGetKeyVaultToken.Value

Remove-AzureRmResourceGroup -Name msiWindows