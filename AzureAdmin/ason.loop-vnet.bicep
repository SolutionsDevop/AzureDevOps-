resource appnetwork 'Microsoft.Network/virtualNetworks@2022-07-01' = [ for i in range(0, 1): {  // Put ==> range(1,3)
  name: 'ason-loop-vnet-${i}'   // Put ==> kk-loop-vnet-${i} 
  location: resourceGroup().location
  properties: {
    addressSpace: {
      addressPrefixes: [
        '10.0.0.0/16'
      ]
    }
  }
}]
