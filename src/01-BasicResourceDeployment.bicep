/*
  Basic example of a bicep file that creates a storage account
*/
resource storageAccount 'Microsoft.Storage/storageAccounts@2021-04-01' = {
  name: 'sabiceps10101'
  location: 'northeurope'
  tags: {
    maintaner : 'mr poipoi'
    createdFor : deployment().name
    project: 'Biceps101-01'
  }
  sku: {
    name: 'Standard_LRS'
  }
  kind: 'StorageV2'
}
