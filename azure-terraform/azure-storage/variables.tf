variable "resource_group_name" {
  type        = string
  description = "The name of the Azure Resource Group."
}

variable "location" {
  type        = string
  description = "The Azure region where resources will be created (e.g., East US)."
}

variable "storage_account_name" {
  type        = string
  description = "The globally unique name of the storage account (3-24 lowercase letters and numbers only)."
}

variable "container_name" {
  type        = string
  description = "The name of the Blob Storage container."
}
