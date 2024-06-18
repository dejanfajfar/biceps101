/*
  Creates a storage account with a virtual network rule that allows traffic from a specific subnet.
*/
resource vnet 'Microsoft.Network/virtualNetworks@2021-02-01' = {
  name: 'myVnet'
  location: resourceGroup().location
  tags: {
    maintaner : 'mr poipoi'
    createdFor : deployment().name
    project: 'Biceps101-02'
  }
  properties: {
    addressSpace: {
      addressPrefixes: [
        '10.0.0.0/16'
      ]
    }
    subnets: [
      {
        name: 'mySubnet'
        properties: {
          addressPrefix: '10.0.0.0/24'
        }
      }
    ]
  }
}

resource storageAccount 'Microsoft.Storage/storageAccounts@2021-02-01' = {
  name: 'sabiceps10102'
  location: resourceGroup().location
  sku: {
    name: 'Standard_LRS'
  }
  kind: 'StorageV2'
  tags: {
    maintaner : 'mr poipoi'
    createdFor : deployment().name
    project: 'Biceps101-02'
  }
  properties: {
    networkAcls: {
      bypass: 'AzureServices'
      defaultAction: 'Allow'
      virtualNetworkRules: [
        {
          id: vnet.id
          action: 'Allow'
        }
      ]
    }
  }
}

output storageAccountOutput string = storageAccount.name
