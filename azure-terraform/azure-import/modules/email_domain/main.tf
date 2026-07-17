# data "azurerm_client_config" "current" {}

resource "azurerm_email_communication_service_domain" "email_domain" {

  name = var.name

  email_service_id = var.email_service_id

  domain_management = "AzureManaged"

}
