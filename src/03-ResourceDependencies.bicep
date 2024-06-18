resource MyManagedIdentity 'Microsoft.ManagedIdentity/userAssignedIdentities@2023-01-31' = {
  name: 'MyManagedIdentity'
  location: resourceGroup().location
  tags: {
    maintaner : 'mr poipoi'
    createdFor : deployment().name
    project: 'Biceps101-03'
  }
}

resource MyStorageAccount 'Microsoft.Storage/storageAccounts@2021-04-01' = {
  name: 'mystorageaccount'
  location: resourceGroup().location
  kind: 'StorageV2'
  sku: {
    name: 'Standard_LRS'
  }
  dependsOn: [
    MyManagedIdentity
  ]
  tags: {
    maintaner : 'mr poipoi'
    createdFor : deployment().name
    project: 'Biceps101-02'
  }
  identity: {
    type: 'UserAssigned'
    userAssignedIdentities: {
      '${MyManagedIdentity.id}': {}
    }
  }
}
