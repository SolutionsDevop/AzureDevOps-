Deploying an Azure Storage Account. Copied from Code kloud

Breakdown of the Template
1. Parameters
Purpose: Parameters allow you to pass in values when deploying the template, making the template reusable and flexible.
Example Parameters:
    storageAccountName: The name of the storage account, passed as a string
    location: The location where the resources will be deployed; by default, this is set to the location of the resource group
    skuName: The SKU (pricing tier) of the storage account; by default is set to Standard_LRS.
param storageAccountName string
param location string = resourceGroup().location
param skuName string = 'Standard_LRS'

Explanation:
    @description provides metadata that describes the parameter.
    The param keyword defines a parameter. The type (e.g., string) follows the parameter name.
    The location parameter defaults to the location of the resource group by using resourceGroup().location.
2. Resource Declaration
Purpose: The resource block defines the Azure resource to be deployed.
Example Resource: A storage account is defined here.
resource storageAccount 'Microsoft.Storage/storageAccounts@2022-09-01' = {
  name: storageAccountName
  location: location
  sku: {
    name: skuName
  }
  kind: 'StorageV2'
  properties: {}
}

Explanation:
    resource: Declares a new resource in the template
    storageAccount: The name used to reference this resource within the template
    'Microsoft.Storage/storageAccounts@2022-09-01': The resource type and API version; This specifies that the resource is a storage account and uses the API version from September 2022.
Inside the resource block:
    name: The name of the storage account, which comes from the storageAccountName parameter
    location: The deployment location, coming from the location parameter
    sku: The SKU of the storage account, with the name set by the skuName parameter
    kind: Specifies the type of storage account. StorageV2 is the most common and versatile option
    properties: An empty block in this case, as no additional properties are being set
3. Outputs

Purpose: Outputs allow you to return values from the deployment, which can be useful for downstream processes.
Example Output: The name of the deployed storage account.
output storageAccountName string = storageAccount.name
Explanation:

    output: Declares an output value that can be used after the deployment
    storageAccountName: The name of the output variable
    string: The type of the output (in this case, a string)
    The value of the output is set to storageAccount.name, which retrieves the name of the deployed storage account.
