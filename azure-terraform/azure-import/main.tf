resource "azurerm_resource_group" "rg" {
  name     = var.resource_group.name
  location = var.resource_group.location
}

# Storage Accounts
# module "storage_accounts" {

#   source = "./modules/storage_account"

#   for_each = var.storage_accounts

#   name                     = each.value.name
#   resource_group_name      = each.value.resource_group_name
#   location                 = each.value.location
#   account_replication_type = each.value.account_replication_type
# }

# App Service Plans

module "app_service_plans" {

  source = "./modules/app_service_plan"

  for_each = var.app_service_plans

  name                = each.value.name
  resource_group_name = each.value.resource_group_name
  location            = each.value.location

}

# Application Insights

module "application_insights" {

  source = "./modules/application_insights"

  for_each = var.application_insights

  name                = each.value.name
  resource_group_name = each.value.resource_group_name
  location            = each.value.location

}

# Function Apps

module "function_apps" {

  source = "./modules/function_app"

  for_each = var.function_apps

  name                = each.value.name
  resource_group_name = each.value.resource_group_name
  location            = each.value.location

  storage_account_name = each.value.storage_account_key

  storage_container_endpoint = each.value.storage_container_endpoint

  service_plan_id = module.app_service_plans[
    each.value.app_service_plan_key
  ].id

  application_insights_connection_string = module.application_insights[
    each.value.application_insights_key
  ].connection_string

  app_settings = each.value.app_settings

}

# Communication Services

module "communication_services" {

  source = "./modules/communication_service"

  for_each = var.communication_services

  name                = each.value.name
  resource_group_name = each.value.resource_group_name
  location            = each.value.location

}

# Email Services

module "email_services" {

  source = "./modules/email_service"

  for_each = var.email_services

  name                = each.value.name
  resource_group_name = each.value.resource_group_name
  location            = each.value.location

}

# Email Domains

module "email_domains" {

  source = "./modules/email_domain"

  for_each = var.email_domains

  name = each.value.name

  resource_group_name = each.value.resource_group_name

  email_service_id = module.email_services[each.value.email_service_key].id

}
