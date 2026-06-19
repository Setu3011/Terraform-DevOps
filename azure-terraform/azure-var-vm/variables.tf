variable "resource_group_name" {
  description = "Name of the Resource Group"
  type        = string
}

variable "location" {
  description = "Azure Region"
  type        = string
}

variable "vnet_name" {
  description = "Virtual Network Name"
  type        = string
}


variable "subnet_name" {
  description = "Subnet Name"
  type        = string
}


variable "public_ip_name" {
  description = "Public IP Name"
  type        = string
}

variable "network_interface_name" {
  description = "Network Interface Name"
  type        = string
}

variable "network_security_group_name" {
  description = "Network Security Group Name"
  type        = string
}

variable "virtual_machine_name" {
  description = "Virtual Machine Name"
  type        = string
}

variable "admin_username" {
  description = "VM Admin Username"
  type        = string
}

variable "admin_password" {
  description = "VM Admin Password"
  type        = string
  sensitive   = true
}
