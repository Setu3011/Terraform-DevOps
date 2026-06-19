# 1. Resource Group Module
module "resource_group" {
  source   = "./modules/resource_group"
  rg_name  = var.root_rg_name
  location = var.root_location
}

# 2. Virtual Network Module
module "vnet" {
  source              = "./modules/vnet"
  vnet_name           = var.root_vnet_name
  address_space       = var.root_address_space
  subnet_name         = var.root_subnet_name
  subnet_prefix       = var.root_subnet_prefix
  location            = module.resource_group.rg_location
  resource_group_name = module.resource_group.rg_name
}

# 3. Storage Account Module
module "storage_account" {
  source              = "./modules/storage_account"
  storage_name        = var.root_storage_name
  location            = module.resource_group.rg_location
  resource_group_name = module.resource_group.rg_name
}

# 4. Virtual Machine Module
module "virtual_machine" {
  source              = "./modules/virtual_machine"
  vm_name             = var.root_vm_name
  location            = module.resource_group.rg_location
  resource_group_name = module.resource_group.rg_name
  subnet_id           = module.vnet.subnet_id
  admin_username      = var.root_admin_username
  admin_password      = var.root_admin_password
  
  # New Dynamic Variables
  vm_size             = var.root_vm_size
  image_publisher     = var.root_image_publisher
  image_offer         = var.root_image_offer
  image_sku           = var.root_image_sku
  image_version       = var.root_image_version
}
