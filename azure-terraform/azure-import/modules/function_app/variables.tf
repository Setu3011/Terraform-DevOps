variable "function_app" {

  type = map(object({

    name                = string
    resource_group_name = string
    location            = string

    storage_account_key        = string
    storage_container_endpoint = string

    app_service_plan_key       = string
    application_insights_key   = string

    app_settings = optional(map(string), {})

  }))
}

variable "storage_container_type" {
  type    = string
  default = "blobContainer"
}

variable "service_plan_asp1_id" {
  type = string
}

variable "service_plan_asp2_id" {
  type = string
}

variable "app_insights_app1_connection_string" {
  type      = string
  sensitive = true
}

variable "app_insights_app2_connection_string" {
  type      = string
  sensitive = true
}

variable "communication_services1_connection_string" {
  type      = string
  sensitive = true
}

variable "sender_email" {
  type = string
}

variable "func1_storage_access_key" {
  type      = string
  sensitive = true
}

variable "func1_storage_container_endpoint" {
  type = string
}

variable "func2_storage_access_key" {
  type      = string
  sensitive = true
}

variable "func2_storage_container_endpoint" {
  type = string
}