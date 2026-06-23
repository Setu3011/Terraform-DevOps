terraform {

  # Azure Blob Storage natively handles state locking automatically!
  backend "azurerm" {
    resource_group_name  = "terraform-tfstate-rg"  
    storage_account_name = "tfstatestrgacct"       
    container_name       = "tfstate-container"     
    key                  = "dev.terraform.tfstate" 
  }
}

# Your actual infrastructure resources go here
resource "azurerm_resource_group" "state-demo-secure" {
  name     = "state-demo"
  location = "Central India"
}
