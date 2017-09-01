New-AzureRmResourceGroup -Location WestEurope -Name keyVault -Force

New-AzureRmResourceGroupDeployment -ResourceGroupName keyVault -TemplateUri https://raw.githubusercontent.com/rjmax/AzureSaturday/master/Demo01.KeyVault/KeyVaultSetup.json

New-AzureRmResourceGroupDeployment -ResourceGroupName keyVault -TemplateUri https://raw.githubusercontent.com/rjmax/AzureSaturday/master/Demo01.KeyVault/KeyVaultUse.json

Remove-AzureRmResourceGroup -Name keyVault -Force
