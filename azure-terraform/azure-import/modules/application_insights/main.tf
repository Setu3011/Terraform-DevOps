resource "azurerm_application_insights" "application_insights" {

  name                = var.name
  location            = var.location
  resource_group_name = var.resource_group_name

  application_type = "web"

  retention_in_days = 90

  sampling_percentage = 0

  workspace_id = null

  internet_ingestion_enabled = true

  internet_query_enabled = true

  # local_authentication_disabled = false

}
