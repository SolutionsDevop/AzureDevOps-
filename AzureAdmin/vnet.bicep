@description('Create a virtual network without a subnet')

resource virtualNetwork 'Microsoft.Network/virtualNetworks@2019-11-01' = {
  name: 'alfason-bicep-vnet'
  location: resourceGroup().location
  properties: {
    addressSpace: {
      addressPrefixes: [
        '10.10.10.0/24'
      ]
    }
  }
}

