#  # This file is used to configure the backend for storing Terraform state files in Azure.

# terraform {
#   backend "azurerm_rg" {
#     resource_group_name  = "terraform-tfstate-rg"
#     storage_account_name = "tfstate3011"
#     container_name       = "tfstate-resource-group"
#     key                  = "resource-group.terraform.tfstate"
#   }

 
#   backend "azurerm_vnet" {
#     resource_group_name  = "terraform-tfstate-rg"
#     storage_account_name = "tfstate3011"
#     container_name       = "tfstate-vnet"
#     key                  = "vnet.terraform.tfstate"
#   }

#   backend "azurerm_vm" {
#     resource_group_name  = "terraform-tfstate-rg"
#     storage_account_name = "tfstate3011"
#     container_name       = "tfstate-virtual-machine"
#     key                  = "virtual-machine.terraform.tfstate"
#   }

#   backend "azurerm_storage_account" {
#     resource_group_name  = "terraform-tfstate-rg"
#     storage_account_name = "tfstate3011"
#     container_name       = "tfstate-storage-account"
#     key                  = "storage-account.terraform.tfstate"
#   }

# }
