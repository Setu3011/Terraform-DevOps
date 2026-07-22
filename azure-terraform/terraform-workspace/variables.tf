variable "subscription_id" {
  description = "Azure Subscription ID"
  type        = string
}

variable "location" {
  description = "Azure Region"
  type        = string
}

variable "resource_group_name" {
  description = "Resource Group Name"
  type        = string
}

variable "storage_account_name" {
  description = "Storage Account Name"
  type        = string
}

variable "vnet_name" {
  description = "Virtual Network Name"
  type        = string
}

variable "address_space" {
  description = "VNet Address Space"
  type        = list(string)
}

variable "subnet_name" {
  description = "Subnet Name"
  type        = string
}

variable "subnet_prefix" {
  description = "Subnet Address Prefix"
  type        = list(string)
}

variable "vm_name" {
  description = "Virtual Machine Name"
  type        = string
}

variable "vm_size" {
  description = "Virtual Machine Size"
  type        = string
}

variable "admin_username" {
  description = "VM Username"
  type        = string
}

variable "admin_password" {
  description = "VM Password"
  type        = string
  sensitive   = true
}