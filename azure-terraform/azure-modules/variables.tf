variable "root_rg_name" { type = string }
variable "root_location" { type = string }
variable "root_vnet_name" { type = string }
variable "root_address_space" { type = list(string) }
variable "root_subnet_name" { type = string }
variable "root_subnet_prefix" { type = list(string) }
variable "root_storage_name" { type = string }
variable "root_vm_name" { type = string }
variable "root_admin_username" { type = string }
variable "root_admin_password" { type = string }
variable "root_vm_size" { type = string }
variable "root_image_publisher" { type = string }
variable "root_image_offer" { type = string }
variable "root_image_sku" { type = string }
variable "root_image_version" { type = string }

