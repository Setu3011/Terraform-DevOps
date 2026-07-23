module "resource_group" {

  source = "./modules/resource_group"

  name     = var.resource_group_name
  location = var.location
  tags     = local.common_tags

}

module "storage_account" {

  source = "./modules/storage_account"

  name                = var.storage_account_name
  resource_group_name = module.resource_group.resource_group_name
  location            = var.location

  tags = local.common_tags

}

module "virtual_network" {

  source = "./modules/virtual_network"

  name                = var.vnet_name
  resource_group_name = module.resource_group.resource_group_name
  location            = var.location

  address_space = var.address_space

  subnet_name   = var.subnet_name
  subnet_prefix = var.subnet_prefix

  tags = local.common_tags

}

module "virtual_machine" {

  source = "./modules/virtual_machine"

  vm_name             = var.vm_name
  resource_group_name = module.resource_group.resource_group_name

  location = var.location

  subnet_id = module.virtual_network.subnet_id

  vm_size = var.vm_size

  admin_username = var.admin_username
  admin_password = var.admin_password

  tags = local.common_tags

}

