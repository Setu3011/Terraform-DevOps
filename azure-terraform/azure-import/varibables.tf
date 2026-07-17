variable "subscription_id" {
  type = string
}

variable "resource_group" {
  type = object({
    name     = string
    location = string
  })
}


variable "storage_accounts" {
  description = "Storage Accounts to Import"

  type = map(object({
    name                     = string
    resource_group_name      = string
    location                 = string
    account_replication_type = string
  }))
}

variable "app_service_plans" {

  description = "App Service Plans"

  type = map(object({

    name                = string
    resource_group_name = string
    location            = string

  }))
}

variable "application_insights" {

  description = "Application Insights Resources"

  type = map(object({

    name                = string
    resource_group_name = string
    location            = string

  }))
}

variable "function_apps" {

  type = map(object({

    name                = string
    resource_group_name = string
    location            = string

    storage_account_key        = string
    storage_container_endpoint = string

    app_service_plan_key     = string
    application_insights_key = string
    app_settings             = optional(map(string), {})

  }))
}

variable "communication_services" {

  description = "Azure Communication Services"

  type = map(object({

    name                = string
    resource_group_name = string
    location            = string

  }))
}

variable "email_services" {

  description = "Azure Email Communication Services"

  type = map(object({

    name                = string
    resource_group_name = string
    location            = string

  }))
}

variable "email_domains" {

  description = "Email Domains"

  type = map(object({

    name                = string
    resource_group_name = string

    email_service_key = string

  }))
}
