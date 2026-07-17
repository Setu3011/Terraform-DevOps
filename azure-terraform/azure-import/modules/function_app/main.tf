resource "azurerm_function_app_flex_consumption" "func3011" {

  name                = var.name
  location            = var.location
  resource_group_name = var.resource_group_name

  service_plan_id = var.service_plan_id

  storage_container_type     = var.storage_container_type
  storage_container_endpoint = var.storage_container_endpoint

  storage_authentication_type = "StorageAccountConnectionString"

  runtime_name    = "python"
  runtime_version = "3.13"
  # client_certificate_mode = "Required"

  # maximum_instance_count = 100

 # instance_memory_in_mb = 512

 # https_only = true
  # ip_restriction_default_action       = Allow
 # scm_ip_restriction_default_actio    = Allow

  identity {
    type = "SystemAssigned"
  }

  site_config {
    application_insights_connection_string = var.application_insights_connection_string

    cors {
      allowed_origins = ["https://portal.azure.com"]
      support_credentials = false
    }
  }

  app_settings = {

   # APPLICATIONINSIGHTS_CONNECTION_STRING = var.application_insights_connection_string

  }

}

resource "azurerm_function_app_flex_consumption" "AzureResourceSummary" {

  name                = var.name
  location            = var.location
  resource_group_name = var.resource_group_name

  service_plan_id = var.service_plan_id

  storage_container_type     = var.storage_container_type
  storage_container_endpoint = var.storage_container_endpoint

  storage_authentication_type = "StorageAccountConnectionString"

  runtime_name    = "python"
  runtime_version = "3.13"
  client_certificate_mode = "Required"
  
  maximum_instance_count = 100

  instance_memory_in_mb = 512

  https_only = true
  # ip_restriction_default_action       = Allow
 # scm_ip_restriction_default_actio    = Allow
  identity {
    type = "SystemAssigned"
  }

  site_config {
    application_insights_connection_string = var.application_insights_connection_string

    cors {
      allowed_origins = ["https://portal.azure.com"]
      support_credentials = false
    }
  }

     app_settings = {
      AZURE_SUBSCRIPTION_ID                    = "44d29901-43e4-43f1-b207-3c9f043349ea"
      RECIPIENT_EMAIL                          = "setupatel3011@gmail.com"
      RESOURCE_GROUP_NAME                      = "azure-rg"
      SENDER_EMAIL                             = "DoNotReply@7a299ba7-f33a-4785-8288-83514ad2b990.azurecomm.net"
      # APPLICATIONINSIGHTS_CONNECTION_STRING = var.application_insights_connection_string
  
  }

  }
