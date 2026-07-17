terraform {
  required_version = ">= 1.7.0"

  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 4.38"
    }
  }
}

provider "azurerm" {
  features {}
  # subscription_id = var.subscription_id 
  subscription_id = "44d29901-43e4-43f1-b207-3c9f043349ea"
}
