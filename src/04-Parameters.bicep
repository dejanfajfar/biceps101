/*
 Creates a storage account with the given name, sku and location
*/
@description('The name ofthe creates storage account ')
param storageAccountName string = 'sa$uniqueString(resourceGroup().id)'

@description('The sku of the storage ')
@allowed([
  'Premium_LRS'
  'Premium_ZRS'
  'Standard_GRS'
  'Standard_GZRS'
  'Standard_LRS'
  'Standard_RAGRS'
  'Standard_RAGZRS'
  'Standard_ZRS'
])
param storageAccountSku string = 'Standard_LRS' // Default to Standard Locally Redundant Storage

@description('The location where this storage account will be placed in')
param location string = resourceGroup().location

// Define tags so that the resource can be found in the future
var tags = {
  maintaner : 'mr pumpl'
  createdFor : deployment().name
  project: 'Biceps101'
}

// Define the resource representing the storage account
resource storageAccount 'Microsoft.Storage/storageAccounts@2021-04-01' = {
  name: storageAccountName
  location: location
  tags: tags
  sku: {
    name: storageAccountSku
  }
  kind: 'StorageV2'
}
