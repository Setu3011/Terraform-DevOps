resource "azurerm_function_app_flex_consumption" "func3011" {

  name = var.function_app["func1"].name
  location = var.function_app["func1"].location
  resource_group_name = var.function_app["func1"].resource_group_name
  service_plan_id = var.service_plan_asp2_id

  storage_container_type     =  var.storage_container_type
  storage_container_endpoint = var.function_app["func1"].storage_container_endpoint

  storage_authentication_type = "StorageAccountConnectionString"

  runtime_name    = "python"
  runtime_version = "3.13"
  client_certificate_mode = "Required"

  instance_memory_in_mb = 512 
  https_only = true
  storage_access_key = var.func1_storage_access_key
  
  webdeploy_publish_basic_authentication_enabled = false

  identity {
    type = "SystemAssigned"
  }

  site_config {
  application_insights_connection_string = var.app_insights_app1_connection_string
 
    cors {
      allowed_origins = ["https://portal.azure.com"]
      support_credentials = false
    }
  }

  app_settings = {
      AZURE_RESOURCE_GROUP_NAME = "azure-rg"
      AZURE_SUBSCRIPTION_ID     = "44d29901-43e4-43f1-b207-3c9f043349ea"
      BLOB_CONTAINER_NAME        = "uploads"
   # APPLICATIONINSIGHTS_CONNECTION_STRING = var.app_insights_app1_connection_string
   COMMUNICATION_SERVICES_CONNECTION_STRING = var.communication_services1_connection_string

  }

}

resource "azurerm_function_app_flex_consumption" "AzureResourceSummary" {

name = var.function_app["func2"].name
  location = var.function_app["func2"].location
  resource_group_name = var.function_app["func2"].resource_group_name
  service_plan_id = var.service_plan_asp1_id
  storage_container_type =  var.storage_container_type
  storage_container_endpoint = var.function_app["func2"].storage_container_endpoint

  storage_authentication_type = "StorageAccountConnectionString"

  runtime_name    = "python"
  runtime_version = "3.13"
  client_certificate_mode = "Required"
  storage_access_key = var.func2_storage_access_key
  tags = {
          "hidden-link: /app-insights-resource-id" = "/subscriptions/44d29901-43e4-43f1-b207-3c9f043349ea/resourceGroups/azure-rg/providers/microsoft.insights/components/AzureResourceSummary"
        }

  webdeploy_publish_basic_authentication_enabled = false


  instance_memory_in_mb = 512

  https_only = true

  identity {
    type = "SystemAssigned"
  }

  site_config {
   application_insights_connection_string = var.app_insights_app2_connection_string
     
    cors {
      allowed_origins = ["https://portal.azure.com"]
      support_credentials = false
    }
  }

     app_settings = {

      AZURE_SUBSCRIPTION_ID                    = "44d29901-43e4-43f1-b207-3c9f043349ea"
      RECIPIENT_EMAIL                          = "setupatel3011@gmail.com"
      RESOURCE_GROUP_NAME                      = "azure-rg"
      # SENDER_EMAIL                             = "DoNotReply@7a299ba7-f33a-4785-8288-83514ad2b990.azurecomm.net"
      SENDER_EMAIL                             = var.sender_email 
     # APPLICATIONINSIGHTS_CONNECTION_STRING    = var.app_insights_app2_connection_string
      COMMUNICATION_SERVICES_CONNECTION_STRING = var.communication_services1_connection_string
      
    }

  }

