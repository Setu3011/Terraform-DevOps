resource "azurerm_resource_group" "rg" {
  name     = var.resource_group.name
  location = var.resource_group.location
}

# Storage Accounts

module "storage_accounts" {

  source = "./modules/storage_account"

  storage_account = var.storage_account
}


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

  function_app = var.function_app

  service_plan_asp1_id = module.app_service_plans["asp1"].id
  service_plan_asp2_id = module.app_service_plans["asp2"].id

  app_insights_app1_connection_string       = module.application_insights["app1"].connection_string
  app_insights_app2_connection_string       = module.application_insights["app2"].connection_string
  communication_services1_connection_string = module.communication_services["communication1"].primary_connection_string
  sender_email                              = module.email_domains["domain1"].sender_email

  func1_storage_access_key = module.storage_accounts.azurerg91bd_primary_access_key

  func1_storage_container_endpoint = module.storage_accounts.azurerg91bd_primary_blob_endpoint

  func2_storage_access_key = module.storage_accounts.azurerga2df_primary_access_key

  func2_storage_container_endpoint = module.storage_accounts.azurerga2df_primary_blob_endpoint
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

  domain_name = each.value.name

  resource_group_name = each.value.resource_group_name

  email_service_id = "/subscriptions/44d29901-43e4-43f1-b207-3c9f043349ea/resourceGroups/azure-rg/providers/Microsoft.Communication/emailServices/azureemail3011"

}
