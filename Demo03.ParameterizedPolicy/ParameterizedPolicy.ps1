$rg = New-AzureRmResourceGroup -Name policy -Location WestEurope

$locationPolicyDef = Get-AzureRmPolicyDefinition -Id /providers/Microsoft.Authorization/policyDefinitions/e56962a6-4747-49cd-b67b-bf8b01975c4c

$locationPolicyDef.Properties.parameters

$locationPolicyDef.Properties.policyRule.if

$locationPolicyDef.Properties.policyRule.then

$locationsArray = @("northeurope", "westeurope")

$policyParameters = @{"listOfAllowedLocations"=$locationsArray}

New-AzureRMPolicyAssignment -Name locationAssignment -Scope $rg.ResourceId -PolicyDefinition $locationPolicyDef -PolicyParameterObject $policyParameters

$policyAssignment = Get-AzureRmPolicyAssignment -Scope $rg.ResourceId

$policyAssignment.Properties.parameters.listOfAllowedLocations

New-AzureRmStorageAccount -Name ryjoneswillfail -Location westus -ResourceGroupName policy -SkuName Standard_LRS

New-AzureRmStorageAccount -Name ryjoneswillsucceed -Location westeurope  -ResourceGroupName policy -SkuName Standard_LRS