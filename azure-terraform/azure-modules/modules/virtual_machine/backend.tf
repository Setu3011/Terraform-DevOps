 # This file is used to configure the backend for storing Terraform state files in Azure.

 terraform {
   
   backend "azurerm" {
    resource_group_name  = "terraform-tfstate-rg"
    storage_account_name = "tfstate3011"
    container_name       = "tfstate-virtual-machine"
    key                  = "virtual-machine.terraform.tfstate"
  }
 }