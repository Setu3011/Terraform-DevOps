# This file creates the storage account and individual containers for storing terraform state files in Azure.

resource "azurerm_resource_group" "tfstate" {
  name     = "terraform-tfstate-rg"
  location = "Central India"
}

resource "azurerm_storage_account" "tfstate" {
  name                             = "tfstate3011" 
  resource_group_name              = azurerm_resource_group.tfstate.name
  location                         = azurerm_resource_group.tfstate.location
  account_tier                     = "Standard"
  account_replication_type         = "LRS"
  allow_nested_items_to_be_public = false
}

# Container 1: Azure Resource Group
resource "azurerm_storage_container" "rg_state" {
  name                  = "tfstate-resource-group"
  storage_account_name  = azurerm_storage_account.tfstate.name
  container_access_type = "private"
}

# Container 2: Azure Virtual Network
resource "azurerm_storage_container" "vnet_state" {
  name                  = "tfstate-vnet"
  storage_account_name  = azurerm_storage_account.tfstate.name
  container_access_type = "private"
}

# Container 3: Azure Virtual Machine
resource "azurerm_storage_container" "vm_state" {
  name                  = "tfstate-virtual-machine"
  storage_account_name  = azurerm_storage_account.tfstate.name
  container_access_type = "private"
}

# Container 4: Azure Storage Account
resource "azurerm_storage_container" "storage_state" {
  name                  = "tfstate-storage-account"
  storage_account_name  = azurerm_storage_account.tfstate.name
  container_access_type = "private"
}
