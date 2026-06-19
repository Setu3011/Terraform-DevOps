variable "location" {
  type        = string
  description = "The Azure region where resources will be deployed."
  #  default     = "centralindia"
}

variable "resource_group_name" {
  type        = string
  description = "The name of the resource group."
  #  default     = "terraform-resource-group"
}

# variable "vm_name" {
#   type        = string
#   description = "The name of the virtual machine."
#    default     = "terraform-linux-vm"
# }

# variable "vm_size" {
#   type        = string
#   description = "The size/sku of the virtual machine."
#    default     = "Standard_B1s"
# }

# variable "admin_username" {
#   type        = string
#   description = "The administrator username for the VM."
# #   default     = "azureuser"
# }

# variable "admin_password" {
#   type        = string
#   description = "The administrator password for the VM."
# #   default     = ""
#   sensitive   = true
# }
